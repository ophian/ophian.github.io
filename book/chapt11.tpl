<h2 id="chapter-XI">Kapitel 11: Die Community / Helfen / Ausblick</h2>

<span class="label invisible" id="community">community</span>

<p>Wenn Sie an an diesem Punkt des Buches angelangt sind, sollten Sie eine Menge
über Serendipity gelernt haben.</p>

<p>Sicher wird dieses Buch nicht alle individuellen Fragen klären können.
Mit diesen Fragen sollen Sie sich nicht alleingelassen fühlen; Sie sind
herzlich eingeladen, der Serendipity-Styx-Community einen Besuch abzustatten. Am
leichtesten finden Sie uns über das Forum unter <code>https://github.com/ophian/styx/discussions</code>.</p>

<p>Das Grundprinzip einer funktionierenden Community ist, dass Sie nicht nur Fragen
stellen, sondern sich auch in andere Diskussionsstränge einbinden. Versuchen
Sie, mit Ihrem bereits angeeigneten Wissen anderen zu helfen - denn so, wie Sie
nach Hilfe suchen, tun dies auch andere.</p>

<p>Bevor Sie jedoch eine Frage im Forum stellen, sollten Sie Ihre
<em>Hausaufgaben</em> gemacht haben. Durchsuchen Sie erst das Forum und die
Serendipity-Webseite, ob Sie dort nicht schon eine Antwort auf Ihre Frage
finden. Ist dies nicht der Fall, sollten Sie Ihr Problem präzise schildern und
einen aussagekräftigen Betreff wählen. Versetzen Sie sich in die Lage der
Personen, die Ihnen helfen sollen - was würden Sie an Informationen benötigen?</p>

<p>Für die potenziellen Helfer ist meist Folgendes sehr wichtig: Welche
Serendipity-Version setzen Sie ein, wie lautet die URL Ihres Blogs, welchen Browser
verwenden Sie, was für einen Server (mit PHP- und Datenbankversion) und welche
Ereignis-Plugnis setzen Sie ein? Je detaillierter Ihre Auskunft, desto eher
können andere Hilfesuchende später Ihren Beitrag nachvollziehen und ihr eigenes
Problem lösen.</p>

<p>&nbsp;</p>

<section id="S11.1.0" class="index">
<span class="s-toc">11.1 - Neue Features</span>

<h3 class="section" id="neue-features">Neue Features</h3>

<p class="tagging invisible">
<span class="tag-box invisible">
    <span class="inline-tag">Features</span>
    <span class="inline-tag">Weiterentwicklung</span>
</span>
</p>

<p>Die Entwicklung von Serendipity läuft sehr transparent ab, Beiträge neuer
Entwickler werden gerne gesehen. Dabei ist es ganz egal, wobei Sie helfen wollen
-- Hauptsache, Sie haben Spaß daran und sind motiviert. Sie müssen also kein
PHP-Profi sein und können schon mit einfachen Dingen Serendipity verbessern:
Sie können anderen über das System erzählen, oder Sie helfen bei der Dokumentation
und dem Ausbau des Wiki auf <code>https://ophian.github.io/</code>. Auch Template-Entwickler
und Designer sind jederzeit sehr willkommen.</p>

<p>Folgende Features stehen auf der Wunschliste der Serendipity-Entwickler - wer
bei deren Verwirklichung helfen möchte, ist herzlich eingeladen:</p>

<article id="XU" class="subsub">

<header>
    <h4 class="subarticle" id="unit-tests">Unit Tests</h4>
</header>

<p>Mittels PHPUnit [*] <span class="footnote"><i class="fa fa-info-circle"></i>
<a href="https://www.phpunit.de/" target="_blank" rel="noopener">https://www.phpunit.de/</a></span><!-- footnote -->
können die einzelnen Methoden der Serendipity-Plugin-API und auch einzelne
Funktionen des Serendipity-Frameworks durch sogenannte Test-Cases auf
Funktionstüchtigkeit geprüft werden.</p>

<p>Test-Cases sollten dabei sämtliche gültigen und ungültigen Wertebereiche jeder
einzelnen Funktion beinhalten. Die Tests dienen in erster Linie dazu, dass
sich nicht unbemerkt Fehler in zukünftige Serendipity-Versionen einschleichen
können.</p>

<p>Leicht kann es passieren, dass ein neues Feature ungewollte Begleiterscheinungen
auf andere Stellen des Codes hat. Mithilfe von Unit-Tests kann diese
Beeinflussung regelmäßig getestet und notfalls behoben werden. Leider ist die
Erstellung dieser Test-Cases eine harte und langwierige Arbeit und erfordert
einige Kenntnis der internen Funktionen des Blog-Systems.</p>

</article>

<article id="XU" class="subsub">

<header>
    <h4 class="subarticle" id="export">Export</h4>
</header>

<p>Obwohl Serendipity eine recht offene und leicht exportierbare Datenbankstruktur
besitzt, ist es wünschenswert, die komplette Datenbasis eines Serendipity-Blogs
auf Knopfdruck zu exportieren. Mithilfe dieses Exports sollte man eine
Serendipity-Installation leicht auf einen anderen Server und nofalls auf ein
anderes System portieren können.</p>

<p>Wünschenswert wäre ein Exportformat, das auch andere Blog-Systeme unterstützen.
Der MoveableType-Export beinhaltet gemeinsame Grundfunktionen, geht aber für die
erweiterten Features von Serendipity nicht weit genug.</p>

</article>

<article id="XU" class="subsub">

<header>
    <h4 class="subarticle" id="dokumentation-übersetzung">Dokumentation, Übersetzung</h4>
</header>

<p>Das Buch in Ihren Händen stellt einen großen Fortschritt bei der Dokumentation
von Serendipity dar. Jedoch ist dies erst der Anfang, eine detaillierte
und aktuelle Dokumentation jedes einzelnen Plugins sollte online zur Verfügung stehen.</p>

<p>Darüber hinaus hat auch die Übersetzung der Plugins von und ins Deutsche eine hohe Priorität.</p>

</article>

<article id="XU" class="subsub">

<header>
    <h4 class="subarticle" id="multi-blogs">Multi-Blogs</h4>
</header>

<p>Obwohl Serendipity mehrere Autoren mit unterschiedlichen Rechtestufen
unterstützt und mittels erweiterter Plugins auch Unter-Kategorien als
eigenständig formatiertes Blog darstellen kann, geht die
Multi-Blog-Unterstützung noch nicht weit genug.</p>

<p>Gewünscht ist eine zentrale Oberfläche, mittels derer beliebig viele Unter-Blogs
erstellt werden können, die allesamt unterschiedliche Plugins, Templates und
Benutzergruppen definieren können.</p>

<p>Dies setzt einige zentrale Datenbankveränderungen voraus sowie eine generelle
weitere Abstraktion des Sourcecodes.</p>

</article>

<article id="XU" class="subsub">

<header>
    <h4 class="subarticle" id="performance-tuning-caching">Performance-Tuning, Caching</h4>
</header>

<p>Serendipity achtet bereits (wo es sinnvoll ist) auf bestmögliche Performance. Dennoch ist
für die Zukunft ein neuartiges Caching-Konzept vonnöten, ebenso wie die Möglichkeit,
komplett statische Seiten erstellen zu können.</p>

</article>

<article id="XU" class="subsub">

<header>
    <h4 class="subarticle" id="pear-integration-spartacus-mirroring">PEAR-Integration, Spartacus Mirroring</h4>
</header>

<p>Das bereits gut funktionierende Spartacus-System zur Verteilung von Plugins und
Templates soll noch weiter ausgebaut und möglichst an die
PEAR-Channel-Verwaltung angelehnt werden. Dadurch wäre großflächigeres Mirroring
möglich, und die Festlegung auf zentrale vertrauenswürdige Server wäre nicht mehr
notwendig.</p>

</article>

<article id="XU" class="subsub">

<header>
    <h4 class="subarticle" id="workflow-integration">Workflow-Integration</h4>
</header>

<p>Blog-Artikel folgen in Serendipity derzeit nur einem zweistufigen Konzept:
Veröffentlichung und Entwurf. Wünschenswert wäre die Integration eines offenen
Workflow-Systems, mit dem ein Artikel diverse selbst definierte Prüfungsstufen
durchläuft und Checkpoints mit bestimmten Bedingungen passieren muss.</p>

</article>

<article id="XU" class="subsub">

<header>
    <h4 class="subarticle" id="statische-seiten-benutzerrechte">Statische Seiten, Benutzerrechte</h4>
</header>

<p>Obwohl der Autor von Serendipity Styx bereits sehr viel Entwicklungsarbeit
in das Plugin <em>Statische Seiten</em> gesteckt hat und dem <em>alten</em> Plugin
von S9y damit weit voraus ist, muss es noch immer weiterentwickelt und stärker an
die neuen Bedürfnisse von Redakteuren angepasst werden. Eine Mehrbenutzer-Fähigkeit
mit individuellen Benutzerrechten soll zukünftig möglich sein.</p>

</article>

<p>&nbsp;</p>

<p>Wenn Sie bereits Programmteile von Serendipity angepasst haben, sollten Sie
darüber nachdenken, diese der Serendipity-Gemeinschaft zur Verfügung zu
stellen. Dies hat mehrere Vorteile: Zum einen sind Ihnen andere Benutzer auf
Lebzeiten dankbar,
zum anderen stellen Sie so sicher, dass Ihre Änderungen in zukünftigen Versionen
von Serendipity enthalten sind und Sie sie nicht bei jedem Update mühsam
neu einpflegen müssen. Auch könnte es sein, dass andere Benutzer Feedback
zu Ihren Änderungen geben, gemeinsam mit Ihnen Fehler beheben und Ihren Code
um neue Funktionen erweitern. So lernen auch Sie dazu und helfen zugleich bei
der Verbreitung Serendipitys.</p>

<p>Auch wenn Sie ein Plugin entwickelt haben, würden sich die Entwickler freuen,
wenn Sie Ihren Code offenlegen. Je mehr Benutzer Ihr Plugin einsetzen, desto
eher werden Sie über Fehler oder denkbare neue Features benachrichtigt. Das gilt
auch für Designer von Templates, denn je verbreiteter Ihr Name in einer
Open-Source-Community ist, desto eher gelten Sie als Autorität in dem Bereich.
Ein hoher Bekanntheitsgrad hat den Vorteil, dass Sie dadurch leichter
auf kommerzielle Projekte angesprochen werden und dass man Sie um
Entwicklungsarbeiten bitten könnte.</p>

<p>Auch wenn Sie als Privatentwickler tätig sind, macht es sich bei der Bewerbung
um eine Programmiererstelle immer sehr gut, wenn man Einsatz in einem
Open-Source-Projekt vorweisen kann. Die Erfahrung in der Zusammenarbeit mit
einem internationalen Team, gemeinsame Standards und eine öffentlich
einsehbare Programmierqualität sind für potenzielle Arbeitgeber von
zunehmender Wichtigkeit.</p>

</section><!-- section.index end -->

<section id="S11.2.0" class="index">
<span class="s-toc">11.2 - Tipps für die Programmierung</span>

<h3 class="section" id="tipps-für-die-programmierung">Tipps für die Programmierung</h3>

<p class="tagging invisible">
<span class="tag-box invisible">
    <span class="inline-tag">Programmiertipps</span>
    <span class="inline-tag">Programmierung, sichere</span>
</span>
</p>

<p>Grundsätzlich sollten Sie bei der Entwicklung von Code für Serendipity folgende
Dinge beachten:</p>

<article id="XU" class="subsub">

<header>
    <h4 class="subarticle" id="sourcecode-verwaltung-nutzen">Sourcecode-Verwaltung nutzen</h4>
</header>

<p>Serendipity Styx wird über öffentlich zugängliche Server gewartet.
Der gesamte Serendipity Code liegt seit Herbst 2011 auf Github [*]
<span class="footnote"><i class="fa fa-info-circle"></i>
<a href="https://github.com/ophian" target="_blank" rel="noopener">https://github.com/ophian</a></span><!-- footnote -->
und wird zentral dort verwaltet. Eventuelle andere Seiten dienen nur noch aus Kompatibilitätsgründen
als SVN/CSV Verteiler und auch eventuelle  Mirrors sind nur noch für Ausfälle von GitHub relevant.
(Siehe <span class="reference">sourcecodeverwaltung</span> auf Seite
<span class="pageref"><a href="#sourcecodeverwaltung">sourcecodeverwaltung</a></span>).</p>

<p>Wenn Sie Code-Änderungen veröffentlichen wollen, sollten Sie Ihre Änderungen
immer anhand der aktuellsten Sourcecode-Version aus der jeweiligen Quelle
durchführen. Anstatt alle geänderten Dateien an die Entwickler zu schicken,
sollten Sie nur Ihre geänderten Codezeilen mitschicken; dies erledigt man
mittels eines sogenannten <code>diff</code>-Formates, das gängige GIT, SVN- und CVS-Programme
erstellen können.</p>

<p>Wenn Sie erst einmal einige kleine Patches an die Entwickler geschickt haben,
können Sie auch nach direktem Dateizugriff zum Serendipity-Code fragen. Um
eine gewisse Qualität des Codes sicherzustellen, wird dies jedoch erst dann
genehmigt, wenn man Ihre Vertrauenswürdigkeit garantieren kann. Dass dies etwas
strenger kontrolliert wird, kommt Ihnen letztlich nur zugute.</p>

</article>

<article id="XU" class="subsub">

<header>
    <h4 class="subarticle" id="nur-ändern-was-man-ändern-muss">Nur ändern, was man ändern muss</h4>
</header>

<p>Wenn Sie den Entwicklern einen Patch schicken, mit dem ein Redakteur
zB. neue Kategorien direkt vom Beitragseditor aus erstellen kann,
sollte Ihr Patch ausschließlich diese Änderungen beinhalten. Wenn Sie auch noch
ein, zwei weitere Änderungen vorgenommen haben, sollten Sie dies nicht in einem
einzelnen großen Patch abliefern, sondern lieber zwei oder drei kleinere Patches an die
Entwickler weiterleiten. So kann man die einzelnen Dinge gezielter
überprüfen und überstrapaziert die Zeit der Tester nicht.</p>

<p>Nur das Notwendigste zu ändern gilt ganz besonders, wenn Sie ein neues Template
entwickelt haben. Es wäre nicht gut, wenn in diesem Template Dateien enthalten
sind, die im Vergleich zum Standard-Template unverändert sind. Besser wäre es,
nur die absolut notwendigen veränderten Dateien zu bündeln.</p>

</article>

<article id="XU" class="subsub">

<header>
    <h4 class="subarticle" id="coding-style">Coding Style</h4>
</header>

<p class="tagging invisible">
<span class="tag-box invisible">
    <span class="inline-tag">Codestyle</span>
    <span class="inline-tag">Richtlinien!Codestyle</span>
</span>
</p>

<p>Alle Dateien sollten stets im Unix-Format (Zeilenumbrüche mit <code>\n</code>)
gespeichert werden. Einrückungen sollten mit vier Leerzeichen (nicht mit
Tabulatoren) vorgenommen werden.</p>

<p>Optionale Einrückungen für IF-Abfragen und Schleifen sollten immer genutzt
werden. Grundsätzlich sollten Sie sich bei der Programmierung an die
PEAR-Coding-Standards [*] <span class="footnote"><i class="fa fa-info-circle"></i>
<a href="https://pear.php.net/manual/en/standards.php" target="_blank" rel="noopener">https://pear.php.net/manual/en/standards.php</a></span><!-- footnote -->
halten.</p>

<p>Versuchen Sie Ihren Code schlank zu halten. Redundante Codeteile sollten Sie
durch Auslagerung in eigenständige Funktionen oder Methoden vermeiden. Unnötige
Schleifen oder Datenbankabfragen sollten vermieden werden, wenn möglich sollten
Sie performance-intensive Dinge über eigenständiges Caching beschleunigen.</p>

</article>

<article id="XU" class="subsub">

<header>
    <h4 class="subarticle" id="besonderheiten-für-templates">Besonderheiten für Templates</h4>
</header>

<p>Wenn Ihr Template eine <code>config.inc.php</code>-Datei beinhaltet, achten Sie darauf,
dass diese so wenig wie möglich PHP-Code ausführt. Je größer und komplexer die
Datei wird, desto länger dauert der Serendipity-Seitenaufruf.</p>

<p>HTML-Code sollte nach XHTML-1.1-Standard oder HTML5 entwickelt werden. Zudem sollte ein
Template in allen gängigen Browsern funktionieren, zumindest in Mozilla Firefox, Google Chrome/Chromium Derivaten
und Apple Safari.</p>

<p>Wenn Ihr Template eigene Sprachkonstanten verwendet, lagern Sie diese bitte in
<code>lang_XX.inc.php</code>-Dateien aus und liefern auch jeweils die
korrespondierende Version der Datei im UTF-8-Zeichensatz mit.</p>

</article>

<article id="XU" class="subsub">

<header>
    <h4 class="subarticle" id="besonderheiten-für-plugins">Besonderheiten für Plugins</h4>
</header>

<p>Plugins sollten möglichst objektorientiert (wie es die API vorgibt) entwickelt
werden. PHP7-Syntax, wo möglich, ist bevorzugt. Wenn gute Gründe dafür sprechen,
sind PHP5-Plugins selbstverständlich auch kein Problem.
PHP7-Syntax ist Voraussetzung und bevorzugt.</p>

<p>Plugins sollten nur die Ereignis-Hooks benutzen, die auch absolut notwendig
sind. Je weniger Hooks benutzt werden, desto performanter ist ein Plugin.</p>

<p>Wenn ein Plugin externe URLs öffnet, sollten deren Ergebnisse vom Plugin
möglichst für einen konfigurierbaren Zeitraum gecached werden. Behalten Sie stets
Netzwerkprobleme im Hinterkopf, die nicht dazu führen sollten, dass ein Plugin
inoperabel wird.</p>

<p>Setzen Sie referenzierte Variablen ein, wo notwendig.</p>

<p>Wenn Sie ein bestehendes Plugin überarbeiten, fügen Sie bitte in dessen Datei
<code>ChangeLog</code> eine Information über die vorgenommene
Änderung hinzu. Dokumentationen für ein Plugin speichern Sie (mit
HTML-Syntax) in einer Datei namens <code>documentation_XX.html</code>, wobei das
<code>XX</code> mit dem jeweiligen Sprachkürzel wie <code>de</code> zu ersetzen ist.</p>

<p>Falls Ihr Plugin HTML-Code für Buttons und Links im Backend ausgibt, benutzen
Sie bitte die <code>input_button</code>- und nicht mehr die veraltete <code>serendipityPrettyButton</code>-CSS-Klasse. Bei Eingabeboxen nutzen
Sie Klassen wie <code>input_radio, input_checkbox</code> oder <code>input_button</code>.</p>

<p>Falls Ihr Plugin eigene Menüpunkte im Backend ausgibt, geben Sie dies im
Ereignis-Hook mit einem Code wie</p>

<pre><code class="html">
    &lt;li class="serendipitySideBarMenuLink"&gt;
</code></pre>

<p>aus. Sollte Ihr Plugin auf fremde Code-Bibliotheken zurückgreifen, prüfen Sie bitte,
ob dieser kompatibel mit der gewählten Lizenz Ihres Plugins ist. Standardmäßig
werden Serendipity-Plugins unter die BSD-Lizenz gestellt. Wenn Ihr Plugin auf
eine externe Bibliothek angewiesen ist, prüfen Sie im Code, ob diese existiert.
Das Plugin sollte das Blog nicht unbenutzbar machen, wenn der entsprechende Code
fehlt.</p>

<p>Wenn möglich, sollte Ihr Plugin auf viele kleine Dateien verzichten. Kleine
Dateien können die Verteilung über das Spartacus-System spürbar verlangsamen.</p>

<p>Plugins sollten nur SQL-Anweisungen benutzen, die von <em>MySQL</em>,
<em>SQLite</em> und <em>PostgreSQL</em> interpretiert werden können. Fügen Sie
unterschiedliche Varianten der SQL-Abfrage ein, wenn diese auf unterschiedlichen
Systemen voneinander abweichen. Wenn das Plugin eine eigene Datenbanktabelle
benötigt, sollte diese vom Plugin automatisch mithilfe der Funktion
<code>serendipity_db_schema_import</code> erstellt werden.</p>

</article>

<article id="XU" class="subsub">

<header>
    <h4 class="subarticle" id="sicherheit">Sicherheit</h4>
</header>

<p class="tagging invisible">
<span class="tag-box invisible">
    <span class="inline-tag">Sicherheit</span>
    <span class="inline-tag">Sichere Programmierung</span>
</span>
</p>

<p>Achten Sie stets auf die Sicherheit Ihres Codes. Er sollte keine SQL-
oder XSS-Injections zulassen oder gar beliebigen PHP-Code von fremden Servern
ausführen. Achten Sie darauf, Werte aus GET/POST-Variablen vor dem
Einfügen in die Datenbank mit <code>serendipity_db_escape_string()</code> zu
behandeln und bei der Ausgabe mit <code>htmlspecialchars()</code> zu behandeln.</p>

<p>Wenn ein Plugin administrative Aktionen im Backend ausführt, sollten die
HTML-Formulare zum Ausführen der Funktion mittels <code>serendipityFormToken()</code>
vor XSRF-Angriffen gesichert werden.</p>

</article>

<article id="XU" class="subsub">

<header>
    <h4 class="subarticle" id="aus-anderen-quellen-lernen">Aus anderen Quellen lernen</h4>
</header>

<p>Wenn Sie Code beisteuern wollen, ist es am einfachsten, sich anzuschauen, was
frühere Serendipity-Entwickler geschrieben haben. Schauen Sie sich bestehende
Plugins an, nehmen Sie Anleihen an deren Struktur. Und wann immer etwas unklar
ist: Fragen Sie ruhig. Niemand beißt die Hand, die uns füttern soll!</p>

</article>

</section><!-- section.index end -->
