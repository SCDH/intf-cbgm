#! /usr/bin/perl -w
# VGCL_all.pl -- MySQL:Textwert:ivv7srv16.uni-muenster.de
# CLGenTab1_2 (nur Hss. mit CL = 1 in CLMsList) f�llen auf der Basis von <$writ>GenTab_2
# Summierung aller Acta-Kapitel ohne die Fragmente
# Vorlage von Klaus Wachtel, Anpassung f�r Acta von Volker Kr�ger

use strict;
use DBI;
use hsnrzeuge;
use access;

my $DEBUG = 0;
my $cmd;

#@ _VARDECL_
my $dsn = "DBI:mysql:ECM_Acts_VG:localhost";	# data source name
my $user_name = getUsername();						# user name
my $password = getPassword();						# password

my $dbh = DBI->connect ($dsn, $user_name, $password,
						{ RaiseError => 1, PrintError => 0, mysql_enable_utf8 => 1 });


my $source1 = '`ECM_Acts_Mss`.`ActsMsList`';

######################################################
$cmd = "UPDATE $source1 SET `CHECK` = '' WHERE 1;";
if ($DEBUG) { print $cmd."\n"; }
$dbh->do ($cmd);
######################################################

my $target = '`ECM_Acts_VG`.`0529GenTab_2`'; # ECM_Acts_VG.0529GenTab1_2
my @wlist = ('`ECM_Acts_VG`.`0501GenTab_2`'
			, '`ECM_Acts_VG`.`0502GenTab_2`'
			, '`ECM_Acts_VG`.`0503GenTab_2`'
			, '`ECM_Acts_VG`.`0504GenTab_2`'
			, '`ECM_Acts_VG`.`0505GenTab_2`'
			, '`ECM_Acts_VG`.`0506GenTab_2`'
 			, '`ECM_Acts_VG`.`0507GenTab_2`'
			, '`ECM_Acts_VG`.`0508GenTab_2`'
	 		, '`ECM_Acts_VG`.`0509GenTab_2`'
 			, '`ECM_Acts_VG`.`0510GenTab_2`'
 			, '`ECM_Acts_VG`.`0511GenTab_2`'
 			, '`ECM_Acts_VG`.`0512GenTab_2`'
 			, '`ECM_Acts_VG`.`0513GenTab_2`'
 			, '`ECM_Acts_VG`.`0514GenTab_2`'
 			, '`ECM_Acts_VG`.`0515GenTab_2`'
 			, '`ECM_Acts_VG`.`0516GenTab_2`'
 			, '`ECM_Acts_VG`.`0517GenTab_2`'
 			, '`ECM_Acts_VG`.`0518GenTab_2`'
 			, '`ECM_Acts_VG`.`0519GenTab_2`'
 			, '`ECM_Acts_VG`.`0520GenTab_2`'
 			, '`ECM_Acts_VG`.`0521GenTab_2`'
 			, '`ECM_Acts_VG`.`0522GenTab_2`'
 			, '`ECM_Acts_VG`.`0523GenTab_2`'
 			, '`ECM_Acts_VG`.`0524GenTab_2`'
 			, '`ECM_Acts_VG`.`0525GenTab_2`'
 			, '`ECM_Acts_VG`.`0526GenTab_2`'
 			, '`ECM_Acts_VG`.`0527GenTab_2`'
 			, '`ECM_Acts_VG`.`0528GenTab_2`'
			);

# Tabelle l�schen, falls schon vorhanden
$dbh->do ("DROP TABLE IF EXISTS $target;");

# Tabelle neu anlegen
$dbh->do("CREATE TABLE $target (
  `WITN1` varchar(10) NOT NULL default '',
  `WITN2` varchar(10) NOT NULL default '',
  `DIR` varchar(4) NOT NULL default '',
  `NR` int(3) NOT NULL default '0',
  `MS1` int(6) NOT NULL default '0',
  `MS2` int(6) NOT NULL default '0',
  `EQ` int(4) NOT NULL default '0',
  `W1FW2` int(4) NOT NULL default '0',
  `W1TW2` int(4) NOT NULL default '0',
  `UNCLEAR` int(4) NOT NULL default '0',
  `NOREL` int(4) NOT NULL default '0',
  `PASSAGES` int(4) NOT NULL default '0',
  `DIFF` int(4) NOT NULL default '0',
  `PERC1` decimal(6,3) NOT NULL default '0.000',
  `PERC2` decimal(6,3) NOT NULL default '0.000',
  `PERC3` decimal(6,3) NOT NULL default '0.000',
  `PERC4` decimal(6,3) NOT NULL default '0.000',
  `CHECK` char(1) NOT NULL default '',
  KEY `hsnr` (`MS1`,`MS2`),
  KEY `MS1` (`MS1`,`MS2`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE  = utf8_unicode_ci; ");

my ($sth, @ary, $ary, $gtxt, $ueges, $w1fw2, $w1tw2, $uncl, $norel, $lac, $hsnr, @msl, $ms, @cpmsl, $cpms);

# Vergleichspaare einf�gen, d.h. jede Ms soll mit jeder anderen verglichen werden:
# Suche alle Papyri, Majuskeln und Minuskeln, die in Acta in jedem Kapitel (mindestens teilweise) Text haben
# Lektionare bleiben unber�cksichtigt.
$cmd = "SELECT MS FROM $source1 WHERE `Apg` = 1 AND `CHECK` NOT LIKE '.' AND MS < 400000;"; # 
if ($DEBUG) { print $cmd."\n"; }
$sth = $dbh->prepare ($cmd);
$sth->execute();

while (@ary = $sth->fetchrow_array())
{
    @msl = (@msl, @ary);
}

# Daten per insert einlesen
foreach $ms(@msl)
{
	$cmd = "UPDATE $source1 SET `CHECK` = '.' WHERE MS = $ms;";
	if ($DEBUG) { print $cmd."\n"; }
    $dbh->do ($cmd);
    
    $cmd = "SELECT MS FROM $source1 WHERE `Apg` = 1 AND `CHECK` NOT LIKE '.' AND MS < 400000;";
	if ($DEBUG) { print $cmd."\n"; }
    $sth = $dbh->prepare ($cmd);
    $sth->execute();
    
    while (@ary = $sth->fetchrow_array())
    {
        @cpmsl = (@cpmsl, @ary);
    }
    
    foreach $cpms(@cpmsl)
    {
    	my ($witn1, $witn2);
    	$witn1 = getHS($ms);
    	$witn2 = getHS($cpms);
		$cmd = "INSERT INTO $target (MS1, MS2, WITN1, WITN2) VALUES ($ms, $cpms, '$witn1', '$witn2');";
		if ($DEBUG) { print $cmd."\n"; }
        $dbh->do ($cmd);
    }
    
    undef @cpmsl;
}

# Damit Supplemente derselben Handschrift nicht mit einander oder mit supplementierten Handschriften
# verglichen werden
$cmd = "DELETE FROM $target WHERE `MS2` = `MS1`+1 OR `MS2` = `MS1`+2; ";
if ($DEBUG) { print $cmd."\n"; }
$dbh->do($cmd);

# Auswahl aller Papyri, Majuskeln und Minuskeln, die in Acta (fast) vollst�ndig Text haben.
$cmd = "SELECT `MS` FROM $source1 WHERE `Apg` = 1 AND `CHECK` NOT LIKE '.' AND MS < 400000;";
if ($DEBUG) { print $cmd."\n"; }
$sth = $dbh->prepare ($cmd);
$sth->execute();
	
# Schreibe alle ausgew�hlten Handschriften in eine Liste @msl
while (@ary = $sth->fetchrow_array())
{
	@msl = (@msl, @ary);
}

# F�r jedes Element der Liste @msl
foreach $ms(@msl)
{
	# Frage nach den Vergleichshandschriften zu der ausgew�hlten Handschrift
	$cmd = "SELECT `MS2` FROM $target WHERE `MS1` = $ms;";
	if ($DEBUG) { print $cmd."\n"; }
	$sth = $dbh->prepare ($cmd);
	$sth->execute();
	
	# Schreibe auch alle Vergleichshandschriften in eine Liste @cpmsl
	while (@ary = $sth->fetchrow_array())
	{
		@cpmsl = (@cpmsl, @ary);
	}
	
	# F�r jede Handschrift in @cpmsl
	foreach $cpms(@cpmsl)
	{
		$gtxt  = 0;
		$ueges = 0;
		$w1fw2 = 0;
		$w1tw2 = 0;
		$uncl  = 0;
		$norel = 0;
		
		my ($g, $ue, $wf, $wt, $uc, $nr, $w);
		
		foreach $w(@wlist)
		{
			$cmd = "SELECT `PASSAGES`, `EQ`, `W1FW2`, `W1TW2`, `UNCLEAR`, `NOREL` FROM $w WHERE `MS1` = $ms AND `MS2` = $cpms;";
			if ($DEBUG) { print $cmd."\n"; }
			($g, $ue, $wf, $wt, $uc, $nr) = $dbh->selectrow_array ($cmd);
		
			if (not defined $g)
			{
				next;
			}
		
			$gtxt = $gtxt + $g;
			$ueges = $ueges + $ue;
			$w1fw2 = $w1fw2 + $wf;
			$w1tw2 = $w1tw2 + $wt;
			$uncl = $uncl + $uc;
			$norel = $norel + $nr;
		}
		
		if ($w1fw2 > $w1tw2)
		##wenn die Anzahl der priorit�ren Varianten in W2 gr��er ist
		{
			$cmd = "UPDATE $target SET `PASSAGES` = $gtxt, `EQ` = $ueges, `PERC1` = $ueges*100/$gtxt, `W1FW2` = $w1fw2, `W1TW2` = $w1tw2, `UNCLEAR` = $uncl, `NOREL` = $norel, `DIFF` = $gtxt-$ueges, `DIR` = '<--' WHERE `MS1`=$ms AND `MS2`=$cpms;";
			if ($DEBUG) { print $cmd."\n"; }
			$dbh->do ($cmd);
		} 
		##wenn die Anzahl der priorit�ren Varianten in W1 gr��er ist
		elsif($w1fw2 < $w1tw2) 
		{
			$cmd = "UPDATE $target SET `PASSAGES` = $gtxt, `EQ` = $ueges, `PERC1` = $ueges*100/$gtxt, `W1FW2` = $w1fw2, `W1TW2` = $w1tw2, `UNCLEAR` = $uncl, `NOREL` = $norel, `DIFF` = $gtxt-$ueges, `DIR` = '-->' WHERE `MS1`=$ms AND `MS2`=$cpms;";
			if ($DEBUG) { print $cmd."\n"; }
			$dbh->do ($cmd);
		} 
		else 
		{
			$cmd = "UPDATE $target SET `PASSAGES` = $gtxt, `EQ` = $ueges, `PERC1` = $ueges*100/$gtxt, `W1FW2` = $w1fw2, `W1TW2` = $w1tw2, `UNCLEAR` = $uncl, `NOREL` = $norel, `DIFF` = $gtxt-$ueges WHERE `MS1`=$ms AND `MS2`=$cpms;";
			if ($DEBUG) { print $cmd."\n"; }
			$dbh->do ($cmd);
		}
	} # foreach $cpms(@cpmsl)
	
	undef @cpmsl;
	$cmd = "UPDATE $source1 SET `CHECK` = '.' WHERE MS = $ms;";
	if ($DEBUG) { print $cmd."\n"; }
	$dbh->do ($cmd);
}
$cmd = "DELETE FROM $target WHERE `PASSAGES` = 0;";
if ($DEBUG) { print $cmd."\n"; }
$dbh->do ($cmd);

$sth->finish ();

$dbh->disconnect ();

exit (0);
