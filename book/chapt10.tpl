<h2 id="chapter-X">Kapitel 10: Der Serendipity-Kern</h2>

<span class="label invisible" id="workflow">workflow</span>

<p class="tagging invisible">
<span class="tag-box invisible">
    <span class="inline-tag">Serendipity!Kernarchitektur</span>
    <span class="inline-tag">Framework</span>
</span>
</p>

<p>Serendipity ist im Inneren ein Framework, das entsprechend der angeforderten
URL die gewünschte Aktion ausführt. Daher initialisiert sich bei jedem Aufruf
einer URL von Serendipity das gesamte Kernkonstrukt auf die immer gleiche Art
und Weise.</p>

<p>&nbsp;</p>

<section id="S1010" class="index">
<span class="s-toc">10.1 - Frontend</span>

<h3 class="section" id="frontend">Frontend</h3>

<p>Zentrale Anlaufstelle fast aller Aktionen im Frontend ist die
<code>index.php</code>-Datei. Egal ob ein einzelner Blog-Artikel, eine Übersicht oder
der Inhalt eines Plugins ausgegeben wird - alle Ausgaben werden durch diese
Datei <em>geroutet</em>. Auch bei der Verwendung von <em>URL-Umformung</em> mittels
<code>mod_rewrite</code> oder Ähnlichem werden alle Aufrufe über die
<code>.htaccess</code>-Datei im Hintergrund zur <code>index.php</code> weitergeleitet.</p>

<p>Aufgabe der <code>index.php</code>-Datei ist es nun, die Serendipity-Komponenten
<em>zusammenzubauen</em>. Zuerst sendet diese Datei einige benötigte
HTTP-Kopfzeilen und bindet die Datei <code>serendipity_config.inc.php</code> ein.
Diese Datei ist das Herz des Frameworks, da sie sich darum kümmert, alle
benötigten Komponenten und Sourcecode-Dateien einzubinden und erforderliche
Konfigurationswerte einzulesen.</p>

<p>Dort werden einige PHP-Konstanten gesetzt, eine PHP-Session gestartet und die wichtigen
Serendipity-Stammpfade festgelegt. Daraufhin erfolgt die Einbindung der Datei
<code>include/compat.inc.php</code>. Hier werden die URL-Variablen korrekt zugewiesen
und abhängig von der Konfiguration des PHP-Servers bearbeitet. Zusätzlich wird
hier die zentrale <code>$serendipity</code>-Variable erstmals instanziert. Auch werden
einige zentrale PHP-Funktionen definiert, die Serendipity im Folgenden
immer wieder benötigen wird.</p>

<p>Nachdem diese Datei abgearbeitet wurde, folgt in der
Datei <code>serendipity_config.inc.php</code> die weitere Definition des
<code>$serendipity</code>-Arrays. Hier wird beispielsweise die Versionsnummer der
Software festgehalten, die Art der Fehlerbehandlung bestimmt, und Standardwerte
für einige der Serendipity-Optionen werden vorbelegt.</p>

<p>Nachdem diese Variablen feststehen, ist es an der Zeit, den Sprachkern
nachzuladen. Dieser richtet sich nach der vom Besucher festgelegten Sprache.
Falls der Besucher ein angemeldeter Redakteur ist, wird dessen Sprachvariable
aus den persönlichen Einstellungen bezogen. Auch die konfigurierte
Browser-Sprache kann einen Einfluss darauf haben, in welcher Sprache Serendipity
mit dem Benutzer spricht. Die einmal festgelegte Sprache wird
daraufhin in der PHP-Session für den nächsten Aufruf gespeichert. Alle
sprachbezogenen Aktionen werden mittels der <code>include/lang.inc.php</code>-Datei
durchgeführt.</p>

<p>Nachdem nun die gewünschte Sprachdatei eingebunden wurde, kann Serendipity mit
dem Besucher interagieren. An dieser Stelle wird geprüft, ob Serendipity
überhaupt bereits installiert wurde (falls nicht, startet der Installationsprozess).</p>

<p>Als Nächstes setzt Serendipity die PHP-Include-Pfade so, dass alle zu
Serendipity gehörenden Dateien eingebunden werden können. Dies ist besonders dann
wichtig, wenn Serendipity in einer <em>Shared Installation</em>
(siehe Seite <span class="pageref"><a href="#sharedinstall">sharedinstall</a></span>) betrieben wird.</p>

<p>Nun kann Serendipity die zentrale Konfigurationsdatei
<code>serendipity_config_local.inc.php</code> einlesen. Hierin sind die
Zugangsparameter zur Datenbank enthalten. Wenn diese Zugangsparameter korrekt
gelesen wurden, kann eine Verbindung zur Datenbank hergestellt werden.</p>

<p>Die Einbindung der <code>include/functions.inc.php</code> sorgt dafür, dass sämtliche
PHP-Kernfunktionen von Serendipity geladen werden. Dazu werden weitere Dateien wie
<code>include/functions_config.inc.php</code> eingebunden, die diese Funktionen
jeweils themenspezifisch bündeln (siehe auch Seite <span class="pageref"><a href="#s9yfiles">s9yfiles</a></span>).</p>

<p>Nun wird das <code>$serendipity</code>-Array mit allen Konfigurationswerten der
Datenbank befüllt. Der Redakteur kann so mit der Benutzerdatenbank abgeglichen
werden, um einen gültigen Login zu erkennen und ggf. die persönliche
Konfiguration des Besuchers zu laden.</p>

<p>Als Letztes erfolgt in der <code>serendipity_config.inc.php</code> der Aufruf der
Plugin-API (siehe Seite <span class="pageref"><a href="#pluginapi">pluginapi</a></span>). Beim ersten Aufruf werden
alle installierten Plugins in den Speicher geladen und etwaige Aktionen ausgeführt.</p>

<p>Nachdem nun das Serendipity-Framework geladen wurde, kann der Ablauf der
<code>index.php</code> fortgesetzt werden. Hier werden weitere HTTP-Kopfzeilen
gesendet.</p>

<p>Da nun der vollständige Zugriff auf die Datenbank möglich ist, kann Serendipity
abhängig von der Konfiguration der Permalinks prüfen, welche Seite der
Besucher angefordert hat. Dazu dienen zahlreiche <code>IF-Abfragen</code>,
die den Großteil dieser Datei ausmachen.</p>

<p>Jeder mögliche Ausgabefall (Archiv-Übersicht, Kategorie-Übersicht,
Einzelartikel, Volltextsuche ...) wird hier mit der aktuellen URL
(<code>$uri</code>) verglichen. Falls eine der IF-Bedingungen zutrifft, ruft
Serendipity die für die Unterseite notwendigen Befehle ab.</p>

<p>Meist bestehen diese Befehle darin, benötigte Variablen vorzubelegen und
Komponenten der URL (Autor-ID, Kategorie-ID, Zeitraum der Archive ...)
auszulesen. Abschließend wird in beinahe jeder der IF-Bedingungen die Datei
<code>include/genpage.inc.php</code> aufgerufen, die für die Ausgabe einer
Template-Datei verantwortlich zeichnet.</p>

<p>In dieser Datei wird hauptsächlich die <em>Smarty</em>-Bibliothek geladen, die für
die Auswertung der Template-Dateien zuständig ist. Serendipity reicht einige
Parameter an die dafür zuständige <code>serendipity_smarty_init()</code>-Funktion
weiter. Diese Funktion wird in der Datei <code>include/functions_smarty.inc.php</code>
deklariert. Sie setzt alle gewünschten Variablen und wertet anschließend etwaige
<code>config.inc.php</code>-Dateien Ihres Templates aus. Darüber können zusätzliche
Template-Optionen eingestellt werden. Sämtliche zusätzlichen Smarty-Modifier und
eigene Smarty-Funktionen werden an dieser Stelle des Ablaufs gesetzt, und
Standard-Serendipity-Variablen werden an die Templates weitergereicht.</p>

<p>Daraufhin kann Serendipity anhand der URL-Parameter den eigentlichen Inhalt der
Seite zusammenstellen. Die Funktion <code>serendipity_fetchEntries()</code> sorgt
dafür, dass die angeforderten Artikel aus der Datenbank eingelesen werden.
Daraufhin werden sie über die Funktion <code>serendipity_printEntries</code>
bearbeitet und letztlich an die erforderliche Template-Datei zugewiesen.</p>

<p>Nachdem die Datei <code>genpage.inc.php</code> den eigentlichen Seiteninhalt
aufbereitet hat (Smarty-Variable <code class="smarty">{$CONTENT}</code>), kann
die <code>index.php</code>-Datei als letzte Maßnahme für die Ausgabe des Inhalts
sorgen, indem sie den Darstellungsprozess von <em>Smarty</em> aufruft.</p>

<p>&nbsp;</p>

</section><!-- section.index end -->

<section id="S1020" class="index">
<span class="s-toc">10.2 - Backend</span>

<h3 class="section" id="backend-1">Backend</h3>

<p>Der Ablauf im Backend ist beinahe identisch. Anstelle der <code>index.php</code> wird
hier jedoch immer die <code>serendipity_admin.php</code> aufgerufen. Diese prüft den
Aufruf zusätzlich auf einen gültigen Login und stellt das Menü zusammen.
Anschließend wird abhängig von der gewählten Aktion im Backend die entsprechende
Include-Datei aus dem Verzeichnis <code>include/admin/</code> eingebunden. Diese Datei
führt die gewünschte Aktion aus (zB. Verwalten von Einträgen) und liefert den
HTML-Teil zurück, der im rechten Bereich des Backends angezeigt werden soll.</p>

<p>Dieser HTML-Teil wird über die Template-Datei <code>admin/index.tpl</code> entsprechend
eingebunden und anschließend zusammen mit dem Menü und dem Kopfbereich ausgegeben.</p>

<p>Eine Übersicht über die Inhalte aller zu Serendipity gehörenden Dateien finden
Sie ab Seite <span class="pageref"><a href="#s9yfiles">s9yfiles</a></span>.</p>

<p>&nbsp;</p>

</section><!-- section.index end -->

<section id="S1030" class="index">
<span class="s-toc">10.3 - Sonderfälle</span>

<h3 class="section" id="sonderfälle">Sonderfälle</h3>

<p>Obwohl die meisten Serendipity-Ansichten entweder über das Backend
(also <code>serendipity_admin.php</code>) oder Frontend (<code>index.php</code>) geroutet werden,
gibt es einige Sonderfälle. Diesen Sonderfällen ist jedoch gemein, dass sie alle
das Serendipity-Framework einbinden, um auf identische Funktionen und Plugins
zugreifen zu können.</p>

<section id="U1031" class="sub">
<span class="u-toc">10.3.1 - Kommentare, Trackbacks</span>

<h3 class="subsection" id="kommentare-trackbacks">Kommentare, Trackbacks</h3>

<p class="tagging invisible">
<span class="tag-box invisible">
    <span class="inline-tag">Trackbacks</span>
</span>
</p>

<p>Eingehende Trackbacks (und Pingbacks) werden nicht über das zentrale Framework
abgearbeitet, sondern über eine eigenständige Datei <code>comment.php</code>. Diese
bindet das Serendipity-Framework zwar ein, dient aber ansonsten aus Gründen der
Übersichtlichkeit ausschließlich der Abarbeitung von Trackbacks. Da diese einen
ressourcenintensiven Prozess darstellen, werden sie nicht über die zentrale
Datei bearbeitet. Dies erleichtert Logging und evtl. auch den Ausschluss des
Trackback-Mechanismus' bei Ressourcenproblemen (siehe Seite
<span class="pageref"><a href="#commentphp">commentphp</a></span>).</p>

<p>Falls Ihr Serendipity-Blog so konfiguriert ist, dass Kommentare in einem Popup
angezeigt werden, dient die <code>comment.php</code> auch zur Darstellung
und Entgegennahme von Kommentaren. Ohne Popup-Darstellung übernimmt dies
wie gewohnt die <code>index.php</code>-Datei, daher befindet sich hier
stellenweise duplizierter Code.</p>

<p>
<span class="tag-box invisible">
    <span class="inline-tag">wfwComment</span>
</span>
Einen Sonderfall von Kommentaren stellen die sogenannten <code>wfwComments</code> dar. Sie
sind Teil eines Standards, der speziell für RSS-Reader ins Leben gerufen wurde.
Er erlaubt, dass man direkt vom RSS-Reader aus Kommentare zu einem Blog-Eintrag
verfassen kann, ohne dazu erst die URL des Blogs und dort ein
Kommentarfeld aufrufen zu müssen. Serendipity nimmt derartige Kommentare über die Datei
<code>wfwcomment.php</code> entgegen.</p>

</section><!-- section.sub end -->

<section id="U1032" class="sub">
<span class="u-toc">10.3.2 - Exit-Nachverfolgung</span>

<h3 class="subsection" id="exit-nachverfolgung">Exit-Nachverfolgung</h3>

<p>Das Serendipity Plugin zum <code>Externe Links zählen</code> (siehe Seite
<span class="pageref"><a href="#trackexits">trackexits</a></span>)
dient zur statistischen Erfassung, auf welche Links Ihre Besucher klicken. Dabei
leitet Serendipity den Besucher auf die eigentlich gewünschte URL weiter. Damit
dies Ressourcen sparend geschehen kann, ist diese Funktionalität in der Datei
<code>exit.php</code> gekapselt.</p>

</section><!-- section.sub end -->

<section id="U1033" class="sub">
<span class="u-toc">10.3.3 - RSS-Feeds</span>

<h3 class="subsection" id="rss-feeds-1">RSS-Feeds</h3>

<p>Da die Darstellung von RSS-Feeds unabhängig vom Frontend geschieht, ist diese Aufgabe
über die separate Datei <code>rss.php</code> geregelt.</p>

</section><!-- section.sub end -->

<section id="U1034" class="sub">
<span class="u-toc">10.3.4 - Mediathek-Popup</span>

<h3 class="subsection" id="mediathek-popup">Mediathek-Popup</h3>

<p>Die Mediathek kann an einigen Stellen des Front- und Backends aufgerufen
werden und erfolgt meist als Popup. Um dies komfortabler und isolierter zu
verwalten, befindet sich der dafür notwendige Code in der Datei
<code>serendipity_admin_image_selector.php</code>.</p>

</section><!-- section.sub end -->

<section id="U1035" class="sub">
<span class="u-toc">10.3.5 - XML-RPC</span>

<h3 class="subsection" id="xml-rpc">XML-RPC</h3>

<p class="tagging invisible">
<span class="tag-box invisible">
    <span class="inline-tag">XML-RPC</span>
</span>
</p>

<p>Serendipity unterstützt über ein Plugin die Möglichkeit, Blog-Artikel mittels
fremder Anwendungen zu erstellen, ohne dafür das Serendipity-Backend benutzen zu
müssen.</p>

<p>Hierfür wurde die Datei <code>serendipity_xmlrpc.php</code> geschaffen. In früheren
Serendipity-Versionen war hier der vollständige Code enthalten, um die
gewünschte API zum Erstellen von Artikeln abzudecken. Nachdem dies als Plugin
ausgelagert wurde, dient die Datei nur noch als eine Art Grundgerüst, um das
Plugin aufzurufen.</p>

</section><!-- section.sub end -->

</section><!-- section.index end -->

<section id="S1040" class="index">
<span class="s-toc">10.4 - Serendipity-Dateien</span>

<h3 class="section" id="serendipity-dateien">Serendipity-Dateien</h3>

<p class="tagging invisible">
<span class="tag-box invisible">
    <span class="inline-tag">Serendipity!Dateien</span>
</span>
<span class="label invisible" id="s9yfiles">s9yfiles</span>
</p>

<p>Serendipity besteht aus einer größeren Menge an Dateien und Systembibliotheken:</p>

<p class="desc">
<span class="item dir">Stammverzeichnis</span>
<span class="desc-info">
    <span class="box">Das Stammverzeichnis enthält folgende Dateien:</span>
</span>
<span class="item-list">
    <span class="li"><code class="item sub-file">.htaccess</code> Steueranweisungen für den Webserver (<em>URL-Umformung</em> etc.)</span>
    <span class="li"><code class="item sub-file">checksum.inc.php</code> enthält das Array der checksum Dateien einer veröffentlichten Release Version.</span>
    <span class="li"><code class="item sub-file">comment.php</code> stellt Kommentare/Trackbacks in einem Popup dar.</span>
    <span class="li"><code class="item sub-file">exit.php</code> leitet verfolgte URLs an das gewünschte Ziel weiter (bei Verwendung des Plugins <em>URL-Exits verfolgen</em>).</span>
    <span class="li"><code class="item sub-file">index.php</code> stellt den zentralen Anlaufpunkt für alle Frontend-Ausgaben dar.</span>
    <span class="li"><code class="item sub-file">rss.php</code> gibt RSS-Feeds aus.</span>
    <span class="li"><code class="item sub-file">serendipity.css.php</code> gibt die Stylesheets von Serendipity aus.</span>
    <span class="li"><code class="item sub-file">serendipity_admin.php</code> stellt den zentralen Anlaufpunkt für alle Backend-Ausgaben dar.</span>
    <span class="li"><code class="item sub-file">serendipity_admin_image_selector.php</code> stellt das Mediathek-Popup dar.</span>
    <span class="li"><code class="item sub-file">serendipity_config.inc.php</code> lädt das Serendipity Framework.</span>
    <span class="li"><code class="item sub-file">serendipity_config_local.inc.php</code> enthält zentrale Konfigurationswerte Serendipitys.</span>
    <span class="li"><code class="item sub-file">serendipity_editor.js</code>, <code class="item sub-file">serendipity_styx.js</code> stellt JavaScript-Funktionen im Backend bereit.</span>
    <span class="li"><code class="item sub-file">serendipity_xmlrpc.php</code> bindet die Anlaufstelle für die XML-RPC API ein.</span>
    <span class="li"><code class="item sub-file">wfwcomment.php</code> bindet eine Anlaufstelle für wfwComment-API-Aufrufe ein.</span>
</span>
</p>

<p class="desc">
<span class="item">Verzeichnis </span>
<code class="item dir">archives</code>
<span class="desc-info">
    <span class="box">
        Dient nur als Platzhalter für das symbolische Verzeichnis <code>archives</code>, das
        Serendipity innerhalb der URL verwendet. Hier werden jedoch keine Dateien
        gespeichert, sondern diese werden aus der Datenbank gelesen. Einige Plugins
        speichern in diesem Verzeichnis temporäre Dateien.
    </span>
</span>
</p>

<p class="desc">
<span class="item">Verzeichnis </span>
<code class="item dir">bundled-libs</code>
<span class="desc-info">
    <span class="box">
        Enthält einige Fremd-Bibliotheken zur Erweiterung der Funktionen Serendipitys
        (zB. <code>PEAR</code>-Klassen und <code>Smarty</code>).
    </span>
</span>
</p>

<p class="desc">
<span class="tag-box invisible">
    <span class="inline-tag">Deployment</span>
</span>
<span class="item">Verzeichnis </span>
<code class="item dir">deployment</code>
<span class="desc-info">
    <span class="box">
        Enthält funktionsreduzierte Rumpf-Dateien für die <em>Shared Installation</em>
        (siehe Seite <span class="pageref"><a href="#sharedinstall">sharedinstall</a></span>) von Serendipity. Diese entsprechen den
        Dateinamen des Stammverzeichnisses und binden die entsprechende Datei später ein.
    </span>
</span>
</p>

<p class="desc">
<span class="item">Verzeichnis </span>
<code class="item dir">docs</code>
<span class="desc-info">
    <span class="box">
        Enthält einige Dateien zur Dokumentation Serendipitys. Die Datei <code>NEWS</code>
        enthält ein Protokoll von Änderungen zwischen den verschiedenen Versionen
        Serendipitys.
    </span>
</span>
</p>

<p class="desc">
<span class="item">Verzeichnis </span>
<code class="item dir">include</code>
<span class="desc-info">
    <span class="box">
        Enthält die zentralen Funktionskomponenten Serendipitys:
    </span>

    <span class="item-list">
        <span class="li"><code class="item sub-file">compat.inc.php</code> enthält Bearbeitungsroutinen, die zur Kompatibilitätswahrung und Vereinheitlichung verschiedener PHP-Versionen nötig sind.</span>
        <span class="li"><code class="item sub-file">functions.inc.php</code> enthält zentrale Funktionen für Serendipity und lädt die Unter-Funktionsdateien.</span>
        <span class="li"><code class="item sub-file">functions_calendars.inc.php</code> enthält Funktionen zur Bearbeitung von Datumsangaben und Zeitwerten.</span>
        <span class="li"><code class="item sub-file">functions_comments.inc.php</code> enthält Funktionen zur Behandlung von Blog-Kommentaren.</span>
        <span class="li"><code class="item sub-file">functions_entries.inc.php</code> enthält Funktionen zur Behandlung von Blog-Artikeln.</span>
        <span class="li"><code class="item sub-file">functions_entries_admin.inc.php</code> enthält Funktionen zur Bearbeitung von Blog-Artikeln im Backend.</span>
        <span class="li"><code class="item sub-file">functions_images.inc.php</code> enthält Funktionen zur Behandlung von Objekten der Mediathek.</span>
        <span class="li"><code class="item sub-file">functions_installer.inc.php</code> enthält Funktionen zur Installation Serendipitys.</span>
        <span class="li"><code class="item sub-file">functions_permalinks.inc.php</code> enthält Funktionen zur Bearbeitung von Permalinks/URL-Werten.</span>
        <span class="li"><code class="item sub-file">functions_plugins_admin.inc.php</code> enthält Funktionen zur Konfiguration von Plugins im Backend.</span>
        <span class="li"><code class="item sub-file">functions_routing.inc.php</code> enthält Funktionen zur Umleitung von request Anfragen.</span>
        <span class="li"><code class="item sub-file">functions_rss.inc.php</code> enthält Funktionen zur Ausgabe von RSS-Feeds.</span>
        <span class="li"><code class="item sub-file">functions_smarty.inc.php</code> enthält Funktionen zur Interaktion mit der Smarty-Bibliothek.</span>
        <span class="li"><code class="item sub-file">functions_trackbacks.inc.php</code> enthält Funktionen zur Annahme und zum Versand von Trackbacks.</span>
        <span class="li"><code class="item sub-file">functions_upgrader.inc.php</code> enthält Funktionen zum Aktualisierungsvorgang für Serendipity.</span>
        <span class="li"><code class="item sub-file">genpage.inc.php</code> enthält Anweisungen zur Erstellung und zur Ausgabe von Seiten im Frontend.</span>
        <span class="li"><code class="item sub-file">lang.inc.php</code> enthält Anweisungen zum Laden der notwendigen Sprachdateien.</span>
        <span class="li"><code class="item sub-file">plugin_api.inc.php</code> enthält die Klassen der Plugin-Schnittstelle.</span>
        <span class="li"><code class="item sub-file">plugin_api_extension.inc.php</code> enthält erweiterte Funktionen, auf die Plugins zurückgreifen können.</span>
        <span class="li"><code class="item sub-file">plugin_internal.inc.php</code> enthält eine Liste eingebauter Plugins, die für Serendipity zur Verfügung stehen.</span>
        <span class="li"><code class="item sub-file">template_api.inc.php</code> enthält die Klasse der Template-Schnittstelle, wenn eine andere Schnittstelle als Smarty zum Einsatz kommen soll (siehe Seite <span class="pageref"><a href="#templateapi">templateapi</a></span>).</span>
    </span>
</span>
</p>

<p class="desc">
<span class="item">Verzeichnis </span>
<code class="item dir">include/admin</code>
<span class="desc-info">
    <span class="box">
        Enthält die Unterseiten des Backends:
    </span>

    <span class="item-list">
        <span class="li"><code class="item sub-file">category.inc.php</code> enthält die Maske zur Bearbeitung von Kategorien.</span>
        <span class="li"><code class="item sub-file">comments.inc.php</code> enthält die Maske zur Bearbeitung von Kommentaren.</span>
        <span class="li"><code class="item sub-file">configuration.inc.php</code> enthält die Maske zur Konfiguration Serendipitys.</span>
        <span class="li"><code class="item sub-file">entries.inc.php</code> enthält die Maske zum Bearbeiten/Erstellen von Blog-Artikeln.</span>
        <span class="li"><code class="item sub-file">groups.inc.php</code> enthält die Maske zur Bearbeitung von Benutzergruppen.</span>
        <span class="li"><code class="item sub-file">images.inc.php</code> enthält die Maske zum Verwalten der Mediathek.</span>
        <span class="li"><code class="item sub-file">import.inc.php</code> enthält die Maske zum Importieren von Blog-Artikeln.</span>
        <span class="li"><code class="item sub-file">installer.inc.php</code> enthält die Maske zur Installation Serendipitys.</span>
        <span class="li"><code class="item sub-file">maintenance.inc.php</code> enthält die Maske zur Wartungsseite des Backends.</span>
        <span class="li"><code class="item sub-file">overview.inc.php</code> enthält die Maske zur Startseite des Backends.</span>
        <span class="li"><code class="item sub-file">personal.inc.php</code> enthält die Maske zu den persönlichen Einstellungen.</span>
        <span class="li"><code class="item sub-file">plugins.inc.php</code> enthält die Maske zur Verwaltung von Plugins.</span>
        <span class="li"><code class="item sub-file">templates.inc.php</code> enthält die Maske zum Verwalten von Templates.</span>
        <span class="li"><code class="item sub-file">upgrader.inc.php</code> enthält die Maske zum Aktualisieren von Serendipity.</span>
        <span class="li"><code class="item sub-file">users.inc.php</code> enthält die Maske zur Verwaltung von Redakteuren.</span>
    </span>
</span>
</p>

<p class="desc">
<span class="item">Verzeichnis </span>
<code class="item dir">include/admin/importers</code>
<span class="desc-info">
    <span class="box">
        Enthält die verschiedenen Import-Module für die Schnittstelle zu anderen
        Blog-Systemen. Der Dateiname steht jeweils für das Blog-System, die Datei
        <code>generic.inc.php</code> enthält den RSS-Feed-Import.
    </span>
</span>
</p>

<p class="desc">
<span class="item">Verzeichnis </span>
<code class="item dir">include/db</code>
<span class="desc-info">
    <span class="box">
        Enthält die Funktionsbibliotheken zur Verwendung unterschiedlicher
        Datenbanksysteme. Die Datei <code>db.inc.php</code> enthält die systemübergreifenden
        Funktionen, die anderen Dateien enthalten den Funktionssatz des jeweils
        gleichnamigen Datenbanksystems.
    </span>
</span>
</p>

<p class="desc">
<span class="item">Verzeichnis </span>
<code class="item dir">include/tpl</code>
<span class="desc-info">
    <span class="box">
        Enthält einige Vorlagedateien zur Darstellung von Konfigurationsoptionen des
        Blogs. Die <code>htacces_....tpl</code>-Dateien enthalten Vorlagen für die
        automatisch erstellte <code>.htaccess</code>-Datei, in Abhängigkeit von der gewählten
        Form der URL-Umformung und der eingesetzten PHP-Version (mit/ohne
        CGI-Einbindung). Die Datei <code>config_local.inc.php</code> enthält die Anweisungen
        zur zentralen Blog-Konfiguration (siehe Seite <span class="pageref"><a href="#configlocal">configlocal</a></span>) und
        <code>config_personal.inc.php</code> die persönlichen Einstellungen.
    </span>
</span>
</p>

<p class="desc">
<span class="label invisible" id="lang-dir">lang-dir</span>
<span class="item">Verzeichnis </span>
<code class="item dir">lang</code>
<span class="desc-info">
    <span class="box">
        Enthält die Sprachdateien zur Übersetzung der Serendipity-Meldungen. Das Kürzel
        am Ende jeder Datei steht für die entsprechende Sprache (<code>de</code> = Deutsch,
        <code>en</code> = Englisch usw.). Die Dateien <code>addlang.*</code>, <code>plugin_lang.php</code>
        und <code>append.sh</code> sind nur für Entwickler gedacht, damit einfach neue
        Sprachkonstanten in alle Dateien hinzugefügt werden können.
    </span>
    <span class="box">
        Innerhalb dieser Datei sorgt der PHP-Befehl <code>define()</code> dafür, einer
        Konstante (erster Parameter) einen beliebigen Wert (zweiter Parameter)
        zuzuordnen. Wenn einfache oder doppelte Anführungszeichen im Inhalt einer
        Konstante vorkommen, müssen Sie darauf achten, diese mit einem Backslash (\)
        zu escapen:
    </span>
    <span class="box">
        <span id="pre-style"><code class="php">
            @define('KONSTANTENNAME1', 'Ich bin\'s, der "Waldi"!');<br>
            @define('KONSTANTENNAME2', 'Ich bin\'s, der <br>
            "Waldi"!');
        </code></span>
    </span>
    <span class="box">
        Serendipity setzt das <code>@</code>-Zeichen vor jeden <code>define()</code>-Aufruf, damit etwaige
        doppelte Deklarationen einer Konstante keine Fehlermeldung provozieren.
    </span>
    <span class="box">
        Das Unterverzeichnis <code>UTF-8</code> enthält dieselben Dateien ein weiteres Mal,
        jedoch entgegen zur nationalen Zeichensatzkonvertierung (meist ISO) im UTF-8-Zeichensatz.
    </span>
</span>
</p>

<p class="desc">
<span class="item">Verzeichnis </span>
<code class="item dir">plugins</code>
<span class="desc-info">
    <span class="box">
        Enthält die installierbaren Plugins. Der Name des jeweiligen Unterverzeichnisses
        entspricht dem Namen der Plugin-Dateien. Hier abgelegte Plugins müssen zuerst
        über das Backend installiert werden, bevor sie aktiv sind.
    </span>
</span>
</p>

<p class="desc">
<span class="item">Verzeichnis </span>
<code class="item dir">sql</code>
<span class="desc-info">
    <span class="box">
        Enthält Dateien mit SQL-Anweisungen. Die Datei <code>db.sql</code> enthält alle
        Anweisungen, die bei der Installation von Serendipity ausgeführt werden. Diese
        Datei enthält einige Variablen (eingefasst in geschweiften Klammern), die bei der
        Installation automatisch entsprechend des Datenbank-Zielsystems in den korrekten
        SQL-Dialekt übersetzt werden.
    </span>
    <span class="box">
        Die Dateien <code>db_update_X_Y_Z.sql</code> - soweit noch vorhanden - enthalten die
        SQL-Anweisungen, die beim Aktualisieren von Serendipity automatisch ausgeführt werden
        sollen, um neue Tabellen zu erstellen bzw. bestehende Tabellen anzupassen. Dabei steht
        <code>X</code> für die vorher installierte Serendipity-Version und <code>Y</code> für
        die neue Version. Bei einem Update werden alle Versionszwischenstände ebenfalls ausgeführt.
        <code>Z</code> steht dabei für das verwendete Datenbank-Zielsystem (MySQL, PostgreSQL oder SQLite).
    </span>
</span>
</p>

<p class="desc">
<span class="item">Verzeichnis </span>
<code class="item dir">templates</code>
<span class="desc-info">
    <span class="box">
        Enthält die verfügbaren Templates. Das Verzeichnis <code>pure</code> enthält
        seit Serendipity Styx 3.0 alle Standarddateien, die verwendet werden, wenn ein
        Template-Verzeichnis nicht über eine entsprechende eigene Datei verfügt.
        Das Verzeichnis <code>default</code> enthält darüber hinaus weitere
        Standarddateien, falls diese nicht im Verzeichnis <code>pure</code> oder einem
        definierten "Engine"-Theme ihres Themes liegen. Diese beiden Sonderverzeichnisse
        sollten daher bei jeder Serendipity-Installation beibehalten und stets aktualisiert
        werden. Änderungen an diesen Dateien sollten Sie niemals dort vornehmen, sondern
        stattdessen nur in einer lokalen Kopie eines eigenen Template-Verzeichnisses.
    </span>
</span>
</p>

<p class="desc">
<span class="item">Verzeichnis </span>
<code class="item dir">templates/_assets</code>
<span class="desc-info">
    <span class="box">
        Enthält unter <code>/ckebasic</code> den Sourcecode des einfachen <code>CKEditor</code>-WYSIWYG-Editors zur
        Darstellung einer Office-ähnlichen Oberfläche beim
        Bearbeiten von Artikeln (siehe Seite <span class="pageref"><a href="#wysiwyg">WYSIWYG</a></span>), sowie unter
        <code>/highlight</code> das Asset für kolorierten Code vom codesnippet Plugin des Rich Text Editors.
    </span>

    <span class="box">
        Enthält unter <code>/b4</code> und <code>/b5</code> die CSS und JS includes für verschiedene Versionen des beliebten Bootstrap HTML Framework.
    </span>
</span>
</p>

<p class="desc">
<span class="item">Verzeichnis </span>
<code class="item dir">templates_c</code>
<span class="desc-info">
    <span class="box">
        Enthält die von Smarty erstellten Temporärdateien mit in PHP-Code übersetzten
        Templates.
    </span>
</span>
</p>

<p class="desc">
<span class="item">Verzeichnis </span>
<code class="item dir">tests</code>
<span class="tag-box invisible">
    <span class="inline-tag">Unit-Tests</span>
</span>
<span class="desc-info">
    <span class="box">
        Enthält (rudimentäre) Unit-Test-Dateien für Serendipity.
    </span>
</span>
</p>

<p class="desc">
<span class="item">Verzeichnis </span>
<code class="item dir">uploads</code>
<span class="desc-info">
    <span class="box">
        In diesem Verzeichnis werden die Dateien der Mediathek gespeichert.
    </span>
</span>
</p>

<p>&nbsp;</p>

</section><!-- section.index end -->

<section id="S1050" class="index">
<span class="s-toc">10.5 - Serendipity-Funktionen</span>

<h3 class="section" id="serendipity-funktionen">Serendipity-Funktionen</h3>

<p class="tagging invisible">
<span class="tag-box invisible">
    <span class="inline-tag">Serendipity!Funktionen</span>
</span>
</p>

<p>Auf eine ausführliche Beschreibung aller Serendipity-Funktionen muss aus
Platzgründen in diesem Buch verzichtet werden. Alle verfügbaren Parameter sowie
Rückgabewerte sind jedoch als PHPDoc-Kommentare oberhalb der
Funktionsdeklaration jeder Serendipity-Kerndatei enthalten und können dort
leicht nachgeschlagen werden. Der Name der Datei, in der sich die jeweilige Funktion
befindet, ist in der folgenden Liste aufgeführt.</p>

<p>Im Folgenden finden Sie eine Liste von gebräuchlichen Serendipity-Funktionen,
die Sie bei der Entwicklung von Plugins und Ähnlichem häufig einsetzen werden.</p>

<section id="U1051" class="sub">
<span class="u-toc">10.5.1 - Zentrale Funktionen</span>

<h3 class="subsection" id="zentrale-funktionen">Zentrale Funktionen</h3>

<p class="label invisible">
<span class="label invisible" id="zentralefunktionen">zentralefunktionen</span>
</p>

<p>Zentrale Funktionen können an mehreren Stellen von Serendipity eingesetzt werden.</p>

<p class="desc">
<code class="item function">serendipity_die()</code>, 
(<code class="item file">include/compat.inc.php</code>)
<span class="desc-info">
    <span class="box">
        Gibt eine (beliebige) Fehlermeldung aus, falls die reguläre Ausführung von
        Serendipity unmöglich ist.
    </span>
</span>
</p>

<p class="desc">
<code class="item function">serendipity_mb()</code>, 
(<code class="item file">include/lang.inc.php</code>)
<span class="desc-info">
    <span class="box">
        Dient als Wrapper-Funktion, um Multi-Byte-Zeichensatzoperationen durchzuführen.
        PHP bietet für derartige Multi-Byte-Sprachen (asiatische) spezielle Funktionen
        an, was Serendipity für den Programmierer einfacher ansprechbar werden lässt.
    </span>
</span>
</p>

<p class="desc">
<code class="item function">serendipity_serverOffsetHour()</code>, 
(<code class="item file">include/functions.inc.php</code>)
<span class="desc-info">
    <span class="box">
        Liefert einen UNIX-Zeitstempel zurück, der abhängig von der Konfiguration des
        Servers in die richtige Zeitzone umgerechnet wurde.
    </span>
</span>
</p>

<p class="desc">
<code class="item function">serendipity_strftime()</code>, 
<code class="item function">serendipity_formatTime()</code>, 
(<code class="item file">include/functions.inc.php</code>)
<span class="desc-info">
    <span class="box">
        Konvertiert einen UNIX-Zeitstempel in ein lesbares Format und wendet etwaige
        Zeitzonen-Umrechnungen an.
    </span>
</span>
</p>

<p class="desc">
<code class="item function">serendipity_walkRecursive()</code>, 
(<code class="item file">include/functions.inc.php</code>)
<span class="desc-info">
    <span class="box">
        Dient als Hilfsfunktion, um eine hierarchische Struktur innerhalb eines
        eindimensionalen Arrays zu durchwandern und aufzubereiten. Dies wird vor allem
        für verschachtelte Kategorien und Kommentare verwendet, die eine Verschachtelung
        anhand eines <code>parent_id</code>-Array-Schlüssels angeben.
    </span>
    <span class="box">
        Üblicherweise enthält zB. die Liste von Kategorien keine hierarchische
        Struktur, sondern jede Kategorie ist in eine eindimensionale Liste alphabetisch
        einsortiert. Der Sinn der Funktion <code>serendipity_walkRecursive</code> ist es nun,
        das Array später korrekt eingerückt darzustellen, so dass Unterkategorien
        sequentiell direkt auf die Oberkategorie folgen und mit Leerzeichen (oder
        anderen Zeichen) eingerückt werden.
    </span>
</span>
</p>

<p class="desc">
<code class="item function">serendipity_sendMail()</code>, 
(<code class="item file">include/functions.inc.php</code>)
<span class="desc-info">
    <span class="box">
        Sendet eine E-Mail mit Serendipity-Kopf- und -Fußzeilen.
    </span>
</span>
</p>

<p class="desc">
<code class="item function">serendipity_utf8_encoded()</code>, 
(<code class="item file">include/functions.inc.php</code>)
<span class="desc-info">
    <span class="box">
        Kodiert eine Zeichenkette im Zeichensatz des Blogs in das UTF-8-Format. Falls
        die Zeichenkette bereits im UTF-8-Format vorliegt, wird keine weitere
        Umkodierung vorgenommen.
    </span>
</span>
</p>

<p class="desc">
<code class="item function">serendipity_parseFileName()</code>, 
(<code class="item file">include/functions.inc.php</code>)
<span class="desc-info">
    <span class="box">
        Teilt eine Datei in ihre Bestandteile auf (Grundname, Datei-Endung).
    </span>
</span>

</p><p class="desc">
<code class="item function">serendipity_trackReferrer()</code>, 
(<code class="item file">include/functions.inc.php</code>)
<span class="desc-info">
    <span class="box">
        Liest den HTTP-Referrer aus und speichert ihn für statistische Zwecke in der Datenbank.
    </span>
</span>
</p>

<p class="desc">
<code class="item function">serendipity_request_start()</code>, 
<code class="item function">serendipity_request_end()</code>, 
(<code class="item file">include/functions.inc.php</code>)
<span class="desc-info">
    <span class="box">
        Führt bestimmte Operationen aus, bevor/nachdem Serendipity eine fremde URL
        aufruft. Dies dient der Verhinderung von Schreibproblemen mit PHP-Sessions.
    </span>
</span>
</p>

<p class="desc">
<code class="item function">serendipity_build_query()</code>, 
(<code class="item file">include/functions.inc.php</code>)
<span class="desc-info">
    <span class="box">
        Erstellt eine Zeichenkette anhand eines übergebenen Arrays, damit dessen Werte
        zB. in einer HTTP-GET-URL übertragen werden können.
    </span>
</span>
</p>

<p class="desc">
<code class="item function">serendipity_pickKey()</code>, 
(<code class="item file">include/functions.inc.php</code>)
<span class="desc-info">
    <span class="box">
        Dient als Smarty-Modifier, um die Elemente eines Unter-Arrays auszuliefern.
    </span>
</span>
</p>

<p class="desc">
<code class="item function">serendipity_getTemplateFile()</code>, 
(<code class="item file">include/functions_config.inc.php</code>)
<span class="desc-info">
    <span class="box">
        Liefert den vollen Pfad zu einer gewünschten Datei des aktuellen Templates.
    </span>
</span>
</p>

<p class="desc">
<code class="item function">serendipity_load_configuration()</code>, 
(<code class="item file">include/functions_config.inc.php</code>)
<span class="desc-info">
    <span class="box">
        Liest alle Konfigurationswerte Serendipity in das zentrale
        <code>$serendipity</code>-Array.
    </span>
</span>
</p>

<p class="desc">
<code class="item function">serendipity_logout()</code>, 
(<code class="item file">include/functions_config.inc.php</code>)
<span class="desc-info">
    <span class="box">
        Führt das Logout eines Benutzers durch.
    </span>
</span>
</p>

<p class="desc">
<code class="item function">serendipity_session_destroy()</code>, 
(<code class="item file">include/functions_config.inc.php</code>)
<span class="desc-info">
    <span class="box">
        Löscht alle PHP-Sessiondaten des aktuellen Benutzers, um ihn vollständig
        auszuloggen.
    </span>
</span>
</p>

<p class="desc">
<code class="item function">serendipity_login()</code>, 
<code class="item function">serendipity_authenticate_author()</code>, 
(<code class="item file">include/functions_config.inc.php</code>)
<span class="desc-info">
    <span class="box">
        Wertet den Login eines Benutzers aus und initalisiert dessen Konfigurationswerte.
    </span>
</span>
</p>

<p class="desc">
<code class="item function">serendipity_issueAutologin()</code>, 
<code class="item function">serendipity_setAuthorToken()</code>, 
(<code class="item file">include/functions_config.inc.php</code>)
<span class="desc-info">
    <span class="box">
        Setzt ein Login-Cookie, damit ein Benutzer automatisch bei den folgenden Seitenaufrufen
        eingeloggt werden kann.
    </span>
</span>
</p>

<p class="desc">
<code class="item function">serendipity_checkAutologin()</code>, 
(<code class="item file">include/functions_config.inc.php</code>)
<span class="desc-info">
    <span class="box">
        Wertet ein automatisches Login-Cookie eines Benutzers aus.
    </span>
</span>
</p>

<p class="desc">
<code class="item function">serendipity_userLoggedIn()</code>, 
(<code class="item file">include/functions_config.inc.php</code>)
<span class="desc-info">
    <span class="box">
        Liefert zurück, ob ein Benutzer momentan eingeloggt ist.
    </span>
</span>
</p>

<p class="desc">
<code class="item function">serendipity_JSsetcookie()</code>, 
(<code class="item file">include/functions_config.inc.php</code>)
<span class="desc-info">
    <span class="box">
        Gibt JavaScript-Code aus, um ein Cookie zu setzen.
    </span>
</span>
</p>

<p class="desc">
<code class="item function">serendipity_setCookie()</code>, 
(<code class="item file">include/functions_config.inc.php</code>)
<span class="desc-info">
    <span class="box">
        Setzt ein Cookie.
    </span>
</span>
</p>

<p class="desc">
<code class="item function">serendipity_deleteCookie()</code>, 
(<code class="item file">include/functions_config.inc.php</code>)
<span class="desc-info">
    <span class="box">
        Löscht ein Cookie.
    </span>
</span>
</p>

<p class="desc">
<code class="item function">serendipity_is_iframe()</code>, 
(<code class="item file">include/functions_config.inc.php</code>)
<span class="desc-info">
    <span class="box">
        Prüft, ob ein iframe zur Vorschau eines Artikels im Backend eingebunden werden muss.
    </span>
</span>
</p>

<p class="desc">
<code class="item function">serendipity_iframe()</code>, 
<code class="item function">serendipity_iframe_create()</code>, 
(<code class="item file">include/functions_config.inc.php</code>)
<span class="desc-info">
    <span class="box">
        Erstellt einen iframe zur Artikelvorschau im Backend.
    </span>
</span>
</p>

<p class="desc">
<code class="item function">serendipity_probeInstallation()</code>, 
(<code class="item file">include/functions_config.inc.php</code>)
<span class="desc-info">
    <span class="box">
        Prüft, welche Voraussetzungen zur Installation der Server unterstützt
        (Datenbanken, URL-Umformung).
    </span>
</span>
</p>

<p class="desc">
<code class="item function">serendipity_header()</code>, 
(<code class="item file">include/functions_config.inc.php</code>)
<span class="desc-info">
    <span class="box">
        Sendet einen HTTP-Header.
    </span>
</span>
</p>

<p class="desc">
<code class="item function">serendipity_getSessionLanguage()</code>, 
(<code class="item file">include/functions_config.inc.php</code>)
<span class="desc-info">
    <span class="box">
        Liefert die aktuelle Sprache des Besuchers.
    </span>
</span>
</p>

<p class="desc">
<code class="item function">is_utf8()</code>, 
(<code class="item file">include/functions_trackbacks.inc.php</code>)
<span class="desc-info">
    <span class="box">
        Prüft, ob eine Zeichenkette im UTF-8-Zeichensatz vorliegt.
    </span>
</span>
</p>

<p class="desc">
<code class="item function">_serendipity_send()</code>, 
(<code class="item file">include/functions_trackbacks.inc.php</code>)
<span class="desc-info">
    <span class="box">
        Öffnet eine Socket-Verbindung zu einem fremden Server und sendet Daten (meist Trackbacks/Pingbacks).
    </span>
</span>
</p>

<p class="desc">
<code class="item function">serendipity_specialchars()</code>, 
(<code class="item file">include/compat.inc.php</code>)
<span class="desc-info">
    <span class="box">
        Seit PHP 5.4 reagiert die wichtige <code>PHP</code>-Funktion <code>htmlspecialchars()</code>
        auf das <em>default-encoding</em> und kann unter Umständen einen leeren String zurückgeben,
        wenn ein nativ-kodierter String <code>Umlaute</code> enthält. Verwenden Sie deshalb sicherheitshalber
        immer diese zentrale Serendipity Funktion:
        <span id="pre-style"><code class="php">
            serendipity_specialchars($string);
        </code></span>
        bzw. in Plugins/Themes die möglicherweise auf ältere Serendipity Versionen stoßen dürfen, diesen <em>Ternary</em>-Operator:
        <span id="pre-style"><code class="php">
            (function_exists('serendipity_specialchars') ? serendipity_specialchars($string) : htmlspecialchars($string, ENT_COMPAT, LANG_CHARSET))
        </code></span>
    </span>
</span><br>
</p>

</section><!-- section.sub end -->

<section id="U1052" class="sub">
<span class="u-toc">10.5.2 - Redakteure, Rechte</span>

<h3 class="subsection" id="redakteure-rechte">Redakteure, Rechte</h3>

<p>Funktionen zur Verwaltung von Redakteuren und deren Rechten.</p>

<p class="desc">
<code class="item function">serendipity_fetchUsers()</code>, 
(<code class="item file">include/functions.inc.php</code>)
<span class="desc-info">
    <span class="box">
        Holt ein Array mit der Liste aller verfügbaren Serendipity-Redakteure.
    </span>
</span>
</p>

<p class="desc">
<code class="item function">serendipity_fetchUser()</code>, 
(<code class="item file">include/functions.inc.php</code>)
<span class="desc-info">
    <span class="box">
        Holt ein Array mit den Eigenschaften eines speziellen Serendipity-Redakteurs.
    </span>
</span>
</p>

<p class="desc">
<code class="item function">serendipity_addAuthor()</code>, 
(<code class="item file">include/functions_config.inc.php</code>)
<span class="desc-info">
    <span class="box">
        Fügt einen neuen Redakteur hinzu.
    </span>
</span>
</p>

<p class="desc">
<code class="item function">serendipity_deleteAuthor()</code>, 
(<code class="item file">include/functions_config.inc.php</code>)
<span class="desc-info">
    <span class="box">
        Löscht einen Redakteur.
    </span>
</span>
</p>

<p class="desc">
<code class="item function">serendipity_remove_config_var()</code>, 
(<code class="item file">include/functions_config.inc.php</code>)
<span class="desc-info">
    <span class="box">
        Entfernt eine Konfigurationsoption eines Redakteurs.
    </span>
</span>
</p>

<p class="desc">
<code class="item function">serendipity_set_config_var()</code>, 
<code class="item function">serendipity_set_user_var()</code>, 
(<code class="item file">include/functions_config.inc.php</code>)
<span class="desc-info">
    <span class="box">
        Setzt einen Konfigurationswert eines Redakteurs.
    </span>
</span>
</p>

<p class="desc">
<code class="item function">serendipity_get_config_var()</code>, 
<code class="item function">serendipity_get_user_var()</code>, 
(<code class="item file">include/functions_config.inc.php</code>)
<span class="desc-info">
    <span class="box">
        Liest den Konfigurationswert eines Redakteurs aus.
    </span>
</span>
</p>

<p class="desc">
<code class="item function">serendipity_getPermissions()</code>, 
(<code class="item file">include/functions_config.inc.php</code>)
<span class="desc-info">
    <span class="box">
        Liefert die Rechte eines Redakteurs zurück.
    </span>
</span>
</p>

<p class="desc">
<code class="item function">serendipity_getPermissionNames()</code>, 
(<code class="item file">include/functions_config.inc.php</code>)
<span class="desc-info">
    <span class="box">
        Liefert alle verfügbaren internen Rechte sowie deren Einteilung in die
        Benutzerränge von älteren Serendipity-Versionen zurück.
    </span>
</span>
</p>

<p class="desc">
<code class="item function">serendipity_getDBPermissionNames()</code>, 
(<code class="item file">include/functions_config.inc.php</code>)
<span class="desc-info">
    <span class="box">
        Liefert alle in der Datenbank hinterlegten Rechte zurück. Dort können auch
        etwaige von Plugins vergebene Rechte miteinbezogen werden.
    </span>
</span>
</p>

<p class="desc">
<code class="item function">serendipity_getAllPermissionNames()</code>, 
(<code class="item file">include/functions_config.inc.php</code>)
<span class="desc-info">
    <span class="box">
        Liefert alle verfügbaren Rechte (interne und aus der Datenbank) zurück.
    </span>
</span>
</p>

<p class="desc">
<code class="item function">serendipity_checkPermission()</code>, 
(<code class="item file">include/functions_config.inc.php</code>)
<span class="desc-info">
    <span class="box">
        Prüft, ob ein Redakteur ein bestimmtes Recht besitzt.
    </span>
</span>
</p>

<p class="desc">
<code class="item function">serendipity_updateGroups()</code>, 
(<code class="item file">include/functions_config.inc.php</code>)
<span class="desc-info">
    <span class="box">
        Aktualisiert die Gruppenmitgliedschaften eines Redakteurs.
    </span>
</span>
</p>

<p class="desc">
<code class="item function">serendipity_getAllGroups()</code>, 
(<code class="item file">include/functions_config.inc.php</code>)
<span class="desc-info">
    <span class="box">
        Liefert alle eingerichteten Benutzergruppen zurück.
    </span>
</span>
</p>

<p class="desc">
<code class="item function">serendipity_fetchGroup()</code>, 
(<code class="item file">include/functions_config.inc.php</code>)
<span class="desc-info">
    <span class="box">
        Liefert die einer Benutzergruppe zugeordneten Rechte zurück.
    </span>
</span>
</p>

<p class="desc">
<code class="item function">serendipity_getGroups()</code>, 
(<code class="item file">include/functions_config.inc.php</code>)
<span class="desc-info">
    <span class="box">
        Liefert alle Gruppenmitgliedschaften eines Redakteurs zurück.
    </span>
</span>
</p>

<p class="desc">
<code class="item function">serendipity_getGroupUsers()</code>, 
(<code class="item file">include/functions_config.inc.php</code>)
<span class="desc-info">
    <span class="box">
        Liefert alle Mitglieder einer gewünschten Benutzergruppe zurück.
    </span>
</span>
</p>

<p class="desc">
<code class="item function">serendipity_deleteGroup()</code>, 
(<code class="item file">include/functions_config.inc.php</code>)
<span class="desc-info">
    <span class="box">
        Löscht eine Benutzergruppe.
    </span>
</span>
</p>

<p class="desc">
<code class="item function">serendipity_addGroup()</code>, 
(<code class="item file">include/functions_config.inc.php</code>)
<span class="desc-info">
    <span class="box">
        Fügt eine Benutzergruppe hinzu.
    </span>
</span>
</p>

<p class="desc">
<code class="item function">serendipity_addDefaultGroup()</code>, 
(<code class="item file">include/functions_config.inc.php</code>)
<span class="desc-info">
    <span class="box">
        Konvertiert einen Benutzerrang einer alten Serendipity-Installation in eine neue
        Benutzergruppe gleichen Namens.
    </span>
</span>
</p>

<p class="desc">
<code class="item function">serendipity_intersectGroup()</code>, 
(<code class="item file">include/functions_config.inc.php</code>)
<span class="desc-info">
    <span class="box">
        Prüft, ob ein gewünschter Benutzer in derselben Gruppe ist wie der derzeit
        eingeloggte Redakteur.
    </span>
</span>
</p>

<p class="desc">
<code class="item function">serendipity_updateGroupConfig()</code>, 
(<code class="item file">include/functions_config.inc.php</code>)
<span class="desc-info">
    <span class="box">
        Aktualisiert die einer Benutzergruppe zugewiesenen Rechte.
    </span>
</span>
</p>

<p class="desc">
<code class="item function">serendipity_ACLGrant()</code>, 
(<code class="item file">include/functions_config.inc.php</code>)
<span class="desc-info">
    <span class="box">
        Gewährt einer Benutzergruppe Zugriff auf einen speziellen Objekttyp
        (hauptsächlich für Objekte der Mediathek).
    </span>
</span>
</p>

<p class="desc">
<code class="item function">serendipity_ACLGet()</code>, 
(<code class="item file">include/functions_config.inc.php</code>)
<span class="desc-info">
    <span class="box">
        Prüft, ob ein Benutzer anhand seiner Gruppenmitgliedschaften Zugriff auf einen
        speziellen Objekttyp besitzt.
    </span>
</span>
</p>

<p class="desc">
<code class="item function">serendipity_ACL_SQL()</code>, 
(<code class="item file">include/functions_config.inc.php</code>)
<span class="desc-info">
    <span class="box">
        Liefert Teile einer SQL-Abfrage, die benötigt werden, um Zugriffe auf bestimmte
        Objekttypen (Mediathek, Kategorien ...) in Abhängigkeit von den
        Gruppenmitgliedschaften auszuwerten.
    </span>
</span>
</p>

<p class="desc">
<code class="item function">serendipity_hasPluginPermissions()</code>, 
(<code class="item file">include/functions_config.inc.php</code>)
<span class="desc-info">
    <span class="box">
        Prüft, ob es einem Redakteur erlaubt ist, die Funktionalitäten eines
        auszuführenden Plugins aufzurufen (siehe Seite <span class="pageref"><a href="#verboteneplugins">verboteneplugins</a></span>).
    </span>
</span>
</p>

<p class="desc">
<code class="item function">serendipity_checkXSRF()</code>, 
<code class="item function">serendipity_reportXSRF()</code>, 
(<code class="item file">include/functions_config.inc.php</code>)
<span class="desc-info">
    <span class="box">
        Prüft bei einem Seitenaufruf, ob der Redakteur diese Aktion tatsächlich
        willentlich ausgelöst hat oder ob er Opfer einer XSRF-Attacke (siehe Seite <span class="pageref"><a href="#xsrf">xsrf</a></span>)
        war.
    </span>
</span>
</p>

<p class="desc">
<code class="item function">serendipity_checkFormToken()</code>, 
<code class="item function">serendipity_setFormToken()</code>, 
(<code class="item file">include/functions_config.inc.php</code>)
<span class="desc-info">
    <span class="box">
        Setzt bzw. überprüft einen eindeutigen Formularwert (<em>Token</em>) auf gültigen
        Inhalt. Dies wird für die XSRF-Prüfung benötigt.
    </span>
</span>
</p>

<p class="desc">
<code class="item function">show_plugins()</code>, 
(<code class="item file">include/functions_plugins_admin.inc.php</code>)
<span class="desc-info">
    <span class="box">
        Erstellt die Plugin-Verwaltungsansicht im Backend für eine gewünschte
        Plugin-Sektion (Seitenleisten-Plugins, Ereignis-Plugins). Links zum Konfigurieren
        und Verschieben der Plugins werden mit ausgeliefert. Über weitere
        Hilfsfunktionen <code>ownership()</code> und <code>placement_box()</code> werden Teilelemente
        des Layouts (Plugin-Eigentümer, Platzierung) ausgeliefert.
    </span>
</span>
</p>

<p class="desc">
<code class="item function">serendipity_plugin_config()</code>, 
(<code class="item file">include/functions_plugins_admin.inc.php</code>)
<span class="desc-info">
    <span class="box">
        Stellt die Konfigurationsmaske für Plugins dar. Dabei werden die
        Konfigurationswerte der Plugin API entnommen.
    </span>
</span>
</p>

</section><!-- section.sub end -->

<section id="U1053" class="sub">
<span class="u-toc">10.5.3 - Artikel, Kategorien, Kommentare, Trackbacks</span>

<h3 class="subsection" id="artikel-kategorien-kommentare-trackbacks">Artikel, Kategorien, Kommentare, Trackbacks</h3>

<p>Funktionen zur Verwaltung von Artikeln, Kommentaren/Trackbacks und Kategorien.</p>

<p class="desc">
<code class="item function">serendipity_addCategory()</code>, 
(<code class="item file">include/functions.inc.php</code>)
<span class="desc-info">
    <span class="box">
        Fügt dem Blog eine neue Kategorie hinzu.
    </span>
</span>
</p>

<p class="desc">
<code class="item function">serendipity_updateCategory()</code>, 
(<code class="item file">include/functions.inc.php</code>)
<span class="desc-info">
    <span class="box">
        Ändert eine bestehende Kategorie des Blogs.
    </span>
</span>
</p>

<p class="desc">
<code class="item function">serendipity_rememberComment()</code>, 
<code class="item function">serendipity_rememberCommentDetails()</code>, 
<code class="item function">serendipity_forgetCommentDetails()</code>, 
(<code class="item file">include/functions_comments.inc.php</code>)
<span class="desc-info">
    <span class="box">
        Speichert/löscht die Eingaben eines Kommentarformulars in Cookie-Werten.
    </span>
</span>
</p>

<p class="desc">
<code class="item function">serendipity_displayCommentForm()</code>, 
(<code class="item file">include/functions_comments.inc.php</code>)
<span class="desc-info">
    <span class="box">
        Stellt das Kommentarformular dar und weist die notwendigen Smarty-Variablen zu.
    </span>
</span>
</p>

<p class="desc">
<code class="item function">serendipity_fetchComments()</code>, 
(<code class="item file">include/functions_comments.inc.php</code>)
<span class="desc-info">
    <span class="box">
        Holt eine Liste gewünschter Kommentare.
    </span>
</span>
</p>

<p class="desc">
<code class="item function">serendipity_generateCommentList()</code>, 
(<code class="item file">include/functions_comments.inc.php</code>)
<span class="desc-info">
    <span class="box">
        Erstellt ein HTML <code>SELECT</code>-Auswahlfeld mit einer Liste aller gewünschten
        Kommentare.
    </span>
</span>
</p>

<p class="desc">
<code class="item function">serendipity_printComments()</code>, 
(<code class="item file">include/functions_comments.inc.php</code>)
<span class="desc-info">
    <span class="box">
        Stellt eine Liste gewünschter Kommentare mittels Smarty-Templates dar.
    </span>
</span>
</p>

<p class="desc">
<code class="item function">serendipity_printCommentsByAuthor()</code>, 
(<code class="item file">include/functions_comments.inc.php</code>)
<span class="desc-info">
    <span class="box">
        Stellt eine Liste gewünschter Kommentare anhand der Übergabe eines
        Kommentatornamens mittels Smarty-Templates dar.
    </span>
</span>
</p>

<p class="desc">
<code class="item function">serendipity_deleteComment()</code>, 
(<code class="item file">include/functions_comments.inc.php</code>)
<span class="desc-info">
    <span class="box">
        Löscht einen Blog-Kommentar.
    </span>
</span>
</p>

<p class="desc">
<code class="item function">serendipity_allowCommentsToggle()</code>, 
(<code class="item file">include/functions_comments.inc.php</code>)
<span class="desc-info">
    <span class="box">
        Schaltet einen Blog-Artikel für die Kommentierung frei oder hebt diese
        Möglichkeit auf.
    </span>
</span>
</p>

<p class="desc">
<code class="item function">serendipity_approveComment()</code>, 
(<code class="item file">include/functions_comments.inc.php</code>)
<span class="desc-info">
    <span class="box">
        Schaltet einen moderierten Kommentar frei.
    </span>
</span>
</p>

<p class="desc">
<code class="item function">serendipity_saveComment()</code>, 
(<code class="item file">include/functions_comments.inc.php</code>)
<span class="desc-info">
    <span class="box">
        Speichert einen neuen Kommentar zu einem Blog-Artikel und führt etwaige
        Anti-Spam-Prüfungen durch.
    </span>
</span>
</p>

<p class="desc">
<code class="item function">serendipity_mailSubscribers()</code>, 
(<code class="item file">include/functions_comments.inc.php</code>)
<span class="desc-info">
    <span class="box">
        Schickt eine E-Mail an alle Abonnenten eines Blog-Artikels.
    </span>
</span>
</p>

<p class="desc">
<code class="item function">serendipity_cancelSubscription()</code>, 
(<code class="item file">include/functions_comments.inc.php</code>)
<span class="desc-info">
    <span class="box">
        Hebt ein Abonnement eines Blog-Artikels auf.
    </span>
</span>
</p>

<p class="desc">
<code class="item function">serendipity_sendComment()</code>, 
(<code class="item file">include/functions_comments.inc.php</code>)
<span class="desc-info">
    <span class="box">
        Verschickt beim Eintreffen eines neuen Blog-Kommentars eine Information per E-Mail.
    </span>
</span>
</p>

<p class="desc">
<code class="item function">serendipity_deleteCategory()</code>, 
(<code class="item file">include/functions_entries.inc.php</code>)
<span class="desc-info">
    <span class="box">
        Löscht eine Kategorie.
    </span>
</span>
</p>

<p class="desc">
<code class="item function">serendipity_fetchCategoryRange()</code>, 
(<code class="item file">include/functions_entries.inc.php</code>)
<span class="desc-info">
    <span class="box">
        Liefert eine Liste von Blog-Kategorien einer gewünschten Oberkategorie.
    </span>
</span>
</p>

<p class="desc">
<code class="item function">serendipity_getMultiCategoriesSQL()</code>, 
(<code class="item file">include/functions_entries.inc.php</code>)
<span class="desc-info">
    <span class="box">
        Liefert einen SQL-Codeteil, damit eine Artikelabfrage auf bestimmte
        Kategoriezuordnungen eingeschränkt werden kann. Dabei werden etwaige Ober- und
        Unterkategorien korrekt berücksichtigt.
    </span>
</span>
</p>

<p class="desc">
<code class="item function">serendipity_fetchCategoryInfo()</code>, 
(<code class="item file">include/functions_entries.inc.php</code>)
<span class="desc-info">
    <span class="box">
        Liefert die Eigenschaften einer gewünschten Kategorie.
    </span>
</span>
</p>

<p class="desc">
<code class="item function">serendipity_fetchEntries()</code>, 
(<code class="item file">include/functions_entries.inc.php</code>)
<span class="desc-info">
    <span class="box">
        Zentrale Funktion, um eine Liste von Blog-Artikeln zu erhalten, die bestimmten
        Kriterien entsprechen.
    </span>
</span>
</p>

<p class="desc">
<code class="item function">serendipity_fetchEntryData()</code>, 
<code class="item function">serendipity_fetchEntryProperties()</code>, 
(<code class="item file">include/functions_entries.inc.php</code>)
<span class="desc-info">
    <span class="box">
        Weist die erweiterten Eigenschaften von Artikeln und Kategoriezuordnungen einer
        Liste von Blog-Artikeln zu, die mittels <code>serendipity_fetchEntries()</code>
        bezogen wurden.
    </span>
</span>
</p>

<p class="desc">
<code class="item function">serendipity_fetchEntry()</code>, 
(<code class="item file">include/functions_entries.inc.php</code>)
<span class="desc-info">
    <span class="box">
        Liefert einen speziellen Artikeldatensatz mit allen erweiterten Eigenschaften
        und Kategoriezuordnungen zurück.
    </span>
</span>
</p>

<p class="desc">
<code class="item function">serendipity_fetchCategories()</code>, 
(<code class="item file">include/functions_entries.inc.php</code>)
<span class="desc-info">
    <span class="box">
        Liefert eine Liste von Blog-Kategorien, auf die ein gewünschter Redakteur
        Zugriff hat. Kann auch unabhängig vom Redakteur eine Liste aller Kategorien des
        Blogs liefern.
    </span>
</span>
</p>

<p class="desc">
<code class="item function">serendipity_rebuildCategoryTree()</code>, 
(<code class="item file">include/functions_entries.inc.php</code>)
<span class="desc-info">
    <span class="box">
        Führt die notwendigen Datenbankoperationen aus, um bei neu hinzugefügten
        Kategorien die IDs der Nested-Set-Architektur (siehe zB. <code>https://www.klempert.de/nested_sets/</code>)
        korrekt zu setzen.
    </span>
</span>
</p>

<p class="desc">
<code class="item function">serendipity_searchEntries()</code>, 
(<code class="item file">include/functions_entries.inc.php</code>)
<span class="desc-info">
    <span class="box">
        Liefert eine Liste von Blog-Artikeln zurück, die ein gewünschtes Suchwort enthalten.
    </span>
</span>
</p>

<p class="desc">
<code class="item function">serendipity_getTotalEntries()</code>, 
(<code class="item file">include/functions_entries.inc.php</code>)
<span class="desc-info">
    <span class="box">
        Liefert die Anzahl von aktuell im Frontend dargestellten Artikeln zurück.
    </span>
</span>
</p>

<p class="desc">
<code class="item function">serendipity_printEntries()</code>, 
(<code class="item file">include/functions_entries.inc.php</code>)
<span class="desc-info">
    <span class="box">
        Zentrale Funktion, um Blog-Einträge für die Ausgabe im Smarty-Template
        aufzubereiten. Benötigte Variablen und Arrays werden gesetzt, etwaige Plugins
        ausgeführt und an das Smarty-Template <code>entries.tpl</code> weitergegeben.
    </span>
</span>
</p>

<p class="desc">
<code class="item function">serendipity_printEntries_rss()</code>, 
(<code class="item file">include/functions_entries.inc.php</code>)
<span class="desc-info">
    <span class="box">
        Stellt Einträge innerhalb eines RSS-Feeds dar.
    </span>
</span>
</p>

<p class="desc">
<code class="item function">serendipity_deleteEntry()</code>, 
(<code class="item file">include/functions_entries.inc.php</code>)
<span class="desc-info">
    <span class="box">
        Löscht einen Artikel.
    </span>
</span>
</p>

<p class="desc">
<code class="item function">serendipity_updertEntry()</code>, 
(<code class="item file">include/functions_entries.inc.php</code>)
<span class="desc-info">
    <span class="box">
        Aktualisiert einen Artikel oder fügt einen neuen ein (<em>updert</em> =
        <em>Upd</em>ate + Ins<em>ert</em>).
    </span>
</span>
</p>

<p class="desc">
<code class="item function">serendipity_generateCategoryList()</code>, 
(<code class="item file">include/functions_entries.inc.php</code>)
<span class="desc-info">
    <span class="box">
        Erzeugt ein HTML-Ausklappfeld mit allen verfügbaren Kategorien.
    </span>
</span>
</p>

<p class="desc">
<code class="item function">serendipity_fetchCategories() -> serendipity_generateCategoryList()</code>,
(<code class="item file">include/functions_entries.inc.php</code>)
<span class="desc-info">
    <span class="box">
        Aktualisiert die Kategoriezuordnungen eines Artikels.
    </span>
</span>
</p>

<p class="desc">
<code class="item function">serendipity_printArchives()</code>, 
(<code class="item file">include/functions_entries.inc.php</code>)
<span class="desc-info">
    <span class="box">
        Erzeugt eine Archivübersicht mit Artikeln eines gewünschten Zeitraums und gibt
        diese Artikelliste an das Smarty-Template <code>entries_archives.tpl</code> weiter.
    </span>
</span>
</p>

<p class="desc">
<code class="item function">serendipity_getTotalCount()</code>, 
(<code class="item file">include/functions_entries.inc.php</code>)
<span class="desc-info">
    <span class="box">
        Liefert die Anzahl aller im Blog vorhandenen Kommentare, Trackbacks oder
        Artikel zurück.
    </span>
</span>
</p>

<p class="desc">
<code class="item function">serendipity_printEntryForm()</code>, 
(<code class="item file">include/functions_entries_admin.inc.php</code>)
<span class="desc-info">
    <span class="box">
        Stellt das HTML-Formular zum Bearbeiten eines Blog-Artikels im Backend dar.
    </span>
</span>
</p>

<p class="desc">
<code class="item function">serendipity_emit_htmlarea_code()</code>, 
(<code class="item file">include/functions_entries_admin.inc.php</code>)
<span class="desc-info">
    <span class="box">
        Gibt den benötigten JavaScript-Code zurück, damit ein WYSIWYG-Editor angezeigt
        werden kann.
    </span>
</span>
</p>

<p class="desc">
<code class="item function">serendipity_handle_references()</code>, 
(<code class="item file">include/functions_trackbacks.inc.php</code>)
<span class="desc-info">
    <span class="box">
        Überprüft alle in einem Blog-Artikel enthaltenen Links und speichert sie in den
        entsprechenden Datenbanktabellen.
    </span>
</span>
</p>

<p class="desc">
<code class="item function">serendipity_trackback_is_success()</code>, 
<code class="item function">serendipity_pingback_is_success()</code>, 
(<code class="item file">include/functions_trackbacks.inc.php</code>)
<span class="desc-info">
    <span class="box">
        Prüft, ob ein Trackback/Pingback gültig versendet wurde.
    </span>
</span>
</p>

<p class="desc">
<code class="item function">serendipity_pingback_autodiscover()</code>, 
<code class="item function">serendipity_trackback_autodiscover()</code>, 
(<code class="item file">include/functions_trackbacks.inc.php</code>)
<span class="desc-info">
    <span class="box">
        Überprüft einen Blog-Artikel auf Trackback/Pingback-Links und führt diese aus.
    </span>
</span>
</p>

<p class="desc">
<code class="item function">serendipity_reference_autodiscover()</code>, 
(<code class="item file">include/functions_trackbacks.inc.php</code>)
<span class="desc-info">
    <span class="box">
        Überprüft einen Blog-Artikel auf enthaltene Hyperlinks und speichert diese in der Datenbank.
    </span>
</span>
</p>

<p class="desc">
<code class="item function">add_trackback()</code>, 
<code class="item function">add_pingback()</code>, 
(<code class="item file">include/functions_trackbacks.inc.php</code>)
<span class="desc-info">
    <span class="box">
        Speichert ein eingehendes Trackback/Pingback.
    </span>
</span>
</p>

<p class="desc">
<code class="item function">report_trackback_success()</code>, 
<code class="item function">report_trackback_failure()</code>, 
<code class="item function">report_pingback_success()</code>, 
<code class="item function">report_pingback_failure()</code>, 
(<code class="item file">include/functions_trackbacks.inc.php</code>)
<span class="desc-info">
    <span class="box">
        Liefert XML-Code für eine Erfolgs-/Fehlermeldung bei einem Trackback/Pingback zurück.
    </span>
</span>
</p>

</section><!-- section.sub end -->

<section id="U1054" class="sub">
<span class="u-toc">10.5.4 - Permalinks</span>

<h3 class="subsection" id="permalinks-1">Permalinks</h3>

<p>Funktionen zur Behandlung von URLs und Permalinks.</p>

<p class="desc">
<code class="item function">serendipity_makeFilename()</code>, 
(<code class="item file">include/functions_permalinks.inc.php</code>)
<span class="desc-info">
    <span class="box">
        Konvertiert eine Zeichenkette in ein Format, das innerhalb einer URL ohne
        Sonderzeichen verwendet werden kann.
    </span>
</span>
</p>

<p class="desc">
<code class="item function">serendipity_initPermalinks()</code>, 
(<code class="item file">include/functions_permalinks.inc.php</code>)
<span class="desc-info">
    <span class="box">
        Setzt die Serendipity-Variablen, die die Konfiguration der Permalinks enthalten.
    </span>
</span>
</p>

<p class="desc">
<code class="item function">serendipity_permalinkPatterns()</code>, 
(<code class="item file">include/functions_permalinks.inc.php</code>)
<span class="desc-info">
    <span class="box">
        Erzeugt eine Liste von regulären Ausdrücken, die verwendet werden, um zu prüfen,
        ob die aktuelle URL einem festgelegten Permalink entspricht.
    </span>
</span>
</p>

<p class="desc">
<code class="item function">serendipity_searchPermalink()</code>, 
(<code class="item file">include/functions_permalinks.inc.php</code>)
<span class="desc-info">
    <span class="box">
        Durchsucht die Datenbank nach einem Permalink für die aktuelle URL.
    </span>
</span>
</p>

<p class="desc">
<code class="item function">serendipity_getPermalink()</code>, 
<code class="item function">serendipity_rewriteURL()</code>, 
<code class="item function">serendipity_archiveURL()</code>, 
<code class="item function">serendipity_authorURL()</code>, 
<code class="item function">serendipity_categoryURL()</code>, 
<code class="item function">serendipity_feedCategoryURL()</code>, 
<code class="item function">serendipity_feedAutorURL()</code>, 
<code class="item function">serendipity_archiveDateUrl()</code>, 
(<code class="item file">include/functions_permalinks.inc.php</code>)
<span class="desc-info">
    <span class="box">
        Gibt einen Permalink zu einem Objekt (Blog-Artikel, Redakteur, Kategorie) aus.
    </span>
</span>
</p>

<p class="desc">
<code class="item function">serendipity_updatePermalink()</code>, 
(<code class="item file">include/functions_permalinks.inc.php</code>)
<span class="desc-info">
    <span class="box">
        Aktualisiert einen in der Datenbank gespeicherten Permalink.
    </span>
</span>
</p>

<p class="desc">
<code class="item function">serendipity_insertPermalink()</code>, 
(<code class="item file">include/functions_permalinks.inc.php</code>)
<span class="desc-info">
    <span class="box">
        Fügt einen Permalink in die Datenbank ein, so dass die Ansicht des gewünschten
        Objekts (Artikel, Redakteur, Kategorie) später über diese URL wieder aufgerufen
        werden kann.
    </span>
</span>
</p>

<p class="desc">
<code class="item function">serendipity_buildPermalinks()</code>, 
(<code class="item file">include/functions_permalinks.inc.php</code>)
<span class="desc-info">
    <span class="box">
        Erzeugt Permalinks in der Datenbank für alle Artikel, Redakteure und Kategorien
        des Blogs. Dabei wird die momentan konfigurierte Permalink-Struktur verwendet.
    </span>
</span>
</p>

<p class="desc">
<code class="item function">serendipity_makePermalink()</code>,
<code class="item function">serendipity_makePermalinkRegex()</code>,
(<code class="item file">include/functions_permalinks.inc.php</code>)
<span class="desc-info">
    <span class="box">
        Erzeugt einen Permalink, indem die Platzhalter der Permalink-Konfiguration durch
        die Werte des aufrufenden Objekts ersetzt werden.
    </span>
</span>
</p>

<p class="desc">
<code class="item function">serendipity_currentURL()</code>, 
(<code class="item file">include/functions_permalinks.inc.php</code>)
<span class="desc-info">
    <span class="box">
        Liefert die URL des im Frontend dargestellten Permalinks.
    </span>
</span>
</p>

<p class="desc">
<code class="item function">serendipity_getUriArguments()</code>, 
(<code class="item file">include/functions_permalinks.inc.php</code>)
<span class="desc-info">
    <span class="box">
        Liefert die URL-Bestandteile des im Frontend dargestellten Permalinks.
    </span>
</span>
</p>

</section><!-- section.sub end -->

<section id="U1055" class="sub">
<span class="u-toc">10.5.5 - Installation, Upgrades</span>

<h3 class="subsection" id="installation-upgrades">Installation, Upgrades</h3>

<p>Funktionen zur Installation und Aktualisierung Serendipitys.</p>

<p class="desc">
<code class="item function">serendipity_ini_bool()</code>, 
<code class="item function">serendipity_ini_bytesize()</code>, 
(<code class="item file">include/functions_installer.inc.php</code>)
<span class="desc-info">
    <span class="box">
        Liest PHP-Konfigurationswerte ein und wandelt sie in ein von Serendipity
        interpretierbares Format um.
    </span>
</span>
</p>

<p class="desc">
<code class="item function">serendipity_updateLocalConfig()</code>, 
(<code class="item file">include/functions_installer.inc.php</code>)
<span class="desc-info">
    <span class="box">
        Aktualisiert die zentrale Konfigurationsdatei <code>serendipity_config_local.inc.php</code>
        mit den aktuellen Konfigurationswerten.
    </span>
</span>
</p>

<p class="desc">
<code class="item function">serendipity_installDatabase()</code>, 
<code class="item function">serendipity_parse_sql_tables()</code>, 
<code class="item function">serendipity_parse_sql_inserts()</code>, 
(<code class="item file">include/functions_installer.inc.php</code>)
<span class="desc-info">
    <span class="box">
        Richtet die Datenbank ein und erstellt die Serendipity-Tabellen.
    </span>
</span>
</p>

<p class="desc">
<code class="item function">serendipity_query_default()</code>, 
(<code class="item file">include/functions_installer.inc.php</code>)
<span class="desc-info">
    <span class="box">
        Prüft einen Konfigurationswert auf jeweils sinnvolle Voreinstellungen bei der Installation.
    </span>
</span>
</p>

<p class="desc">
<code class="item function">serendipity_check_rewrite()</code>, 
(<code class="item file">include/functions_installer.inc.php</code>)
<span class="desc-info">
    <span class="box">
        Prüft, ob der Server dynamische URL-Umformung unterstützt.
    </span>
</span>
</p>

<p class="desc">
<code class="item function">serendipity_parseTemplate()</code>, 
<code class="item function">serendipity_printConfigTemplate()</code>, 
(<code class="item file">include/functions_installer.inc.php</code>)
<span class="desc-info">
    <span class="box">
        Stellt die Konfigurationsoptionen dar, die durch die Dateien
        <code>include/tpl/config_local.inc.php</code> oder
        <code>include/tpl/config_personal.inc.php</code> bestimmt werden.
    </span>
</span>
</p>

<p class="desc">
<code class="item function">serendipity_checkConfigItemFlags()</code>, 
(<code class="item file">include/functions_installer.inc.php</code>)
<span class="desc-info">
    <span class="box">
        Prüft die Werte der einzelnen Konfigurationsoptionen, um deren Ausgabeort zu bestimmen.
    </span>
</span>
</p>

<p class="desc">
<code class="item function">serendipity_guessInput()</code>, 
(<code class="item file">include/functions_installer.inc.php</code>)
<span class="desc-info">
    <span class="box">
        Gibt den HTML-Code für eine Konfigurationsoption zurück (einzeilige
        Texteingabefelder, Ja/Nein-Schalter, Auswahlfelder etc.)
    </span>
</span>
</p>

<p class="desc">
<code class="item function">serendipity_checkInstallation()</code>, 
(<code class="item file">include/functions_installer.inc.php</code>)
<span class="desc-info">
    <span class="box">
        Prüft, ob die Serendipity-Installation problemlos durchgeführt werden konnte.
    </span>
</span>
</p>

<p class="desc">
<code class="item function">serendipity_installFiles()</code>, 
(<code class="item file">include/functions_installer.inc.php</code>)
<span class="desc-info">
    <span class="box">
        Erzeugt die für Serendipity notwendigen Dateien bei der Installation
        (<code>.htaccess</code> und <code>serendipity_config_local.inc.php</code>).
    </span>
</span>
</p>

<p class="desc">
<code class="item function">serendipity_updateConfiguration()</code>, 
(<code class="item file">include/functions_installer.inc.php</code>)
<span class="desc-info">
    <span class="box">
        Aktualisiert die zentralen Serendipity-Dateien und die Datenbank, wenn sich wichtige
        Konfigurationswerte (Permalinks) ändern.
    </span>
</span>
</p>

<p class="desc">
<code class="item function">serendipity_httpCoreDir()</code>, 
(<code class="item file">include/functions_installer.inc.php</code>)
<span class="desc-info">
    <span class="box">
        Liefert den aktuellen Systempfad zum Serendipity-Verzeichnis.
    </span>
</span>
</p>

</section><!-- section.sub end -->

<section id="U1056" class="sub">
<span class="u-toc">10.5.6 - Bilder</span>

<h3 class="subsection" id="bilder">Bilder</h3>

<p>Funktionen zur Mediathek.</p>

<p class="desc">
<code class="item function">serendipity_isActiveFile()</code>, 
(<code class="item file">include/functions_images.inc.php</code>)
<span class="desc-info">
    <span class="box">
        Prüft, ob eine hochzuladende Datei eine potenziell gefährliche Dateiendung besitzt.
    </span>
</span>
</p>

<p class="desc">
<code class="item function">serendipity_fetchImagesFromDatabase()</code>, 
(<code class="item file">include/functions_images.inc.php</code>)
<span class="desc-info">
    <span class="box">
        Holt eine Liste von gewünschten Objekten der Mediathek.
    </span>
</span>
</p>

<p class="desc">
<code class="item function">serendipity_fetchImageFromDatabase()</code>, 
(<code class="item file">include/functions_images.inc.php</code>)
<span class="desc-info">
    <span class="box">
        Holt eine einzelnes Objekt aus der Mediathek.
    </span>
</span>
</p>

<p class="desc">
<code class="item function">serendipity_updateImageInDatabase()</code>, 
(<code class="item file">include/functions_images.inc.php</code>)
<span class="desc-info">
    <span class="box">
        Aktualisiert ein Objekt der Mediathek.
    </span>
</span>
</p>

<p class="desc">
<code class="item function">serendipity_deleteImage()</code>, 
(<code class="item file">include/functions_images.inc.php</code>)
<span class="desc-info">
    <span class="box">
        Löscht ein Objekt der Mediathek.
    </span>
</span>
</p>

<p class="desc">
<code class="item function">serendipity_fetchImages()</code>, 
(<code class="item file">include/functions_images.inc.php</code>)
<span class="desc-info">
    <span class="box">
        Holt eine Liste von Mediendateien direkt aus der Verzeichnisstruktur anstelle
        der Mediathek.
    </span>
</span>
</p>

<p class="desc">
<code class="item function">serendipity_insertHotlinkedImageInDatabase()</code>, 
(<code class="item file">include/functions_images.inc.php</code>)
<span class="desc-info">
    <span class="box">
        Fügt einen Verweis zu einer Mediendatei eines fremden Servers in die eigene
        Mediathek ein.
    </span>
</span>
</p>

<p class="desc">
<code class="item function">serendipity_insertImageInDatabase()</code>, 
(<code class="item file">include/functions_images.inc.php</code>)
<span class="desc-info">
    <span class="box">
        Fügt der Mediathek eine Datei hinzu.
    </span>
</span>
</p>

<p class="desc">
<code class="item function">serendipity_makeThumbnail()</code>, 
(<code class="item file">include/functions_images.inc.php</code>)
<span class="desc-info">
    <span class="box">
        Erzeugt ein Vorschaubild einer Datei.
    </span>
</span>
</p>

<p class="desc">
<code class="item function">serendipity_scaleImg()</code>, 
<code class="item function">[serendipity_resize_image_gd() deprecated], serendipity_resizeImageGD()</code>,
(<code class="item file">include/functions_images.inc.php</code>)
<span class="desc-info">
    <span class="box">
        Ändert die Größe eines Bildes.
    </span>
</span>
</p>

<p class="desc">
<code class="item function">serendipity_rotateImg()</code>, 
<code class="item function">[serendipity_rotate_image_gd() deprecated], serendipity_rotateImageGD()</code>,
(<code class="item file">include/functions_images.inc.php</code>)
<span class="desc-info">
    <span class="box">
        Rotiert ein Bild.
    </span>
</span>
</p>

<p class="desc">
<code class="item function">serendipity_generateThumbs()</code>, 
<code class="item function">serendipity_syncThumbs()</code>, 
(<code class="item file">include/functions_images.inc.php</code>)
<span class="desc-info">
    <span class="box">
        Erzeugt Vorschaubilder aller Dateien der Mediathek.
    </span>
</span>
</p>

<p class="desc">
<code class="item function">serendipity_guessMime()</code>, 
(<code class="item file">include/functions_images.inc.php</code>)
<span class="desc-info">
    <span class="box">
        Erkennt den MIME-Typ einer Datei anhand des Dateinamens.
    </span>
</span>
</p>

<p class="desc">
<code class="item function">[serendipity_functions_gd() deprecated], serendipity_functionsGD()</code>,
(<code class="item file">include/functions_images.inc.php</code>)
<span class="desc-info">
    <span class="box">
        Kapselt PHP-Grafikfunktionen und liefert den richtigen PHP-Funktionsnamen in
        Abhängigkeit vom gewählten Dateiformat zurück.
    </span>
</span>
</p>

<p class="desc">
<code class="item function">[serendipity_calculate_aspect_size() deprecated], serendipity_calculateAspectSize()</code>,
(<code class="item file">include/functions_images.inc.php</code>)
<span class="desc-info">
    <span class="box">
        Berechnet die notwendigen Bildmaße, wenn ein Bild proportional verkleinert oder
        vergrößert werden soll.
    </span>
</span>
</p>

<p class="desc">
<code class="item function">serendipity_displayImageList()</code>, 
(<code class="item file">include/functions_images.inc.php</code>)
<span class="desc-info">
    <span class="box">
        Stellt eine Übersicht der Objekte der Mediathek dar. Die
        darzustellenden Objekte werden anhand der Benutzereingaben ausgelesen und
        mittels Smarty-Variablen und Templates dargestellt.
    </span>
</span>
</p>

<p class="desc">
<code class="item function">serendipity_isImage()</code>, 
(<code class="item file">include/functions_images.inc.php</code>)
<span class="desc-info">
    <span class="box">
        Prüft, ob ein Objekt der Mediathek ein Bild ist.
    </span>
</span>
</p>

<p class="desc">
<code class="item function">serendipity_killPath()</code>, 
<code class="item function">serendipity_deletePath()</code>, 
(<code class="item file">include/functions_images.inc.php</code>)
<span class="desc-info">
    <span class="box">
        Löscht ein Verzeichnis mitsamt Unterverzeichnissen und darin
        enthaltenen Dateien.
    </span>
</span>
</p>

<p class="desc">
<code class="item function">serendipity_traversePath()</code>, 
(<code class="item file">include/functions_images.inc.php</code>)
<span class="desc-info">
    <span class="box">
        Durchsucht ein Verzeichnis mitsamt seiner Unterverzeichnisse nach Dateien und
        liefert eine Verzeichnis- und Dateiliste zurück.
    </span>
</span>
</p>

<p class="desc">
<code class="item function">serendipity_sortPath()</code>, 
(<code class="item file">include/functions_images.inc.php</code>)
<span class="desc-info">
    <span class="box">
        Sortiert eine Verzeichnisliste.
    </span>
</span>
</p>

<p class="desc">
<code class="item function">serendipity_uploadSecure()</code>, 
(<code class="item file">include/functions_images.inc.php</code>)
<span class="desc-info">
    <span class="box">
        Prüft einen Dateinamen, der von einem Redakteur angegeben wurde, und entfernt
        potenziell gefährliche Sonderzeichen.
    </span>
</span>
</p>

<p class="desc">
<code class="item function">[serendipity_getimagesize() deprecated], serendipity_getImageSize()</code>, 
(<code class="item file">include/functions_images.inc.php</code>)
<span class="desc-info">
    <span class="box">
        Liefert die Datei- und Bildgröße sowie den MIME-Typ einer Datei zurück.
    </span>
</span>
</p>

<p class="desc">
<code class="item function">serendipity_getImageFields()</code>, 
(<code class="item file">include/functions_images.inc.php</code>)
<span class="desc-info">
    <span class="box">
        Liefert ein Array mit möglichen Datenbank-Feldnamen der Objekte einer Mediathek.
    </span>
</span>
</p>

<p class="desc">
<code class="item function">serendipity_directoryACL()</code>, 
(<code class="item file">include/functions_images.inc.php</code>)
<span class="desc-info">
    <span class="box">
        Prüft die Zugriffsrechte eines Redakteurs auf die Verzeichnisse der
        Mediathek.
    </span>
</span>
</p>

<p class="desc">
<code class="item function">serendipity_getImageData()</code>, 
(<code class="item file">include/functions_images.inc.php</code>)
<span class="desc-info">
    <span class="box">
        Liest die Metadaten eines Objekts aus der Mediathek.
    </span>
</span>
</p>

<p class="desc">
<code class="item function">serendipity_showPropertyForm()</code>, 
(<code class="item file">include/functions_images.inc.php</code>)
<span class="desc-info">
    <span class="box">
        Stellt das Formular zum Bearbeiten der Metadaten einer Datei in der
        Mediathek dar.
    </span>
</span>
</p>

<p class="desc">
<code class="item function">serendipity_parseMediaProperties()</code>, 
(<code class="item file">include/functions_images.inc.php</code>)
<span class="desc-info">
    <span class="box">
        Liest die Metadaten eines Objekts der Mediathek und bereitet sie für die
        Darstellung auf.
    </span>
</span>
</p>

<p class="desc">
<code class="item function">serendipity_mediaTypeCast()</code>, 
<code class="item function">serendipity_metaFieldConvert()</code>, 
<code class="item function">serendipity_getMediaRaw()</code>, 
(<code class="item file">include/functions_images.inc.php</code>)
<span class="desc-info">
    <span class="box">
        Versucht, Metadaten einer Datei (EXIF-Daten, ID3-Daten) in ein für die Datenbank
        verwendbares Format zu bringen. Konvertiert Datums- und Zahlenwerte in das
        benötigte Format.
    </span>
</span>
</p>

<p class="desc">
<code class="item function">serendipity_insertMediaProperty()</code>, 
(<code class="item file">include/functions_images.inc.php</code>)
<span class="desc-info">
    <span class="box">
        Speichert Metadaten einer Datei in der Mediathek.
    </span>
</span>
</p>

<p class="desc">
<code class="item function">serendipity_parsePropertyForm()</code>, 
(<code class="item file">include/functions_images.inc.php</code>)
<span class="desc-info">
    <span class="box">
        Bereitet die vom Benutzer übermittelten Metadaten einer Datei auf und speichert
        sie entsprechend in der Mediathek.
    </span>
</span>
</p>

<p class="desc">
<code class="item function">serendipity_fetchMediaProperties()</code>, 
<code class="item function">serendipity_getMetaData()</code>, 
(<code class="item file">include/functions_images.inc.php</code>)
<span class="desc-info">
    <span class="box">
        Liest Metadaten eines Objekts aus der Mediathek.
    </span>
</span>
</p>

<p class="desc">
<code class="item function">serendipity_checkPropertyAccess()</code>, 
(<code class="item file">include/functions_images.inc.php</code>)
<span class="desc-info">
    <span class="box">
        Prüft, ob ein Redakteur auf bestimmte Objekte der Mediathek zugreifen darf,
        und entfernt alle nicht zulässigen Metadaten aus einer Liste.
    </span>
</span>
</p>

<p class="desc">
<code class="item function">serendipity_prepareMedia()</code>, 
(<code class="item file">include/functions_images.inc.php</code>)
<span class="desc-info">
    <span class="box">
        Bereitet die Metadaten eines Objekts der Mediathek auf und setzt
        benötigte Zusatzvariablen für die Darstellung eines Objekts.
    </span>
</span>
</p>

<p class="desc">
<code class="item function">serendipity_showMedia()</code>, 
(<code class="item file">include/functions_images.inc.php</code>)
<span class="desc-info">
    <span class="box">
        Stellt ein Objekt der Mediathek mittels Smarty-Templates
        (<code>media_pane.tpl</code> oder <code>media_properties.tpl</code>) dar.
    </span>
</span>
</p>

<p class="desc">
<code class="item function">serendipity_imageAppend()</code>, 
(<code class="item file">include/functions_images.inc.php</code>)
<span class="desc-info">
    <span class="box">
        Prüft, ob eine Datei in der Mediathek bereits existiert. Ist das der Fall, wird
        ein numerischer Index an die Datei angehängt (aus <code>bild.jpg</code> wird
        <code>bild2.jpg</code>).
    </span>
</span>
</p>

<p class="desc">
<code class="item function">serendipity_checkMediaSize()</code>, 
(<code class="item file">include/functions_images.inc.php</code>)
<span class="desc-info">
    <span class="box">
        Prüft, ob eine hochgeladene Datei bestimmte Ressourcenlimits überschreitet.
    </span>
</span>
</p>

<p class="desc">
<code class="item function">serendipity_moveMediaDirectory()</code>, 
(<code class="item file">include/functions_images.inc.php</code>)
<span class="desc-info">
    <span class="box">
        Verschiebt ein Verzeichnis innerhalb der Mediathek und im Verzeichnissystem.
    </span>
</span>
</p>

<p class="desc">
<code class="item function">serendipity_getMediaPaths()</code>, 
(<code class="item file">include/functions_images.inc.php</code>)
<span class="desc-info">
    <span class="box">
        Holt eine Liste aller Verzeichnisse der Mediathek, auf die ein Redakteur Zugriff hat.
    </span>
</span>
</p>

<p class="desc">
<code class="item function">serendipity_checkDirUpload()</code>, 
(<code class="item file">include/functions_images.inc.php</code>)
<span class="desc-info">
    <span class="box">
        Prüft, ob ein Redakteur Schreibzugriff auf ein bestimmte Verzeichnis der
        Mediathek besitzt.
    </span>
</span>
</p>

</section><!-- section.sub end -->

<section id="U1057" class="sub">
<span class="u-toc">10.5.7 - Smarty</span>

<h3 class="subsection" id="smarty">Smarty</h3>

<p>Funktionen zur Verwaltung von Smarty. Die meisten von den in
<code>include/functions_smarty.inc.php</code> festgelegten Funktionen dienen als
Smarty-Modifier oder Smarty-Functions. Diese sind ab Seite
<span class="pageref"><a href="#smartyfunctions">smartyfunctions</a></span>
und Seite <span class="pageref"><a href="#smartymodifier">smartymodifier</a></span> dokumentiert.</p>

<p class="desc">
<code class="item function">serendipity_smarty_init()</code>, 
(<code class="item file">include/functions_smarty.inc.php</code>)
<span class="desc-info">
    <span class="box">
        Startet das Smarty-Framework und initialisiert alle notwendigen Variablen und Objekte.
    </span>
</span>
</p>

<p class="desc">
<code class="item function">serendipity_smarty_purge()</code>, 
(<code class="item file">include/functions_smarty.inc.php</code>)
<span class="desc-info">
    <span class="box">
        Löscht die temporären Dateien des Smarty-Frameworks
        (kompilierte Templates im <code>templates_c</code>-Verzeichnis).
    </span>
</span>
</p>

<p class="desc">
<code class="item function">serendipity_smarty_shutdown()</code>, 
(<code class="item file">include/functions_smarty.inc.php</code>)
<span class="desc-info">
    <span class="box">
        Beendet die Seitenausführung und gibt die aktuelle Smarty-Template-Seite aus.
    </span>
</span>
</p>

<p class="desc">
<code class="item function">serendipity_printEntryFooter()</code>, 
(<code class="item file">include/functions_entries.inc.php</code>)
<span class="desc-info">
    <span class="box">
        Setzt abhängig von den auf der aktuellen Seite dargestellten Blog-Artikeln die
        notwendigen Footer-Elemente (Anzahl der Artikel, Anzahl der Seiten, aktuelle
        Seite) zusammen.
    </span>
</span>
</p>

<p class="desc">
<code class="item function">serendipity_loadthemeOptions()</code>, 
(<code class="item file">include/functions_config.inc.php</code>)
<span class="desc-info">
    <span class="box">
        Lädt die Template-Konfigurationsoptionen, die dem aktuellen Template zugeordnet wurden.
    </span>
</span>
</p>

</section><!-- section.sub end -->

<section id="U1058" class="sub">
<span class="u-toc">10.5.8 - Datenbank</span>

<h3 class="subsection" id="datenbank">Datenbank</h3>

<p>Funktionen zur Abfrage und Verwaltung der Datenbank.</p>

<p class="desc">
<code class="item function">serendipity_db_update()</code>, 
(<code class="item file">include/db.inc.php</code>)
<span class="desc-info">
    <span class="box">
        Führt eine Datenbankabfrage aus, die einen Datensatz aktualisiert (<code>UPDATE
        table SET ...</code>). Dabei wird die Liste der zu aktualisierenden Feldnamen und
        Werte der Funktion übergeben und automatisch in das benötigte SQL-Format
        übersetzt.
    </span>
</span>
</p>

<p class="desc">
<code class="item function">serendipity_db_insert()</code>, 
(<code class="item file">include/db.inc.php</code>)
<span class="desc-info">
    <span class="box">
        Führt eine Datenbankabfrage aus, die einen Datensatz einfügt (<code>INSERT INTO table
        (...) VALUES (...)</code>). Dabei wird die Liste der einzufügenden Feldnamen
        und Werte der Funktion übergeben und automatisch in das benötigte SQL-Format
        übersetzt.
    </span>
</span>
</p>

<p class="desc">
<code class="item function">serendipity_db_bool()</code>, 
(<code class="item file">include/db.inc.php</code>)
<span class="desc-info">
    <span class="box">
        Prüft, ob ein der Funktion übergebener Wert einem <em>Boolean</em>-Wert
        (<code>true/false</code>) entspricht.
    </span>
</span>
</p>

<p class="desc">
<code class="item function">serendipity_db_get_interval()</code>, 
(<code class="item file">include/db.inc.php</code>)
<span class="desc-info">
    <span class="box">
        Liefert abhängig vom eingesetzten Datenbanksystem ein SQL-Codefragment zurück,
        mit dem anhand eines Datenbankfeldes eine Einschränkung des Zeitraums der
        Datensätze vorgenommen wird.
    </span>
</span>
</p>

<p class="desc">
<code class="item function">serendipity_db_implode()</code>, 
(<code class="item file">include/db.inc.php</code>)
<span class="desc-info">
    <span class="box">
        Liefert ein SQL-Codefragment, damit ein PHP-Array mit Werten sicher innerhalb
        einer Datenbankabfrage verwendet werden kann.
    </span>
</span>
</p>

<p class="desc">
<code class="item function">serendipity_db_begin_transaction()</code>, 
<code class="item function">serendipity_db_end_transaction()</code>, 
(zB. <code class="item file">include/mysql.inc.php</code>)
<span class="desc-info">
    <span class="box">
        Führt eine Datenbankabfrage zum Anfang/Ende einer Transaktion aus.
    </span>
</span>
</p>

<p class="desc">
<code class="item function">serendipity_db_query()</code>, 
(zB. <code class="item file">include/mysql.inc.php</code>)
<span class="desc-info">
    <span class="box">
        Führt eine Datenbankabfrage mittels einer SQL-Abfrage aus und liefert die
        Ergebnisse zurück.
    </span>
</span>
</p>

<p class="desc">
<code class="item function">serendipity_db_insert_id()</code>, 
(zB. <code class="item file">include/mysql.inc.php</code>)
<span class="desc-info">
    <span class="box">
        Liefert den Primärschlüssel der zuletzt mittels <code>INSERT INTO...</code>
        eingefügten Datenbankzeile.
    </span>
</span>
</p>

<p class="desc">
<code class="item function">serendipity_db_affected_rows()</code>, 
<code class="item function">serendipity_db_matched_rows()</code>, 
(zB. <code class="item file">include/mysql.inc.php</code>)
<span class="desc-info">
    <span class="box">
        Liefert die Anzahl der von der letzten SQL-Abfrage betroffenen Ergebniszeilen
        (<code>SELECT</code>, <code>DELETE</code> ...) zurück.
    </span>
</span>
</p>

<p class="desc">
<code class="item function">serendipity_db_updated_rows()</code>, 
(zB. <code class="item file">include/mysql.inc.php</code>)
<span class="desc-info">
    <span class="box">
        Liefert die Anzahl der von der letzten SQL-Abfrage aktualisierten Datensätze (<code>UPDATE</code>)
        zurück.
    </span>
</span>
</p>

<p class="desc">
<code class="item function">serendipity_db_escape_string()</code>, 
(zB. <code class="item file">include/mysql.inc.php</code>)
<span class="desc-info">
    <span class="box">
        Liefert den Wert einer übergebenen Variable in einer Formatierung zurück, die
        eine gefahrlose Verwendung innerhalb einer SQL-Abfrage ermöglicht. Etwaige
        Sonderzeichen werden dabei <code>escaped</code> (umformatiert), so dass kein Missbrauch
        stattfinden kann. Diese Funktion muss immer auf alle Variablen angewendet
        werden, die der Benutzer in Formularen oder per URL-Wert einbringt.
    </span>
</span>
</p>

<p class="desc">
<code class="item function">serendipity_db_limit()</code>, 
(zB. <code class="item file">include/mysql.inc.php</code>)
<span class="desc-info">
    <span class="box">
        Liefert den für das jeweilige Datenbanksystem benötigten SQL-Code zurück, um die
        Anzahl der Ergebnisse einer <code>SELECT</code>-Abfrage einzuschränken. Dieser SQL-Code
        weicht in den verschiedenen SQL-Dialekten fundamental voneinander ab.
    </span>
</span>
</p>

<p class="desc">
<code class="item function">serendipity_db_concat()</code>, 
(zB. <code class="item file">include/mysql.inc.php</code>)
<span class="desc-info">
    <span class="box">
        Liefert den für das jeweilige Datenbanksystem benötigten SQL-Code zurück, um
        mehrere Datenbankspalten miteinander in einer Ausgabe zu verbinden (<code>CONCAT</code>).
    </span>
</span>
</p>

<p class="desc">
<code class="item function">serendipity_db_connect()</code>, 
<code class="item function">serendipity_db_reconnect()</code>, 
(zB. <code class="item file">include/mysql.inc.php</code>)
<span class="desc-info">
    <span class="box">
        Stellt eine Verbindung zur Datenbank her.
    </span>
</span>
</p>

<p class="desc">
<code class="item function">serendipity_db_probe()</code>, 
(zB. <code class="item file">include/mysql.inc.php</code>)
<span class="desc-info">
    <span class="box">
        Testet die Verbindung zur Datenbank.
    </span>
</span>
</p>

<p class="desc">
<code class="item function">serendipity_db_schema_import()</code>, 
(zB. <code class="item file">include/mysql.inc.php</code>)
<span class="desc-info">
    <span class="box">
        Importiert eine SQL-Anweisung, die aus einem Plugin oder einer Datei des
        <code>sql</code>-Verzeichnisses von Serendipity stammt. Dabei werden etwaige
        Platzhalter korrekt in das für das jeweilige Datenbanksystem benötigte
        SQL-Format gewandelt.
    </span>
</span>
</p>

</section><!-- section.sub end -->

</section><!-- section.index end -->

<section id="S1060" class="index">
<span class="s-toc">10.6 - Datenbank</span>

<h3 class="section" id="datenbank-1">Datenbank</h3>

<p class="tagging invisible">
<span class="tag-box invisible">
    <span class="inline-tag">Datenbank</span>
</span>
</p>

<p>Serendipity speichert seine Daten in verschiedenen Datenbanktabellen. Viele
Tabellen sind miteinander verknüpft, meist anhand von 1:n-Primärschlüsseln oder
weiteren unabhängigen n:m-Verbindungen.</p>

<p class="tagging invisible">
<span class="label invisible" id="er-schema">er-schema</span>
<span class="tag-box invisible">
    <span class="inline-tag">ERModell@ER-Modell</span>
    <span class="inline-tag">Relationsschema</span>
</span>
</p>

<figure id="fig-dbrel">
  <a class="lightbox" rel="lightbox" href="media/dbrel.avif" lg-uid="lg10601" data-fallback="media/dbrel.webp">
    <picture>
      <source srcset="media/dbrel.avif" type="image/avif">
      <source srcset="media/dbrel.webp" type="image/webp">
      <img src="media/dbrel.png" alt="dbrel.png" loading="lazy" width="635" height="735">
    </picture>
    <figcaption>Abbildung 10.1: Datenbank ER-Modell</figcaption>
  </a>
</figure>

<p>Dabei benutzt Serendipity keine <em>Foreign Key</em>-Assoziierung, die PostgreSQL
oder MySQL zu bieten haben. Der Grund dafür ist, dass die Serendipity-Tabellen
möglichst ohne viel Portierungsaufwand auch auf anderen
Datenbanksystemen wie SQLite einsetzbar sein sollen. Jeglicher
Einsatz von Fremdschlüsseln wird durch den Serendipity-Code verwaltet und
nicht die Datenbank. Abbildung 10.1 zeigt einen
Screenshot des Datenbank-Relationsschemas.</p>

<p><span class="mbold">Serendipity Styx</span> bringt ab Version 2.4 eine Erweiterung
für <span class="mbold">MySQL</span> (ab Datenbank Server-Versionen 5.3+) mit, die es endlich erlaubt, den ganzen
Unicode Bereich über UTF-8 abzudecken. Vorher verwendete MySQL nur einen eingeschränkten
UTF-8 Bereich, der für alle eher textbasierten Systeme voriger Jahre völlig ausreichte.
Mit Verwendung von Emojis ist jedoch ein Bereich in Unicode dazugekommen, der mehr Speicher-Byte
per "Buchstabe" benötigt. Damit wurde es nötig die sogenanntes Indizes (<em>im RAM enthaltene
Caches</em>) anzupassen, da sie nur eine begrenzten Anzahl von Chars ermöglichen, die neuen Zeichen
aber im Einzelnen mehr Platz beanspruchen. Die in den einzelnen Tabellen unten aufgeführten
<em>varchar(255)</em> Längen von textbasierten Feldern mussten entsprechend verkürzt werden,
um dem zu genügen.</p>

<p><span class="mbold">Kurzum</span>, auf neueren Systemen werden die Serendipity
Tabellen der Datenbank unter MySQL gleich im benötigten Format für <span class="mbold">utf8mb4_general_ci</span> bzw.
der ausgewählten Zeichensatz/Kollation der MySQL-Verbindung wie <span class="mbold">utf8mb4_unicode_520_ci</span> angelegt.
Die <span class="mbold">Migration</span> vorhandener Datenbanken bei Serendipity Upgrades ist dagegen nicht trivial,
so dass die eigentliche Umstellung nur manuell über die Wartungsseite angestossen werden kann.
Ein <span class="mbold">Backup</span> der Datenbank ist natürlich im Vorwege anzuraten; aber der Autor hat bereits einige
Datenbanken erfolgreich konvertiert und ist nur selten auf Inkompatibilitäten mit der
automatischen Migrationsprozedur gestossen. Solche traten meistens nur dann auf, wenn
vorher schon etwas mit UTF-8 nicht in Ordnung war.</p>

<section id="U1061" class="sub">
<span class="u-toc">10.6.1 - Benutzer- und Rechtemanagement</span>

<h3 class="subsection" id="benutzer-und-rechtemanagement">Benutzer- und Rechtemanagement</h3>

<p>Die folgenden Tabellen dienen der Verwaltung von Benutzern, Gruppen und
deren Rechten. Sie werden in den SQL-Datenbankabfragen mit <code>JOIN</code>s
einbezogen.</p>

<article id="XU" class="subsub">

<header>
    <h4 class="subarticle" id="serendipity_authors">serendipity_authors</h4>
</header>

<p>
<span class="tag-box invisible">
    <span class="inline-tag">Datenbank-Tabellen!serendipity_authors</span>
</span>
Enthält die Redakteure des Blogs.
</p>
	
<p class="desc sql-field-group">
    <code class="item sql-field">authorid</code> (Primärschlüssel, int(11)) enthält die fortlaufende ID eines Redakteurs.
    <code class="item sql-field">realname</code> (varchar(255)) enthält den dargestellten Namen des Redakteurs.
    <code class="item sql-field">username</code> (varchar(32)) enthält den Loginnamen des Redakteurs.
    <code class="item sql-field">password</code> (varchar(64)) enthält das Passwort des Redakteurs als gesalzener Hash.
    <code class="item sql-field">email</code> (varchar(128)) enthält die E-Mail-Adresse des Redakteurs.
    <code class="item sql-field">mail_comments</code> (int(1)) gibt an, ob der Redakteur bei Eingang neuer Kommentare eine E-Mail erhält.
    <code class="item sql-field">mail_trackbacks</code> (int(1)) gibt an, ob der Redakteur bei Eingang neuer Trackbacks eine E-Mail erhält.
    <code class="item sql-field">userlevel</code> (int(4)) enthält den Benutzerrang eines Redakteurs. Der numerische Wert
        <span class="subdesc">
            <code class="sub-item">255</code> steht für Administratoren,
            <code class="sub-item">1</code> für Chefredakteure und
            <code class="sub-item">0</code> für normale Redakteure.
        </span>
        Der Benutzerrang ist seit Einführung der Benutzergruppen nur noch für ältere Plugins von Bedeutung.
    <code class="item sql-field">right_publish</code> (int(1)) gibt an, ob ein Redakteur Einträge veröffentlichen darf.
    <code class="item sql-field">hashtype</code> (int(1)) gibt an, ob das Passwort ein gesalzener Hash ist.
</p>

</article>

<article id="XU" class="subsub">

<header>
    <h4 class="subarticle" id="serendipity_groups">serendipity_groups</h4>
</header>

<p>
<span class="tag-box invisible">
    <span class="inline-tag">Datenbank-Tabellen!serendipity_groups</span>
</span>
Enthält die Benutzergruppen des Blogs.
</p>

<p class="desc sql-field-group">
    <code class="item sql-field">id</code> (Primärschlüssel, int(11)) enthält die fortlaufende ID einer Gruppe.
    <code class="item sql-field">name</code> (varchar(64)) enthält den Namen der Redakteursgruppe.
</p>

</article>

<article id="XU" class="subsub">

<header>
    <h4 class="subarticle" id="serendipity_authorgroups">serendipity_authorgroups</h4>
</header>

<p>
<span class="tag-box invisible">
    <span class="inline-tag">Datenbank-Tabellen!serendipity_authorgroups</span>
</span>
Enthält eine n:m-Zuordnungstabelle, mit der Autoren den Benutzergruppen
zugeordnet werden.
</p>

<p class="desc sql-field-group">
    <code class="item sql-field">groupid</code> (Fremdschlüssel, int(10)) enthält die ID der Benutzergruppe.
    <code class="item sql-field">authorid</code> (Fremdschlüssel, int(10)) enthält die ID des Redakteurs.
</p>

</article>

<article id="XU" class="subsub">

<header>
    <h4 class="subarticle" id="serendipity_groupconfig">serendipity_groupconfig</h4>
</header>

<p>
<span class="tag-box invisible">
    <span class="inline-tag">Datenbank-Tabellen!serendipity_groupconfig</span>
</span>
Enthält eine Zuordnung von Rechten zu Benutzergruppen. Eine Benutzergruppe kann
beliebig viele und beliebig benannte Rechte haben.
</p>

<p class="desc sql-field-group">
    <code class="item sql-field">id</code> (Fremdschlüssel, int(10)) enthält die ID der Benutzergruppe.
    <code class="item sql-field">property</code> (varchar(128)) enthält den Namen des Rechts.
    <code class="item sql-field">value</code> (varchar(64)) enthält den Wert des Rechts,
        <span class="subdesc">
            d.h. ob dieses gesetzt (<code>true</code>) oder nicht gesetzt (<code>false</code>) ist.
            Auch andere Werte als <code>true</code> oder <code>false</code> können von Plugins gesetzt werden.
        </span>
</p>

</article>

<article id="XU" class="subsub">

<header>
    <h4 class="subarticle" id="serendipity_access">serendipity_access</h4>
</header>

<p>
<span class="tag-box invisible">
    <span class="inline-tag">Datenbank-Tabellen!serendipity_access</span>
    <span class="inline-tag">ACL</span>
</span>
Enthält die ACL (<em>Access Control List</em>), anhand derer bestimmten
Benutzergruppen Zugriff auf Teile der Serendipity-Inhalte zugewiesen werden
kann. Die Tabelle ist so abstrahiert, dass beliebige Rechte eingerichtet
werden können. Für jedes Tupel <code>groupid, artifact_id</code> können mehrere
unterschiedliche <code>artifact_mode</code>-Werte hinterlegt werden.</p>

<p class="desc sql-field-group">
    <code class="item sql-field">groupid</code> (Fremdschlüssel, int(10)) enthält die ID einer Benutzergruppe.
    <code class="item sql-field">artifact_id</code> (Fremdschlüssel, int(10)) enthält die ID des Fremdobjekts, für das ein Recht vergeben wird.
    <code class="item sql-field">artifact_type</code> (varchar(64)) legt fest, für welchen Objekttyp ein Recht vergeben wird. Mögliche Werte sind:
        <span class="subdesc">
            <code>category</code> (für Kategorien),<br>
            <code>directory</code> (für Verzeichnisse der Mediathek).
        </span>
    <code class="item sql-field">artifact_mode</code> (varchar(64)) legt fest, welche Eigenschaft ein Recht hat. Mögliche Werte sind:
        <span class="subdesc">
            <code>read</code> (Leserecht),<br>
            <code>write</code> (Schreibrecht).
        </span>
    <code class="item sql-field">artifact_index</code> (varchar(64)) legt ein zusätzliches Attribut für ein Recht fest, 
        <span class="subdesc">
            falls ein Fremdobjekt nicht direkt mittels <code>artifact_id</code> zugeordnet werden kann.
            Beispielsweise enthält <code>artifact_index</code> den Namen des Verzeichnisses der Mediathek,
            für das ein Recht vergeben werden soll, da die vorhandenen Verzeichnisse nicht in der
            Datenbank verfolgt werden.
        </span>
</p>

</article>

</section><!-- section.sub end -->

<section id="U1062" class="sub">
<span class="u-toc">10.6.2 - Mediathek</span>

<h3 class="subsection" id="mediathek-1">Mediathek</h3>

<p>Die Objekte der Mediathek dienen lediglich als Container für Metadaten.
Die eigentlichen Dateien liegen weiterhin im Dateisystem.</p>

<article id="XU" class="subsub">

<header>
    <h4 class="subarticle" id="serendipity_images">serendipity_images</h4>
</header>

<p class="tagging invisible">
<span class="tag-box invisible">
    <span class="inline-tag">Datenbank-Tabellen!serendipity_images</span>
</span>
</p>

<p class="desc sql-field-group">
    <code class="item sql-field">id</code> (Primärschlüssel, int(11)) enthält die fortlaufende ID eines Medienobjekts.
    <code class="item sql-field">name</code> (varchar(255)) enthält den Dateinamen (ohne Endung).
    <code class="item sql-field">extension</code> (varchar(5)) enthält die Dateiendung.
    <code class="item sql-field">mime</code> (varchar(255)) enthält den MIME-Typen für das Medienobjekt.
    <code class="item sql-field">size</code> (int(11)) enthält die Dateigröße (in Bytes).
    <code class="item sql-field">dimensions_width</code> (int(11)) enthält die Bildbreite.
    <code class="item sql-field">dimensions_height</code> (int(11)) enthält die Bildhöhe.
    <code class="item sql-field">date</code> (int(11)) enthält das Hochladedatum (in UNIX-Sekunden).
    <code class="item sql-field">thumbnail_name</code> (varchar(255)) enthält das Suffix für die Vorschaubilder.
    <code class="item sql-field">authorid</code> (Fremdschlüssel, int(11)) verweist auf den Eigentümer der Datei.
    <code class="item sql-field">path</code> (text) enthält den Namen des Verzeichnisses, in dem das Bild gespeichert ist.
    <code class="item sql-field">hotlink</code> (int(1)) gibt an, ob das Bild von einem fremden Server geladen wird.
    <code class="item sql-field">realname</code> (varchar(255)) enthält den ursprünglichen Namen einer Datei,
            wenn diese zur Vermeidung doppelter Dateinamen automatisch umbenannt wurde.
</p>

</article>

<article id="XU" class="subsub">

<header>
    <h4 class="subarticle" id="serendipity_mediaproperties">serendipity_mediaproperties</h4>
</header>

<p class="tagging invisible">
<span class="tag-box invisible">
    <span class="inline-tag">Datenbank-Tabellen!serendipity_mediaproperties</span>
</span>
</p>

<p>Zu jedem Objekt der Mediathek können beliebig viele Metadaten gespeichert
werden. Diese Metadaten können in verschiedene Unterkategorien aufgeteilt
werden, um zwischen frei vergebenen Metadaten und solchen, die in der Datei
festgelegt wurden, zu unterscheiden.
</p>

<p class="desc sql-field-group">
    <code class="item sql-field">mediaid</code> (Fremdschlüssel, int(11)) verweist auf die ID des Medienobjekts.
    <code class="item sql-field">property</code> (int(11)) enthält den Bezeichner einer Medieneigenschaft.
    <code class="item sql-field">property_group</code> (int(11)) enthält die Zuordnung in eine Metadaten-Gruppe. Mögliche Werte:
        <span class="subdesc">
            <code>base_keyword</code> (freie Schlüsselwörter),<br>
            <code>base_property</code> (freie Metafelder),<br>
            <code>base_metadata</code> (Metadaten der Datei).
        </span>
    <code class="item sql-field">property_subgroup</code> (int(11)) kann eine Untergruppierung der Metadaten enthalten,
        <span class="subdesc">
            vor allem im Falle von <code>base_metadata</code>-Gruppen.
            Werte wie  <code>EXIF</code>, <code>XMP</code> oder <code>ID3</code> geben die Quelle der Eigenschaft an.
        </span>
    <code class="item sql-field">value</code> (int(11)) enthält den zugeordneten Wert einer Medieneigenschaft.
</p>

</article>

</section><!-- section.sub end -->

<section id="U1063" class="sub">
<span class="u-toc">10.6.3 - Artikel, Kategorien, Kommentare</span>

<h3 class="subsection" id="artikel-kategorien-kommentare">Artikel, Kategorien, Kommentare</h3>

<p>Die folgenden sechs Datenbanktabellen enthalten den Kern der redaktionellen
Inhalte Ihres Blogs: Artikel, Kommentare und Kategorien.</p>

<article id="XU" class="subsub">

<header>
    <h4 class="subarticle" id="serendipity_entries">serendipity_entries</h4>
</header>

<p>
<span class="tag-box invisible">
    <span class="inline-tag">Datenbank-Tabellen!serendipity_entries</span>
</span>
Enthält die Blog-Artikel.
</p>

<p class="desc sql-field-group">
    <code class="item sql-field">id</code> (Primärschlüssel, int(11)) enthält die ID des Artikels.
    <code class="item sql-field">title</code> (varchar(200)) enthält den Titel des Artikels.
    <code class="item sql-field">timestamp</code> (int(10)) enthält die Erstellungszeit des Artikels.
    <code class="item sql-field">last_modified</code> (int(10)) enthält das Datum der letzten Aktualisierung.
    <code class="item sql-field">body</code> (text) enthält den Artikeltext.
    <code class="item sql-field">extended</code> (text) enthält den erweiterten Artikeltext.
    <code class="item sql-field">comments</code> (int(4)) enthält die Anzahl an Kommentaren zu diesem Artikel.
    <code class="item sql-field">trackbacks</code> (int(4)) enthält die Anzahl an Trackbacks zu diesem Artikel.
    <code class="item sql-field">exflag</code> (int(1)) gibt an, ob der Artikel einen erweiterten Artikeltext besitzt.
    <code class="item sql-field">author</code> (varchar(20)) enthält den Namen des erstellenden Redakteurs.
    <code class="item sql-field">authorid</code> (int(11)) enthält die ID des erstellenden Redakteurs.
    <code class="item sql-field">isdraft</code> (bool) gibt an, ob der Eintrag ein Entwurf ist.
    <code class="item sql-field">allow_comments</code> (bool) gibt an, ob Kommentare zu diesem Artikel erlaubt sind.
    <code class="item sql-field">moderate_comments</code> (bool) gibt an, ob Kommentare zu diesem Artikel moderiert werden.
</p>

</article>

<article id="XU" class="subsub">

<header>
    <h4 class="subarticle" id="serendipity_entryproperties">serendipity_entryproperties</h4>
</header>

<p>
<span class="tag-box invisible">
    <span class="inline-tag">Datenbank-Tabellen!serendipity_entryproperties</span>
</span>
Enthält eine Reihe an zusätzlichen Eigenschaften zu einem Artikel (n:m-Zuordnung).
</p>

<p class="desc sql-field-group">
    <code class="item sql-field">entryid</code> (Fremdschlüssel, int(11)) enthält die zugeordnete Artikel-ID
    <code class="item sql-field">property</code> (varchar(255)) enthält den Namen der zusätzlichen Eigenschaft.
    <code class="item sql-field">value</code> (text) enthält den Wert der Eigenschaft, zB. HTML-Text oder Dateinamen der Mediathek.
</p>

</article>

<article id="XU" class="subsub">

<header>
    <h4 class="subarticle" id="serendipity_category">serendipity_category</h4>
</header>

<p>
<span class="tag-box invisible">
    <span class="inline-tag">Datenbank-Tabellen!serendipity_category</span>
</span>
Enthält die im Blog erstellten Kategorien. Die Kategorien sind unendlich
ineinander verschachtelbar, da sie der Nested-Set-Datenbankstruktur folgen.
</p>

<p class="desc sql-field-group">
    <code class="item sql-field">categoryid</code> (Primärschlüssel, int(11)) enthält die fortlaufende ID einer Kategorie.
    <code class="item sql-field">category_name</code> (varchar(255)) enthält den Namen einer Kategorie.
    <code class="item sql-field">category_icon</code> (varchar(255)) enthält ein optionales Symbolbild, das Einträgen dieser Kategorie zugewiesen werden kann.
    <code class="item sql-field">category_description</code> (text) enthält die Beschreibung einer Kategorie.
    <code class="item sql-field">authorid</code> (Fremdschlüssel, int(11)) enthält die ID des Redakteurs, der diese Kategorie erstellt hat.
    <code class="item sql-field">category_left</code> (Fremdschlüssel, int(11)) enthält einen Verweis auf die <em>linke</em> Kategorie in der Nested-Set-Hierarchie.
    <code class="item sql-field">category_right</code> (Fremdschlüssel, int(11)) enthält einen Verweis auf die <em>rechte</em> Kategorie in der Nested-Set-Hierarchie.
    <code class="item sql-field">parentid</code> (Fremdschlüssel, int(11)) enthält einen Verweis auf die übergeordnete Kategorie.
</p>

</article>

<article id="XU" class="subsub">

<header>
    <h4 class="subarticle" id="serendipity_entrycat">serendipity_entrycat</h4>
</header>

<p>
<span class="tag-box invisible">
    <span class="inline-tag">Datenbank-Tabellen!serendipity_entrycat</span>
</span>
Weist Einträge bestehenden Kategorien mittels n:m-Verknüpfung hinzu. Ein Eintrag
kann somit mehreren Kategorien zugeordnet werden.
</p>

<p class="desc sql-field-group">
    <code class="item sql-field">entryid</code> (Fremdschlüssel, int(11)) enthält die ID des Artikels.
    <code class="item sql-field">categoryid</code> (Fremdschlüssel, int(11)) enthält die ID einer Kategorie.
</p>

</article>

<article id="XU" class="subsub">

<header>
    <h4 class="subarticle" id="serendipity_comments">serendipity_comments</h4>
</header>

<p>
<span class="tag-box invisible">
    <span class="inline-tag">Datenbank-Tabellen!serendipity_comments</span>
</span>
Enthält die Kommentare und Trackbacks zu Artikeln.
</p>

<p class="desc sql-field-group">
    <code class="item sql-field">id</code> (Primärschlüssel, int(11)) enthält die ID eines Kommentars.
    <code class="item sql-field">entry_id</code> (Fremdschlüssel, int(10)) enthält die ID des Artikels, zu dem der Kommentar gehört.
    <code class="item sql-field">parent_id</code> (Fremdschlüssel, int(10)) enthält die ID des übergeordneten Kommentars,
            falls sich der aktuelle Kommentar auf einen anderen beziehen soll.
    <code class="item sql-field">timestamp</code> (int(10)) enthält das Datum, an dem der Kommentar gespeichert wurde.
    <code class="item sql-field">title</code> (varchar(150)) enthält den Titel des Kommentars.
    <code class="item sql-field">author</code> (varchar(80)) enthält den Namen des Kommentators.
    <code class="item sql-field">email</code> (varchar(200)) enthält die E-Mail-Adresse des Kommentators.
    <code class="item sql-field">url</code> (varchar(200)) enthält die Homepage-Adresse des Kommentators.
    <code class="item sql-field">ip</code> (varchar(15)) enthält die IP-Adresse des Kommentators.
    <code class="item sql-field">body</code> (text) enthält den Kommentartext.
    <code class="item sql-field">type</code> (varchar(100)) gibt an, ob der Eintrag ein
        <span class="subdesc">
            Kommentar (<code>NORMAL</code>),
            Trackback (<code>TRACKBACK</code>) oder
            Pingback (<code>PINGBACK</code>) ist.
        </span>
    <code class="item sql-field">subscribed</code> (bool) gibt an, ob der Kommentator über weitere Kommentare zum Artikel per E-Mail benachrichtigt werden soll.
    <code class="item sql-field">status</code> (varchar(50)) gibt den Status eines Kommentars an: <code>approved</code> (veröffentlicht) oder <code>pending</code> (in Moderation).
    <code class="item sql-field">referer</code> (referer(200)) enthält die URL, die der Kommentator vor dem Aufruf Ihres Blogs besucht hat.
</p>

</article>

<article id="XU" class="subsub">

<header>
    <h4 class="subarticle" id="serendipity_references">serendipity_references</h4>
</header>

<p>
<span class="tag-box invisible">
    <span class="inline-tag">Datenbank-Tabellen!serendipity_references</span>
</span>
Alle URLs, die ein Redakteur in einem Artikel einbindet, werden in dieser
Datenbanktabelle gespeichert. Solche Referenzen können durch Plugins
dargestellt oder ausgewertet werden. Des Weiteren enthält diese Tabelle auch
alle Referenzen von aufgerufenen Bildern Ihrer Mediathek (siehe Seite <span class="pageref"><a href="#mdb-profi">mdb-profi</a></span>).
</p>

<p class="desc sql-field-group">
    <code class="item sql-field">id</code> (Primärschlüssel, int(11)) enthält die fortlaufende ID einer referenzierten URL.
    <code class="item sql-field">entry_id</code> (Fremdschlüssel, int(10)) enthält die ID des Artikels, zu dem die referenzierte URL gehört.
    <code class="item sql-field">link</code> (text) enthält die vollständige referenzierte URL.
    <code class="item sql-field">name</code> (text) enthält den beschreibenden Text zu der referenzierten URL.
    <code class="item sql-field">type</code> (varchar(128)) legt den Typ der Referenz fest.
        <span class="subdesc">
            Der Inhalt <code>media</code> steht für verwiesene Mediathek-Objekte,
            ein leerer Typ steht für gewöhnlich referenzierte URLs.
        </span>
</p>

</article>

</section><!-- section.sub end -->

<section id="U1064" class="sub">
<span class="u-toc">10.6.4 - Zentraltabellen</span>

<h3 class="subsection" id="zentraltabellen">Zentraltabellen</h3>

<p>Weiterhin greift Serendipity auf eine Menge weiterer Tabellen zu, die nicht den
vorigen Gruppierungen zuzuordnen sind.</p>

<article id="XU" class="subsub">

<header>
    <h4 class="subarticle" id="serendipity_config">serendipity_config</h4>
</header>

<p>
<span class="tag-box invisible">
    <span class="inline-tag">Datenbank-Tabellen!serendipity_config</span>
</span>
Enthält sämtliche Konfigurationsoptionen des Blogs, von Plugins und persönlichen
Einstellungen der Redakteure.
</p>

<p class="desc sql-field-group">
    <code class="item sql-field">name</code> (varchar(255)) enthält den Namen einer Konfigurationsoption.
            Plugin-Optionen werden mit dem Namen des Plugins als Präfix gespeichert.
    <code class="item sql-field">value</code> (text) enthält den Wert einer Konfigurationsoption.
    <code class="item sql-field">authorid</code> (Fremdschlüssel, int(11)) enthält die ID eines Redakteurs,
            falls die Konfigurationsoption einer persönlichen Einstellung entspricht.
</p>

</article>

<article id="XU" class="subsub">

<header>
    <h4 class="subarticle" id="serendipity_permalinks">serendipity_permalinks</h4>
</header>

<p>
<span class="tag-box invisible">
    <span class="inline-tag">Datenbank-Tabellen!serendipity_permalinks</span>
</span>
Enthält eine Look-Up-Tabelle von Permalinks. Serendipity kann die aufgerufene
URL mit einem der in dieser Tabelle hinterlegten Permalinks vergleichen, um dann
die entsprechenden Inhalte darzustellen. Dabei unterstützt Serendipity
Permalinks für Einträge, Kategorien, Autoren und RSS-Feeds.</p>

<p class="desc sql-field-group">
    <code class="item sql-field">permalink</code> (varchar(255)) enthält die URL des Permalinks.
    <code class="item sql-field">entry_id</code> (varchar(255)) enthält die ID des Zielinhalts (Kategorie-ID, Autor-ID, Artikel-ID).
    <code class="item sql-field">type</code> (varchar(255)) legt den Typ des Permalinks (<code>category</code>, <code>author</code>, <code>entry</code>) fest.
    <code class="item sql-field">data</code> (varchar(255)) kann zusätzliche Werte enthalten, derzeit noch nicht genutzt.
</p>

</article>

<article id="XU" class="subsub">

<header>
    <h4 class="subarticle" id="serendipity_plugincategories">serendipity_plugincategories</h4>
</header>

<p>
<span class="tag-box invisible">
    <span class="inline-tag">Datenbank-Tabellen!serendipity_plugincategories</span>
</span>
Enthält eine Zuordnung der Plugins zu ihren jeweiligen Gruppen. Diese Tabelle
wird automatisch gefüllt, sie kann gefahrlos geleert werden, um eine
Neu-Initialisierung zu erzwingen.</p>

<p class="desc sql-field-group">
    <code class="item sql-field">class_name</code> (varchar(250)) enthält den Namen eines Plugins.
    <code class="item sql-field">category</code> (varchar(250)) enthält den Namen einer Kategorie, die dem Plugin zugeordnet ist.
</p>

</article>

<article id="XU" class="subsub">

<header>
    <h4 class="subarticle" id="serendipity_pluginlist">serendipity_pluginlist</h4>
</header>

<p>
<span class="tag-box invisible">
    <span class="inline-tag">Datenbank-Tabellen!serendipity_pluginlist</span>
</span>
Enthält Metadaten zu den verfügbaren, installierbaren Plugins. Diese Tabelle
wird automatisch gefüllt, sie kann gefahrlos geleert werden, um eine
Neu-Initialisierung zu erzwingen. Der Inhalt dieser Tabelle gilt als
Zwischenspeicher, damit die performance-intensive Plugin-Abfrage nur bei Bedarf
ausgeführt werden muss.</p>

<p class="desc sql-field-group">
    <code class="item sql-field">plugin_file</code> (varchar(255)) enthält den Basisnamen eines Plugins.
    <code class="item sql-field">class_name</code> (varchar(255)) enthält den PHP-Klassennamen eines Plugins.
    <code class="item sql-field">plugin_class</code> (varchar(255)) enthält den Serendipity-internen Klassennamen eines Plugins.
            Früher wurden interne Plugins hier mit einem <code>@</code>-Zeichen gekennzeichnet.
    <code class="item sql-field">pluginPath</code> (varchar(255)) enthält den Pfad zum Plugin.
    <code class="item sql-field">name</code> (varchar(255)) enthält den Namen des Plugins.
    <code class="item sql-field">description</code> (text) enthält die Beschreibung eines Plugins.
    <code class="item sql-field">version</code> (varchar(12)) enthält die Versionsnummer eines Plugins.
    <code class="item sql-field">upgrade_version</code> (varchar(12)) enthält die aktuell online verfügbare Version des Plugins.
    <code class="item sql-field">plugintype</code> (varchar(255)) legt den Typ eines Plugins fest
        (<code>sidebar</code> für Seitenleisten-Plugins, <code>event</code> für Ereignis-Plugins).
    <code class="item sql-field">pluginlocation</code> (varchar(255)) gibt an, wo das Plugin heruntergeladen werden kann
        (<code>local</code> oder <code>Spartacus</code>).
    <code class="item sql-field">stackable</code> (int(1)) gibt an, ob ein Plugin mehrfach installiert werden kann.
    <code class="item sql-field">author</code> (varchar(255)) gibt den Namen des Plugin-Autors an.
    <code class="item sql-field">requirements</code> (text) gibt etwaige Rahmenbedingungen für das Plugin an.
    <code class="item sql-field">website</code> (varchar(255)) gibt eine Homepage des Plugin-Autors an.
    <code class="item sql-field">last_modified</code> (int(11)) gibt an, ob und wann das Plugin zuletzt auf Ihrem Server aktualisiert wurde.
</p>

</article>

<article id="XU" class="subsub">

<header>
    <h4 class="subarticle" id="serendipity_plugins">serendipity_plugins</h4>
</header>

<p>
<span class="tag-box invisible">
    <span class="inline-tag">Datenbank-Tabellen!serendipity_plugins</span>
</span>
Enthält eine Liste der installierten und aktivierten Plugins im Blog.
</p>

<p class="desc sql-field-group">
    <code class="item sql-field">name</code> (Primärschlüssel, varchar(128)) enthält den Namen des Plugins inklusive der zufällig zugeteilten ID.
    <code class="item sql-field">placement</code> (varchar(6)) legt fest, wo das Plugin platziert ist. Mögliche Werte:
        <span class="subdesc">
            <code>event</code> (Ereignis-Plugin),<br>
            <code>eventh</code> (deaktiviertes Ereignis-Plugin),<br>
            <code>left</code> (Plugin in linker Seitenleiste),<br>
            <code>right</code> (Plugin in rechter Seitenleiste),<br>
            <code>hidden</code> (verstecktes Seitenleisten-Plugin)<br>
            <code>[xxx]</code> sowie die Namen aller selbständig festgelegten Seitenleisten.
        </span>
    <code class="item sql-field">sort_order</code> (int(4)) gibt einen numerischen Wert zur Sortierungsreihenfolge der Plugins untereinander an.
    <code class="item sql-field">authorid</code> (int(11)) enthält die ID des Redakteurs, der das Plugin installiert hat.
    <code class="item sql-field">path</code> (varchar(255)) enthält den Verzeichnispfad zum jeweiligen Plugin.
</p>

</article>

<article id="XU" class="subsub">

<header>
    <h4 class="subarticle" id="serendipity_exits-serendipity_referrers">serendipity_exits, serendipity_referrers</h4>
</header>

<p>
<span class="tag-box invisible">
    <span class="inline-tag">Datenbank-Tabellen!serendipity_exits</span>
    <span class="inline-tag">Datenbank-Tabellen!serendipity_referrers</span>
</span>
<code>serendipity_exits</code> enthält bei aktiviertem Exit-Tracking (siehe Seite <span class="pageref"><a href="#trackexits">trackexits</a></span>)
Statistiken über Links in Ihren Blog-Artikeln, auf die Besucher geklickt haben.
<code>serendipity_referrers</code> enthält bei aktiviertem Referrer-Tracking
(siehe Seite <span class="pageref"><a href="#trackreferrer">trackreferrer</a></span>) die Statistiken über Webseiten,
von denen aus Besucher auf Ihr Blog gelangen.
Beide Tabellen werden über den Umweg der Tabelle <code>serendipity_suppress</code>
gefüllt.</p>

<p class="desc sql-field-group">
    <code class="item sql-field">entry_id</code> (Primärschlüssel, int(11)) enthält die ID
            des zugehörigen Blog-Artikels, von dem aus ein Exit-Link geklickt wurde
            bzw. auf dessen URL von einem fremden Blog verwiesen wurde.
    <code class="item sql-field">day</code> (date) enthält das Datum, an dem der Tabelleneintrag erstellt wurde.
    <code class="item sql-field">count</code> (int(11)) enthält die Anzahl für den jeweiligen statistischen Wert.
</p>

</article>

<article id="XU" class="subsub">

<header>
    <h4 class="subarticle" id="serendipity_suppress">serendipity_suppress</h4>
</header>

<p>
<span class="tag-box invisible">
    <span class="inline-tag">Datenbank-Tabellen!serendipity_suppress</span>
</span>
Diese Tabelle dient der Befüllung der Tabellen <code>serendipity_exits</code> und
<code>serendipity_referrers</code>. Eine verweisende URL oder die in einem Artikel
eingebundene URL wird beim Aufruf durch einen Besucher erst in dieser Tabelle
zwischengespeichert. Erst sobald der jeweilige Link mehr als einmal
aufgerufen/übermittelt wurde, wird der Besuch auch in der zugehörigen Tabelle
<code>serendipity_exits</code> oder <code>serendipity_referrers</code> gespeichert. Dies
kann in geringem Maß Spam erschweren, aber leider mittlerweile
auch nicht mehr verhindern.</p>

<p class="desc sql-field-group">
    <code class="item sql-field">ip</code> (varchar(15)) IP des Besuchers.
    <code class="item sql-field">scheme</code> (varchar(5)) enthält den Teil der URL des Tabelleneintrags,
            der das Protokoll angibt (zB. <code>http://</code>).
    <code class="item sql-field">host</code> (int(128)) enthält den Servernamen einer URL.
    <code class="item sql-field">port</code> (int(5)) enthält den Port einer URL.
    <code class="item sql-field">path</code> (int(255)) enthält den Verzeichnisteil einer URL.
    <code class="item sql-field">query</code> (int(255)) enthält zusätzliche GET-Parameter einer URL.
    <code class="item sql-field">last</code> (timestamp) enthält das Datum des letzten Besuchs der URL.
</p>

</article>

<article id="XU" class="subsub">

<header>
    <h4 class="subarticle" id="serendipity_spamblocklog">serendipity_spamblocklog</h4>
</header>

<p>
<span class="tag-box invisible">
    <span class="inline-tag">Datenbank-Tabellen!serendipity_spamblocklog</span>
</span>
<span class="label invisible" id="db-spamblocklog">db-spamblocklog</span> Diese Tabelle enthält Protokollmeldungen des Antispam-Plugins (siehe Seite
<span class="pageref"><a href="#spamblock">spamblock</a></span>), beispielsweise Hinweise zu abgewiesenen oder
moderierten Kommentaren und Fehlermeldungen. Mit der Zeit kann diese Tabelle
recht groß werden, da Serendipity sie nicht selbständig leert. Sie können
alle Einträge gefahrlos löschen, wenn Sie diese nicht weiter benötigen (siehe
Seite <span class="pageref"><a href="#spamblocklog-loeschen">spamblocklog-loeschen</a></span>). Selbstverständlich können Sie in den
Einstellungen des Anti-Spam-Plugins die Protokollierung auch vollständig deaktivieren.</p>

<p>Ein Protokolleintrag wird vom Anti-Spam-Plugin nur dann erstellt, wenn ein
neuer Kommentar zu einem Blog-Artikel verfasst wurde. Daher ist ein
Protokolleintrag stets mit einem Blog-Artikel und einem Kommentar verbunden.</p>

<p class="desc sql-field-group">
    <code class="item sql-field">timestamp</code> (int(10)) enthält das Datum, an dem der Protokolleintrag erstellt wurde.
    <code class="item sql-field">type</code> (varchar(255)) enthält eine Klassifizierung des Protokolleintrags.
    <code class="item sql-field">reason</code> (text) enthält den ausführlichen Protokolltext.
    <code class="item sql-field">entry_id</code> (int(10)) enthält die ID des Artikels, auf den sich der Protokolleintrag bezieht.
    <code class="item sql-field">author</code> (varchar(80)) enthält den Namen des Kommentarautors.
    <code class="item sql-field">email</code> (varchar(200)) enthält die E-Mail-Adresse des Kommentarautors.
    <code class="item sql-field">url</code> (varchar(200)) enthält die Homepage des Kommentarautors.
    <code class="item sql-field">useragent</code> (varchar(255)) enthält den verwendeten Browser des Kommentarautors.
    <code class="item sql-field">ip</code> (varchar(15)) enthält die IP-Adresse des Kommentarautors.
    <code class="item sql-field">referer</code> (varchar(255)) enthält die URL der vorher vom Kommentarautor besuchten Webseite.
    <code class="item sql-field">body</code> (text) enthält den Kommentartext.
</p>

</article>

</section><!-- section.sub end -->

</section><!-- section.index end -->

<section id="S1070" class="index">
<span class="s-toc">10.7 - Sourcecode-Verwaltung</span>

<h3 class="section" id="sourcecode-verwaltung">Sourcecode-Verwaltung</h3>

<p class="tagging invisible">
<span class="tag-box invisible">
    <span class="inline-tag">SVN</span>
    <span class="inline-tag">CVS</span>
    <span class="inline-tag">Sourcecode-Verwaltung</span>
    <span class="inline-tag">Versionsverwaltung</span>
    <span class="inline-tag">Sourceforge</span>
    <span class="inline-tag">BerliOS</span>
    <span class="inline-tag">Git</span>
    <span class="inline-tag">GitHub</span>
</span>
<span class="label invisible" id="sourcecodeverwaltung">sourcecodeverwaltung</span>
</p>

<p>Serendipity ist letztlich nur eine Ansammlung von PHP-Dateien. In allen
OpenSource-Projekten ist es üblich, den Quellcode für Interessierte vollständig
offen und transparent zu verwalten.</p>

<p>Dazu hat sich seit geraumer Zeit der Service von GitHub [*]
<span class="footnote"><i class="fa fa-info-circle"></i>
<a href="https://github.com/" target="_blank" rel="noopener">https://github.com/</a></span><!-- footnote -->
als Standard in der Open Source Welt fest etabliert, der OpenSource-Projekten
und praktisch Jedermann kostenlos Verwaltungsdienste und Speicherplatz anbietet.
Finanziert wird dieses Erfolgsmodell vom Verkauf der Enterprise und Privat Repository Lösungen.
Inzwischen sind viele der ganz großen Fische und mehr oder weniger "alle" bekannten Projekte hier vertreten.
Beispiele sind, der Linux Kernel, Google, Microsoft, JQuery, PHP, Ruby on Rails und so weiter.
Mit einer Gemeinschaft von mehr als 14 Millionen Menschen und mehr als 35 Millionen Projekten
können Entwickler immer wieder Neues entdecken, nutzen, und werden von einem leistungsstarken
kollaborativen Entwicklungs-Workflow getragen, das als Git Versions-Verteilungssystem vom Mr. Linux himself
Linus Torvalds vor 11 Jahren im April 2005 <em>mal eben so</em> in zwei Wochen niedergeschrieben wurde.</p>

<p>Die <strong>Serendipity Styx</strong> Projektseite ist auf <code>https://ophian.github.io/</code> zu finden.
Das Styx Repository wird auf <code>https://github.com/ophian/</code> gehostet und dort können
Sie die offiziellen Release-Zips unter <code>https://github.com/ophian/styx/releases</code> herunterladen,
aud der eigentlichen Styx Projektseite nachlesen, oder einen Fehler, Wunsch,
oder eine Nachricht in der Projekt-Issue- oder Projekt-Discussions-Datenbank hinterlassen.</p>

<p><span class="item mbold">Development/Entwicklung</span></p>

<p>Wenn Sie zu Serendipity beitragen möchten, finden Sie hier was Sie dazu benötigen:</p>

<ul class="realList star">
  <li>Kreieren Sie einen GitHub Zugang, klonen Sie unser Repository, entwickeln sie Code und
      tragen Sie mit einem <em>pull request</em> zur Entwicklung bei. Wenn sie regelmäßig
      beitragen wollen, wären wir erfreut Ihnen bei Interesse eventuell ein <em>Membership</em>
      Zugang zu geben.</li>
  <li>Lesen Sie unseren kurzen englischsprachigen <a href="/hc/en/code-primer.html">Code
      Dokumentations Leitfaden</a>, um eine Idee davon zu bekommen, was in der Serendipity
      Welt und API WAS ist. Natürlich ist dies hier in diesem Buch an verschiedenen Stellen
      sehr ausführlich dokumentiert.</li>
  <li>Sie wollen zu <strong>einem Theme oder Plugin beitragen</strong>?
      Dazu benutzen Sie entweder GitHub <em>pull requests</em>, oder auch immer noch den
      alten Weg, in dem Sie ihren Vorschlag im Forum niederschreiben.
      Unsere Developer werden Ihnen hilfreich zur Hand gehen, soweit es die Zeit zulässt.</li>
</ul>

<p><span class="item mbold">Schnellzugriff:</span></p>

<ul class="realList star">
  <li>Plugins für <span class="item mbold">Serendipity Styx</span> und den eigentlichen
      <span class="item mbold">Styx Kern</span> finden Sie auf meiner <a href="https://github.com/ophian/">GitHub Seite</a>.</li>
  <li>Die Styx-Dokumentation wird hier im Styx <a href="/hc/en">Help Center</a> bereitgestellt.</li>
  <li>Benutzer Hilfe und Diskussionen finden Sie in den <a href="https://github.com/ophian/styx/discussions">Styx Discussions</a>.</li>
  <li>Das Serendipity <a href="/blog">Styx Blog</a> beinhaltet Neuigkeiten, Release Ankündungen
      und insbesondere Security Announcements.</li>
  <li>Die zusätzlichen <em>Plugins</em> und <em>Themes</em> sind unter <a href="/themes">Styx
      Spartacus Themes</a> bzw <a href="/plugins">Styx Spartacus Plugins</a> erreichbar;
      Sie können von dort auch direkt heruntergeladen werden. (Siehe dortige Erklärung.)</li>
  <li>Das <span class="item mbold">neue</span> Buch für <span class="item mbold">Serendipity
      Styx 3.8</span> aus <span class="item mbold">2022</span> lesen Sie hier ja bereits selbst.</li>
</ul>

<p><span class="item mbold">Diskussion / Feature Requests</span></p>

<p><span class="mbold">Wollen</span> Sie über Serendipity diskutieren?
<span class="mbold">Endlich</span> einmal Ihr (persönliches) Lieblingsärgernis zu Gehör bringen?
Einen <span class="mbold">Vorschlag</span> für ein bestimmtes <em>feature</em> machen wollen,
selbst ohne die Vorkenntnisse wie es eventuell zu gestalten wäre?
<span class="mbold">Dann</span> ist dieses <a href="https://github.com/ophian/styx/discussions">Forum</a> genau der
richtige Platz für Sie! Unsere Entwickler sind dort zu finden und können Ihnen wertvolle
Innenansichten geben, insbesondere dann, wenn Sie sich die Zeit genommen haben detailliert
zu beschreiben, was Sie wollen oder mit Serendipity für Probleme haben. Natürlich sollten Sie
<span class="mbold">immer zuerst</span> die <a href="/hc/en/faq/index.html">FAQ
(Frequently Asked Questions)</a> durchgelesen und vielleicht schon selbst das Forum
durchstöbert haben, bevor Sie andere danach suchen lassen.</p>

<p><em>Feature requests</em> sollten möglichst nicht in den <em>issue tracker</em>
auf Github gestellt werden; Wir diskutieren solches meist zuerst im Forum, und erst
wenn wir übereinstimmen und die Spezifika klargestellt haben, wird daraus ein Issue
im GitHub <em>tracker</em>. Dies kann für <span class="mbold">Styx</span> so natürlich nicht gelten!</p>

<p>Es gibt einen eigenständigen deutschen Bereich im Forum, wo man auch ohne englische
Sprachbarriere gut mit uns kommunizieren kann. Viele unserer Entwickler sprechen Deutsch.
Der englische Bereich ist jedoch für alle, die Englisch sprechen, immer der bessere
Platz zur Diskussion, damit keine internationalen Benutzer ausgegrenzt werden.</p>

<p>Haben Sie ein <span class="mbold">Bug</span> gefunden? Das kann passieren!
Wenn Sie uns beschreiben was passiert, eventuell ein wiederholbares Beispiel
zeigen können, springen Sie gleich auf unseren
<a href="https://github.com/s9y/Serendipity/Issues">GitHub issue tracker</a>
und füllen Sie einen <em>bug report</em> aus. Wenn unsere Developer diesen Bug
gefixt haben, welches meist sehr schnell passiert, werden Sie sofort darüber informiert.
Wenn der GitHub <em>issue tracker</em> für Sie zu kompliziert daherkommt, schreiben
Sie ihren <em>Request</em> in das Forum. Wir danken für Ihre Mithilfe!</p>

<p>Für <span class="mbold">Styx</span> muss auf den
<a href="https://github.com/ophian/styx/issues">GitHub Styx Issue</a> tracker verwiesen werden.</p>

<p>Bei mehreren Bug sollten Sie versuchen ein Issue per Bug aufzumachen.
GitHub Issues sollten in der englischen Sprache abgehalten und gestaltet werden.</p>

<p>Nicht-englisch sprechende Benutzer können Bugs gerne im Forum melden,
unsere Entwickler werden dies dann selbständig als Bug-Issues im System eintragen.</p>

<p><span class="item mbold">Security Reports, Exploits</span></p>

<p>Ein <span class="mbold">Security Issue</span> ist in unserem Code?
Das ist schlimm, aber passiert nur alle Jahre einmal.
Wir bitten Sie darum, Ihre <span class="mbold">security reports</span> via
E-mail an den Maintainer Garvin Hicking (blog AT garv PUNKT in) zu schicken,
damit dieser das Issue zuweisen und die Koordination eines verantwortlichen
<em>Disclosures</em> zusammen mit Ihnen abstimmen kann. Das Team gibt immer den
Dank an die Person zurück, die uns solch einen Bug oder ein solches Sicherheitsloch
meldet. Wir reagieren meist innerhalb von 24 Stunden nachdem Sie mit uns in Kontakt
getreten sind und sprechen mit Ihnen detailliert den weiteren Vorgang ab.</p>

<p>Wenn Sie es vorziehen, können Sie ein GitHub Security Issue aufmachen,
in dem sie uns Informationen hinterlassen, wie wir Sie erreichen können,
um Näheres zu erfahren. Bitte halten Sie eventuelle Informationen über das gefundene
<em>“Loch”</em> nur sehr allgemein, da dies ein öffentlich zugänglicher Bereich ist.</p>

<section id="U1071" class="sub">
<span class="u-toc">10.7.1 - Freier Zugriff</span>

<h3 class="subsection" id="freier-zugriff">Freier Zugriff</h3>

<p>Die GIT-Quellen sind für Besucher mit vollem Lesezugriff frei
zugänglich. Um darauf zuzugreifen, benötigen Sie eine lokal installierte GIT-Software.
Weitere Anweisungen, wie Sie auf ein <em>Repository</em> zugreifen können, sind
auf den Projekt- und Hilfs-Seiten <code>https://help.github.com/</code> (GIT)
ausführlich dokumentiert.</p>

<p>Schreibzugriff können Sie erlangen, indem Sie im Serendipity-Entwicklerforum
danach fragen und einige Beispiele dafür geben, was Sie beisteuern wollen. Wie
dieser Prozess vonstatten geht, ist auf Seite
<span class="pageref"><a href="#community">community</a></span> näher erläutert.
Stichworte sind zB. <code>clone</code>, <code>pull-requests</code> und <code>membership</code>.</p>

<p>Den Quellcode von Serendipity finden Sie unter
<code>https://github.com/s9y/Serendipity</code> und alle
Spartacus-Plugins unter
<code>https://github.com/s9y/additional_plugins/</code>. Von dort
aus können Sie sogar einzelne Dateien direkt herunterladen oder neue
Dateiversionen miteinander vergleichen. Gleiches gilt für Themes.</p>

</section><!-- section.sub end -->

<section id="U1072" class="sub">
<span class="u-toc">10.7.2 - Aktualisierung über GIT/CVS/SVN</span>

<h3 class="subsection" id="aktualisierung-über-git-cvs-svn">Aktualisierung über GIT/CVS/SVN</h3>

<p>GIT/CVS ist nicht nur für Entwickler von Interesse. Wenn Sie SSH-Zugriff zu Ihrem
Server besitzen, kann GIT/CVS sehr hilfreich dabei sein, Serendipity auf dem
aktuellsten Stand zu halten.</p>

<p>Es wird auch vorerst weiterhin nach CVS gesynct,
damit Spartacus die Packages von dort auch laden kann, und S9y Nutzer,
die seit jeher CVS/SF nutzen, auch weiterhin mit Paketen versorgt werden können.
Aus diesem Grund können bei manuellen Downloads über Spartacus auch noch
für den Nutzer unrelevante <code>CVS</code>-Verzeichnisse in den einzelnen Plugins
oder Themes zu finden sein.</p>

<p>Anstatt erst ein ZIP-Archiv mit der neuen Serendipity-Version herunterzuladen,
könnten Sie Ihren Server auch direkt über einen <em>GIT/CVS/SVN checkout</em> laufen
lassen. Sobald Sie Serendipity zB. mittels</p>

<pre><code class="bash">
    user@server:~# cd /home/www/example.com/<br>
    user@server:~# svn checkout svn://svn.berlios.de/serendipity/trunk
</code></pre>

<p>auf Ihren Server geladen haben, reicht später ein einfaches</p>

<pre><code class="bash">
    user@server:~# cd /home/www/example.com/<br>
    user@server:~# svn update
</code></pre>

<p>um die aktuellste Version der Serendipity-Dateien zu erhalten. Dabei hat CVS/SVN
einen zentralen Vorteil: Falls Sie jemals manuell eine Datei editiert haben,
kann der CVS/SVN-Client dafür sorgen, dass Ihre Änderungen nicht überschrieben
werden. Bis zu gewissen Grenzen kann CVS/SVN automatisch dafür sorgen, dass Ihre
Änderungen mit den offiziellen Änderungen an einer Datei verbunden werden. Nur
wenn sich eine Datei grundlegend ändert, wird CVS/SVN auf einen Konflikt hinweisen.</p>

<p>Im gleichen Zug ermöglicht es Ihnen CVS/SVN, Ihre eigenen Änderungen an
Serendipity mittels</p>

<pre><code class="bash">
    user@server:~# cd /home/www/example.com/<br>
    user@server:~# svn diff
</code></pre>

<p>in einem maschinenlesbaren Format auszuwerten. Wenn Sie beispielsweise
sinnvollen Code zur Community beisteuern wollen, hilft dieses
<em>DIFF-Format</em>, Ihre Änderungen allen zur Verfügung zu stellen.</p>

<p>Mit <span class="mbold">GitHub</span> [*]
<span class="footnote"><i class="fa fa-info-circle"></i> <a href="https://pages.github.com/" target="_blank" rel="noopener">https://pages.github.com/</a></span><!-- footnote -->
<span class="footnote"><i class="fa fa-info-circle"></i> <a href="https://git-scm.com/doc" target="_blank" rel="noopener">https://git-scm.com/doc</a></span><!-- footnote -->,
unserem hauptsächlichen Kollaborations- und Versionsverteilungssystem sieht das Ganze so aus:</p>

<p><span class="item mbold">Klonen</span> des Serendipity Repositories:</p>

<pre><code class="bash">
    user@server:~# git clone https://github.com/s9y/Serendipity.git
</code></pre>

<p>Erstellen einer einfachen Beispiel Datei mit Inhalt in einem ebenso
beispielhaften <em>username.github.io</em> Web-Verzeichnisses:</p>

<pre><code class="bash">
    user@server:~# cd username.github.io<br>
    user@server:~# echo "Hello World" &gt; index.html
</code></pre>

<p><span class="item mbold">Push</span> - Hinzufügen, veröffentlichen, und die Änderungen hinaufladen:</p>

<pre><code class="bash">
    user@server:~# git add --all<br>
    user@server:~# git commit -m "Initial commit"<br>
    user@server:~# git push -u origin master
</code></pre>

<p>Nun hat man einen <span class="mbold"><em>master</em></span> Branch.
Der wäre normalerweise zuständig für die laufende Weiterentwicklung.
In Serendipity ist dies zur Zeit der 2.1 Developer Zweig (hier kurz
<span class="mbold">branch</span> genannt). Weitere Zweige sind abgetrennt
und dienen als Archive und Repositories für ältere Versionen, und sind
besonders dann notwendig, wenn einem Zweig später ein gesondertes Bugfix
Release eingearbeitet werden muss. Dies sind zur Zeit, der 1.6 Series
branch, der 1.7 Series branch und der 2.0 Series branch. Branches dienen
aber auch der Entwicklung einer bestimmten, vielleicht aufwendigeren
Umgestaltung. Diese werden dann später, sollten sich die Änderungen als
gut herausstellen, zB. wieder in den Master-Zweig eingepflegt.</p>

<p>Der Wechsel eines Branch-Zweiges gestaltet sich einfach durch ein:</p>

<pre><code class="bash">
    user@server:~# git checkout &lt;Name des Branch&gt;
</code></pre>

<p>Später wäre dann die einfachste und immerwährende Commit Abfolge:
<em>“holen”</em>, <em>“setzen”</em>, <em>“senden”</em> (<em>pull, commit, push</em>): </p>

<pre><code class="bash">
    user@server:~# git pull origin master
</code></pre>

<p>Arbeiten mehrere Benutzer fleißig an einem Repository, so findet man
schnell heraus, dass dies mitunter fast gleichzeitig geschieht und sich
<em>commits</em> und Dateiversionen unweigerlich in die Quere kommen können.
GIT hat für diese Fälle vorgesorgt und weist einen mit Fehlermeldungen auf
eventuelle <em>merge conflicts</em>, oder inzwischen veränderte Dateien hin,
die man zB. selber gerade bearbeitet hat und nun heraufladen will.
Generell gilt es einfach <em>schnell</em> zu sein und unmittelbar vor dem
<em>commit</em> und dem <em>push</em> <span class="mbold">immer</span>
erst ein <em>pull</em> zu ziehen.</p>

<p>Mittels einer GUI oder der Konsole können nun die mit einem geeignetem Editor[*] gemachten Änderungen
<span class="footnote"><i class="fa fa-info-circle"></i> <a href="https://www.nano-editor.org/" target="_blank" rel="noopener">https://www.nano-editor.org/</a></span><!-- footnote -->
<span class="footnote"><i class="fa fa-info-circle"></i> <a href="https://www.vim.org/" target="_blank" rel="noopener">https://www.vim.org/</a></span><!-- footnote -->
<span class="footnote"><i class="fa fa-info-circle"></i> <a href="https://www.scintilla.org/" target="_blank" rel="noopener">https://www.scintilla.org/</a></span><!-- footnote -->
<span class="footnote"><i class="fa fa-info-circle"></i> <a href="https://notepad-plus-plus.org/" target="_blank" rel="noopener">https://notepad-plus-plus.org/</a></span><!-- footnote -->
<span class="footnote"><i class="fa fa-info-circle"></i> <a href="https://itsfoss.com/best-modern-open-source-code-editors-for-linux/" target="_blank" rel="noopener">https://itsfoss.com/best-modern-open-source-code-editors-for-linux/</a></span><!-- footnote -->

<figure id="fig-real_programmers" style="display: flex; width: 68%; margin-top: -8em; margin-left: 0em;">
    <picture>
      <source srcset="media/real_programmers.webp" type="image/webp">
      <img src="media/real_programmers.png" alt="real_programmers.png" title="Abbildung xkcd: © xkcd.com, Randall Munroe, CC-ANC 2.5 license" loading="lazy" width="740" height="406">
    </picture>
</figure><br>

lokal commited und mit:</p>

<pre><code class="bash">
    user@server:~# git push origin master
</code></pre>

<p>in das Github (remote) Repository herauf geladen werden.</p>

<p>Auch die Spartacus-Plugins können Sie komfortabel über einen <em>CVS checkout</em>
verwalten. Dabei kommt Ihnen zugute, dass Serendipity beliebig verschachtelte
Verzeichnisstrukturen des <code>plugins</code>-Verzeichnisses unterstützt. Einen Checkout
des CVS-Moduls <code>additional_plugins</code> können Sie wie folgt erreichen:</p>

<pre><code class="bash">
    user@server:~# cd /home/www/example.com/plugins<br>
    user@server:~# cvs -d:pserver:anonymous@php-blog.cvs.sf.net:/cvsroot/php-blog login<br>
    user@server:~# cvs -d:pserver:anonymous@php-blog.cvs.sf.net:/cvsroot/php-blog<br>
    &nbsp;checkout additional_plugins
</code></pre>

<p>Daraufhin enthält das Verzeichnis <code>/plugins/additional_plugins</code> alle
Zusatz-Plugins von Serendipity. Danach können Sie jedes verfügbare Plugin direkt
aktivieren, ohne es herunterzuladen. Regelmäßige Updates an Plugins können dann
ebenfalls per <code>cvs update</code> eingespielt werden.</p>

<p>Dasselbe Vorgehen gilt neben <code>plugins</code> übrigens auch für <code>templates</code>:</p>

<pre><code class="bash">
    user@server:~# cd /home/www/example.com/templates<br>
    user@server:~# cvs -d:pserver:anonymous@php-blog.cvs.sf.net:/cvsroot/php-blog login<br>
    user@server:~# cvs -d:pserver:anonymous@php-blog.cvs.sf.net:/cvsroot/php-blog checkout additional_themes
</code></pre>

<p>Analog natürlich für die heute verwendeten <span class="mbold">Git</span>Hub S9y Repositories:</p>

<pre><code class="bash">
    user@server:~# cd /home/GIT/s9y/additional_plugins<br>
    user@server:~# git pull origin master<br>
    ... commit and push
</code></pre>

<pre><code class="bash">
    user@server:~# cd /home/GIT/s9y/additional_themes<br>
    user@server:~# git pull origin master<br>
    ... commit and push
</code></pre>

</section><!-- section.sub end -->

<section id="U1073" class="sub">
<span class="u-toc">10.7.3 - Spartacus</span>

<h3 class="subsection" id="spartacus-2">Spartacus</h3>

<p class="tagging invisible">
<span class="tag-box invisible">
    <span class="inline-tag">Spartacus</span>
</span>
</p>

<p><em>Spartacus</em> ist das zentrales Plugin-Archiv von Serendipity. Es besteht aus zwei
Komponenten: einem Server und einem Client. Der Server (GitHub) bietet die
Plugins an, der Client (das Spartacus-Plugin Ihres Blogs) lädt ein Plugin herunter.</p>

<p>Im Hintergrund passiert Folgendes: Auf dem GitHub-Server wird das
GIT-Repository <code>additional_plugins</code> bzw. <code>additional_themes</code> verwaltet.
Dort werden bei einem Update durch einen manuellen oder automatisierten Vorgang [*]
<span class="footnote"><i class="fa fa-info-circle"></i> Für Interessierte: Das
automatische Script zur Erstellung ist in diesem Repository als Datei
<code class="item file">emerge_spartacus.php</code> hinterlegt.</span><!-- footnote -->
zahlreiche XML-Dateien erstellt, die alle notwendigen Informationen der Plugins enthalten.</p>

<p>Daraufhin werden anhand dieser XML-Informationen automatisch HTML-Dateien
erzeugt, die auf <code>https://ophian.github.io/plugins/</code> dargestellt werden. Jedes Plugin
sollte eigentlich zudem als ZIP-Archiv komprimiert und ebenfalls auf dem Webserver zur
Verfügung gestellt, was aber der gegenwärtigen Struktur auf GitHub nicht entspricht (sihe dortige Erklärung).
Nichts desto trotz ist dies ja nur die Notfall-Methode einer Plugin Installation, wenn das eingebaute
Spartacus Plugin auf ihrer Server-Präsenz nicht laufen sollte.</p>

<p><strong>Serendipity Styx</strong> nutzt eine etwas andere Technik, so dass das
Spartacus-Web auf <code>https://ophian.github.io/plugins/</code> nur den Abgleich des
originalen S9y Plugin-Repositories ermöglicht. Das <a href="../plugins">Serendipity
Styx Plugins</a> und das <a href="../themes">Serendipity
Styx Themes</a>-Repository sind aber inhaltlich ihren originalen Vorhängern weit voraus.
Erweiterte Themes können komprimiert direkt aus diesem Web-Repository per Hand gezogen werden.</p>

<p>
<span class="tag-box invisible">
    <span class="inline-tag">GitHub.com</span>
</span>
Die Sammlung an XML-Dateien sowie der Quellcode der Plugins werden zusätzlich
automatisch an eventuell vorhandene Mirror Server ausgeliefert. Sollte einmal ein
Server nicht erreichbar sein, gibt es somit immer noch einen weiteren Notfallserver.</p>

<p>Das ehemals als Hauptmirror-Server eingestellte <code>Netmirror.org</code> ist seit 2017 nicht mehr
erreichbar und wurde aus den Voreinstellungen entfernt. <code>SourceForge</code> dient als altes Relikt
aus vergangenen CVS-Repository Tagen.</p>

<p><strong>Serendipity Styx</strong> hat GitHub voreingestellt und nutzt zusätzlich eine benutzerdefinierte
URL für das Styx-Kern-Repository sowie das Styx additional_plugins- und das additional_themes-Repository.</p>

<p>Seit dem Umzug auf GitHub im Jahre 2011 kann Spartacus die Dateien auch gleich
von dort abholen. Sie müssen in den Spartacus-Plugin-Konfigurationsoptionen dazu nur
den <em>Datei/Mirror Speicherort (Downloads)</em> auf <em>GitHub</em> stellen.</p>

<p>Nun ist der serverseitige Vorgang abgeschlossen, und der Client (Ihr Blog) muss
lediglich darauf zugreifen. Beim Aufruf der Plugin-Verwaltungsoberfläche Ihres
Blogs lädt das Plugin automatisch vom konfigurierten Server die XML-Datei
herunter. Die Liste von Ereignis-Plugins befindet sich in der Datei
<code>package_event_de.xml</code>, die Seitenleisten-Plugins in der Datei
<code>package_sidebar_de.xml</code> und Templates in <code>package_template.xml</code>.
Plugin-Beschreibungen sind sprachabhängig, das Kürzel am Ende des Dateinamens legt
dabei die Sprache fest.</p>

<p>Diese XML-Dateien werden vom Plugin in Ihr Verzeichnis <code>templates_c</code>
heruntergeladen und von dort aus gecached. Erst wenn Ihre temporären Dateien
älter als einen Tag sind, werden sie vom Plugin erneut geladen. Dies verringert
den anfallenden Traffic deutlich.</p>

<p>Die XML-Dateien werden vom Plugin ausgewertet und in der Oberfläche
dargestellt. Wenn Sie nun eines dieser Spartacus-Plugins installieren wollen,
lädt das Plugin die Rohdateien direkt vom konfigurierten Mirror-Server herunter
und speichert sie lokal auf Ihrem Server.</p>

<p>Sobald die Dateien lokal vorhanden sind, werden sie von Serendipity wie übliche
Plugins behandelt. Einmal via Spartacus heruntergeladene Dateien können dann in
Zukunft jeweils mit der aktuellsten Version des Plugins verglichen und
gegebenenfalls neu heruntergeladen werden.</p>

</section><!-- section.sub end -->

</section><!-- section.index end -->

<section id="S1080" class="index">
<span class="s-toc">10.8 - Plugin-API</span>

<h3 class="section" id="plugin-api">Plugin-API</h3>

<p class="tagging invisible">
<span class="tag-box invisible">
    <span class="inline-tag">Plugin-API</span>
</span>
<span class="label invisible" id="pluginapi">pluginapi</span>
</p>

<p>Die Serendipity Plugin-API stellt das Herz von Serendipity dar. Als API
bezeichnet man eine Sammlung an Funktionen oder Objekten/Klassen, die
standardisierten Zugriff auf ein System zulassen.</p>

<p>Serendipity abstrahiert mit seiner Plugin-API beinahe alle Vorgänge im
Kernsystem. Plugins haben an vielen (und leicht erweiterbaren) Stellen im
Arbeitsablauf des Frontends und Backends die Möglichkeit, beliebig einzugreifen
und PHP-Code auszuführen.</p>

<p>Auf PHP-Seite ist diese Plugin-API mittels objektorientierter Techniken
(<em>OO</em>) umgesetzt. Objektorientierte Programmierung hat den Vorteil, dass sie
relativ leicht dokumentiert werden kann und gerade für Rohgerüste durchschaubarer
ist als eine einfache Ansammlung von Funktionen. Objektvererbung und Kapselung
erhöhen zudem die Code-Qualität und führen zu weniger Redundanz. Für Programmierer
ist es wichtig, zwischen einem Objekt und einer Klasse zu unterscheiden: Klassen
legen lediglich eine Struktur fest (ähnlich wie ein Bauplan). Objekte sind
<em>umgesetzte</em> Baupläne, also zB. ein fertiges Haus. Demzufolge bietet die
Serendipity Plugin-API eine Reihe von Bauplänen an, nach denen Sie Ihre Plugins
entwickeln können. Teile der Plugin-API stehen als <em>fertige Häuser</em> direkt
zur Verfügung und können aktiv aufgerufen werden, um zB. eine Liste aller
verfügbaren Plugins zu erhalten.</p>

<p>Die Plugin-API unterscheidet sich dabei leicht, je nachdem, ob sie bei einem
Ereignis-Plugin oder einem Seitenleisten-Plugin zum Einsatz kommt.</p>

<p>Ein Plugin besteht dabei aus einer PHP-Datei wie
<code>serendipity_event_testplugin.php</code>. In dieser PHP-Datei wird eine Sammlung
von Plugin-API-Aufrufen innerhalb einer sogenannten <em>Klasse</em> gekapselt.
Sämtliche Aktionen und Meta-Informationen des Plugins befinden sich in dieser
Datei und müssen in einem gleichnamigen Verzeichnis wie zB.
<code>plugins/serendipity_event_testplugin</code> abgelegt werden.</p>

<p>Der Serendipity-Kern kümmert sich automatisch darum, alle installierten
Plugin-Dateien zu laden (<em>instanzieren</em>) und an den gewünschten Stellen
auszuführen.</p>

<p>Dazu verwendet Serendipity ein ereignisgesteuertes Prinzip. Ein PHP-Script läuft
immer linear von <em>oben nach unten</em> ab und führt alle enthaltenen Kommandos
aus. Genauso läuft auch (wie auf Seite <span class="pageref"><a href="#workflow">workflow</a></span> dokumentiert) der
Kern-Workflow von Serendipity ab. An zahlreichen Stellen können sogenannte
<em>Ereignisse</em> (Events) stattfinden, die die Ausführung des Kerns kurzzeitig
<em>pausieren</em> und stattdessen alle Plugins ausführen, die sich für das jeweilige Ereignis
registriert haben.</p>

<p>Das Plugin erhält dabei eine Liste an Übergabeparametern und -variablen (<code>Event-Daten</code>), mit
denen es beliebige Aktionen durchführen kann. Nachdem dies geschehen ist, wird
das nächste Plugin für dasselbe Ereignis ausgeführt - solange, bis keine weiteren
auszuführenden Plugins mehr vorhanden sind. Dann kehrt der Kern-Workflow zurück
zu der Stelle vor dem Plugin-Aufruf und fährt fort mit den Daten, die
möglicherweise von Plugins verändert wurden.</p>

<p>Ein Beispiel: Wenn ein Artikel gespeichert wird, bereitet Serendipity die Daten
in einem umfangreichen PHP-Array vor. Bevor diese Daten des Artikels nun in der
Datenbank gespeichert werden, wird das Ereignis namens <code>backend_save</code>
ausgeführt. Wenn ein Plugin auf dieses Ereignis <em>lauscht</em>, kann es die
Artikeldaten verändern. Beispielsweise kann das Plugin <em>Google Sitemap</em>
dafür sorgen, dass Google über den gerade erstellten Artikel informiert (<em>gepingt</em>) wird.</p>

<p>Ein Plugin kann nur entweder als Ereignis- oder als Seitenleisten-Plugin
vorliegen. Seitenleisten-Plugins können lediglich Ausgaben in der Seitenleiste
einbinden und auf keine Ereignisse reagieren. Ereignis-Plugins wiederum können
ohne Weiteres keine Ausgaben in der Seitenleiste vornehmen. Sie können jedoch
Abhängigkeiten von Plugins untereinander definieren und sowohl ein
Seitenleisten-Plugin als auch ein Ereignis-Plugin im selben Verzeichnis
unterbringen.</p>

<p>Bei der Erstellung eines neuen Plugins ist es am einfachsten, sich ein
bestehendes Plugin vorzunehmen, das so ähnlich funktioniert wie das, was Sie
programmieren möchten. Kopieren Sie dieses Plugin dann in ein neues Verzeichnis
mit neuem Namen, benennen Sie die <code>.php</code>-Datei entsprechend um und ändern Sie den
Namen der PHP-Klasse in dieselbe Bezeichnung. Nun können Sie nach Belieben diesen
Plugin-Klon verändern und Ihren Anforderungen entsprechend anpassen.</p>

<p>Es gibt bereits zahlreiche Plugins für Serendipity, so dass Sie für jedes
Vorhaben zumindest eine grobe Vorlage finden sollten.</p>

<section id="U1081" class="sub">
<span class="u-toc">10.8.1 - Seitenleisten-API</span>

<h3 class="subsection" id="seitenleisten-api">Seitenleisten-API</h3>

<p>Die API eines Seitenleisten-Plugins ist die einfachste Form, um sich mit einem
Serendipity-Plugin vertraut zu machen. Seitenleisten-Plugins müssen mit dem Präfix
<code>serendipity_plugin_...</code> benannt werden.</p>

<p>Ein einfaches Plugin, das lediglich die Ausgabe <code>Hallo Welt!</code> in der
Seitenleiste liefert, können Sie als
<code>plugins/serendipity_plugin_helloworld/serendipity_plugin_helloworld.php</code>
speichern:</p>

<pre class="snippet"><code id="helloworld" class="php">&lt;?php<br>
<br>
if&nbsp;(IN_serendipity&nbsp;!==&nbsp;true)&nbsp;{<br>
&nbsp;&nbsp;&nbsp;&nbsp;die&nbsp;("Don't&nbsp;hack!");<br>
}<br>
<br>
class&nbsp;serendipity_plugin_helloworld&nbsp;extends&nbsp;serendipity_plugin<br>
{<br>
&nbsp;&nbsp;&nbsp;&nbsp;var&nbsp;$title&nbsp;=&nbsp;'Beispiel-Plugin:&nbsp;Hello&nbsp;world!';<br>
<br>
&nbsp;&nbsp;&nbsp;&nbsp;function&nbsp;introspect(&amp;$propbag)<br>
&nbsp;&nbsp;&nbsp;&nbsp;{<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;global&nbsp;$serendipity;<br>
<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;$this-&gt;title&nbsp;=&nbsp;$this-&gt;get_config('title',&nbsp;$this-&gt;title);<br>
<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;$propbag-&gt;add('name',&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;'Beispiel-Plugin:&nbsp;Hello&nbsp;world!');<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;$propbag-&gt;add('description',&nbsp;&nbsp;&nbsp;'Beschreibung&nbsp;des&nbsp;Plugins');<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;$propbag-&gt;add('stackable',&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;true);<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;$propbag-&gt;add('author',&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;'Garvin&nbsp;Hicking');<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;$propbag-&gt;add('version',&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;'47.11');<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;$propbag-&gt;add('requirements',&nbsp;&nbsp;array(<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;'serendipity'&nbsp;=&gt;&nbsp;'0.8',<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;'smarty'&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=&gt;&nbsp;'2.6.7',<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;'php'&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=&gt;&nbsp;'4.1.0'<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;));<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;$propbag-&gt;add('groups',&nbsp;array('FRONTEND_VIEWS'));<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;$propbag-&gt;add('configuration',&nbsp;array('title',&nbsp;'intro'));<br>
&nbsp;&nbsp;&nbsp;&nbsp;}<br>
<br>
&nbsp;&nbsp;&nbsp;&nbsp;function&nbsp;introspect_config_item($name,&nbsp;&amp;$propbag)<br>
&nbsp;&nbsp;&nbsp;&nbsp;{<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;switch($name)&nbsp;{<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;case&nbsp;'title':<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;$propbag-&gt;add('type',&nbsp;'string');<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;$propbag-&gt;add('name',&nbsp;TITLE);<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;$propbag-&gt;add('description',&nbsp;'');<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;$propbag-&gt;add('default',&nbsp;$this-&gt;title);<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;break;<br>
<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;case&nbsp;'intro':<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;$propbag-&gt;add('type',&nbsp;'string');<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;$propbag-&gt;add('name',&nbsp;'Ihr&nbsp;Text');<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;$propbag-&gt;add('description',&nbsp;'');<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;$propbag-&gt;add('default',&nbsp;'Hallo&nbsp;welt!');<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;break;<br>
<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;default:<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;return&nbsp;false;<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;return&nbsp;true;<br>
&nbsp;&nbsp;&nbsp;&nbsp;}<br>
<br>
&nbsp;&nbsp;&nbsp;&nbsp;function&nbsp;generate_content(&amp;$title)<br>
&nbsp;&nbsp;&nbsp;&nbsp;{<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;global&nbsp;$serendipity;<br>
<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;$title&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=&nbsp;$this-&gt;get_config('title',&nbsp;$this-&gt;title);<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;$intro&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=&nbsp;$this-&gt;get_config('intro');<br>
<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;echo&nbsp;$intro&nbsp;.&nbsp;"&lt;br&nbsp;/&gt;\n";<br>
&nbsp;&nbsp;&nbsp;&nbsp;}<br>
<br>
}<br>
</code></pre><!-- snippet -->

<p><span class="label invisible" id="api-lang">api-lang</span>
Dieses Plugin ist stark vereinfacht, es enthält beispielsweise keine
internationalisierte Sprachverwaltung. Dies wird in Plugins meist per
<em>Include</em> einer Datei wie <code>lang_de.inc.php</code> gelöst, die die
entsprechenden Sprachkonstanten festlegt. Eingebunden wird eine solche
Sprachdatei dann mit folgendem Code am Anfang der PHP-Datei:</p>

<pre><code class="php">
    $probelang = dirname(__FILE__) . '/' . $serendipity['charset'] .<br>
    'lang_' . $serendipity['lang'] . '.inc.php';<br>
    if (file_exists($probelang)) {<br>
    &nbsp;&nbsp;&nbsp; include $probelang;<br>
    }<br>
    <br>
    include dirname(__FILE__) . '/lang_en.inc.php';
</code></pre>

<p>beziehungsweise seit Serendipity 1.6:</p>

<pre><code class="php">
    // Load possible language files<br>
    @serendipity_plugin_api::load_language(dirname(__FILE__));
</code></pre>

<p>Es wird bei Plugins und Themes folgende Methodik angewendet:
Zuerst wird die <code>lang</code>-Datei der gesuchten Sprache, mit der in der
<code>LANG_CHARSET</code> definierten Sprache, vorzugsweise <code>UTF-8 kodiert</code>
gesucht, dann wird die englische Sprachdatei geladen, die immer im <em>“Root”</em>
des Plugins/Themes liegt. Seit Serendipity 1.6 kann und sollte hier die verbesserte,
auch weil kürzere<em>API</em>-Schreibweise genutzt werden.</p>

<p>Die Variable <code>$probelang</code> enthält den Dateinamen der lokalen Sprachdatei,
die eingebunden wird. Zusätzlich bindet das Plugin zur Sicherheit die englische Sprachdatei ein,
da diese Datei manchmal einige noch nicht übersetzte Konstanten enthalten kann.</p>

<p>Gehen wir nun den vollständigen Code des Plugins einmal durch. Die ersten
drei Zeilen beinhalten eine Sicherheitsabfrage, ob das Plugin auch wirklich im
Serendipity-Kontext ausgeführt wird. Die Konstante <code>IN_serendipity</code> ist nur
dann gesetzt, wenn das Serendipity-Framework geladen wurde.</p>

<p>Danach wird die PHP-Klasse <code>serendipity_plugin_helloworld</code> definiert, die
sich von der Basisklasse <code>serendipity_plugin</code> ableitet und deren Methoden
einsetzt.</p>

<p>Die Methode <code>introspect()</code> dient dem Plugin dazu, seine Metadaten
festzulegen. Dort wird ein Hilfsobjekt <code>$propbag</code> verwendet, das ein
beliebiges Array mit Daten wie dem Namen des Plugins, der Beschreibung, etwaigen
Copyrights, Voraussetzungen und Liste von Konfigurationsoptionen enthalten kann.</p>

<p>Die Methode <code>introspect_config_item()</code> wird verwendet, damit das
Plugin beliebige Konfigurationsoptionen im Plugin-Manager darstellen und auswerten kann.</p>

<p>Zuletzt wird die Methode <code>generate_content()</code> deklariert, die später die
eigentliche Ausgabe des Plugins mit beliebigem PHP-Code enthält.</p>

<p>Dabei liest das Plugin die Konfigurationsoption <code>intro</code> aus, mit der Sie in
der Konfiguration des Plugins einen beliebigen HTML-Text eintragen konnten.
Diese Variable wird ganz einfach ausgegeben.</p>

<p>
<span class="tag-box invisible">
    <span class="inline-tag">Fehler!Plugins</span>
</span>
Sobald ein derartiges Plugin auf dem Server gespeichert wurde, können
Sie es wie gewohnt über die Plugin-Oberfläche aktivieren. Achten Sie darauf,
etwaige PHP-Fehler zu vermeiden. Ansonsten werden diese im Backend oder auch im
Frontend ausgegeben. Fatale PHP-Fehlermeldungen (Syntaxfehler) können zudem
dazu führen, dass das gesamte Serendipity-Frontend nicht mehr aufgerufen werden
kann. Wenn Sie den Fehler nicht direkt finden, können Sie einfach die PHP-Datei
des Plugins löschen, um Ihr Blog wieder funktionabel zu machen.</p>

</section><!-- section.sub end -->

<section id="U1082" class="sub">
<span class="u-toc">10.8.2 - Ereignis-API</span>

<h3 class="subsection" id="ereignis-api">Ereignis-API</h3>

<p class="tagging invisible">
<span class="tag-box invisible">
    <span class="inline-tag">Event-API</span>
    <span class="inline-tag">Ereignis-API</span>
</span>
</p>

<p>Ganz ähnlich wie ein Seitenleisten-Plugin sieht die Struktur eines
Ereignis-Plugins aus.</p>

<p>Auch hier wollen wir als Beispiel ein einfaches Plugin herstellen, das lediglich
ein Stück HTML-Code im Frontend ausgibt.</p>

<p>Dieses speichern wir als
<code>plugins/serendipity_event_helloworld/serendipity_event_helloworld.php</code>:</p>

<pre class="snippet"><code id="helloworld2" class="php">&lt;?php<br>
<br>
if&nbsp;(IN_serendipity&nbsp;!==&nbsp;true)&nbsp;{<br>
&nbsp;&nbsp;&nbsp;&nbsp;die&nbsp;("Don't&nbsp;hack!");<br>
}<br>
<br>
class&nbsp;serendipity_event_helloworld&nbsp;extends&nbsp;serendipity_event<br>
{<br>
&nbsp;&nbsp;&nbsp;&nbsp;function&nbsp;introspect(&amp;$propbag)&nbsp;{<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;global&nbsp;$serendipity;<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;$propbag-&gt;add('name',&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;'Ereignis-Plugin:&nbsp;Hello&nbsp;world!');<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;$propbag-&gt;add('description',&nbsp;'Ereignis-Plugin&nbsp;Beschreibung');<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;$propbag-&gt;add('event_hooks',&nbsp;array('entries_header'&nbsp;=&gt;&nbsp;true,&nbsp;<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;'entry_display'&nbsp;&nbsp;=&gt;&nbsp;true));<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;$propbag-&gt;add('configuration',&nbsp;array('headline',&nbsp;'pagetitle'));<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;$propbag-&gt;add('author',&nbsp;'Garvin&nbsp;Hicking');<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;$propbag-&gt;add('version',&nbsp;'0.8.15');<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;$propbag-&gt;add('requirements',&nbsp;&nbsp;array(<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;'serendipity'&nbsp;=&gt;&nbsp;'0.8',<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;'smarty'&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=&gt;&nbsp;'2.6.7',<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;'php'&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=&gt;&nbsp;'4.1.0'<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;));<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;$propbag-&gt;add('groups',&nbsp;array('FRONTEND_EXTERNAL_SERVICES'));<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;$propbag-&gt;add('stackable',&nbsp;true);<br>
&nbsp;&nbsp;&nbsp;&nbsp;}<br>
<br>
&nbsp;&nbsp;&nbsp;&nbsp;function&nbsp;introspect_config_item($name,&nbsp;&amp;$propbag)<br>
&nbsp;&nbsp;&nbsp;&nbsp;{<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;global&nbsp;$serendipity;<br>
<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;switch($name)&nbsp;{<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;case&nbsp;'headline':<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;$propbag-&gt;add('type',&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;'string');<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;$propbag-&gt;add('name',&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;'Seitentitel');<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;$propbag-&gt;add('description',&nbsp;'');<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;$propbag-&gt;add('default',&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;'Beispiel');<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;break;<br>
<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;case&nbsp;'pagetitle':<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;$propbag-&gt;add('type',&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;'string');<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;$propbag-&gt;add('name',&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;'URL-Variable');<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;$propbag-&gt;add('description',&nbsp;'');<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;$propbag-&gt;add('default',&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;'beispiel');<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;break;<br>
<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;default:<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;return&nbsp;false;<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;return&nbsp;true;<br>
&nbsp;&nbsp;&nbsp;&nbsp;}<br>
<br>
&nbsp;&nbsp;&nbsp;&nbsp;function&nbsp;show()<br>
&nbsp;&nbsp;&nbsp;&nbsp;{<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;global&nbsp;$serendipity;<br>
<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if&nbsp;($this-&gt;selected())&nbsp;{<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if&nbsp;(!headers_sent())&nbsp;{<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;header('HTTP/1.0&nbsp;200');<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}<br>
<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;$serendipity['smarty']-&gt;assign('staticpage_pagetitle',&nbsp;preg_replace('@[^a-z0-9]@i',&nbsp;'_',&nbsp;$this-&gt;get_config('pagetitle')));<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;echo&nbsp;'&lt;h4&nbsp;class="serendipity_title"&gt;&lt;a&nbsp;href="#"&gt;'&nbsp;.&nbsp;$this-&gt;get_config('headline')&nbsp;.&nbsp;'&lt;/a&gt;&lt;/h4&gt;';<br>
<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;echo&nbsp;'&lt;div&gt;Bitte&nbsp;gib&nbsp;mir&nbsp;nur&nbsp;ein:&nbsp;Oh!&lt;/div&gt;';<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}<br>
&nbsp;&nbsp;&nbsp;&nbsp;}<br>
<br>
&nbsp;&nbsp;&nbsp;&nbsp;function&nbsp;selected()<br>
&nbsp;&nbsp;&nbsp;&nbsp;{<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;global&nbsp;$serendipity;<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if&nbsp;($serendipity['GET']['subpage']&nbsp;==&nbsp;$this-&gt;get_config('pagetitle')&nbsp;||<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;preg_match('@^'&nbsp;.&nbsp;preg_quote($this-&gt;get_config('permalink'))&nbsp;<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;.&nbsp;'@i',&nbsp;$serendipity['GET']['subpage']))&nbsp;{<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;return&nbsp;true;<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}<br>
<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;return&nbsp;false;<br>
&nbsp;&nbsp;&nbsp;&nbsp;}<br>
<br>
&nbsp;&nbsp;&nbsp;&nbsp;function&nbsp;event_hook($event,&nbsp;&amp;$bag,&nbsp;&amp;$eventData,&nbsp;$addData&nbsp;=&nbsp;null)<br>
&nbsp;&nbsp;&nbsp;&nbsp;{<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;global&nbsp;$serendipity;<br>
<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;$hooks&nbsp;=&nbsp;&amp;$bag-&gt;get('event_hooks');<br>
<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if&nbsp;(isset($hooks[$event]))&nbsp;{<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;switch($event)&nbsp;{<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;case&nbsp;'entry_display':<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if&nbsp;($this-&gt;selected())&nbsp;{<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if&nbsp;(is_array($eventData))&nbsp;{<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;$eventData['clean_page']&nbsp;=&nbsp;true;<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}&nbsp;else&nbsp;{<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;$eventData&nbsp;=&nbsp;array('clean_page'&nbsp;=&gt;&nbsp;true);<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;break;<br>
<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;case&nbsp;'entries_header':<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;$this-&gt;show();<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;break;<br>
<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;default:<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;return&nbsp;false;<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;break;<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;return&nbsp;true;<br>
<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}&nbsp;else&nbsp;{<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;return&nbsp;false;<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}<br>
&nbsp;&nbsp;&nbsp;&nbsp;}<br>
<br>
}<br>
</code></pre><!-- snippet -->

<p>Hier bestehen nur wenige Unterschiede:</p>

<ul class="realList">

    <li>Das Plugin verwendet das Präfix <code>serendipity_event_</code> anstelle von
        <code>serendipity_plugin_</code>.</li>

    <li>In der <code>introspect(</code>-Methode gibt das Plugin an, auf welche Ereignisse
        es reagieren will (<code>event_hooks</code>).</li>

    <li>Es deklariert zwei Hilfsmethoden, <code>show()</code> und <code>selected()</code>. Mit
        diesen beiden Methoden kapselt das Plugin Zugriffe auf die Darstellung seines
        Inhalts und die Überprüfung, ob es aufgerufen wird.</li>

    <li>Die zentrale Methode stellt <code>event_hook()</code> anstelle von
        <code>generate_content()</code> bei Seitenleisten-Plugins dar.</li>

</ul>

<p>
<span class="tag-box invisible">
    <span class="inline-tag">Dispatcher</span>
    <span class="inline-tag">Event-Hook</span>
</span>
Wichtigste Stelle aller Ereignis-Plugins ist die <code>event_hook()</code>-Methode.
Sie ist eine Art <em>Dispatcher</em> (Verteiler) und wird für jedes
Ereignis aufgerufen, so dass das Plugin anhand der Parameter entscheidet,
ob es zu diesem Ereignis eine Hilfsmethode oder direkten PHP-Code ausführt.</p>

<p>Diese Prüfung findet in einer großen <code>switch</code>-Anweisung statt, die alle
möglichen und <em>gelauschten</em> Ereignisse mit dem aktuellen Ereignis abgleicht
und den entsprechenden Codeteil ausführt.</p>

<p>Sobald Sie obiges Beispiel-Plugin installiert haben, können Sie es über die URL
<code>http://www.example.com/serendipity/index.php?serendipity[subpage]=beispiel</code> aufrufen.
Die URL-Variable <code>subpage</code> richtet sich dabei nach dem Wert, den Sie im
Plugin für <code>pagetitle</code> festgelegt haben.</p>

<p>Ereignis-Plugins sind meist komplexer als Seitenleisten-Plugins, weil sie mehr
Aktionen ausführen müssen und mehr Abhängigkeiten berücksichtigen. Das hier
vorgestellte Plugin ist daher sogar schon etwas komplexer, da es einen ganz
eigenen Inhalt im Frontend einbindet. Einfachere Ereignis-Plugins könnten auch
mit weniger Code schon simple Dinge ausführen, wie Leerzeilen durch den
HTML-Code <code>&lt;br /&gt;</code> (PHP-Funktion <code>nl2br()</code>) zu ersetzen:</p>

<pre class="snippet"><code id="helloworld3" class="php">&lt;?php<br>
<br>
if&nbsp;(IN_serendipity&nbsp;!==&nbsp;true)&nbsp;{<br>
&nbsp;&nbsp;&nbsp;&nbsp;die&nbsp;("Don't&nbsp;hack!");<br>
}<br>
<br>
class&nbsp;serendipity_event_nl2br&nbsp;extends&nbsp;serendipity_event<br>
{<br>
&nbsp;&nbsp;&nbsp;&nbsp;function&nbsp;introspect(&amp;$propbag)<br>
&nbsp;&nbsp;&nbsp;&nbsp;{<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;global&nbsp;$serendipity;<br>
<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;$propbag-&gt;add('name',&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;'nl2br');<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;$propbag-&gt;add('event_hooks',&nbsp;array('frontend_display'&nbsp;=&gt;&nbsp;true));<br>
&nbsp;&nbsp;&nbsp;&nbsp;}<br>
<br>
&nbsp;&nbsp;&nbsp;&nbsp;function&nbsp;event_hook($event,&nbsp;&amp;$bag,&nbsp;&amp;$eventData,&nbsp;$addData&nbsp;=&nbsp;null)<br>
&nbsp;&nbsp;&nbsp;&nbsp;{<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;global&nbsp;$serendipity;<br>
<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;$hooks&nbsp;=&nbsp;&amp;$bag-&gt;get('event_hooks');<br>
<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if&nbsp;(isset($hooks[$event]))&nbsp;{<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;switch($event)&nbsp;{<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;case&nbsp;'frontend_display':<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;$eventData['body']&nbsp;=&nbsp;nl2br($eventData['body']);<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;break;<br>
<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;default:<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;return&nbsp;false;<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;return&nbsp;true;<br>
<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}&nbsp;else&nbsp;{<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;return&nbsp;false;<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}<br>
&nbsp;&nbsp;&nbsp;&nbsp;}<br>
<br>
}<br>
</code></pre><!-- snippet -->

<p>Dieses Plugin entspricht einer entschlackten Version des
<code>serendipity_event_nl2br</code>-Plugins von Serendipity, aus dem alle unnötigen
Attribute entfernt wurden.</p>

</section><!-- section.sub end -->

<section id="U1083" class="sub">
<span class="u-toc">10.8.3 - Methoden der Plugin-API</span>

<h3 class="subsection" id="methoden-der-plugin-api">Methoden der Plugin-API</h3>

<p>Die Serendipity Plugin-API besteht im Wesentlichen aus fünf Klassen:</p>

<ul class="realList">
    <li><code class="item class">serendipity_plugin_api</code> für generelle API-Aufrufe,</li>
    <li><code class="item class">serendipity_plugin</code> als Basis für abgeleitete Plugin-Klassen,</li>
    <li><code class="item class">serendipity_event</code> als Basis speziell für abgeleitete Ereignis-Plugins und</li>
    <li><code class="item class">serendipity_plugin_api_extension</code> für weiterführende API-Aufrufe.</li>
    <li>Konfigurationseigenschaften und Meta-Werte von Plugins werden über die Klasse <code class="item class">serendipity_property_bag</code> abgedeckt.</li>
</ul>

<p>Alle Klassen sind in <code>include/plugin_api.inc.php</code> und <code>include/plugin_api_extension.inc.php</code> deklariert. Die Funktionsparameter 
sind in dieser Datei ausführlich mittels <code>phpDoc</code>-Kommentaren beschrieben.
Schlagen Sie die Parameter-Dokumentation bitte in dieser Datei nach.</p>

<article id="XU" class="subsub">

<header>
    <h4 class="subarticle" id="klasse-serendipity_plugin_api">Klasse serendipity_plugin_api</h4>
</header>

<p class="tagging invisible">
<span class="tag-box invisible">
    <span class="inline-tag">Plugin-API!serendipity_plugin_api</span>
</span>
</p>

<p>Die Kern-Aufrufe der Plugin-API können über PHP meist statisch aufgerufen
werden, d.h. mittels <code>serendipity_plugin_api::methodenname()</code>. Der
Serendipity-PHP-Kern macht hiervon regen Gebrauch, um nicht unnötigerweise eine
Objektinstanz weiterreichen zu müssen.</p>

<p>Nur wenige dieser Methoden sollten in Ihren Plugins angesprochen werden, da die
API größtenteils selbstverwaltend ist. Wichtiger für selbstentwickelte Plugins
sind vielmehr die Objektmethoden der abgeleiteten Klassen
<code class="item method constructor">serendipity_plugin</code> und <code class="item method constructor">serendipity_event</code>.</p>

<p>Folgende Methoden sind verfügbar:</p>

<p class="desc">
<span class="tag-box invisible">
    <span class="inline-tag">Plugin-API!serendipity_plugin_api!register_default_plugins</span>
</span>
<code class="item method">register_default_plugins()</code>
<span class="desc-info">
    <span class="box">
        Wird bei der Installation des Blogs aufgerufen, um eine Liste von
        Standard-Plugins einzufügen.
    </span>

    <span class="box">
        Zusätzliche Plugins können über die Datei <code>plugins/preload.txt</code> gesteuert
        werden. Diese Datei kann ein (lokales) Plugin pro Zeile (getrennt durch Zeilenumbruch)
        festlegen und getrennt durch einen Doppelpunkt angeben, auf welcher Seite
        (<code>left</code>, <code>right</code>, <code>event</code>) das Plugin installiert werden soll:
    </span>

    <span class="box">
        <span id="pre-style"><code class="txt">
            serendipity_event_xyz:event<br>
            serendipity_plugin_history:left<br>
            ...
        </code></span>
    </span>
</span>
</p>

<p class="desc">
<span class="tag-box invisible">
    <span class="inline-tag">Plugin-API!serendipity_plugin_api!create_plugin_instance</span>
</span>
<code class="item method">create_plugin_instance()</code>
<span class="desc-info">
    <span class="box">
        Aktiviert ein Serendipity-Plugin. Die Parameter der Methode bestimmen den
        PHP-Klassennamen sowie die Positionierung des Plugins. Wenn diese Methode eine
        Plugin-Datei nicht finden/einbinden kann, liefert sie eine Fehlermeldung wie:
    </span>
    <span class="box">
        <code>Fehler: serendipity_event_nl2br:dsfsdf323424334 ()</code>
    </span>
    <span class="box">
        Dabei gibt die API die eindeutige ID des nicht ladbaren Plugins sowie den
        Pfad zu der Plugin-Datei aus. Falls keine Pfadangabe vorhanden ist, liegt das Plugin
        in einem gleichnamigen Verzeichnis der <code>plugins</code>-Struktur.
    </span>
</span>
</p>

<p class="desc">
<span class="tag-box invisible">
    <span class="inline-tag">Plugin-API!serendipity_plugin_api!remove_plugin_instance</span>
</span>
<code class="item method">remove_plugin_instance()</code>
<span class="desc-info">
    <span class="box">
        Entfernt ein aktiviertes Plugin. Die Plugin-Dateien werden jedoch beibehalten, so
        dass das Plugin jederzeit erneut aktiviert werden kann.
    </span>
</span>
</p>

<p class="desc">
<span class="tag-box invisible">
    <span class="inline-tag">Plugin-API!serendipity_plugin_api!remove_plugin_value</span>
</span>
<code class="item method">remove_plugin_value()</code>
<span class="desc-info">
    <span class="box">
        Löscht alle Konfigurationswerte eines gewünschten Plugins.
    </span>
</span>
</p>

<p class="desc">
<span class="tag-box invisible">
    <span class="inline-tag">Plugin-API!serendipity_plugin_api!enum_plugin_classes</span>
</span>
<code class="item method">enum_plugin_classes()</code>
<span class="desc-info">
    <span class="box">
        Durchsucht die gesamte Serendipity-Verzeichnisstruktur nach aktivierbaren Plugins.
    </span>
</span>
</p>

<p class="desc">
<span class="tag-box invisible">
    <span class="inline-tag">Plugin-API!serendipity_plugin_api!traverse_plugin_dir</span>
</span>
<code class="item method">traverse_plugin_dir()</code>
<span class="desc-info">
    <span class="box">
        Durchsucht ein spezielles Verzeichnis rekursiv nach vorhandenen Serendipity-Plugins.
    </span>
</span>
</p>

<p class="desc">
<span class="tag-box invisible">
    <span class="inline-tag">Plugin-API!serendipity_plugin_api!getinstalledplugins@get_installed_plugins</span>
    <span class="inline-tag">Plugin-API!serendipity_plugin_api!enum_plugins</span>
</span>
<code class="item method">get_installed_plugins()</code>, 
<code class="item method">enum_plugins()</code>
<span class="desc-info">
    <span class="box">
        Liefert eine Liste von installierten Plugins.
    </span>
</span>
</p>

<p class="desc">
<span class="tag-box invisible">
    <span class="inline-tag">Plugin-API!serendipity_plugin_api!count_plugins</span>
</span>
<code class="item method">count_plugins()</code>
<span class="desc-info">
    <span class="box">
        Liefert die Anzahl von installierten Plugins.
    </span>
</span>
</p>

<p class="desc">
<span class="tag-box invisible">
    <span class="inline-tag">Plugin-API!serendipity_plugin_api!getClassByInstanceID</span>
</span>
<code class="item method">getClassByInstanceID()</code>
<span class="desc-info">
    <span class="box">
        Liefert den PHP-Klassennamen eines Plugins anhand seiner ID.
    </span>
</span>
</p>

<p class="desc">
<span class="tag-box invisible">
    <span class="inline-tag">Plugin-API!serendipity_plugin_api!is_event_plugin</span>
</span>
<code class="item method">is_event_plugin()</code>
<span class="desc-info">
    <span class="box">
        Prüft, ob ein bestimmtes Plugin ein Ereignis-Plugin darstellt.
    </span>
</span>
</p>

<p class="desc">
<span class="tag-box invisible">
    <span class="inline-tag">Plugin-API!serendipity_plugin_api!exists</span>
</span>
<code class="item method">exists()</code>
<span class="desc-info">
    <span class="box">
        Prüft, ob bereits ein Plugin desselben Typs installiert ist.
    </span>
</span>
</p>

<p class="desc">
<span class="tag-box invisible">
    <span class="inline-tag">Plugin-API!serendipity_plugin_api!autodetect_instance</span>
</span>
<code class="item method">autodetect_instance()</code>
<span class="desc-info">
    <span class="box">
        Prüft, ob bereits ein Plugin desselben Typs installiert ist. Wenn nicht, wird
        das entsprechende Plugin automatisch aktiviert.
    </span>
</span>
</p>

<p class="desc">
<span class="tag-box invisible">
    <span class="inline-tag">Plugin-API!serendipity_plugin_api!load_plugin</span>
</span>
<code class="item method">load_plugin()</code>
<span class="desc-info">
    <span class="box">
        Erzeugt ein PHP-Objekt einer gewünschten Plugin-Klasse. Ruft alle notwendigen
        Hilfsfunktionen auf, um die Plugin-Pfade und Metadaten zu belegen.
    </span>
</span>
</p>

<p class="desc">
<span class="tag-box invisible">
    <span class="inline-tag">Plugin-API!serendipity_plugin_api!includePlugin</span>
</span>
<code class="item method">includePlugin()</code>
<span class="desc-info">
    <span class="box">
        Hilfsfunktion, um die PHP-Klassendefinition eines Plugins einzubinden.
    </span>
</span>
</p>

<p class="desc">
<span class="tag-box invisible">
    <span class="inline-tag">Plugin-API!serendipity_plugin_api!probePlugin</span>
</span>
<code class="item method">probePlugin()</code>
<span class="desc-info">
    <span class="box">
        Hilfsfunktion, um die Metadaten eines Plugins einzulesen und gegebenfalls die
        notwendigen PHP-Dateien des Plugins einzubinden.
    </span>
</span>
</p>

<p class="desc">
<span class="tag-box invisible">
    <span class="inline-tag">Plugin-API!serendipity_plugin_api!getPluginInfo</span>
</span>
<code class="item method">getPluginInfo()</code>
<span class="desc-info">
    <span class="box">
        Liest die in der Datenbank zwischengespeicherten Meta-Informationen zu einem
        Plugin ein.
    </span>
</span>
</p>

<p class="desc">
<span class="tag-box invisible">
    <span class="inline-tag">Plugin-API!serendipity_plugin_api!setPluginInfo</span>
</span>
<code class="item method">setPluginInfo()</code>
<span class="desc-info">
    <span class="box">
        Speichert Meta-Informationen zu einem Plugin in der Datenbank.
    </span>
</span>
</p>

<p class="desc">
<span class="tag-box invisible">
    <span class="inline-tag">Plugin-API!serendipity_plugin_api!update_plugin_placement</span>
</span>
<code class="item method">update_plugin_placement()</code>
<span class="desc-info">
    <span class="box">
        Aktualisiert die Position und Ausführungsreihenfolge (links, rechts ...)
        eines Plugins.
    </span>
</span>
</p>

<p class="desc">
<span class="tag-box invisible">
    <span class="inline-tag">Plugin-API!serendipity_plugin_api!update_plugin_owner</span>
</span>
<code class="item method">update_plugin_owner()</code>
<span class="desc-info">
    <span class="box">
        Aktualisiert den Eigentümer (Blog-Redakteur) eines Plugins.
    </span>
</span>
</p>

<p class="desc">
<span class="tag-box invisible">
    <span class="inline-tag">Plugin-API!serendipity_plugin_api!geteventplugins@get_event_plugins</span>
</span>
<code class="item method">get_event_plugins()</code>
<span class="desc-info">
    <span class="box">
        Hilfsfunktion, um die Liste aller aktivierten Ereignis-Plugins einzulesen und
        gegebenenfalls in den Speicher zu laden.
    </span>
</span>
</p>

<p class="desc">
<span class="tag-box invisible">
    <span class="inline-tag">Plugin-API!serendipity_plugin_api!generate_plugins</span>
</span>
<code class="item method">generate_plugins()</code>
<span class="desc-info">
    <span class="box">
        Führt alle Plugins einer gewünschten Seitenleiste aus und liefert deren Inhalte
        zurück. Wird von der Smarty-Template-API aufgerufen (siehe Seite
        <span class="pageref"><a href="#Smarty-Templates">Smarty-Templates</a></span>).
    </span>
</span>
</p>

<p class="desc">
<span class="tag-box invisible">
    <span class="inline-tag">Plugin-API!serendipity_plugin_api!getplugintitle@get_plugin_title</span>
</span>
<code class="item method">get_plugin_title()</code>
<span class="desc-info">
    <span class="box">
        Liest den Titel eines Plugins aus.
    </span>
</span>
</p>

<p class="desc">
<span class="tag-box invisible">
    <span class="inline-tag">Plugin-API!serendipity_plugin_api!hook_event</span>
</span>
<code class="item method">hook_event()</code>
<span class="desc-info">
    <span class="box">
        Die <code>hook_event()</code>-Methode wird aufgerufen, um ausgehend vom
        Abarbeitungsprozess des Serendipity-Frameworks ein Ereignis einzubinden. Diese
        Methode geht die Liste aller aktivierten Ereignis-Plugins durch und prüft,
        welche Plugins für das gerade aufgerufene Ereignis ausgeführt werden sollen.
        Die Methode leitet auch die benötigten Parameter und Variablen an das
        jeweilige Plugin weiter.
    </span>
</span>
</p>

</article>

<article id="XU" class="subsub">

<header>
    <h4 class="subarticle" id="klasse-serendipity_property_bag">Klasse serendipity_property_bag</h4>
</header>

<p class="tagging invisible">
<span class="tag-box invisible">
    <span class="inline-tag">Plugin-API!serendipity_property_bag</span>
</span>
</p>

<p>Ein <code>serendipity_property_bag</code> dient als Kapselung für beliebige Variablen
einer Serendipity-Plugin-Klasse. Dieser Container kann von der Plugin-API leicht
ausgelesen und weitergereicht werden.</p>

<p>Vor allem dient dieser Container der Übergabe an die Plugin-Methode
<code>introspect()</code>, wo er mit individuellen Informationen eines Plugins gefüllt
werden kann. Dieser Vorgang findet jedesmal beim Instanzieren eines Plugins statt.</p>

<p>Intern speichert dieses Objekt seine Werte in einem Klassenarray
<code>$this-&gt;properties</code> ab. Die folgenden Methoden kapseln den Zugriff auf
dieses private Array:</p>

<p class="desc">
<span class="tag-box invisible">
    <span class="inline-tag">Plugin-API!serendipity_property_bag!add</span>
</span>
<code class="item method">add()</code>
<span class="desc-info">
    <span class="box">
        Fügt eine neue Eigenschaft (Schlüssel und Wert) hinzu.
    </span>
</span>
</p>

<p class="desc">
<span class="tag-box invisible">
    <span class="inline-tag">Plugin-API!serendipity_property_bag!get</span>
</span>
<code class="item method">get()</code>
<span class="desc-info">
    <span class="box">
        Liest den Wert einer Eigenschaft aus.
    </span>
</span>
</p>

<p class="desc">
<span class="tag-box invisible">
    <span class="inline-tag">Plugin-API!serendipity_property_bag!is_set</span>
</span>
<code class="item method">is_set()</code>
<span class="desc-info">
    <span class="box">
        Prüft, ob eine bestimmte Eigenschaft gesetzt ist.
    </span>
</span>
</p>

</article>

<article id="XU" class="subsub">

<header>
    <h4 class="subarticle" id="klasse-serendipity_plugin_api_extension">Klasse serendipity_plugin_api_extension</h4>
</header>

<p class="tagging invisible">
<span class="tag-box invisible">
    <span class="inline-tag">Plugin-API!serendipity_plugin_api_extension</span>
</span>
</p>

<p>Diese Plugin-API-Erweiterungsklasse dient dazu, weitere (seltener benötigte)
Hilfsmethoden zu definieren.</p>

<p class="desc">
<span class="tag-box invisible">
    <span class="inline-tag">Plugin-API!serendipity_plugin_api_extension!prepareReorder</span>
</span>
<code class="item method">prepareReorder()</code>
<span class="desc-info">
    <span class="box">
        Operiert auf einem übermittelten Array und überführt es in eine
        eindimensionale Struktur, die entsprechend des Arrays sortiert wird. Dies dient
        zB. als Hilfsmethode für die Sortierung einer Reihenfolge von Plugins,
        statischer Seiten oder anderem.
    </span>
</span>
</p>

<p class="desc">
<span class="tag-box invisible">
    <span class="inline-tag">Plugin-API!serendipity_plugin_api_extension!doReorder</span>
</span>
<code class="item method">doReorder()</code>
<span class="desc-info">
    <span class="box">
        Liefert den notwendigen SQL-Code zum Umsortieren von Datenbankeinträgen anhand
        des Arrays, das mithilfe der Methode <code>prepareReorder</code> erzeugt wurde.
    </span>
</span>
</p>

<p class="desc">
<span class="tag-box invisible">
    <span class="inline-tag">Plugin-API!serendipity_plugin_api_extension!prepareDelete</span>
</span>
<code class="item method">prepareDelete()</code>
<span class="desc-info">
    <span class="box">
        Durchwandert ein Array und prüft, ob bestimmte Werte darin aufgrund einer
        Eltern/Kind-Beziehung gelöscht werden sollen.
    </span>
</span>
</p>

<p class="desc">
<span class="tag-box invisible">
    <span class="inline-tag">Plugin-API!serendipity_plugin_api_extension!isEmail</span>
</span>
<code class="item method">isEmail()</code>
<span class="desc-info">
    <span class="box">
        Prüft, ob ein übermittelter Wert eine gültige E-Mail-Adresse nach RFC-Norm darstellt.
    </span>
</span>
</p>

</article>

<article id="XU" class="subsub">

<header>
    <h4 class="subarticle" id="klasse-serendipity_plugin">Klasse serendipity_plugin</h4>
</header>

<p class="tagging invisible">
<span class="tag-box invisible">
    <span class="inline-tag">Plugin-API!serendipity_plugin</span>
</span>
</p>

<p>Die Klasse <code class="item class">serendipity_plugin</code> dient als Basis sowohl für Ereignis- als
auch Seitenleisten-Plugins. Viele der hier aufgeführten Methoden entsprechen
lediglich einer <em>Rohform</em>, bei objektorientierten Entwurfsmustern spricht
man hier von der <em>Template-Methode</em>.</p>

<p>Es obliegt dem jeweiligen Plugin, die Inhalte für diese Methoden zu gestalten.
Die API selbst greift später nur auf die vom Plugin ausgestalteten Methoden
standardisiert zu.</p>

<p>Jedes Plugin verfügt über folgende Klassenvariablen, die automatisch beim Laden
eines Plugins belegt werden:</p>

<p class="desc">
<span class="tag-box invisible">
    <span class="inline-tag">Plugin-API!serendipity_plugin!instance@$instance</span>
</span>
<code class="item classvar">$instance</code>
<span class="desc-info">
    <span class="box">
        Enthält die aktuelle ID des Plugins.
    </span>
</span>
</p>

<p class="desc">
<span class="tag-box invisible">
    <span class="inline-tag">Plugin-API!serendipity_plugin!protected@$protected</span>
</span>
<code class="item classvar">$protected</code>
<span class="desc-info">
    <span class="box">
        Gibt an, ob ein Plugin nur durch dessen Eigentümer konfiguriert werden darf.
    </span>
</span>
</p>

<p class="desc">
<span class="tag-box invisible">
    <span class="inline-tag">Plugin-API!serendipity_plugin!title@$title</span>
</span>
<code class="item classvar">$title</code>
<span class="desc-info">
    <span class="box">
        Enthält den Titel eines Plugins.
    </span>
</span>
</p>

<p class="desc">
<span class="tag-box invisible">
    <span class="inline-tag">Plugin-API!serendipity_plugin!pluginPath@$pluginPath</span>
</span>
<code class="item classvar">$pluginPath</code>
<span class="desc-info">
    <span class="box">
        Enthält den Verzeichnispfad zu der Plugin-Datei.
    </span>
</span>
</p>

<p class="desc">
<span class="tag-box invisible">
    <span class="inline-tag">Plugin-API!serendipity_plugin!pluginFile@$pluginFile</span>
</span>
<code class="item classvar">$pluginFile</code>
<span class="desc-info">
    <span class="box">
        Enthält den vollständigen Pfad zu einem Plugin.
    </span>
</span>
</p>

<p class="desc">
<span class="tag-box invisible">
    <span class="inline-tag">Plugin-API!serendipity_plugin!serendipityowner@$serendipity_owner</span>
</span>
<code class="item classvar">$serendipity_owner</code>
<span class="desc-info">
    <span class="box">
        Enthält die ID des Redakteurs, der das Plugin installiert hat.
    </span>
</span>
</p>

<p class="desc">
<span class="tag-box invisible">
    <span class="inline-tag">Plugin-API!serendipity_plugin!dependencies@$dependencies</span>
</span>
<code class="item classvar">$dependencies</code>
<span class="desc-info">
    <span class="box">
        Kann ein Array mit Plugin-Namen enthalten, von denen ein Plugin abhängig ist.
        Die Klassenvariable kann innerhalb der <code>introspect()</code>-Methode gesetzt
        werden:
    </span>

    <span class="box">
        <span id="pre-style"><code class="php">
            function introspect(&amp;$propbag) {<br>
            &nbsp;&nbsp;&nbsp;&nbsp;...<br>
            &nbsp;&nbsp;&nbsp;&nbsp;$this-&gt;dependencies = array('serendipity_event_creativecommons' =&gt; 'remove');<br>
            &nbsp;&nbsp;&nbsp;&nbsp;...<br>
            }
        </code></span>
    </span>

    <span class="box">
        Der Schlüssel des Arrays enthält dabei den Klassennamen der Abhängigkeit,
        während der Wert des Arrays entweder <code>remove</code> (das zugehörige Plugin wird
        entfernt, wenn das abhängige Plugin gelöscht wird) oder <code>keep</code> (das
        zugehörige Plugin bleibt auch nach Deinstallation des abhängigen Plugins
        aktiviert) enthält.
    </span>
</span>
</p>

<p>&nbsp;</p><!-- separator -->

<p>Folgende Methoden werden von der API mit sinnvollem Inhalt vorbelegt und können
eingesetzt werden:</p>

<p class="desc">
<span class="tag-box invisible">
    <span class="inline-tag">Plugin-API!serendipity_plugin!serendipityplugin@serendipity_plugin</span>
</span>
<code class="item method constructor">serendipity_plugin()</code>
<span class="label invisible" id="Konstruktor">Konstruktor</span>
<span class="desc-info">
    <span class="box">
        Konstruktor eines Plugins, sorgt dafür, dass die erforderlichen Klassenvariablen
        korrekt belegt werden.
    </span>
</span>
</p>

<p class="desc">
<span class="tag-box invisible">
    <span class="inline-tag">Plugin-API!serendipity_plugin!validate</span>
</span>
<code class="item method">validate()</code>
<span class="desc-info">
    <span class="box">
        Prüft einen Plugin-Konfigurationswert auf Gültigkeit. Dabei werden die mittels
        <code>introspect_config_item()</code>-Methode festgelegten Prüfklassen
        (<em>Property Bag</em>-Eigenschaft <code>validate</code>) eingesetzt.
    </span>
</span>
</p>

<p class="desc">
<span class="tag-box invisible">
    <span class="inline-tag">Plugin-API!serendipity_plugin!get_config</span>
</span>
<code class="item method">get_config()</code>
<span class="desc-info">
    <span class="box">
        Liefert den Wert einer Konfigurationsoption des Plugins zurück.
    </span>
</span>
</p>

<p class="desc">
<span class="tag-box invisible">
    <span class="inline-tag">Plugin-API!serendipity_plugin!set_config</span>
</span>
<code class="item method">set_config()</code>
<span class="desc-info">
    <span class="box">
        Setzt einen Konfigurationswert des Plugins.
    </span>
</span>
</p>

<p class="desc">
<span class="tag-box invisible">
    <span class="inline-tag">Plugin-API!serendipity_plugin!register_dependencies</span>
</span>
<code class="item method">register_dependencies()</code>
<span class="desc-info">
    <span class="box">
        Installiert die abhängigen Plugins, die im Array <code>$this-&gt;dependencies</code>
        aufgeführt wurden.
    </span>
</span>
</p>

<p class="desc">
<span class="tag-box invisible">
    <span class="inline-tag">Plugin-API!serendipity_plugin!parseTemplate</span>
</span>
<code class="item method">parseTemplate()</code>
<span class="desc-info">
    <span class="box">
        Kann von Plugins eingesetzt werden, um Smarty-<code>.tpl</code>-Dateien zu parsen. Der
        in dieser Methode enthaltene Code befindet sich bereits in vielen Plugins an
        Stellen innerhalb des normalen Codeflusses. Um diese für zukünftige Plugins zu
        vereinheitlichen, wurde die zentrale Methode eingeführt. Sie sorgt automatisch
        dafür, dass Template-Dateien auch im lokalen, vorrangigen Template-Verzeichnis eines Blogs
        anstelle des Plugin-Verzeichnisses liegen können.
    </span>
</span>
</p>

<p>Folgende Methoden müssen von jeweiligen Plugin ausgestaltet werden:</p>

<p class="desc">
<span class="tag-box invisible">
    <span class="inline-tag">Plugin-API!serendipity_plugin!install</span>
</span>
<code class="item method">install()</code>
<span class="desc-info">
    <span class="box">
        Wird aufgerufen, wenn ein Plugin installiert wurde. Hier kann ein Plugin zB.
        notwendige Datenbanktabellen erstellen.
    </span>
</span>
</p>

<p class="desc">
<span class="tag-box invisible">
    <span class="inline-tag">Plugin-API!serendipity_plugin!uninstall</span>
</span>
<code class="item method">uninstall()</code>
<span class="desc-info">
    <span class="box">
        Wird beim Deinstallieren eines Plugins aufgerufen, um zB. angelegte
        Datenbanktabellen zu löschen.
    </span>
</span>
</p>

<p class="desc">
<span class="tag-box invisible">
    <span class="inline-tag">Plugin-API!serendipity_plugin!performConfig</span>
</span>
<code class="item method">performConfig()</code>
<span class="desc-info">
    <span class="box">
        Wird immer dann aufgerufen, wenn ein Plugin durch einen Redakteur konfiguriert wird.
        Diese Methode kann vor allem dann hilfreich sein, wenn ein Plugin Operationen
        durchführen soll, die nur während der Konfigurationsphase wichtig sind und
        nicht bei jeder Ausführung des Plugins.
    </span>
</span>
</p>

<p class="desc">
<span class="tag-box invisible">
    <span class="inline-tag">Plugin-API!serendipity_plugin!example</span>
</span>
<code class="item method">example()</code>
<span class="desc-info">
    <span class="box">
        Wird ebenfalls aufgerufen, wenn die Konfigurationsoberfläche eines Plugins
        angezeigt wird. Über diese Methode kann ein Plugin einen erweiterten
        Hilfe/Info-Text anzeigen, der die Bedienung des Plugins erklärt.
    </span>
</span>
</p>

<p class="desc">
<span class="tag-box invisible">
    <span class="inline-tag">Plugin-API!serendipity_plugin!cleanup</span>
</span>
<code class="item method">cleanup()</code>
<span class="desc-info">
    <span class="box">
        Wird jedesmal dann aufgerufen, wenn ein Redakteur Änderungen an der
        Konfiguration des Plugins durchgeführt hat. Kann benutzt werden, um leere oder
        ungültige Konfigurationswerte zu verändern.
    </span>
</span>
</p>

<p class="desc">
<span class="tag-box invisible">
    <span class="inline-tag">Plugin-API!serendipity_plugin!introspect</span>
</span>
<code class="item method">introspect()</code>
<span class="desc-info">
    <span class="box">
        Diese zentrale Methode legt die Meta-Eigenschaften eines Plugins anhand eines
        <code>serendipity_property_bag</code>-Objekts fest. Folgende Schlüssel für dieses
        Objekt sind dabei geläufig:
    </span>

    <span class="box mda-box">
        <code class="sub-item">name</code> enthält den Namen des Plugins.<br>
        <code class="sub-item">description</code> enthält die Beschreibung eines Plugins.<br>
        <code class="sub-item">configuration</code> enthält ein eindimensionales Array mit einer Liste von Konfigurationsoptionen, die das Plugin anbietet.<br>
        <code class="sub-item">stackable</code> legt fest, ob ein Plugin mehrfach installiert werden darf (<code>true/false</code>).<br>
        <code class="sub-item">author</code> enthält den Namen des Autors eines Plugins.<br>
        <code class="sub-item">version</code> enthält die Versionsnummer des Plugins.<br>
        <code class="sub-item">copyright</code> enthält den Lizenztypen des Plugins (BSD, GPL ...).<br>
        <code class="sub-item">groups</code> enthält ein eindimensionales Array mit einer Liste von Plugin-Gruppen, denen dieses Plugin zugewiesen wird. Diese Gruppen werden in der Plugin-Oberfläche ausgewertet, um Plugins sinnvoll zu gliedern.<br>
        <code class="sub-item">requirements</code> kann ein verschachteltes PHP-Array enthalten (Unterschlüssel <code>serendipity</code>, <code>smarty</code> und <code>php</code>), das die jeweiligen Versionsabhängigkeiten des Plugins festlegen kann.<br>
        <code class="sub-item">event_hooks</code> enthält ein eindimensionales Array mit einer Zuordnung der Ereignisse, für die sich ein Ereignis-Plugin registriert hat. Diese Eigenschaft gilt nicht für Seitenleisten-Plugins.<br>
        <code class="sub-item">cachable_events</code> enthält ein Array analog zu <code>event_hooks</code>, jedoch in diesem Fall mit einer Liste von Ereignissen, die durch das vorliegende Plugin gecached werden können (siehe Seite <span class="pageref"><a href="#cachable-events">cachable-events</a></span>).
    </span>
</span>
</p>

<p class="desc">
<span class="tag-box invisible">
    <span class="inline-tag">Plugin-API!serendipity_plugin!generate_content</span>
</span>
<code class="item method">generate_content()</code>
<span class="desc-info">
    <span class="box">
        Zentrale Methode eines Seitenleisten-Plugins, um Inhalte in der Seitenleiste darzustellen.
    </span>
</span>
</p>

<p class="desc">
<span class="tag-box invisible">
    <span class="inline-tag">Plugin-API!serendipity_plugin!introspect_config_item</span>
</span>
<code class="item method">introspect_config_item()</code>
<span class="desc-info">
    <span class="box">
        Bei der Konfiguration eines Plugins wird über <code>introspect()</code> im Property-Bag-Attribut
        <code>configuration</code> festgelegt, über welche Konfigurationsoptionen ein Plugin verfügt.
    </span>

    <span class="box">
        Die Methode <code>introspect_config_item()</code> wird von der Plugin-API für jedes
        dieser Elemente aufgerufen und muss daraufhin festlegen, wie die jeweilige
        Konfigurationsoption ausgegeben wird. Dazu empfiehlt sich, in der Methode eine
        große <code>switch</code>-Anweisung zu hinterlegen:
    </span>

    <span class="box mda-box">
        <span id="pre-style"><code class="php">
            function introspect_config_item($name, &amp;$propbag) {<br>
            &nbsp;&nbsp;&nbsp; switch ($name) {<br>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; case 'id':<br>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; $propbag-&gt;add('type', 'string');<br>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; $propbag-&gt;add('name', 'Affiliate ID');<br>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; $propbag-&gt;add('description', '');<br>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; $propbag-&gt;add('default', '47110815');<br>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; break;<br>
            <br>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; case 'tax':<br>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; $propbag-&gt;add('type', 'string');<br>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; $propbag-&gt;add('name', 'Steuern');<br>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; $propbag-&gt;add('description', '(in Prozent)');<br>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; $propbag-&gt;add('default', '19');<br>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; break;<br>
            &nbsp;&nbsp;&nbsp; }<br>
            }
        </code></span>
    </span>

    <span class="box">
        Erneut wird ein <em>Property Bag</em>-Objekt mit den Eigenschaften
        jedes Konfigurationswerts gefüllt.
    </span>

    <span class="box">
        Dort gelten folgende Array-Schlüssel:
    </span>

    <span class="box mda-box"> 
        <code class="sub-item">type</code> legt den Typ einer Konfigurationsoption fest (<code>string</code>,
            <code>boolean</code>, <code>text</code> ...). Die verfügbaren Typen entsprechen denen bei der Festlegung von Template-Optionsfeldern
            und sind auf Seite <span class="pageref"><a href="#apiconfigfield2">apiconfigfield2</a></span> aufgeführt.<br>
        <code class="sub-item">name</code> legt den dargestellten Namen des Konfigurationsfelds fest.<br>
        <code class="sub-item">description</code> legt die Beschreibung des Konfigurationsfelds fest.<br>
        <code class="sub-item">default</code> legt den Standardwert eines Konfigurationsfelds fest.<br>
        <code class="sub-item">validate</code> legt fest, wie ein Konfigurationsfeld geprüft werden kann.
        <span class="sub-box">
            <span class="box">
                Mögliche Werte sind:
                <span class="subdesc">
                    <code>string</code> (nur Buchstaben und Ziffern),
                    <code>words</code> (nur Zeichenketten ohne Sonderzeichen),
                    <code>number</code> (nur Zahlen), <code>url</code> (nur URLs),
                    <code>mail</code> (nur E-Mail-Adressen) oder
                    <code>path</code> (nur gültige Verzeichnisnamen).
                </span>
                Wenn keiner dieser festgelegten Typen verwendet wird,
                können Sie einen beliebigen regulären Ausdruck eintragen, zB. <code class="nobreak">/[A-Z]/</code>.
                Die <em>Property Bag</em>-Eigenschaft <code class="item property">validate_error</code> enthält eine ev. Fehlermeldung,
                die bei ungültigen Eingaben angezeigt werden kann.
            </span>
        </span>
    </span>

    <span class="box">
        Die Werte der entsprechenden Konfigurationsoption können im Plugin mittels
        <code>$this-&gt;get_config('konfigwert')</code> ausgelesen werden.
    </span>
</span>
</p>

</article>

<article id="XU" class="subsub">

<header>
    <h4 class="subarticle" id="klasse-serendipity_event">Klasse serendipity_event</h4>
</header>

<p class="tagging invisible">
<span class="tag-box invisible">
    <span class="inline-tag">Plugin-API!serendipity_event</span>
</span>
</p>

<p>Ereignis-Plugins leiten sich von der Klasse <code class="item class">serendipity_event</code> ab und
erben dadurch sämtliche aufgeführten Klassenvariablen und Methoden der Klasse
<code class="item class">serendipity_plugin</code>. Hinzu kommen lediglich folgende Methoden:</p>

<p class="desc">
<span class="tag-box invisible">
    <span class="inline-tag">Plugin-API!serendipity_event!serendipity_event</span>
</span>
<code class="item method constructor">serendipity_event()</code>
<span class="label invisible" id="Konstruktor">Konstruktor</span>
<span class="desc-info">
    <span class="box">
        Setzt analog zum Konstruktor <code>serendipity_plugin</code> die benötigten
        Klassenvariablen.
    </span>
</span>
</p>

<p class="desc">
<code class="item method">getFieldReference()</code>
<span class="desc-info">
    <span class="box">
        Hilfsmethode, um bei gecachten Plugins auf ein spezielles Feld (<code>body</code> oder
        <code>extended</code>) zuzugreifen und es zu verändern. Würde das Plugin direkt
        <code>$eventData['body']</code> modifizieren, könnte dies in Interaktion mit dem
        Caching-Plugin zu Problemen führen.
    </span>
</span>
</p>

<p class="desc">
<code class="item method">event_hook()</code>
<span class="desc-info">
    <span class="box">
        Zentrale <em>Dispatcher</em>-Methode, damit die jeweils registrierten Ereignisse
        durch das Plugin abgefragt und ausgeführt werden können.
    </span>
</span>
</p>

</article>

</section><!-- section.sub end -->

<section id="U1084" class="sub">
<span class="u-toc">10.8.4 - Cachable Events</span>

<h3 class="subsection" id="cachable-events-1">Cachable Events</h3>

<p class="tagging invisible">
<span class="tag-box invisible">
    <span class="inline-tag">Cache!Plugin-API</span>
</span>
<span class="label invisible" id="cachable-events">cachable-events</span>
</p>

<p>Ein Ereignis-Plugin kann in seiner <code>introspect</code>-Methode eine Liste von
Ereignissen in der Eigenschaft <code>event_hooks</code> des <code>$propbag</code>-Objekts
registrieren. Diese Liste legt fest, bei welchen Ereignissen das Plugin
aufgerufen wird.</p>

<p>Dieser Vorgang wird etwas komplexer, wenn die Caching-Konfigurationsoption des
Plugins <em>Erweiterte Eigenschaften von Artikeln</em> (siehe Seite
<span class="pageref"><a href="#entryproperties">entryproperties</a></span>) aktiviert ist.</p>

<p>Das Caching ist ausschließlich für Textformatierungs-Plugins (siehe Seite
<span class="pageref"><a href="#Textformatierungs-Plugins">Textformatierungs-Plugins</a></span>) gedacht. Normalerweise ruft Serendipity
diese für jeden einzelnen Artikel wieder und wieder auf. Bei vielen
Textformatierungen macht das performancemäßig jedoch
wenig Sinn: Aus einer BBCode-Textformatierung wie <code>[b]fett[/b]</code> wird stets
ein <code>&lt;strong&gt;fett&lt;/strong&gt;</code> entstehen; dies müsste Serendipity also
eigentlich nur einmal <em>parsen</em> und könnte dann für spätere Aufrufe immer
nur das vorige Ergebnis (den <em>Cache</em>) einlesen und verwenden.</p>

<p>Sobald viele Textformatierungs-Plugins zum Einsatz kommen, kann sich dieses
Caching durchaus als performanceschonend auswirken. Vor dem Speichern eines
Blog-Artikels führt der Serendipity-Kern das Ereignis <code>backend_save</code> aus.
Das Caching-Plugin <code>serendipity_event_entryproperties</code> lauscht auf dieses
Ereignis. Aufgrund aktivierter Caching-Option führt dieses Plugin nun wiederum
das Ereignis <code>frontend_display_cache</code> aus. Alle Textformatierungs-Plugins,
die das Caching unterstützen (das sind die meisten), lauschen auf dieses
Ereignis und wenden nun ihre reproduzierbaren Textformatierungen auf den
Artikeltext an. Das Ergebnis entspricht nach diesem Vorgang der
HTML-Formatierung, wie sie später im Blog dargestellt wird.</p>

<p>Die Formatierung wird nun nicht einfach im Artikeltext gespeichert, denn dies
würde dazu führen, dass beim nächsten Bearbeiten des Artikels der Redakteur nicht
mehr sein vorher eingegebenes <code>[b]fett[/b]</code> sähe, sondern den entsprechenden
HTML-Code. Damit also die Redakteurseingaben immer konsistent bleiben können,
wird das erzeugte Cache-Ergebnis separat in der Datenbanktabelle
<code>serendipity_entryproperties</code> gespeichert. Die beiden Werte
<code>ep_cache_body</code> und <code>ep_cache_extended</code> enthalten die nach Aufruf
aller Textformatierungs-Plugins erzeugte HTML-Formatierung des Artikeltexts
und des erweiterten Artikels.</p>

<p>Nachdem der einzusetzende Cache gespeichert wurde, prüft die Serendipity-Funktion
<code>serendipity_printEntries</code> bei der Darstellung der Artikel, ob ein Wert für
die Eigenschaften <code>ep_cache_body</code> und <code>ep_cache_extended</code> vorliegt.
Ist das der Fall, tauscht die Funktion einfach den <em>echten</em> Inhalt des
Artikels mit der gecachten Version aus. Wenn nun später das Ereignis
<code>frontend_display</code> ausgeführt wird, enthalten die Zusatzarrays
<code>$addData['no_scramble']</code> und <code>$eventData['is_cached']</code> den Wert
<code>true</code>. Alle cachbaren Textformatierungs-Plugins erkennen diesen Wert und
wissen, dass sie keine erneute Formatierung anwenden müssen, da dies in der
gecachten Version bereits beim Speichern des Artikels erledigt wurde.</p>

<p>Jedes Plugin, das sich mittels des <code>$propbag</code>-Objekts (Eigenschaft
<code>event_hooks</code>) für das Ereignis <code>frontend_display</code> registriert hat und
cachbar sein soll, muss dieses Ereignis auch in der Eigenschaft
<code>cachable_events</code> festlegen. Wurde dies gesetzt, kümmert sich die Plugin-API
beim Aufruf des Textformatierungsereignisses <code>frontend_display</code> automatisch
darum, dass es im Falle eines gecachten Artikels <em>nicht</em> mehr erneut
ausgeführt wird. Der Aufruf des Ereignisses wird somit komplett verhindert.</p>

<p>Zusätzlich kann das Caching-Plugin auch einmalig alle alten Artikel auf Anfrage
cachen, dies wird über das Ereignis <code>backend_cache_entries</code> ausgeführt. Das
Ereignis <code>backend_cache_purge</code> löscht darüber hinaus einen Cache. Viele
Textformatierungs-Plugins machen von diesen Ereignissen innerhalb der
<code>install()</code>- und <code>uninstall()</code>-Methode Gebrauch, so dass bei der
Installation eines neuen Textformatierungs-Plugins automatisch der bestehende
Cache neu erstellt wird und die neu hinzugekommenen Formatierungen beinhaltet.</p>

<p>Wenn Sie ein Textformatierungs-Plugin entwickeln wollen, das diese Möglichkeiten
des Cachings anwendet, suchen Sie einfach im Quellcode der Plugins nach der
Zeichenkette <code>cachable_events</code>. Mithilfe dieser Beispiele können Sie den
oben beschriebenen Mechanismus leichter nachvollziehen.</p>

</section><!-- section.sub end -->

<section id="U1085" class="sub">
<span class="u-toc">10.8.5 - Ereignis-Hooks</span>

<h3 class="subsection" id="ereignis-hooks">Ereignis-Hooks</h3>

<p class="tagging invisible">
<span class="label invisible" id="Ereignisse">Ereignisse</span>
<span class="tag-box invisible">
    <span class="inline-tag">Ereignis-Hooks</span>
    <span class="inline-tag">Plugin-API!Events</span>
    <span class="inline-tag">Plugin-API!Hooks</span>
</span>
</p>

<p>In vielen Dateien von Serendipity werden Ereignisse mittels der Plugin-API
ausgeführt. Diese Aufrufe sehen dabei wie folgt aus:</p>

<pre><code class="php">
    serendipity_plugin_api::hook_event('frontend_generate_plugins', $eventData, $addData);
</code></pre>

<p>Die zentrale Methode <code>hook_event()</code> der Plugin-API geht dabei die Liste
aller aktivierten Ereignis-Plugins durch. Dabei wird die Ausführungsreihenfolge
durch die Reihenfolge der Plugins bestimmt. Jedem einzelnen Plugin werden die
beiden Variablen <code>$eventData</code> und <code>$addData</code> weitergereicht, falls
sich das Plugin für das definierte Ereignis (hier:
<code>frontend_generate_plugins</code>) registriert hat. Bei jedem Ereignis wird <code>event_hook()</code> des jeweiligen Plugins ausgeführt, an die die
Variablen weitergereicht werden, wo sie verarbeitet werden können. Die Variable
<code>$eventData</code> wird dabei als referenzierte Variable weitergegeben und kann
vom Plugin verändert werden. <code>$addData</code> hingegen dient nur dem Lesezugriff.
Beide Variablen können auch beliebig verschachtelte Arrays enthalten.</p>

<p>Falls ein Plugin die Inhalte der Variablen <code>$eventData</code> verändert, können
diese auch durch später folgende Plugins noch weiter abgeändert werden.</p>

<p>Ereignisse lassen sich bei Serendipity leicht und flexibel erweitern. Dazu
genügt es, im PHP-Code von Serendipity eine Zeile wie oben mit einem frei
erfundenen Ereignisnamen einzubinden und ein entsprechendes Plugin zu
entwickeln, das dieses Ereignis registriert. Zusätzlich können beliebige
Ereignis-Hooks auch mittels Smarty-Funktion <code>serendipity_hookPlugin</code>
aufgerufen werden (siehe Seite <span class="pageref"><a href="#serendipity-hookPlugin">serendipity-hookPlugin</a></span>).</p>

<p>Um das konkrete Umfeld sowie die Parametrisierung eines
<code>hook_event()</code>-Aufrufs zu prüfen und für ein eigenes Plugin zu
nutzen, ist es am einfachsten, im Serendipity-PHP-Code nach dem Auftreten
dieser Zeile zu suchen. Unter Linux geht dies leicht mit folgendem Befehl:</p>

<pre><code class="bash">
    find -name \*.php \<br>
    &nbsp; -exec grep -i -l -d skip \<br>
    &nbsp; "serendipity_plugin_api::hook_event('" \<br>
    &nbsp; {} \;
</code></pre>

<p>Es folgt eine Liste von bisher vorhandenen Serendipity-Ereignissen, auf die
auch selbstgeschriebene Plugins zugreifen können:</p>

<article id="XU" class="subsub">

<header>
    <h4 class="subarticle" id="frontend-ereignisse">Frontend-Ereignisse</h4>
</header>

<p class="tagging invisible">
<span class="tag-box invisible">
    <span class="inline-tag">Plugin-API!Ereignisse!Frontend</span>
</span>
</p>

<p class="desc">
<code class="item event">css</code>
<span class="desc-info">
    <span class="box">
        für die Darstellung des CSS Stylesheets.<br>
        <code>eventData</code> (Array): CSS-Daten des Template-Stylesheets, kann durch Plugins verändert/erweitert werden.
    </span>
</span>
</p>

<p class="desc">
<code class="item event">js</code>
<span class="desc-info">
    <span class="box group-box">
        für die Darstellung und Befüllung der dynamisch erstellten <code>serendipity.js</code> Datei im Frontend.
        <span class="subdesc">
            <code>eventData</code> (String): Javascript, das im Frontend Header ausgeführt werden soll.
        </span>
    </span>
</span>
</p>

<p class="desc">
<code class="item event">frontend_configure</code>
<span class="desc-info">
    <span class="box">
        wird aufgerufen, nachdem das
        Serendipity-Framework instanziert wurde. Plugins können an dieser Stelle zentrale
        Eigenschaften/Werte von Serendipity verändern oder prüfen. <code>eventData</code>:
        Serendipity-Konfigurationswerte.
    </span>
</span>
</p>

<p class="desc">
<code class="item event">entry_display</code>
<span class="desc-info">
    <span class="box">
        wird aufgerufen, wenn eine Liste von Blog-Artikeln
        dargestellt wird. Dieses Ereignis wird einmalig ausgeführt. <code>eventData</code>: ein
        vollständiges Array mit allen darzustellenden Blog-Artikeln. <code>addData</code>:
        zusätzliche Parameter mit Eigenschaften des Aufrufs dieses Ereignisses.
    </span>
</span>
</p>

<p class="desc">
<code class="item event">entries_header</code>
<span class="desc-info">
    <span class="box">
        (via Smarty <code>entries.tpl</code>) wird im Template aufgerufen, bevor die
        Blog-Artikel dargestellt werden. <code>addData</code>: enthält die ID eines Artikels,
        falls eine Einzeldarstellung erfolgt.
    </span>
</span>
</p>

<p class="desc">
<code class="item event">entries_footer</code>
<span class="desc-info">
    <span class="box">
        (via Smarty <code>entries.tpl</code>) wird im Template
        aufgerufen, nachdem die Blog-Artikel dargestellt wurden.
    </span>
</span>
</p>

<p class="desc">
<code class="item event">frontend_header</code>
<span class="desc-info">
    <span class="box">
        (via Smarty <code>index.tpl</code>) wird im Kopfbereich des Templates
        aufgerufen.
    </span>
</span>
</p>

<p class="desc">
<code class="item event">frontend_footer</code>
<span class="desc-info">
    <span class="box">
        (via Smarty <code>index.tpl</code>) wird im Fußbereich des Templates
        aufgerufen.
    </span>
</span>
</p>

<p class="desc">
<code class="item event">entry_groupdata</code>
<span class="desc-info">
    <span class="box">
        wird aufgerufen, wenn die Liste der darzustellenden
        Artikel nach speziellen Kriterien sortiert werden soll. <code>eventData</code>:
        vollständiges Array der zu sortierenden Blog-Artikel.
    </span>
</span>
</p>

<p class="desc">
<code class="item event">comments_by_author_footer</code>
<span class="desc-info">
    <span class="box">
        (via Smarty <code>comments_by_authors.tpl</code>)
        wird im Template innerhalb der Fußzeile aufgerufen, nachdem die
        Kommentaransicht nach Autoren dargestellt wurde.
    </span>
</span>
</p>

<p class="desc">
<code class="item event">fetch_images_sql</code>
<span class="desc-info">
    <span class="box">
        wird aufgerufen, um die SQL-Abfrage um Rechtechecks und Metadaten zu ergänzen.
    </span>
</span>
</p>

<p class="desc">
<code class="item event">frontend_fetchentries</code>
<span class="desc-info">
    <span class="box group-box">
        wird aufgerufen, wenn Serendipity eine
        Datenbankabfrage ausführt, um mehrere Blog-Artikel einzulesen. Über dieses
        Ereignis kann die SQL-Abfrage beeinflusst werden.
        <span class="subdesc">
            <code>eventData</code>: Array mit Teilen der
            SQL-Abfrage (<code>WHERE</code>-Bedingungen, <code>JOINS</code> etc.)
        </span>
        <span class="subdesc">
            <code>addData</code>:
            Array mit zusätzlichen Parametern beim Aufruf dieses Ereignisses.
        </span>
    </span>
</span>
</p>

<p class="desc">
<code class="item event">frontend_fetchentry</code>
<span class="desc-info">
    <span class="box group-box">
        wird aufgerufen, wenn Serendipity eine
        Datenbankabfrage ausführt, um einen einzelnen Blog-Artikel einzulesen. Über
        das Ereignis kann die SQL-Abfrage beeinflusst werden.
        <span class="subdesc">
            <code>eventData</code>: Array mit Teilen der
            SQL-Abfrage (<code>WHERE</code>-Bedingungen, <code>JOINS</code> etc.)
        </span>
        <span class="subdesc">
            <code>addData</code>:
            Array mit zusätzlichen Parametern beim Aufruf dieses Ereignisses.
        </span>
    </span>
</span>
</p>

<p class="desc">
<code class="item event">frontend_entryproperties</code>
<span class="desc-info">
    <span class="box group-box">
        wird aufgerufen, wenn zusätzliche
        Eigenschaften zu den ausgelesenen Blog-Artikeln aus weiteren Datenquellen
        eingefügt werden sollen.
        <span class="subdesc">
            <code>eventData</code>: verschachteltes Array mit den Daten der Blog-Artikel.
        </span>
        <span class="subdesc">
            <code>addData</code>: Array mit allen IDs der in <code>addData</code> enthaltenen Blog-Artikel.
        </span>
    </span>
</span>
</p>

<p class="desc">
<code class="item event">frontend_entryproperties_query</code>
<span class="desc-info">
    <span class="box group-box">
        wird aufgerufen, wenn Serendipity die
        Datenbanktabelle <code>serendipity_entryproperties</code> ausliest, über die freie
        Eigenschaften zu Blog-Artikeln zugewiesen werden können. Über dieses
        Ereignis können innerhalb einer SQL-Abfrage mehrere Tabellen einbezogen
        werden.
        <span class="subdesc">
            <code>eventData</code>: enthält ein Array mit Teilen der SQL-Abfrage, über
            die erweiterte Eigenschaften der Artikel eingelesen werden können, die später in
            das zentrale Blog-Artikel-Array übernommen werden können.
        </span>
    </span>
</span>
</p>

<p class="desc">
<code class="item event">fetchcomments</code>
<span class="desc-info">
    <span class="box group-box">
        wird aufgerufen, wenn Kommentare zu einem Blog-Artikel
        ausgelesen werden.
        <span class="subdesc">
            <code>eventData</code>: Array mit eingelesenen Kommentardaten.
        </span>
    </span>
</span>
</p>

<p class="desc">
<code class="item event">frontend_display</code>
<span class="desc-info">
    <span class="box group-box">
        wird aufgerufen, wenn der Text eines Blog-Artikels
        oder Kommentars formatiert bzw. dargestellt werden soll. Textformatierungs-Plugins
        nutzen vor allem dieses Ereignis.
        <span class="subdesc">
            <code>eventData</code>: Daten eines einzelnen Artikels bzw. Kommentars.
        </span>
        <span class="subdesc">
            <code>addData</code>: Array mit zusätzlichen Parametern beim Aufruf
            dieses Ereignisses.
        </span>
    </span>
</span>
</p>

<p class="desc">
<code class="item event">frontend_display_cache</code>
<span class="desc-info">
    <span class="box group-box">
        wird aufgerufen, wenn ein Blog-Artikel in der
        Datenbank gespeichert wird. Ereignis-Plugins, die Caching (siehe Seite
        <span class="pageref"><a href="#cachable-events">cachable-events</a></span>) unterstützen, führen ihre Textformatierungen bei
        diesem Ereignis aus. 
        <span class="subdesc">
            <code>eventData</code>: dieselben Daten wie vom Ereignis
            <code>backend_publish/backend_save</code> (Artikeldaten).
        </span>
        <span class="subdesc">
            <code>addData</code>: Array mit
            zusätzlichen Parametern beim Aufruf dieses Ereignisses.
        </span>
    </span>
</span>
</p>

<p class="desc">
<code class="item event">frontend_comment</code>
<span class="desc-info">
    <span class="box">
        (via Smarty <code>commentform.tpl</code>) wird aufgerufen, wenn
        das Eingabeformular für Kommentare im Frontend dargestellt wird.
    </span>
</span>
</p>

<p class="desc">
<span class="tag-box invisible">
    <span class="inline-tag">Plugin-API!Events!frontend_display:*</span>
</span>
<code class="item event">frontend_display:opml-1.0:namespace</code>,
<code class="item event">frontend_display:rss-1.0:namespace</code>,
<code class="item event">frontend_display:rss-2.0:namespace</code>,
<code class="item event">frontend_display:atom-1.0:namespace</code>
<span class="desc-info">
    <span class="box group-box">
        wird bei der Darstellung von RSS-Feeds
        innerhalb des Namespace-XML-Bereichs aufgerufen.
        <span class="subdesc">
            <code>eventData</code>: Array mit allen Artikeln des Feeds.
        </span>
    </span>
</span>
</p>

<p class="desc">
<code class="item event">frontend_display:html:per_entry</code>
<span class="desc-info">
    <span class="box group-box">
        wird vor Darstellung eines Artikels im Frontend aufgerufen.
        <span class="subdesc">
            <code>eventData</code>: Array mit Blog-Artikeln.
        </span>
    </span>
</span>
</p>

<p class="desc">
<code class="item event">frontend_display:opml-1.0:per_entry</code>
<code class="item event">frontend_display:rss-1.0:per_entry</code>,
<code class="item event">frontend_display:rss-2.0:per_entry</code>,
<code class="item event">frontend_display:atom-1.0:per_entry</code>
<span class="desc-info">
    <span class="box group-box">
        wird bei der Darstellung eines Blog-Artikels in einem Feed ausgeführt.
        <span class="subdesc">
            <code>eventData</code>: Array mit einzelnem Artikel des Feeds.
        </span>
    </span>
</span>
</p>

<p class="desc">
<code class="item event">frontend_display:rss-1.0:once</code>
<span class="desc-info">
    <span class="box group-box">
        wird bei der Darstellung eines Blog-Artikels in einem Feed ausgeführt.
        <span class="subdesc">
            <code>eventData</code>: Array mit (String) Lizenz Quellen. ???
        </span>
    </span>
</span>
</p>

<p class="desc">
<code class="item event">frontend_rss</code>
<span class="desc-info">
    <span class="box">
        wird ausgeführt, bevor die Daten eines Feeds an das
        Smarty-Framework weitergereicht werden.
    </span>
</span>
</p>

<p class="desc">
<code class="item event">frontend_entries_rss</code>
<span class="desc-info">
    <span class="box group-box">
        wird vor Darstellung eines Feed ausgeführt.
        <span class="subdesc">
            <code>eventData</code>: Array mit allen Artikeln des Feeds.
        </span>
        <span class="subdesc">
            <code>addData</code>: Array mit weiteren Optionen zur Darstellung des Feeds.
            <span class="sub-box">
                Array-Schlüssel <code>version</code> (Version des Feeds),
                <code>comments</code> (für Kommentar-Feeds),
                <code>fullFeed</code> (für Feeds mit vollständigen Artikeln statt eines Teasers),
                <code>showMail</code> (gesetzt, wenn E-Mail-Adresse eingebunden werden soll).
            </span>
        </span>
    </span>
</span>
</p>

<p class="desc">
<code class="item event">frontend_saveComment</code>
<span class="desc-info">
    <span class="box group-box">
        wird aufgerufen, wenn ein Kommentar zu einem
        Artikel gespeichert wird. Die Plugins können
        <code>$eventData['allow_comments']</code> auf <code>false</code> setzen, wenn ein Kommentar
        nicht gespeichert werden soll, zB. aus Gründen des Spamschutzes.
        <span class="subdesc">
            <code>eventData</code>: Array mit den Daten des Artikels, der kommentiert wird.
        </span>
        <span class="subdesc">
            <code>addData</code>: Array mit den Daten des Kommentars, der gespeichert werden soll.
        </span>
    </span>
</span>
</p>

<p class="desc">
<code class="item event">frontend_saveComment_finish</code>
<span class="desc-info">
    <span class="box group-box">
        wird aufgerufen, nachdem ein Kommentar zu einem
        Artikel gespeichert wurde. Kann Aktionen beinhalten, die auf die neue ID Bezug nehmen müssen.
        <span class="subdesc">
            <code>eventData</code>: Array mit den Daten des Artikels, der kommentiert wurde.
        </span>
        <span class="subdesc">
            <code>addData</code>: Array mit den Daten des Kommentars, der gespeichert wurde.
        </span>
    </span>
</span>
</p>

<p class="desc">
<code class="item event">frontend_generate_plugins</code>
<span class="desc-info">
    <span class="box group-box">
        wird aufgerufen, wenn die
        Seitenleisten-Plugins für eine Seite ausgewertet werden. Ereignis-Plugins können so
        spezielle Seitenleisten-Plugins ausblenden, wenn gewünscht.
        <span class="subdesc">
            <code>eventData</code> enthält ein Array mit den Plugins einer Seitenleiste,
            die dargestellt werden sollen.
        </span>
        <span class="subdesc">
            <code>addData</code> enthält ein Array der Methodenparameter, die beim Aufruf der
            Plugin-API-Funktion <code>serendipity_plugin_api::generate_plugins()</code> übergeben
            wurden.
        </span>
    </span>
</span>
</p>

<p class="desc">
<code class="item event">frontend_sidebar_plugins</code>
<span class="desc-info">
    <span class="box">
        wird aufgerufen, wenn ein Plugin (zb, <code>serendipity_event_multilingual</code>)
        die Metainformationen (Inhalt, Überschrift und Ähnliches) für die Ausgabe in der Seitenleiste beeinflussen will.
    </span>
</span>
</p>

<p class="desc">
<code class="item event">quicksearch_plugin</code>
<span class="desc-info">
    <span class="box">
        wird aufgerufen, wenn das Formular des
        <span class="mbold">Suche</span>-Seitenleisten-Plugins dargestellt wird. Hierüber kann zusätzlicher
        HTML- oder JavaScript-Code ausgegeben werden, um das Suchformular zB. mit
        Ajax-Fähigkeiten aufzurüsten.
    </span>
</span>
</p>

<p class="desc">
<code class="item event">frontend_image_selector</code>
<span class="desc-info">
    <span class="box">
        (via Smarty <code>media_*.tpl</code>) sowie weitere
        <code>frontend_image_...-Ereignisse</code> werden von dem Mediathek-Popup
        ausgegeben, wenn die Formatierungsoptionen für eine ausgewählte Datei angezeigt
        werden. Für jede der Formatierungsmöglichkeiten (Vorschau, Link, Platzierung,
        Kommentar ...) existiert ein eigenes Ereignis.
    </span>
</span>
</p>

<p class="desc">
<code class="item event">frontend_media_showitem_init</code>
<span class="desc-info">
    <span class="box">
        wird aufgerufen, bevor die Medieninformationen aus der Datenbank geholt werden.
    </span>
</span>
</p>

<p class="desc">
<code class="item event">frontend_media_showitem</code>
<span class="desc-info">
    <span class="box">
        wird aufgerufen, wenn alle Medieninformationen kurz vor der Ausgabe vorliegen.
    </span>
</span>
</p>

<p class="desc">
<code class="item event">external_plugin</code>
<span class="desc-info">
    <span class="box group-box">
        wird aufgerufen, wenn ein Plugin die vollständige
        HTML-Ausgabe des Frontends übernehmen kann. Dies geschieht vor allem beim Aufruf
        einer URL wie <code>http://www.example.com/serendipity/plugin/captcha_4711</code>. Alle
        über den virtuellen Pfad <code>/plugin/</code> aufgerufenen URLs geben die URL-Parameter
        an dieses Ereignis weiter, so dass jedes Plugin überprüfen kann, ob es die
        Ausgabe des Frontends übernehmen soll.
        <span class="subdesc">
            <code>eventData</code> enthält den Teil der URL, der nach <code>.../plugin/</code> folgt.
        </span>
    </span>
</span>

</p>

<p class="desc">
<code class="item event">genpage</code>
<span class="desc-info">
    <span class="box group-box">
        wird aufgerufen, bevor Serendipity das Smarty-Framework initiiert.
        <span class="subdesc">
            <code>eventData</code> enthält die URL der aktuellen Serendipity-Seite. Über
            die globale Variable
            <span class="sub-box">
                <code class="nobreak">$serendipity['plugindata']['smartyvars']</code> kann ein
                Plugin weitere beliebige Variablen an das Smarty-Framework weitergeben,
            </span>
        </span>
        <span class="subdesc">
            <code>addData</code> enthält ein Array mit Zusatzinfos zur Seite sowie die Schlüssel
            <span class="sub-box">
                <code>startpage</code> (<code>true</code>,
                wenn Serendipity die erste Seite des Blogs darstellt),
                <code>uriargs</code> (zusätzliche URL-Parameter) und
                <code>view</code> (gibt an, welche Template-Ansicht angefordert wurde,
                siehe Seite <span class="pageref"><a href="#global-view">global-view</a></span>).
            </span>
        </span>
    </span>
</span>
</p>

<p class="desc">
<code class="item event">frontend_calendar</code>
<span class="desc-info">
    <span class="box group-box">
        wird aufgerufen, wenn das
        Kalender-Seitenleisten-Plugin seine Inhalte darstellt. Über dieses Ereignis können
        Ereignis-Plugins interne Termine einbinden.
        <span class="subdesc">
            <code>eventData</code>: Array mit externen
            Terminen, der Array-Schlüssel muss dem aktuellen Tag des dargestellten Monats
            entsprechen, der Array-Wert enthält ein Unterarray mit den Schlüsseln
            <span class="sub-box">
                <code>Class</code> (CSS-Klasse),
                <code>Title</code> (Titel des Termins) und
                <code>Extended</code> (weitere Textinfos zu dem Termin).
            </span>
        </span>
        <span class="subdesc">
            <code>addData</code> enthält ein Array mit Informationen zum
            aktuell dargestellten Kalendermonat mit den Array-Schlüsseln
            <span class="sub-box">
                <code>Month</code> (dargestellter Monat),
                <code>Year</code> (dargestelltes Jahr),
                <code>TS</code> (Unix-Zeitstempel des ersten Tages),
                <code>EndTS</code> (Unix-Zeitstempel des letzten Tages).
            </span>
        </span>
    </span>
</span>

</p>

<p class="desc">
<code class="item event">frontend_xmlrpc</code>
<span class="desc-info">
    <span class="box group-box">
        wird aufgerufen, wenn die XML-RPC API (siehe Seite
        <span class="pageref"><a href="#xmlrpc">xmlrpc</a></span>) des Blogs initiiert werden soll.
        <span class="sub-box">
            <code>eventData</code>: Array, das
            mit Metadaten des XML-RPC API-Aufrufs gefüllt werden kann.
        </span>
    </span>
</span>
</p>

<p class="desc">
<code class="item event">xmlrpc_deleteEntry</code>
<span class="desc-info">
    <span class="box">
        wird aufgerufen, wenn mittels XML-RPC API ein
        Artikel gelöscht wurde.
    </span>
</span>
</p>

<p class="desc">
<code class="item event">xmlrpc_fetchEntry</code>
<span class="desc-info">
    <span class="box">
        wird aufgerufen, wenn mittels XML-RPC API die
        Daten eines Artikels eingelesen werden.
    </span>
</span>
</p>

<p class="desc">
<code class="item event">xmlrpc_updertEntry</code>
<span class="desc-info">
    <span class="box">
        wird aufgerufen, wenn mittels XML-RPC API ein Artikel aktualisiert oder gespeichert wird.
    </span>
</span>
</p>

</article>

<article id="XU" class="subsub">

<header>
    <h4 class="subarticle" id="backend-ereignisse-kommentare">Backend-Ereignisse: Kommentare</h4>
</header>

<p class="tagging invisible">
<span class="tag-box invisible">
    <span class="inline-tag">Plugin-API!Ereignisse!Backend: Kommentare</span>
</span>
</p>

<p class="desc">
<code class="item event">backend_comments_top</code>
<span class="desc-info">
    <span class="box group-box">
        wird in der Kopfzeile der Tabellenansicht von im Backend vorhandenen Kommentaren aufgerufen.
        <span class="subdesc">
            <code>eventData</code>: Array mit den auf dieser Seite dargestellten Kommentaren.
        </span>
    </span>
</span>
</p>

<p class="desc">
<code class="item event">backend_view_comment</code>
<span class="desc-info">
    <span class="box group-box">
        wird aufgerufen, wenn Kommentare im Bereich
        <span class="mbold">Kommentare</span> des Backends angezeigt werden.
        <span class="subdesc">
            <code>eventData</code>: Array mit Daten des Kommentars.
        </span>
        <span class="subdesc">
            <code>addData</code>: URL-Variablen, die bei der Kommentaransicht die
            aktuelle Seite identifizieren.
        </span>
    </span>
</span>
</p>

<p class="desc">
<code class="item event">backend_approvecomment</code>
<span class="desc-info">
    <span class="box group-box">
        wird aufgerufen, wenn ein moderierter
        Kommentar von einem Redakteur freigeschaltet wurde.
        <span class="subdesc">
            <code>eventData</code> enthält ein Array mit den Daten des Kommentars.
        </span>
    </span>
</span>

</p>

<p class="desc">
<code class="item event">backend_deletecomment</code>
<span class="desc-info">
    <span class="box group-box">
        wird aufgerufen, wenn ein Kommentar gelöscht wird.
        <span class="subdesc">
            <code>eventData</code> enthält ein Array mit Daten des Kommentars.
        </span>
        <span class="subdesc">
            <code>addData</code>
            enthält ein Array mit dem Schlüssel
            <span class="sub-box">
                <code>cid</code> (ID des Kommentars) und
                <code>entry_id</code> (ID des kommentierten Blog-Artikels).
            </span>
        </span>
    </span>
</span>
</p>

<p class="desc">
<code class="item event">backend_updatecomment</code>
<span class="desc-info">
    <span class="box group-box">
        wird aufgerufen, wenn ein Redakteur einen
        Kommentar bearbeitet hat.
        <span class="subdesc">
            <code>eventData</code> enthält die HTTP POST-Formulardaten
            (mit den neuen Daten des Kommentars).
        </span>
        <span class="subdesc">
            <code>addData</code> enthält die ID des zu ändernden Kommentars.
        </span>
    </span>
</span>
</p>

</article>

<article id="XU" class="subsub">

<header>
    <h4 class="subarticle" id="backend-ereignisse-artikel">Backend-Ereignisse: Artikel</h4>
</header>

<p class="tagging invisible">
<span class="tag-box invisible">
    <span class="inline-tag">Plugin-API!Ereignisse!Backend: Artikel</span>
</span>
</p>

<p class="desc">
<code class="item event">backend_delete_entry</code>
<span class="desc-info">
    <span class="box group-box">
        wird aufgerufen, wenn ein Blog-Artikel gelöscht wird.
        <span class="subdesc">
            <code>eventData</code>: ID des gelöschten Artikels.
        </span>
    </span>
</span>
</p>

<p class="desc">
<code class="item event">backend_preview</code>
<span class="desc-info">
    <span class="box group-box">
        wird aufgerufen, wenn die Artikelvorschau im Backend
        angefordert wurde.
        <span class="subdesc">
            <code>eventData</code>: enthält das Array mit Daten des Artikels.
        </span>
    </span>
</span>
</p>

<p class="desc">
<code class="item event">backend_publish</code>
<span class="desc-info">
    <span class="box group-box">
        wird aufgerufen, wenn ein Artikel veröffentlicht
        (und somit auch gespeichert) wird.
        <span class="subdesc">
            <code>eventData</code>: enthält das Array mit Daten des Artikels.
        </span>
        <span class="subdesc">
            <code>addData</code>: enthält <code>true</code>,
            wenn der Artikel vorher noch nie gespeichert wurde.
        </span>
    </span>
</span>
</p>

<p class="desc">
<code class="item event">backend_save</code>
<span class="desc-info">
    <span class="box group-box">
        wird aufgerufen, wenn ein Artikel als Entwurf
        gespeichert wird.
        <span class="subdesc">
            <code>eventData</code>: enthält das Array mit Daten des Artikels.
        </span>
        <span class="subdesc">
            <code>addData</code>: enthält <code>true</code>,
            wenn der Artikel vorher noch nie gespeichert wurde.
        </span>
    </span>
</span>
</p>

<p class="desc">
<code class="item event">backend_display</code>
<span class="desc-info">
    <span class="box group-box">
        wird aufgerufen, wenn das Formular zum Erstellen und
        Ändern eines Blog-Artikels im Backend dargestellt wird. Plugins können bei diesem
        Ereignis eigene Eingabefelder einbinden, die im Bereich <span class="mbold">Erweiterte
        Optionen</span> angezeigt werden.
        <span class="subdesc">
            <code>eventData</code>: Array mit Daten des Artikels, der bearbeitet wird.
        </span>
    </span>
</span>
</p>

<p class="desc">
<code class="item event">backend_entryform</code>
<span class="desc-info">
    <span class="box group-box">
        wird aufgerufen, wenn das Formular zum Erstellen
        und Ändern eines Blog-Artikels im Backend dargestellt wird. Im Gegensatz zum
        Ereignis <code>backend_display</code> kann ein Plugin hier auf die Daten eines Artikels
        zugreifen und Ausgaben am <em>Anfang</em> des Eingabeformulars
        einbinden.
        <span class="subdesc">
            <code>eventData</code>: Array mit Daten des Artikels, der bearbeitet wird.
        </span>
    </span>
</span>
</p>

<p class="desc">
<code class="item event">backend_entryform_smarty</code>
<span class="desc-info">
    <span class="box group-box">
        wird aufgerufen, bevor das Smarty-Template
        <code>admin/entries.tpl</code> zum Bearbeiten eines Artikels dargestellt wird.
        <span class="subdesc">
            <code>eventData</code> enthält die Variablen des Smarty-Templates, die von der
            Artikel-Oberfläche zugewiesen wurden.
        </span>
    </span>
</span>
</p>

<p class="desc">
<code class="item event">backend_entry_checkSave</code>
<span class="desc-info">
    <span class="box">
        prüft gültige Eingabewerte vor dem
        Speichern eines neuen Artikels (mittels JavaScript) auf Gültigkeit.
    </span>
</span>
</p>

<p class="desc">
<code class="item event">backend_entry_updertEntry</code>
<span class="desc-info">
    <span class="box group-box">
        prüft gültige Eingabewerte vor dem
        Speichern eines Artikels auf etwaige Fehler. Tritt ein Fehler auf, wird der
        Artikel nicht gespeichert.
        <span class="subdesc">
            <code>eventData</code>: Array, das mit Fehlermeldungen gefüllt werden kann.
        </span>
        <span class="subdesc">
            <code>addData</code>: Array mit Daten des Artikels, der geprüft wird.
        </span>
    </span>
</span>
</p>

<p class="desc">
<code class="item event">backend_entry_presave</code>
<span class="desc-info">
    <span class="box group-box">
        wird aufgerufen, kurz bevor ein Artikel in
        der Datenbank gespeichert wird.
        <span class="subdesc">
            <code>eventData</code>: Array mit Daten des Artikels,
            der gespeichert wird.
        </span>
    </span>
</span>
</p>

<p class="desc">
<code class="item event">backend_cache_purge</code>
<span class="desc-info">
    <span class="box">
        wird aufgerufen, wenn Caches von Artikeltexten
        geleert werden müssen (siehe Seite <span class="pageref"><a href="#cachable-events">cachable-events</a></span>).
    </span>
</span>
</p>

<p class="desc">
<code class="item event">backend_cache_entries</code>
<span class="desc-info">
    <span class="box">
        wird aufgerufen, wenn Caches der aktuellsten
        bestehenden Artikel neu erstellt werden sollen.
    </span>
</span>
</p>

<p class="desc">
<code class="item event">backend_import_entry</code>
<span class="desc-info">
    <span class="box group-box">
        kann während des Blog-Imports von einzelnen
        Importern aufgerufen werden, so dass Plugins zusätzliche Informationen für jeden
        importierten Artikel setzen können.
        <span class="subdesc">
            <code>eventData</code>: Array des neu eingefügten Artikels.
        </span>
        <span class="subdesc">
            <code>addData</code>: Array mit bereits bestehenden Eigenschaften des Artikels.
        </span>
    </span>
</span>
</p>

<p class="desc">
<code class="item event">backend_entry_toolbar_body</code>, 
<code class="item event">backend_entry_toolbar_extended</code>
<span class="desc-info">
    <span class="box group-box">
        wird an der Stelle des Artikelformulars im Backend ausgeführt, bei der die
        Symbolleiste für Formatierungen und die Einbindung von Dateien in der
        Mediathek ausgegeben wird. Plugins können dort eigene Symbolleisten
        einbinden. <code>backend_entry_toolbar_body</code> gilt für die Symbolleiste des
        <span class="mbold">Eintrags</span> und <code>backend_entry_toolbar_extended</code>
        für die Symbolleiste des <span class="mbold">Erweiterten Eintrags</span>.
        <span class="subdesc">
            <code>eventData</code>: enthält ein Array mit den Daten
            des Artikels, der im Backend bearbeitet wird.
        </span>
    </span>
</span>
</p>

<p class="desc">
<code class="item event">backend_entry_iframe</code>
<span class="desc-info">
    <span class="box group-box">
        wird aufgerufen, wenn ein Blog-Artikel als
        Vorschau im Backend eingebunden wird. Dies erfolgt über einen iframe.
        <span class="subdesc">
            <code>eventData</code> enthält standardmäßig den Wert <code>true</code>. Wenn ein Plugin dies
            auf <code>false</code> ändert, kann es selbständig die Erstellung eines iframe
            übernehmen. Der Serendipity-Kern überspringt in diesem Fall die vorgesehenen
            Routinen zur Erstellung.
        </span>
    </span>
</span>
</p>

</article>

<article id="XU" class="subsub">

<header>
    <h4 class="subarticle" id="backend-ereignisse-kategorien">Backend-Ereignisse: Kategorien</h4>
</header>

<p class="tagging invisible">
<span class="tag-box invisible">
    <span class="inline-tag">Plugin-API!Ereignisse!Backend: Kategorien</span>
</span>
</p>

<p class="desc">
<code class="item event">backend_category_addNew</code>
<span class="desc-info">
    <span class="box group-box">
        wird ausgeführt, wenn im Blog eine neue
        Kategorie angelegt wird.
        <span class="subdesc">
            <code>eventData</code>: ID der neu angelegten Kategorie.
        </span>
    </span>
</span>
</p>

<p class="desc">
<code class="item event">backend_category_delete</code>
<span class="desc-info">
    <span class="box group-box">
        wird ausgeführt, wenn ein oder mehrere Kategorien gelöscht werden.
        <span class="subdesc">
            <code>eventData</code>: ID der zu löschenden Kategorie. Kann
            einen Von/Bis-Wert enthalten, der in einer MySQL-Abfage wie <code>DELETE FROM
            ...  WHERE id IN (1, 2, 3, 4 ...)</code> eingesetzt werden kann.
        </span>
    </span>
</span>
</p>

<p class="desc">
<code class="item event">backend_category_showForm</code>
<span class="desc-info">
    <span class="box group-box">
        stellt beim Bearbeiten einer Kategorie
        das HTML-Formular mit den möglichen Eigenschaften dar.
        <span class="subdesc">
            <code>eventData</code>: ID der
            Kategorie, deren Eigenschaften verändert werden sollen.
        </span>
        <span class="subdesc">
            <code>addData</code>: enthält
            ein Array mit den derzeitigen Eigenschaften der Kategorie.
        </span>
    </span>
</span>
</p>

<p class="desc">
<code class="item event">backend_category_update</code>
<span class="desc-info">
    <span class="box group-box">
        wird aufgerufen, wenn die Eigenschaften
        einer Kategorie verändert wurden.
        <span class="subdesc">
            <code>eventData</code>: ID der Kategorie.
        </span>
    </span>
</span>
</p>

</article>

<article id="XU" class="subsub">

<header>
    <h4 class="subarticle" id="backend-ereignisse-login-und-rechtemanagement">Backend-Ereignisse: Login- und Rechtemanagement</h4>
</header>

<p class="tagging invisible">
<span class="tag-box invisible">
    <span class="inline-tag">Plugin-API!Ereignisse!Backend: Login- und Rechtemanagement</span>
</span>
</p>

<p class="desc">
<code class="item event">backend_auth</code>
<span class="desc-info">
    <span class="box group-box">
        wird beim Login eines Redakteurs ausgeführt, damit
        dessen Benutzername/Passwort auch mit externen Quellen validiert werden kann.
        <span class="subdesc">
            <code>eventData</code>: enthält den Wert <code>true</code>, wenn das Passwort als MD5-Hash
            durchgereicht wird.
        </span>
        <span class="subdesc">
            <code>addData</code>: Array mit Schlüsseln <code>username</code> und
            <code>passwort</code>.
        </span>
    </span>
</span>
</p>

<p class="desc">
<code class="item event">backend_login</code>
<span class="desc-info">
    <span class="box group-box">
        wird beim Login eines Redakteurs ausgeführt und muss
        nicht zwangsläufig ein Benutzername/Passwort-Paar beinhalten. Plugins können so
        Redakteure zB. anhand von Cookie-Werten oder fester Daten wie IPs
        authentifizieren.
        <span class="subdesc">
            <code>eventData</code>: enthält den Wert <code>true</code>, wenn der
            Redakteur bereits von Serendipity identifiziert werden konnte.
        </span>
    </span>
</span>
</p>

<p class="desc">
<code class="item event">backend_loginfail</code>
<span class="desc-info">
    <span class="box group-box">
        wird aufgerufen, wenn die Autorisation fehlschlug.
        <span class="subdesc">
            <code>eventData</code>: enthält den Wert <code>true</code>, wenn der
            Redakteur bereits von Serendipity identifiziert werden konnte.
        </span>
    </span>
</span>
</p>

<p class="desc">
<code class="item event">backend_sidebar_entries_event_display_profiles</code>
<span class="desc-info">
    <span class="box group-box">
        wird aufgerufen,
        wenn die persönlichen Einstellungen eines Redakteurs angezeigt werden.
        <span class="subdesc">
            <code>eventData</code> enthält ein Array mit den Daten des Redakteurs.
        </span>
    </span>
</span>
</p>

<p class="desc">
<code class="item event">backend_users_add</code>
<span class="desc-info">
    <span class="box group-box">
        wird aufgerufen, wenn ein neuer Redakteurszugang
        erstellt wurde.
        <span class="subdesc">
            <code>eventData</code>: Array mit Eigenschaften des neuen Redakteurs.
        </span>
    </span>
</span>
</p>

<p class="desc">
<code class="item event">backend_users_delete</code>
<span class="desc-info">
    <span class="box group-box">
        wird aufgerufen, wenn ein Redakteurszugang
        gelöscht wurde.
        <span class="subdesc">
            <code>eventData</code>: Array mit Eigenschaften des zu löschenden
            Redakteurs.
        </span>
    </span>
</span>
</p>

<p class="desc">
<code class="item event">backend_users_edit</code>
<span class="desc-info">
    <span class="box group-box">
        wird aufgerufen, wenn die Eigenschaften eines
        Redakteurszugangs verändert wurden.
        <span class="subdesc">
            <code>eventData</code>: Array mit Eigenschaften des
            zu ändernden Redakteurs.
        </span>
    </span>
</span>

</p>

<p class="desc">
<span class="label invisible" id="hook-backend-sidebar-entries">hook-backend-sidebar-entries</span>
<code class="item event">backend_sidebar_entries</code>
<span class="desc-info">
    <span class="box">
        wird bei der Darstellung der Menüpunkte des
        Backends ausgeführt. Über dieses Ereignis können zusätzliche Menüpunkte im
        Bereich <span class="mbold">Einträge</span> hinzugefügt werden.
    </span>
</span>
</p>

<p class="desc">
<code class="item event">backend_sidebar_entries_images</code>
<span class="desc-info">
    <span class="box">
        wird bei der Darstellung der
        Menüpunkte des Backends ausgeführt. Über dieses Ereignis können zusätzliche
        Menüpunkte im Bereich <span class="mbold">Mediathek</span> hinzugefügt werden.
    </span>
</span>
</p>

<p class="desc">
<code class="item event">backend_sidebar_admin_appearance</code>
<span class="desc-info">
    <span class="box">
        wird bei der Darstellung der
        Menüpunkte des Backends ausgeführt. Über dieses Ereignis können zusätzliche
        Menüpunkte im Bereich <span class="mbold">Einstellungen</span> hinzugefügt werden.
    </span>
</span>
</p>

<p class="desc">
<code class="item event">backend_sidebar_admin</code>
<span class="desc-info">
    <span class="box">
        wird bei der Darstellung der Menüpunkte des
        Backends ausgeführt. Über dieses Ereignis können zusätzliche Menüpunkte im
        Bereich <span class="mbold">Administration/Einstellungen</span> hinzugefügt werden.
    </span>
</span>
</p>

<p class="desc">
<code class="item event">backend_sidebar_users</code>
<span class="desc-info">
    <span class="box">
        wird bei der Darstellung der Menüpunkte des
        Backends ausgeführt. Über dieses Ereignis können zusätzliche Menüpunkte im
        Bereich <span class="mbold">Administration/Benutzerverwaltung</span> hinzugefügt werden.
    </span>
</span>
</p>

<p class="desc">
<code class="item event">backend_frontpage_display</code>
<span class="desc-info">
    <span class="box group-box">
        wird bei der Darstellung der Startseite
        des Backends nach dem Login ausgeführt. Dort können Plugins etwaige Informationen
        oder weiterführende Links ausgeben.
        <span class="subdesc">
            <code>eventData</code> enthält ein Array, das für
            jeden einzelnen Schlüssel ein spezielles HTML-Fragment enthalten kann:
            <span class="sub-box">
                <code>welcome</code> für den Begrüßungstext,
                <code>links_title</code> für die Überschrift der <span class="mbold">Weiterführende Links</span>-Box,
                <code>links</code> als Array mit allen dargestellten Links dieser Box,
                <code>links_css</code> für die CSS-Klasse dieser Box,
                <code>more</code> für alle weiteren HTML-Ausgaben auf der Startseite.
                <code>show_links</code> enthält den Wert <code>false</code>,
                wenn die Box <span class="mbold">Weiterführende Links</span> nicht angezeigt werden soll.
                <code>bookmarklet</code> enthält die URL zu einem JavaScript-Code, mit dem Sie in
                Ihrem Browser ein Lesezeichen speichern können, um sofort einen neuen Blog-Artikel
                zu verfassen.
            </span>
        </span>
    </span>
</span>
</p>

<p class="desc">
<code class="item event">backend_login_page</code>
<span class="desc-info">
    <span class="box group-box">
        wird aufgerufen, wenn das Login-Formular zum Backend dargestellt wird.
        <span class="subdesc">
            <code>eventData</code> enthält ein Array mit mehreren
            HTML-Ausgabefragmenten im Login-Formular und verwendet folgende Schlüssel:
            <span class="sub-box">
                <code>header</code> für die Überschrift des Login-Formulars,
                <code>table</code> für weitere Tabellenzeilen des Login-Formulars,
                <code>footer</code> für eine abschließende Fußzeile des Formulars.
            </span>
        </span>
    </span>
</span>
</p>

</article>

<article id="XU" class="subsub">

<header>
    <h4 class="subarticle" id="backend-ereignisse-mediathek">Backend-Ereignisse: Mediathek</h4>
</header>

<p class="tagging invisible">
<span class="tag-box invisible">
    <span class="inline-tag">Plugin-API!Ereignisse!Backend: Mediathek</span>
</span>
</p>

<p class="desc">
<code class="item event">backend_image_add</code>
<span class="desc-info">
    <span class="box group-box">
        wird aufgerufen, wenn eine neue Datei in die
        Mediathek eingefügt wurde.
        <span class="subdesc">
            <code>eventData</code> enthält den Pfad zu der eingestellten Datei.
        </span>
        <span class="subdesc">
            <code>addData</code> enthält den Pfad zur automatisch erzeugten
            Voransicht der Datei.
        </span>
    </span>
</span>
</p>

<p class="desc">
<code class="item event">backend_image_addHotlink</code>
<span class="desc-info">
    <span class="box group-box">
        wird aufgerufen, wenn ein neuer
        <em>Hotlink</em> (siehe Seite <span class="pageref"><a href="#Hotlink">Hotlink</a></span>) in die Mediathek eingefügt
        wurde.
        <span class="subdesc">
            <code>eventData</code> enthält den Pfad zu der temporären lokalen Kopie der zu
            verknüpfenden Datei.
        </span>
    </span>
</span>
</p>

<p class="desc">
<code class="item event">backend_image_addform</code>
<span class="desc-info">
    <span class="box">
        (via Smarty <code>media_upload.tpl</code>) wird
        aufgerufen, wenn das Eingabeformular zum Hochladen neuer Dateien für die
        Mediathek dargestellt wird.
    </span>
</span>
</p>

<p class="desc">
<code class="item event">backend_directory_create</code>
<span class="desc-info">
    <span class="box group-box">
        wird aufgerufen, wenn ein neues
        Verzeichnis in der Mediathek erstellt wurde.
        <span class="subdesc">
            <code>eventData</code>: vollständiger Pfad des neu angelegten Verzeichnisses.
        </span>
    </span>
</span>
</p>

<p class="desc">
<code class="item event">backend_directory_createoptions</code>
<span class="desc-info">
    <span class="box group-box">
        wird aufgerufen, wenn ein neues Verzeichnis in der Mediathek erstellt wird.
        <span class="subdesc">
            <code>addData</code>: Neu angelegte Verzeichnisse können von Plugins behandelt werden.
        </span>
    </span>
</span>
</p>

<p class="desc">
<code class="item event">backend_directory_delete</code>
<span class="desc-info">
    <span class="box group-box">
        wird aufgerufen, wenn ein Verzeichnis gelöscht wurde.
        <span class="subdesc">
            <code>eventData</code>: Ist das zu löschende Verzeichnis.
        </span>
    </span>
</span>
</p>

<p class="desc">
<code class="item event">backend_media_delete</code>
<span class="desc-info">
    <span class="box group-box">
        wird aufgerufen, wenn eine Datei der Mediathek gelöscht wird.
        <span class="subdesc">
            <code>eventData</code> enthält ein Array mit zu
            löschenden zusätzlichen Dateien, zB. der automatisch erzeugten Voransicht.
        </span>
    </span>
</span>
</p>

<p class="desc">
<code class="item event">backend_media_check</code>
<span class="desc-info">
    <span class="box group-box">
        wird aufgerufen, wenn eine Datei geprüft
        werden soll, die gerade in die Mediathek hochgeladen wird. Wenn
        <span class="subdesc">
            <code>eventData</code> von einem Plugin auf den Wert <code>true</code> gesetzt
            wird, verbietet Serendipity das Einstellen dieser Datei. Dies
            kann zB. dazu verwendet werden, um das Hochladen von
            JavaScript-Dateien oder unerwünschten Dateinamen zu verhindern.
        </span>
        <span class="subdesc">
            <code>addData</code> enthält den hochgeladenen Dateinamen.
        </span>
    </span>
</span>
</p>

<p class="desc">
<code class="item event">backend_media_makethumb</code>
<span class="desc-info">
    <span class="box group-box">
        wird aufgerufen, wenn die Voransicht einer
        Grafik erstellt werden soll.
        <span class="subdesc">
            <code>eventData</code>: enthält ein verschachteltes Array,
            dessen Unterarrays jeweils die Schlüssel
            <span class="sub-box">
                <code>thumbSize</code> (Bildgröße der Voransicht) und
                <code>thumb</code> (Datei-Suffix für die Voransicht) besitzen müssen.
            </span>
            Für jedes Unterarray, das durch Plugins angehängt werden kann, wird eine
            weitere Voransichts-Datei erstellt.
        </span>
    </span>
</span>
</p>

<p class="desc">
<code class="item event">backend_media_path_exclude_directories</code>
<span class="desc-info">
    <span class="box group-box">
        wird bei der automatischen
        Synchronisation der Mediathek (siehe Seite <span class="pageref"><a href="#MDB-Synchronisation">MDB-Synchronisation</a></span>)
        aufgerufen. Plugins können eine übergebene Liste von Datei- und Verzeichnisnamen
        modifizieren, um so bestimmte Dateien von der Synchronisation auszuschließen.
        <span class="subdesc">
            <code>eventData</code> enthält ein Array, dessen Schlüssel die Zeichenkette des
            auszuschließenden Datei-/Verzeichnisnamens festlegt.
        </span>
    </span>
</span>
</p>

<p class="desc">
<code class="item event">backend_media_rename</code>
<span class="desc-info">
    <span class="box group-box">
        wird ausgeführt, wenn ein Objekt der
        Mediathek umbenannt wird.
        <span class="subdesc">
            <code>eventData</code> enthält ein verschachteltes
            Array, bei dem jedes Unterarray eine umzubenennende Datei enthält. So können auch
            die Namen der Voransichten automatisch umbenannt und durch Plugins verwaltet werden.
        </span>
    </span>
</span>
</p>

<p class="desc">
<code class="item event">backend_thumbnail_filename_select</code>
<span class="desc-info">
    <span class="box group-box">
        wird aufgerufen, wenn Dateinamen
        und Pfade eines Objekts der Mediathek zusammengestellt werden.
        <span class="subdesc">
            <code>eventData</code> enthält die Metadaten einer Datei der Mediathek.
        </span>
    </span>
</span>
</p>

</article>

<article id="XU" class="subsub">

<header>
    <h4 class="subarticle" id="backend-ereignisse-framework">Backend-Ereignisse: Framework</h4>
</header>

<p class="tagging invisible">
<span class="tag-box invisible">
    <span class="inline-tag">Plugin-API!Ereignisse!Backend: Framework</span>
</span>
</p>

<p class="desc">
<code class="item event">css_backend</code>
<span class="desc-info">
    <span class="box group-box">
        für die Darstellung des CSS Stylesheets im Backend.
        <span class="subdesc">
            <code>eventData</code> (Array): CSS-Daten des Template-Stylesheets, kann durch
            Plugins verändert/erweitert werden.
        </span>
    </span>
</span>
</p>

<p class="desc">
<code class="item event">js_backend</code>
<span class="desc-info">
    <span class="box group-box">
        für die Darstellung und Befüllung der dynamisch erstellten <code>serendipity_admin.js</code> Datei im Backend.
        <span class="subdesc">
            <code>eventData</code> (String): Javascript, das im Backend Header ausgeführt werden soll.
        </span>
    </span>
</span>
</p>

<p class="desc">
<code class="item event">backend_wysiwyg</code>
<span class="desc-info">
    <span class="box group-box">
        wird aufgerufen, wenn im Backend ein
        Texteingabebereich für einen WYSIWYG-Editor erscheinen soll.
        <span class="subdesc">
            <code>eventData</code>: Array mit Schlüsseln
            <span class="sub-box">
                <code>init</code> (enthält <code>true</code>, wenn das
                WYSIWYG-Javascript bereits instanziert wurde),
                <code>item</code> (Name des HTML-Formularelements mit der WYSIWYG-Eingabe),
                <code>jsname</code> (ID des HTML-Formularelements) und
                <code>skip</code> (enthält <code>true</code>, wenn ein
                Eingabeelement nicht ausgegeben werden soll).
            </span>
        </span>
    </span>
</span>
</p>

<p class="desc">
<code class="item event">backend_wysiwyg_finish</code>
<span class="desc-info">
    <span class="box">
        wird aufgerufen (entweder über PHP oder auch
        über Smarty-Templates), wenn das WYSIWYG-Javascript instanziert werden soll.
    </span>
</span>
</p>

<p class="desc">
<code class="item event">backend_wysiwyg_nuggets</code>
<span class="desc-info">
    <span class="box group-box">
        wird aufgerufen, wenn ein
        WYSIWYG-Editorfeld für erweiterte Texteingabefelder (zB. HTML-Klötze,
        siehe Seite <span class="pageref"><a href="#htmlnugget">htmlnugget</a></span>) eingebunden werden soll.
        <span class="subdesc">
            <code>eventData</code>:
            enthält ein Array mit den Schlüsseln <code>nuggets</code> (Array mit allen vorhandenen
            HTML-WYSIWYG-Elementen) und <code>skip_nuggets</code> (enthält <code>true</code>, wenn keine
            HTML-Klötze zu WYSIWYG-Eingabefeldern konvertiert werden sollen).
        </span>
    </span>
</span>
</p>

<p class="desc">
<code class="item event">backend_configure</code>
<span class="desc-info">
    <span class="box">
        wird aufgerufen, wenn das Serendipity-Backend
        initialisiert wurde (analog zum Ereignis <code>frontend_configure</code>).
    </span>
</span>
</p>

<p class="desc">
<code class="item event">backend_header</code>
<span class="desc-info">
    <span class="box">
        wird aufgerufen, wenn der HTML-Bereich <code>&lt;head&gt;</code>
        des Serendipity-Backends dargestellt wird (analog zum Ereignis
        <code>frontend_header</code>).
    </span>
</span>
</p>

<p class="desc">
<code class="item event">backend_footer</code>
<span class="desc-info">
    <span class="box">
        wird aufgerufen, wenn der HTML-Bereich vor dem schließenden <code>&lt;/body&gt;</code> tag
        des Serendipity-Backends dargestellt wird (analog zum Ereignis
        <code>frontend_footer</code>).
    </span>
</span>
</p>

<p class="desc">
<code class="item event">backend_trackbacks</code>
<span class="desc-info">
    <span class="box group-box">
        wird aufgerufen, wenn Trackbacks eines Artikels versendet werden.
        <span class="subdesc">
            <code>eventData</code> enthält ein Array mit allen auf Trackbacks zu
            prüfenden URLs.
        </span>
    </span>
</span>
</p>

<p class="desc">
<code class="item event">backend_trackback_check</code>
<span class="desc-info">
    <span class="box group-box">
        wird für jede einzelne URL aufgerufen,
        bevor an diese ein Trackback verschickt wird.
        <span class="subdesc">
            <code>eventData</code>: automatisch entdeckte Trackback-URL.
        </span>
        <span class="subdesc">
            <code>addData</code>: URL, bei der geprüft werden soll, ob sie Trackback-fähig ist.
        </span>
    </span>
</span>
</p>

<p class="desc">
<code class="item event">event_additional_statistics</code>
<span class="desc-info">
    <span class="box">
        wird vom Statistik-Plugin aufgerufen,
        damit weitere Plugins ihre eigenen Statistiken darstellen können.
    </span>
</span>
</p>

<p class="desc">
<code class="item event">backend_sidebar_entries_event_display_X</code>
<span class="desc-info">
    <span class="box">
        wird mit einer
        vom Plugin am Ende des Ereignisnamens festgelegten Zeichenkette aufgerufen, um
        beliebige Ausgaben im Hauptbereich des Backends darzustellen. Über solche
        Ereignisse kann jedes Plugin eigene Backend-Bereiche realisieren. Diese
        werden über eine URL wie
        <code>http://www.example.com/serendipity/serendipity_admin.php?serendipity[adminModule]=event_display&amp;serendipity[adminAction]=X</code>
        aufgerufen. Solche Links kann das Plugin über ein Ereignis wie <code>backend_sidebar_entries</code>
        (siehe Seite <span class="pageref"><a href="#hook-backend-sidebar-entries">hook-backend-sidebar-entries</a></span> leicht direkt im Backend-Menü einbinden.
    </span>
</span>
</p>

<p class="desc">
<code class="item event">backend_http_request</code>
<span class="desc-info">
    <span class="box group-box">
        wird von Serendipity immer dann aufgerufen,
        wenn vom Server eine HTTP-Verbindung zu einem fremden Server erstellt wird, zB.
        bei Trackbacks, fremden RSS-Feeds, Importvorgängen und Weiterem. Der Server wird
        dabei mittels der PEAR-Klasse <code>HTTP_Request</code> angesprochen, die einige
        Optionen unterstützt. Diese Optionen werden als
        <span class="subdesc">
            <code>eventData</code> an die Plugins
            weitergereicht, so dass sie verändert werden können, um zB. die Verbindung über
            den Umweg eines Proxies aufzubauen.
        </span>
        <span class="subdesc">
            Der Wert der Variablen <code>addData</code> gibt
            dabei die Quelle der HTTP-Verbindung an:
            <span class="sub-box">
                <code>image</code> (Herunterladen von Mediendaten),
                <code>spartacus</code> (Operationen des Spartacus-Plugins),
                <code>trackback_detect</code> (Trackbacks erkennen),
                <code>trackback_send</code> (Trackbacks senden).
            </span>
        </span>
    </span>
</span>
 </p>

<p class="desc">
<code class="item event">backend_sendcomment</code>
<span class="desc-info">
    <span class="box group-box">
        wird aufgerufen, wenn Serendipity eine E-Mail verschickt.
        <span class="subdesc">
            <code>eventData</code> enthält ein Array mit den Metadaten des Kommentars.
        </span>
    </span>
</span>
</p>

<p class="desc">
<code class="item event">backend_sendmail</code>
<span class="desc-info">
    <span class="box group-box">
        wird aufgerufen, wenn Serendipity eine E-Mail verschickt.
        <span class="subdesc">
            <code>eventData</code> enthält ein Array mit den Daten der E-Mail und folgenden Schlüsseln:
            <span class="sub-box">
                <code>to</code> (Mailempfänger),
                <code>subject</code> (Betreff),
                <code>fromName</code> (Name des Absenders),
                <code>fromMail</code> (E-Mail-Adresse des Absenders),
                <code>blogMail</code> (E-Mail-Adresse des Blogs),
                <code>version</code> (Version von Serendipity),
                <code>headers</code> (E-Mail-Header),
                <code>message</code> (Text).
                Der Schlüssel <code>legacy</code> enthält standardmäßig den Wert <code>true</code>, damit Serendipity die 
                eigenen Routinen zum Mailversand benutzt. Wenn ein Plugin diese Variable auf
                <code>false</code> ändert, kann es den Mailversand selbständig übernehmen.
            </span>
        </span>
        <span class="subdesc">
            <code>addData</code> enthält den Zeichensatz des Blogs.
        </span>
    </span>
</span>
</p>

</article>

<article id="XU" class="subsub">

<header>
    <h4 class="subarticle" id="backend-ereignisse-plugins-und-templates">Backend-Ereignisse: Plugins und Templates</h4>
</header>

<p class="tagging invisible">
<span class="tag-box invisible">
    <span class="inline-tag">Plugin-API!Ereignisse!Backend: Plugins und Templates</span>
</span>
</p>

<p class="desc">
<code class="item event">backend_entryproperties</code>
<span class="desc-info">
    <span class="box">
        wird oberhalb der Sammlung aller verfügbaren Eintrags-Eigenschaften im Backend aufgerufen,
        um diese in der Datenbank zu löschen und neu zu setzen.
    </span>
</span>
</p>

<p class="desc">
<code class="item event">backend_plugins_event_header</code>
<span class="desc-info">
    <span class="box">
        wird oberhalb der Auflistung aller
        verfügbaren Ereignis-Plugins im Backend aufgerufen.
    </span>
</span>
</p>

<p class="desc">
<code class="item event">backend_plugins_fetchlist</code>
<span class="desc-info">
    <span class="box group-box">
        kann die Liste der verfügbaren Plugins
        der Plugin-Verwaltung erweitern, wird hauptsächlich vom
        <em>Spartacus</em>-Plugin (siehe Seite <span class="pageref"><a href="#Spartacus">Spartacus</a></span>) benutzt.
        <span class="subdesc">
            <code>eventData</code>: Array mit Daten der verfügbaren Plugins.
        </span>
    </span>
</span>
</p>

<p class="desc">
<code class="item event">backend_plugins_fetchplugin</code>
<span class="desc-info">
    <span class="box group-box">
        wird aufgerufen, wenn ein bisher noch
        nicht heruntergeladenes Plugin installiert werden soll. Dies wird hauptsächlich
        von Spartacus benutzt, um an dieser Stelle das Plugin und dessen Metadaten
        einzulesen.
        <span class="subdesc">
            <code>eventData</code>: Array mit Daten des zu installierenden Plugins.
        </span>
    </span>
</span>
</p>

<p class="desc">
<code class="item event">backend_plugins_install</code>
<span class="desc-info">
    <span class="box group-box">
        wird ausgeführt, nachdem ein neues Plugin (wahrscheinlich per download) installiert wurde.
        Dieser Hook sitzt im Beginn von <code>$plugin-&gt;install()</code>, welcher nachfolgend ausgeführt wird.
        This hook is actually NOT meant for the plugin itself to hook into, but for other plugins to possibly
        perform actions when a compatible plugin is installed - like, serendiity_event_staticpage could create
        additional SQL tables, if serendipity_event_freetag is installed. Then the plugin would not need to check
        everytime if the serendipity_event_freetag plugin is loaded and the tables already exist.
        <span class="subdesc">
            <code>$eventData</code>: Name des Plugins.
        </span>
        <span class="subdesc">
            <code>$addData</code>: Array von <code>$serendipity</code> plus GET data.
        </span>
    </span>
</span>
</p>

<p class="desc">
<code class="item event">backend_plugins_new_instance</code>
<span class="desc-info">
    <span class="box group-box">
        wird beim Installieren eines neuen Plugins aufgerufen.
        <span class="subdesc">
            <code>eventData</code>: Name des Plugins.
        </span>
        <span class="subdesc">
            <code>addData</code>:
            Positionierung des Plugins (<code>event</code>, <code>left</code>, <code>right</code> ...).
        </span>
    </span>
</span>
</p>

<p class="desc">
<code class="item event">backend_pluginlisting_header</code>
<span class="desc-info">
    <span class="box">
        wird oberhalb der Plugin-Verwaltung aufgerufen.
    </span>
</span>
</p>

<p class="desc">
<code class="item event">backend_plugins_sidebar_header</code>
<span class="desc-info">
    <span class="box">
        wird oberhalb der Auflistung aller
        verfügbaren Seitenleisten-Plugins im Backend aufgerufen.
    </span>
</span>
</p>

<p class="desc">
<code class="item event">backend_plugins_update</code>
<span class="desc-info">
    <span class="box group-box">
        wird ausgeführt, nachdem ein existierendes Plugin upgedated wurde.
        Plugins können nach Updates für ihre eigenen Dateien suchen, indem sie
        sich in diese einklinken, aber auch nach anderen Plugins, die
        möglicherweise aktualisiert wurden.
        <span class="subdesc">
            <code>$eventData</code>: Name des Plugins.
        </span>
        <span class="subdesc">
            <code>$addData</code>: Array von <code>$serendipity</code> plus GET data.
        </span>
    </span>
</span>
</p>

<p class="desc">
<code class="item event">backend_pluginconfig_X</code>
<span class="desc-info">
    <span class="box group-box">
        wird ausgeführt, wenn eine
        Konfigurationsoption eines Plugins keinem intern angebotenen
        Datentypen (wie zB. <code>string</code>, <code>radio</code> ...) entspricht. Das Plugin
        kann so eigenständige Konfigurationstypen intern verwalten.
        <span class="subdesc">
            <span class="box">
                <code>eventData</code> enthält ein Array mit den Schlüsseln
                <span class="sub-box">
                    <code>config_item</code> (Name der Konfigurationsoption),<br>
                    <code>cbag</code> (<em>Property-Bag</em>-Objekt der <code>introspect_config_item()</code>-Methode des Plugins),<br>
                    <code>plugin</code> (enthält das Plugin-Objekt, dem die Konfigurationsoption entspringt),<br>
                    <code>value</code> (enthält den aktuellen Wert der Konfigurationsoption),<br>
                    <code>bag</code> (<em>Property-Bag</em>-Objekt des Plugins) und<br>
                    <code>postKey</code> (Zeichenkette für die Benennung der URL-Formularvariablen).
                </span>
            </span>
        </span>
    </span>
</span>
</p>

<p class="desc">
<code class="item event">backend_staticpages_insert</code>
<span class="desc-info">
    <span class="box group-box">
        wird aufgerufen, bevor <em>Statischen Seiten</em>
        im Backend gesichert werden. (Diese Hooks werden für aktuelle URL-Builds verwendet.)
        <span class="subdesc">
            <code>eventData</code>: Array mit den Daten der zu speichernden statischen Seite.
        </span>
    </span>
</span>
</p>

<p class="desc">
<code class="item event">backend_staticpages_update</code>
<span class="desc-info">
    <span class="box group-box">
        wird aufgerufen, bevor <em>Statischen Seiten</em>
        im Backend erneut gesichert werden.
        <span class="subdesc">
            <code>eventData</code>: Array mit den Daten der zu speichernden statischen Seite.
        </span>
    </span>
</span>
</p>

<p class="desc">
<code class="item event">backend_staticpages_showform</code>
<span class="desc-info">
    <span class="box group-box">
        wird aufgerufen, bevor das Formular der <em>Statischen Seiten</em> durch <code>SmartyInspectConfigFinish()</code>
        im Backend ausgegeben wird.
        <span class="subdesc">
            <code>eventData</code>: Array mit den Daten der statischen Seite.
        </span>
    </span>
</span>
</p>

<p class="desc">
<code class="item event">backend_template_fetchlist</code>
<span class="desc-info">
    <span class="box group-box">
        kann die Liste der verfügbaren Templates
        im Backend erweitern, wird hauptsächlich vom <em>Spartacus</em>-Plugin benutzt.
        <span class="subdesc">
            <code>eventData</code>: Array mit Daten der verfügbaren Templates.
        </span>
    </span>
</span>
</p>

<p class="desc">
<code class="item event">backend_template_fetchtemplate</code>
<span class="desc-info">
    <span class="box">
        wird aufgerufen, wenn ein bisher
        noch nicht heruntergeladenes Template installiert werden soll. Dies wird
        hauptsächlich von Spartacus benutzt, um an dieser Stelle das Template und dessen
        Metadaten einzulesen.
    </span>
</span>
</p>

<p class="desc">
<code class="item event">backend_templates_configuration_top</code>
<span class="desc-info">
    <span class="box group-box">
        wird am Anfang der
        Konfigurationsoptionen für ein Template ausgeführt, falls ein Template die
        Variable <code>$template_config</code> belegt hat (siehe Seite
        <span class="pageref"><a href="#templateoptionen">templateoptionen</a></span>).
        <span class="subdesc">
            <code>eventData</code> enthält ein Array mit den Konfigurationsoptionen des Templates.
        </span>
    </span>
</span>
</p>

<p class="desc">
<code class="item event">backend_templates_configuration_bottom</code>
<span class="desc-info">
    <span class="box group-box">
        wird am Ende der
        Konfigurationsoptionen für ein Template ausgeführt, falls ein Template die
        Variable <code>$template_config</code> belegt hat (siehe Seite
        <span class="pageref"><a href="#templateoptionen">templateoptionen</a></span>).
        <span class="subdesc">
            <code>eventData</code> enthält ein Array mit den
            Konfigurationsoptionen des Templates.
        </span>
    </span>
</span>
</p>

<p class="desc">
<code class="item event">backend_templates_configuration_none</code>
<span class="desc-info">
    <span class="box">
        wird ausgeführt, wenn das
        aktuell gesetzte Template keine eigenständigen Template-Optionen anbietet.
    </span>
</span>
</p>

<p class="desc">
<code class="item event">backend_templates_globalthemeoptions</code>
<span class="desc-info">
    <span class="box group-box">
        wird ausgeführt, wenn das
        aktuell gesetzte Template eigene u.o. (globale) Template-Optionen anbietet.
        <span class="subdesc">
            <code>eventData</code>: Array mit den Daten der Template Config.
        </span>
        <span class="subdesc">
            <code>addData</code>: Array mit den unterstützten Navigationselementen.
        </span>
    </span>
</span>
</p>

<p class="desc">
<code class="item event">backend_templates_install</code>
<span class="desc-info">
    <span class="box group-box">
        wird ausgeführt, wenn ein neues Template gewählt wird.
        <span class="subdesc">
            <code>$eventData</code>: Name des Templates.
        </span>
        <span class="subdesc">
            <code>$addData</code>: Array der Template Informationen (fetchTemplateInfo).
        </span>
    </span>
</span>
</p>

<p class="desc">
<code class="item event">plugin_dashboard_updater</code>
<span class="desc-info">
    <span class="box group-box">
        wird ausgeführt, wenn die Backend Übersicht (Dashboard) ausgegeben wird.
        Benötigt ein installiertes <code>serendipity_event_autoupdater</code>-Plugin
        und die gesetzte Konfigurationsoption <em>“Update-Hinweis”</em>.
        Erstellt einen Formularbutton für das Serendipity Auto Update auf der
        Backend Startseite (Dashboard).
        <span class="subdesc">
            <code>$eventData</code>: (String) Ausgabe des Plugin eigenen <em>'backend_frontpage_display'</em> event hooks.
        </span>
        <span class="subdesc">
            <code>$addData</code>: (String) Versions Übergabe.
        </span>
    </span>
</span>
</p>

<p class="desc">
<code class="item event">media_getproperties</code>
<span class="desc-info">
    <span class="box group-box">
        wird ausgeführt, wenn die
        Media Eigenschaften gewählt wurden.
        <span class="subdesc">
            <code>$eventData</code>: (Array) Return value der <code>serendipity_getMetaData()</code> Methode.
        </span>
        <span class="subdesc">
            <code>$addData</code>: (String) Datei für die die <code>serendipity_getMetaData()</code> Methode aufgerufen wird.
        </span>
    </span>
</span>
</p>

<p class="desc">
<code class="item event">media_getproperties_cached</code>
<span class="desc-info">
    <span class="box">
        wird ausgeführt, wenn die
        gecachte Version der Media Eigenschaften gewählt wurde.
    </span>
</span>
</p>

<p class="desc">
<code class="item event">plugins_linklist_input</code>
<span class="desc-info">
    <span class="box group-box">
        wird ausgeführt, wenn das
        <code>serendipity_event_linklist</code>-Plugin installiert und ausgeführt wird.
        <span class="subdesc">
            <code>$eventData</code>: (Array) Ausgabe der generate_output() Methode.
        </span>
    </span>
</span>
</p>

<p class="desc">
<code class="item event">plugins_linklist_conf</code>
<span class="desc-info">
    <span class="box group-box">
        wird ausgeführt, wenn das
        <code>serendipity_event_linklist</code>-Plugin installiert und konfiguriert wird.
        <span class="subdesc">
            <code>$eventData</code>: (Array) Set data für die Linklist Konfiguration.
        </span>
    </span>
</span>
</p>

<p class="desc">
<code class="item event">media_showproperties</code>
<span class="desc-info">
    <span class="box">
        wird ausgeführt, wenn das
        die Media Eigenschaften aufgerufen werden.
    </span>
</span>
</p>

<p class="desc">
<code class="item event">sort</code>
<span class="desc-info">
    <span class="box group-box">
        wird ausgeführt, wenn das
        <code>serendipity_event_freetag</code>-Plugin installiert und ausgeführt wird
        und die Konfigurationsoption <em>Sortiere</em> (order_by) nach tags eingestellt ist.
        <span class="subdesc">
            <code>$eventData</code>: (Array) Gecachte Operation der Liste aller Tags.
        </span>
    </span>
</span>
</p>

<p class="desc">
<code class="item event">avatar_fetch_userinfos</code>
<span class="desc-info">
    <span class="box group-box">
        wird ausgeführt, wenn das
        <code>serendipity_event_gravatar</code>-Plugin installiert und ausgeführt wird.
        Erlaubt anderen Plugins sich User Metadaten via dem <code>avatar_fetch_userinfos</code> hook zu holen.
        <span class="subdesc">
            <code>$eventData</code>: (Array) Ausgabe array an fetchTwitter() Methode.
        </span>
        <span class="subdesc">
            <code>$addData</code>: (Array) Type: twitter.
        </span>
    </span>
</span>
</p>

<p class="desc">
<code class="item event">frontend_display:html_layout</code>
<span class="desc-info">
    <span class="box group-box">
        wird ausgeführt, wenn das
        <code>serendipity_event_creativecommons</code>-Plugin installiert
        und die <code>generate_content()</code> Methode ausgeführt wird.
        <span class="subdesc">
            <code>$eventData</code>: (Array) Ausgabe der Lizensierungsdaten.
        </span>
    </span>
</span>
</p>

</article>

<p>&nbsp;</p>

</section><!-- section.sub end -->

</section><!-- section.index end -->

<section id="S1090" class="index">
<span class="s-toc">10.9 - Shared Installation</span>

<h3 class="section" id="shared-installation">Shared Installation</h3>

<p class="tagging invisible">
<span class="tag-box invisible">
    <span class="inline-tag">Shared Installation</span>
    <span class="inline-tag">Gemeinsame Nutzung</span>
</span>
<span class="label invisible" id="sharedinstall">sharedinstall</span>
</p>

<p>Serendipity unterstützt die Möglichkeit, die Serendipity-PHP-Dateien nur
einmalig auf einem Webserver hochzuladen und anhand eines zentralen
Verzeichnisses mehrere, vollständig unabhängige Blogs zu betreiben.</p>

<p>Dabei dient das Zentralverzeichnis ähnlich wie bei einer
<em>PEAR</em>-Installation lediglich als Funktionsarchiv. Die Blog-Installationen
greifen auf diese Dateien zurück, um das Framework und notwendige Funktionen zu
laden, verwalten sich aber mittels eigener Datenbanktabellen vollständig selbst.</p>

<p>Diese Methode dient sozusagen als Notbehelf dafür, dass Serendipity über seine
Verwaltungsoberfläche jeweils nur ein einzelnes Blog konfigurieren kann. Zwar
lässt sich über den Umweg von individualisierten Unter-Kategorien des Blogs
(bei Verwendung des Plugins <em>Erweiterte Eigenschaften von Kategorien</em>, siehe
Seite <span class="pageref"><a href="#entryproperties">entryproperties</a></span>)
etwas Ähnliches erreichen, doch bei dieser Methode existiert stets nur eine
physikalische Installation Serendipitys, die nur auf eine einzelne Datenbank zugreift.</p>

<p>Eine Serendipity-Installation benötigt für die Einrichtung nur folgende
individuelle Dateien und Verzeichnisse:</p>

<ul class="realList">
    <li>Datei <code>serendipity_config_local.inc.php</code> mit den Zugangsdaten zur Datenbank,</li>
    <li>Datei <code>.htaccess</code> mit der Einrichtung der Verzeichnisnamen,</li>
    <li>Verzeichnis <code>archives</code> und <code>templates_c</code> zum Schreiben von Temporärdateien,</li>
    <li>Verzeichnis <code>uploads</code> zum Speichern von Medien.</li>
</ul>

<p>Alle weiteren Dateien und Verzeichnisse können aus dem zentralen
Verzeichnis eingebunden werden.
Dies hat den großen Vorteil, dass Sie die Serendipity-Dateien zentral warten
können. Bei einem Update müssen Sie nur an einer Stelle neue Dateien hochladen
und aktualisieren damit automatisch alle weiteren Blogs.</p>

<section id="U1091" class="sub">
<span class="u-toc">10.9.1 - Beispiel</span>

<h3 class="subsection" id="beispiel">Beispiel</h3>

<p>Am einfachsten lässt sich die Einrichtung mehrerer Blogs auf Basis der
<em>Shared Installation</em> mit einem Beispiel verdeutlichen.</p>

<p>Unser Ziel soll sein, drei Blogs einzurichten. Zwei dieser Blogs sollen auf
einer Domain laufen und über <code>http://blogs.bikeshare.de/ebike/</code> und
<code>http://blogs.bikeshare.de/mbike/</code> aufgerufen werden. Das dritte Blog
befindet sich unter <code>http://www.percanat-blog.de/</code>.</p>

<p>Jede Domain besitzt einen sogenannten <code>Document Root</code>. In diesem
Stammverzeichnis befinden sich die Dateien der jeweiligen Domain. In unserem
Beispiel haben wir FTP-Zugriff auf folgende Verzeichnisse:</p>

<p class="desc">
    <code class="item">/home/www/bikeshare.de/htdocs/</code> für Blog 1 und 2
    <code class="item">/home/www/percanat-blog.de/htdocs/</code> für Blog 3
</p>

<p>
<span class="tag-box invisible">
    <span class="inline-tag">Deployment</span>
</span>
In diese Verzeichnisse kopieren wir später das Grundgerüst von Serendipity,
die sogenannten <em>Deployments</em>.</p>

<article id="XU10911" class="subsub">

<header>
    <h4 class="subarticle" id="1-einrichtung-des-core">1. Einrichtung des Core</h4>
</header>

<p>Der erste Schritt ist die Einrichtung des
Serendipity-Zentralverzeichnisses, des sogenannten <em>Core</em>. Am sinnvollsten
ist es, dieses Verzeichnis in einem zentralen Server-Verzeichnis, ähnlich wie
<em>PEAR</em>, einzurichten. Oft haben Sie auf einem gehosteten Server aber keinen
Zugriff auf ein Verzeichnis wie <code>/usr/local/lib/php</code>, daher können Sie das
Server-Verzeichnis auch anderweitig einrichten.</p>

<p>Wichtig ist lediglich, dass alle <em>Deployments</em> später Lesezugriffsrechte zu
diesem Ordner besitzen. Wenn Ihr Server also den Zugriff auf außerhalb liegende
Verzeichnisse mittels <code>open_basedir</code>-PHP-Anweisungen oder Ähnlichem
beschränkt, ist die Methode der <em>Shared Installation</em> für Sie nicht anwendbar.</p>

<p>In unserem Beispiel wollen wir einen Mittelweg gehen. Wir ernennen das
Verzeichnis <code>/home/www/bikeshare.de/htdocs/</code> als Ziel unseres
<em>Core</em>, da wir dort sowieso Unterverzeichnisse für zwei der drei Blogs
anlegen werden.</p>

<p>Wir entpacken also nun das übliche Serendipity-Installationsverzeichnis unter
<code>/home/www/bikeshare.de/htdocs/Serendipity</code>. Sobald Sie die Dateien
hochgeladen haben, müssen Sie keine weitere Installation vornehmen. Nur
<em>Deployments</em> müssen installiert werden - der <em>Core</em> selbst enthält
keine Zugangsdaten zu einer Datenbank oder Weiteres.</p>

</article>

<article id="XU10912" class="subsub">

<header>
    <h4 class="subarticle" id="2-einrichtung-der-deployments">2. Einrichtung der Deployments</h4>
</header>

<p>Nun müssen wir die <em>Deployments</em> einrichten. Serendipity verfügt über
eine kleine Sammlung an Basisdateien, die wir benötigen.</p>

<p>Dazu erstellen wir vorerst ein leeres Blog-Verzeichnis in jedem der Zielverzeichnisse:</p>

<pre><code class="txt">
    /home/www/bikeshare.de/htdocs/ebike/<br>
    /home/www/bikeshare.de/htdocs/mbike/<br>
    /home/www/percanat-blog/htdocs/
</code></pre>

<p>In jedes dieser drei leeren Verzeichnisse kopieren wir nun den vollständigen Inhalt des Core-Verzeichnisses
<code>/home/www/bikeshare.de/htdocs/Serendipity/deployment</code>. Danach sollten Sie
in jedem der drei Verzeichnisse eine Liste wie folgende besitzen:</p>

<pre><code class="txt">
    /home/www/bikeshare.de/htdocs/ebike/comment.php<br>
    /home/www/bikeshare.de/htdocs/ebike/exit.php<br>
    /home/www/bikeshare.de/htdocs/ebike/index.php<br>
    /home/www/bikeshare.de/htdocs/ebike/rss.php<br>
    /home/www/bikeshare.de/htdocs/ebike/serendipity.css.php<br>
    /home/www/bikeshare.de/htdocs/ebike/serendipity_admin.php<br>
    /home/www/bikeshare.de/htdocs/ebike/serendipity_admin_image_selector.php<br>
    /home/www/bikeshare.de/htdocs/ebike/serendipity_config.inc.php<br>
    /home/www/bikeshare.de/htdocs/ebike/serendipity_xmlrpc.php<br>
    /home/www/bikeshare.de/htdocs/ebike/wfwcomment.php<br>
</code></pre>

<p>Die Bedeutung der einzelnen Dateien ist auf Seite <span class="pageref"><a href="#s9yfiles">s9yfiles</a></span> ausführlich
beschrieben. Wenn Sie sich diese Dateien einmal in einem Editor ansehen, werden Sie
feststellen, dass die Dateien lediglich inhaltsleere Verweise sind, die die
eigentlichen Serendipity-Core-Dateien einbinden:</p>

<pre class="artlaset"><code class="php">
&lt;?php<br>
# Copyright (c) 2003-2005, Jannis Hermanns (on behalf the Serendipity<br>
# Developer Team)<br>
# All rights reserved. See LICENSE file for licensing details<br>
# Serendipity is provided in managed mode here<br>
<br>
require_once 's9y/index.php';<br>
/* vim: set sts=4 ts=4 expandtab : */<br>
?&gt;
</code></pre>

</article>

<article id="XU10913" class="subsub">

<header>
    <h4 class="subarticle" id="3-für-einbindung-des-core-sorgen">3. Für Einbindung des Core sorgen</h4>
</header>

<p>Wie man anhand des Code-Grundgerüsts sehen kann, gehen die standardmäßig
gelieferten <em>Deployments</em> davon aus, dass Sie den Serendipity-Core in einem
Verzeichnis namens <code>s9y</code> abgelegt haben. Wenn in einem PHP-<code>include/require</code>-Befehl
kein voller Verzeichnisfad zu einer Datei angegeben
wird, bezieht PHP diesen Pfad automatisch anhand der Konfigurationseinstellung
<code>include_path</code>. Meist enthalten Web-Server für diesen Wert lediglich das
Verzeichnis <code>/usr/local/lib/php</code>, wo auch <em>PEAR</em> abgelegt wird.</p>

<p>Wenn wir auf unserem Server Zugriff zu einem im <code>include_path</code> enthaltenen
Verzeichnis hätten und dort Serendipity in ein <code>s9y</code>-Unterverzeichnis
legen würden, wäre die Einbindung des Core in unseren Deployments problemlos
möglich.</p>

<p>In unserem konstruierten Beispiel fehlt uns der Zugriff auf ein derartiges
Verzeichnis, daher müssen wir die Dateien der <em>Deployments</em> leicht
abändern. Da wir Serendipity in den Pfad
<code>/home/www/bikeshare.de/htdocs/Serendipity/</code> kopiert haben, müssen wir nun
diesen Pfad in allen PHP-Scripts des obigen Verzeichnisses eintragen.</p>

<p>In allen Dateien der <em>Deployments</em> ändern Sie daher die Zeilen wie</p>

<pre><code class="php">
    require_once 's9y/index.php';
</code></pre>

<p>in</p>

<pre><code class="php">
    require_once '/home/www/bikeshare.de/htdocs/Serendipity/index.php';
</code></pre>

<p>ab. Wenn Sie die Möglichkeit haben, wäre eine Alternative zu diesem Schritt
selbstverständlich einfach das korrekte Setzen des PHP-<code>include_path</code> auf
dieses Verzeichnis. Achten Sie in diesem Fall aber darauf, dass Ihr zentrales
Verzeichnis dann nicht <code>Serendipity</code> lauten darf, sondern wie durch die
Dateien des Deployments festgelegt <code>s9y</code>.</p>

</article>

<article id="XU10914" class="subsub">

<header>
    <h4 class="subarticle" id="4-weitere-verzeichnisse-anlegen">4. Weitere Verzeichnisse anlegen</h4>
</header>

<p>Jedes Verzeichnis mit den <em>Deployments</em> benötigt nun noch einige
Kleinigkeiten.</p>

<p>Zum einen müssen mindestens die drei (leeren) Verzeichnisse <code>upload</code>,
<code>templates_c</code> und <code>archives</code> existieren und Schreibrechte für PHP (zB.
0777) besitzen.
Für eine fehlerfreie Installation muss das jeweilige Stammverzeichnis ebenfalls
Schreibrechte besitzen, da andernfalls die beiden Dateien <code>.htaccess</code> und
<code>serendipity_config_local.inc.php</code> nicht erstellt werden könnten.</p>

<p>Um Plugins zu installieren, kann jedes <em>Deployment</em> standardmäßig auf die Plugins
des <em>Core</em> zurückgreifen. Wenn ein Blog jedoch nur auf bestimmte Plugins
zugreifen können soll, ist es empfehlenswert, das Verzeichnis
<code>/home/www/bikeshare.de/htdocs/Serendipity/plugins</code> in das Verzeichnis
des jeweiligen <em>Deployments</em> zu übernehmen. Um Redundanz zu vermeiden, wäre
es am besten, dieses Verzeichnis symbolisch zu verlinken. Wenn Ihr
Server/Provider dies nicht unterstützt, müssen Sie das komplette
<code>plugins</code>-Verzeichnis einfach kopieren.</p>

<p>Andererseits geben Sie dem Deployment einfach ein leeres und beschreibbares
<code>plugins</code> Verzeichnis, analog zu den drei bereits genannten, damit
dort über Spartacus remote installierte Plugin-Programme hinein installiert werden
können. Die Kern Plugins liegen im Kern <code>styx</code> Verzeichnis, während die
"auswärtig" geholten Plugins eines jeden Deployments im eigenen Deployment Ordner liegen.</p>

<p>Dasselbe gilt für das Verzeichnis <code>templates</code>. Dieses müssen Sie auch
entweder symbolisch vom <em>Core</em>-Verzeichnis in das jeweilige
<em>Deployment</em> verknüpfen oder kopieren. Zu beachten ist die Abwägung zwischen
Wartung und Nutzung. Die Verknüpfung über einen symbolischen Links spart zwar einiges
an Redundanz und Folgearbeiten bei einem Gesamtupgrade, dafür nimmt es den Userblogs
die Möglichkeit eines selbsterstellten bzw. veränderten Themes, also ihre Individualisierung.</p>

<p>Unter Linux sind symbolische Links (Symlink) über die "Konsole / Terminal" ja etwas quasi Alltägliches
und werden häufig genutzt ("Kommando &lt;echte Datei&gt; &lt;Symlink Datei&gt;").
<pre><code class="bash">
ln -s /home/www/bikeshare.de/htdocs/Serendipity/templates /home/www/bikeshare.de/htdocs/ebike/templates
</code></pre>
<p>

<p>Windows ist hier ebenso wählerisch und erlaubt dies nur unter erweiterten Berechtigungen
mit der Windows Eingabeaufforderung und dem Windows eigenen "mklink" Tool. Ihr Serendipity
Kern bzw. Bezugs Verzeichnis liegt also beispielsweise in
<code>C:\xampp\htdocs\bikeshare\styx</code>, und so muss der symbolische Verzeichnis Link
folgendermaßen:
<pre><code class="bash">
mklink /D "C:\xampp\htdocs\bikeshare\ebike\templates" "C:\xampp\htdocs\bikeshare\styx\templates"
</code></pre>
erstellt werden.</p>

<p>Eine weitere (notwendig symbolische) Link Verbiegung wäre zum Beispiel:
<pre><code class="bash">
mklink /D "C:\xampp\htdocs\bikeshare\ebike\docs" "C:\xampp\htdocs\bikeshare\styx\docs"
</code></pre>
damit Sie im Deployment unter Wartung auf das ChangeLog File von Serendipity Styx zugreifen können.
</p>

<p>Dito für eventuelle weitere, "angemeckerte" Zugriffsbeschränkungen die außerhalb der bereits
definierten Ordnerpfade für Ihr Deployment liegen.</p>

</article>

<article id="XU10915" class="subsub">

<header>
    <h4 class="subarticle" id="5-installation-der-deployments-ausführen">5. Installation der Deployments ausführen</h4>
</header>

<p>Nun sind alle Deployments entsprechend vorbereitet und können installiert
werden. Rufen Sie dazu die URL wie
<code>http://blogs.bikeshare.de/ebike/serendipity_admin.php</code> auf und folgen
Sie dem Serendipity-Installationsprozess. Dabei wird eine eigenständige
Konfigurationsdatei im <em>Deployment</em>-Verzeichnis und eine
eigenständige Datenbank erstellt. Falls Sie alle Deployments in eine einzelne
Datenbank installieren, sollten Sie unbedingt die <em>Fortgeschrittene Installation</em>
wählen und unterschiedliche Tabellenpräfixe nutzen.</p>

<p>Wenn Sie zusätzliche Demo-Inhalte in ein Deployment einstellen wollen, können
Sie eine Datei <code>sql/preload.sql</code> mit entsprechenden SQL-Anweisungen füllen.
Wenn Ihre Deployments über die Standardsettings von Serendipity hinaus bestimmte
Plugins vorinstallieren sollen, können Sie eine Datei <code>plugins/preload.txt</code>
mit den Namen der Plugin-Klassen (zB. <code>serendipity_event_autoupdate</code>) füllen.
Trennen Sie mehrere Plugins mit einem Zeilenumbruch voneinander. Nach jedem
Plugin müssen Sie die Platzierung des Plugins eintragen (<code>left</code>, <code>right</code>
oder <code>event</code>):</p>

<pre class="artlaset"><code class="txt">
serendipity_event_autoupdate:event<br>
serendipity_plugin_history:right
...
</code></pre>

<p>Dabei ist zu beachten, dass auf diesem Weg keine (Spartacus remote) Plugins geholt
werden können, so dass es zwingend erforderlich ist, dass diese Plugins (wie hier für
das autoupdate Plugin als Beispiel) bereits lokal im Kern Plugin-Verzeichnis vorliegen.</p>

</article>

<article id="XU10916" class="subsub">

<header>
    <h4 class="subarticle" id="6-betrieb-der-deployments">6. Betrieb der Deployments</h4>
</header>

<p>Alle Deployments sind nun aufgrund ihrer eigenen Datenbanktabellen und
Konfigurationsdateien unabhängig voneinander. Über die jeweilige
<code>serendipity_admin.php</code>-URL können diese Deployments verwaltet werden.</p>

<p>Übrigens können Sie mehrere bestehende <em>normale</em> Serendipity-Blogs auf
einem Server mit geringfügigem Aufwand auch in <em>Shared Installations</em> umwandeln.</p>

<p>Dazu müssen Sie wie oben beschrieben ein Zentralverzeichnis einrichten.
Ersetzen Sie die bestehenden PHP-Dateien der bereits bestehenden
Blog-Installation durch die Dateien eines <em>Deployments</em> und passen Sie wie
beschrieben die Pfade in den <code>.php</code>-Dateien an. Daraufhin können Sie in den
bestehenden Blogs die Verzeichnisse wie <code>include</code>, <code>deployment</code>,
<code>docs</code>, <code>bundled-libs</code>, <code>lang</code> und <code>sql</code> löschen; diese werden
in Zukunft aus dem <em>Core-Verzeichnis</em> bezogen. Die Verzeichnisse
<code>templates</code> und <code>plugins</code> sollten Sie beibehalten, ebenso wie die
Konfigurationsdateien <code>serendipity_config_local.inc.php</code> und <code>.htaccess</code>.
</p>

</article>

<article id="XU10917" class="subsub">

<header>
    <h4 class="subarticle" id="7-update-der-deployments">7. Update der Deployments</h4>
</header>

<p>Alle Deployments können sich selbst mittels des <code>serendipity_event_autoupdate</code> Plugins
in fast vollständig eigenständige Blog Installationen umwandeln. Dazu muss nur der Upgrade Prozeß aus den
jeweiligen Shared Installationen gestartet werden, und jedes dieser ehemals beschränkten Deployments
wird eine vollständige Kopie der neuen Serendipity Version erhalten. Als Verweise auf die Kern-Installation
und ihren Pfad verbleiben aber die zuvor als Symlink erstellten symbolischen Verzeichnisse bestehen.
Das Upgrade der einzelnen Deployment Installation wird dann die potentiell neueren (zB. Template) Vorlagen
des Upgrades statt in den Deployment Ordner in das Kern-Verzeichnis hinein kopieren - das damit eine
Art Teil-Update erhält. Wenn sich nun in diesem Teil etwas geändert hat und Bezug auf eine andere
Kernkomponente (zB. eine neue Sprachkonstante) nimmt, kann eine andere, noch nicht upgedatete
Deployment-Installation zu Fehlern führen, da sie dann unter Umständen die neuen Template Dateien
bereits nutzt, aber selbst (bzw. ihr Shared-Kerns-System) noch nicht über das eigentliche Kern Update
(bzw. die neue Sprachkonstante) verfügt.</p>

<p>Sie sehen also, es ist verzwickt. Entweder muss ein einzelnes Deployment-Upgrade verhindert werden,
oder man geht damit das enthaltene Risiko einer potentiellen Fehlermeldung oder gar Unerreichbarkeit
eines bestimmten Teils für die anderen Deployments ein, bis Sie selbst als Betreiber darauf hingewiesen
werden bzw. die Möglichkeit haben zu reagieren. Für eine Verhinderung im Vorwege gibt es leider noch kein
schlüssiges und allgemeines Konzept. Oder es muss kommuniziert werden auf ein Deployment Upgrade für die
einzelnen Blogs zu verzichten. Allerdings kann dies durchaus geschehen, wenn im Vorwege aus den Symlink
Ordnern eigenständige Ordner gemacht wurden. (Achten Sie dabei aber darauf nicht ausversehen den Ziel
Ordner der Shared Installation zu löschen!)</p>

<p>Als Anbieter von s9y-Blogs für Ihre Benutzer sollten Sie die Blogs der Benutzer daher selbst migrieren.
Dazu ist es am besten, wenn Sie immer ein "Ersatz"-Test-Blog genau wie die Blogs Ihrer Benutzer installiert
und Sie sich und alle weiteren abhängigen Blogs hinter einen sicheren Vorhang begeben haben
(<code>.htaccess</code> auth login lock).</p>

<p>Öffnen Sie diese Installation und sehen Sie sich den Upgrader an. Führen Sie ihn aus und überprüfen
Sie, ob er ohne Fehler abgeschlossen wurde und ob eventuell spätere Nachfolgearbeiten anstehen.
Wenn dies der Fall ist, sollten Sie eine Liste ALLER von s9y verwalteten Blogs etwa wie folgt durchlaufen:</p>

<pre><code>&lt;?php<br>
$sql = mysqli_query($mysqli, 'SELECT url FROM my_managed_s9y_blogs');<br>
while ($row = mysqli_fetch_array($sql, MYSQLI_ASSOC)) {<br>
&nbsp;&nbsp;&nbsp;&nbsp;$fp = fopen($row['url'] . 'serendipity_admin.php?serendipity[action]=upgrade');</br>
}<br>
?&gt;</code></pre>

<p>Über die jeweilige <code>serendipity_admin.php</code>-URL können diese Deployments verwaltet werden.
Im Grunde genommen müssen Sie dieses Skript also nur für jeden von s9y betriebenen Blog aufrufen, den
Sie hosten und den Upgrade Prozeß für diesen abschließen.</p>

</article>

</section><!-- section.sub end -->

<section id="U1092" class="sub">
<span class="u-toc">10.9.2 - Einsatzgebiete</span>

<h3 class="subsection" id="einsatzgebiete">Einsatzgebiete</h3>

<p><em>Shared Installations</em> machen besonders dann Sinn, wenn sie
automatisiert angelegt werden. Der obige Vorgang ist zwar nicht übermäßig
komplex, aber bereits umfangreich genug, um ein Script für diese Arbeit
einzusetzen.</p>

<p>Provider setzen auf diese Art der Shared Installation, um freie Serendipity-Blogs für Interessierte zu
erstellen. So kann Serendipity dann tatsächlich wie ein <code>blogger.com</code>-Ersatz
verwendet werden.</p>

<p>Leider sind die Rahmenbedingungen der Server zu unterschiedlich, um den Vorgang
einer Shared Installation so zu abstrahieren, dass er sich überall
einsetzen lässt. Zugriffsrechte, <code>open_basedir</code>- und
<code>include_path</code>-Konfigurationen sind zu unterschiedlich und meist so
individuell, dass ein vollständig automatisiertes Script mehr falsch als richtig
machen könnte.</p>

<p>Häufig macht es nämlich direkt Sinn, eine Nutzerverwaltung anzubinden. Damit
könnten aggregierte Blog-Übersichtsseiten erzeugt werden, oder ein zentrales
SQL-Datenbank-Interface, um SQL-Abfragen für alle <em>Shared Blogs</em> auszuführen.</p>

<p>Sollten Sie also selbst für das Upgrade der Hauptinstallation sorgen, müssen Sie (gegebenenfalls)
auch ein Upgrade der Shared Installationen vornehmen.</p>

<p>Der Unterschied zwischen dem Kopieren oder Verknüpfen des Vorlagen- oder Plugin-Ordners
ist ja eben auch ein Wartungsproblem. Jedes Mal, wenn Sie die Kernbibliotheken von Serendipity
aktualisieren, kann es vorkommen, dass sich der Code der verteilten Vorlagen oder Plugins
geändert haben könnte. Wenn Sie diese Verzeichnisse kopiert haben, müssen Sie die neuen
Dateien in jedes der Benutzerverzeichnisse kopieren. Wenn Sie die Verzeichnisse aber nur verknüpft
haben, ist es für jeden Benutzer sofort gleich. Es wird empfohlen, die Verzeichnisse zu
verknüpfen, aber das hängt von Ihrem Betriebssystem und Ihrer Berechtigungsstruktur ab.
Natürlich kann ein "Shared-Library-Benutzer" auf diese Weise nicht seine eigenen Vorlagen
in dem verknüpften Verzeichnis speichern, so dass dies einen Verlust an Individualisierung
bedeutet.</p>

<p>Für den späteren Verwaltungszugriff empfiehlt es sich, eine Liste aller URLs für die von
Serendipity verwalteten Blogs zu führen. Wir schlagen vor, eine SQL-Tabelle wie 'my_managed_s9y_blogs' zu erstellen.</p>

<pre><code>sql&gt; CREATE TABLE my_managed_s9y_blogs (url varchar(255) default null);<br>
sql&gt; INSERT INTO my_managed_s9y_blogs (url) VALUES ('http://garvin.s9yblogs.org/');<br>
sql&gt; INSERT INTO my_managed_s9y_blogs (url) VALUES ('http://j.s9yblogs.org/');<br>
sql&gt; INSERT INTO my_managed_s9y_blogs (url) VALUES ('http://tom.s9yblogs.org/');</code></pre>

<p>Jetzt sind Sie fast startklar. Wir gehen davon aus, dass jeder Benutzer Zugang zu einer
separaten SQL-Datenbank hat, in der später seine Blog-Daten gespeichert werden. Sie sehen bereits,
dass es nicht schwer sein sollte, die oben genannten Schritte in eine angepasste script.sh-Datei
für Ihre Einrichtung zu übertragen.</p>

<p>Öffnen Sie Ihre <code>http://garvin.s9yblogs.org/</code> Datei. Sie sollten nun den
Installationsbildschirm von s9y sehen. Geben Sie den Datenbank- und Benutzernamen und das
entsprechende Passwort ein. Alles andere können Sie dem Benutzer überlassen.</p>

<p>Jetzt kann jeder Benutzer sein Blog so verwalten, als wäre es eine eigenständige Installation.</p>

<p>Natürlich sollten Sie aus Sicherheitsgründen die open_basedir-Direktive auf das Dokumentenstammverzeichnis
des Benutzers setzen, damit dieser nicht auf andere Installationen auf Ihrem Host zugreifen kann.</p>

</section><!-- section.sub end -->

</section><!-- section.index end -->

<section id="S10100" class="index">
<span class="s-toc">10.10 - Embedding/Eingebettete Nutzung</span>

<h3 class="section" id="embedding-eingebettete-nutzung">Embedding/Eingebettete Nutzung</h3>

<p class="tagging invisible">
<span class="tag-box invisible">
    <span class="inline-tag">Embedding</span>
    <span class="inline-tag">Eingebettete Nutzung</span>
</span>
<span class="label invisible" id="embedding">embedding</span>
</p>

<p>Häufig wünschen sich Blog-Betreiber, ihr Blog in eine bereits bestehende
Webseite einzubinden.</p>

<p>Diese Anforderung klingt eigentlich recht simpel, ist aber technisch relativ
komplex. Das Grundproblem dabei ist, dass Serendipity als eigenständige
Anwendung agiert. Es sendet vollständige HTML-Seiten, HTTP-Kopfzeilen und
benötigt URL-Parameter, um zu bestimmen, welche Inhalte angezeigt werden sollen.</p>

<p>Die einfachste Form der Einbindung von Serendipity in eine bestehende Seite wäre
die Erstellung eines <em>framesets</em> oder <em>iframes</em> innerhalb des
HTML-Codes Ihrer Seite. So wird Serendipity für den Besucher im Rahmen Ihrer
Seite eingebunden, ist aber technisch weiterhin vollständig losgelöst von Ihrer
Webseite.</p>

<p>Dies ist natürlich nur die halbe Miete und bringt zahlreiche Probleme mit sich:
Lesezeichen können bei Frames nicht gut verarbeitet werden, Suchmaschinen und sehbehinderte
Menschen können weniger gut darauf zugreifen, und auch das Design kann durch den
Einsatz von Frames durcheinander geraten.</p>

<section id="U10101" class="sub">
<span class="u-toc">10.10.1 - Die Wrapper-Methode</span>

<h3 class="subsection" id="die-wrapper-methode">Die Wrapper-Methode</h3>

<p class="tagging invisible">
<span class="tag-box invisible">
    <span class="inline-tag">Wrapper</span>
</span>
</p>

<p>Bevor Serendipity mit Smarty-Templates umgehen konnte, wurde der <em>Embed
Mode</em> aus der Taufe gehoben. Diesen Modus können Sie über die Konfiguration
von Serendipity aktivieren (Abschnitt <span class="mbold">Konfiguration
<span class="icon arrow-right">→</span> Design und Optionen
<span class="icon arrow-right">→</span> Eingebettete Nutzung von
Serendipity aktivieren</span>). Er sorgt dafür, dass die Seiten von
Serendipity selbst keine HTML-Kopf- und Fußzeilen ausgeben und somit einfacher in
eine fremde Seite eingebunden werden können. Der Serendipity-Inhalt dient in so einem Fall also
lediglich einem HTML-Konstrukt, das auf einer vollständigen Seite eingebunden
werden muss. Wenn man ein Serendipity-Blog mit aktiviertem <em>Embed Mode</em>
direkt aufruft, sieht man eine unformatierte HTML-Seite.</p>

<p>Serendipity sollte im <em>Embed Mode</em> daher nicht mehr direkt aufgerufen
werden, sondern über den Umweg eines <em>Wrappers</em>. Ein Wrapper ist eine
Art Container, der Serendipity und Ihre Webseite verkoppelt. Dafür bietet
Serendipity die Option <span class="mbold">Konfiguration
<span class="icon arrow-right">→</span> Pfade <span class="icon arrow-right">→</span>
Index-Datei</span> an, mit der Sie festlegen, welche Datei von Serendipity zur
Darstellung des Blogs angesprochen wird.</p>

<p>Wenn Sie einen Wrapper einsetzen wollen, müssen Sie an dieser Stelle einen
alternativen Dateinamen vergeben. Hierfür empfiehlt sich zB. ein Dateiname wie
<code>wrapper.php</code>. Diese Datei muss von Ihnen im folgenden Schritt erstellt
werden, und es ist sehr wichtig, dass diese Datei im selben Verzeichnis wie
Serendipity liegt. Falls Sie mittels einer Angabe wie <code>../wrapper.php</code>
tricksen , wird dies die Permalink-Behandlung von Serendipity
durcheinanderbringen, und viele Seiten des Frontends werden nicht mehr
funktionieren.</p>

<p>Die <code>wrapper.php</code>-Datei muss nun dafür sorgen, den Serendipity-Inhalt und
den Inhalt Ihrer Webseite zu <em>verheiraten</em>. Ein derartiges Script kann wie
folgt aussehen:</p>

<pre><code class="php">
    &lt;?php<br>
    ob_start();<br>
    include 'index.php';<br>
    $blog = ob_get_contents();<br>
    ob_end_clean();<br>
    <br>
    include '../homepage.php';<br>
    ?&gt;
</code></pre>

<p>Dieses Script sorgt dafür, alle Serendipity-Ausgaben in die Variable
<code>$blog</code> zu speichern. Danach bindet es eine Datei wie <code>../homepage.php</code>
ein, die den üblichen Code Ihrer Webseite beinhaltet. Ob dies ein PHP-Script
oder einfacher HTML-Code ist, ist eigentlich egal. Sie müssen lediglich an der
Stelle Ihrer Homepage, wo Sie die Inhalte des Blogs sehen wollen,
die Variable <code>$blog</code> ausgeben.</p>

<p>Wie Sie sehen, bindet das Wrapper-Script Dateien aus einem Unterverzeichnis
(<code>../</code>) ein. Sie sollten bei der Erstellung Ihrer Homepage also möglichst
darauf achten, dass alle Ihre Links relativ zum Stammverzeichnis der Homepage
angelegt sind, und nicht relativ zum aktuellen Verzeichnis - denn sonst könnten
durch den Einsatz des Wrappers die Links Ihrer <code>homepage.php</code> nicht mehr zum
richtigen Ziel zeigen.</p>

<p>Grundsätzlich können Sie anstelle von <code>homepage.php</code> auch jedes andere
PHP-Framework einbinden, solange Sie die <code>$blog</code>-Variable entsprechend
ausgeben. Theoretisch können Sie auch zuerst Ihr PHP-Framework einbinden und
erst danach wieder ins Serendipity-Verzeichnis wechseln, die Variable
<code>$blog</code> zusammenstellen lassen und später ausgeben. Dies hängt allein von
dem auf Ihrer Seite benötigten Workflow ab.</p>

<p>Wichtig ist, dass Ihre einbindende Webseite selbständig alle
HTML-Kopfzeilen ausgibt und auch alle eventuell benötigten Stylesheets von
Serendipity einbindet.</p>

</section><!-- section.sub end -->

<section id="U10102" class="sub">
<span class="u-toc">10.10.2 - Die Smarty-Methode</span>

<h3 class="subsection" id="die-smarty-methode">Die Smarty-Methode</h3>

<p>Seit Serendipity das <em>Smarty</em>-Templating unterstützt, gehört der
umständliche Umweg über eine Wrapper-Datei eher zum alten Eisen.</p>

<p>Mittels der <code>index.tpl</code>-Template-Datei Ihres Blog-Templates können Sie
bereits über die Smarty-Funktion <code>include_php</code> oder <code>include_file</code>
anderen HTML-Code Ihrer Webseite einbinden. Wenn Sie also bereits eigene
<em>Header/Footer</em>-Dateien haben, können Sie diese ebenfalls ganz einfach im
Smarty-Template einbinden.</p>

<p>So müssen Sie sich nur an einer zentralen Stelle um das HTML-Groblayout kümmern
und nicht extra Ihre bereits bestehenden PHP-Header/Footer mühsam in ein
Serendipity-Template gießen.</p>

<p>Sie können sogar eigene PHP-Klassen und -Funktionen über den Umweg der
Smarty-Funktionen gehen. Dazu können Sie die Datei <code>config.inc.php</code> Ihres
Templates bearbeiten. Sämtlicher dort enthaltener PHP-Code wird vor der Ausgabe
des Templates von Serendipity ausgeführt und kann so auf ein Framework Ihrer
Webseite zugreifen.</p>

<p>Bedingung für die Fremdeinbindung von PHP-Code ist, dass Sie in der Datei
<code>config.inc.php</code> (siehe auch Seite <span class="pageref"><a href="#configinc">configinc</a></span>)
die Zeile <code class="nobreak">$serendipity['smarty']-&gt;security = false;</code> einbinden. Damit wird
die Ausführungssicherheit deaktiviert, und Ihnen stehen alle PHP-Funktionen zur
Verfügung.</p>

</section><!-- section.sub end -->

<section id="U10103" class="sub">
<span class="u-toc">10.10.3 - Das Serendipity-Framework nutzen</span>

<h3 class="subsection" id="das-serendipity-framework-nutzen">Das Serendipity-Framework nutzen</h3>

<p>Die eingangs vorgestellte <em>Wrapper</em>-Lösung basierte darauf, dass
Serendipity als Erstes aufgerufen wird und dann Ihre Webseite einbindet.</p>

<p>Grundsätzlich können Sie Serendipity auch von einem PHP-Framework aus
einbinden. Dazu reicht ein PHP-Code wie dieser:</p>

<pre><code class="php">
    &lt;?php<br>
    // Ihr eigener Framework-Code befindet sich hier<br>
    ...<br>
    <br>
    // Speichern des aktuellen Verzeichnisses<br>
    $current = getcwd();<bxr>
    <br>
    // Zum Serendipity-Verzeichnis wechseln<br>
    chdir('/home/www/example.com/serendipity/');<br>
    <br>
    // Serendipity-Framework einbinden<br>
    include 'serendipity_config.inc.php';<br>
    <br>
    // Serendipity-Smarty-Framework starten<br>
    serendipity_smarty_init();<br>
    <br>
    // Liste der aktuellsten Blog-Artikel holen.<br>
    $entries = serendipity_fetchEntries(null, true, 10);<br>
    <br>
    // Einträge formatieren<br>
    serendipity_printEntries($entries);<br>
    <br>
    // Template-Datei zur Darstellung einlesen<br>
    $tpl = serendipity_getTemplateFile('entries.tpl', 'serendipityPath');<br>
    <br>
    // Template darstellen<br>
    serendipity['smarty']-&gt;display($tpl);<br>
    <br>
    // Zurück zu Ihrem Framework wechseln<br>
    chdir($current);<br>
    <br>
    // hier Ihr etwaiger weiterer Framework-Code<br>
    ...
</bxr></code></pre>

<p>Grundsätzlich können Sie nach Einbindung des Serendipity-Frameworks auf alle
Funktionen zurückgreifen, die in Kapitel <span class="reference">zentralefunktionen</span> ab
Seite <span class="pageref"><a href="#zentralefunktionen">zentralefunktionen</a></span> aufgeführt sind.</p>

</section><!-- section.sub end -->

</section><!-- section.index end -->

<section id="S10110" class="index">
<span class="s-toc">10.11 - Externe Schnittstellen zur Benutzerauthentifikation</span>

<h3 class="section" id="externe-schnittstellen-zur-benutzerauthentifikation">Externe Schnittstellen zur Benutzerauthentifikation</h3>

<p class="tagging invisible">
<span class="tag-box invisible">
    <span class="inline-tag">Schnittstellen</span>
    <span class="inline-tag">Benutzerauthentifikation</span>
</span>
</p>

<p>Das Serendipity Framework ist darauf ausgelegt, auf seine eigenen Datenbanktabellen
zugreifen zu können. Daher ist eine Integration einer fremden Benutzerdatenbank
oder Rechteverwaltung nicht ohne Weiteres möglich.</p>

<p>Häufig kommt der Wunsch auf, dass Sie eine Webseite zB. mit einem Forum und
einem Blog betreiben. Beide Komponenten liefern eine Benutzerverwaltung, und Sie
müssten sich jeweils separat in beiden Anwendungen einloggen, um Zugriff zu
erhalten.</p>

<p>Da die Benutzerdatenbanktabellen in vielen Serendipity-SQL-Abfragen zum Tragen
kommen, kann man diese leider nicht ohne Weiteres kapseln und mit
Fremdanwendungen verkoppeln. Das Gleiche gilt für fremde Forensoftware, die
ebenfalls eine eng verzahnte eigene Benutzerdatenbank abbildet.</p>

<p>An dieser Stelle gibt es daher meist nur eine Lösung: Man muss eine der
Datenbanktabellen als <em>Master</em> deklarieren und alle anderen Datenbanken
mit deren Daten befüllen.</p>

<section id="U10111" class="sub">
<span class="u-toc">10.11.1 - LDAP</span>

<h3 class="subsection" id="ldap">LDAP</h3>

<p class="tagging invisible">
<span class="tag-box invisible">
    <span class="inline-tag">LDAP</span>
</span>
</p>

<p>Als Musterlösung für ein solches Vorgehen bietet Serendipity das Plugin
<em>Externe Benutzer-Authentifizierung (LDAP)</em>
(<code>serendipity_event_externalauth</code>) an. Dieses Plugin demonstriert, wie
eine fremde LDAP-Benutzerdatenbank eingebunden werden kann.</p>

<p><em>LDAP</em> steht für <em>Lightweight Directory Access Protocol</em> und stellt
Mittel einer zentralen Benutzerverwaltung zur Verfügung. Im Gegensatz zu einer
SQL-Datenbank besteht ein solches System aus einer beliebigen Baumstruktur mit
beliebigen Wertekonstellationen. Daher eignet es sich schlecht für die Verbindung
in einem Blog-System, das mit relationalen SQL-Datenbanken arbeitet.</p>

<p>
<span class="tag-box invisible">
    <span class="inline-tag">Proxy-Authentifikation</span>
</span>
Um dieses konzeptionelle Problem zu umgehen, geht das Serendipity-Plugin den
Umweg über einen sogenannten <em>Proxy-Mechanismus</em>. Die zentrale
Serendipity-Benutzerdatenbank greift dabei weiterhin auf ihre eigene, gewohnte
Datenbanktabelle zu, wenn sich ein Benutzer einloggen will.</p>

<p>Nur wenn der Benutzer in dieser Tabelle nicht gefunden wird, stellt das Plugin
eine Verbindung zum <em>LDAP</em>-Benutzerverzeichnis her und sucht dort nach dem
Benutzer. Wird er dort gefunden, werden alle Login-relevanten Daten ausgelesen
und in der Serendipity-Benutzerdatenbank geklont/dupliziert.</p>

<p>Dabei entsteht zwangsläufig Redundanz. Das Plugin versucht diese zumindest in
geringem Rahmen zu halten, gleicht die beiden Datenbanktabellen regelmäßig
miteinander ab und löscht beispielsweise Benutzeraccounts, die im
LDAP-Verzeichnis nicht mehr aufgeführt werden.</p>

<p>Nach einem ähnlichen Schema müssten Sie das Plugin erweitern, um dieselbe Aktion
für eine fremde Beutzerdatenbank durchzuführen. Sie brauchen also einen
regelmäßigen Synchronisierungsvorgang, der die dedizierte <em>Master</em>-Tabelle
mit der <em>Serendipity-Datenbank</em> abgleicht.</p>

<p>Um zum Beispiel eines fremden Forums zurückzukehren, müssten Sie also die
Daten dieser Benutzerdatenbanktabelle regelmäßig mit der von Serendipity
abgleichen. Das Plugin könnte dabei auch automatisch entsprechend geteilte
PHP-Sessiondaten erstellen.</p>

<p>Dies alles erfordert natürlich eine gewisse Kenntnis der Systemarchitektur der
fremden Applikation wie auch der von Serendipity. Daher wird dieser Weg relativ
selten beschritten und eher nur von Dienstleistungsagenturen mit guten
Systemkenntnissen angeboten.</p>

</section><!-- section.sub end -->

<section id="U10112" class="sub">
<span class="u-toc">10.11.2 - OpenID</span>

<h3 class="subsection" id="openid">OpenID</h3>

<p class="tagging invisible">
<span class="tag-box invisible">
    <span class="inline-tag">OpenID</span>
</span>
</p>

<p>Dem Problem der Fremdauthentifikation tritt nicht nur bei Serendipity auf,
sondern bei sehr vielen Web-2.0-Anwendungen. Daher hat sich ein Konsortium
gegründet, das sich mit der <em>OpenID</em>-Initiative [*]
<span class="footnote"><i class="fa fa-info-circle"></i>
<a href="https://openid.net/" target="_blank" rel="noopener">https://openid.net/</a></span><!-- footnote -->
das Ziel gesetzt hat, eine einheitliche und
dezentrale Benutzerauthentifizierung zur Verfügung zu stellen.</p>

<p>Auch für Serendipity gibt es hierzu bereits ein erstes Plugin, das sich jedoch
im täglichen Einsatz noch beweisen muss. Da sich OpenID aufgrund seiner
Komplexität generell eher schleppend fortentwickelt, ist jegliche Mitarbeit bei
diesem Thema im Serendipity-Forum sehr willkommen.</p>

<p>OpenID kümmert sich derzeit in erster Linie nur um das Problem, Besucher
für ihre Kommentare zu authentifizieren. In seiner jetzigen Form
unterstützt OpenID kein komplexes Rechtemanagement und kann daher die
Verwaltung von Benutzern und Gruppen in Serendipity nicht ersetzen bzw.
darauf aufbauen. Für diese Verwaltung werden also nach wie vor zentrale
Serendipity-Tabellen benötigt.</p>

<p>Bis auch diese Tabellen durch einen offenen Standard ersetzt werden können, wird
noch viel Wasser den Rhein hinunterlaufen - dennoch ist auch hier die Mithilfe
bei der Entwicklung nötiger Standards in unser aller Interesse.</p>

</section><!-- section.sub end -->

<section id="U10113" class="sub">
<span class="u-toc">10.11.3 - MySQL VIEWs</span>

<h3 class="subsection" id="mysql-views">MySQL VIEWs</h3>

<p class="tagging invisible">
<span class="tag-box invisible">
    <span class="inline-tag">MySQL!Views</span>
</span>
</p>

<p>Eine sehr komfortable Lösung zum automatisierten Abgleich einer
<em>Master</em>-Tabelle mit anderen Fremdtabellen ist der Einsatz von
<em>Views</em>, die für das <em>MySQL</em>-Datenbanksystem zur Verfügung stehen.</p>

<p><em>Views</em> (<em>Sichten</em>) stellen ein Mittel von MySQL (ab Version 5.1) dar,
die Ergebnisse einer SQL-SELECT-Abfrage als virtuelle Tabelle zu erstellen. So
kann man eine fremde Benutzerdatenbanktabelle so <em>umbiegen</em>, dass sie
in Wirklichkeit auf eine andere Tabelle zeigt.</p>

<p>Für die folgende Beschreibung gehen wir davon aus, dass Sie mit SQL-Code umgehen
und eine SQL-Oberfläche wie <code>phpMyAdmin</code> bedienen können.</p>

<p>Gehen wir von einem Forensystem aus, das folgende Benutzertabelle verwendet:</p>

<pre><code class="sql">
    CREATE TABLE `forum_users` (<br>
    &nbsp; `user_id` mediumint(8) NOT NULL,<br>
    &nbsp; `user_name` varchar(30),<br>
    &nbsp; `user_password` varchar(30),<br>
    &nbsp; PRIMARY KEY (`user_id`)<br>
    );
</code></pre>

<p>Im Vergleich dazu die bekannte <code>serendipity_authors</code>-Tabelle:</p>

<pre><code class="sql">
    CREATE TABLE `serendipity_authors` (<br>
    &nbsp; `authorid` int(11) NOT NULL auto_increment,<br>
    &nbsp; `realname` varchar(255) NOT NULL<br>
    &nbsp; `username` varchar(20),<br>
    &nbsp; `password` varchar(32),<br>
    &nbsp; `mail_comments` int(1) default '1',<br>
    &nbsp; `mail_trackbacks` int(1) default '1',<br>
    &nbsp; `email` varchar(128) NOT NULL,<br>
    &nbsp; `userlevel` int(4) NOT NULL,<br>
    &nbsp; `right_publish` int(1) default '1',<br>
    &nbsp; PRIMARY KEY (`authorid`)<br>
    );
</code></pre>

<p>Glücklicherweise ist unsere Beispielstruktur hier relativ kompatibel: Das Feld
<code>user_id</code> kann mit <code>authorid</code> verkettet werden, <code>user_name</code> mit
<code>realname</code> und <code>username</code>, und <code>user_password</code> mit <code>password</code>.
Wären die Passwörter in einem unterschiedlichen Format gespeichert, müsste man
sich mit den MySQL-Funktionen MD5() etc. auseinandersetzen, um ein identisches
Format zu erreichen.</p>

<p>Nachdem die Tabellenspalten derart zugeordnet wurden, muss man sich
entscheiden, welche Tabelle den <em>Master</em> darstellt. Wir wählen Serendipity
aus, weil dies über mehr Meta-Daten verfügt und die komplexere
Benutzerverwaltung aufweist. Sie sollten stets die Tabelle als <em>Master</em>
wählen, die die höchste Wichtigkeit in Ihrem Projekt darstellt und die größte
Komplexität aufweist.</p>

<p>Die Serendipity-Datenbanktabelle <code>serendipity_authors</code> bleibt daher
unverändert, und die Tabelle <code>forum_users</code> muss nun durch einen
<em>View</em> virtualisiert werden, damit sie direkt auf die Serendipity-Tabelle
zugreift.</p>

<p>Am Ende der Virtualisierung wird das Löschen der Tabelle <code>forum_users</code>
stehen. Da eine virtuelle Tabelle nicht den Namen einer tatsächlich bestehenden
Tabelle besitzen darf, benennen wir als Erstes diese Tabelle um:</p>

<pre><code class="sql">
    RENAME TABLE `forum_users` TO `tmp_forum_users`;
</code></pre>

<p>Diese Tabelle <code>tmp_forum_users</code> dient uns als Sicherheitsbackup. Nun
können wir eine SQL-Abfrage ausführen, die uns als Basis der Virtualisierung
dient. Ziel dieser Abfrage der <code>serendipity_authors</code>-Tabelle ist es, die
Ergebnisse in dem Format zu erhalten, wie sie in der <code>forum_users</code>-Tabelle
stehen würden, damit die Fremdapplikation so weiterarbeiten kann, wie
sie es gewohnt ist.</p>

<pre><code class="sql">
    SELECT authorid AS user_id,<br>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; username AS user_name,<br>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; password AS user_password<br>
    &nbsp; FROM serendipity_authors
</code></pre>

<p>Mittels der <code>X AS Y</code>-SQL-Syntax können die Spaltennamen der
<em>Master</em>-Tabelle in die Nomenklatur der Zieltabelle umbenannt werden.</p>

<p>Um nun aus dieser SQL-Abfrage eine <em>VIEW</em> zu erstellen, benutzen wir
folgende Abfrage:</p>

<pre><code class="sql">
    CREATE VIEW forum_users<br>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; AS<br>
    &nbsp;&nbsp;&nbsp;&nbsp; SELECT authorid AS user_id,<br>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; username AS user_name,<br>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; password AS user_password<br>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; FROM serendipity_authors
</code></pre>

<p>Nach dieser Abfrage steht Ihnen die virtuelle Tabelle <code>forum_users</code> zur
Verfügung. Dort können Sie auch problemlos weitere <code>SELECTS</code> ausführen (wie
es die Fremdsoftware gewöhnt ist) und auch neue Datensätze einfügen oder
bestehende löschen. Im Hintergrund führt MySQL dann die benötigten Aktionen
durch.</p>

<p>Die <code>SELECT</code>-Abfrage in unserem Beispiel ist bewusst sehr einfach gehalten.
Tatsächlich werden Sie später jedoch sicher komplexere SQL-Statements wie
<em>String Functions</em> oder <em>Control Flow Functions</em> [*]
<span class="footnote"><i class="fa fa-info-circle"></i>
<a href="https://dev.mysql.com/doc/refman/8.0/en/functions.html" target="_blank" rel="noopener">https://dev.mysql.com/doc/refman/8.0/en/functions.html</a></span><!-- footnote -->
<span class="footnote"><i class="fa fa-info-circle"></i>
<a href="https://mariadb.com/kb/en/built-in-functions/" target="_blank" rel="noopener">https://mariadb.com/kb/en/built-in-functions/</a></span><!-- footnote -->
einsetzen. Damit können Sie beispielsweise <em>IF-Weichen</em> in einer Abfrage einführen, um
verschiedene Datentypen und Tabellenspalten miteinander zu verketten.</p>

<p>Zusätzlich wird der Einsatz von <em>Stored Procedures</em> und <em>Triggers</em> für
Sie von Interesse sein. Wenn bestimmte Aktionen von einer Fremdanwendung an
deren Datenbanktabellen ausgeführt werden (Löschen von Gruppen etc.) können Sie
mittels eines <em>Triggers</em> dafür sorgen, dass eine ähnliche Funktion auch auf
die Datenbanktabellen von Serendipity angewendet wird.</p>

</section><!-- section.sub end -->

</section><!-- section.index end -->

<section id="S10120" class="index">
<span class="s-toc">10.12 - Mediathek</span>

<h3 class="section" id="mediathek-2">Mediathek</h3>

<p class="tagging invisible">
<span class="tag-box invisible">
    <span class="inline-tag">Mediathek</span>
    <span class="inline-tag">CMS!Einbindung der Mediathek</span>
</span>
<span class="label invisible" id="mdb-profi">mdb-profi</span>
</p>

<p>Die Serendipity-Mediathek verfügt abseits von den normal über das Backend
zugänglichen Methoden über ein weiteres Feature, das jedoch derzeit nicht von
Plugins oder dem Kernsystem unterstützt wird.</p>

<p>Wenn ein Bild über das Mediathek-Popup in einen Blog-Artikel eingebunden
wird (siehe Seite <span class="pageref"><a href="#mediathek-popup">Mediathek-Popup</a></span>),
sorgt ein JavaScript (aus der Datei <code>serendipity_editor.js</code>, bzw. <code>serendipity_styx.js</code>, Funktion
<code>serendipity_admin_imageselector_done()</code>) dafür, dass die URL dieses
Bildes gemeinsam mit dem entsprechenden HTML-Code in den Beitrag eingebunden wird.</p>

<p>Dies hat den Vorteil, dass beim Auslesen der Datenbank Bildverweise
bereits im Artikel enthalten sind, was eine Migration vereinfacht. Plugins
können zudem leicht eine Bild-URL aus dem Eintragstext entnehmen und zB. wie
das Lightbox-Plugin (siehe Seite <span class="pageref"><a href="#lightbox">lightbox</a></span>) erweitern.</p>

<p>Der Nachteil dabei ist, dass die Bild-URL unveränderbar im
Artikel steht. Wenn Sie Ihr Blog einmal auf einen neuen Server laden, sich
Ihre Verzeichnisstruktur ändert oder Sie ein Bild umbenennen, wird der
HTML-Code auf ein nicht mehr vorhandenes Bild zeigen.</p>

<p>Dies ließe sich nur umgehen, wenn Serendipity anstelle des HTML-Codes nur die ID
des Mediathek-Objekts einbinden und dynamisch bei jedem Seitenaufruf die
korrekte URL zurückliefern würde. Der erste Schritt hierzu ist für Serendipity 1.1
bereits gemacht worden, da hier die ID eines Bildes in einem HTML-Kommentar mit
ausgeliefert wird. Es existieren jedoch noch keine weiteren Plugins, die diesen
Kommentar aufbereiten.</p>

<p><span class="label invisible" id="mdb-by-id">mdb-by-id</span>Dennoch bietet die
Serendipity-Mediathek intern bereits die Möglichkeit, ein Bild anhand einer
ID auszuliefern. Konkret können Sie beispielsweise das Bild mit der ID
<code>42</code> wie folgt darstellen:</p>

<pre><code class="html">
    http://www.example.com/serendipity/serendipity_admin_image_selector.php?serendipity[step]=showItem&amp;serendipity[image]=42
</code></pre>

<p>Dieser Aufruf gibt eine HTML-Seite mit einem Verweis zum Bild und der
Darstellung der Metadaten (Titel, Beschreibung ...) des Bildes zurück.</p>

<p>Diese URL können Sie also (bisher nur manuell) auch in Ihre Blog-Einträge
einbinden. Dies hat sogar drei weitere beträchtliche Vorteile: Zum einen können
beim Aufruf des Bildes Statistiken ausgewertet werden, indem die Verweisquelle
(<em>Referrer</em>) des Bildes gespeichert wird. Diese Verweise werden in der
Darstellung der Eigenschaften eines Objektes mit ausgegeben und dienen Ihnen
als Anhaltspunkt, von wo aus auf Ihr Bild verwiesen wird.</p>

<p>Zum anderen bietet diese Art der Einbindung den Vorteil, dass Zugriffsrechte
ausgewertet werden können. Zugriffsrechte können auf Verzeichnisebene im
Serendipity-Backend vergeben (siehe Seite <span class="pageref"><a href="#mdb-zugriffsrechte">mdb-zugriffsrechte</a></span>)
und entgegen dem direkten Aufruf per URL auch mit dieser Technik ausgewertet werden.
So kann dann ein Besucher ohne Kenntnis der direkten URL Ihr Bild nicht aufrufen.</p>

<p>Drittens können Sie anhand weiterer URL-Variablen bei obigem Aufruf steuern, in
welcher Größe das Bild zurückgegeben werden soll. Dazu binden Sie das Script
direkt als Bildziel in einen HTML-Code wie folgenden ein:</p>

<pre><code class="html">
    &lt;img src='http://www.example.com/serendipity/serendipity_admin_image_selector.php?serendipity[step]=showItem&amp;serendipity[image]=42&amp;serendipity[show]=full&amp;serendipity[resizeWidth]=200' /&gt;
</code></pre>

<p>Dadurch wird das Bild automatisch mit einer Breite von 200 Pixeln skaliert.
Alternativ können Sie mittels <code>serendipity[resizeHeight]</code> auch die Bildhöhe
angeben oder beide Parameter miteinander verbinden. Der URL-Parameter
<code>serendipity[show]</code> kann folgende Werte haben:</p>

<p class="desc">
    <code class="item uri_param">full</code> zeigt das Originalbild an.<br>
    <code class="item uri_param">thumb</code> zeigt das Vorschaubild an.<br>
    <code class="item uri_param">redirect</code> führt eine Browser-Weiterleitung zum Originalbild durch.<br>
    <code class="item uri_param">redirectThumb</code> führt eine Browser-Weiterleitung zum Vorschaubild durch. Ohne Angabe des Wertes wird eine HTML-Seite mit den Bildinformationen angezeigt.
</p>

<p>Diese Art des Aufrufs macht es Serendipity möglich, auch als Bilddatenbank zu
einem fremden Content-Management-System genutzt zu werden.</p>

<p>Dabei muss das CMS die Serendipity-Mediathek lediglich per Popup-Fenster
zB. via JavaScript aufrufen. Die URL für dieses Popup lautet
<code>http://www.example.com/serendipity/serendipity_admin_image_selector.php</code>
und kann zahlreiche URL-Variablen enthalten, die für eine Übergabe wichtig sind:</p>

<p class="desc">
<code class="item uri_param">serendipity[only_path]</code>
<span class="desc-info">kann einen Pfadnamen enthalten, den das Mediathek-Popup auslesen soll.</span>
</p>

<p class="desc">
<code class="item uri_param">serendipity[htmltarget]</code>
<span class="desc-info">enthält die eindeutige ID eines
HTML-Elementes, in den der Rückgabewert des Popups geschrieben werden soll. Wenn
das CMS zB. ein Feld wie <code>&lt;input type="hidden"
name="data[foreign_image]" id="id_foreign_image" value="" /&gt;</code> ausgibt, müssen
Sie der Mediathek die Variable
<code>serendipity[htmltarget]=id_foreign_image</code> übergeben. Andernfalls kann das
JavaScript keinen Rückgabewert an das CMS liefern.</span>
</p>

<p>Wenn ein Wert für die Variable <code>serendipity[filename_only]</code> gesetzt
wird, gibt das Popup-Fenster lediglich einen Dateinamen zurück. Ansonsten
liefert das Popup den vollständigen HTML-Code zur Darstellung eines Bildes.</p>

<p>Weiterhin muss das fremde CMS dafür sorgen, dass die Datei
<code>serendipity_editor.js</code> bzw. <code>serendipity_styx.js</code> via JavaScript eingebunden wird, damit das Popup
auf die öffnende Seite (<code>parent.window.opener...</code>) zugreifen kann. Alle
zurückgelieferten Werte und angesprochenen JavaScript-Funktionen
können Sie nach Belieben über die Template-Dateien <code>admin/media_choose.tpl</code>
an Ihr CMS anpassen. Suchen Sie in dieser Datei nach dem Einsatz der
Funktion <code>serendipity_imageSelector_done()</code>.</p>

<p>Es ist Ihrer Art der Einbindung überlassen, ob Serendipity direkt die URL zu
einem Bild für die Verwendung in Ihrem CMS-Artikel zurückliefert oder nur
eine ID der Datei, die Sie dann später über das CMS
automatisiert an die URL zu der oben beschriebenen Bildausgabe weitergeben.</p>

<p>Zwar greift Serendipity auf eine eigene User-Datenbank zurück [*]
<span class="footnote"><i class="fa fa-info-circle"></i> Diese
könnten Sie theoretisch selbst per MySQL5-Views oder Proxy-Tabellen an die User-Datenbank
des CMS ankoppeln.</span><!-- footnote -->, aber wenn Serendipity auf demselben Server läuft
wie das Content-Management-System, können PHP-Sessions bzw. Cookies zur
automatischen Anmeldung an Serendipity problemlos durchgereicht werden. Notfalls
kann ein fester Login vom CMS auch per URL-Variable an den Aufruf der
Serendipity-Mediathek weitergereicht werden:
<code>serendipity_admin_image_selector.php?http_auth_user=benutzername&amp;http_auth_pw=passwort</code>.</p>

<p>&nbsp;</p>

</section><!-- section.index end -->

<section id="S10130" class="index">
<span class="s-toc">10.13 - Importer</span>

<h3 class="section" id="importer">Importer</h3>

<p class="tagging invisible">
<span class="tag-box invisible">
    <span class="inline-tag">Import</span>
</span>
</p>

<p>Serendipity kann Daten aus zahlreichen Blog-Systemen importieren. Dazu dienen
eigene PHP-Klassen, die in Dateien des Verzeichnisses <code>include/admin/importers</code>
definiert werden.</p>

<p>Die Basisklasse <code>Serendipity_Import</code> wird in der Datei
<code>include/admin/import.inc.php</code> festgelegt. Jede Importerdatei muss eine
eigene Klasse von diesem Objekt ableiten. Der jeweilige Klassenname muss dabei
<code>Serendipity_Import_Name</code> lauten. Der Dateiname der PHP-Datei mit
dieser Klasse kann beliebig gewählt werden, darf aber keine Sonderzeichen
enthalten.</p>

<p>Am Ende der PHP-Datei des jeweiligen Importers muss der Name der Klasse mittels</p>

<pre><code class="php">
    return 'Serendipity_Import_Name';
</code></pre>

<p>zurückgeliefert werden. Wenn Sie einen eigenen Importer für ein neues System
erstellen wollen, ist es am einfachsten, als Vorlage eine bestehende
Import-Datei heranzuziehen. Die Datei
<code>include/admin/importers/textpattern.inc.php</code> bietet sich dafür an, da sie
am wenigsten unnötige Zusatzabfragen beinhaltet.</p>

<p>Jede Importer-Klasse besitzt drei Klassenvariablen: <code>$this-&gt;info</code> enthält
ein Array mit Informationen zum Importer. Der Array-Schlüssel <code>software</code>
enthält als Wert den dargestellten Namen der Import-Klasse im Backend.
Die Variable <code>$this-&gt;inputFields</code> enthält ein Array, das alle Konfigurationsoptionen des
Plugins bestimmt, die vom Benutzer beim Import angegeben werden müssen.
Dabei enthält <code>$this-&gt;data</code> beim Importvorgang die Eingaben des Benutzers
für diese Konfigurationsoptionen.</p>

<p>Jede Import-Klasse muss folgende Methoden implementieren:</p>

<p class="desc">
    <code class="item method">getImportNotes()</code>
    <span class="desc-info">Diese Methode liefert etwaige Zusatzinfos zum Importer zurück, die im Backend
vor dem Import ausgegeben werden sollen. Üblicherweise informiert diese Methode
den Benutzer über Einschränkungen oder Besonderheiten des Importers.</span>
</p>

<p class="desc">
<code class="item method">Serendipity_Import_Name()</code>
<span class="desc-info">
    <span class="box">
        Der Konstruktor der PHP-Klasse muss die Arrays <code>$this-&gt;data</code> und
        <code>$this-&gt;inputFields</code> füllen. Für die Eingabefelder wird dabei ein verschachteltes
        Array angelegt. Jedes Unter-Array enthält dabei die Definition der
        Konfigurationsfelder und greift dabei auf folgende Array-Schlüssel zurück:
    </span>
    <span class="box group-box">
        <code class="item">text</code> enthält die Beschreibung der Konfigurationsoption.<br>
        <code class="item">type</code> bestimmt, wie die Konfigurationsoption dargestellt wird. 
        <span class="subdesc">
            <span class="box">
                Mögliche Werte:<br>
                <span class="sub-box">
                    <code>input</code> (Eingabefeld),<br>
                    <code>list</code> (Ausklappfeld),<br>
                    <code>bool</code> (Ja/Nein).<br>
                </span>
                Die Typen stimmen mit denen überein, die auch für die Konfigurationsoptionen
                des Blogs in der <code>include/tpl/config_local.inc.php</code> verfügbar sind
                (siehe Seite <span class="pageref"><a href="#configlocal">configlocal</a></span>).
            </span>
        </span>
        <code class="item">name</code> bestimmt den Feldnamen der Konfigurationsoption,
        um später innerhalb des <code>$this-&gt;data</code>-Arrays darauf zugreifen zu können.<br>
        <code class="item">default</code> enthält den Standardwert der Option.
    </span>
</span>
</p>

<p class="desc">
<code class="item method">validateData()</code>
<span class="desc-info">Überprüft die Benutzereingaben beim Import auf Gültigkeit. Hier können zB.
Datenbankzugänge getestet oder Eingabefelder auf ihren Inhalt geprüft werden.</span>
</p>

<p class="desc">
<code class="item method">getInputFields()</code>
<span class="desc-info">Dient als Kapselungsmethode, um das Array <code>$this-&gt;inputFields</code> zurückzuliefern.</span>
</p>

<p class="desc">
<code class="item method">import()</code>
<span class="desc-info">
    <span class="box">
        Diese Methode führt den eigentlichen Import durch. In jedem der Importer werden
        hier die Ursprungsdaten des fremden Systems eingelesen und die
        Serendipity-Datenbanktabellen entsprechend befüllt.
    </span>
    <span class="box">
        Als Erstes werden dabei meist alle Redakteure des fremden Systems ausgelesen
        und als Serendipity-Autoren hinzugefügt. Danach werden Kategorien, Artikel und
        Kommentare zugewiesen. Da beim Import die Primärschlüssel des alten Systems für
        Serendipity neu vergeben werden, wird häufig mit sogenannten <code>Lookup-Arrays</code>
        gearbeitet. Diese speichern die ID eines Objekts (Artikel, Kategorie ...) im
        alten Blog-System sowie die ID bei Serendipity. So kann später beim
        Durchlaufen der alten Zuordnungen von Redakteuren zu Einträgen (oder Kategorien
        zu Einträgen) leicht die neue Zuordnung für Serendipity durchgeführt werden.
    </span>
</span>
</p>

<p>Jede Klasse kann weiterhin beliebige eigene PHP-Methoden enthalten, damit Sie
für Ihren Importer beliebige Kapselung erreichen können.</p>

<p>Folgende Methoden sind in der <code>Serendipity_Import</code>-Klasse definiert und
können beliebig eingesetzt werden:</p>

<p class="desc">
<code class="item method">getCharsets()</code>
<span class="desc-info">Hilfsfunktion, um ein Dropdown mit möglichen Zeichensätzen (nativer Zeichensatz,
ISO-8859-1, UTF-8) in den Konfigurationsoptionen einzubinden. Die Werte werden
dabei anhand der aktuellen Konfiguration des Blogs zusammengestellt und dienen
beim Import dazu, Zeichensatzkollisionen zu vermeiden.</span>
</p>

<p class="desc">
<code class="item method">decode(), strtr(), strtrRecursive()</code>
<span class="desc-info">Konvertiert eine Zeichenfolge anhand des in der Konfiguration des Importers
festgelegten Zeichensatzes in das gewünschte Zielformat des Blogs. Diese Methode
greift auf die Hilfsmethoden <code>strtr()</code> und <code>strtrRecursive()</code> zu, damit
rekursiv auch Arrays mit Zeichenketten konvertiert werden können.</span>
</p>

<p class="desc">
<code class="item method">getTransTable()</code>
<span class="desc-info">Hilfsmethode, um HTML-Sonderzeichen zurück in native Zeichen umzuwandeln.</span>
</p>

<p class="desc">
<code class="item method">nativeQuery()</code>
<span class="desc-info">Führt eine Datenbankabfrage in der Datenbank des Zielsystems aus. Die normale
<code>serendipity_db_query()</code>-Funktion operiert weiterhin auf der
Serendipity-Datenbank.</span>
</p>

<p>&nbsp;</p>

</section><!-- section.index end -->

<section id="S10140" class="index">
<span class="s-toc">10.14 - Template Processor/Template API</span>

<h3 class="section" id="template-processor-template-api">Template Processor/Template API</h3>

<p class="tagging invisible">
<span class="tag-box invisible">
    <span class="inline-tag">Template-API</span>
    <span class="inline-tag">Smarty!Alternativen</span>
</span>
<span class="label invisible" id="templateapi">templateapi</span>
</p>

<p>Serendipity ist grundsätzlich auf den Einsatz mit dem <em>Smarty</em>-Template-Framework
ausgerichtet. Die Vorteile von Smarty sind eine auch für
Nicht-Programmierer erlernbare Syntax, einfache Integration von Zusatzfunktionen
und eine hohe Ausführungsgeschwindigkeit. Zudem wird Smarty aktiv
weiterentwickelt und verfügt über eine hervorragende Online-Dokumentation und
Verbreitung.</p>

<p>Dennoch besteht gerade bei PHP-Entwicklern oft der Wunsch, ohne Umwege eines
Template-Frameworks Inhalte ausgeben zu wollen. Daher bietet Serendipity die
Möglichkeit an, Templates mit beliebigen eigenen Ausgabestrukturen einzusetzen.
An diese Personen richtet sich die Template API von Serendipity - Sie sollten PHP
gut beherrschen, wenn Sie diese API einsetzen möchten.</p>

<p>Dabei bedient sich Serendipity einer Art <em>Connector-API</em>. Dank dem Einsatz
von Smarty werden alle Template-Variablen über eine einheitliche API
weitergereicht und Template-Dateien mittels weniger Funktionen ausgegeben.</p>

<p>Wenn Sie ein eigenes Template-Framework einsetzen wollen, benötigen Sie
lediglich eine Art Emulation der Smarty-Funktionen. Serendipity bietet Ihnen
dazu ein Grundgerüst an und liefert beispielhaft zwei Template-Layer mit:
<code>templates/default-php</code> (PHP-Templates) und <code>templates/default-xml</code>
(XML/XSLT-Templates).</p>

<p>Eine eigenständige API kann vom Template mit einer <code>template.inc.php</code>
(ähnlich wie eine <code>config.inc.php</code>-Datei) eingebunden werden. Diese
PHP-Datei muss die jeweilige Emulator-Klasse laden.
<code>templates/default-php/template.inc.php</code> tut dies wie folgt:</p>

<pre><code class="php">
    &lt;?php<br>
    include_once S9Y_INCLUDE_PATH . 'include/template_api.inc.php';<br>
    $GLOBALS['template'] = new serendipity_smarty_emulator_xml();<br>
    $GLOBALS['serendipity']['smarty'] =&amp; $GLOBALS['template'];<br>
    ?&gt;
</code></pre>

<p>In der ersten Zeile wird die Serendipity-Emulationsklasse geladen, in der
zweiten und dritten die Klasse als Ersatz des
<code class="nobreak">$serendipity['smarty']</code>-Objekts.</p>

<p>Für alle Serendipity-Funktionen bleibt dabei der Zugriff auf das
Template-Framework so erhalten, als käme Smarty zum Einsatz. In Wirklichkeit
kümmert sich jedoch die Emulationsklasse um die Ausgabe.</p>

<p>Sie können an dieser Stelle jedes beliebige Objekt einsetzen, solange es
folgende Methoden implementiert:</p>

<p class="desc">
<code class="item smarty_method">assign()</code>
<span class="desc-info">Weist eine Template-Variable zu.</span>
</p>

<p class="desc">
<code class="item smarty_method">assignByRef()</code>
<span class="desc-info">Weist eine Template-Variable als Referenz zu. Die alte API
vor Serendipity 1.7 mit Smarty 3+ nutzte <code>assign_by_ref()</code>. Etwaige Beispiele
wurden dementsprechend angepasst.</span>
</p>

<p class="desc">
<code class="item smarty_method">call()</code>
<span class="desc-info">Rufen Benutzer in Ihren Templates Smarty-Funktionen auf, dient die Methode
<code>call()</code> als Zwischenstufe zum Aufruf der tatsächlichen PHP-Funktion.</span>
</p>

<p class="desc">
<code class="item smarty_method">display()</code>
<span class="desc-info">Gibt den Inhalt einer Template-Datei aus.</span>
</p>

<p class="desc">
<code class="item smarty_method">trigger_error()</code>
<span class="desc-info">Gibt eine Fehlermeldung aus.</span>
</p>

<p class="desc">
<code class="item smarty_method">getdefault()</code>
<span class="desc-info">Liefert den Wert einer durch <code>assign()</code> gesetzten Template-Variable zurück.</span>
</p>

<p class="desc">
<code class="item smarty_method">fetch()</code>
<span class="desc-info">Bindet eine Unter-Template-Datei ein und leitet deren Inhalt weiter an eine
Template-Variable. Dies wird dazu verwendet, um kleine Template-Dateien wie
<code>comments.tpl</code> in eine große Datei (<code>entries.tpl</code>) einzubinden.</span>
</p>

<p>
<span class="tag-box invisible">
    <span class="inline-tag">XSLT</span>
</span>
Für PHP und XSLT sind die Beispiel-Emulatorklassen in der Datei
<code>include/template_api.inc.php</code> enthalten. Diese sollten Sie als Vorlage für
etwaige Eigenentwicklungen nutzen.</p>

<p>Das Prinzip der PHP-Emulation ist technisch recht simpel. Sie benötigt anstelle
der Smarty-Template-Dateien einfache PHP-Dateien. Während in Smarty-Templates
Variablen mittels <code class="item smarty">{$Variable}</code> ausgegeben werden, muss dies in PHP
mittels <code>&lt;?php echo $Variable; ?&gt;</code> erfolgen. Daher müssen für ein
PHP-Template alle <code>.tpl</code>-Dateien in das entsprechende Format konvertiert
werden. Smarty-Modifier und Smarty-Funktionen müssen ebenfalls entsprechend der
PHP-Syntax abgeändert werden, wie auch Smarty-Sprachkonstrukte (zB. 
<code class="smarty">{if ...} ... {/if}</code>.</p>

<p>Beispielhaft wurde das für einige Template-Dateien des Verzeichnisses
<code>templates/default-php/</code> bereits durchgeführt. Dieses
Vorhaben ist jedoch nicht komplettiert, da de facto wenig Nachfrage nach einem
PHP-Template-System besteht. Das Smarty-Framework ist bereits so leistungsfähig,
dass die Mitglieder der Serendipity-Community dieses System favorisieren und
dafür Templates entwickeln.</p>

<p>Die XML-Emulation arbeitet dabei viel simpler. Sie weist einfach alle
Template-Variablen einem eigenen XML-Element zu und schachtelt Arrays
entsprechend. Die Darstellung derartiger XML-Elemente kann mittels
XSLT-Stylesheets oder -Transformationen erfolgen.</p>

</section><!-- section.index end -->
