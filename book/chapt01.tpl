
<h2 id="chapter-I">Kapitel 1: Einführung</h2>

<p>Chats und Foren dominierten noch in den 90er Jahren das interaktive
Internet. Diskussionen wurden darüber hinaus allenfalls über
Newsgroups und Mailbox-Systeme geführt. Mit der allgemeinen
Verfügbarkeit von Internetzugängen wuchs auch das Bedürfnis nach einem
System, um sich selbst in diesem neuen Medium zu präsentieren: Das
sogenannte <em>Self-Publishing</em> war geboren.</p>

<p>Während der Boom der <em>Wiki-Communities</em> aus dem vornehmlich
akademischen Wunsch nach Wissensaustausch resultierte, entstand auch für
das Self-Publishing eine neue Art von Software - <em>Weblogs</em>,
kurz: <em>Blogs</em>. Der Name ist Programm, denn die Grundfunktion ist
ein persönliches Tagebuch (ein Logbuch) im Internet. Blogsysteme
zeichnet aus, dass sie Inhalte sehr einfach darstellen und fassbar
machen, denn schließlich sollen die persönlichen Bemerkungen viele --
auch zufällige - Besucher schon auf den ersten Blick ansprechen.</p>

<p>Ganz bewusst setzen sich Blogsysteme von den
<em>Content-Management-Systemen</em> (CMS) ab, die aus Blogger-Sicht zu
teuer, vor allem aber zu komplex sind. Mit steigender Popularität
entstanden zahlreiche Blogsysteme im Open-Source- wie im kommerziellen
Umfeld: Serendipity, Movable Type, Blogger.com, b2 Evolution,
WordPress und andere.</p>

<p>Mittlerweile wird Blog-Software nicht nur für persönliche oder
firmenspezifische Tagebücher eingesetzt, sondern ebenso für kleine,
stark angepasste und individualisierte Projekt-/Produktseiten,
Firmenpräsentationen oder redaktionelle Inhalte jeder Art.</p>

<p>
<span class="tag-box invisible">
    <span class="inline-tag">Serendipity!Namensursprung</span>
    <span class="inline-tag">s9y!Namensursprung</span>
</span>
<em>Serendipity</em> ist eines dieser Systeme. Es entstand aus dem
Wunsch nach einer freien Software mit größtmöglicher Flexibilität,
worauf auch der - für die deutsche Zunge zugegebenermaßen etwas
gewöhnungsbedürftige - Name hinweist, der etwa bedeutet: "eine
zufällige Entdeckung, die Überraschendes und Großartiges mit sich
bringt". Und da der Name nicht nur schwierig auszusprechen, sondern
auch umständlich zu schreiben ist, kürzt man ihn in Fachkreisen
einfach ab: <em>s9y</em>. Geeks ersetzen längere Wörter gerne durch deren
Anfangs- und Endbuchstaben und schreiben die Zahl der ausgelassenen
Buchstaben einfach dazwischen...</p>

<p>Serendipity hat den Anspruch, von Anfängern einfach zu bedienen, aber
von fortgeschrittenen Anwendern weitestgehend modifizierbar zu sein.
Um auf möglichst vielen verschiedenen Serversystemen zu laufen, sollte
es mit mehreren Datenbanksystemen kompatibel sein, die verbreitete
Skriptsprache PHP einsetzen und einfach auf dem eigenen Webspace
installierbar sein. Die Wahl der Lizenz für das System fiel auf
<em>BSD</em>, denn diese räumt im Gegensatz zur GNU GPL auch die
Möglichkeit ein, das Blogsystem in kommerziellem Umfeld sinnvoll zu
nutzen.</p>

<p>So hob Anfang 2002 ein Kernteam bekannter PHP-Entwickler Serendipity
aus der Taufe: Jannis Hermanns, Sterling Hughes, George Schlossnagle,
Wez Furlong, Joyce Park und Joseph Tate (Letzterer ist auch Autor der
Cracklib [*]
<span class="footnote"><i class="fa fa-info-circle"></i> <a href="http://www.cracklib.net/" target="_blank" rel="noopener">http://www.cracklib.net/</a></span><!-- footnote --> und von
<code>mod-pubsub</code> [*]
<span class="footnote"><i class="fa fa-info-circle"></i> <a href="http://sourceforge.net/projects/mod-pubsub" target="_blank" rel="noopener">http://sourceforge.net/projects/mod-pubsub</a></span><!-- footnote -->)
sowie Sebastian Bergmann vom phpUnit-Projekt.[*]
<span class="footnote"><i class="fa fa-info-circle"></i> Die
PHP-Testsuite ist unter <a href="http://www.phpunit.de/" target="_blank" rel="noopener">http://www.phpunit.de/</a> erhältlich.</span><!-- footnote -->
Mit den Jahren entwickelten wechselnde Programmierer das System stetig
und konsequent weiter. Seit 2003 war der Autor des ursprünglichen Buchtextes, Garvin Hicking, leitender
Entwickler.</p>

<p>Dieses Online-Buch bezieht sich auf die aktuelle
<strong>Serendipity Styx</strong> Version 2.4 und möchte einen
umfassenden Überblick über das System und seine Anpassbarkeit
vermitteln. Neben der Bedienung der Software werden Sie darum auch
lernen, eigene Plugins zu schreiben, Templates anzupassen und
Konfigurationsänderungen vorzunehmen.</p>

<p>Wie gesagt, <strong>Serendipity Styx</strong> kann auch als <b>S</b>erendipi<b>ty</b> Ne<b>x</b>t gelesen werden!</p>

<section id="S110" class="index">
<span class="s-toc">1.1 - Was unterscheidet ein Blog von einem CMS?</span>

<h3 class="section" id="was-unterscheidet-ein-blog-von-einem-cms">Was unterscheidet ein Blog von einem CMS?</h3>

<p class="tagging invisible">
<span class="tag-box invisible">
    <span class="inline-tag">CMS!vs. Blog|(</span>
    <span class="inline-tag">Content-Management|see{CMS}</span>
    <span class="inline-tag">Blog!vs. CMS|(</span>
</span>
</p>

<p>Ein Blogsystem zielt darauf ab, einzelne Artikel möglichst einfach zu
erfassen und in einem festen Rahmendesign darzustellen. Ein CMS
hingegen verwaltet ganz unterschiedliche Inhalte in individuellen
Designs und baut komplexe Navigationsstrukturen auf.</p>

<p>Für Blogsysteme sind alle Artikel grundsätzlich gleichwertig und
werden nur chronologisch sortiert dargestellt. Ein CMS sollte Seiten
unterschiedlich gewichten und diese verschlagworten und kategorisieren
können. Darum bietet es sich für umfangreiche Webseiten an, die nicht
nur eine "Seitenansammlung" darstellen, sondern eine komplexe
Hierarchie abbilden, was den Umgang mit sog. "Teasern", Übersichten,
Unter- und Parallelseiten erfordert.</p>

<p>Dies ist natürlich eine grobe Vereinfachung, da viele Blogsysteme
inzwischen auch solch komplexe Anwendungen meistern. Für Serendipity
gibt es beispielsweise das Plugin <em>Statische Seiten</em>, mit dem man
Inhalte losgelöst von den chronologisch sortierten Artikeln erstellen
und auch Hierarchien mit Unterseiten abbilden kann (siehe Seite
<span class="pageref"><a href="#staticpage">staticpage</a></span>).</p>

<p>Ein weiterer fundamentaler Unterschied ist die Ausrichtung eines CMS
auf Mehrbenutzerfähigkeit und Workflows, so dass ein Artikel vor
seiner Veröffentlichung verschiedene Arbeitsphasen möglicherweise verschiedener Redakteure durchläuft. Gerade für umfangreiche Webseiten
ist es wichtig, dass mehrere Artikelversionen nebeneinander existieren
können: Während man bereits an neuen Fassungen einer Seite arbeitet,
soll die Online-Version unverändert für Besucher zur Verfügung stehen.
Solch ausgefeilte Mechanismen sind im Blog-Umfeld meist nur unnötige
Last.</p>

<p>Somit lässt sich ein Blog grundsätzlich als funktionsreduziertes CMS
beschreiben. Das mag negativ klingen, hat aber tatsächlich einen
großen Vorteil: Ein Blog geht zielgerichtet auf Bedürfnisse des
Web-Publishings ein. Die Bearbeitungsprozesse sind einfacher, und
Blog-spezifische Techniken (RSS-Feeds, XML-RPC, Widgets, Web-Services,
interaktive Funktionalitäten wie Kommentare und Trackbacks [*]
<span class="footnote"><i class="fa fa-info-circle"></i> Eine Erklärung dieser Begriffe finden Sie im 
Kapitel <span class="reference">Terminologie</span> auf Seite <span class="pageref"><a href="#Terminologie">Terminologie</a></span>.)</span><!-- footnote -->
lassen sich meist mit wesentlich geringerem Aufwand einbinden als in
umfangreichen Content-Management-Systemen.
<span class="tag-box invisible">
    <span class="inline-tag">Blog!vs. CMS|)</span>
    <span class="inline-tag">CMS!vs. Blog|)</span>
</span>
</p>

</section><!-- section.index end -->

<section id="S120" class="index">
<span class="s-toc">1.2 - Warum Serendipity?</span>

<h3 class="section" id="warum-serendipity">Warum Serendipity?</h3>

<p class="tagging invisible">
<span class="tag-box invisible">
    <span class="inline-tag">Serendipity!Vorteile|(</span>
</span>
</p>

<p>Serendipity versteht sich als erweiterbares Blog-Framework, dessen
Kernarchitektur so offen konzipiert ist, dass man individuelle
Anpassungen vornehmen kann, ohne an den Sourcecode selbst Hand
anzulegen. Änderungen am Aussehen des Blogs lassen sich durch
Templates vornehmen, Funktionalitäten durch Seitenleisten- und
Ereignis-Plugins nachrüsten.</p>

<p>Diese Modularität macht es möglich, eigenen Code vor Updates der
Serendipity-Version zu schützen. Seit Erscheinen der ersten Version
legen die Entwickler sehr viel Wert auf Abwärtskompatibilität. Im
Gegensatz zu anderen Systemen ließen sich bestehende Plugins bisher
selbst bei großen Versionssprüngen weiterverwenden. Dies spricht zum
einen für eine gesunde Weiterentwicklung des Systems, zum anderen auch
für die Plugin-Architektur, die sich als sehr stabil erwiesen hat.</p>

<p>Gerade die Auslagerung von Code macht Serendipity auch im
kommerziellen Umfeld interessant. Aufgrund der BSD-Lizenz kann man
dieses Blogsystem verwenden, ohne hinzugeschriebenen Code
veröffentlichen zu müssen.</p>

<p>Der Einsatz dynamischer PHP-Skripte gewährleistet, dass Serendipity im
Gegensatz zu mit Perl, Ruby oder Python entwickelten Blogsystemen auf
beinahe jedem Webserver lauffähig ist. Zudem macht die Unterstützung
mehrerer Datenbank-Management-Systeme die Software portabel, so
dass sie mit unterschiedlichen Datenbank-Servern einsatzfähig ist.</p>

<p>Darüber hinaus legen die Entwickler viel Wert auf guten
Programmierstil (mit phpDoc-Funktionskommentaren, einheitlichen
Einrückungen und einer kleinteiligen Funktions-API) und sicheren Code.
Im Laufe der Serendipity-Entwicklung gab es bislang nur wenige
<span class="tag-box invisible">
    <span class="inline-tag">Sicherheitslücken!Behebungszeitraum</span>
</span>
<span class="label invisible" id="xsrf">xsrf</span>
Sicherheitslücken, die bei Bekanntwerden innerhalb weniger Stunden
offiziell behoben wurden. Auch gegen weniger verbreitete
Angriffsmöglichkeiten auf eine Webanwendung wie XSRF [*]
<span class="footnote"><i class="fa fa-info-circle"></i> XSRF
 steht
<span class="tag-box invisible">
    <span class="inline-tag">Angriff!Robustheit gegen ~e</span>
    <span class="inline-tag">Cross-Site Request Forgery|see{XSRF}</span>
    <span class="inline-tag">XSRF</span>
</span>
für <em>Cross-Site Request Forgery</em> und beschreibt eine
 Angriffsmethode, bei der eine fremde Website mit Privilegien eines
 authentifizierten Benutzers Aktionen (zB. das Löschen aller
 Artikel) durchführt.</span><!-- footnote -->
<span class="tag-box invisible">
    <span class="inline-tag">Schutz!gegen Angriffe</span>
</span>
stellte Serendipity frühzeitig Schutzmechanismen bereit.</p>

<p>Serendipity-Templates werden unter Verwendung des Templating-Frameworks
<span class="tag-box invisible">
    <span class="inline-tag">Smarty</span>
</span>
<strong><em>Smarty</em></strong>, [*] <span class="footnote"><i class="fa fa-info-circle"></i>
<a href="http://www.smarty.net/" target="_blank" rel="noopener">http://www.smarty.net/</a></span><!-- footnote -->
einem De-facto-Standard unter PHP, entwickelt. Zahlreiche Entwickler
schwören auf dessen einfache Syntax, die es selbst Anfängern
ermöglicht, die HTML-Ausgabe anzupassen, ohne PHP lernen zu müssen.</p>

<p>Das zentrale Plugin- und Template-Archiv namens
<span class="tag-box invisible">
    <span class="inline-tag">Spartacus</span>
    <span class="inline-tag">Plugin-Archiv|see{Spartacus}</span>
    <span class="inline-tag">Template-Archiv|see{Spartacus}</span>
</span>
<em>Spartacus</em> [*] <span class="footnote"><i class="fa fa-info-circle"></i>
<a href="https://ophian.github.io/plugins/">Spartacus auf Styx</a></span><!-- footnote -->
bietet derzeit mehr als 160 Plugins und knapp 100 Templates an. Diese können
Sie direkt aus der Verwaltungsoberfläche Ihrer eigenen Blog-Installation heraus
installieren oder aktualisieren. Die dort aufgeführten Plugins werden großteils
offiziell gewartet und entsprechen den vom Serendipity-Projekt vorgegebenen
Anforderungen an Programmierstil und Sicherheit. Plugins mit identischer
Funktionalität, die den Benutzer vor die Qual der Wahl stellen, findet
man hier nicht, und auch auf Kompatibilität zu allen verfügbaren
Serendipity-Versionen wird geachtet.</p>

<p>Da die Serendipity Kernentwickler derzeit aus Deutschland kommen, haben gerade
deutsche Anwender den Vorteil einer stets aktuellen deutschen
Übersetzung der Benutzeroberfläche. Zudem sorgen eine engagierte
Community und ein großes Supportforum mit bislang über hundertausend
Beiträgen dafür, dass Fragen zum System oder Rückfragen selten
unbeantwortet bleiben. Serendipity wird sehr nah an den Wünschen der
Community entwickelt - das Feature-Diktat von "oben herab" ist
verpönt.
<span class="tag-box invisible">
    <span class="inline-tag">Serendipity!Vorteile|)</span>
</span>
</p>

<p>
<span class="tag-box invisible">
    <span class="inline-tag">Serendipity!Nachteile|(</span>
</span>
Natürlich kann Serendipity zum jetzigen Zeitpunkt noch nicht alles. Der
größte Nachteil besteht wohl darin, dass man auf eine einzelne
Blog-Instanz festgelegt ist. Unter-Blogs (thematisch oder auch pro
Benutzer) lassen sich zwar hintricksen, aber an ein echtes
<span class="tag-box invisible">
    <span class="inline-tag">MovableType</span>
</span>
Multi-Blogsystem wie Movable Type kommt die Software in dieser Hinsicht
nicht heran.</p>

<p>Aufgrund der dynamischen Kompilierung jedes Seitenaufrufs verursacht
Serendipity auch mehr Prozessorlast als solche Systeme, die mit exportiertem
HTML arbeiten. Serendipity kann auf gut eingerichteten Servern zwar
mehrere Dutzend Seitenaufrufe parallel verarbeiten, für den Einsatz
einer Community mit Tausenden parallelen Seitenaufrufen pro Sekunde ist
das System jedoch nicht konzipiert.
<span class="tag-box invisible">
    <span class="inline-tag">Serendipity!Nachteile|)</span>
</span>
</p>

<p class="tagging invisible">
<span class="tag-box invisible">
    <span class="inline-tag">Serendipity!Funktionsübersicht</span>
    <span class="inline-tag">Serendipity!Vorteile|)</span>
</span>
</p>

<p>Serendipity hebt sich von der Konkurrenz anderer frei oder
kommerziell erhältlicher Systeme vor allem in folgenden Punkten ab:</p>

<ul class="realList">

    <li>Die Browser-basierte Installationsoberfläche erlaubt sowohl eine weitgehend
        automatische Konfiguration, bei der nur essentielle Daten abgefragt werden, als
        auch die Einflussnahme auf nahezu alle Parameter bei der <span class="mbold">Fortgeschrittenen
        Installation</span> (Seite <span class="pageref"><a href="#webinstaller">webinstaller</a></span>). Jede installierte Version lässt
        sich über die integrierte Oberfläche auf die jeweils aktuellste updaten (Seite
        <span class="pageref"><a href="#s9yupdate">s9yupdate</a></span>).</li>

    <li>Texte pflegt man auf Wunsch mit übersichtlichen, einfach verständlichen und
        funktionalen WYSIWYG-Editoren ein (Seite <span class="pageref"><a href="#wysiwyg">WYSIWYG</a></span>).</li>

    <li>Die integrierte Mediathek für Bilder, PDFs, MP3s etc. gestattet
        Rechtemanagement, Stichwortsuche und automatische Vorschaugrafiken (Seite
        <span class="pageref"><a href="#mediathek">Mediathek</a></span>). Über einen gesonderten Dialog (Seite
        <span class="pageref"><a href="#mediathek-popup">Mediathek-Popup</a></span>) bindet man die Dateien aus der Mediathek
        mit wählbaren Layout-Optionen einfach in Blog-Artikel ein. Die Inhalte dieser
        Mediathek lassen sich dynamisch in einer Verzeichnisansicht darstellen, wie
        Sie es zB. vom Windows Explorer gewöhnt sind.</li>

    <li>Das gruppenbasiertes Rollenkonzept von Serendipity erlaubt das Anlegen unbegrenzt
        vieler Autorengruppen und das Vergeben individueller Rechte (Seite
        <span class="pageref"><a href="#Benutzerverwaltung">Benutzerverwaltung</a></span> und <span class="pageref"><a href="#Gruppenverwaltung">Gruppenverwaltung</a></span>).</li>

    <li>Kommentare und Kategorien lassen sich verschachteln, Einträge mehreren
        Kategorien zuordnen. Natürlich implementiert Serendipity alle gängigen
        Blog-Standards (und ist somit vollständig Buzzword-kompatibel): Trackback,
        Pingback, XML-RPC, XHTML 1.1, CSS, RSS, Atom ... (siehe Seite
        <span class="pageref"><a href="#Terminologie">Terminologie</a></span>).</li>

    <li>Eine flexible Plugin-API erlaubt es Ihnen, Seitenleisten- und
        Ereignis-Plugins einzusetzen oder zu entwickeln, die das System ohne Eingriffe in den Serendipity-Code beliebig erweitern (Seite <span class="pageref"><a href="#pluginapi">pluginapi</a></span>).</li>

    <li>Das bereits erwähnte Online-Plugin-Archiv (Spartacus) erlaubt die
        Ein-Klick-Installation von mehr als 160 Plugins (Seite <span class="pageref"><a href="#Spartacus">Spartacus</a></span>).</li>

    <li>Dank Plugin-Verwaltung per Drag&amp;Drop können Sie das Aussehen und die
        Inhalte der Seitenleisten des Blogs nach Ihren Wünschen gestalten, ohne
        Templatedateien manuell ändern zu müssen (Seite <span class="pageref"><a href="#Plugins verwalten">Plugins verwalten</a></span>).</li>

    <li>Das dynamische, Smarty-basierte Template-Konzept erlaubt die strukturelle
        Änderung sämtlicher Frontend-Elemente über aufeinander aufbauende
        Templatedateien. Smarty-Templates dürfen ohne Einschränkung Kontrollstrukturen
        wie Schleifen, Abfragen und Variablen enthalten und optional mit
        zusätzlichem PHP-Code versehen werden (Seite <span class="pageref"><a href="#Smarty-Templates">Smarty-Templates</a></span>).</li>

    <li>Einfache Integration in bestehende Webseiten. Das Konzept der <em>Shared
        Installation</em> ermöglicht den Betrieb beliebig vieler Blog-Instanzen mit nur einer
        Code-Basis (Seite <span class="pageref"><a href="#sharedinstall">sharedinstall</a></span>).</li>

    <li>Serendipity kämpft an Ihrer Seite mit umfangreichen, konfigurierbaren
        Anti-Spam-Maßnahmen gegen unerwünschte Kommentare oder Trackbacks. Als
        Schlagworte seien Captcha, automatische Moderation, Akismet und Blacklists
        genannt (Seite <span class="pageref"><a href="#spamblock">spamblock</a></span>).</li>

    <li>Beim Datenbanksystem haben Sie die Wahl zwischen MySQL(i), PostgreSQL und SQLite.</li>

    <li>Serendipity ist nicht nur Open Source, sondern unterliegt sogar der
        BSD-Lizenz. Somit kann das System auch in kommerziellen Programmen seinen Einsatz
        finden.</li>

    <li>Ob WordPress, MoveableType, b2Evo, blogger oder andere --
        Serendipity importiert auf Wunsch den Inhalt zahlreicher anderer
        Blogsysteme (Seite <span class="pageref"><a href="#Daten importieren">Daten importieren</a></span>).</li>

</ul>

<p class="tagging invisible">
<span class="tag-box invisible">
    <span class="inline-tag">Serendipity!Vorteile|)</span>
</span>
</p>

</section><!-- section.index end -->

<section id="S130" class="index">
<span class="s-toc">1.3 - Voraussetzungen</span>

<h3 class="section" id="voraussetzungen">Voraussetzungen</h3>

<p class="tagging invisible">
<span class="label invisible" id="Voraussetzungen">Voraussetzungen</span>
<span class="tag-box invisible">
    <span class="inline-tag">Serendipity!Voraussetzungen|(</span>
</span>
</p>

<p>Serendipity als Software wird nicht auf Ihrem persönlichen Computer
ausgeführt, sondern läuft im Internet auf einem Webserver.
<span class="tag-box invisible">
    <span class="inline-tag">Provider</span>
</span>
Einen solchen mietet man meistens bei Providern wie
Manitu [*]
<span class="footnote"><i class="fa fa-info-circle"></i> <a href="http://www.manitu.de/" target="_blank" rel="noopener">http://www.manitu.de/</a></span><!-- footnote -->,
1&amp;1 [*]
<span class="footnote"><i class="fa fa-info-circle"></i> <a href="http://www.einsundeins.de/" target="_blank" rel="noopener">http://www.einsundeins.de/</a></span><!-- footnote -->,
Strato [*]
<span class="footnote"><i class="fa fa-info-circle"></i> <a href="http://www.strato.de/" target="_blank" rel="noopener">http://www.strato.de/</a></span><!-- footnote -->,
tiggerswelt [*]
<span class="footnote"><i class="fa fa-info-circle"></i> <a href="http://www.tiggerswelt.net/" target="_blank" rel="noopener">http://www.tiggerswelt.net/</a></span><!-- footnote --> oder
anderen [*]
<span class="footnote"><i class="fa fa-info-circle"></i> <a href="http://www.webhostlist.de/" target="_blank" rel="noopener">http://www.webhostlist.de/</a></span><!-- footnote -->;
die Dienstleistung, die diese erbringen, nennt man <em>Webhosting</em>.
<span class="tag-box invisible">
    <span class="inline-tag">Webhosting</span>
</span>
</p>

<p>Für einen gewissen Monatsbeitrag erhalten
Sie Zugangsdaten zu einem Rechner, auf den Sie HTML-Dateien und
Software wie Serendipity mittels eines
<em>FTP-Programms</em> hochladen können. So gespeicherte Software
können Sie auf dem Webserver als Anwendungen ausführen; darauf greifen
Sie mittels
eines Webbrowsers von Ihrem PC aus zu - ganz so, wie Sie es von Webseiten
wie eBay oder Amazon kennen. Manche Provider (zB.
<code>http://www.domainfactory.de/</code>) bieten Serendipity für ihre
Kunden sogar vorinstalliert an.</p>

<p>Sollten Sie über keinen eigenen Webspace verfügen, gibt es noch eine
andere Möglichkeit, Serendipity zu nutzen. Einige kostenlose oder
kostengünstige Provider haben die Software auf ihren Servern
vorinstalliert und gewähren externen Nutzern Zugriff darauf. Hier können
Sie meist nur aus einer Liste vorinstallierter Plugins wählen und auch
keine Änderungen an Templates vornehmen oder eigene Plugins einspielen.
Um das System erst einmal nur zu testen oder als einfaches
Kommunikationsmittel einzusetzen, ist dies sicher eine gute Alternative. Eine Liste
dieser Provider finden Sie auf der Serendipity-Webseite.[*]
<span class="footnote"><i class="fa fa-info-circle"></i> <a href="http://www.s9y.org/61.html" target="_blank" rel="noopener">http://www.s9y.org/61.html</a></span><!-- footnote -->
</p>

<p>
<span class="tag-box invisible">
    <span class="inline-tag">PHP</span>
    <span class="inline-tag">Terminologie!PHP</span>
    <span class="inline-tag">Skriptsprache</span>
</span>
Die Dateien, die zu Serendipity gehören, enthalten Quellcode, der in der
<em>Skriptsprache</em> PHP [*]
<span class="footnote"><i class="fa fa-info-circle"></i> PHP ist die Abkürzung von
<em>PHP Hypertext Preprocessor</em>, siehe <code>http://www.php.net/</code>.</span><!-- footnote -->
geschrieben ist.
Ein PHP-Interpreter macht diesen bei jedem Aufruf auf
dem Webserver maschinenlesbar. Das Ergebnis
dieser Aktion liefert der Webserver an den Browser des Zielsystems.
Laienhaft gesprochen, ließe sich PHP als Betriebssystem für
Serendipity ansehen.</p>

<p>Dies ist wichtig, um die generelle Funktionsweise von
Serendipity zu verstehen. Im Gegensatz zu Webbrowsern oder einer
Office-Anwendung kann Serendipity selbst keine Echtzeit-Eingaben von
Ihnen annehmen. Serendipity läuft komplett auf dem Webserver und wird
über Ihren Browser sozusagen ferngesteuert. Dabei sendet Ihr Browser eine
Anfrage an den Server, Serendipity verarbeitet diese und schickt ein
Resultat. Danach geht der Vorgang wieder von vorne los.</p>

<p>Dies hat den Vorteil, dass auch die Besucher Ihrer Seite stets aktuelle Daten
zu sehen bekommen. Da jeder Aufruf dynamisch die aktuellsten Daten darstellt,
kann Serendipity beispielsweise vorbereitete Artikel mit Erreichen eines
speziellen Datums automatisch einbinden, ohne dass Sie nochmals tätig werden
müssen. Das ist ein fundamentaler Unterschied zu einem statischen Blogsystem
wie MovableType. Dort speichert der Server (vereinfacht gesagt) nur
HTML-Dateien, in die sich dynamische Komponenten wie die neuesten Kommentare
oder die aktuelle Server-Uhrzeit nicht ohne Weiteres einbinden lassen.</p>

<p>Diese Vorgehensweise von Serendipity hat zahlreiche Vorteile: Ein Besucher
kann, abhängig von seinen Zugriffsrechten, Artikel sehen, die andere nicht
zu Gesicht bekommen. Ein Besucher kann das Design der Webseite
selbständig durch Wahl einer Designvorlage verändern. Die Sprache der
Benutzeroberfläche richtet sich auf Wunsch nach seinen Einstellungen usw.</p>

<p>Diese Dynamik hat zwar auch Nachteile (so verlangt sie nach mehr Speicher
und macht das System langsamer), ermöglicht Ihnen als Blogbetreiber aber
auch interessante Möglichkeiten, die wir im Folgenden detailliert
beschreiben werden.</p>

<p>
<span class="tag-box invisible">
    <span class="inline-tag">Voraussetzungen</span>
</span>
Um ein aktuelles Serendipity Styx einzusetzen, benötigen Sie SSH oder FTP-Zugriff auf
einen Webserver, auf dem eine aktuelle PHP-Version (mindestens PHP 7.3) installiert ist
<em>und</em> auf dem der Webhoster Zugriff auf eine Datenbank (MySQL (bevorzugt),
PostgreSQL, SQLite) gewährt. Als Webserver-Software eignen sich <em>Apache</em> (bevorzugt),
<em>Nginx</em>, <em>Lighttpd</em> und <em>Microsoft IIS</em>. Das Blogsystem lässt sich
somit sowohl auf Windows- als auch auf Unix-Derivaten einsetzen.</p>

<p>Mit der Serendipity 1.7.x Serie stieg die interne Voraussetzung auf PHP 5.2 und mit dem
Erscheinen von Serendipity 2.1 auf mindestens PHP 5.3, besser min 5.4+. Die letzte aktuelle
Version der 2er Serie, Serendipity Styx 2.9.5 vom 2. Mai 2020, hat bereits PHP 5.6 als
minimale Vorraussetzung. Heutzutage ist eher mindestens PHP 7.4+ Voraussetzung, um in den erweiterten
Genuss der sprachlichen Modellpflege außerhalb gravierender Sicherheitsfixes zu kommen.
Vor allen Dingen, weil der Support für alle alten Versionen abgelaufen ist und die Supportzeiten
immer kürzer wurden. Wie früher, lange Jahre auf alten PHP Versionen zu hocken kann schwerwiegende
Sicherheitslücken eröffnen. Treten Sie ihren Providern also auf die Füße!</p>

<p>Damit Serendipity auf dem eigenen Webserver laufen kann, muss man einige
PHP-Einstellungen berücksichtigen. Üblicherweise sind sie passend
konfiguriert, so dass Sie als unbedarfter Benutzer direkt zum Kapitel
<span class="reference">Installation</span> ab Seite <span class="pageref"><a href="#Installation">Installation</a></span> springen können, wenn
Sie Ihren Webserver nicht selbst aufsetzen und dem Techniker bei Ihrem
Provider keine Hinweise geben müssen.</p>

<section id="U131" class="sub">
<span class="u-toc">1.3.1 - Systemseitige Einstellungen</span>

<h3 class="subsection" id="systemseitige-einstellungen">Systemseitige Einstellungen</h3>

<p class="tagging invisible">
<span class="tag-box invisible">
    <span class="inline-tag">PHPModule@PHP-Module|(</span>
</span>
</p>

<p>Um herauszufinden, welche PHP-Module auf Ihrem Webserver installiert sind,
laden Sie folgende kleine Datei namens <code>info.php</code> in das
<span class="tag-box invisible">
    <span class="inline-tag">Document Root</span>
    <span class="inline-tag">Stammverzeichnis</span>
</span>
Webdaten-Stammverzeichnis (auch
<em>Document Root</em> genannt) [*]
<span class="footnote"><i class="fa fa-info-circle"></i> Das ist meistens
<span class="label invisible" id="DocRoot">DocRoot</span> das Stammverzeichnis, in dem Sie bei Benutzung Ihres
FTP-Zugangs standardmäßig zu Beginn landen. Je nachdem, wie Ihr Provider den
Webserver konfiguriert hat, kann es aber auch sein, dass Sie zuerst in ein
Verzeichnis wie <code>htdocs</code> oder <code>httpdocs</code> wechseln müssen, um in das
Stammverzeichnis des Webservers zu gelangen.</span><!-- footnote --> auf den Server (im Buch
<code>www.example.com</code> genannt) und rufen diese in einem Browser über
<code>http://www.example.com/info.php</code> auf:</p>

<pre><code class="php">
    &lt;?php phpinfo(); ?&gt;
</code></pre>

<p>Der Browser sollte dann eine Übersicht darstellen, aus der Sie Ihre
aktuellen Einstellungen herauslesen können. Folgende Module benötigt
Serendipity:</p>

<p class="tagging invisible">
<span class="tag-box invisible">
    <span class="inline-tag">PHPModule@PHP-Module</span>
    <span class="inline-tag">PHPKonfiguration@PHP-Konfiguration</span>
    <span class="inline-tag">Konfiguration!PHP</span>
</span>
</p>
<!-- ??? fake ul li list here ??? - !!! because of tag-box invisible - would be ok with visuallyhidden !!! -->
<ul class="realList">
    <li>
        <span class="tag-box invisible">
            <span class="inline-tag">libxml (PHP-Modul)</span>
        </span>
        <span class="label invisible" id="session">session</span>
        <span class="inline-tag invisible">session (PHP-Modul)</span>
        <span class="box">
            Das PHP-Modul <code>session</code> muss installiert und aktiviert sein sowie Session-Cookies zulassen. Dies
            erreicht man mit der <code>php.ini</code>-Einstellung
        </span>

        <span class="box">
            <span id="pre-style"><code class="conf">
                session.use_cookies = On
            </code></span>
        </span>

        <span class="box">
            Serendipity verlangt darüber hinaus, dass die PHP-Sessiondateien schreibbar sind.
            Die <code>php.ini</code>-Einstellung <code>session.save_path</code> muss demnach auf
            ein Verzeichnis zeigen, in dem der Webserver bzw. PHP Schreibrechte hat.
            Gerade bei Windows-Servern enthält diese Variable häufig ein nicht
            existierendes oder nicht beschreibbares Verzeichnis.
        </span>
    </li>

    <li>
        <span class="tag-box invisible">
            <span class="inline-tag">libxml (PHP-Modul)</span>
        </span>
        <span class="label invisible" id="xml/libxml">xml/libxml</span>
        <span class="box">
            Damit Serendipity in anderen Zeichensätzen verfasste
            Texte nach UTF-8 konvertieren und seine XML-Funktionalitäten ausspielen
            kann, muss das (standardmäßig vorhandene) PHP-Modul <code>xml/libxml</code>
            installiert und aktiviert sein.
        </span>
    </li>

    <li>
        <span class="tag-box invisible">
            <span class="inline-tag">iconv (PHP-Modul)</span>
            <span class="inline-tag">mbstring (PHP-Modul)</span>
        </span>
        <span class="label invisible" id="iconv/mbstring">iconv/mbstring</span>
        <span class="box">
            Für andere Zeichensatzkonvertierungen, die besonders bei Import- und
            Exportvorgängen (zB. von RSS-Feeds) nötig werden, kann Serendipity
            sowohl das PHP-Modul <code>iconv</code> als auch <code>mbstring</code> verwenden. Beide
            Module sind in aktuellen PHP5-Versionen standardmäßig aktiviert.
        </span>
    </li>

    <li>
        <span class="tag-box invisible">
            <span class="inline-tag">PCRE (PHP-Modul)</span>
        </span>
        <span class="label invisible" id="PCRE">PCRE</span>
        <span class="box">
            Um Zeichenketten zu finden und zu bearbeiten, setzt Serendipity häufig
            <em>reguläre Ausdrücke</em> ein. Diese Funktionalität liefert das
            (standardmäßig installierte) PHP-Modul <code>pcre</code>.
        </span>
    </li>

    <li>
        <span class="tag-box invisible">
            <span class="inline-tag">libgd (PHP-Modul)</span>
            <span class="inline-tag">ImageMagick</span>
        </span>
        <span class="label invisible" id="gd/imageMagick">gd/imageMagick</span>
        <span class="box">
            Um die Mediathek vernünftig nutzen zu können, benötigen Sie
            entweder das PHP-Modul <code>gd</code> oder das Paket ImageMagick. Sollten Sie
            Letzteres benutzen, müssen die Dateien des Pakets für Ihren Web-Benutzer
            ausführbar sein.
        </span>
    </li>

    <li>
        <span class="tag-box invisible">
            <span class="inline-tag">socket (PHP-Modul)</span>
            <span class="inline-tag">Firewall</span>
        </span>
        <span class="label invisible" id="socket">socket</span>
        <span class="box">
            Damit Serendipity auf fremde Webseiten zugreifen kann, um zB.
            Webservices zu integrieren und den Download von Plugins zu ermöglichen,
            benötigt es das (standardmäßig aktivierte) PHP-Modul <code>socket</code>,
            das Netzwerkfunktionen bereitstellt. Selbst wenn das Modul
            vorhanden ist, kann es sein, dass Firewall-Einstellungen am Server die
            Verbindung zu fremden Servern auf HTTP-Port 80 (oder anderen) verbieten.
            Je nach Einsatzzweck müssen Sie Verbindungen zu den Servern, die
            Serendipity von sich aus anspricht (zB. <code>github.com</code> für den
            Download von Plugins), explizit erlauben.
            Sollte dies nicht möglich sein, können Sie Serendipity zwar nutzen,
            müssen aber auf die entsprechende Funktionalität verzichten.
        </span>
    </li>

    <li>
        <span class="tag-box invisible">
            <span class="inline-tag">openssl (PHP-Modul)</span>
        </span>
        <span class="label invisible" id="openssl">openssl</span>
        <span class="box">
            Damit die Serendipity-Komponenten intern auf <code>https</code>-URLs zugreifen
            können (und beispielsweise Trackbacks zu solchen geschützten URLs senden
            können), wird das PHP-Modul <code>openssl</code> benötigt.
        </span>
    </li>

    <li>
        <span class="tag-box invisible">
            <span class="inline-tag">zlib (PHP-Modul)</span>
        </span>
        <span class="label invisible" id="zlib">zlib</span>
        <span class="box">
            Soll Serendipity die HTML-Seiten per <code>gzip</code>-Kompression
            bündeln, wird das PHP-Modul <code>zlib</code> benötigt.
        </span>
    </li>

    <li>
        <span class="tag-box invisible">
            <span class="inline-tag">sendmail</span>
        </span>
        <span class="label invisible" id="sendmail">sendmail</span>
        <span class="box">
            Um E-Mails zu versenden (zB. um auf neue Kommentare
            hinzuweisen), muss PHP mit der <code>sendmail</code>-Option kompiliert worden
            sein.
        </span>
    </li>

    <li>
        <span class="tag-box invisible">
            <span class="inline-tag">MySQL</span>
            <span class="inline-tag">PostgreSQL</span>
            <span class="inline-tag">SQLite</span>
        </span>
        <span class="label invisible" id="mysql, pgsql, sqlite">mysql, pgsql, sqlite</span>
        <span class="box">
            Abgesehen von einem
            Datenbanksystem muss auf Ihrem Server auch die Client-Schnittstelle für
            die jeweilige Datenbank (MySQL(i), PostgreSQL, SQLite) als PHP-Modul
            (<code>mysqli</code>, <code>pgsql</code>, <code>sqlite</code>)
            eingebunden sein. Standardmäßig wird PHP mit MySQL-Bibliotheken
            eingerichtet; seit PHP 5 ist auch das Datenbanksystem SQLite
            üblicherweise aktiviert.
        </span>
    </li>

    <li>
        <span class="tag-box invisible">
            <span class="inline-tag">Cache</span>
            <span class="inline-tag">APC</span>
            <span class="inline-tag">ZendCache</span>
            <span class="inline-tag">ionCube</span>
        </span>
        <span class="label invisible" id="APC, ZendCache, ionCube">APC, ZendCache, ionCube</span>
        <span class="box">
            Um die Geschwindigkeit zu erhöhen,
            empfiehlt sich der Einsatz von PHP-Bytecode-Caches wie APC (<code>apc</code>),
            ZendCache oder ionCube.
            <span class="tag-box invisible">
                <span class="inline-tag">PHPModule@PHP-Module|)</span>
            </span>
        </span>
    </li>
</ul>

<p class="tagging invisible">
<span class="tag-box invisible">
    <span class="inline-tag">PHP!Konfigurationseinstellungen</span>
</span>
</p>

<p>PHP bietet zahlreiche sicherheitsrelevante Parameter, deren aktueller Wert bei
der Installation des Blogs angezeigt und auf optimale Einstellung überprüft
wird. All diese Einstellungen werden in der <code>php.ini</code>-Konfigurationsdatei
geändert
<span class="tag-box invisible">
    <span class="inline-tag">phpini@php.ini</span>
</span>
und bedürfen je nach
Serverumgebung eines Neustarts der Webserver-Software. Für Hilfe zur
Konfiguration von PHP und des jeweiligen Webservers schlagen Sie bitte in der
Anleitung der jeweiligen Software nach, da dies den Rahmen dieses Buchs
sprengen würde.</p>

<p>
<span class="tag-box invisible">
    <span class="inline-tag">VirtualHost</span>
</span>
Kommt Apache zum Einsatz, können die Einstellungen auch pro Domain
konfiguriert werden. Im jeweiligen <code>&lt;VirtualHost&gt;</code>-Abschnitt der
Konfigurationsdatei (je nach Apache-Version unterschiedlich, meist
<code>httpd.conf</code>
<span class="tag-box invisible">
    <span class="inline-tag">httpd.conf</span>
</span>
oder auch in Dateien unterhalb des Apache <code>conf.d</code>-Verzeichnisses)
muss dazu <code>php_admin_value option wert</code> bzw. <code>php_value option
wert</code> eingetragen werden. Alle per <code>php_value</code>
einstellbaren Optionen lassen sich auch über eine <code>.htaccess</code>-Datei
<span class="tag-box invisible">
    <span class="inline-tag">htaccess@.htaccess</span>
</span>
im Stammverzeichnis des Webauftritts verändern. Einstellungen in
dieser Datei haben Vorrang vor den globalen Optionen, die in der
Webserverkonfiguration oder in <code>php.ini</code> definiert wurden. Via
<code>php_admin_value</code> gesetzte Werte lassen sich von
<code>.htaccess</code>-Dateien nicht mehr verändern.</p>

<p>Serendipity selbst legt bei der Installation eine solche Datei im
Serendipity-Verzeichnis an.
Sollte Ihr Webserver deren Auswertung
unterbinden, können Sie die von Serendipity erstellte Datei gefahrlos
löschen, verlieren dadurch aber die Möglichkeit, <em>sprechende
URLs</em> zu benutzen sowie den Download einiger interner Dateien zu
verhindern.
Daher sollten Sie dies nur dann tun, wenn Ihr Provider auch nach
Rücksprache die Auswertung der <code>.htaccess</code>-Dateien nicht
genehmigt.</p>

<p>
<span class="tag-box invisible">
    <span class="inline-tag">htaccess@.htaccess</span>
</span>
Haben Sie die Möglichkeit, die <code>.htaccess</code>-Nutzung über
<span class="tag-box invisible">
    <span class="inline-tag">AllowOverride (Apache-Option)</span>
</span>
die Option <code>AllowOverride</code> in der Webserver-Konfigurationsdatei zuzulassen, geschieht dies im
<code>&lt;VirtualHost&gt;</code>-Abschnitt mittels</p>

<pre><code class="conf">
    &lt;Directory /pfad/zum/serendipity-verzeichnis&gt;<br>
    &nbsp; AllowOverride All<br>
    &lt;/Directory&gt;
</code></pre>

<p>
<span class="tag-box invisible">
    <span class="inline-tag">AllowOverride (Apache-Option)</span>
</span>
Notfalls reicht auch <code>AllowOverride Options
FileInfo</code>. Der Wert <code>All</code> erlaubt es Plugins grundsätzlich, weitere
Webserver-Optionen zu setzen, und gibt Ihnen damit mehr Flexibilität.</p>

<p>Serendipity setzt in seiner <code>.htaccess</code>-Datei (siehe Seite
<span class="pageref"><a href="#htaccess">htaccess</a></span>) die
Optionen <code>session.use_trans_sid</code> (Seite
<span class="pageref"><a href="#session-trans-sid">session-trans-sid</a></span>) und <code>register_globals</code> (Seite
<span class="pageref"><a href="#register-globals">register-globals</a></span>). Bei der Benutzung des Apache-Moduls
<code>mod_rewrite</code> kommen auch die Optionen <code>RewriteEngine</code>,
<code>RewriteBase</code> und <code>RewriteRule</code> zum Einsatz. Die
<code>.htaccess</code>-Optionen <code>ErrorDocument</code> und <code>DirectoryIndex</code>
ermöglichen freie Permalinks (siehe Seite <span class="pageref"><a href="#urlformung">urlformung</a></span>).
Damit der Webserver bestimmte Serendipity-Dateien nicht im Klartext
darstellt, folgt ein <code>Deny from All</code> als Sicherheitsmaßnahme.</p>

<article id="XU" class="subsub">

<header>
    <h4 class="subarticle" id="sprechende-urls">Sprechende URLs</h4>
</header>

<p><span class="label invisible" id="mod-rewrite">mod-rewrite</span>
<span class="tag-box invisible">
    <span class="inline-tag">mod_rewrite|(</span>
    <span class="inline-tag">Error-Handling</span>
    <span class="inline-tag">URL-Umformung|(</span>
    <span class="inline-tag">sprechende URLs|(</span>
    <span class="inline-tag">URL!sprechende|(</span>
</span>
<code>mod_rewrite</code> ist kein PHP-Modul, sondern eine Funktionalität des
Apache-Webservers. Wenn das Modul in Apache eingebunden wurde, erlaubt
es einer Web-Anwendung,
URLs zu benutzen, die nichts mit der tatsächlichen
Dateistruktur auf dem Server zu tun haben.
Statt die Nutzer damit zu behelligen, dass sie gerade ein PHP-Skript
namens <code>serendipity_admin.php</code> nutzen, lässt man sie besser auf eine
URL wie <code>http://www.example.com/serendipity/admin/</code> zugreifen, die
den Browser auf die tatsächlich existierende Datei <code>serendipity_admin.php</code> umleitet.</p>

<p>Das <code>mod_rewrite</code>-Modul ermöglicht es Serendipity, sogenannte <em>sprechende
URLs</em> (auch <em>URL-Umformung</em> genannt) einzusetzen,
die zum Beispiel Artikeltitel oder
Kategorienamen enthalten. Für den Benutzer hat das
den Vorteil, dass er eine URL schon anhand ihres Namens eindeutig
zuweisen kann. Zudem können Suchroboter wie Google Ihre
<span class="tag-box invisible">
    <span class="inline-tag">Google!Indizierung durch \textasciitilde</span>
    <span class="inline-tag">Suchroboter!Indizierung durch \textasciitilde</span>
</span>
Artikel aufgrund der Schlagwörter in der URL besser indizieren.</p>

<p>Serendipity kann auch mit sprechenden URLs arbeiten, wenn <code>mod_rewrite</code>
nicht verfügbar ist. Dann leitet der Apache-Webserver den Browser mittels eines
Tricks an die echte URL weiter: Kann er eine Seite nicht finden, hängt es vom
<em>Error-Handling</em> (genau: der <code>ErrorDocument</code>-Anweisung) ab, ob er die
Fehlermeldung an den Browser durchreicht oder diesen auf eine andere Seite
führt. Diese Methode ist jedoch einen Tick langsamer und unflexibler als
<code>mod_rewrite</code> und klappt leider nicht auf allen Servern, da sie die oben
erwähnte <code>AllowOverride</code>-Einstellung <code>All</code> voraussetzt. Andere
Webserver wie Microsoft IIS oder lighttpd bieten diese Möglichkeiten leider
nicht, daher ist dort keine URL-Umformung möglich [*]
<span class="footnote"><i class="fa fa-info-circle"></i> Mit etwas manuellem
Aufwand und Kenntnis der Webserver lassen sich die benötigten Umformungsregeln
jedoch auch nachrüsten, mehr dazu unter <a href="http://s9y.org/119.html" target="_blank" rel="noopener">http://s9y.org/119.html</a></span><!-- footnote -->.</p>

<p>Bei der Installation wird Serendipity versuchen, automatisch die
passendste Methode für Sie herauszufinden. Abhängig
davon wird die <code>.htaccess</code>-Datei unterschiedlich erstellt, damit sie die
jeweils erforderlichen Anweisungen enthält. Die gewünschte Methode zur
URL-Umformung kann später in der Konfiguration natürlich auch umgestellt
werden.</p>

<p>
<span class="tag-box invisible">
    <span class="inline-tag">Probleme!URL-Umformung</span>
</span>
Sobald für Serendipity das <code>mod_rewrite</code>-Modul aktiviert ist, wird
Serendipity <em>sämtliche</em> Aufrufe in seinem Unterverzeichnis umleiten.
Sollten Sie später also einmal andere Programme unterhalb des
Serendipity-Verzeichnisses aufrufen wollen, wird dies womöglich dazu
führen, dass Sie statt des installierten Programms Serendipity sehen.
Dies liegt daran, dass durch die <code>.htaccess</code>-Datei von
Serendipity die URL-Umformungsregeln auch für alle Unterverzeichnisse
gelten. Abhilfe können Sie schaffen, indem Sie in jedem Unterverzeichnis
einer fremden Anwendung eine eigene <code>.htaccess</code>-Datei erstellen, mit
dem Inhalt:</p>

<pre><code class="conf">
    RewriteEngine off
</code></pre>

<p>Diese Anweisung sorgt dafür, dass für das jeweilige Programm die
URL-Umformung deaktiviert wird.
<span class="tag-box invisible">
    <span class="inline-tag">mod_rewrite|)</span>
    <span class="inline-tag">URL-Umformung|)</span>
    <span class="inline-tag">sprechende URLs|)</span>
    <span class="inline-tag">URL!sprechende|)</span>
</span>
</p>

</article>

</section><!-- section.sub end -->

<section id="U132" class="sub">
<span class="u-toc">1.3.2 - Für Serendipity relevante PHP-Konfigurationsoptionen</span>

<h3 class="subsection" id="für-serendipity-relevante-php-konfigurationsoptionen">Für Serendipity relevante PHP-Konfigurationsoptionen</h3>

<p class="tagging invisible">
<span class="tag-box invisible">
    <span class="inline-tag">phpini@php.ini|(</span>
    <span class="inline-tag">httpd.conf|(</span>
</span>
</p>

<p>Folgende Optionen sind/waren für Serendipity maßgeblich:</p>

<p>
<span class="tag-box invisible">
    <span class="inline-tag">phpini@php.ini!session.use_cookies</span>
</span>
<code class="item">php_value session.use_cookies</code>
<code>.htaccess</code>, <code>php.ini</code> oder Webserverkonfiguration;</p>

<p>Serendipity speichert temporäre Dateien in PHP-Sessions. Um eine Session
eindeutig zu identifizieren, vergibt das System Session-IDs, die
üblicherweise in einem HTTP-Cookie gespeichert werden. Damit Serendipity
<span class="tag-box invisible">
    <span class="inline-tag">Cookies</span>
    <span class="inline-tag">Session-Cookies</span>
</span>
PHP-Session-Cookies nutzen kann, muss diese Option aktiviert sein.</p>

<p><span class="label invisible" id="session-trans-sid">session-trans-sid</span>
<span class="tag-box invisible">
    <span class="inline-tag">phpini@php.ini!session.use_trans_sid</span>
</span>
<code class="item">php_value session.use_trans_sid</code>
wird von Serendipity selbst in der <code>.htaccess</code>-Datei auf <code>0</code>
gesetzt, kann aber auch in der <code>php.ini</code> oder der
Webserverkonfiguration geändert werden;</p>

<p>Wenn der Browser keine Cookies akzeptiert, kann die Session-ID auch an
<span class="tag-box invisible">
    <span class="inline-tag">URL!mit Session-ID</span>
</span>
die URL angehängt werden.
PHP macht dies automatisch, wenn die Option
<code>session.use_trans_sid</code> aktiviert ist. Diese Automatik ist seitens
Serendipity jedoch aus Sicherheitsgründen unerwünscht.
Sollte die Option dennoch aktiviert
sein, können fremde Nutzer ungültige Session-IDs in die URL
<span class="tag-box invisible">
    <span class="inline-tag">Angriff!auf Session-Dateien</span>
</span>
einschleusen und somit möglicherweise Ihre Session-Dateien
kompromittieren. Ein Serendipity-Blog sollte daher niemals die
Session-ID in einer URL angeben.
Gibt Ihnen jemand eine Serendipity-URL wie
<code>http://www.example.com/serendipity/index.php?PHPSESSID=23213123adasd</code>,
kann es sein, dass diese Person
<span class="tag-box invisible">
    <span class="inline-tag">Missbrauch!von Session-Daten verhindern</span>
</span>
Ihre Daten ausspähen will. Die serverseitige Deaktivierung der PHP-Option
<code>session.use_trans_sid</code> beugt
solchem Missbrauch vor.</p>

<p>
<span class="tag-box invisible">
    <span class="inline-tag">phpini@php.ini!allow_url_fopen</span>
</span>
<code class="item">php_admin_value allow_url_fopen</code>
nur in der <code>php.ini</code> oder in der Webserverkonfiguration
änderbar;</p>

<p>PHP liest und behandelt URLs wie normale Dateien, wenn diese Option
aktiviert ist. Gerade in älteren PHP-Versionen öffnet die Aktivierung
<span class="tag-box invisible">
    <span class="inline-tag">Angriff!auf das System</span>
</span>
dieser Option die Tür für Angriffsszenarien, in denen Code von
fremden Internetseiten bei Ihnen ausgeführt werden kann (und so das
System kompromittiert).</p>

<p>Damit die Aktivierung dieser sicherheitsrelevanten Option nicht
erforderlich ist, greifen alle wichtigen Serendipity-Funktionen
stattdessen über <em>Sockets</em> auf
Netzwerk-Ressourcen zu. Nur veraltete Plugins erfordern
möglicherweise die Aktivierung dieser Option. Es empfiehlt
sich, sie zu deaktivieren und nur bei Bedarf zuzuschalten.</p>

<p><span class="label invisible" id="register-globals">register-globals</span>
<span class="tag-box invisible">
    <span class="inline-tag">phpini@php.ini!register_globals</span>
</span>
<code class="item">php_value register_globals</code>
wird von Serendipity selbst in der <code>.htaccess</code>-Datei auf
<code>off</code> gesetzt, kann aber auch in <code>php.ini</code> oder der
Webserverkonfiguration festgelegt werden;</p>

<p>Wenn diese Variable aktiviert ist, stellt PHP URL-Variablen im globalen
Namensraum zur Verfügung. Ältere PHP-Programme benötigen diese Option,
Serendipity greift jedoch nicht auf dieses Feature zurück. Aus
Sicherheitsgründen ist es daher sehr zu empfehlen, die Option zu deaktivieren,
sofern sie nicht für andere auf dem Webserver laufende Anwendungen
benötigt wird.</p>

<p>
<span class="tag-box invisible">
    <span class="inline-tag">phpini@php.ini!safe_mode</span>
</span>
<code class="item">php_admin_value safe_mode
php_admin_value safe_mode_include_dir
php_admin_value safe_mode_gid</code>
lediglich via <code>php.ini</code> oder
Webserverkonfiguration änderbar;</p>

<p>
<span class="tag-box invisible">
    <span class="inline-tag">Safe Mode (PHP)</span>
</span>
<span class="label invisible" id="Safe Mode">Safe Mode</span> PHPs <em>Safe Mode</em> stellt sicher, dass lokale PHP-Anwendungen wie
Serendipity nur auf die Daten im eigenen Stammverzeichnis zugreifen und
keine fremden Dateien einbinden können. Obwohl Serendipity mit dieser
Einschränkung generell funktioniert, hat die Aktivierung dieses Modus
folgende Nachteile:
Die Optionen <code>safe_mode_include_dir</code> und <code>safe_mode_gid</code>
legen fest, auf welche Verzeichnisse ein PHP-Skript Zugriff hat. Solange
die Benutzerrechte (<em>Permissions</em>) und die Eigentumsverhältnisse
(<em>Ownership</em>) auf dem Webserver für das
Serendipity-Installationsverzeichnis korrekt gesetzt sind, lassen sich zB.
Mediathek-Dateien problemlos hochladen. Ein falsch
eingerichteter Safe Mode hat zur Folge, dass man mittels FTP oder
Administrationsoberfläche keine Templates und andere Dateien hochladen und
keine Bilder im Nachhinein löschen oder bearbeiten kann.</p>

<p>
<span class="tag-box invisible">
    <span class="inline-tag">phpini@php.ini!open_basedir</span>
</span>
<code class="item">php_admin_value open_basedir</code>
nur via <code>php.ini</code> oder in der Webserverkonfiguration änderbar;</p>

<p>Ähnlich wie der Safe Mode lässt sich der Datei-Zugriffsschutz von PHP auf
gewisse Verzeichnisse beschränken. Üblicherweise wird diese Option in
Zusammenhang mit den Safe-Mode-Parametern konfiguriert. Während der
Safe Mode lediglich den globalen Dateizugriff auf Gruppen- und
Benutzerebene regelt, schränkt <code>open_basedir</code> den
Zugriff auf vordefinierte Verzeichnisse ein.</p>

<p>Verwendet Ihr Webserver diese Option,
gehört das Serendipity-Installationsverzeichnis unbedingt in die damit
konfigurierte Verzeichnisliste. Anderenfalls kann der Webserver
die Installationsdateien nicht aufrufen. Als Trennzeichen zwischen zwei
Verzeichnispfaden dient in dieser Option das Semikolon (<code>;</code>).</p>

<p>Bleibt diese Option leer, ist der Zugriff auf alle
Verzeichnisse möglich. Befindet sich
bereits der Verzeichniseintrag <code>.</code> in der Auflistung, steht
dieser Punkt synonym für das Verzeichnis, in dem ein PHP-Programm
ausgeführt wird.</p>

<p>Gerade auf Servern, die viel mit symbolischen Dateisystemlinks arbeiten,
muss der Administrator sorgfältig auf die korrekte Konfiguration der
involvierten Verzeichnispfade achten.</p>

<p>
<span class="tag-box invisible">
    <span class="inline-tag">phpini@php.ini!session.cookie_domain</span>
</span>
<code class="item">php_value session.cookie_domain</code>
<code>.htaccess</code>, <code>php.ini</code> oder Webserverkonfiguration;</p>

<p>Wenn Serendipity einen HTTP-Cookie setzt (also zB. die Session-ID
oder Login-Daten), enthalten diese den Namen der Domain, auf dem sich die
Serendipity-Installation befindet. Falls in der PHP-Variable
<code>session.cookie_domain</code> ein Domainname eingetragen ist, nutzt
Serendipity stattdessen diese Domainangabe. In dem Fall stellen Sie
sicher, dass sich dieser Wert mit dem Domainnamen des s9y-Servers deckt.
Wenn ein Webserver für mehrere Domains konfiguriert ist und an dieser
Stelle einen zentralen Domainnamen setzt, ist dies oft Ursache für
spätere Probleme.</p>

<p>
<span class="tag-box invisible">
    <span class="inline-tag">phpini@php.ini!session.save_path</span>
</span>
<code class="item">php_value session.save_path</code>
<code>.htaccess</code>, <code>php.ini</code> oder Webserverkonfiguration;</p>

<p>Alle von Serendipity gespeicherten Sessiondaten werden im mit dieser Option
angegebenen Verzeichnis gespeichert. Der ausführende PHP-Prozess muss
darauf Schreibrechte besitzen. Stellen Sie bei Windows-Servern sicher,
dass hier ein gültiger Verzeichnisname (zB.
<code>C:/Temp</code>) eingetragen ist. Sollten
PHP-Sessions nicht schreibbar sein, zeigt Serendipity
Fehlermeldungen an.</p>

<p><span class="label invisible" id="file-uploads">file-uploads</span>
<span class="tag-box invisible">
    <span class="inline-tag">phpini@php.ini!file_uploads</span>
    <span class="inline-tag">phpini@php.ini!post_max_size</span>
    <span class="inline-tag">phpini@php.ini!upload_max_filesize</span>
    <span class="inline-tag">phpini@php.ini!max_input_time</span>
</span>
<code class="item">php_admin_value file_uploads
php_value post_max_size
php_value upload_max_filesize
php_value max_input_time</code>
<code>.htaccess</code>, <code>php.ini</code> oder
Webserverkonfiguration - <code>file_uploads</code> nur via <code>php.ini</code> oder
Webserverkonfiguration änderbar;</p>

<p>Damit man überhaupt Dateien hochladen kann, muss <code>file_uploads</code> aktiv sein. Die
maximale Dateigröße einer hochgeladenen Datei legen
<code>post_max_size</code>, das ein Limit für HTTP-Requests mitsamt aller Daten
definiert, und
<code>upload_max_filesize</code> fest, das seinerseits eine spezielle Obergrenze
nur für die mittels HTTP-Request
übermittelten Dateien setzt. Die maximale Zeit für die Verarbeitung
einer Datei beim Upload legt die Variable <code>max_input_time</code> fest.</p>

<p><span class="label invisible" id="memory-limit">memory-limit</span>
<span class="tag-box invisible">
    <span class="inline-tag">phpini@php.ini!memory_limit</span>
</span>
<code class="item">php_admin_value memory_limit</code>
Einstellung via <code>php.ini</code> oder Webserverkonfiguration;</p>

<p>Serendipity benötigt einiges an Arbeitsspeicher auf dem Webserver. In einer
Grundkonfiguration reichen meist zwischen drei und vier MB RAM. Der
Speicherbedarf kann mit der Anzahl und der Komplexität von Plugins jedoch
zunehmen.</p>

<p>Wie viel verfügbaren Speicher PHP-Anwendungen insgesamt nutzen dürfen,
legt die Variable <code>memory_limit</code> fest. Sollte der Arbeitsspeicher
Fehlermeldungen zufolge nicht mehr ausreichen, müssen Sie entweder dieses
Limit hochsetzen oder Serendipity-Plugins löschen.</p>

<p>
<span class="tag-box invisible">
    <span class="inline-tag">phpini@php.ini!display_errors</span>
</span>
<code class="item">php_value display_errors
php_value error_log</code>
<code>.htaccess</code>, <code>php.ini</code> oder <code>httpd.conf</code>;</p>

<p>Einige Server geben PHP-Fehlermeldungen nicht an den Browser weiter, um
<span class="tag-box invisible">
    <span class="inline-tag">Fehlermeldungen!PHP-Fehlermeldungen nicht an Browser geben</span>
    <span class="inline-tag">PHPFehlermeldungen@PHP-Fehlermeldungen!nicht an Browser geben</span>
    <span class="inline-tag">Angriff!Informationen über ~e</span>
</span>
weniger leicht angreifbar zu sein.[*]
<span class="footnote"><i class="fa fa-info-circle"></i> Fehlermeldungen können
kritische Dateipfade eines Servers offenlegen (<em>Information
Disclosure</em>). Solche Informationen erlauben es Angreifern, bestimmte
Rückschlüsse auf die Einrichtung eines Server zu ziehen.</span><!-- footnote --> Wenn Sie
allerdings einmal auf Probleme stoßen oder eigene Anpassungen eine leere
Seite zum Ergebnis haben, empfiehlt es sich ggf., diese beiden Optionen
temporär zu aktivieren. Die bessere Alternative heißt: häufiger die
Fehler-Logfiles des Webservers prüfen.</p>

<p>&nbsp;</p>

<p class="tagging invisible">
<span class="tag-box invisible">
    <span class="inline-tag">phpini@php.ini|)</span>
    <span class="inline-tag">httpd.conf|)</span>
</span>
</p>

</section><!-- section.sub end -->

<section id="U133" class="sub">
<span class="u-toc">1.3.3 - Die Serendipity .htaccess-Datei</span>

<h3 class="subsection" id="serendipitys-htaccess-datei">Die Serendipity .htaccess-Datei</h3>

<p class="tagging invisible">
<span class="label invisible" id="htaccess">htaccess</span>
<span class="tag-box invisible">
    <span class="inline-tag">htaccess@.htaccess</span>
</span>
</p>

<p>Befehle, die Serendipity eigenständig in die
<code>.htaccess</code>-Datei im Stammverzeichnis einträgt, fasst die Software in einen
Block ein, der mit
<code>#Begin s9y</code> beginnt und mit <code>#End s9y</code> endet. Wenn Sie eigene
Parameter in diese Datei einfügen, tun Sie dies daher vor
<code>#Begin s9y</code> oder nach <code>#End s9y</code>. Das verhindert, dass
Serendipity diese Zeilen ändert. Wenn Sie eine von Serendipity gesetzte
Option überschreiben müssen, fügen Sie die
Option mit dem von Ihnen gewünschten Wert am besten nach dem <code>s9y</code>-Block nochmals
ein.</p>

<p>Auf einem Server ohne <code>mod_rewrite</code> sieht der <code>s9y</code>-Block wie
folgt aus:</p>

<pre class="snippet"><code id="snippet-htaccess" class="conf">#&nbsp;BEGIN&nbsp;s9y<br>
DirectoryIndex&nbsp;/serendipity/index.php<br>
php_value&nbsp;session.use_trans_sid&nbsp;0<br>
php_value&nbsp;register_globals&nbsp;off<br>
<br>
&lt;Files&nbsp;*.tpl.php&gt;<br>
&nbsp;&nbsp;&nbsp;&nbsp;deny&nbsp;from&nbsp;all<br>
&lt;/Files&gt;<br>
<br>
&lt;Files&nbsp;*.tpl&gt;<br>
&nbsp;&nbsp;&nbsp;&nbsp;deny&nbsp;from&nbsp;all<br>
&lt;/Files&gt;<br>
<br>
&lt;Files&nbsp;*.sql&gt;<br>
&nbsp;&nbsp;&nbsp;&nbsp;deny&nbsp;from&nbsp;all<br>
&lt;/Files&gt;<br>
<br>
&lt;Files&nbsp;*.inc.php&gt;<br>
&nbsp;&nbsp;&nbsp;&nbsp;deny&nbsp;from&nbsp;all<br>
&lt;/Files&gt;<br>
<br>
&lt;Files&nbsp;*.db&gt;<br>
&nbsp;&nbsp;&nbsp;&nbsp;deny&nbsp;from&nbsp;all<br>
&lt;/Files&gt;<br>
<br>
#&nbsp;END&nbsp;s9y<br>
</code></pre><!-- snippet -->

<p>Der erste Parameter, <code>DirectoryIndex</code>, legt die zentrale Serendipity-Datei
<code>index.php</code> als Startseite des Blogs fest. Wenn in der Serendipity-Konfiguration
bei der <span class="mbold">URL-Umformung</span> (siehe Seite <span class="pageref"><a href="#urlformung">urlformung</a></span>) die Option
<span class="mbold">Apache ErrorHandling</span> eingestellt wurde, folgt als nächste Zeile der
Eintrag <code>ErrorDocument 404 /serendipity/index.php</code>. Die darin genannte Datei
dient als Weiterleitungsziel für alle virtuellen URLs, auch bei der Verwendung
von <code>mod_rewrite</code>.</p>

<p>Die nächsten beiden Zeilen deaktivieren die PHP-Einstellungen
<code>session.use_trans_sid</code> und <code>register_globals</code>.</p>

<p>Zuletzt folgen mehrere Abschnitte, die den Zugriff auf interne
Serendipity-Dateien (<code>*.tpl.php</code>, <code>*.tpl</code>, <code>*.sql</code>,
<code>*.inc.php</code> und <code>*.db</code>) verbieten.</p>

<p>Wurde <code>mod_rewrite</code> aktiviert, sieht die
<code>.htaccess</code> bis auf einen Block genauso aus wie die eben
gezeigte:</p>

<pre class="snippet"><code id="htaccess-rewrite" class="conf">#&nbsp;BEGIN&nbsp;s9y<br>
<br>
ErrorDocument&nbsp;404&nbsp;/serendipity/index.php<br>
DirectoryIndex&nbsp;/serendipity/index.php<br>
php_value&nbsp;session.use_trans_sid&nbsp;0<br>
php_value&nbsp;register_globals&nbsp;off<br>
<br>
RewriteEngine&nbsp;On<br>
RewriteBase&nbsp;/serendipity/<br>
RewriteRule&nbsp;^((id/([0-9]+))/?)&nbsp;index.php?/$1&nbsp;[NC,L,QSA]<br>
RewriteRule&nbsp;^(authors/([0-9]+)\-[0-9a-z\.\_!;,\+\-\%]+)&nbsp;index.php?/$1&nbsp;[NC,L,QSA]<br>
...<br>
RewriteRule&nbsp;^htmlarea/(.*)&nbsp;htmlarea/$1&nbsp;[L,QSA]<br>
RewriteRule&nbsp;(.*.html?)&nbsp;index.php?url=/$1&nbsp;[L,QSA]<br>
<br>
&lt;Files&nbsp;*.tpl.php&gt;<br>
&nbsp;&nbsp;&nbsp;&nbsp;deny&nbsp;from&nbsp;all<br>
&lt;/Files&gt;<br>
...<br>
<br>
#&nbsp;END&nbsp;s9y<br>
</code></pre><!-- snippet -->

<p>Hinzugekommen ist der Befehl <code>RewriteEngine On</code>, der
<code>mod_rewrite</code> aktiviert. <code>RewriteBase</code> legt den Stammpfad für
alle Operationen fest. Die einzelnen <code>RewriteRule</code>s legen fest,
wohin der Nutzer weitergeleitet wird, wenn er spezielle URLs aufruft.
Der erste Teil hinter einer <code>RewriteRule</code> gibt an, welches Muster in
der URL gesucht wird, der zweite Teil legt fest, welche Datei
aufgerufen wird, und zuletzt folgen spezielle
<code>mod_rewrite</code>-Optionen in eckigen Klammern.</p>

<p><code>L</code> gibt eine abschließende Regel an: Sobald eine URL auf das
jeweilige Muster zutrifft, werden die übrigen Muster nicht mehr geprüft.
<code>QSA</code> bedeutet, dass URL-Parameter (die sogenannten <em>GET-Variablen</em>) an
die Ziel-URL angehängt werden. <code>NC</code> besagt, dass
Groß- und Kleinschreibung bei einer URL nicht unterschiedlich behandelt
wird.</p>

<p>Die jeweiligen Regeln werden mittels regulärer Ausdrücke
formuliert, die bestimmte Muster in Zeichenketten detailliert beschreiben.</p>

</section><!-- section.sub end -->

<section id="U134" class="sub">
<span class="u-toc">1.3.4 - PEAR</span>

<h3 class="subsection" id="pear">PEAR</h3>

<p class="tagging invisible">
<span class="label invisible" id="PEAR">PEAR</span>
<span class="tag-box invisible">
    <span class="inline-tag">PEAR</span>
</span>
</p>

<p>Das <em>PHP Extension and Application Repository</em> (kurz PEAR) ist eine
Sammlung von PHP-Skripten und -Modulen, von der zahlreiche
Web-Anwendungen Gebrauch machen. Auch Serendipity setzt mehrere
PEAR-Komponenten ein: <code>Cache::Lite</code>, <code>HTTP::Request</code>, <code>Onyx</code>,
<code>Net::Socket</code>, <code>Text::Wiki</code> und <code>XML::RPC</code>. Damit diese
nicht zentral auf dem Webserver installiert sein müssen, liefert
Serendipity die Komponenten im Unterverzeichnis <code>bundled-libs</code> mit.</p>

<p>Wenn die entsprechenden PEAR-Komponenten bereits auf dem Webserver
vorhanden sind, räumt Serendipity diesen standardmäßig den Vorrang ein,
damit Systemadministratoren bei kritischen Updates nicht auch das
<code>bundled-libs</code>-Verzeichnis anfassen müssen. Dabei kommt es manchmal
zu (Versions-)Konflikten.</p>

<p>In diesem Fall kann man in der globalen Serendipity-Konfigurationsdatei
<code>serendipity_config.inc.php</code> mit</p>

<pre><code class="php">
    $serendipity['use_PEAR'] = false;
</code></pre>

<p>darauf beharren, dass die von s9y mitgelieferten Komponenten zum
Einsatz kommen.
<span class="tag-box invisible">
    <span class="inline-tag">Serendipity!Voraussetzungen|)</span>
</span>
</p>

</section><!-- section.sub end -->

</section><!-- section.index end -->

<section id="S140" class="index">
<span class="s-toc">1.4 - Terminologie</span>

<h3 class="section" id="terminologie">Terminologie</h3>

<p class="tagging invisible">
<span class="tag-box invisible">
    <span class="inline-tag">Terminologie</span>
</span>
</p>

<p>
<span class="label invisible" id="Terminologie">Terminologie</span>
<span class="tag-box invisible">
    <span class="inline-tag">Web 2.0</span>
</span>
In Zeiten des <em>Web 2.0</em> (siehe Seite <span class="pageref"><a href="#Webservices">Webservices</a></span>) buhlen
zahlreiche allgegenwärtige Marketing- und Technologiebegriffe um
Aufmerksamkeit. Da diese auch im Zusammenhang mit
Serendipity wichtig sind, gehen wir darauf im Folgenden gezielt und knapp
ein. Detaillierte Definitionen liefert zB.
die deutsche Wikipedia.[*]
<span class="footnote"><i class="fa fa-info-circle"></i> <a href="http://de.wikipedia.org/" target="_blank" rel="noopener">http://de.wikipedia.org/</a></span><!-- footnote -->
</p>

<section id="U141" class="sub">
<span class="u-toc">1.4.1 - XHTML, HTML, XML und CSS</span>

<h3 class="subsection" id="xhtml-xml-und-css">XHTML, XML und CSS</h3>

<p class="tagging invisible">
<span class="tag-box invisible">
    <span class="inline-tag">XHTML</span>
    <span class="inline-tag">HTML</span>
    <span class="inline-tag">CSS</span>
    <span class="inline-tag">XML</span>
</span>
</p>

<p>HTML [*]
<span class="footnote"><i class="fa fa-info-circle"></i> <a href="http://meiert.com/de/publications/indices/html-elements/" target="_blank" rel="noopener">http://meiert.com/de/publications/indices/html-elements/</a></span><!-- footnote -->
stellte ursprünglich eine einfache Syntax zur Formatierung
von Dokumenten im Web bereit. Während es anfangs nur sehr primitive
Auszeichnungselemente gab (Überschriften, Fettungen, Tabellen), sorgten
viele Entwickler-Gremien
schnell und leider auch unübersichtlich für Erweiterungen.
Parallel zu HTML wurde XML
(<em>Extensible Markup Language</em>) als universelles Dateiformat
entwickelt, um
beliebige maschinen- und menschenlesbare Inhalte darzustellen. Im
Gegensatz zu Binärformaten lassen sich für XML plattformübergreifend Schnittstellen
bereitstellen und standardisiert eigene Unterformate für alle
erdenklichen Einsatzzwecke erfinden.</p>

<p>Auch HTML wurde mittels XHTML-Standard mit der XML-Syntax aufgefrischt und
konsolidiert. Strenge Regeln sorgen nun dafür, dass sich HTML-Dokumente von
vielerlei Programmen interpretieren und "validieren" (also auf syntaktische
Korrektheit prüfen) lassen. In der Theorie ermöglicht dies weitgehende
Abstraktion von Layout und Inhalt. Der besseren Interpretation durch Software
wegen konnte das CSS-Format (<em>Cascading Style Sheets</em>) seinen Siegeszug
antreten. CSS-Dateien lassen sich auf Elemente in XHTML-Dokumenten anwenden und
legen so die Formatierung der strukturellen Elemente eines Dokuments fest.</p>

<p>Auch wenn viele Webseiten heute noch nicht mit gültigem XHTML entwickelt werden
und es Bemühungen gibt, die "dumme Einfachheit" von HTML mit laxeren Prüfungen
wieder aufleben zu lassen, ist ein Vorteil von XHTML unumstritten:
Weiterverwendbarkeit.</p>

<p>Inzwischen sind wir bei dem universalen HTML 5 [*]
<span class="footnote"><i class="fa fa-info-circle"></i> <a href="https://www.w3.org/TR/html5/" target="_blank" rel="noopener">https://www.w3.org/TR/html5/</a></span><!-- footnote -->
und gar HTML 5.1 [*]
<span class="footnote"><i class="fa fa-info-circle"></i> <a href="https://w3c.github.io/html/" target="_blank" rel="noopener">https://w3c.github.io/html/</a></span><!-- footnote -->
gelandet.</p>

</section><!-- section.sub end -->

<section id="U142" class="sub">
<span class="u-toc">1.4.2 - Browser</span>

<h3 class="subsection" id="browser">Browser</h3>

<p class="tagging invisible">
<span class="tag-box invisible">
    <span class="inline-tag">Webbrowser</span>
</span>
</p>

<p>Ein Browser ist eine Software auf Ihrem Computer, mit der Sie Internetadressen
aufrufen und ansehen können. Bekannte Browser sind der <em>Microsoft Internet
Explorer</em>, <em>Mozilla Firefox</em>, <em>Google Chrome</em> oder auch <em>Apple Safari</em>. Der Begriff
"Browser" steht dabei für das "Stöbern" (neudeutsch "Surfen") im Internet,
denn erst durch diese Software wird aus einem speziell formatierten HTML-Dokument
etwas, das ein Besucher am Bildschirm wirklich ansehen und benutzen kann.</p>

<p>Die am Markt verfügbaren Browser unterscheiden sich in Merkmalen wie Sicherheit,
Geschwindigkeit, Funktionsumfang und auch Darstellungsqualität. Obwohl HTML und
CSS festgelegte Standards sind, weicht jeder Browser bei deren Interpretation
doch geringfügig ab, daher stellen verschiedene Browser ein und dieselbe Webseite
möglicherweise unterschiedlich dar.</p>

</section><!-- section.sub end -->

<section id="U143" class="sub">
<span class="u-toc">1.4.3 - Client, Server</span>

<h3 class="subsection" id="client-server">Client, Server</h3>

<p class="tagging invisible">
<span class="tag-box invisible">
    <span class="inline-tag">Client</span>
    <span class="inline-tag">Server</span>
</span>
<span class="label invisible" id="Client-Server">Client-Server</span>
</p>

<p>Bei der Kommunikation im Internet sind Millionen von Computern miteinander
vernetzt. Beim Abrufen von Daten aus dem Internet über Ihren Browser verbindet
sich Ihr Computer mit einem fremden Computer, auf dem diese Daten liegen.</p>

<p>Ihr Computer stellt dabei einen <em>Client</em> dar, also den
<em>Empfänger</em>. Der Rechner, der Daten ausliefert, dient dabei als
<em>Server</em>, also als <em>Absender</em>.
Bei Nutzung fast jedes Internet-Protokolls spielen für die Kommunikation
zwei Datenkategorien eine Rolle:
das, was ein Client sendet und empfängt, und
das, was ein Server sendet, empfängt und verarbeitet.</p>

</section><!-- section.sub end -->

<section id="U144" class="sub">
<span class="u-toc">1.4.4 - RSS, Feeds, Syndication und Aggregation</span>

<h3 class="subsection" id="rss-feeds-syndication-und-aggregation">RSS, Feeds, Syndication und Aggregation</h3>

<p class="tagging invisible">
<span class="label invisible" id="RSS">RSS</span>
<span class="tag-box invisible">
    <span class="inline-tag">RSS</span>
</span>
</p>

<p>RSS ist die Abkürzung für <em>Rich Site Summary</em> oder auch <em>Really Simple
Syndication</em> und der Name eines Datenformats, das gemeinsam mit den Blogs die
Web-Welt verändert hat.</p>

<p>Eine Datei im RSS-Format ist grundsätzlich erst einmal nur eine XML-Datei, die
einen speziellen Satz von Elementen enthält. Diese legen die Eigenschaften von
Blog-Artikeln, wie Titel, Inhalt oder Hyperlinks, fest.</p>

<p>Eine RSS-Datei stellt eine Art Newsticker dar, der meistens die chronologisch neuesten
Änderungen an News-Artikeln oder
Blog-Einträgen aufführt. Solche Dateien werden
kontinuierlich (meist automatisch) aktualisiert und auch
<span class="tag-box invisible">
    <span class="inline-tag">Feeds</span>
</span>
als <em>Feed</em> bezeichnet. Dafür ausgelegte Software kann eine solche
maschinenlesbare RSS-Datei weiterverarbeiten und mit dem Inhalt
<span class="tag-box invisible">
    <span class="inline-tag">Syndication</span>
    <span class="inline-tag">Aggregation</span>
</span>
anderer Webseiten zusammenführen (hier seien die Schlagworte
<em>Aggregation</em> und <em>Syndication</em> genannt).</p>

<p>
<span class="tag-box invisible">
    <span class="inline-tag">RSS-Reader</span>
</span>
RSS-Reader-Programme ermöglichen es
Internet-Nutzern, die RSS-Dateien von Webseiten ähnlich wie mit einem E-Mail-Programm regelmäßig
zu überprüfen, und informieren so leicht und übersichtlich
über Änderungen.</p>

<p>Manche RSS-Dateien liefern den Inhalt eines neuen
Artikels mit, so dass der Nutzer ihn sich unabhängig von der Webseite
ansehen kann. Diese Einbindungsweise fokussiert auf den eigentlichen Inhalt von
Webseiten, da sie es erlaubt, Inhalte beinahe
darstellungsneutral zu beziehen.</p>

<p>Unterschiedliche Gremien haben zahlreiche RSS-Versionen
erarbeitet, teilweise inkompatibel zueinander und mit jeweils
anderen Attributen. Das verbreitetste RSS-Format ist Version
2.0. Serendipity unterstützt auch RSS 0.9, 0.91 und 1.0.
Diese gelten heutzutage aber als veraltet.</p>

</section><!-- section.sub end -->

<section id="U145" class="sub">
<span class="u-toc">1.4.5 - Webservices, Web 2.0, Social Web</span>

<h3 class="subsection" id="webservices-web-2-0-social-web">Webservices, Web 2.0, Social Web</h3>

<p class="tagging invisible">
<span class="label invisible" id="Webservices">Webservices</span>
<span class="tag-box invisible">
    <span class="inline-tag">Webservices</span>
    <span class="inline-tag">Web 2.0</span>
    <span class="inline-tag">Social Web</span>
</span>
</p>

<p>In dem Maße, wie Webserver in
Skriptsprachen wie PHP und Perl geschriebene Anwendungen zu interpretieren
lernten, wurde es immer einfacher und
interessanter, verschiedene Komponenten miteinander zu verbinden.
Dynamische Software eröffnete ganz neue Möglichkeiten,
Besuchern einer Webseite Zusatzdienste, sogenannte Webservices, zu
präsentieren. Als Beispiel seien
die Anzeige von neuen Terminen, die Darstellung von
Wetterdaten, spezielle passwortgeschützte Bereiche oder auch die
Darstellung von Bookmarks genannt.</p>

<p>Auf zahlreichen Webseiten kann man oft kostenlos Community-Dienste
in Anspruch nehmen, die sich mittels Webservices an die eigene Webseite
anbinden lassen - sei es die Liste aktueller Fotos von der eigenen
Flickr-Fotoseite, die Darstellung der Lieblingslinks, des aktuellen
Wetters zuhause oder auch die Einbindung fremder Werbung. Derartige Services
bezeichnet man auch als <em>Social Web</em>, da ein Gedankenaustausch in einer gemeinsamen Community stattfindet.</p>

<p>Der Begriff <em>Web 2.0</em> steht gesamtheitlich für die Wandlung des ehemals
statischen <em>Web 1.0</em> hin zu einer Web-Welt mit verflochtenen Diensten
und großen Interaktionsmöglichkeiten unter Einbeziehung der Web-Nutzer.</p>

</section><!-- section.sub end -->

<section id="U146" class="sub">
<span class="u-toc">1.4.6 - XML-RPC, SOAP, REST</span>

<h3 class="subsection" id="xml-rpc-soap-rest">XML-RPC, SOAP, REST</h3>

<p>Damit ein Webservice angesprochen werden kann, benötigt man eine gemeinsame
Schnittstelle zwischen Empfänger (Client) und Absender (Server).
Eine solche lässt sich mittels verschiedener Techniken anbieten.</p>

<p class="tagging invisible">
<span class="tag-box invisible">
    <span class="inline-tag">XML-RPC</span>
</span>
</p>

<p>Die im PHP-Umfeld verbreitetste Schnittstelle nennt sich XML-RPC.
RPC steht hierbei für <em>Remote Procedure Call</em>, also der Aufruf
einer Funktion durch ein fremdes Programm. Zur Datenübergabe und -annahme
wird hierbei XML verwendet. Der Server erhält eine XML-Datei mit
speziellen Anforderungen. Die ausführende
Server-Software interpretiert diese, wertet sie aus und schickt das Ergebnis wieder im
XML-Format zurück an den Client.</p>

<p class="tagging invisible">
<span class="tag-box invisible">
    <span class="inline-tag">SOAP</span>
</span>
</p>

<p>Eine dazu konkurrierende Schnittstelle nennt sich SOAP (<em>Simple
Object Access Protocol</em>). Auch SOAP arbeitet mit XML-Datensätzen, hat
aber eine wesentlich komplexere Datenarchitektur und wird aufgrund dieses
Overheads im Web eher selten eingesetzt.</p>

<p class="tagging invisible">
<span class="tag-box invisible">
    <span class="inline-tag">REST</span>
</span>
</p>

<p>Als dritte bekannte Schnittstelle bietet sich REST an:
<em>Representational State Transfer</em>. Diese simpelste der
Schnittstellen führt Abfragen anhand einfacher URL-Parameter durch und
gibt üblicherweise auch einfach zu interpretierende XML-Daten zurück.</p>

<p>XML-RPC ist für die Weblog-Welt insofern interessant, als sie es erlaubt, Inhalte
neutral von der verwendeten Blogsoftware zu erfassen. Die meisten Blogsysteme
binden eine gemeinsame XML-RPC-Schnittstelle ein, die das Erstellen und
Bearbeiten von Artikeln mittels "Fernsteuerung" ermöglicht. Dadurch kann ein
Benutzer seine Artikel mit ganz normaler Desktop-Software wie zB. ecto,
marsEdit, WindowsLive Writer oder sogar Microsoft Word schreiben, anstatt
sie in der Web-Oberfläche seiner Blogsoftware zu verfassen. Gerade für Benutzer,
die sich nicht mit neuer Schreib-Software auseinandersetzen wollen, ist diese
Variante sehr interessant.</p>

</section><!-- section.sub end -->

<section id="U147" class="sub">
<span class="u-toc">1.4.7 - Atom</span>

<h3 class="subsection" id="atom">Atom</h3>

<p>Um die verschiedenen Varianten von RSS wieder zueinanderzuführen,
entwickelte das W3C-Gremium einen Standard namens Atom. In einem
vollständig gültigen XML-Format deckt es alle Fähigkeiten von RSS ab,
wird aber aufgrund der höheren Komplexität heute immer noch als
Konkurrenz zu RSS 2.0 angesehen.</p>

<p>Der Begriff Atom steht nicht nur für ein
Dateiformat, sondern auch für eine Implementation der XML-RPC- oder
SOAP-Protokollschnittstelle, die es erlaubt, entsprechend ausgerüstete Weblog-Software fernzusteuern.</p>

</section><!-- section.sub end -->

<section id="U148" class="sub">
<span class="u-toc">1.4.8 - Trackback und Pingback</span>

<h3 class="subsection" id="trackback-und-pingback">Trackback und Pingback</h3>

<p>Da Blogs letztlich Sprachrohre von Individuen darstellen, ist es für
einen Blog-Betreiber meist sehr wichtig, sein Blog mit anderen zu
vernetzen. Ganz im Sinne des interaktiven Webs bestand ein wichtiger
Gedanke bei der Erfindung des Blogs darin, Beiträge eines Autoren auf dessen
Seite kommentieren zu können und so in Dialog zu treten.</p>

<p>Leser von Blogs sind häufig selber Blogbetreiber und möchten
-- gerade bei abweichender Meinung - eine Diskussion gern auf der eigenen Seite
weiterführen, ohne dabei die Verbindung mit dem Initiator zu verlieren.
<span class="tag-box invisible">
    <span class="inline-tag">Trackbacks</span>
</span>
Hierfür wurde die Technik der <em>Trackbacks</em> erfunden, die es einem Autor erlaubt,
seinen Artikel mit einem anderen zu verketten. Die
Besonderheit dabei: Die fremde Webseite wird davon automatisch in
Kenntnis gesetzt. Somit befindet sich nicht nur auf der eigenen Seite ein Link
auf den Quellartikel, sondern es gibt auch einen, der vom
Quellartikel auf die eigene Seite zeigt. Wie das bei Serendipity
funktioniert, behandelt Kapitel <span class="reference">trackback</span> ab Seite <span class="pageref"><a href="#trackback">trackback</a></span>.</p>

<p>
<span class="tag-box invisible">
    <span class="inline-tag">Pingback</span>
</span>
Ein <em>Pingback</em> ist eine abgeschwächte Form des Trackbacks. Der
Initiator kann auf diese Weise den Ursprungsautor darauf
hinweisen, dass er sich auf ihn bezogen hat. Dabei wird auf dessen Blog kein
(ausführlicher) Verweis für andere Besucher erzeugt.</p>

</section><!-- section.sub end -->

<section id="U149" class="sub">
<span class="u-toc">1.4.9 - API und Plugin</span>

<h3 class="subsection" id="api-und-plugin">API und Plugin</h3>

<p class="tagging invisible">
<span class="label invisible" id="API">API</span>
<span class="tag-box invisible">
    <span class="inline-tag">API</span>
</span>
</p>

<p>Eine API (<em>Application Programming Interface</em>) stellt ein
Software-Regelwerk (meist eine konkrete Liste an Funktionen oder
Klassen) zur Verfügung, an das man sich als Programmierer halten kann,
um auf gewisse Funktionen einer Software zuzugreifen. Bei Serendipity
benötigt man ein solches Regelwerk vor allem für Erweiterungen mit
eigenen Plugins oder den Zugriff von fremder Software.</p>

<p>Serendipity bietet eine funktionsorientierte Kern-API zur Verwaltung von Artikeln
und Datenbankabfragen. Weiterhin gibt es eine spezielle, objektorientierte
Plugin-API, die alle notwendigen Methoden abdeckt, die man als Entwickler eigener
Plugins benötigt.</p>

<p>
<span class="tag-box invisible">
    <span class="inline-tag">Plugins</span>
</span>
Ein <em>Plugin</em> ist Software, die sich nahtlos in ein
Hauptprogramm einbindet (<em>to plug</em> bedeutet <em>einstöpseln</em>). Es
hat Vorteile, gewisse Funktionalitäten in Plugins bzw.
Programmmodule auszulagern. Dadurch hält man zum einen die Kernsoftware
schlank, zum anderen kann man losgelöst von der Kernsoftware
Aktualisierungen durchführen und Funktionalitäten erweitern. Ein Benutzer
hält sein System schlank und performant, indem er nur die
Plugins installiert, die er für seine Anwendungsfälle nutzt.
Auch bei Webservices gibt es zahlreiche APIs, die den Verkehr
zwischen Client und Server jeweils strukturieren.</p>

</section><!-- section.sub end -->

<section id="U1410" class="sub">
<span class="u-toc">1.4.10 - Mashup</span>

<h3 class="subsection" id="mashup">Mashup</h3>

<p>Der Begriff <em>Mashup</em> bezeichnet die Verkettung mehrerer Webservices. Dank
der Offenheit vieler APIs lassen sich die abgefragten Daten beliebig
miteinander kombinieren, zB. die Wetterdaten eines mittels Google Maps
dargestellten Orts anzeigen.
Oder man bindet auf der Karte die Bilder ein, die Flickr-Benutzer zu
diesen Geo-Koordinaten eingestellt haben. Die Verknüpfungsmöglichkeiten sind
oft nur durch Ihre Phantasie begrenzt.</p>

</section><!-- section.sub end -->

<section id="U1411" class="sub">
<span class="u-toc">1.4.11 - Usability, Barrierefreiheit, Accessibility</span>

<h3 class="subsection" id="usability-barrierefreiheit-accessibility">Usability, Barrierefreiheit, Accessibility</h3>

<p><em>Usability</em> ist ein Forschungsfeld, das sich
damit beschäftigt, wie man zB. eine Webseite am besten <em>bedienen</em> kann.
Es beschäftigt sich ua. mit der konzeptionellen Struktur einer Seite, dem Aufbau der
Navigation, der Gliederung der Inhalte und auch der Einbindung von
Formularen, Suchen und anderen interaktiven
Elementen.</p>

<p>Da sich eine Webseite häufig stark von einer normalen Software auf dem
Computer unterscheidet, lassen sich Software-Usability-Weisheiten nicht
einfach auf Webseiten übertragen. Wie man dennoch zielgerichtet auf
Benutzer eingeht und deren Erwartungen erfüllt, ist Aufgabe
der Web-Usability.</p>

<p class="tagging invisible">
<span class="tag-box invisible">
    <span class="inline-tag">Barrierefreiheit</span>
    <span class="inline-tag">Accessibility|see{Barrierefreiheit}</span>
</span>
</p>

<p>Eine Teilmenge des Oberbegriffs Usability ist die Barrierefreiheit
(englisch <em>Accessibility</em>). Diese beschreibt Techniken und
Maßnahmen, die auch behinderten Personen die
Benutzung einer Webseite ermöglichen. Darunter zählen Dinge wie eine
geschickte Farbwahl, sinnvolle Kontraste, aber auch der gezielte Einsatz
von Bildern nur an Stellen, wo sie nötig sind.</p>

<p class="tagging invisible">
<span class="tag-box invisible">
    <span class="inline-tag">XHTML!und Barrierefreiheit</span>
</span>
</p>

<p>XHTML erlaubt zudem die
Trennung von Layout und Inhalt, die man der Barrierefreiheit zuliebe
stets beachten sollte. Gültiger, valider Quellcode ist
Voraussetzung dafür, dass jeder Browser (und damit jeder Besucher) Ihre
Webseite problemlos bedienen kann. Denken Sie auch an blinde Menschen,
die die Inhalte Ihrer Seite vorgelesen bekommen müssen: Wenn Sie die
Navigation nicht speziell hervorheben, kann es sein, dass dem Benutzer
diese beim Vorlesen vorenthalten wird.</p>

<p>Serendipity Standard-Templates versuchen so barrierefrei wie
möglich zu sein und bei der Usability auf klare Strukturen zu achten.
Erfahrungsgemäß ist dies bei einem Open-Source-Projekt recht schwer, da
meist nur Programmierer und erfahrene Benutzer am Werk sind, die keinen
Wert auf einfache Zugänglichkeit legen. Serendipity hat hier im Laufe der
letzten Jahre sehr stark zugelegt und ist daher für eine barrierefreie
Zukunft bestens gerüstet. Wie Sie diese in Ihrem Blog letztlich selber
umsetzen, wird ab Seite <span class="pageref"><a href="#Anpassungen">Anpassungen</a></span> ausführlich
besprochen.</p>

</section><!-- section.sub end -->

<section id="U1412" class="sub">
<span class="u-toc">1.4.12 - BBCode, Textile, Markup und Textformatierung</span>

<h3 class="subsection" id="bbcode-textile-markup-und-textformatierung">BBCode, Textile, Markup und Textformatierung</h3>

<p class="tagging invisible">
<span class="tag-box invisible">
    <span class="inline-tag">Markup</span>
    <span class="inline-tag">Textformatierung</span>
</span>
</p>

<p>Üblicherweise werden Blog-Artikel in HTML-Syntax formatiert. Da HTML
jedoch gerade für Anfänger nicht ganz trivial ist, gibt es mehrere
Standards, die das Ziel einfacher Textformatierung verfolgen. Solche
Standards, darunter
<span class="tag-box invisible">
    <span class="inline-tag">BBCode</span>
</span>
BBCode [*]
<span class="footnote"><i class="fa fa-info-circle"></i> <a href="http://www.phpbb.com/community/faq.php?mode=bbcode" target="_blank" rel="noopener">http://www.phpbb.com/community/faq.php?mode=bbcode</a></span><!-- footnote -->
<span class="tag-box invisible">
    <span class="inline-tag">Textile</span>
</span>
oder Textile [*]
<span class="footnote"><i class="fa fa-info-circle"></i> <a href="http://txstyle.org/" target="_blank" rel="noopener">http://txstyle.org/</a></span><!-- footnote --> bieten
<span class="tag-box invisible">
    <span class="inline-tag">Tags</span>
</span>
eigene <em>Tags</em> (also Formatierungsmarker) an, die ein System wie
Serendipity später in
HTML-Format konvertiert.</p>

<p>BBCode basiert auf in Foren üblichen Markierungen:
<span class="tag-box invisible">
    <span class="inline-tag">Fettung!in BBCode</span>
    <span class="inline-tag">Textformatierung!fett|see{Fettung}</span>
    <span class="inline-tag">Formatierung!fett|see{Fettung}</span>
</span>
<code>[b]text[/b]</code> formatiert zB. das Wort <code>text</code> fett. Alle Tags
werden in eckigen Klammern geschrieben;
Vereinfachungen wie <code>[URL=http://www.google.com]Google[/url]</code>
<span class="tag-box invisible">
    <span class="inline-tag">Links!in BBCode</span>
</span>
erlauben es, relativ einfach Links zu setzen.</p>

<p>Serendipity bietet für alle bekannteren Markups Plugins an, so dass auch
Kommentatoren zu einem Blog-Eintrag auf diese Syntax zugreifen können.
<span class="tag-box invisible">
    <span class="inline-tag">Kommentare!Formatierung</span>
</span>
Die direkte Eingabe von HTML ist bei Kommentaren nicht möglich, daher
stellen solche Plugins die einzige Möglichkeit der Formatierung dar.</p>

</section><!-- section.sub end -->

<section id="U1413" class="sub">
<span class="u-toc">1.4.13 - WYSIWYG</span>
<span class="label invisible" id="WYSIWYG">WYSIWYG</span>
<span class="tag-box invisible">
    <span class="inline-tag">CKEditor</span>
    <span class="inline-tag">WYSIWYG-Editor</span>
    <span class="inline-tag">Rich-Text-Editor</span>
    <span class="inline-tag">Plain-Text-Editor</span>
    <span class="inline-tag">JS-Editor</span>
</span>

<h3 class="subsection" id="wysiwyg-1">WYSIWYG</h3>

<p>Eine weitere Möglichkeit, die Redakteuren die Eingabe von Text
erleichtert, ist der sogenannte WYSIWYG-Modus: <em>What You See Is What You Get</em>.
<span class="tag-box invisible">
    <span class="inline-tag">JavaScript</span>
</span>
JavaScript-Module erstellen im Webbrowser ein Texteingabefeld. Dieses enthält
Formatierungsbuttons ähnlich wie bei OpenOffice bzw. Microsoft Word, die es erlauben,
die Farbe oder den Schriftstil zu ändern, per Drag&amp;Drop Texte und eingebundene
Bilder zu verschieben oder Tabellen einzufügen.</p>

<p>Im Folgenden wird also zwischen dem <strong>PLAIN TEXT</strong> Editor, also dem einfachen Textfeld
mit oder ohne BB-Code artige Formatierungshilfen, und dem <strong>Rich Text</strong> Format (WYSIWYG-Modus)
unterschieden.</p>

<p>Artikel die mit dem PLAIN TEXT Editor erstellt und gespeichert wurden, werden zur Laufzeit
des Abrufes in HTML umgewandelt. Dazu dienen verschiedenste Plugins. Benutzen Sie die
fortschrittlicheren markdown oder textile Formatierungen, geschieht das gleiche.
Auch diese wandeln als vereinfachte Auszeichnungssprachen bestimmte Formatierungshilfen
in HTML zur Ausgabe um.</p>

<p>Das Rich Text Editor Format (WYSIWYG-Modus) speichert derweil gleich das komplette HTML fertig
zur Ausgabe. Dies ist insbesondere wichtig zu wissen, damit man sein System konsistent halten kann.</p>

<p>Wenn Sie allerdings um die Tücken wissen, macht es nichts aus ein altes Blog von beispielsweise
markdown auf den CKEditor umzustellen. Es ist heutzutage einfach das zu präferierende Format.</p>

<p class="text">Serendipity wird standardmäßig mit dem WYSIWYG-Editor <em>CKEditor</em> [*]
<span class="footnote"><i class="fa fa-info-circle"></i>
<a href="https://ckeditor.com/" target="_blank" rel="noopener">https://ckeditor.com/</a></span><!-- footnote --> ausgeliefert.
Dieser Editor läuft problemlos mit allen aktuellen Browsern (Chrome,
Firefox, Internet Explorer, Firefox, Safari, etc) und wird professionell
und aktiv weiterentwickelt. Er hat sich mittlerweile zum quasi-Standard
der HTML Editoren am Markt entwickelt. In Serendipity ist er als Core-BASIC-Editor
im <code class="dir">/templates/_assets</code> Ordner angesiedelt.
Außerdem existiert noch das <code>CKEditor Plus</code>-Plugin,
das immer die neueste Version mit leichter Zeitverzögerung mitbringt und per Plugin Konfiguration sehr leicht
verschiedenste Ausbaustufen de Editors zulässt. Im Grunde ist es damit unnötig geworden
irgendein anderes <em>WYSIWYG</em>-Editor-Plugin wie TinyMCE einzusetzen, wenn nicht absolut
wichtige persönliche Präferenzen dafür sprechen.
(Siehe <span class="pageref"><a href="#wysiwyg">WYSIWYG</a></span>)</p>

</section><!-- section.sub end -->

<section id="U1414" class="sub">
<span class="u-toc">1.4.14 - Widgets, Nuggets, Blogroll</span>

<h3 class="subsection" id="widgets-nuggets-blogroll">Widgets, Nuggets, Blogroll</h3>

<p class="tagging invisible">
<span class="tag-box invisible">
    <span class="inline-tag">Widget</span>
    <span class="inline-tag">Nugget</span>
    <span class="inline-tag">Klötze</span>
</span>
</p>

<p>Viele Webservices erlauben es, ihre Dienste mit einem
einfachen Code-Schnipsel auf der eigenen Seite einzubinden. Beliebte
Beispiele dafür sind zB. Google AdSense, das aktuelle Wetter, die
letzten Flickr-Bilder und vieles mehr. Solche eingebundenen Schnipsel
bezeichnet man als <em>Widgets</em> oder <em>Nuggets/Klötze</em>. Diese lassen sich
bei Serendipity leicht in das eigene Blog einbauen.</p>

<p>
<span class="tag-box invisible">
    <span class="inline-tag">Blogroll</span>
</span>
Ein Beispiel für ein Widget ist die sogenannte <em>Blogroll</em>. Dies ist
letztlich nichts anderes als eine Liste von Blogs, die man persönlich
liest oder als empfehlenswert betrachtet. Sie erlaubt es zB.,
den eigenen Freundeskreis virtuell zu präsentieren.
Durch Blogrolls werden die Leser eines Blogs auch auf thematisch ähnliche oder
sozial verbundene Blogs aufmerksam. Kein unwichtiges Feature, wenn man
bedenkt, dass sich die Popularität
häufig verlinkter Blogs in Suchmaschinen steigert.</p>

</section><!-- section.sub end -->

</section><!-- section.index end -->

<section id="S150" class="index">
<span class="s-toc">1.5 - Templates, Themes und Styles</span>

<h3 class="section" id="templates-themes-und-styles">Templates, Themes und Styles</h3>

<p class="tagging invisible">
<span class="label invisible" id="theme">theme</span>
<span class="tag-box invisible">
    <span class="inline-tag">Template-S@Templates</span>
    <span class="inline-tag">Themes</span>
    <span class="inline-tag">Styles</span>
    <span class="inline-tag">Layout</span>
</span>
</p>

<p>Alles, was der Besucher eines Blogs sieht, entspringt einem
zentralen Layout. Die Begriffe <em>Template</em>, <em>Theme</em>, <em>Style</em>
und <em>Layout</em> sind im Kontext von Serendipity grundsätzlich synonym und
bezeichnen lediglich eine Ansammlung von Dateien, die später in HTML-Code
und Design übersetzt werden.
Der HTML-Code eines Templates enthält Platzhalter (sogenannte
<span class="tag-box invisible">
    <span class="inline-tag">Platzhalter|see{Smarty, Variablen}</span>
    <span class="inline-tag">Smarty!Variablen</span>
</span>
Smarty-Variablen), an deren Stelle später der Artikeltitel, -text oder
andere dynamische Inhalte erscheinen.</p>

</section><!-- section.index end -->

<section id="S160" class="index">
<span class="s-toc">1.6 - Spam, Bots, Captcha</span>

<h3 class="section" id="spam-bots-captcha">Spam, Bots, Captcha</h3>

<p class="tagging invisible">
<span class="tag-box invisible">
    <span class="inline-tag">Spam</span>
    <span class="inline-tag">Bots</span>
</span>
</p>

<p>Mit zunehmendem kommerziellen Gewicht des Internets ist es attraktiv, für
Webseiten auf so vielen Partnerseiten wie möglich zu werben. Sobald der
"Partner" aber mit Werbung bombardiert wird oder diese unfreiwillig
zB. in Form von Gästebucheinträgen und Kommentaren zu redaktionellen
Inhalten erhält, spricht man gemeinhin von <em>Spam</em>. Dabei helfen
automatisierte Systeme (<em>Bots</em>) den Spammern, ihre Werbung möglichst
vielfältig und schnell auf fremde Webseiten zu schleusen. Wie beim
Medium E-Mail, in dem mehr als zwei Drittel aller weltweit versandten E-Mails
unerwünschte Werbemails sind, geht man bei Foren und Weblogs davon
aus, dass eine ähnlich hohe Quote von Beiträgen aus automatisiertem (und teilweise
abgewehrtem) Spam besteht.</p>

<p>Software kann nur sehr schwer unterscheiden, ob der Textbeitrag
eines Besuchers "echt" ist oder von einem automatischen System stammt.
Aufgrund der Funktionsweise des Internets ist es nicht möglich
herauszufinden, ob ein Aufruf einer Webseite von einem Menschen oder von
einer Maschine stammt. Daher beschäftigen sich die meisten Techniken zur
Spamabwehr damit, diesen Unterschied herauszuarbeiten.</p>

<p>Schon in den Anfangszeiten der Informatik postulierte der Mathematiker Alan
Turing, wie sich Mensch und Maschine unterscheiden lassen:
Bei Turing-Tests setzt man Abfragetechniken ein, die die Interaktion eines
<span class="tag-box invisible">
    <span class="inline-tag">Turing-Test</span>
</span>
Menschen erfordern: Er soll logische Aufgaben lösen, Farben oder Bilder
analysieren etc. - alles Dinge, die eine Maschine nach heutigem
Forschungsstand nicht können sollte.</p>

<p><span class="label invisible" id="Captcha">Captcha</span>
<span class="tag-box invisible">
    <span class="inline-tag">Captchas</span>
</span>
Eine gebräuchliche Form dieses Tests nennt sich CAPTCHA (<em>Completely
Automated Public Turing Test to tell Computers and Humans Apart</em>).
Captchas nutzen Grafiken mit einer Zahlen- oder Buchstabenkombination, die
häufig noch dazu visuell verfremdet dargestellt wird. Der vor dem Rechner sitzende Mensch soll
diese identifizieren
und eingeben. Nur wenn die eingetippten Zeichen mit denen auf dem Bild
übereinstimmen, gilt eine Nachricht nicht als Spam.</p>

<p>Ein großes Problem dieser Grafiken ist der höhere Performancebedarf
sowie die Tatsache, dass sehbehinderte Menschen
bei der Entzifferung oft Probleme haben. Auch sind Bot-Entwickler nicht
untätig und haben mittels Schrifterkennung per OCR [*]
<span class="footnote"><i class="fa fa-info-circle"></i> <em>Optical
Character Recognition</em></span><!-- footnote --> große
Fortschritte gemacht, so dass sie geläufige Captchas doch automatisiert entziffern
können.</p>

</section><!-- section.index end -->

<section id="S170" class="index">
<span class="s-toc">1.7 - RDF, Semantic Web, Mikroformate</span>

<h3 class="section" id="rdf-semantic-web-mikroformate">RDF, Semantic Web, Mikroformate</h3>

<p class="tagging invisible">
<span class="tag-box invisible">
    <span class="inline-tag">RDF</span>
    <span class="inline-tag">Semantic Web</span>
</span>
</p>

<p>Schon heute lässt sich die Datenflut des Internets kaum bewältigen, noch
ist sie annähernd überschaubar. Volltextsuchmaschinen sind normalerweise
nicht in der Lage, die im Web publizierten
Texte anhand der üblichen grammatikalischen Syntax miteinander in Beziehung
zu bringen. Um
dieses Problem zu beseitigen, wurde die Initiative des <em>Semantic
Web</em> (Semantisches Internet) gegründet. Diese entwarf eine Syntax namens
RDF (<em>Resource Description Framework</em>) auf Basis der XML-Regeln.
RDF-Anweisungen lassen sich in XHTML-Daten einbetten und
repräsentieren <em>Metadaten</em> (etwa Bildunterschriften, thematische
Eingrenzungen, Querverbindungen ...) zu einem gegebenen Dokument.</p>

<p>Anhand der Metadaten können Suchroboter und andere Webservices Seiten leichter
analysieren und gewichten. Je mehr Metadaten verfügbar sind,
desto engmaschiger lassen sich alle Informationen des Internets
miteinander verknüpfen - und das nun auch nicht mehr nur einseitig.</p>

<p>Zum heutigen Zeitpunkt ist die Erfassung von Metadaten eine recht
aufwändige Sache und obliegt dem Redakteur eines Textes. Daher sind
brauchbare RDF-Metadaten noch recht wenig verbreitet und
<span class="tag-box invisible">
    <span class="inline-tag">Mikroformate</span>
</span>
beschränken sich auf sogenannte <em>Mikroformate</em>.
Darunter versteht man Abwandlungen des RDF-Standards oder einfacher:
XML-Attribute, die ein Dokument um spezialisierte Metadaten ergänzen,
zB. um Visitenkarten, Kalenderdaten oder Produktbewertungen.</p>

</section><!-- section.index end -->

<section id="S180" class="index">
<span class="s-toc">1.8 - Tagging</span>

<h3 class="section" id="tagging">Tagging</h3>

<p class="tagging invisible">
<span class="tag-box invisible">
    <span class="inline-tag">Tagging</span>
    <span class="inline-tag">Tagwolken@Tag-Wolken</span>
</span>
</p>

<p>Häufig handelt es sich bei Blogs um lose Artikelsammlungen, die der Autor mal mehr
und mal weniger miteinander in Bezug gesetzt hat. Klassischerweise
wurden Artikel thematisch ausschließlich festen Kategorien
zugeordnet. Damit stand der Redakteur vor dem Problem, sich bereits von
vornherein Gedanken über eine hierarchische Struktur seiner zukünftigen
Texte machen zu müssen.</p>

<p>Aus dieser Not heraus wurde das <em>Tagging</em> erfunden: Einem Artikel
lässt sich so dynamisch eine beliebige Menge an Stichwörtern zuordnen.
Mit deren Hilfe kann sich ein Benutzer zu Artikeln
weiterführen lassen, die dasselbe Stichwort tragen. Das geht zB. über
<em>Tagwolken</em>, also
Übersichten der meistgebrauchten Tags,
die häufig durch unterschiedliche Schriftgrößen gewichtet werden.</p>

<p>Gerade im Kontext von Foto-Providern wie Flickr ist Tagging sehr
sinnvoll. Ein Bild einer starren Hierarchie zuzuordnen bedeutete viel
Arbeit, ohne zwingend für mehr Übersicht zu sorgen.
Anhand der Stichwörter jedoch kann man zügig auch andere Bilder mit
ähnlichem Kontext auffinden, zB. weitere Fotos, die mit dem Begriff
"Hochzeit" verkettet sind.</p>

</section><!-- section.index end -->

<section id="S190" class="index">
<span class="s-toc">1.9 - Wiki</span>

<h3 class="section" id="wiki">Wiki</h3>

<p>Der Begriff <em>Wiki</em> steht für eine offene Webseite, auf der sich
Informationen von vielen Benutzern gleichzeitig zusammentragen lassen.
Mittels Versionierung und Protokollierung werden unterschiedliche Bearbeitungen
hervorgehoben und miteinander kombiniert.</p>

<p>Zum großen Erfolg der Wikis trug ihre einfache Syntax bei. Anstelle
komplizierter HTML-Regeln beschränken sich
Wiki-Anwendungen auf einfache Auszeichnungen (die je nach Software jedoch
variieren können). Beispielsweise lässt sich ein Wort durch Einschließen in
Sternchen <code>*</code> fetten.</p>

<p>Das zentrale Problem von Wikis ist der Vandalismus ihrer Benutzer --
die Freiheit in einer kollaborativen Umgebung können Einzelne
ausnutzen, indem sie destruktive Änderungen vornehmen, was zu hohem
Moderationsaufwand führt.
Gerade im Bereich des freien Wissensmanagements (Stichwort
<em>Wikipedia</em>) hat sich
eine solche Form der technisch lockeren Zusammenarbeit jedoch
bewährt.</p>

</section><!-- section.index end -->

<section id="S1.10.0" class="index">
<span class="s-toc">1.10 - AJAX</span>
<span class="label invisible" id="AJAX">AJAX</span>

<h3 class="section" id="ajax">AJAX</h3>

<p>Eine Technologiekomponente, die das Web 2.0 nachhaltig verändert hat,
wird unter dem Schlagwort AJAX (<em>Asynchronous Javascript and XML</em>)
geführt. Letztlich handelt es sich dabei
um eine einfache Form von JavaScript, die XML als Basis für Variablen
und Daten verwendet. Innerhalb des Browsers können in dieser Sprache geschriebene Skripte mit
Webservices kommunizieren und so Webseiten weiter dynamisieren. Setzte
früher jede Aktion auf einer Webseite das Ausfüllen und Absenden von Formularen
voraus, können nun auch Aktionen ausgeführt werden, ohne dass
der Benutzer merkt, dass neue Komponenten nachgeladen werden.</p>

<p>Dies bringt Web-Anwendungen den gewohnten Desktop-Anwendungen um einiges
näher, stellt jedoch auch höhere Anforderungen an Programmierer und
Clients und führt zu neuen Arten von Sicherheitslücken.</p>

</section><!-- section.index end -->

<section id="S1.11.0" class="index">
<span class="s-toc">1.11 - Pod- und Vodcast</span>

<h3 class="section" id="pod-und-vodcast">Pod- und Vodcast</h3>

<p class="tagging invisible">
<span class="tag-box invisible">
    <span class="inline-tag">Podcast</span>
    <span class="inline-tag">Vodcast</span>
</span>
</p>

<p>Dass Internet-Surfer über ständig höhere Bandbreiten verfügen, schafft den
wachsenden Bedarf an Multimedia-Inhalten. Webseiten (und damit auch Blogs)
lassen sich um Videos oder Audio-Dateien ergänzen, die im Browser
automatisch abgespielt werden. Da Videos und
Audio-Dateien auch in die RSS-Feeds der Blogs eingebunden werden können, die
MP3-Player wie Apples iPod automatisch importieren,
spricht man hier von <em>Podcast</em> (Audio) oder <em>Vodcast</em> (Video).</p>

</section><!-- section.index end -->

<section id="S1.12.0" class="index">
<span class="s-toc">1.12 - Moblogging</span>

<h3 class="section" id="moblogging">Moblogging</h3>

<p class="tagging invisible">
<span class="tag-box invisible">
    <span class="inline-tag">Moblog</span>
</span>
</p>

<p>Das mobile Bloggen via Handy oder PDA bezeichnet man als <em>Moblogging</em>.
Auf Reisen hat man meist keinen Zugriff auf einen normalen Webbrowser. Um
dennoch Inhalte in einem Blog publizieren zu können, gibt es die
Möglichkeit, eine E-Mail an das eigene Blog zu schicken, die
automatisch als Beitrag veröffentlicht wird. Auch gibt es inzwischen
mobile XML-RPC-Anwendungen, die über eine GPRS/UMTS-Verbindung direkt auf
das Blog zugreifen.</p>

</section><!-- section.index end -->

<section id="S1.13.0" class="index">
<span class="s-toc">1.13 - (Hyper-)Links, URLs und Permalinks</span>

<h3 class="section" id="hyper-links-urls-und-permalinks">(Hyper-)Links, URLs und Permalinks</h3>

<p class="tagging invisible">
<span class="tag-box invisible">
    <span class="inline-tag">Link</span>
    <span class="inline-tag">Hyperlink|see{Link}</span>
    <span class="inline-tag">Verknüpfung|see{Link}</span>
    <span class="inline-tag">Verweis|see{Link}</span>
</span>
</p>

<p>Ein <em>Hyperlink</em> (Kurzform: <em>Link</em>), umgangssprachlich auch <em>Verknüpfung</em> oder
<em>Verweis</em> genannt, gibt die Fundstelle eines Dokuments im Internet an
und erlaubt es so, verschiedene Dateien miteinander zu vernetzen.</p>

<p>Das Konzept ähnelt Querverweisen oder
Fußnoten bei einem Buch: Zeigt Ihnen Ihr Browser einen speziell markierten
Begriff in einer HTML-Seite, können Sie
durch dessen Anwahl zur referenzierten Internetseite springen. Erst durch
diese Verweise werden die Dateien unterschiedlicher Webserver miteinander
in Verbindung gesetzt und stellen dadurch das
ursprüngliche Kernkonzept der HTML-Auszeichnungssprache dar.</p>

<p>Den Begriff <em>Link</em> benutzt man oft als Synonym für den Fachbegriff
URL (<em>Uniform Resource Locator</em>).
<span class="label invisible" id="URL">URL</span> Was sich so kompliziert anhört, ist das, was Sie üblicherweise unter dem
<span class="tag-box invisible">
    <span class="inline-tag">Internetadresse|see{URL}</span>
    <span class="inline-tag">URL</span>
</span>
Namen <em>Internetadresse</em> bereits kennen. Diese beschreibt, auf welche
Art und Weise (das heißt: über welches Protokoll, siehe Seite
<span class="pageref"><a href="#Protokolle">Protokolle</a></span>) und von welchem Rechner sich das Dokument beziehen lässt
(<code>http://www.ebay.de</code>, <code>http://www.example.com</code>). Oft enthält sie
zudem Pfadangaben/Dateinamen wie in <code>http://www.s9y.org/12.html</code>.</p>

<p>Außer den URLs gibt es noch die URIs (<em>Uniform Resource</em>)
<span class="tag-box invisible">
    <span class="inline-tag">URI Identificators</span>
</span>
Deren Definition geht über die der URLs hinaus. Eine URI kann sogenannte
<em>URL-Variablen</em>
enthalten, die nicht Bestandteil einer URL sind. Sie werden
üblicherweise von einem <code>?</code>-Zeichen eingeleitet und sind mittels
<code>&amp;</code> voneinander getrennt. In vielen Fällen ist der Unterschied
zwischen URL und URI für Sie als Leser unerheblich, und oft wird von einer
URL gesprochen, wenn man fachlich eigentlich URI sagen
müsste. Als Merksatz gilt: Sobald an eine URL Variablen
angehängt sind, muss man von einer URI sprechen.</p>

<p><span class="label invisible" id="terminologie-permalinks">terminologie-permalinks</span>
<span class="tag-box invisible">
    <span class="inline-tag">Permalinks</span>
    <span class="inline-tag">Links!Perma-\textasciitilde|see{Permalinks}</span>
</span>
Ein Permalink ist eine spezielle URL, die den Inhalt eigentlich dynamischer
Webseiten permanent "eingefroren" zugänglich macht.
Bei deren Aufruf erhält
ein Besucher immer dieselbe Seite, egal, wann er sie aufruft. Obwohl sich
Übersichtsseiten aufgrund des chronologischen Bezugs bei jedem neuen
Blogeintrag ändern, erlaubt es ein Permalink,
Artikel eindeutig zu identifizieren und immer wieder aufrufen zu können.</p>

<p>Permalinks können in Serendipity nach Benutzervorgabe formatiert werden
und unterschiedliche Prä-/Postfixe aufweisen (siehe Seite
<span class="pageref"><a href="#Permalinks-Frontend">Permalinks-Frontend</a></span>).</p>

</section><!-- section.index end -->

<section id="S1.14.0" class="index">
<span class="s-toc">1.14 - Suchmaschinenoptimierung</span>

<h3 class="section" id="suchmaschinenoptimierung">Suchmaschinenoptimierung</h3>

<p class="tagging invisible">
<span class="tag-box invisible">
    <span class="inline-tag">SEO</span>
</span>
<span class="label invisible" id="SEO">SEO</span>
</p>

<p>Der Bereich der <em>Suchmaschinenoptimierung</em> (kurz SEO für <em>Search Engine
Optimization</em>) ist ein sehr weites Feld. Um Ihre Webseite möglichst weit oben in den
Suchergebnissen von Google und Co. erscheinen zu lassen (ihnen also ein
<span class="tag-box invisible">
    <span class="inline-tag">Ranking</span>
</span>
hohes <em>Ranking</em> zu verschaffen), gibt es einige
Tricks und Kniffe und vor allem auch Konzeptionelles zu beachten.</p>

<p>Webseiten werden heutzutage fast automatisch von allen Suchrobotern
gefunden. Jeder Link, der auf Ihre Seite führt, gibt dieser mehr
<span class="tag-box invisible">
    <span class="inline-tag">Page Rank</span>
</span>
Gewicht bei der Berechnung des <em>Page Rank</em> bei Google [*]
<span class="footnote"><i class="fa fa-info-circle"></i> Andere
Suchmaschinen wie Yahoo benutzen vergleichbare Algorithmen, die ähnlich wie die
Rezeptur eines schwarzen Zuckergetränkes als Firmengeheimnis gelten und
Grund vieler Spekulationen sind.</span><!-- footnote -->. Die Begriffe, die Sie auf
Ihren Unterseiten angeben, werden jeweils verschlagwortet und erscheinen in
Abhängigkeit von der Gewichtung
an oberer oder unterer Stelle in der Liste entsprechender Suchmaschinenergebnisse.</p>

<p>Serendipity kann Ihnen teilweise bei der Suchmaschinenoptimierung
helfen. Durch sprechende URLs (siehe Seite
<span class="pageref"><a href="#mod-rewrite">mod-rewrite</a></span>) lassen sich Artikeltitel mit in die URL aufnehmen,
was die Gewichtung erhöht. Die Verwendung korrekt
verschachtelter Überschriften innerhalb der HTML-Seite und eine gültige
HTLM-Syntax steigern die Effektivität eines Suchroboters. Weiterhin gibt
es Plugins, mit denen Sie Kreuzverkettungen zu ähnlichen Artikeln in Ihrem
<span class="tag-box invisible">
    <span class="inline-tag">Google Sitemap</span>
</span>
Blog erstellen können (siehe Seite <span class="pageref"><a href="#freetag">freetag</a></span>) oder auch eine spezielle
<em>Google-Sitemap</em>-Datei (siehe Seite <span class="pageref"><a href="#googlesitemap">googlesitemap</a></span>) anlegen.</p>

<p>Letzten Endes zählt aber auch die Strukturierung Ihrer Artikeltexte sehr
viel. Die Verteilung der (Schlüssel-)Wörter
ist ebenso wichtig wie die Benutzung von Wörtern, die Ihre Besucher
womöglich zu einem Thema erwarten. Nicht unwichtig kann der Aufbau
eines Partner-Netzwerks sein, da Verlinkungen auf Ihre Seite den
Page Rank erhöhen. Hier wird jedoch auch viel unseriöse
Geschäftemacherei betrieben. Hüten Sie sich also vor Tricks, die womöglich
ins Gegenteil umschlagen können.</p>

<p>Letztlich erhalten Sie gute Suchmaschinenergebnisse nur dann, wenn Sie
für Ihre Besucher interessante Texte oder Services anbieten. Alle
anderen technischen Kniffe nutzen Ihnen nichts, wenn die Besucher
herausfinden, dass Ihre Webseite nicht das hält, was sie durch eine
Suchmaschine verspricht.</p>

</section><!-- section.index end -->

<section id="S1.15.0" class="index">
<span class="s-toc">1.15 - Protokolle: HTTP, FTP, SSH</span>
<span class="label invisible" id="Protokolle">Protokolle</span>

<h3 class="section" id="protokolle-http-ftp-ssh">Protokolle: HTTP, FTP, SSH</h3>

<p class="tagging invisible">
<span class="tag-box invisible">
    <span class="inline-tag">Protokolle</span>
</span>
</p>

<p>Im Internet gibt es eine beinahe unendliche Zahl verschiedener
Protokolle, die Regeln
definieren, nach denen Rechner, Anwendungen und Server miteinander
kommunizieren. Im Zusammenhang mit Serendipity sind folgende
Protokolle von Belang:</p>

<ul class="realList">
    <li>
        <span class="tag-box invisible">
            <span class="inline-tag">HTTP</span>
            <span class="inline-tag">HTTPS</span>
        </span>
        <span class="label invisible" id="https">https</span>
        <span class="box">
            HTTP, das <em>Hypertext Transfer Protocol</em>,
            ist sicherlich das geläufigste, denn Sie
            verwenden es bei jedem Abruf einer Internetseite. Erkennbar ist dies
            daran, dass die meisten URLs, die Ihr Webbrowser anzeigt, ein vorgestelltes
            <code>http://</code> enthalten. Über dieses Protokoll überträgt der
            Webserver ein Dokument an den eigenen Computer, wobei der Webbrowser als
            Empfänger dient.
        </span>
        <span class="box">
            Die Sonderform <code>https</code> tritt auf, wenn ein Webserver eine sichere,
            verschlüsselte Verbindung zur Datenübertragung nutzt. Dabei kommt das
            Protokoll <code>SSL</code> (<code>Secure Socket Layer</code>) zum Einsatz, so dass die
            übertragenen Daten durch den Einsatz von Zertifikaten ausschließlich vom Server
            und vom Client entschlüsselt werden können. Bei <code>http</code> ist es grundsätzlich
            möglich, dass auch andere Benutzer oder Proxies die Übertragung
            belauschen können.
        </span>
    </li>

    <li>
        <span class="tag-box invisible">
            <span class="inline-tag">FTP</span>
        </span>
        <span class="box">
            Obwohl auch HTTP als Protokoll zum Dateitransfer dient und mittlerweile oft
            dafür eingesetzt wird, gibt es ein noch spezielleres (und älteres)
            Protokoll für den
            Dateiaustausch: das <em>File Transfer Protocol</em> FTP. Dieses Protokoll ermöglicht nicht nur den
            <span class="tag-box invisible">
                <span class="inline-tag">Download</span>
            </span>
            Empfang (<em>Download</em>), sondern auch ein Senden von Dateien
            <span class="tag-box invisible">
                <span class="inline-tag">Upload</span>
            </span>
            (<em>Upload</em>).
        </span>
    </li>

    <li>
        <span class="box">
            Im Gegensatz zu graphischen Betriebssystemen wie Windows kann Unix
            komplett mit textbasierten Befehlen gesteuert werden, was sich
            <span class="tag-box invisible">
                <span class="inline-tag">SSH</span>
                <span class="inline-tag">Secure Shell|see{SSH}</span>
            </span>
            gerade im Einsatz als Webserver als große Erleichterung herausgestellt
            hat. Das geht auch ferngesteuert übers Netz, am besten über einen
            abgesicherten SSH-Zugang.[*]
            <span class="footnote"><i class="fa fa-info-circle"></i> SSH steht für <em>Secure Shell</em>. Mit
            <em>Shell</em> bezeichnet man ein Programm, das die interaktive Steuerung
            über Textbefehle ermöglicht.</span><!-- footnote -->
        </span>
        <span class="box">
            Diese Zugriffsmöglichkeit auf einen Server bezeichnen viele Leute irrtümlicherweise auch
            <span class="tag-box invisible">
                <span class="inline-tag">root-Zugang</span>
            </span>
            als <code>root</code>-Zugang. Den hat man aber nur, wenn man über das Login
            (meist als User <code>root</code>) volle Zugriffsrechte für den Server bekommt.
            SSH-Zugang ist aber auch mit reduzierten
            Zugriffsrechten (als unprivilegierter Nutzer) möglich.
        </span>
        <span class="box">
            Web-Provider bieten selten SSH-Zugang an.
            Häufig steht ausschließlich FTP und HTTP zum Zugriff auf
            einen Server zur Verfügung. Die Bedienung einer SSH-Konsole setzt zudem
            einiges an Fachkenntnissen voraus, die wir in diesem Buch nicht
            vermitteln können. Dennoch wird an Stellen, wo SSH-Zugriff die Arbeit
            erleichtert, auf diesen eingegangen.
        </span>
    </li>
</ul>

</section><!-- section.index end -->

<section id="S1.16.0" class="index">
<span class="s-toc">1.16 - Frontend, Backend, Admin-Oberfläche</span>

<h3 class="section" id="frontend-backend-admin-oberfläche">Frontend, Backend, Admin-Oberfläche</h3>

<p class="tagging invisible">
<span class="tag-box invisible">
    <span class="inline-tag">Frontend</span>
    <span class="inline-tag">Backend</span>
</span>
</p>

<p>Bei vielen Web-Anwendungen unterscheidet man zwischen
<em>Frontend</em> und <em>Backend</em>. Vereinfacht ausgedrückt ist ein
Frontend all das, was der Besucher einer Webseite sieht. Als Backend oder
<em>Admin-Oberfläche</em>
bezeichnet man das, was ein Redakteur oder Administrator nach einem Login in
den geschützten Bereich sehen kann.</p>

<p>&nbsp;</p>

</section><!-- section.index end -->

<section id="S1.17.0" class="index">
<span class="s-toc">1.17 - Cookies und Sessions</span>

<h3 class="section" id="cookies-und-sessions">Cookies und Sessions</h3>

<p class="tagging invisible">
<span class="label invisible" id="sessioncookies">sessioncookies</span>
<span class="tag-box invisible">
    <span class="inline-tag">Session</span>
    <span class="inline-tag">Sitzung|see{Session}</span>
</span>
</p>

<p>Da HTTP ein <em>verbindungsloses</em> Protokoll ist, "vergisst" der
Webserver nach jedem Zugriff, was der Benutzer beim
vorigen Aufruf getan hat.
Das ist besonders bei dynamischen Web-Anwendungen ärgerlich, da man
sich normalerweise bei jeder Aktion erneut einloggen müsste. Als
rettenden Kniff gibt es
das Konzept der <em>Sessions</em> oder Sitzungen.</p>

<p>
<span class="tag-box invisible">
    <span class="inline-tag">Cookies</span>
</span>
<span class="label invisible" id="Cookie">Cookie</span> Webbrowser besitzen einen kleinen Datenspeicher. Dort kann ein Webserver
den Browser anweisen, eine kleine Datenmenge auf der eigenen Festplatte
zu speichern. Diesen kleinen Datensatz nennt man <em>Cookie</em>. Er
wird meistens dazu eingesetzt, einen Besucher eindeutig
zu identifizieren, so dass er autorisierte Aktionen
ausführen kann. Cookies haben einen schlechten Ruf erworben, da viele
Werbetreibende sie dazu benutz(t)en, ihre Werbe-Zielgruppe
eindeutig wiederzuerkennen und Statistiken über deren Nutzerverhalten zu
sammeln. Auch besteht oft die Angst, dass ein Webserver so auf die eigene
Festplatte zugreifen könnte.</p>

<p>Diese Furcht ist normalerweise unbegründet. Fast alle Browser ermöglichen
es Ihnen, Cookies nur von vertrauenswürdigen Quellen und nur
im Bedarfsfall anzunehmen oder abzuweisen. Serendipity
benötigt solche Cookies ebenfalls für das Frontend und das Backend, daher
muss der Webbrowser so eingestellt werden, dass er Cookies annimmt.</p>

<p>Um Nutzeraktionen als zusammengehörige Session zu
erkennen, speichert Serendipity eine einfache
<span class="tag-box invisible">
    <span class="inline-tag">Session-ID</span>
</span>
Zufallskombination aus Buchstaben und Zahlen, die <em>Session-ID</em>, als
Cookie im Browser des Besuchers.
Bei jedem Folgeaufruf überträgt dieser die ID zurück an den Server, der
damit den
Besucher identifizieren und zuvor gesetzte
<span class="tag-box invisible">
    <span class="inline-tag">Session-Daten@Sessiondaten</span>
</span>
Variablen (die <em>Sessiondaten</em>) wiederherstellen kann. Sessiondaten werden
auf dem Server gespeichert und nicht in Cookies, so dass der Nutzer sie
nicht beliebig verändern kann.</p>

<p>Eine Sitzung ist zeitlich begrenzt. Das heißt, dass nach einem gewissen
<em>Timeout</em> die Sessiondaten auf dem Server (automatisch) gelöscht
werden und keinen unnötigen Speicherplatz beanspruchen.</p>

</section><!-- section.index end -->

<section id="S1.18.0" class="index">
<span class="s-toc">1.18 - Parsen und Kompilieren</span>

<h3 class="section" id="parsen-und-kompilieren">Parsen und Kompilieren</h3>

<p class="tagging invisible">
<span class="tag-box invisible">
    <span class="inline-tag">Parsing</span>
    <span class="inline-tag">Kompilieren</span>
</span>
</p>

<p>Der englische Begriff <em>to parse</em> beschreibt das maschinelle, automatisierte
Auslesen einer Datei. Bei diesem Vorgang interpretiert ein <em>Parser</em> etwaige Platzhalter und
Instruktionen (Schleifen, Bedingungen ...).</p>

<p>Die Smarty-Templatedateien enthalten allesamt Anweisungen, die erst nach diesem
Vorgang des Parsens gültige HTML-Ausgaben enthalten.</p>

<p>Alternativ bezeichnet man diesen Vorgang auch als <em>Kompilierung</em> (von englisch: <em>to
compile</em>). PHP selbst stellt eine interpretierende
Skriptsprache dar, die erst nach der Interpretation der
PHP-Funktionen und -Anweisungen einen maschinenausführbaren Code zurückliefert.</p>

</section><!-- section.index end -->
