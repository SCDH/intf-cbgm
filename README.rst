.. -*- encoding: utf-8; bidi-paragraph-direction: left-to-right; fill-column: 72 -*-

Projektbeschreibung
===================

Partner: Institut für neutestamentliche Textforschung, Münster

Ziele:

- Umsetzung der CBGM (Coherence-based genealogical method) auf
  Datenbankebene (mysql)

- WeiterEntwicklung eines Web-Frontends


Hintergrundwissen
=================


Das Neue Testament
------------------

Es besteht aus:

- \(e) Evangelien

  - (Mk) Markus

  - (Mt) Matthäus

  - \(L) Lukas

  - \(J) Johannes

- \(a) Apostolos

  - (act)  Apostelgeschichte

  - (cath) Katholische Briefe

- \(p) Paulusbriefe (14 Briefe)

- (r = revelatio) Offenbarung des Johannes


Editionen
---------

Herausgegeben durch das Institut für neutestamentliche Textforschung,
Münster.


Nestle-Aland
~~~~~~~~~~~~

Novum Testamentum Graece, 28. Auflage, 2012,
(NA28) (Editio minor)

Handausgabe, etwa 900 Seiten, ab 28€


Editio Critica Maior
~~~~~~~~~~~~~~~~~~~~

Novum Testamentum Graecum, Editio Critica Maior

Historisch kritische Ausgabe

Bereits erschienen: Band IV/1 und Band IV/2,
enthaltend die katholischen Briefe,
etwa 600 Seiten,
ab 98€

Demnächst erscheint: Apostelgeschichte.  Hierfür ist unsere Mithilfe
erwünscht.

.. figure:: Aland1998-fig1.jpeg

   Beispielseite: Jak 2,3

Die katholischen Briefe wurden ausgewählt, da sie eine größere Variation
besitzen als das übrige NT und sich daher gut für die Entwicklung der
CBGM eignen. ([ALAND1998]_ §22)


Die Textzeugen
--------------

Etwa 5000 Handschriften.
Handschriften des NT verwenden fast ausschließlich das Codex-Format.

Folgende Arten von Textzeugen werden herangezogen:


Papyri
~~~~~~

Früheste Überlieferungen.  Dem Originaltext am nächsten.

Ab Jahr 125.  Meist nur fragmentarisch.  Hat sich nur im Wüstenklima
erhalten.

Bezeichnung: '𝔓' gefolgt von hochgestellter Zahl (z.B. 𝔓\ :sup:`52`)

Papyri haben eine gute Seite (mit horizontal verlaufenden Fasern) und
eine schlechte Seite (mit vertikal verlaufenden Fasern.)  Bei
Schriftrollen wurde zunächst nur die gute Seite beschrieben.  Die
schlechte Seite wurde oft später aus Gründen der Sparsamkeit
beschrieben.  Diese Sitte ermöglicht eine Datierung eines undatierten
Dokuments wenn das Dokumnet auf der anderen Seite datiert ist.


Majuskeln
~~~~~~~~~

Ab dem 4. Jahrhundert.  Auf Pergament.  Viele vollständige Abschriften
des NT sind als Majuskel erhalten.  Sehr unterschiedliche Nähe zum
Originaltext.

Bezeichnung: '0' gefolgt von Zahl (z.B. 0189)

Frühere Bezeichnung: lateinische, griechische oder hebräische
Großbuchstaben

Wichtige Majuskeln:

- 01 (א) Codex Sinaiticus eapr IV

- 02 (A) Codex Alexandrinus eapr† V

- 03 (B) Codex Vaticanus eap† IV

- 04 (C) Codex Ephraemi Syri rescriptus eapr† V

- 05 (D) Codex Bezae Cantabrigiensis ea†

Im 7. und 8. Jahrhundert verschlechtert sich das Pergament.  Das Format
wird verkleinert.  Alte Handschriften werden überschrieben (Palimpsest,
codex rescriptus).  ([NESTLE1923]_ § 36)


Minuskeln
~~~~~~~~~

Ab dem 9. Jahrhundert.  Auf Pergament oder Papier.  Die allermeisten
davon enthalten den byzantinischen Text und sind für uns uninteressant,
aber einige wenige sind dem Originaltext sehr nahe.  Es sind 2800
Minuskeln bekannt.  ([ALAND1989]_ S. 140)

Bezeichnung: Zahl (z.B. 33)

Ab dem 13. Jhd. wird Papier für Bibelhandschriften verwendet.
Im 15. Jhd. beginnt das Papier zu überwiegen.  ([NESTLE1923]_ § 36)


Lektionare
~~~~~~~~~~

Lektionare (kirchliche Lesebücher) bringen nur ausgewählte Perikopen des
NT, geordnet nach dem Kirchenjahr.  Es sind 2300 Lektionare bekannt.
Das System der Lektionare entstand geschätzt im 4 Jhd.  (Kuriosum: da das
Kirchenjahr Ostern anfängt, hat es bis zu 57 Wochen.)
([ALAND1989]_ S. 172ff)

Lektionare können den gleichen Text mehrmals enthalten, die
unterschiedlichen Lesungen werden in den Datenbank mit L1, L2
bezeichnet.

Bezeichnung: 'ℓ' gefolgt von Zahl (z.B. ℓ 1178)


Übersetzungen (Versionen)
~~~~~~~~~~~~~~~~~~~~~~~~~

Latein, Syrisch, Koptisch, ...

Haben ergänzende Funktion.  Sie sind wertvoll wenn sie einen frühen Text
als Vorlage benützt haben.  Wörtliche Übersetzungen sind wertvoller als
idiomatische.

Bezeichnung: Sprachkürzel mit hochgestellten Buchstaben (z.B.
sy\ :sup:`c` für den Cureton-Syrer)


Zitate bei den Kirchenvätern (Kommentare)
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Haben ergänzende Funktion.

Kommentarhandschriften enthalten den Text des NT oft mehrmals.  Denn dem
eigentlichen Zitat im laufenden Text des Kommentars ist oft der
vollständige Text des Lemmas vorangestellt.

Das eigentliche Zitat genießt eine höheren Wert.  Der Lemma-Text wurde
hingegegen oft durch einen geläufigeren Text ersetzt.
([ALAND1989]_ S. 179)

Die unterschiedlichen Lesungen werden in der Datenbank mit T1, T2
bezeichnet.

Bezeichnung: Name oder Abkürzung (z.B. Or für Origenes)


Textformen (Texttypen)
----------------------

- Alexandrinischer Text

- Byzantinischer Text (Koine, Mehrheitstext)

- Westlicher Text (D-Text) Textgruppe, die im wesentlichen aus der
  D-Majuskel entstanden ist.

Der byzantinische Text ist am weitesten verbreitet.  (Offizieller Text.)
Durch seine Geläufigkeit bei den Schreibern wurden alte Lesarten oft
durch ihn ersetzt.  Er gilt als minderwertig weil er erst spät
entstanden ist.

Textus Receptus: der von Erasmus von Rotterdam im Jahre 1516 gedruckte
Text.  Er gilt als besonders minderwertig, da Erasmus überstürzt
gearbeitet hat und nur wenige Textzeugen verwendet hat.


Textkritik
==========

Ob die Vorlage eine Minuskel oder eine Maiuskel war, ist oft an
Schreibfehlern festzustellen. ([NESTLE1923]_ § 103)

Bei Auslassungen läßt sich durch Zählung der Buchstaben auch ein Bild
von der Zeilenbreite der Vorlage gewinnen. ([NESTLE1923]_ § 103)

Brevior lectio potior: die kürzere Lesart ist die stärkere.  Schreiber
haben öfter hinzugefügt als weggelassen.  (Einige Wissenschaftler
glauben hingegen, daß die ausgelassene Zeile der häufigste
Schreiberfehler ist. Siehe: [METZGER2005]_ S. 213f)

Difficilior lectio potior: die schwerere Lesart ist die Stärkere.
Schreiber haben schwer verständliche Passagen oft vereinfacht.

*Den Vorzug verdient die Lesart,* aus der sich die Entstehung der
anderen Lesarten am leichtesten erklären läßt.  ([NESTLE1923]_ § 115)

*Knowledge of documents should precede final judgement upon readings.*
([WESTCOTT1881]_ S. 31)


Terminologie
============

Lesart
------

Eine Lesart hat eine eindeutige Adresse, eine Lesartenbezeichnung
(Labez), das Suffix einer Lesartenbezeichnung (Labezsuf) und natürlich
den Text der Lesart selbst.  Das Suffix kennzeichnet z.B. eine
Fehlerlesart oder ein Orthographicum.


Variierte Stelle
----------------

Eine variierte Stelle (variant passage) hat mindestens zwei oder mehr
Lesarten.


Die Datenbank
=============

Die mysql-Datenbank, die uns zur Verfügung gestellt wurde, enthält 28 +
28 Tabellen, je zwei für jedes Kapitel der Apostelgeschichte.  Die erste
Tabelle enthält die Lesarten, die zweite die Lücken (loc, vac).

Aus diesen Tabellen wird der Nestle-Aland automagisch erstellt.

Die Tabellen müssen nun für die CBGM umgeformt werden.  Dafür gibt es
eine Reihe von Skripten (in perl und python).

Die Tabelle der Lesarten ist ein negativer Apparat.  Sie enthält den Text
des Archetypus (HS = A) und alle davon abweichenden Stellen.

Für die CBGM benötigen wir einen positiven Apparat.  Dieser wird aus dem
negativen Apparat und der Tabelle der Lücken erstellt.  Zuerst wird für
jede Passage und jede Handschrift ein Lückeneintrag erstellt wenn diese
Handschrift an dieser Passage eine Lücke aufweist.  Dann wird für jede
Passage und jede Handschrift die Lesart der HS A eingefügt, falls diese
Handschrift an dieser Passage noch keinen Text oder Lückeneintrag hat.
Am Ende haben wir für jede Passage und jede Handschrift einen Datensatz.

Die Datenbank wird auch von Lesarten bereinigt, die für den
Nestle-Aland, aber nicht für die CBGM relevant sind.  Das sind z.B. alle
Passagen die nur eine Lesart aufweisen (2/3 (!) des NT), alle
Korrekturen, die nicht von der ersten Hand stammen und Lesarten die auf
orthographische Fehler oder unterschiedliche orthographische
Konventionen zurückgehen.


Tabellen und Felder
-------------------

Felder in der Tabelle Att

anfadr, endadr
  Zusammengesetzt aus Buch, Kapitel, Vers, Wort.  Es werden Wörter und
  Zwischenräume gezählt.  Gerade Zahlen bezeichnen ein Wort, ungerade
  einen Zwischenraum.

hsnr
  Interne Handschriftnummer.

hs
  Siglum der Handschrift.  An das Siglum werden Suffixe angehängt, die
  die Hand und die Lesung bezeichnen.  Im Laufe der Verarbeitung werden
  die Lesarten reduziert, bis nur eine Lesart pro Handschrift
  übrigbleibt.  Parallel dazu werden die Suffixe von den Siglen
  entfernt.

labez
  Lesartbezeichnung.  'a' bezeichnet die Lesart im Text und 'b' bis 'y'
  die Lesarten im Apparat.  Lesarten beginnend mit 'z' haben eine
  besondere Bedeutung:

  zu
    Hier nicht zitierbar aufgrund einer übergreifenden Variante.  Diese
    umfaßte Variante wurde schon in der umfassenden Variante
    verzeichnet.  Entspricht in der ECM einem Pfeil nach oben.  In der
    CBGM ist 'zu' wie 'zz' zu behandeln.

  zv
    There is an illegible addition in the manuscript(s) cited which
    makes it impossible to ascribe it to a known variant.

  zw
    What remains of the text of the manuscript(s) cited would allow
    reconstruction in agreement with two or more different variants.
    Entspricht in der ECM einem Doppelpfeil nach links-rechts.

    In diesm Fall enthält das Feld labezsuf eine durch "/" getrennte
    Liste der LesartBezeichnungen, die in Frage kommen.

  zz
    The reading is too lacunose to be identified.

    Alle Verzeichnungen, die aus der Tabelle der Lacunae erzeugt wurden,
    erhalten labez = 'zz'.

    Ein Wort steht nicht in der systematischen Lückenliste wenn
    mindestens ein Buchstabe vorhanden ist.  In diesem Fall steht es in
    der stellenbezogenen Lückenliste.

  Caveat: die Lesart 'a' kann für dieselbe Passage mehrmals vergeben
  worden sein, immer dann wenn im Nestle-Aland ein positiver Apparat
  benutzt wurde.

labezsuf
  Lesarten können hier mit zusätzlichen Hinweisen versehen werden:

  f
    Fehler (scribal error)

  o
    Orthographicum (orthographical difference)

  durch "/" getrennte Liste
    z.B. "a/b_o/c_f"

base
  Basistext. Nur relevant bei Fehlversen.

  a
    Urtext

  b
    Fehlverse: Textus Receptus

comp
  x
    Umfaßte Variante

lekt
  Lektionen in einem Lektionar.


Umfaßte Varianten
-----------------

    Beim Herantreten an die Einzelarbeit ist das erste Erfordernis, die
    zu untersuchende Lesart als solche richtig abzugrenzen.  Die
    Apparate sind in dieser Hinsicht sehr verschieden angelegt: manche
    buchen ganze Satzvarianten, die man zerlegen muß; andere geben jedes
    Wort für sich, sodaß man, um ein klares Bild zu bekommen,
    zusammenfassen muß.  ([NESTLE1923]_ § 108)

Wenn variierte Wörter, die durch andere Satzteile voneinander getrennt
sind, sinngemäß zu einer Einheit gehören, so verzeichnet unsere
Datenbank sie als eine einzelne Lesart.  Sind in diesen anderen
Satzteilen ebenso Varianten entstanden, sprechen wir von umfaßten
Varianten.

Umfassende Varianten können Lesarten beitragen, die gewisse umfaßte
Varianten nicht zulassen.  In diesem Fall wird die umfaßte Lesart mit
'zu' gekennzeichent.


Fehlverse
---------

Fehlverse sind später hinzugefügte Verse.  Bei einem Fehlvers muß
anstatt der HS A der Textus Receptus als Basis verwendet werden.


Abkürzungen, Suffixe
--------------------

Gebräuchliche Abkürzungen, Symbole, Suffixe.  Werden in der Datenbank in
einigen Feldern benützt aber auch auch an das Siglum der Hs angehängt.

\*
  Erste, ursprüngliche Hand

C*
  Von erster Hand korrigiert

C1
  Erster Korrektor (Korrektoren der ersten Stunde)

C2
  Zweiter Korrektor (Korrektoren aus späteren Jahrhunderten)

C
  Korrektor (Korrektor aus ungewisser Epoche)

L1, L2
  Unterschiedliche Lesungen in einem Lektionar.
  L2 ist für die CBGM nicht relevant.

T1, T2
  Unterschiedliche Lesungen des Textes der ersten Hand.  Die erste Hand
  hat diese Passagen mehrmals abgeschrieben, vielleicht aus
  unterschiedlicher Quelle.  T2 ist für die CBGM nicht relevant.

A
  Vom Schreiber selbst gekennzeichnete alternative Lesart.
  Für die CBGM nicht relevant.

K
  Varianten im Kommentar einer Handschrift.
  Für die CBGM nicht relevant.

s, s1, s2
  (supplement) Nachträgliche Ergänzung verlorener Stellen.  Bei nur
  einer Ergänzung wird 's' verwendet.  Bei mehreren Ergänzungen werden
  's1', 's2', etc. für jeweils einen Abschnitt verwendet.  Ergänzungen
  können nicht die Authorität der jeweiligen Hs beanspruchen.

V, vid
  (ut videtur) augenscheinlich.  Unsichere aber höchst wahrscheinliche
  Lesung.  Ist für die CBGM als sichere Lesart zu akzeptieren.

In variants:

lac
  Fehlendes Substrat (lacuna)

vac
  Fehlendes Substrat (vacat)

om
  Fehlender Text (omissio)


Tabellen für Genealogische Kohärenz
-----------------------------------

Splitt

  Ein Splitt wird benötigt wenn eine Lesart mehrmals unabhängig
  entstanden ist, damit die Abhängigkeiten der Handschriften
  untereinander nicht verfälscht werden.

  Bei einem Splitt erhalten die Felder varnew, s1, s2 in LocStemEd*
  durch die Bearbeitung die Form [a-y][1-9].

Zusammenlegung
  Eine Zusammenlegung wird benötigt um einen Splitt rückgängig zu
  machen???

  Bei einer Zusammenlegung hast das Feld varnew die Form: [a-y]!.


Kritik
------

    Once we have tabulated these numbers for all the witnesses included,
    an overall structure emerges which shows the relationships between
    them in terms of ancestry and descent, their *genealogical
    coherence.* ([WACHTEL2015]_)

Kann aus lokalen Stemmata wirklich auf die Genealogie der Zeugen
geschlossen werden oder ist das nur Wunschdenken?  Dieses Vorgehen
scheint auf den ersten Blick plausibel, hält einer näheren Überprüfung
aber nicht statt.

Wenn Lesart b aus Lesart a abstammt, so kann über ein Manuskript, das b
enthält, nur ausgesagt werden, daß es jünger ist als das *älteste*
Manuskript, das a enthält.  Über das relative Alter zweier beliebiger
Manuskripte, die jeweils a und b enthalten, kann nichts ausgesagt
werden.



Interaktive Oberfläche
======================

Es wird eine oberfläche Entwickelt, die im Browser läuft.

Zielgruppe: Editoren der ECM, Philologen, interessierte Laien

Zweck: Visuelle Exploration der Datenbasis des ECM.  Spielwiese (was ist
wenn?)




Literatur
=========

.. [ALAND1989] Aland, Kurt, und Barbara Aland.  1989.  *Der Text des
   Neuen Testaments: Einführung in die wissenschaftlichen Ausgaben und
   in Theorie wie Praxis der modernen Textkritik. 2. Auflage.* Stuttgart:
   Deutsche Bibelgesellschaft.

.. [ALAND1998] Aland, Barbara.  1998.  *Novum Testamentum Graecum Editio
   Critica Maior: Presentation of the First Part: The Letter of James.*
   Münster.  http://rosetta.reltech.org/TC/v03/Aland1998.html

.. [CLARK1918] Clark, Albert C. 1918. *The Descent of Manuscripts*.
   Oxford

.. [GÄBEL2015] Georg Gäbel et al. 2015. *The CBGM Applied to Variants
   from Acts. Methodological Background.* Institut für Neutestamentliche
   Textforschung, University of Münster.
   http://rosetta.reltech.org/TC/v20/TC-2015-CBGM-background.pdf

.. [METZGER2005] Metzger, Bruce Manning.  2005.  The Text of the New
   Testament.  4th Edition.

.. [MINK2008] Mink, Gerd.  *The Coherence-Based Genealogical Method (CBGM)
   — Introductory Presentation by Gerd Mink.*
   http://www.uni-muenster.de/INTF/cbgm_presentation/download.html

.. [NESTLE1923] Nestle, Eberhard.  1923.  *Eberhard Nestle's Einführung
   in das Griechische Neue Testament. Vierte Auflage.  Völlig
   umgearbeitet von Ernst von Dobschütz.*  Göttingen: Vandenhoeck &
   Ruprecht.

.. [WACHTEL2015] Wachtel, Klaus.  2015.  *The Coherence Method and
   History.* Institut für Neutestamentliche Textforschung, University of
   Münster.  http://rosetta.reltech.org/TC/v20/TC-2015-CBGM-history.pdf

.. [WACHTEL2015a] Wachtel, Klaus.  2015.  *Constructing Local Stemmata
   for the ECM of Acts: Examples.*  Institut für Neutestamentliche
   Textforschung, University of Münster.
   http://rosetta.reltech.org/TC/v20/TC-2015-CBGM-examples.pdf

.. [WESTCOTT1881] Westcott, Brooke Foss and Hort, Fenton John Anthony.
   *The New Testament in the Original Greek.  Volume 2.  Introduction
   and Appendix by the Editors*
   https://archive.org/details/newtestamentinor82west
