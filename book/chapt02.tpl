
<h2 id="chapter-II">Kapitel 2: Einrichtung / Installation</h2>

<p>Die folgenden Installationsanweisungen sind bewusst sehr ausführlich
gehalten, um auch Anfängern den Einstieg zu ermöglichen. Fortgeschrittene
Anwender finden eine Zusammenfassung
im Abschnitt <span class="reference"><a href="#S230">Schnelle Installation</a></span> auf Seite
<span class="pageref"><a href="#Schnelle Installation">Schnelle Installation</a></span>.</p>

<p>&nbsp;</p>

<section id="S210" class="index">
<span class="s-toc">2.1 - Wahl der Waffen</span>

<h3 class="section" id="wahl-der-waffen">Wahl der Waffen</h3>
<p class="tagging invisible">
<span class="tag-box invisible">
    <span class="inline-tag">Serendipity!benötigte Programme|(</span>
    <span class="inline-tag">FTP</span>
</span>
</p>

<p>Um Serendipity voll auszunutzen, benötigt
man einiges an Zusatzsoftware, als Erstes
ein Programm, um Dateien (und auch
Serendipity selbst) auf den eigenen Server hochzuladen. Üblicherweise
geschieht dies mittels eines FTP-Programmes, in manchen Fällen aber auch
per SSH bzw. SFTP [*]
<span class="footnote"><i class="fa fa-info-circle"></i> siehe Abschnitt <span class="reference">Protokolle</span> auf Seite
<span class="pageref"><a href="#Protokolle">Protokolle</a></span></span><!-- footnote -->. Sollten Sie FTP einsetzen, empfiehlt sich ein
Programm, das mit <em>Threads</em> [*]
<span class="footnote"><i class="fa fa-info-circle"></i> <em>Threading</em>
<span class="tag-box invisible">
    <span class="inline-tag">Threading (FTP)</span>
</span>
wird von FTP-Programmen benutzt, um mehrere gleichzeitige Verbindungen zu
einem Server aufzubauen.</span><!-- footnote --> umgehen kann, was den Upload vieler
kleiner Dateien beschleunigt. Für Windows ist
<span class="tag-box invisible">
    <span class="inline-tag">SmartFTP</span>
</span>
SmartFTP [*]
<span class="footnote"><i class="fa fa-info-circle"></i> <a href="http://www.smartftp.com/" target="_blank">http://www.smartftp.com/</a></span><!-- footnote --> für solche Zwecke
empfehlenswert. Weiterhin sollte das FTP-Programm auch ermöglichen,
Dateirechte mit dem Befehl <code>chmod</code> zu ändern.</p>

<p>Zum Entpacken von Serendipity benötigen Sie ein Programm wie 7-Zip oder
Winzip oder entsprechende Kommandozeilen-Tools in einer
Linux-Umgebung.</p>

<p>Um das Blogsystem zu bedienen, benötigen Sie selbstverständlich einen
Webbrowser. Serendipity läuft mit allen gängigen Webbrowsern (Mozilla
<span class="tag-box invisible">
    <span class="inline-tag">Webbrowser!Anforderungen</span>
    <span class="inline-tag">Browser|see{Webbrowser}</span>
    <span class="inline-tag">Browser|Webbrowser</span>
    <span class="inline-tag">Browser|Developer-Tools</span>
</span>
Firefox, Google Chrome / Chromium, Internet Explorer, Opera, Safari) auch älterer Generation, da
JavaScript/Ajax nur im Bedarfsfall verwendet (aber nicht benötigt) wird.
Um später leicht Änderungen an Ihrem Layout durchzuführen, empfiehlt der
Autor
den Einsatz von Mozilla Firefox und die Installation der Extensions
"Firebug" [*]
<span class="footnote"><i class="fa fa-info-circle"></i> <a href="http://www.getfirebug.com/" target="_blank">http://www.getfirebug.com/</a></span><!-- footnote --> und
"Web-Developer" [*]
<span class="footnote"><i class="fa fa-info-circle"></i> <a href="https://addons.mozilla.org/de/firefox/addon/60" target="_blank">https://addons.mozilla.org/de/firefox/addon/60</a></span><!-- footnote -->.
Mittels dieser beiden Erweiterungen können Sie Designänderungen direkt in der
Browser-Ansicht testen. Dies erleichtert die
Template-Erstellung ungemein.</p>

<p>Mit den, seit dem Erscheinen dieses Buches, stark vorangetriebenen Entwicklungen der gängisten Browser,
(Mozilla Firefox, Google Chrome, Apple Safari, und MS Internet Explorer IE),
sind solche Erweiterungen über die Jahre eigentlich unnötig geworden, da heutzutage alle großen Browser von Hause aus geeignete Developer-Tools
(meist unter der Tastatur-Taste [<code>F12</code>] erreichbar [*]
<span class="label invisible" id="Developer-Tools">Developer-Tools</span>
<span class="footnote"><i class="fa fa-info-circle"></i> Das ist natürlich spezifisch in verschiedenen Browsern auf verschiedenen Betriebssystemen.
Zum Beispiel wäre das gleiche auf OS X in Chrome so [<code>⌥ + ⌘ + J</code>] zu erreichen.</span>) mitbringen,
die die genannten Änderungen spielerisch einfach <em>“am lebenden Objekt”</em> einer Webseite ermöglichen. [*]
<span class="footnote"><i class="fa fa-info-circle"></i> <a href="https://developer.mozilla.org/en-US/docs/Tools" target="_blank">https://developer.mozilla.org/en-US/docs/Tools</a></span><!-- footnote -->
<span class="footnote"><i class="fa fa-info-circle"></i> <a href="https://developer.chrome.com/devtools" target="_blank">https://developer.chrome.com/devtools</a></span><!-- footnote --></p>

<p>Zur Verwaltung von Datenbanken und Tabellen gibt es zahlreiche
SQL-Anwendungen. Bei der Benutzung von MySQL ist das Web-basierte
<span class="tag-box invisible">
    <span class="inline-tag">MySQL</span>
    <span class="inline-tag">phpMyAdmin</span>
</span>
phpMyAdmin [*]
<span class="footnote"><i class="fa fa-info-circle"></i> <a href="http://www.phpmyadmin.net/" target="_blank">http://www.phpmyadmin.net/</a></span><!-- footnote --> sehr zu empfehlen,
<span class="tag-box invisible">
    <span class="inline-tag">PostgreSQL</span>
</span>
für PostgreSQL gibt es analog
<span class="tag-box invisible">
    <span class="inline-tag">phpPgAdmin</span>
</span>
phpPgAdmin [*]
<span class="footnote"><i class="fa fa-info-circle"></i> <a href="http://phppgadmin.sourceforge.net/" target="_blank">http://phppgadmin.sourceforge.net/</a></span><!-- footnote --> und für
SQLite
<span class="tag-box invisible">
    <span class="inline-tag">SQLite</span>
    <span class="inline-tag">phpSQLiteAdmin</span>
</span>
phpSQLiteAdmin.[*]
<span class="footnote"><i class="fa fa-info-circle"></i> <a href="http://www.phpguru.org/static/phpSQLiteAdmin.html" target="_blank">http://www.phpguru.org/static/phpSQLiteAdmin.html</a></span><!-- footnote -->
Die Installationsanleitung für diese Web-Anwendungen schlagen Sie bitte auf den
jeweiligen Projekt-Webseiten nach.
<span class="tag-box invisible">
    <span class="inline-tag">Serendipity!benötigte Programme|)</span>
</span>
</p>

<p>&nbsp;</p>

</section><!-- section.index end -->

<section id="S220" class="index">
<span class="s-toc">2.2 - Installation</span>
<span class="label invisible" id="Installation">Installation</span>

<h3 class="section" id="installation">Installation</h3>

<p>Im Folgenden gehen wir davon aus, dass Sie entweder
selbständig einen Webserver mit PHP und Datenbanken eingerichtet haben
oder von einem Dienstleister einen entsprechend aufgesetzten Webserver
bereitgestellt bekommen.</p>

<p>Dort müssen Sie Serendipity unterhalb des
<span class="tag-box invisible">
    <span class="inline-tag">Document Root</span>
    <span class="inline-tag">example.com</span>
</span>
Document Root (siehe Seite <span class="pageref"><a href="#DocRoot">DocRoot</a></span>) ablegen.
Im Folgenden nennen wir dieses Verzeichnis exemplarisch
<code>/var/www/example.com</code>.
Alle Angaben, die diesen Pfad enthalten, müssen Sie auf Ihre
individuellen Gegebenheiten anpassen.</p>

<p>
<span class="tag-box invisible">
    <span class="inline-tag">Verzeichnisbenennung</span>
    <span class="inline-tag">Fehler!Verzeichnisbenennung</span>
</span>
Sie werden Serendipity in einem Unterverzeichnis dieses Stammpfads
installieren, so dass Sie das Blogsystem später über die URL
<code>http://www.example.com/serendipity/</code> aufrufen können. Ob Sie dieses
Unterverzeichnis ebenfalls <code>serendipity</code> nennen, bleibt Ihnen
überlassen - es darf auch
<code>blog</code>, <code>tagebuch</code> oä. heißen. Sie sollten jedoch Sonderzeichen
wie den Unterstrich (<code>_</code>) sowie Zahlen am Anfang oder Ende des
Verzeichnisnamens vermeiden, da dies zu Problemen mit
Serendipitys dynamisch generierten URLs führen kann.</p>

<p>Sie können Serendipity natürlich auch direkt ins Stammverzeichnis selbst
installieren. Beachten Sie jedoch dabei, dass dadurch
die Installation anderer Software, etwa eines Forums oder eines
Statistikprogramms,
schwieriger werden könnte, wenn die URL-Umformung aktiviert wurde und
Serendipity direkte Zugriffe auf Unterverzeichnisse möglicherweise als eigene
Seitenausgabe auffasst.</p>

<section id="U221" class="sub">
<span class="u-toc">2.2.1 - Upload der Dateien</span>

<h3 class="subsection" id="upload-der-dateien">Upload der Dateien</h3>

<p class="tagging invisible">
<span class="tag-box invisible">
    <span class="inline-tag">Download</span>
    <span class="inline-tag">Serendipity!Download</span>
</span>
</p>

<p>
<span class="mbold">Serendipity Styx</span> sollten Sie natürlich direkt auf der GitHub-Projektseite.[*]
<span class="footnote"><i class="fa fa-info-circle"></i> <a href="https://github.com/ophian/styx/releases" target="_blank">https://github.com/ophian/styx/releases</a></span><!-- footnote -->
unter Releases herunterladen.
</p>

<p>Das Serendipity-Paket bekommen Sie entweder von der
Projekt-Webseite <code>http://www.s9y.org/</code> im Bereich
<span class="mbold">Downloads</span> oder direkt von der SourceForge-Projektseite.[*]
<span class="footnote"><i class="fa fa-info-circle"></i> <a href="http://sourceforge.net/project/showfiles.php?group_id=75065" target="_blank">http://sourceforge.net/project/showfiles.php?group_id=75065</a></span><!-- footnote -->
</p>

<p>
<span class="tag-box invisible">
    <span class="inline-tag">Nightlies</span>
    <span class="inline-tag">Snapshots</span>
    <span class="inline-tag">Lite Release</span>
    <span class="inline-tag">Tarball</span>
</span>
Auf beiden Seiten finden Sie sowohl die aktuellste Ausgabe als auch Beta- und
ältere Versionen und die täglichen <em>Snapshots</em>. Obwohl es sich bei
Letzteren um die tagesaktuellen Entwicklerversionen handelt, sind diese bei
Serendipity gewöhnlich sehr stabil.</p>

<p>Außerdem können Sie die Pakete in mehreren Archivformaten
herunterladen: als <code>zip</code>-Datei sowie als <code>bzip2</code>
(Dateinamensendung <code>tar.bz2</code>) oder
<code>gzip</code> (Dateinamensendung <code>tar.gz</code>) gepackten
<em>Tarball</em>. Alle drei Varianten enthalten die gepackten
PHP-Dateien, die Sie auf Ihren Webserver hochladen müssen. Für
Windows-Benutzer ist das <code>zip</code>-Archiv am einfachsten zu handhaben,
unter Unix empfiehlt sich der Tarball.</p>

<p>Falls Sie via <code>ssh</code> direkten Shellzugriff auf Ihren Webserver haben,
laden Sie das Paket mittels <code>wget</code> ohne Umwege direkt auf den Server
und entpacken es
mit einem Kommandozeilen-Programm:</p>

<pre><code class="bash">
    user@server:~# cd /var/www/example.com/<br>
    user@server:~# wget "http://downloads.sourceforge.net/php-blog/serendipity-1.3.tar.gz?use_mirror=mesh"<br>
    [...]<br>
    user@server:~# tar -xvzf serendipity-1.3.tar.gz<br>
    [...]
</code></pre>

<p>Anderenfalls laden Sie das Paket auf Ihren eigenen Rechner und
entpacken es dort mit einem geeigneten Programm in ein temporäres
Verzeichnis. Aus diesem Ordner heraus laden Sie alle Dateien und
Unterverzeichnisse des entpackten
<code>serendipity</code>-Unterverzeichnisses mit allen Dateien mittels
FTP-Programm auf Ihren Webserver.</p>

<p>
<span class="tag-box invisible">
    <span class="inline-tag">Fehler!beim Upload</span>
</span>
Achten Sie beim Aufspielen der Dateien unbedingt darauf,
dass der Transfer nicht an einer Stelle abbricht oder fehlschlägt.
Teilweise hochgeladene Dateien können Serendipity
unbenutzbar machen. Da insgesamt mehrere hundert kleine Dateien
hochgeladen werden, empfiehlt es sich, im FTP-Programm die Benutzung
sogenannter Threads zu aktivieren. Damit öffnet es mehrere
parallele FTP-Verbindungen und lädt die Dateien so schneller hoch.
In jedem Fall sollten Sie sorgfältig auf etwaige Fehlermeldungen achten.</p>

</section><!-- section.sub end -->

<section id="U222" class="sub">
<span class="u-toc">2.2.2 - Abgesicherte Installation</span>

<h3 class="subsection" id="abgesicherte-installation">Abgesicherte Installation</h3>

<p class="tagging invisible">
<span class="tag-box invisible">
    <span class="inline-tag">Download</span>
    <span class="inline-tag">Serendipity!Download</span>
</span>
</p>

<p><span class="mbold">Serendipity Styx</span> wird über eine sogenannte abgesicherte
Installation geschützt, um zufällige andere Gäste aus dem Installationsprozess herauszuhalten.
Dazu dient eine temporäre <code>install_token.php</code> Datei, die man schnell per FTP
heraufladen und im Root Verzeichnis von Serendipity platzieren muss.
Um eine abgesicherte Installation auszuführen, müssen Sie diese Datei namens
<code>install_token.php</code> mit dem String (Beispiel Token)
</p>

<pre><code>&lt;?php $install_token = 'ea032be371d64ec77009257f6f0f9b424b182519'; ?&gt;</code></pre>

<p>in diesem Wurzelverzeichnis erstellen. Achten Sie darauf keine zusätzlichen Leerzeichen
oder Zeilen am Anfang oder Ende der Datei einzufügen. Dieser Token ist einzigartig
und fixiert die Autorisierungs-Beziehung zwischen Ihnen und dem Installer.
</p>

<p>Sobald diese Datei existiert, müssen Sie die Installation innerhalb der nächsten
X Minuten ausführen und dürfen ihren Browser nicht schließen. Sie müssen Cookies erlauben.
</p>

<p>Fügen Sie also nun den Sicherheits Install Token ein, der Ihnen auf der Seite angegeben wird,
laden Sie die Datei hoch und reloaden Sie die Browserseite.
</p>

<p>Sie sind nicht autorisiert die Installation auszuführen, wenn Ihr vorgegebener
Install-Token nicht demjenigen aus der hochgeladenen Datei <code>install_token.php</code>
entspricht. Stellen Sie sicher, dass Sie die Datei mit dem korrekten Inhalt erstellt haben.
Sie können einen neuen Token erstellen, in dem Sie die Datei löschen.
</p>

<p>Ist ihr sicherer Install-Token gültig, können Sie Serendipity wie gehabt installieren.
</p>

<p>Selbst wenn Sie vergessen sollten die Datei nach getanem Werk wieder zu löschen, richtet diese keinen Schaden an.
</p>

</section><!-- section.sub end -->

<section id="U223" class="sub">
<span class="u-toc">2.2.3 - Einrichten der Verzeichnisse</span>

<h3 class="subsection" id="einrichten-der-verzeichnisse">Einrichten der Verzeichnisse</h3>

<p>Nach dem Upload finden Sie auf Ihrem Webserver
im Verzeichnis <code>serendipity</code>
einige Dateien mit <code>.php</code>-Endung (<code>index.php</code>,
<code>comment.php</code>, <code>serendipity_admin.php</code> ...) sowie einige
Unterverzeichnisse (<code>bundled-libs</code>, <code>docs</code>, <code>htmlarea</code>,
<code>include</code>, <code>lang</code> ...).</p>

<p>Um Zugriffsrechte auf einem Server zu verwalten, bedienen sich sowohl
Windows- als auch Linux-Systeme sogenannter Eigentümer- und
Gruppenrechte. Jeder Benutzer des Systems kann Dateieigentümer
und jeder Eigentümer kann Mitglied einer oder mehrerer
Benutzergruppen sein.</p>

<p>
<span class="tag-box invisible">
    <span class="inline-tag">Schreibrechte</span>
    <span class="inline-tag">Zugriffsrechte</span>
    <span class="inline-tag">Benutzergruppen!Rechte</span>
</span>
<span class="label invisible" id="Zugriffsrechte">Zugriffsrechte</span>
Jede Datei (und jedes Verzeichnis) auf einem Server ist einem Eigentümer
und einer Gruppe zugewiesen. Für beide wird der Zugriff auf eine Datei
über ein Zugriffs- (oder Ausführbarkeits-), Lese- und Schreibrecht geregelt.
Meist hat ein Eigentümer die vollen Rechte an einer Datei: Er kann sie
ansehen, ändern und löschen. Die anderen Mitglieder derselben Benutzergruppe
können jedoch abweichende Rechte haben, so dass sie die Datei nur ansehen,
aber nicht verändern dürfen. Zudem muss noch geregelt werden, welche
Zugriffsrechte Benutzer haben, die weder Eigentümer noch Gruppenmitglieder
sind. Auch für diese "anderen Benutzer", also den "Rest der Welt", werden
Zugriffs-, Lese und Schreibrecht aufgeteilt.</p>

<p>Wenn Sie eine Datei mittels FTP auf einen Webserver laden, tun Sie dies
(zwangsläufig) mit dem Benutzeraccount, der für den FTP-Zugriff eingerichtet
wurde. Hochgeladene Dateien werden diesem Benutzeraccount und standardmäßig
einer Gruppe zugewiesen, der Ihrem Benutzerkonto angehört. Dieses Vorgehen
stellt sicher, dass andere Benutzer, die auf demselben Server tätig sind, nicht
einfach Ihre Dateien lesen oder verändern können. Optimalerweise haben diese
keine Möglichkeit, auf von Ihnen hochgeladene Dateien zuzugreifen.</p>

<p>Die Webserver-Software, die die von Ihnen hochgeladenen Dateien interpretiert
und als Webseite ausliefert, läuft ebenfalls mit den Rechten eines bestimmten
Benutzers. Dieser heißt häufig <code>www-data</code>, <code>wwwrun</code> oder auch
<code>nobody</code>. Damit dieser Systembenutzer Software wie Serendipity ausführen
kann, muss er bestimmte Rechte an den von Ihnen hochgeladenen Dateien haben. Das
müssen Sie sicherstellen. In üblichen Konfigurationen ist Ihr Benutzeraccount
Mitglied derselben Gruppe wie der Webserver-Nutzer, die Lesezugriff auf alle
hochgeladenen Dateien hat.</p>

<p>Beim Hochladen von Dateien mittels FTP können Sie in diese Rechte
eingreifen. Dazu bieten viele Programme bei Rechtsklick auf eine Datei
oder ein Verzeichnis ein Menü namens <span class="mbold">Permission</span> oder <span class="mbold">CHMOD</span>
an (Abbildung 2.1).</p>

<figure id="fig-chmod">
    <img src="img/chmod.png">
    <figcaption>Abbildung 2.1: <span class="mbold">CHMOD</span>-Maske des FTP-Programmes FileZilla</figcaption>
</figure>

<figure id="fig-chmod2">
    <img src="img/chmod2.png">
    <figcaption>Abbildung 2.1b: <span class="mbold">CHMOD</span>-Über die Linux Konsole</figcaption>
</figure>

<p>Dort trägt man, Unix-Konventionen entsprechend, die Zugriffsrechte für
Eigentümer/Benutzer (<em>Owner</em>), Gruppe (<em>Group</em>) und Rest
(<em>Other</em>) ein: für jede dieser drei Nutzerkategorien eine Zahl.</p>

<p>Eine <code>0</code> bedeutet "kein Zugriff", eine <code>1</code> "Ausführen
möglich", eine <code>2</code> "Schreiben erlaubt" und eine <code>4</code>
"Lesen erlaubt". Diese Zahlen lassen sich addieren, so dass
ein Lese- und Schreibzugriff durch die Zahl <code>6</code> angegeben wird. Für
Verzeichnisse gilt dabei, dass diese nur <em>betreten</em> werden
dürfen, wenn das Recht mit der Zahl <code>1</code> in der Summe enthalten ist, etwa beim
Vollzugriff mit <code>7</code>.</p>

<p>Mit der Zugriffsmaske <code>777</code> erhält jeder Nutzer volle Zugriffsrechte auf
die betroffene Datei. Damit stellt man einfach sicher, dass sowohl der eigene
Benutzeraccount als auch der des Webservers volle Zugriffsrechte haben --
allerdings auch andere Benutzer auf demselben Server. Daher ist es besser, die
Zugriffsrechte von Dateien und Verzeichnissen so strikt wie möglich zu setzen.
Wie dies konkret bei Ihnen aussieht, klären Sie am besten mit Ihrem Provider.</p>

<p>Damit der Webserver Serendipity ausführen kann, benötigt er Leserechte für
<em>alle</em> Dateien und Verzeichnisse. Um Serendipity zu installieren, braucht
er zudem anfangs Schreibzugriff auf das Stammverzeichnis, damit er die Dateien
<code>serendipity_config_local.inc.php</code> und <code>.htaccess</code> erstellen kann.
Darüber hinaus wird das Installationsprogramm die Unterverzeichnisse
<code>templates_c</code>, <code>archives</code> und <code>uploads</code> zu erstellen versuchen.
Sollte es diese schon geben, müssen Schreibrechte für den Webserver-Benutzer
dafür vergeben werden. Nach der Installation benötigt der Webserver nur noch
Schreibrechte auf die genannten drei Unterverzeichnisse und zwei Dateien, den
globalen Schreibzugriff auf das Stammverzeichnis können Sie also wieder
entfernen.</p>

<p>Wenn Sie darüber hinaus das Spartacus-Plugin zum Download von Templates
und Plugins nutzen wollen (siehe Kapitel <span class="reference">Spartacus</span>
ab Seite <span class="pageref"><a href="#Spartacus">Spartacus</a></span>),
müssen auch die Verzeichnisse <code>plugins</code> und <code>templates</code>
beschreibbar sein (und bleiben).</p>

</section><!-- section.sub end -->

<section id="U224" class="sub">
<span class="u-toc">2.2.4 - Einrichten der Datenbank</span>

<h3 class="subsection" id="einrichten-der-datenbank">Einrichten der Datenbank</h3>

<p class="tagging invisible">
<span class="label invisible" id="DBeinrichten">DBeinrichten</span>
<span class="tag-box invisible">
    <span class="inline-tag">Datenbank!einrichten|(</span>
</span>
</p>

<p>Nachdem nun also alle notwendigen Dateien hochgeladen wurden und Sie die
Zugriffsrechte konfiguriert haben, müssen Sie eine Datenbank für
Serendipity einrichten.</p>

<p>Je nachdem, welche Datenbanksoftware auf Ihrem Webserver zur Verfügung
steht, kann dieser Vorgang unterschiedlich ausfallen.</p>

<p>Verwendet Ihr Webserver PHP5, ist die
<span class="tag-box invisible">
    <span class="inline-tag">SQLite!einrichten</span>
</span>
Datenbank SQLite automatisch verfügbar. Dieses Datenbanksystem
speichert alle seine Datenbanken und Tabellen in einer einzigen Datei.
Diese wird im Serendipity-Verzeichnis abgelegt und während der
Installation ohne Ihr Zutun automatisch erstellt, es sind
daher keine vorbereitenden Eingriffe notwendig.</p>

<p>Beim Einsatz von MySQL und PostgreSQL geht Serendipity davon aus, einen
Datenbankbenutzer und eine leere Datenbank vorzufinden. Üblicherweise
erhält man die Zugangsdaten von seinem Provider,
da der Benutzeraccount bereits besteht. Manche Provider gestehen
Ihnen nur eine einzelne Datenbank zu, so dass Sie keine neuen erstellen
können. Das ist nicht weiter tragisch, da sich Serendipity problemlos mit anderen
Anwendungen innerhalb derselben Datenbank betreiben lässt. Viele
Provider bieten zudem eigene Oberflächen zur Erstellung einer Datenbank an.</p>

<p>Serendipity benötigt lediglich irgendeine Datenbank für seine Tabellen --
man kann also problemlos eine bereits bestehende Datenbank für die
Installation benutzen.</p>

<p>
<span class="tag-box invisible">
    <span class="inline-tag">Datenbank!Rechte</span>
    <span class="inline-tag">Privileges</span>
</span>
Sollte noch kein Datenbankbenutzeraccount bestehen, müssen Sie ihn anlegen.
Dabei ist wichtig, dass der Benutzer über alle Rechte verfügt,
die Serendipity später im Betrieb benötigt. Konkret heißt das, dass er
Tabellen anlegen (<code>CREATE</code>), aktualisieren (<code>ALTER</code>) und
indizieren (<code>INDEX</code>) sowie Datensätze anlegen (<code>INSERT</code>),
aktualisieren (<code>UPDATE</code>), lesen (<code>SELECT</code>) und löschen
(<code>DELETE</code>) darf.</p>

<p>Um für MySQL einen solchen Benutzer anzulegen, benutzt man (in einem Programm
wie phpMyAdmin, welches die meisten
<span class="tag-box invisible">
    <span class="inline-tag">MySQL!einrichten</span>
    <span class="inline-tag">phpMyAdmin!Nutzer anlegen</span>
</span>
Provider anbieten) folgende SQL-Syntax:</p>

<pre><code class="sql">
    CREATE DATABASE serendipity;<br>
    GRANT SELECT, CREATE, INSERT, UPDATE, DELETE, ALTER, INDEX ON serendipity<br>
    TO 'serendipity'@'%' IDENTIFIED BY PASSWORD 'passwort';
</code></pre>

<p>Diese beiden Befehle erstellen die leere Datenbank namens <code>serendipity</code>
und den gleichnamigen Benutzer, der die notwendigen Zugriffsrechte
erhält und sich über das Passwort <code>passwort</code> ausweisen muss.
Bei PostgreSQL benutzt man folgende Syntax:
<span class="tag-box invisible">
    <span class="inline-tag">PostgreSQL!einrichten</span>
</span>
</p>

<pre><code class="sql">
    CREATE USER serendipity WITH PASSWORD 'passwort';<br>
    CREATE DATABASE serendipity WITH OWNER = serendipity;<br>
    GRANT SELECT, CREATE, INSERT, UPDATE, DELETE, ALTER ON DATABASE<br>
    serendipity TO 'serendipity'
</code></pre>

<p>Um die Serendipity-Installation erfolgreich durchzuführen, benötigen Sie den
Benutzernamen des Datenbanknutzers (hier <code>serendipity</code>), dessen
Passwort, den Namen einer leeren Datenbank und den
Namen (oder die IP-Adresse) des Datenbankservers.
<span class="tag-box invisible">
    <span class="inline-tag">Datenbank!einrichten|)</span>
</span>
</p>

</section><!-- section.sub end -->

<section id="U225" class="sub">
<span class="u-toc">2.2.5 - Die grafische Installationsroutine</span>

<h3 class="subsection" id="die-grafische-installationsroutine">Die grafische Installationsroutine</h3>

<p class="tagging invisible">
<span class="tag-box invisible">
    <span class="inline-tag">Installation!aufrufen</span>
    <span class="inline-tag">Fehler!Installation}</span>
</span>
<span class="label invisible" id="webinstaller">webinstaller</span>
</p>

<p>Nach diesen Vorarbeiten rufen
Sie die URL Ihrer Serendipity-Installation im Browser auf, hier also <code>http://www.example.com/serendipity/</code>.
Versuchen Sie nicht, eine Datei Ihrer lokalen Festplatte aufzurufen oder
eine Datei mittels FTP-Zugriff zu <em>öffnen</em> (zB. via Doppelklick). Dies
würde Ihnen lediglich den Quellcode der PHP-Anwendung anzeigen.
Stattdessen müssen Sie den Webbrowser einsetzen, damit Ihr Webserver die
PHP-Anwendung ausführt.</p>

<p>Bei korrekter Einrichtung des Webservers sehen Sie nun eine Kurzübersicht
wie in Abbildung 2.2, die
aufführt, welche Voraussetzungen der Server erfüllen muss, ehe Sie
fortfahren können.
Sollte sich diese entgegen Ihren Wünschen in englischer Sprache präsentieren,
konfigurieren Sie Ihren Browser so um, dass Deutsch die
bevorzugte Sprache darstellt.</p>

<figure id="fig-install">
    <img src="img/install.png">
    <figcaption>Abbildung 2.2: Installationsbildschirm</figcaption>
</figure>

<p>
<span class="tag-box invisible">
    <span class="inline-tag">Fehler!bei der Installation</span>
</span>
Weist Sie die Übersicht auf einen Fehler bei den Schreibrechten oder den
Server-Einstellungen hin, beheben Sie ihn und rufen Sie
die Installationsoberfläche erneut auf. Warnungen werden mit
roter Schriftfarbe dargestellt, eingeschränkte Funktionen oder Hinweise
in Gelb; korrekte Einstellungen sind grün hervorgehoben.</p>

<p>Hinweise der Installationsoberfläche zeigen dabei einen Unterschied
zwischen dem von Serendipity empfohlenen Wert und der Einstellung auf Ihrem
Webserver an. Im Gegensatz zu Fehlern können Sie Serendipity bei solchen Hinweisen aber
trotzdem betreiben, jedoch entweder mit Einbußen bei der Performance oder
Funktionalität.</p>

<p>Stimmen die systemseitigen Voraussetzungen, was gerade bei den Rechten oft schon die Regel ist, starten Sie die
Installationsoberfläche über einen der beiden Links am Ende der Seite: <span class="mbold">Einfache Installation</span>
oder <span class="mbold">Fortgeschrittene Installation</span>.</p>

<p>Die <span class="mbold">Einfache Installation</span> verlangt von Ihnen nur die absolut
notwendigen Angaben. Dagegen bietet die
<span class="mbold">Fortgeschrittene Installation</span> sämtliche Konfigurationsoptionen an,
die sich auch später im laufenden Betrieb ändern lassen. Da wir in
Kapitel <span class="reference">Konfiguration</span> ab Seite <span class="pageref"><a href="#Konfiguration">Konfiguration</a></span>
detailliert auf alle Optionen eingehen, klicken Sie
an dieser Stelle am besten auf <span class="mbold">Einfache Installation</span>.</p>

<figure id="fig-install2">
    <img src="img/install2.png">
    <figcaption>Abbildung 2.3: Initiale Konfiguration</figcaption>
</figure>

<p>Die Folgeseite (Abbildung 2.3) stellt alle
Installationsoptionen in Gruppen unterteilt dar.</p>

<article id="XU" class="subsub">

<header>
    <h4 class="subarticle" id="der-abschnitt-datenbankeinstellungen">Der Abschnitt <span class="mbold">Datenbankeinstellungen</span></h4>
</header>

<p class="tagging invisible">
<span class="label invisible" id="Datenbankeinstellungen">Datenbankeinstellungen</span>
<span class="tag-box invisible">
    <span class="inline-tag">Datenbank!Einstellungen|(</span>
</span>
</p>

<p>In diesem Bereich stellen Sie die Zugangsdaten für die gewünschte
Datenbank ein. Im Feld <span class="mbold">Datenbanktyp</span> können Sie zwischen allen im
PHP-Kern verfügbaren Datenbanktypen wählen. Beim Einsatz
<span class="tag-box invisible">
    <span class="inline-tag">SQLite</span>
</span>
von PHP4 wird der Datenbanktyp <span class="mbold">SQLite</span> also gar nicht
erst angezeigt.</p>

<p>Den <span class="mbold">Servernamen</span> (meist <code>localhost</code> oder ein Name wie
<code>db1231231.puretec.de</code>) tragen Sie genauso wie den Namen und das
Passwort des Datenbankbenutzers in die zugehörigen Felder ein. Beim
Datenbanktyp <span class="mbold">SQLite</span> spielen diese Einstellungen
keine Rolle und dürfen leer bleiben.</p>

<p>Als Datenbankname tragen Sie den Namen der, entsprechend der Beschreibung auf
Seite <span class="pageref"><a href="#DBeinrichten">DBeinrichten</a></span>,
erstellten Datenbank ein. Darin erstellt Serendipity
Tabellen, deren Namen es das Präfix <code>serendipity_</code> oder <code>styx_</code> voranstellt.
Diese Vorsilbe ermöglicht die Installation
in eine Datenbank, in der bereits andere Tabellen liegen.
Wählen Sie in der <span class="mbold">Fortgeschrittenen Installation</span> ein anderes Präfix,
können Sie auch mehrere
Serendipity-Instanzen auf einem Server installieren.</p>

</article>

<article id="XU" class="subsub">

<header>
    <h4 class="subarticle" id="der-abschnitt-generelle-einstellungen">Der Abschnitt <span class="mbold">Generelle Einstellungen</span></h4>
</header>

<p class="tagging invisible">
<span class="tag-box invisible">
    <span class="inline-tag">Datenbank!Einstellungen|)</span>
</span>
<span class="label invisible" id="Generelle Einstellungen">Generelle Einstellungen</span>
</p>

<p>Die Optionen im Abschnitt <span class="mbold">Generelle Einstellungen</span> legen den
Standard-Benutzer für das zu installierende Blog fest. Tragen Sie als
<span class="tag-box invisible">
    <span class="inline-tag">Nutzer!Admin-~ festlegen</span>
    <span class="inline-tag">User|see{Nutzer}</span>
    <span class="inline-tag">Adminnutzer!festlegen</span>
    <span class="inline-tag">Passwort!des Adminnutzers setzen</span>
</span>
<span class="mbold">Admin-Benutzername</span> also den Namen ein, den Sie später beim Login
verwenden wollen. Er sollte möglichst keine Sonderzeichen
oder Umlaute enthalten, da dies zu Problemen bei unterschiedlichen
Zeichensätzen führen kann. Das Gleiche gilt für das <span class="mbold">Admin-Passwort</span>;
lediglich im Feld <span class="mbold">Voller Name</span> können Sie auch auf
Sonderzeichen zurückgreifen.</p>

<p>
<span class="tag-box invisible">
    <span class="inline-tag">E-Mail-Adresse!des Adminnutzers setzen</span>
</span>
Die Angabe der <span class="mbold">Admin-E-Mail</span>-Adresse benötigt Serendipity beim
Verschicken von
Hinweisen über neu eingegangene Kommentare und Trackbacks.</p>

<p>
<span class="tag-box invisible">
    <span class="inline-tag">Blog!Titel festlegen</span>
    <span class="inline-tag">Titel!des Blogs festlegen</span>
    <span class="inline-tag">Blog!Beschreibung festlegen</span>
    <span class="inline-tag">Beschreibung!des Blogs festlegen</span>
</span>
Den <span class="mbold">Blog-Titel</span> und die <span class="mbold">Blog-Beschreibung</span> zeigt das Frontend
im Kopfbereich an und verwendet beides auch für die Titelzeile im Browser.</p>

<p>
<span class="tag-box invisible">
    <span class="inline-tag">Sprache!konfigurieren</span>
</span>
Die <span class="mbold">Sprache</span> des Blogs gibt die Standardsprache vor, in der
Serendipity Nachrichten und Meldungen darstellt. Später lässt sich
für Besucher der Webseite und für jeden Redakteur individuell eine Sprache
einstellen (siehe Seite <span class="pageref"><a href="#eigeneeinstellungen-sprache">eigeneeinstellungen-sprache</a></span>).</p>

</article>

<article id="XU" class="subsub">

<header>
    <h4 class="subarticle" id="der-abschnitt-design-und-optionen">Der Abschnitt <span class="mbold">Design und Optionen</span></h4>
</header>

<p class="label invisible">
<span class="label invisible" id="Design und Optionen">Design und Optionen</span>
</p>

<p>Der letzte Einstellungsblock legt bei der einfachen Installation lediglich
fest, ob der Standard-Redakteur den WYSIWYG-Editor zur Erstellung von
Einträgen benutzen möchte.</p>

</article>

<article id="XU" class="subsub">

<header>
    <h4 class="subarticle" id="abschluss-der-installation">Abschluss der Installation</h4>
</header>

<p>Sind alle Optionen eingetragen (keine Angst, Sie können sie später
allesamt wieder verändern), schließen Sie den Installationsvorgang durch
einen Klick auf <span class="mbold">Vollständige Installation</span> ab.</p>

<p>Die letzte Seite der Installationsroutine (Abbildung 2.4) informiert Sie
über die von Serendipity durchgeführten Aktionen. Dazu gehört das Anlegen
der notwendigen Tabellen und des Standardbenutzers und die Einrichtung der
Standard-Plugins. Sollten Sie an dieser Stelle noch nicht über eine
passende Datenbank verfügen oder andere Fehler auftreten, informiert Sie
Serendipity auch darüber. Dann heißt es zurück zu Abschnitt
<span class="reference">DBeinrichten</span> ab Seite
<span class="pageref"><a href="#DBeinrichten">DBeinrichten</a></span>.</p>

<figure id="fig-install3">
    <img src="img/install3.png">
    <figcaption>Abbildung 2.4: Einrichtung abgeschlossen</figcaption>
</figure>

<p>Bei fehlerfreier Installation können Sie über die URL <code>http://www.example.com/serendipity/</code> das
Frontend aufrufen und unter
<code>http://www.example.com/serendipity/serendipity_admin.php</code> mit den
gewählten Login-Daten auf das Backend zugreifen.</p>

</article>

</section><!-- section.sub end -->

<section id="U226" class="sub">
<span class="u-toc">2.2.6 - Die Konfigurationsdatei serendipity_config_local.inc.php</span>

<h3 class="subsection" id="die-konfigurationsdatei-serendipity_config_local-inc-php">Die Konfigurationsdatei serendipity_config_local.inc.php</h3>

<p class="tagging invisible">
<span class="tag-box invisible">
    <span class="inline-tag">serendipity-configlocalincphp@serendipity_config_local.inc.php</span>
</span>
</p>

<p>Alle grundlegenden
Konfigurationsvariablen wie die Daten für den Datenbankzugang und die aktuelle
Versionsnummer speichert Serendipity in der Datei
<code>serendipity_config_local.inc.php</code> im Stammverzeichnis.
Diese Datei sieht ungefähr wie folgt aus:</p>

<pre class="snippet"><code id="config-local" class="php">&lt;?php<br>
&nbsp;&nbsp;&nbsp;&nbsp;/*<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Serendipity&nbsp;configuration&nbsp;file<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Written&nbsp;on&nbsp;Wed,&nbsp;06&nbsp;Jun&nbsp;2007&nbsp;11:22:27&nbsp;+0200<br>
&nbsp;&nbsp;&nbsp;&nbsp;*/<br>
<br>
&nbsp;&nbsp;&nbsp;&nbsp;$serendipity['versionInstalled']&nbsp;&nbsp;=&nbsp;'1.3';<br>
&nbsp;&nbsp;&nbsp;&nbsp;$serendipity['dbName']&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=&nbsp;'serendipity';<br>
&nbsp;&nbsp;&nbsp;&nbsp;$serendipity['dbPrefix']&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=&nbsp;'serendipity10_';<br>
&nbsp;&nbsp;&nbsp;&nbsp;$serendipity['dbHost']&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=&nbsp;'127.0.0.1';<br>
&nbsp;&nbsp;&nbsp;&nbsp;$serendipity['dbUser']&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=&nbsp;'root';<br>
&nbsp;&nbsp;&nbsp;&nbsp;$serendipity['dbPass']&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=&nbsp;'root';<br>
&nbsp;&nbsp;&nbsp;&nbsp;$serendipity['dbType']&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=&nbsp;'mysql';<br>
&nbsp;&nbsp;&nbsp;&nbsp;$serendipity['dbPersistent']&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=&nbsp;false;<br>
<br>
&nbsp;&nbsp;&nbsp;&nbsp;//&nbsp;End&nbsp;of&nbsp;Serendipity&nbsp;configuration&nbsp;file<br>
&nbsp;&nbsp;&nbsp;&nbsp;//&nbsp;You&nbsp;can&nbsp;place&nbsp;your&nbsp;own&nbsp;special&nbsp;variables&nbsp;after&nbsp;here:<br>
<br>
?&gt;</code></pre><!-- snippet -->

<p>Ähnlich wie bei der <code>.htaccess</code>-Datei (siehe Seite
<span class="pageref"><a href="#htaccess">htaccess</a></span>) können Sie in dieser Datei später auch eigene
Konfigurationsparameter nachtragen. Fügen Sie diese <em>nach</em>
der Zeile <code>You can place your own special variables after here:</code> ein,
so dass Serendipity sie bei einer Konfigurationsänderung nicht
versehentlich überschreibt. Je nach Konfiguration des Webservers kann es
sein, dass Sie keine Schreibrechte für diese Datei besitzen. Dies
<span class="tag-box invisible">
    <span class="inline-tag">fixperm.php</span>
</span>
lässt sich mit dem <code>fixperm.php</code>-Skript (siehe Seite
<span class="pageref"><a href="#fixperm">fixperm</a></span>) ändern.</p>

</section><!-- section.sub end -->

<section id="U227" class="sub">
<span class="u-toc">2.2.7 - Fehler bei der Installation</span>

<h3 class="subsection" id="fehler-bei-der-installation">Fehler bei der Installation</h3>

<p class="tagging invisible">
<span class="label invisible" id="installationsfehler">installationsfehler</span>
<span class="tag-box invisible">
    <span class="inline-tag">Installationsfehler|see{Fehler}</span>
    <span class="inline-tag">Fehler!bei der Installation</span>
</span>
</p>

<p>Die zahlreichen Konfigurationsmöglichkeiten von Webservern geben
Spielraum für <em>hinterlistige</em> Fehler.</p>

<article id="XU" class="subsub">

<header>
    <h4 class="subarticle" id="nur-eine-leere-seite-erscheint">Nur eine leere Seite erscheint</h4>
</header>

<p class="tagging invisible">
<span class="label invisible" id="Nur eine leere Seite erscheint">Nur eine leere Seite erscheint</span>
<span class="tag-box invisible">
    <span class="inline-tag">display_errors</span>
    <span class="inline-tag">leere Seite</span>
    <span class="inline-tag">weiße Seite|see{leere Seite}</span>
    <span class="inline-tag">Fehler!leere oder weiße Seite</span>
    <span class="inline-tag">Fatal Error (PHP-Fehlermeldung)</span>
</span>
</p>

<p>Wenn an einer Stelle der Installation lediglich eine weiße Seite
erscheint, liegt dies meist an sogenannten <em>PHP Fatal Errors</em>.
Normalerweise sieht man diese direkt auf der Webseite, aber einige
Webserver sind so eingestellt, dass sie PHP-Fehlermeldungen unterdrücken.
Wenn das Installationsskript endet, ohne vollständig
ausgeführt worden zu sein, führt dies dann zu den weißen/leeren
Seiten.</p>

<p>Um die Fehlermeldung dennoch zu sehen, versuchen Sie, in den
PHP-Fehlerlogfiles Ihres Webservers nachzuschauen. Diese liegen meist in
einem <code>logs</code>-Unterverzeichnis. Den genauen Speicherort solcher
Dateien teilt Ihnen der Provider mit.</p>

<p>Man kann aber auch versuchen, im
<span class="tag-box invisible">
    <span class="inline-tag">htaccess@.htaccess</span>
</span>
Serendipity-Stammverzeichnis eine Datei namens <code>.htaccess</code>
anzulegen und mit folgender Zeile zu füllen:</p>

<pre><code class="conf">
    php_value display_errors on
</code></pre>

<p>Beim Speichern der Datei achten Sie bitte unbedingt
darauf, dass PHP dafür Schreibrechte erhalten muss, da es diese
Datei während der Installation automatisch verändert.
<span class="tag-box invisible">
    <span class="inline-tag">Versteckte Dateien</span>
</span>
Achten Sie auch darauf, dass einige FTP-Programme Dateien, die mit
einem Punkt anfangen, verstecken, so dass Sie diese erst nach Umkonfiguration
des Programms sehen.</p>

<p>Die Fehlermeldungen geben
meist Aufschluss über die Ursache. Oft sind dies fehlende oder defekte
Dateien. Enthält eine Datei <code>Parse Errors</code> [*]
<span class="footnote"><i class="fa fa-info-circle"></i> PHP meldet einen
Parse Error, wenn eine Datei
<span class="tag-box invisible">
    <span class="inline-tag">Parse Error (PHP-Fehlermeldung)</span>
</span>
fehlerhafte Zeichen oder eine ungültige Syntax enthält.</span><!-- footnote -->, ist dies meist auf
fehlerhafte FTP-Uploads zurückzuführen. Auch fehlende Leserechte kommen als Ursache in Frage.</p>

<p>Am häufigsten kann der Ordner
<span class="tag-box invisible">
    <span class="inline-tag">Template-Sc@templates_c</span>
</span>
<code>templates_c</code> nicht beschrieben werden. Dieser ist für
von Smarty kompilierte Dateien gedacht, die für die Darstellung des
Frontends verwendet werden.</p>

</article>

<article id="XU" class="subsub">

<header>
    <h4 class="subarticle" id="http-500-fehlermeldung">HTTP/500 Fehlermeldung</h4>
</header>

<p class="tagging invisible">
<span class="label invisible" id="HTTP/500 Fehlermeldung">HTTP/500 Fehlermeldung</span>
<span class="tag-box invisible">
    <span class="inline-tag">HTTP/500-Fehlermeldung</span>
    <span class="inline-tag">Fehler!HTTP/500-Fehlermeldung</span>
    <span class="inline-tag">Fehler!htaccess@.htaccess</span>
    <span class="inline-tag">htaccess@.htaccess</span>
</span>
</p>

<p>Serendipity setzt einige Standardoptionen über die Datei
<code>.htaccess</code>. Von einigen Webservern wird dieser Mechanismus jedoch
nicht unterstützt und kann gar zu einem Abbruch des Skripts führen.
Sollte sich Serendipity nach der Installation nicht aufrufen
lassen, löschen Sie die <code>.htaccess</code>-Datei einfach. Sie ist für den
Betrieb nicht zwingend notwendig. Ohne diese Datei können Sie jedoch
keine URL-Umformung benutzen, die für Serendipity "sprechende URLs"
ermöglicht (siehe Seite <span class="pageref"><a href="#urlformung">urlformung</a></span>).</p>

</article>

<article id="XU" class="subsub">

<header>
    <h4 class="subarticle" id="seiten-werden-nicht-gefunden">Seiten werden nicht gefunden</h4>
</header>

<p class="tagging invisible">
<span class="label invisible" id="Seiten werden nicht gefunden">Seiten werden nicht gefunden</span>
<span class="tag-box invisible">
    <span class="inline-tag">mod_rewrite</span>
    <span class="inline-tag">Unterseiten funktionieren nicht</span>
    <span class="inline-tag">Fehler!Unterseiten funktionieren nicht</span>
</span>
</p>

<p>Um "sprechende URLs" wie
<code>http://www.example.com/serendipity/archives/1-Mein-erster-Artikel.html</code>
zu unterstützen, kann Serendipity zwei Arten der URL-Umformung
unterstützen. Da Pfade und Dateien wie oben genannt nur virtuell erstellt
werden und nicht wirklich auf dem Server liegen, muss Serendipity über
Umleitungen auf seine zentrale Datei <code>index.php</code> geleitet werden.</p>

<p>
<span class="tag-box invisible">
    <span class="inline-tag">URL-Umformung</span>
</span>
Diese Umleitung konfiguriert Serendipity anhand der Datei
<code>.htaccess</code>. Dort gibt es zwei Varianten der URL-Umformung:
<em>mod_rewrite</em> und <em>Apache Errorhandling</em>.</p>

<p><em>mod_rewrite</em> ist die komfortabelste Variante der Umformung,
benötigt aber ein zusätzliches Webserver-Modul, welches nicht immer
verfügbar ist. <em>Apache Errorhandling</em> setzt einen Trick ein, der
eigentlich nicht gefundene Seiten (<em>HTTP/404 Not Found</em>) virtuell
auf eine zentrale Seite umleitet, die dann den eigentlichen Inhalt
ausgibt.</p>

<p>Serendipity versucht bei der Installation die beste Art für Sie
automatisch zu erkennen. Auf manchen Servern gelingt dies jedoch nicht,
und es kann sein, dass Serendipity die URL-Umformung fälschlicherweise
aktiviert. Wenn diese Umformung nicht klappt, gehen alle Links von
Serendipity somit "ins Leere". Dazu zählen auch Links zum Stylesheet
des Frontends, die das Layout beeinflussen.</p>

<p>Löschen Sie die <code>.htaccess</code>, um dieses Problem zu lösen.
Danach suchen Sie die Serendipity-Administrationsoberfläche via
<code>http://www.example.com/serendipity/serendipity_admin.php</code> auf,
loggen sich ein und gehen über den Menüpunkt <span class="mbold">Konfiguration</span> zu der
Unterebene <span class="mbold">Design und Optionen</span>. Dort findet sich die Option
<span class="mbold">URL-Formung</span>. Diese Option stellen Sie auf <em>None</em> und
speichern die Konfiguration. Daraufhin wird die <code>.htaccess</code>-Datei
neu erstellt.</p>

<p>Nun sollten Sie Serendipity-Unterseiten wieder problemlos öffnen können.</p>

</article>

<article id="XU" class="subsub">

<header>
    <h4 class="subarticle" id="installation-erneut-ausführen">Installation erneut ausführen</h4>
</header>

<p class="tagging invisible">
<span class="label invisible" id="Installation erneut ausfuehren">Installation erneut ausführen</span>
<span class="tag-box invisible">
    <span class="inline-tag">Erneute Installation</span>
    <span class="inline-tag">serendipity-configlocalincphp@serendipity_config_local.inc.php</span>
    <span class="inline-tag">fixperm.php</span>
    <span class="inline-tag">Fehler!Installation erneut ausführen</span>
</span>
</p>

<p>Wenn die Installation aus irgendwelchen Gründen fehlgeschlagen ist,
möchten Sie Serendipity vielleicht von Grund auf neu installieren. Dazu
muss Serendipity in den Ursprungszustand zurückversetzt werden. Löschen
Sie dafür die Datei <code>serendipity_config_local.inc.php</code>. Diese Datei
enthält die Basis-Konfigurationsparameter des Blogs, und sobald diese
Datei nicht mehr vorhanden ist, erkennt Serendipity nicht mehr, dass es
installiert ist.</p>

<p>Auch die Datei <code>.htaccess</code> sollte vor einer neuen Installation
gelöscht werden. Bei beiden Dateien ist zu beachten, dass sie von PHP
erstellt wurden und von Serendipity mit minimalen Rechten versehen werden,
um diese Daten zu schützen. Daher kann es unter Umständen sein, dass Sie
mit Ihrem FTP-Zugang keinen Zugriff mehr auf diese Datei haben!</p>

<p>Um dies zu beheben, bedienen Sie sich eines kleinen PHP-Skripts.
Speichern Sie eine Datei namens <code>fixperm.php</code> im
Serendipity-Stammverzeichnis mit folgendem Inhalt:</p>

<p class="tagging invisible">
<span class="label invisible" id="fixperm">fixperm</span>
<span class="tag-box invisible">
     <span class="inline-tag">fixperm.php</span>
</span>
</p>

<pre class="snippet"><code id="snippet-fixperm" class="php">&lt;?php<br>
<br>
$ziel&nbsp;=&nbsp;'/var/www/example.com/serendipity/serendipity_config_local.inc.php';<br>
if&nbsp;(chmod($ziel,&nbsp;0777))&nbsp;{<br>
&nbsp;&nbsp;echo&nbsp;"Rechte&nbsp;geändert.";<br>
}&nbsp;else&nbsp;{<br>
&nbsp;&nbsp;echo&nbsp;"Fehler:&nbsp;Rechte&nbsp;dürften&nbsp;nicht&nbsp;verändert&nbsp;werden.";<br>
&nbsp;&nbsp;echo&nbsp;"Sie&nbsp;müssen&nbsp;den&nbsp;Provider&nbsp;kontaktieren.";<br>
}<br>
<br>
?&gt;</code></pre><!-- snippet -->

<p>Rufen Sie danach die Datei mittels
<code>http://www.example.com/serendipity/fixperm.php</code> im Browser auf. Nach
dem Aufruf sollten Sie die Ausgabe "Rechte geändert" sehen, und die
Dateirechte sollten nun so verändert worden sein, dass Sie wieder vollen
Zugriff auf die Datei haben.</p>

<p>Übrigens können Sie dieses kleine Skript auch später benutzen, um andere
Dateien im Serendipity-Verzeichnis wieder mit Zugriffsrechten für Sie
auszustatten. Dabei müssen Sie lediglich die Code-Zeile verändern, die
den Namen der zu ändernden Datei enthält.</p>

<p>Zuletzt müssen Sie noch die von Serendipity angelegten Datenbanktabellen
wieder löschen. Wenn diese Tabellen nicht gelöscht werden, würde
Serendipity diese bei einer Neuinstallation schützen wollen. Nur wenn
alle Tabellen von Serendipity vorher mittels phpMyAdmin oder Ähnlichem
gelöscht werden, wird eine vollständige Neuinstallation möglich sein.</p>

</article>

<article id="XU" class="subsub">

<header>
    <h4 class="subarticle" id="fehler-beim-login">Fehler beim Login</h4>
</header>

<p class="tagging invisible">
<span class="label invisible" id="Fehler beim Login">Fehler beim Login</span>
<span class="tag-box invisible">
    <span class="inline-tag">Session-Fehler</span>
    <span class="inline-tag">Fehler!Session</span>
    <span class="inline-tag">Fehler!Login</span>
</span>
</p>

<p>Wenn Sie Fehlermeldungen am Anfang der Seite erhalten, die aussehen wie
diese:</p>

<pre><code class="msg">
    Warning: session_write_close() [function.session-write-close]:<br>
    open(/var/lib/php/session/sess_h5a8jerb22q54pkqcjb4qtnqr1, O_RDWR)<br>
    failed: Permission denied
</code></pre>

<p>dann bedeutet dies, dass Ihr Webserver keinen gültigen Speicherpfad für
die PHP-Sessiondateien eingetragen hat. Entweder können Sie den Fehler
beheben, indem Sie korrekte Schreibrechte zu dem in der Fehlermeldung
genannten Pfad einrichten. Oder Sie müssen einen gültigen Pfad in der
Datei <code>php.ini</code> in der Variable <code>session.save_path</code> eintragen.</p>

<p>Ein weiteres Problem, das bei falsch eingerichteten PHP-Sessions
auftreten kann, ist, wenn Sie sich nach jedem Klick im Serendipity-Backend
erneut einloggen müssen. Dies bedeutet, dass der Webserver Ihre
Logindaten nicht in einer Session speichern und Sie somit nicht
eindeutig wiedererkennen kann.</p>

<p>Ein ähnliches Problem kann auch dann auftreten, wenn Ihr Browser keine
Cookies annimmt, weil sie zB. von einem Werbefilter oder
Anti-Virus-Programm gefiltert werden. Auch kann es passieren, dass, wenn
Sie die Serendipity-Oberfläche mit einer URL wie
<code>http://localhost/serendipity/</code> aufrufen, die Cookies für eine solche
URL nicht angenommen werden. In einem solchen Fall müssten Sie
Serendipity über die IP-Adresse wie <code>http://127.0.0.1/serendipity/</code>
aufrufen.</p>

</article>

<article id="XU" class="subsub">

<header>
    <h4 class="subarticle" id="weiterleitung-auf-verschiedene-urls">Weiterleitung auf verschiedene URLs</h4>
</header>

<p class="tagging invisible">
<span class="tag-box invisible">
    <span class="inline-tag">Weiterleitung</span>
</span>
<span class="label invisible" id="Weiterleitung">Weiterleitung</span>
</p>

<p>Wenn Sie Serendipity installieren, möchten Sie Ihr Blog möglicherweise
unter mehreren URLs aufrufen können.</p>

<p>Ein klassischer Fall dieser unterschiedlichen URLs ist, wenn Ihr Blog
sowohl unter <code>http://example.com/serendipity/</code> als auch
<code>http://www.example.com/serendipity/</code> verfügbar sein soll.
Damit Serendipity die jeweils genutzte URL als Standard für Folgeseiten
übernimmt, müssen Sie lediglich in der Konfiguration Serendipitys die
Option <span class="mbold">HTTP-Hostname</span> (siehe Kapitel <span class="reference">HTTP-Hostname</span> ab Seite
<span class="pageref"><a href="#HTTP-Hostname">HTTP-Hostname</a></span>) aktivieren.</p>

<p>Diese Funktion hilft Ihnen jedoch nur dann, wenn der benutzte Pfad (in
diesem Fall <code>/serendipity/</code>) in allen Fällen gleich bleibt. Sollten
Sie Ihr Blog aber sowohl unter der URL
<code>http://example.com/serendipity/</code> als auch
<code>http://serendipity.example.com/</code> darstellen wollen, dann würden Sie
diese Vorbedingung nicht erfüllen können. Serendipity kann mit einer
derartigen Einstellung nicht umgehen.</p>

<p>Der Grund dafür ist, dass bei einer abweichenden Pfadkomponente die
relativen Links nicht mehr korrekt funktionieren. Bei der einen URL
müsste Serendipity für den HTTP-Pfad immer <code>/serendipity/</code> nutzen,
während bei der anderen URL immer <code>/</code> genutzt werden müsste. Die
Links würden daher nicht übereinstimmen und zu zahlreichen Problemen bei
der Darstellung von Grafiken und Verweisen führen.</p>

<p>Das bessere Vorgehen in diesem Fall wäre also die Einrichtung einer
Weiterleitung. Dabei sollten Sie sich eine endgültige URL aussuchen und
alle weiteren optionalen URLs zu dieser Zielseite weiterleiten.</p>

<p>Weiterleitungen können Sie auf unterschiedliche Weisen realisieren. In
unserem Beispiel gehen wir davon aus, dass
<code>http://serendipity.example.com/</code> die Zielseite und
<code>http://example.com/serendipity/</code> die Quellseite darstellt.</p>

<p>Bei vielen Standardinstallationen für mehrere verfügbare URLs würden beide
URLs bereits auf dasselbe Verzeichnis verweisen.
<code>http://serendipity.example.com/index.php</code> als auch
<code>http://example.com/serendipity/index.php</code> würden physikalisch auf
dieselbe Datei zeigen, man spricht daher von einem <code>Alias</code>. Sollte
dies bei Ihnen der Fall sein, haben Sie zwei Möglichkeiten der Weiterleitung:</p>

<ul class="realList">
    <li>
        <span class="tag-box invisible">
            <span class="inline-tag">mod_rewrite</span>
        </span>
        <span class="box">
            <span class="mbold">Weiterleitung via <code>.htaccess</code> bei identischen Serendipity-Verzeichnissen</span>
            
            Wenn auf Ihrem Server mod_rewrite zur Verfügung steht, können Sie an den Anfang Ihrer
            <code>.htaccess</code>-Datei des Serendipity-Verzeichnisses vor dem Blog <code>#Begin s9y</code>
            folgende Zeilen einfügen:
            <span id="pre-style"><code id="forward-htaccess" class="conf">RewriteEngine&nbsp;On<br>
RewriteCond&nbsp;%{HTTP_HOST}&nbsp;^example.com&nbsp;[NC]<br>
RewriteRule&nbsp;^serendipity/(.*)$&nbsp;http://serendipity.example.com/$1&nbsp;[QSA]</code></span><!-- snippet -->
            Diese Regel weist den Webserver an, dass sämtliche Zugriffe zu <code>http://example.com/</code>
            auf die Zielseite <code>http://serendipity.example.com/</code> weitergeleitet werden.
            Sie müssen also jeweils den Quellservernamen, das Quellverzeichnis auf dem Quellserver
            und den Zielserver in den obigen Zeilen an Ihre Gegebenheiten anpassen.
        </span>
    </li>

    <li>
        <span class="box">
            <span class="mbold">Weiterleitung mittels PHP bei identischen Serendipity-Verzeichnissen</span>
            
            Ohne mod_rewrite müssen Sie die Weiterleitung innerhalb der Datei
            <code>serendipity_config_local.inc.php</code> einprogrammieren.
            Öffnen Sie diese Datei in einem Editor (bei fehlendem Schreibzugriff schauen Sie sich bitte
            <code>fixperm.php</code> auf Seite <span class="pageref"><a href="#fixperm">fixperm</a></span> an) und fügen Sie
            in die Zeile vor dem letzten <code>?&gt;</code> Folgendes ein:
            <span id="pre-style"><code id="forward-local" class="php">//&nbsp;Ist&nbsp;der&nbsp;ausführende&nbsp;Server&nbsp;der&nbsp;Quellserver?<br>
if&nbsp;($_SERVER['HTTP_HOST']&nbsp;==&nbsp;'example.com')&nbsp;{<br>
&nbsp;&nbsp;&nbsp;&nbsp;//&nbsp;Ersetze&nbsp;böse&nbsp;Sonderzeichen<br>
&nbsp;&nbsp;&nbsp;&nbsp;$ziel&nbsp;=&nbsp;str_replace(<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;array("\n",&nbsp;"\r"),&nbsp;<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;array('',&nbsp;''),<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;$_SERVER['REQUEST_URI']<br>
&nbsp;&nbsp;&nbsp;&nbsp;);<br>
&nbsp;&nbsp;&nbsp;&nbsp;<br>
&nbsp;&nbsp;&nbsp;&nbsp;//&nbsp;Entferne&nbsp;Quell-Pfad&nbsp;zur&nbsp;Weiterleitung<br>
&nbsp;&nbsp;&nbsp;&nbsp;$ziel&nbsp;=&nbsp;preg_replace('@^/serendipity/@i',&nbsp;'/',&nbsp;$ziel);<br>
<br>
&nbsp;&nbsp;&nbsp;&nbsp;//&nbsp;Leite&nbsp;zu&nbsp;Ziel-Server&nbsp;weiter<br>
&nbsp;&nbsp;&nbsp;&nbsp;header('Location:&nbsp;http://serendipity.example.com'&nbsp;.$ziel);<br>
&nbsp;&nbsp;&nbsp;&nbsp;exit;<br>
}<br>
</code></span><!-- snippet -->
            Dieser Code sorgt dafür, dass, wenn Serendipity auf dem Quellserver aufgerufen wird,
            der Besucher automatisch auf die Zielseite weitergeleitet wird.
        </span>
    </li>
</ul>

<p>Sollten durch die Art der Einrichtung jedoch beide URLs
(Weiterleitungsquelle und Weiterleitungsziel) auf unterschiedliche
Verzeichnisse Ihrer Domain zugreifen, dann können Sie die einfachste
Form der Weiterleitung nutzen:</p>

<ul class="realList">
    <li>
        <span class="box">
            <span class="mbold">Weiterleitung mittels <code>index.html</code> bei unterschiedlichen Serendipity-Verzeichnissen</span>
            
            Erstellen Sie die Datei <code>index.html</code> in dem Verzeichnis der Quell-URL (in unserem Beispiel <code>/serendipity/</code>):
            <span id="pre-style"><code id="forward-html" class="tpl">&lt;html&gt;<br>
            &nbsp;&nbsp;&lt;head&gt;<br>
            &nbsp;&nbsp;&nbsp;&nbsp;&lt;meta&nbsp;http-equiv="refresh"&nbsp;content="0;url=http://serendipity.example.com/"&gt;<br>
            &nbsp;&nbsp;&lt;/head&gt;<br>
            &nbsp;&nbsp;&lt;body&gt;<br>
            &nbsp;&nbsp;&lt;/body&gt;<br>
            &lt;/html&gt;</code></span><!-- snippet -->
            Beim Aufruf der Quell-URL wird dann unkompliziert auf die Ziel-URL weitergeleitet.
        </span>
    </li>

    <li>
        <span class="box">
            <span class="mbold">Weiterleitung mittels <code>index.php</code> bei unterschiedlichen Serendipity-Verzeichnissen</span>
            
            Etwas schneller geht die Weiterleitung mittels PHP, da die Weiterleitung dann
            intern im Browser ausgeführt wird und Sie nicht vorher kurz eine weiße Seite im Browser
            aufflackern sehen. Speichern Sie im Quellverzeichnis folgende <code>index.php</code>-Datei:
            <span id="pre-style"><code id="forward-php" class="php">&lt;?php<br>
            header('Location:&nbsp;http://serendipity.example.com/');<br>
            ?&gt;</code></span><!-- snippet -->
        </span>
    </li>
</ul>

<p>Einen Sonderfall dieser Weiterleitung stellt das Beispiel dar, wenn Sie
Serendipity zwar in einem Unterverzeichnis Ihres Webservers installiert
haben (<code>http://example.com/blog/</code>), aber gerne möchten, dass
Serendipity beim Aufruf der Haupt-Domain (<code>http://example.com/</code>)
direkt aufgerufen wird. Die einfachste Variante hier wäre natürlich,
dass Sie Serendipity in das Stammverzeichnis Ihrer Webseite
installieren, da dies problemlos möglich ist. Sollten Sie dies aus
irgendwelchen Gründen nicht bevorzugen, können Sie ebenfalls die
oben genannte Methode der Weiterleitung mittels <code>index.php</code> oder
<code>index.html</code> nutzen.</p>

</article>

<article id="XU" class="subsub">

<header>
    <h4 class="subarticle" id="falsche-anzeige-von-datumsangaben-oder-sonderzeichen">Falsche Anzeige von Datumsangaben oder Sonderzeichen</h4>
</header>

<p class="tagging invisible">
<span class="label invisible" id="Falsche Anzeige von Datumsangaben oder Sonderzeichen">Falsche Anzeige von Datumsangaben oder Sonderzeichen</span>
<span class="tag-box invisible">
    <span class="inline-tag">Locales</span>
    <span class="inline-tag">Datumsangaben</span>
    <span class="inline-tag">ISO-8859-1</span>
    <span class="inline-tag">UTF-8</span>
    <span class="inline-tag">Fehler!Sonderzeichen</span>
    <span class="inline-tag">Fehler!Umlaute</span>
    <span class="inline-tag">Fehler!Datumsanzeige</span>
</span>
</p>

<p>Serendipity benutzt zur Darstellung von Datumsangaben für Artikel und im
Kalender ein serverseitiges System namens <em>locales</em>. Diese locales sind,
grob gesagt, eine Sammlung von nationalen Sprachbesonderheiten und geben an,
wie in beinahe allen gesprochenen Sprachen die Währungs- und Datumsangaben
formatiert und geschrieben werden. Damit Serendipity auf möglichst vielen
Sprachumgebungen ohne viel Aufwand lauffähig ist, verlässt es sich auf diesen
De-facto-Standard.</p>

<p>Ebenfalls zur weitreichenden Unterstützung verschiedener Sprachen
unterstützt Serendipity mehrere Zeichensätze. Ein Zeichensatz regelt, mit
welchem Binärsystem Buchstaben für den Computer abgespeichert werden --
denn je nach Zeichensatz ist für einen Computer "ä" nicht gleich "ä".
Für die deutsche Sprache ist der standardisierte <em>ISO-8859-1</em>-Zeichensatz
üblich. Um jedoch auch mit anderen Sprachen benutzbar zu
sein, hat sich der Zeichensatz <em>UTF-8</em> etabliert, da dieser beinahe
alle Sonderzeichen jeder Sprache enthält. Ein arabischer Artikel könnte
so also direkt neben einem deutschen Artikel stehen, ohne dass
Sonderzeichen falsch dargestellt würden.</p>

<p>Sobald die Zeichensätze vermischt werden, kann es zu Fehldarstellungen im
Browser kommen - Mozilla Firefox zeigt statt des korrekten Zeichens dann
ein Karo-Symbol mit einem Fragezeichen an. Wenn Sie dies einmal in Ihren
Artikeln beobachten, liegt ein solcher Zeichensatzkonflikt vor.</p>

<p>In der Serendipity-Konfiguration können Sie einstellen, ob Serendipity
mit nationalem Zeichensatz oder UTF-8 betrieben wird. Standardmäßig wird
dies bei der Installation für größtmögliche Kompatibilität direkt auf
UTF-8 gesetzt. Sie sollten daher bei einer frischen Installation
keinerlei Probleme mit Zeichensätzen erwarten - erst bei späteren
Änderungen am System könnten möglicherweise einmal Probleme auftreten.</p>

<p>Die Behandlung von Sonderzeichen zur Speicherung in Datenbanken ist recht
komplex und kann mehrere Fehlerursachen haben.</p>

<p>Die erste Fehlerursache kann Ihr Browser sein. Stellen Sie sicher, dass
dieser den UTF-8-Zeichensatz darstellen kann. Wenn Sie beim Besuch der
Seite <code>http://www.columbia.edu/kermit/utf8.html</code> falsche
Sonderzeichen sehen, ist dies ein Indiz für eine fehlerhafte
Browserkonfiguration, die Sie mithilfe der Dokumentation Ihres Webbrowser
lösen müssen.</p>

<p>Die zweite Fehlerursache kann der Webserver sein, der Zeichensätze
selbständig verändert. Apache bietet eine Option an, ein sogenanntes
<em>DefaultCharset</em> zu setzen, das die Ausgabe von Sonderzeichen
eventuell verändern könnte. Wenn der Webserver nicht die von Serendipity
bestimmten <em>Content-Type</em>-HTTP-Kopfzeilen an den Browser sendet,
kann es sein, dass der Webserver durch seine Standardeinstellung die
Umbelegung durch Serendipity verhindert. Sprechen Sie daher mit ihrem
Provider und bitten Sie ihn, diese HTTP-Kopfzeilen zu überprüfen.</p>

<p>Zu guter Letzt gibt es nun noch die Datenbank, die Artikel mit
unterschiedlicher Kodierung speichern kann. Gerade zwischen MySQL 4.0
und 4.1 gab es weitreichende Änderungen in der Behandlung von
Zeichensätzen, die sich bei einem MySQL-Update darin äußern konnten,
dass Serendipity die Sonderzeichen falsch anzeigte. Um dies zu
korrigieren, müssen Sie sicherstellen, dass alle MySQL-Tabellen und
-Spalten als <em>Collation</em> den übereinstimmenden Zeichensatz
benutzen (also <code>de_latin</code> beim ISO-Zeichensatz und <code>utf8</code> für
UTF-8). Sobald dies korrekt übereinstimmt, kann in der
Serendipity-Konfiguration die Option
<span class="mbold">Datenbank-Zeichensatzkonvertierung aktivieren</span>
gewählt werden, was dann wieder zu einer korrekten Darstellung der
Sonderzeichen führen sollte.</p>

<p>In einigen Fällen ist es möglicherweise notwendig, einen vollständigen
SQL-Export der Datenbank vorzunehmen und die Datei mittels eines Editors
vom ISO-8859-1- ins UTF-8-Format zu überführen, neu zu importieren und
danach Serendipity zentral auf UTF-8-Zeichensätze umzustellen. Alternativ
können Sie das mit folgendem PHP-Skript erreichen, das einen Datenbankdump
namens <code>dump-iso.sql</code> in <code>dump-utf8.sql</code> vom ISO-8859-1-Zeichensatz
in den UTF-8-Zeichensatz verwandelt. Etwaige SQL-Befehle (<code>COLLATION</code>), die
MySQL-Zeichensätze bestimmen, müssen Sie jedoch manuell in der Datei
umwandeln, um sie später als vollständiges UTF-8 importieren zu können:</p>

<pre class="snippet"><code id="utf8conv" class="php">&lt;?php<br>
<br>
$input&nbsp;&nbsp;=&nbsp;file_get_contents('dump-iso.sql');<br>
$output&nbsp;=&nbsp;utf8_encode($input);<br>
$fp&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=&nbsp;fopen('dump-utf8.sql',&nbsp;'wb');<br>
if&nbsp;($fp)&nbsp;{<br>
&nbsp;&nbsp;fwrite($fp,&nbsp;$output);<br>
&nbsp;&nbsp;fclose($fp);<br>
}&nbsp;else&nbsp;{<br>
&nbsp;&nbsp;echo&nbsp;"Keine&nbsp;Schreibrechte,&nbsp;bitte&nbsp;korrigieren.";<br>
}<br>
<br>
?&gt;</code></pre><!-- snippet -->

<p>Zurück aber zu dem Problem mit falsch angezeigten Datumsangaben. Damit
der Wochentag "Freitag" nicht als "Friday" oder Ähnliches ausgegeben
wird, muss eine deutsche Sprachdatei für das locales-System auf dem
Server hinterlegt werden. Locales sind auf allen Betriebssystemen
verfügbar und in fast allen Fällen vorinstalliert. Je nach System können
sie auch nachinstalliert werden (bei Linux zB. mittels
<span class="tag-box invisible">
    <span class="inline-tag">locale-gen</span>
</span>
<code>locale-gen</code>). Für jede Sprache gibt es abhängig vom Zeichensatz eine
Sprachdatei. Für Deutsch ist es üblicherweise <code>de_DE.UTF8</code>
(UTF-8-Zeichensatz) oder <code>de_DE.ISO88591</code> (nationaler Zeichensatz).
Manchmal ist auf Servern nur das ISO-Locale installiert, und deshalb wird
der Monat "März" mit einem falschen Sonderzeichen dargestellt. Abhilfe
schafft hier die Installation der passenden UTF8-Locale-Datei. UTF8 ist grundsätzlich immer vorzuziehen.</p>

<p>Die Installation der Locales kann nur vom Serverbetreiber vorgenommen
werden, im Problemfall müssen Sie sich also an diesen wenden. Die
Locales, die Serendipity anwendet, finden Sie im Übrigen in der Datei
<code>lang/serendipity_lang_de.inc.php</code> bzw.
<code>lang/UTF-8/serendipity_lang_de.inc.php</code> in einer Zeile wie:</p>

<pre><code class="php">
    @define('DATE_LOCALES', 'de_DE.ISO-8859-1, de_DE.ISO8859-1, german, de_DE, de_DE@euro, de');
</code></pre>

</article>

</section><!-- section.sub end -->

</section><!-- section.index end -->

<section id="S230" class="index">
<span class="s-toc">2.3 - Schnelle Installation</span>
<span class="label invisible" id="Schnelle Installation">Schnelle Installation</span>

<h3 class="section" id="schnelle-installation">Schnelle Installation</h3>

<ul class="realList star">
    <li>Serendipity-Release-Paket von der Homepage herunterladen und via FTP auf den Webserver hochladen.</li>

    <li>Zugriffsrechte überprüfen: Stammverzeichnis und Unterverzeichnis <code>archives, templates_c, uploads</code> 
        müssen Schreibrechte für PHP besitzen, alle anderen Dateien und Verzeichnisse Leserechte.</li>

    <li>Eine leere Datenbank erstellen, falls noch nicht vorhanden. Sicherstellen, dass der Datenbankbenutzer die Rechte 
        <code>CREATE</code>, <code>INSERT</code>, <code>UPDATE</code>, <code>DELETE</code>, <code>ALTER</code>, <code>INDEX</code>, 
        <code>SELECT</code> besitzt.</li>

    <li>Via HTTP die Installationsroutine aufrufen: <code>http://www.example.com/serendipity/</code></li>

    <li>Der Installationsroutine folgen und die Anfangskonfiguration vornehmen.
        <span class="pageref"><a href="#chapter-II">Einrichtung</a></span></li>
</ul>

</section><!-- section.index end -->
