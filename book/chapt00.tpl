
<h2 id="prologue">Vorwort</h2>

<h3><strong>Styx</strong> kann als <b>S</b>erendipi<b>ty</b> Ne<b>x</b>t gelesen werden!</h3>

<p>&nbsp;</p><!-- separator -->

<p>Dies ist eine <strong>Neubearbeitung</strong> für <strong>Serendipity Styx 2.4</strong>
meiner "<em>Entwurfs</em>"-Revision für den Entwicklungsstand von Serendipity 2.1
(Alpha-Builds) aus dem Frühjahr 2016. Sie beruht, und liegt heute auf dem
Serendipity S9y Repository immer noch so vor, auf dem damals veröffentlichten Buchtext
und der im März 2012 an den Autor und die Community vom Verlag zurückgegebenen Rechte.</p>

<p>Die Entwurfs-Revision legte zu ihrem Zeitpunkt keinen absoluten Anspruch auf Vollständigkeit
(insbesondere der kompletten Überarbeitung und Auflistung aller Konfigurationsoptionen
aller hier genannten Plugins) und besitzt selbst jetzt noch ein paar wenige offene Fragen,
welche mit <code>???</code> markiert sind. Bis auf ein paar Kleinigkeiten wurde darauf Wert
gelegt, den ursprünglichen Text so weit wie möglich zu erhalten, doch konsequent zu
überarbeiten bzw. zu ergänzen, wenn der damalige Text heutzutage keinen Sinn mehr machte,
oder mit Erscheinen von Serendipity 2.0/2.1 bzw. <strong>Serendipity Styx</strong>
hoffnungslos überholt war.</p>

<p>Des Weiteren wurden außer der Einrückung verschiedene Farben verwendet, um
bestimmte Einheiten klarer herauszustellen. <span class="desc dm-blue">Das helle Blau
dient der Anzeige von bestimmten Listendarstellungen und Konfigurations-Optionen,
insbesondere bei Plugins und überhaupt in Beziehung zum Backend.</span> Ebenso wurde es
(<em>im light mode</em>) als Grundlage bei der Aufzählung von Datenbanktabellenfeldern gewählt.
<span class="citem-desc dm-jaune">Das helle Gelb wurde dann angewendet, wenn es um Smarty,
oder klare Frontend / Template (Theme) -Eigenschaften, -Aufzählungen, CSS, Werte
und Variablen ging.</span> (<em>Im dark mode allerdings etwas anders gelöst.</em>)
Zwischen diesem Gelb und Blau konnte aber nicht immer
eine konsequente Unterscheidung vorgenommen werden; so dass mitunter die eine
Farbe auch die andere sein könnte. Bestimmte Eigenschaften von gekennzeichneten
Hervorhebungen, wie Smarty-Variablen, Datei-Namen, Verzeichnissen, Datenbankfeld-Namen,
Importer, Serendipity-Hooks, etc. wurden farblich unterschiedlich markiert bzw.
hervorgehoben, damit sie in der Fülle nicht untergehen.</p>

<p>Durch die Anordnung der Seitenstruktur, der Kapitel und ihrer Unterabteilungen,
über eine jederzeit ausfahrbare Seitenleiste, siehe das "<em>Hamburger</em>"
<code><i class="fa fa-bars button" aria-hidden="true"></i></code>
Symbol im Seitenkopf links, können Sie im Text beliebig hin- und herspringen.
So können sie einen Anker des Inhaltsverzeichnisses anspringen und die Leiste
durch einen beliebigen Klick auf der Inhaltsseite schließen, oder das weiße
<code><i class="fa fa-chevron-left button dark" aria-hidden="true"></i></code>
im Kopf als Linksymbol zum Schließen der ausgefahrenen Seitenleiste benutzen.
Im Text selbst sehen Sie die <code><i class="fa fa-chain fa-rotate-90" aria-hidden="true"></i></code>
diagonal-orangenen Kettensymbole der Überschriften, die zum gleichen Ankersprung-Ergebnis
führen. Der beim Seitenscrollen auf der angezeigten Seite unten rechts eingeblendete
<code><i class="fa fa-chevron-up button dark" aria-hidden="true"></i></code>
große Button, bringt Sie im Schnelldurchlauf wieder ganz nach oben.
Durch die farblich mitwachsende Anzeige des Seitenfortschritts ("<em>progress-bar</em>")
in der Sie begleitenden Navigationsleiste im Seitenkopf, können Sie gut einschätzen lernen,
an welcher Stelle des Buches Sie sich gerade befinden. Zu guter Letzt gibt es noch die
<span class="pageref"><a href="#Example">Example</a></span> Sprung<span class="mbold">tags</span> im Text,
die zu Ergänzungen, Vertiefungen, Fortsetzungen des Gesagten an anderer Stelle des Textes führen.</p>

<p>Es ist noch unentschieden, ob es zu einer weiteren physischen Aufteilung
(<em>zum Beispiel in einzelne Kapitel per Request</em>) des recht langen Textes
kommen muss, damit die Ladezeiten und Swaps für User mit wenig Spielraum mit
ihrem lokalem RAM weniger intensiv sind. Ansonsten ist die momentane Version
darauf eingerichtet alles "<em>in-one</em>" zu laden, um anschließend per
Javascript bestimmte Verwandlungen wie Sprungelemente und Linkanker vornehmen
zu können. Danach müssen Sie nichts mehr neu laden, sondern können sich mittels
der Sprungmarken und der ausfahrbaren Seitenleistennavigation im vollständig
geladenen und aufbereiteten Werk frei herum bewegen. Ein erneutes Laden geschieht
dann zum größten Teil aus dem Browsercache und ist wesentlich schneller erledigt.</p>

<p>Mitunter sehen Sie nach dem ersten Laden des Buches das Inhaltsverzeichnis
der Seitenleiste vollständig ausgeklappt. Dann wurde das Buch nur unvollständig
geladen. Drücken Sie dann einfach auf ‹ Aktualisieren › im rechten Mausfenster
[Ctrl-R].</p>

<p>Ansonsten ist noch viel Raum für weitere Optimierungen gegeben!</p>

<p>Ein großer Dank geht an Garvin Hicking, der mit seiner umfassenden Arbeit für
Serendipity seit Mitte 2003 und seinem veröffentlichten Buch vom April 2008 den
gewichtigen Grundstock für diese Neubearbeitung legte, ohne jene nicht wäre was
sie ist!</p>

<p>&nbsp;</p><!-- separator -->

<p><u>Oktober 2018</u>: Das Wort "Mediendatenbank" für die MediaLibrary wurde für Styx 2.7.0
in "Mediathek" geändert. Die Endung "datenbank" wurde dort behalten, wo direkt und einzig
auf die Datenbank der Mediathek Bezug genommen wird. Einzig die Beispielbilder weisen noch den
alten Namen aus.<br/>
Ebenso wurde "Mediendaten hinzufügen" in "Medien hinzufügen" geändert. </p>

<p>&nbsp;</p><!-- separator -->

<p>Ian Styx, für die <strong>Serendipity Styx Edition</strong></p>
<p>Januar 2018.</p>

<p>&nbsp;</p><!-- separator -->

<p>&nbsp;</p><!-- separator -->

<p class="origin-license"><a href="https://github.com/s9y/Book/raw/master/LICENSE" target="_new">Origin</a> available under CC-BY-NC-SA license.</p>
