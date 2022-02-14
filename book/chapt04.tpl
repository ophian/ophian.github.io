
<h2 id="chapter-IV">Kapitel 4: Backend / Administrationsoberfläche / Verwaltungsoberfläche</h2>

<p>Nachdem Sie nun über die möglichen Ansichten von Serendipity im
Besucherbereich Bescheid wissen, ist es an der Zeit, das Backend zu
erkunden.</p>

<p>&nbsp;</p>

<section id="S410" class="index">
<span class="s-toc">4.1 - Login</span>

<h3 class="section" id="login">Login</h3>

<p>Das Backend ist geschützt durch einen Login. Sie erreichen die
Administrationsoberfläche unter</p>

<pre><code class="html">
    http://www.example.com/serendipity/serendipity_admin.php
</code></pre>

<p>Auf dieser Seite müssen Sie Ihren Benutzernamen und das Passwort
eintragen, das Sie bei der Installation angegeben haben. Standardmäßig
ist der Benutzername <code>John Doe</code> und das Passwort <code>john</code>.</p>

<p>Unterhalb der beiden Eingabefelder befindet sich die Auswahlbox <span class="mbold">Daten
speichern</span>. Wenn Sie diese Option aktivieren, wird auf Ihrem Computer ein
Cookie gespeichert, der Sie eindeutig im System identifiziert, und Sie
können sich in Zukunft ohne Passwort einloggen.</p>

<p>Dieser Cookie enthält eine eindeutige Kennzeichnung sowie ein
Ablaufdatum, Ihr Benutzername oder Passwort wird nicht
gespeichert. Wenn das Ablaufdatum überschritten ist, wird der alte Cookie
automatisch als ungültig markiert und ein neuer Cookie ausgestellt.
Diese Funktionsweise stellt sicher, dass ein Angreifer aus
einem gestohlenen Cookie keine Nutzerinformationen extrahieren und
mit einem veralteten Cookie keinen Login ausführen kann.</p>

<figure id="fig-login">
    <img src="img/login.png">
    <figcaption>Abbildung 4.1: Login-Bildschirm</figcaption>
</figure>

<p>
<span class="tag-box invisible">
    <span class="inline-tag">Sicherheit</span>
</span>
Trotz dieser Sicherungsmethoden sollten Sie die Option <span class="mbold">Daten
speichern</span> niemals auf einem Computer aktivieren, zu dem auch weniger
vertrauenswürdige Benutzer Zugriff haben. Trotz aller Bequemlichkeit
ist diese Option vor allem in Internetcafes tabu.</p>

<p>
<span class="tag-box invisible">
    <span class="inline-tag">HTTPS</span>
</span>
Sofern Ihr Server die <em>HTTPS</em>-Verschlüsselung unterstützt, sollten
Sie die Administrationsoberfläche immer über <code>https://...</code>
aufrufen. Erst diese Verschlüsselung schützt sie vor dem Ablauschen Ihrer
Logindaten während der Übermittlung.</p>

<section id="U411" class="sub">
<span class="u-toc">4.1.1 - Mögliche Fehler beim Login</span>

<h3 class="subsection" id="mögliche-fehler-beim-login">Mögliche Fehler beim Login</h3>

<p class="tagging invisible">
<span class="tag-box invisible">
    <span class="inline-tag">Fehler!Login</span>
</span>
</p>

<p>Das häufigste Problem beim Login ist ein PHP-Server, bei dem die
Sessions nicht, wie im Kapitel <span class="reference">Voraussetzungen</span> auf Seite
<span class="pageref"><a href="#Voraussetzungen">Voraussetzungen</a></span> beschrieben, korrekt eingerichtet sind. Dies kann sich
darin äußern, dass Sie sich nach jedem Klick neu einloggen müssen.</p>

<p>Ältere Serendipity-Versionen verursachten zudem ähnliche Probleme, wenn
die URL <code>http://localhost/...</code> lautete. Viele Browser
akzeptieren keine Login-Cookies, wenn der Servername nicht mindestens zwei
Punkte enthält. Auch sollten Sie generell prüfen, ob Ihr Browser
möglicherweise Cookies ablehnt oder eine Antiviren-Software auf Ihrem
Rechner Session-Cookies blockiert.</p>

<p>Auch Umlaute im Passwort oder Benutzernamen können dazu führen, dass Ihr
Passwort nicht korrekt abgeglichen werden kann. In manchen Fällen
kann es helfen, wenn Sie in Ihrem Browser alle Cookies löschen,
die in Verbindung mit Ihrer Blog-URL gespeichert sind, dann den
Browser neu starten und sich so neu einloggen können.</p>

</section><!-- section.sub end -->

<section id="U412" class="sub">
<span class="u-toc">4.1.2 - Passwort vergessen</span>

<h3 class="subsection" id="passwort-vergessen">Passwort vergessen</h3>

<p class="tagging invisible">
<span class="tag-box invisible">
    <span class="inline-tag">Fehler!Passwort vergessen</span>
    <span class="inline-tag">Passwort!vergessen</span>
</span>
</p>

<p>Serendipity speichert Ihr Passwort aus Sicherheitsgründen nicht im
Klartext in der Datenbank ab. Sollte man daher sein Passwort vergessen
haben, kann man dieses nicht einfach irgendwo nachschlagen, sondern muss
das Passwort neu setzen.</p>

<p>Bis Serendipity 1.5 verwendete Serendipity MD5-Hashes um Ihre
Passwörter für Logins in der Datenbanktabelle <code>serendipity_authors</code> zu sichern.</p>

<p>Da aber die Mechanismen MD5-Hashes mit Rainbow-Tabellen zu knacken,
oder sogar "Wörterbuch Hash" -lookups immer mehr zunahmen und immer populärer wurden,
vollzog Serendipity schon im Jahre 2009 den Schritt [*]
<span class="footnote"><i class="fa fa-info-circle"></i> <a href="http://blog.s9y.org/archives/205-hash.html" target="_blank" rel="noopener">http://blog.s9y.org/archives/205-hash.html</a></span><!-- footnote -->
, den Serendipity-Hashing-Mechanismus auf einen <em>gesalzenen</em> und sicheren <em>SHA1</em>-Hash zu erhöhen.
Damit wurde es aber unmöglich per phpMyAdmin mal eben so ein Passwort in der Datenbanktabelle zu ersetzen.</p>

<p>Später, in 2018/Q1, wurde der Hashing-Mechanismus noch einmal erhöht und benutzt jetzt BCRYPT.</p>

<p>Serendipity, mit seinem Anspruch höchster Rückwärts-Kompatibilität,
nutzte für diese Modernisierung einen "weichen" Upgrade Ansatz.
Neue Serendipity Versionen akzeptierten die alten MD5 Logins einmalig, um dann das vom Benutzer
angegebene Passwort zu verwenden, die sicheren neuen Hashes zu erstellen und in der Datenbank speichern.</p>

<p>Ein Beispiel wie man seit den 2009er Versionen von Serendipity ein Passwort neu setzen kann, liefert folgendes kleines Script,
mit dem sich problemlos arbeiten lässt, wenn man seinen <span class="mbold">Usernamen</span> noch weiß,
oder durch einen Blick in die <code>serendipity_authors</code>-Tabelle herausgefunden hat.
Speichern Sie es im Serendipity root Verzeichnis als <span class="mbold">fixpass.php</span> ab
und rufen Sie es in ihrem Browser auf.
Nach erfolgreichem Update löschen Sie es anschließend wieder von dort.</p>

<p class="tagging invisible">
<span class="tag-box invisible">
    <span class="inline-tag">fixpass.php</span>
</span>
</p>

<pre><code class="php">
    &lt;?php<br>
    $username = "YOURusername";<br>
    $password = "YOURpassword";<br>
    include 'serendipity_config.inc.php';<br>
    echo serendipity_db_query("UPDATE {$serendipity['dbPrefix']}authors SET password = '" . serendipity_hash($password) . "', hashtype=2 WHERE username = '" . serendipity_db_escape_string($username) . "'");<br>
    echo "Password changed."; 
</code></pre>

<p>Das Script enthält zwei Variablen: <code>$username</code> und <code>$password</code>.
Diese Variablen müssen Sie auf Ihre Gegebenheiten anpassen. Tragen Sie
in die Variable <code>$password</code> das neue Passwort (in Anführungszeichen gesetzt)
ein. In die Variable <code>$username</code> müssen Sie logischerweise den Usernamen des Autors setzen.</p>

<p>Versionen vor Serendipity Styx 2.5-beta1 müssen <code>hashtype=1</code> verwenden!</p>

</section><!-- section.sub end -->

<section id="U413" class="sub">
<span class="u-toc">4.1.3 - XSRF/CSRF-Schutz</span>

<h3 class="subsection" id="xsrf-csrf-schutz">XSRF/CSRF-Schutz</h3>

<p class="tagging invisible">
<span class="label invisible" id="XSRF">XSRF</span>
<span class="tag-box invisible">
    <span class="inline-tag">Fehler!Ihr Browser hat keinen gültigen HTTP-Referrer übermittelt</span>
    <span class="inline-tag">XSRF</span>
    <span class="inline-tag">CSRF</span>
</span>
</p>

<p>Bei allen Zugriffen auf das Backend führt Serendipity eine Prüfung durch,
ob Sie berechtigt sind, die gewünschte Aktion (das Löschen von Beiträgen
etc.) durchzuführen.</p>

<p>Eine im Internet derzeit verbreitete Angriffsart ist die sogenannte
<em>Cross-Site Request Forgery</em> (<em>XSRF, CSRF</em>). Dabei enthält eine
fremde Seite ein verstecktes JavaScript. Wenn der Angreifer die Adresse
Ihres Blogs kennt und Sie die fremde Webseite besuchen, könnte diese
über das versteckte JavaScript administrative Aktionen in Ihrem Blog in
Ihrem Namen ausführen. Sozusagen eine bösartige, von Ihnen ungewollte
Fernsteuerung Ihres Blogs. Denn für Ihr Blog erscheint es so, als würden
Sie selbst die Aktion bewusst ausführen.</p>

<p>Um derartigem Missbrauch vorzubeugen, setzt Serendipity zweierlei
Methoden ein.</p>

<p>Die wirkungsvollste ist, dass jede Aktion im Backend durch einen
sogenannten
<span class="tag-box invisible">
    <span class="inline-tag">Token</span>
</span>
<em>Token</em> geschützt wird. Dieser Token wird anhand
Ihrer Logindaten automatisch und zufallsgeneriert erstellt, daher kann er von
böswilligen Angreifern nicht ohne Eindringen in Ihren eigenen Rechner
(oder die Netzwerkverbindung) ausgelesen werden. Wenn eine fremde
Webseite also Ihren Browser fernsteuern möchte, scheitert die Aktion
daran, dass der gültige <em>Token</em> fehlt.</p>

<p>Eine derartige Aktion quittiert Serendipity dann mit der Meldung:</p>

<pre><code class="msg">
    Ihr Browser hat keinen gültigen HTTP-Referrer übermittelt. Dies kann
    entweder daher kommen, dass Ihr Browser/Proxy nicht korrekt konfiguriert
    ist, oder dass Sie Opfer einer <em>Cross Site Request Forgery</em> (XSRF)
    waren, mit der man Sie zu ungewollten Änderungen zwingen wollte. Die
    angeforderte Aktion konnte daher nicht durchgeführt werden.
</code></pre>

<p>Wenn Sie diese Meldung erhalten, obwohl Sie eine Aktion veranlasst haben,
kann dies darauf hinweisen, dass Ihr Browser den Token nicht korrekt
übermittelt hat.
<span class="tag-box invisible">
    <span class="inline-tag">Cookies</span>
    <span class="inline-tag">Fehler!Cookies</span>
</span>
Ein Token wird in einem Browser-Cookie gespeichert,
daher muss Ihr Browser Cookies zwingend akzeptieren. Weiterhin kann die
Fehlermeldung erscheinen, wenn Sie Ihr Backend nicht unter der URL
aufrufen, unter der Sie sich eingeloggt haben [*]
<span class="footnote"><i class="fa fa-info-circle"></i> Beispielsweise
auch, wenn Sie sich über <code>https://www.example.com/serendipity/</code>
eingeloggt haben, aber über <code>http://example.com/serendipity/</code> eine
Aktion aufrufen.</span><!-- footnote -->. Im Zweifelsfall kann es helfen, wenn Sie sich komplett
aus dem Backend ausloggen, im Browser sämtliche Cookies des Blogs löschen
und sich neu einloggen.</p>

<p>Die zweite Sicherheitsmethode besteht darin, dass Serendipity den
<span class="tag-box invisible">
    <span class="inline-tag">HTTP-Referrer</span>
</span>
<em>HTTP-Referrer</em> prüft. Bei jedem Aufruf, den Ihr
Browser tätigt, wird an den Server die URL der vorausgehenden Webseite übermittelt und in
einer sogenannten HTTP-Kopfzeile namens <em>Referrer</em> (<em>Verweis</em>)
gespeichert. Anhand dieses Wertes kann Serendipity erkennen, ob Sie vor
dem Aufruf Ihres Serendipity-Backends möglicherweise eine fremde Webseite
besucht haben. Im regulären Betrieb von Serendipity kann es niemals
vorkommen, dass Sie eine administrative Aktion ausführen, ohne dass der
HTTP-Referrer Ihrer Blog-URL entspricht.</p>

<p>Wenn dieser Fall eintritt, gibt Serendipity ebenfalls die oben genannte
Fehlermeldung aus. Da die <em>HTTP-Referrer</em>-Kopfzeile jedoch laut
Spezifikation kein Pflichtfeld ist und auch gewisse private Informationen
über Sie ausliefert, können Sie in vielen Browsern die Übermittlung
dieser Variable unterdrücken. Dann kann keine Webseite herausfinden,
welche Seite Sie vorher besucht haben - und auch Serendipity kann dies
nicht mehr erkennen.</p>

<p>Am einfachsten ist es, dass Sie in Ihrem Browser die Übermittlung des
HTTP-Referrers für Ihr Serendipity-Blog aktivieren. Wenn dies nicht
möglich ist, können Sie Serendipity nach wie vor betreiben, werden jedoch
die oben genannte Warnmeldung sehen.</p>

<p>Im Gegensatz zur Sicherheitsprüfung durch den <em>Token</em> wird die
Prüfung des <em>HTTP-Referrers</em> jedoch standardmäßig die auszuführende
Aktion <em>nicht</em> abbrechen, damit der Betrieb von Serendipity auch mit
derartig konfigurierten Browsern funktionieren kann. Wenn Sie in Ihrem
Browser die Übermittlung des HTTP-Referrers zulassen, können Sie als
weitere Sicherheitsoption die globale Variable
<code class="nobreak">$serendipity['referrerXSRF']</code> aktivieren - in so einem Fall wird
eine Aktion im Backend abgebrochen, wenn der HTTP-Referrer fehlt (siehe
Seite <span class="pageref"><a href="#referrerXSRF">referrerXSRF</a></span>).</p>

</section><!-- section.sub end -->

</section><!-- section.index end -->

<section id="S420" class="index">
<span class="s-toc">4.2 - Übersicht</span>

<h3 class="section" id="übersicht-1">Übersicht</h3>

<p class="tagging invisible">
<span class="tag-box invisible">
    <span class="inline-tag">Backend!Uebersicht@Übersicht</span>
    <span class="inline-tag">Backend!Menü</span>
</span>
</p>

<p>Nach dem Login befinden Sie sich auf der Übersichtsseite bzw Startseite des Backends.</p>

<figure id="fig-backend">
    <img src="img/backend.png">
    <figcaption>Abbildung 4.2: Verwaltungsoberfläche</figcaption>
</figure>

<p>Die Top-Leiste dient als Navigationsleiste für die <span class="mbold">Backend Startseite</span>,
die <span class="mbold">Eigenen Einstellungen</span>, den Weg <span class="mbold">zum Frontend</span> und für <span class="mbold">das Logout</span>.</p>

<p>Im Menü der linken Seite sehen Sie als Administrator alle
Untermenüpunkte, mit denen sich Serendipity bedienen lässt.</p>

<p>Der eigentliche Inhaltsbereich gab früher nur einen kleinen Begrüßungstext
aus, und der Fußbereich der Seite stellt im Fußbereich die aktuelle
Versionsnummer von Serendipity und PHP dar.
Mit Serendipity 2.0+ wurde in diesen inhaltslosen Raum das "Dashboard"
mit zwei fest- und vorkonfigurierten Dashboard-Containern, welche da sind:
<span class="mbold">letzte Artikel-Kommentare</span> und
<span class="mbold">letzte Artikel-Entwürfe</span>, im Serendipity Kern eingebaut.</p>

<p><strong>Serendipity Styx</strong> sieht vor, diesen oft unnützen Balast
auf ein reduziertes und vernüftiges Maß an Information über die
User-Einstellungen der "Eigenen Einstellungen" wieder zu reduzieren.
Die eigentliche Administration von Kommentaren bzw. Entwurfs-Einträgen
erfolgt sowieso immer besser über deren vorgesehene Hauptseiten!</p>

<p>Das Seitenleisten-Menü selbst ist in mehrere Hauptblöcke unterteilt und hat sich in den verschiedenen Versionen der Serendipity Historie immer wieder auch leicht verändert (¹):</p>

<ul class="simpleList">
    <li><span class="mbold">Inhalt</span> bietet Möglichkeiten zum Bearbeiten von Artikeln und aller Arten von inhaltsbezogenen Funktionen/Plugins.</li>
    <li><span class="mbold">Mediathek</span> gibt Zugriff auf die hochgeladenen Dateien und überhaupt auf die Administration der Mediathek.</li>
    <li><span class="mbold">Aktivität</span> verwaltet alle Arten von Backend Aktivitäten, Kommentare und eingesetzte Plugins
    des Blogs, soweit sie nicht streng artikelbezogen, eine solche Aktivität oder sonstiges sind.</li>
    <li><span class="mbold">Einstellungen</span> umfasst alle Funktionen, die den Zugriff auf
    das Blog und dessen Daten regulieren. Darunter fallen auch das Template/Theme und die Plugin Administration.</li>
    <li><span class="mbold">Benutzerverwaltung</span> umfasst alle Funktionen, die den Zugriff auf Benutzer und das Gruppenmanagement
     beinhalten. Darunter fallen auch zusätzliche Benutzerprofile durch erweiternde Plugins. (¹)</li>
</ul>

<p>¹) Dies ist ein Beispiel einer Veränderung über die Zeit, da die Benutzerverwaltung als eigenständiger Block aus der Einstellungen Block ab Styx 3.6 aus Gründen der Übersichtlichkeit wieder ausgeliedert wurde.</p>

<p>Einige Plugins geben an einigen Stellen des Seitenleisten-Menüs ihre eigenen
Menüpunkte aus. Diese zusätzlichen Menüpunkte führen dann zur jeweiligen
Funktionalität eines Plugins.</p>

<p>&nbsp;</p>

</section><!-- section.index end -->

<section id="S430" class="index">
<span class="s-toc">4.3 - Eigene Einstellungen</span>
<span class="label invisible" id="Eigene Einstellungen">Eigene Einstellungen</span>

<h3 class="section" id="eigene-einstellungen">Eigene Einstellungen</h3>

<p class="tagging invisible">
<span class="tag-box invisible">
    <span class="inline-tag">Backend!Eigene Einstellungen</span>
</span>
</p>

<p>Die <span class="mbold">Eigenen Einstellungen</span> ermöglichen den Zugriff auf alle
Einstellungen, die lediglich für den aktuellen Redakteur von Belang sind.
Jeder Benutzer kann somit seine eigenen, individuellen Einstellungen in
diesem Bereich vornehmen.</p>

<p>Der Bereich ist zweigeteilt in <span class="mbold">Persönliche Einstellungen</span> und
<span class="mbold">Voreinstellungen für neue Einträge</span>. Im ersten Abschnitt legen Sie,
wie bei der Installation bereits geschehen, den Benutzernamen, das
Passwort und den Loginnamen fest.</p>

<p>Damit später Ihr Passwort nur von autorisierten Personen geändert werden
kann, muss für dessen Änderung auch stets das alte Passwort angegeben
werden. Wenn Sie das Passwort nicht ändern wollen, tragen Sie daher in
dem Eingabefeld <span class="mbold">Passwort</span> nichts ein.
<span class="tag-box invisible">
    <span class="inline-tag">Fehler!falsches Passwort</span>
</span>
Beachten Sie bitte, dass einige Browser (zB. Firefox und besonders gerne Chrome) die sogenannte "Automatische
Vervollständigung für Passwort-Felder" unterstützen und möglicherweise
daher automatisch das zuletzt verwendete Passwort im dafür vorgesehenen
Feld eintragen. Sollten Sie also bereits vorausgefüllte Sternchen in dem
Eingabefeld vorfinden, hat diese Ihr Browser eingefügt und nicht
Serendipity. Würden Sie nun direkt auf den Button <span class="mbold">Speichern</span> am
Ende der Seite klicken, bekämen Sie eine Fehlermeldung von Serendipity,
da Ihr Browser das Feld <span class="mbold">Altes Passwort</span> nicht eingetragen hat.</p>

<p>Nach diesen Login-relevanten Feldern folgen weitere Einstellungen:</p>

<p class="desc">
<span class="tag-box invisible">
    <span class="inline-tag">Eigene Einstellungen!E-Mail</span>
    <span class="inline-tag">E-Mail!Benachrichtigungen</span>
</span><!-- tagbox -->
<span class="item mbold">E-Mail</span><!-- menuitem -->
<span class="desc-info">
    Hier tragen Sie Ihre E-Mail-Adresse ein. Diese wird von Serendipity
    an mehreren Stellen verwendet, um Sie über neu eingegangene Kommentare zu
    benachrichtigen oder auch Administratoren des Blogs über den Zugang neuer
    Benutzer zu informieren. Geben Sie die Adresse hier im Format
    <code>name@example.com</code> an, also ohne zusätzliche Formatierungen wie
    <code>"Ihr Name" &lt;name@example.com&gt;</code>.
</span>
</p>

<p class="desc">
<span class="label invisible" id="eigeneeinstellungen-sprache">eigeneeinstellungen-sprache</span>
<span class="tag-box invisible">
    <span class="inline-tag">Eigene Einstellungen!Sprache</span>
    <span class="inline-tag">Sprache!des Blogs</span>
</span><!-- tagbox -->
<span class="item mbold">Sprache</span><!-- menuitem -->
<span class="desc-info">
    <span class="box">
        Die Übersetzung der Systemtexte des Backends und des Frontends richtet
        sich nach der Auswahl in diesem Feld. Beachten Sie dabei, dass die Sprache
        erst nach dem nächsten Klick innerhalb des Backends gewechselt wird und
        nur für Sie gilt. Die globale Sprache stellen Sie in der
        <span class="mbold">Konfiguration</span> ein (siehe Abschnitt
        <span class="reference">Konfiguration, Seite Konfiguration</span>).
    </span>

    <span class="box">
        Die hier eingestellte Sprache gibt lediglich an, welche Übersetzung
        von Serendipity aktiviert wird. Sie sind durch die Festlegung dieser Option
        nicht daran gebunden, Ihre Artikel auch in der gesetzten Sprache zu
        verfassen.
    </span>
</span>
</p>

<figure id="fig-preferences">
    <img src="img/preferences.png">
    <figcaption>Abbildung 4.3: Eigene Einstellungen</figcaption>
</figure>

<p class="desc">
<span class="tag-box invisible">
    <span class="inline-tag">WYSIWYG</span>
    <span class="inline-tag">Eigene Einstellungen!WYSIWYG</span>
</span><!-- tagbox -->
<span class="item mbold">Graphischen WYSIWYG-Editor verwenden</span><!-- menuitem -->
<span class="desc-info">
    <span class="box">
        Serendipity liefert einen WYSIWYG-Editor (siehe Abschnitt <span class="reference">WYSIWYG</span>
        auf Seite <span class="pageref"><a href="#wysiwyg">WYSIWYG</a></span>). Dieser Editor stellt beim Erstellen eines
        Artikels für Ihr Blog erweiterte, einfache Textformatierungen zur
        Verfügung. So können Sie einen Blog-Artikel wie in einem Office-Programm
        erstellen und formatieren.
    </span>

    <span class="box">
        Wenn Sie dies wünschen, aktivieren Sie <span class="mbold">Graphischen
        WYSIWYG-Editor verwenden</span>. Mit Serendipity Styx 3.0 wird im Kern nur noch die sparsame basic Variante ausgeliefert.
        Sollten Sie mehr Komfort benötigen (zB. Einrückungen im der Quelltextansicht und vieles Weitere) sollten sie zusätzlich das
        empfehlenswerte CKEditor Plus event Plugin installieren. Damit werden auch Updates des Rich-Text-Editors zeitnah zur Verfügung
        gestellt.
    </span>

    <span class="box">
        Gut gepflegte WYSIWYG-Editoren funktionieren heutzutage so gut, dass sie uneingeschränkt zu empfehlen sind.
        Frühere Editoren fügten gerade bei intensiven Kopier-/Einfüge-Operationen häufig problematische
        HTML-Konstrukte ein, die die Formatierung in Ihrem Blog durcheinanderbringen könnten.
        Beispielsweise sind dies falsche Zeilenabstände, überflüssige Absätze bis hin zur falschen Platzierung von
        eingebundenen Bildern. Dies Verhalten hat sich über die Jahre aber extrem verbessert.
        Trotzdem bergen Kopieraktionen, wie zB. aus MS Word in den WYSIWYG-Editor, ein gewisses Risiko,
        da damit auch HTML Auszeichnungen völlig verschiedener Art eingeschleppt werden.
        Dies gilt aber für alle Editoren die nicht nur reinen Text bearbeiten.
    </span>

    <span class="box">
        Leider wird Sie nur die Erfahrung lehren, wie ein WYSIWYG-Editor
        einzusetzen ist, ohne Fehler zu produzieren. Generell gilt die Empfehlung,
        Textformatierungen nur mit Bedacht einzusetzen und ab und an den
        WYSIWYG-Editor in den Quelltext-Modus zu versetzen, um zu prüfen, ob sich
        dort überflüssige, leere HTML-Konstrukte befinden.
    </span>

    <span class="box">
        Einige Plugins für Serendipity bieten zudem externe WYSIWYG-Editoren wie
        TinyMCE [*]
        <span class="footnote"><i class="fa fa-info-circle"></i> <a href="http://tinymce.moxiecode.com/" target="_blank" rel="noopener">http://tinymce.moxiecode.com/</a></span><!-- footnote -->,
        CKEditor Plus[*]
        <span class="footnote"><i class="fa fa-info-circle"></i> <a href="https://ckeditor.com/" target="_blank" rel="noopener">https://ckeditor.com/</a></span><!-- footnote -->,
        zur Einbindung an, die in ihrem Funktionsumfang durchaus variieren. Auch diese externen
        Editoren werden nur dann verwendet, wenn die Option <span class="mbold">Graphischen
        WYSIWYG-Editor verwenden</span> aktiviert ist.
        Aufgrund der weiteren Entwicklung von graphischen Editoren in den folgenden Jahren bis Heute, kann aber nur das
        <code>CKEditor Plus</code>-Plugin und vielleicht noch das <code>TinyMCE</code>-Plugin empfohlen werden.
        Grundsätzlich gilt, das <code>CKEditor Plus</code>-Plugin arbeitet sofort, da es alle Komponenten mitbringt und
        automatisch installiert. TinyMCE dagegen ist nur eine Hülle zu Selbstinstallation.
    </span>
</span>
</p>

<p class="desc">
<span class="tag-box invisible">
    <span class="inline-tag">Eigene Einstellungen!WYSIWYG-Buttonleiste</span>
    <span class="inline-tag">Toolbar</span>
</span><!-- tagbox -->
<span class="item mbold">WYSIWYG-Buttonleiste [ Deprecated ]</span><!-- menuitem -->
<span class="desc-info">
    <span class="box">
        Mit Serendipity 2.0+ können Sie hier die vorkonfigurierten Toolbar-Buttonleisten auswählen.
        Es sind die sogenannten Basic- (Reduziert-), Standard- und Full- (Vollständige-)Toolbars und auch noch die
        Standard-Alternative mit unterschiedlicher Menge und Anordnungen der Buttons erhältlich.
        Wählen Sie einfach diejenige aus, die am besten zu Ihnen und ihren Einträgen passt.
        Desweiteren kann man dieselben auch noch erzwingen, wenn man sich einmal eine eigene Toolbar
        im eigenen Theme erstellt hatte und nun wieder zu den Originalen Einstellungen zurück will.
        Lesen Sie dazu über die individuelle Konfiguration (mittels einer individuellen JavaScript-Konfigurationsdatei
        in templates/XXX/admin/ckeditor_custom_config.js) in CKEditor (siehe Seite <span class="pageref"><a href="#wysiwyg">WYSIWYG</a></span> ).
    </span>

     <span class="box">
       <span class="item mbold">Serendipity Styx 3.0</span> wird sich von diesem Konzept aus den
       verschiedensten Gründen komplett verabschieden. Es wird nur noch ein vorkompiliertes und
       auf dem Basic Editor basierendes Binary für einen Rich Text (WYSIWYG) Editor geben, der im
       <code>templates</code> Ordner für alle Zugriffe angesiedelt ist. Es ist nicht vorgesehen,
       und auch nicht ratsam, dieses einfachen Editor mit eigenen Uservarianten zu überschreiben
       und, sollte dies doch geschehen, muss im Falle von Core Updates selber Sorge dafür getragen
       werden. Dafür ist es jetzt auch möglich HTML Kommentare mit einem Editor im Kommentarfenster
       zu erlauben. Im Ganzen stellte sich aber das Vorgehen des 2.x Zweiges als zu kompliziert und
       an- und schwerfällig heraus, da für das Serendipity System wesentliche Änderungen, Vorhaltungen
       und Vorkehrungen getroffen werden mussten, zB. Gegenmaßnahmen von Skript-Injektions, die kein
       normaler User jemals durchblicken konnte.<br>
       Der neue Rich Text Editor wird also nur ein einfaches Paket notwendiger Möglichkeiten mitbringen.
       Sollten Sie im Alltag oder durch besondere Plugin-Kombinationen mehr benötigen, müssen Sie auf
       die empfohlene Event Plugin Variante <span class="item mbold">CKEditor Plus</span> ausweichen.
    </span>
</span>
</p>

<p class="desc">
<span class="label invisible" id="einstellungen-commentnotify">einstellungen-commentnotify</span>
<span class="tag-box invisible">
    <span class="inline-tag">Eigene Einstellungen!Bei Kommentaren benachrichtigen</span>
</span><!-- tagbox -->
<span class="item mbold">Bei Kommentaren benachrichtigen?</span><!-- menuitem -->
<span class="desc-info">Sobald ein Benutzer zu einem Ihrer Blog-Artikel einen neuen Kommentar
verfasst, können Sie per E-Mail benachrichtigt werden.</span>
</p>

<p class="desc">
<span class="tag-box invisible">
    <span class="inline-tag">Eigene Einstellungen!Bei Trackbacks benachrichtigen</span>
</span><!-- tagbox -->
<span class="item mbold">Bei Trackbacks benachrichtigen?</span><!-- menuitem -->
<span class="desc-info">Sobald ein Benutzer zu einem Ihrer Blog-Artikel ein neues Trackback
geschickt hat, können Sie per E-Mail benachrichtigt werden.</span>
</p>

<p class="desc">
<span class="tag-box invisible">
    <span class="inline-tag">Eigene Einstellungen!Standard Dashboard widgets</span>
</span><!-- tagbox -->
<span class="item mbold">Standard Dashboard widgets anzeigen?</span><!-- menuitem -->
<span class="desc-info">Diese Option wurde mit <span class="mbold">Serendipity Styx</span> notwendig,
da diese mit Serendipity 2.0 eingeführten Schnellwerkzeugblöcke für Kommentar und
Entwurfs-Einträge nicht Jedermanns Sache sind, oft unnötig viel Platz und Ressourcen
verschwenden und die eigentlichen Arbeiten viel effektiver auf ihren eigentlich
vorgesehenen Seiten erledigt werden können. Ein "Nein" reduziert das Ganze auf eine Zeile
und die reine Information, so dass Platz für weitere nützliche Dashboard Blöcke zB. über Plugins bleibt.
Diese Option und auch die Standard Dashboard widgets wurden mit Serendipity Styx 3.3.0 entfernt.</span>
</p>

<p class="desc">
<span class="tag-box invisible">
    <span class="inline-tag">Eigene Einstellungen!Vereinfachte Filter</span>
</span><!-- tagbox -->
<span class="item mbold">Vereinfachte Filter</span><!-- menuitem -->
<span class="desc-info">Vielen Benutzer benötigen die erweiterten Funktionen
die Serendipity bereitstellt nicht und sind sogar eventuell überfordert, wenn
zu viele Möglichkeiten ihren Schreibfluss behindern.
Wenn aktiviert, werden Suchformulare und Filteroptionen auf die notwendigen Optionen reduziert.
Ist diese Option deaktiviert, werden alle erweiterten Filteroptionen,
z.b. beim Eintrags-Editor oder der Mediathek, angezeigt.</span>
</p>

<p class="desc">
<span class="tag-box invisible">
    <span class="inline-tag">Eigene Einstellungen!Popups für das Backend verwenden?</span>
</span><!-- tagbox -->
<span class="item mbold">Popups für das Backend verwenden?</span><!-- menuitem -->
<span class="desc-info">Sollen im Backend Popup-Fenster eingesetzt werden?
Wenn deaktiviert (Standard), werden eingebettete modale Dialoge,
z.b. für die Mediathek und die Kategorieauswahl verwendet.</span>
</p>

<p class="desc">
<span class="tag-box invisible">
    <span class="inline-tag">Eigene Einstellungen!Popups in speziellen Bereichen erzwingen</span>
</span><!-- tagbox -->
<span class="item mbold">Popups in speziellen Bereichen erzwingen</span><!-- menuitem -->
<span class="desc-info">Wenn Popups generell deaktiviert wurden,
kann an speziellen Stellen der Einsatz von Popups überschrieben werden.
Dies gilt für echte Fenster-Popups (für <em>"images"</em> über das Eintragsformular
und <em>"comments"</em> in der Kommentarliste über Antwort),
bzw. genau <u>umgekehrt</u> im Verhalten, für modale "Popups"
(<em>categories, tags, links</em>) als (Standard) Einstellung
im Eintragsformular (bzw Administrations Startseite), indem sie
hier für die beiden Ersteren geschrieben und für die drei Letzteren
eben genau <b>nicht</b> aufgeführt werden. Die vollständige (kommaseparierte)
Liste lautet: <code>images</code>, <code>comments</code>,
<code>categories</code>, <code>tags</code>, <code>links</code>.
Ebenso vice versa: Wenn Popups generell erlaubt sind, kann ein Eintrag diesen hier speziell zurücksetzen, zb. für "tags".
Für <span class="mbold">Serendipity Styx</span> lautet die Standard Empfehlung: <code>categories</code>, <code>tags</code>, <code>links</code>.</span>
</p>

<p class="desc">
<span class="tag-box invisible">
    <span class="inline-tag">Eigene Einstellungen!Symbolleiste für das Mediathek-Popup anzeigen?</span>
</span><!-- tagbox -->
<span class="item mbold">Symbolleiste für das Mediathek-Popup anzeigen?</span><!-- menuitem -->
<span class="desc-info">Vielen Benutzer benötigen die erweiterten Funktionen der "Bildbearbeitung"
die Serendipity bereitstellt nicht, wenn sie aus einem Artikel das Mediathek-Popup öffnen
um ein Bild eizufügen, und sind sogar eventuell überfordert, wenn
zu viele Möglichkeiten ihre Konzentration und ihren Schreibfluss behindern. Sollten
Sie jedoch diese Funktionen jedoch auch gerne innerhalb des Popup-Fensters
ausführen wollen, müssen Sie diese Option: <span class="mbold">Symbolleiste für das
Mediathek-Popup anzeigen</span> aktivieren.</span></p>

<p>Der zweite Abschnitt der <span class="mbold">Eigenen Einstellungen</span> stellt
<span class="mbold">Voreinstellungen für neue Einträge</span> ein:</p>

<p class="desc">
<span class="label invisible" id="personal-commentnotifications">personal-commentnotifications</span>
<span class="tag-box invisible">
    <span class="inline-tag">Eigene Einstellungen!Kommentare und Trackbacks dieses Eintrags werden moderiert</span>
    <span class="inline-tag">Kommentarmoderation</span>
</span><!-- tagbox -->
<span class="item mbold">Kommentare und Trackbacks benötigen Moderation</span><!-- menuitem -->
<span class="desc-info">Diese Option stellt ein, ob bei einem neu erstellten Artikel
standardmäßig Kommentare und Trackbacks moderiert werden sollen. Im Falle
einer Moderation muss ein neuer Kommentar oder ein Trackback erst
freigeschaltet werden, bevor er für Besucher angezeigt wird.</span>
</p>

<p class="desc">
<span class="tag-box invisible">
    <span class="inline-tag">Eigene Einstellungen!Kommentare für diesen Eintrag zulassen</span>
</span><!-- tagbox -->
<span class="item mbold">Kommentare für diesen Eintrag zulassen.</span><!-- menuitem -->
<span class="desc-info">Mittels dieser Option wird festgelegt, ob Kommentare zu einem Artikel
erlaubt sind.</span>
</p>

<p class="desc">
<span class="tag-box invisible">
    <span class="inline-tag">Eigene Einstellungen!Neuer Eintrag</span>
    <span class="inline-tag">Veroeffentlichung@Veröffentlichung</span>
    <span class="inline-tag">Entwurf</span>
</span><!-- tagbox -->
<span class="item mbold">Neuer Eintrag</span><!-- menuitem -->
<span class="desc-info">Wenn Sie einen neuen Artikel erstellen, kann dieser entweder als
<span class="mbold">Veröffentlichung</span> oder <span class="mbold">Entwurf</span> gespeichert werden. Nur
veröffentlichte Artikel werden den Besuchern angezeigt, ein Entwurf ist
nur für Redakteure sichtbar.</span>
</p>

<p class="desc">
<span class="tag-box invisible">
    <span class="inline-tag">Eigene Einstellungen!Kategorie</span>
</span><!-- tagbox -->
<span class="item mbold">Kategorie</span><!-- menuitem -->
<span class="desc-info">Um einen Artikel auf eine bestimmte Kategorie
vorselektiert einzustellen, nutzen Sie diese Auswahloption.</span>
</p>

<p class="desc">
<span class="tag-box invisible">
    <span class="label invisible" id="automatic-backup">automatic-backup</span>
    <span class="inline-tag">Eigene Einstellungen!Automatische Speicherung</span>
</span><!-- tagbox -->
<span class="item mbold">Automatische Speicherung aktivieren</span><!-- menuitem -->
<span class="desc-info">Wenn aktiviert, wird der Text von Blog-Einträgen regelmäßig
automatisch im Session-Speicher des Browsers gesichert. Falls der Browser während des
Schreibens abstürzt wird beim nächsten Erzeugen eines Eintrags der verlorene Text wiederhergestellt.
Per default steht diese Option sicherheitshalber auf "Nein", da es mitunter zu unverhofften
Wiederbegegnungen mit Texten kommen kann, die man, wenn man dieses Verhalten nicht explizit
ausgewählt hat und somit erinnert, für einen Systemfehler oder bereits gesicherten Eintrag halten kann.</span>
</p>

<p>Um die vorgenommenen Änderungen an den Einstellungen zu speichern, müssen
Sie auf den Button <span class="mbold">Speichern</span> am Ende der Seite klicken.</p>

<p>&nbsp;</p>

</section><!-- section.index end -->

<section id="S440" class="index">
<span class="s-toc">4.4 - Inhalt</span>

<h3 class="section" id="inhalt">Inhalt</h3>

<p class="tagging invisible">
<span class="tag-box invisible">
    <span class="inline-tag">Inhalt (Bereich)|see{Backend, Inhalt}</span>
    <span class="inline-tag">Backend!Inhalt</span>
</span>
</p>

<p>Der Bereich <span class="mbold">Inhalt</span> enthält sämtliche Menüpunkte, die der
Erstellung und dem Bearbeiten von Blog-Artikeln dienen.</p>

<section id="U441" class="sub">
<span class="u-toc">4.4.1 - Neuer Eintrag</span>

<h3 class="subsection" id="neuer-eintrag">Neuer Eintrag</h3>

<p class="tagging invisible">
<span class="label invisible" id="Neuer Eintrag">Neuer Eintrag</span>
<span class="tag-box invisible">
    <span class="inline-tag">Eintrag!neuer|see{Backend, neuer Eintrag}</span>
    <span class="inline-tag">Backend!neuer Eintrag</span>
    <span class="inline-tag">Artikel!erstellen</span>
</span>
</p>

<p>Der Menüpunkt <span class="mbold">Neuer Eintrag</span> stellt nach der Einrichtung des Blogs
üblicherweise die meistgenutzte Funktionalität zur Verfügung: die einfache Erstellung eines Artikels.
Dahinter verbirgt sich die Eintrags-Maske, die in einem übersichtlich strukturierten Bereich alle
Optionen für einen Artikel darstellt.</p>

<figure id="fig-new_entry">
    <img src="img/new_entry.png">
    <figcaption>Abbildung 4.4: Inhalt: Neuer Eintrag (default PLAIN-TEXT-Editor und aktivem FreeTag Plugin)</figcaption>
</figure>

<p>Die jeweiligen Eingabefelder sind:</p>

<p class="desc">
<span class="tag-box invisible">
    <span class="inline-tag">Eintrag!Titel</span>
</span><!-- tagbox -->
<span class="item mbold">Titel</span><!-- menuitem -->
<span class="desc-info">In diesem Feld wird der Titel des Artikels eingetragen, so wie er auch im
Frontend dargestellt werden soll. Im Titel können Sonderzeichen und
Umlaute enthalten sein, jedoch können keine HTML-Tags dort eingetragen
werden.</span>
</p>

<p class="desc">
<span class="tag-box invisible">
    <span class="inline-tag">Eintrag!Artikelmodus</span>
</span><!-- tagbox -->
<span class="item mbold">Artikelmodus</span><!-- menuitem -->
<span class="tag-box invisible">
    <span class="inline-tag">Veroeffentlichung@Veröffentlichung</span>
    <span class="inline-tag">Entwurf</span>
</span>
<span class="desc-info">Im Auswahlfeld rechts neben dem Titel kann bestimmt werden, ob der
Artikel beim Speichern <span class="mbold">veröffentlicht</span> werden soll oder nur als
<span class="mbold">Entwurf</span> abgelegt wird. Die Standardeinstellung richtet sich nach
der Festlegung in den <span class="mbold">Eigenen Einstellungen</span>. Je nach den Rechten
Ihres Redakteurs kann es sein, dass dieses Auswahlfeld nur die Option
<span class="mbold">Entwurf</span> zulässt. In diesem Fall muss ein Chefredakteur Ihre
Artikel veröffentlichen.</span>
</p>

<p class="desc">
<span class="tag-box invisible">
    <span class="inline-tag">Eintrag!Datum</span>
</span><!-- tagbox -->
<span class="item mbold">Datum</span><!-- menuitem -->
<span class="desc-info">
    <span class="box">
        Das Datum wird in dem Feld unterhalb des Artikeltitels festgelegt. Es
        muss dabei in einem maschinenlesbaren Format gespeichert werden:
        <em>Jahr-Monat-Tag Stunde:Minute</em>. Um die aktuelle Uhrzeit Ihres
        Rechners dort einzufügen, konnten Sie früher auf ein Uhr-Symbol rechts
        neben dem Eingabefeld klicken. Diese Uhr ist mit derselben Funktion in
        die erste Zeile fes Formulares gerückt. Heutzutage mit HTML5 gibt es im
        Datumfeld das <code>date-local</code> Attribut, das einen kleinen Kalender aufklappt
        und das ebensolche Funktion und mehr bietet. Leider handhaben die Browser
        das selbst heute noch unterschiedlich. Zur Not müssen Sie halt selber
        Hand anlegen. Dies ist in solchen Fällen hilfreich, wenn Sie einen
        Artikel überarbeiten (oder einen Artikel im Entwurfsmodus
        veröffentlichen wollen) und dabei die Uhrzeit aktualisieren möchten.
        <span class="box figure-small" id="fig-datetime-local-chrome">
            <img src="img/datetime-local-chrome.png">
            <span class="asfigcaption">&nbsp;&nbsp;Abbildung 4.4-ts: Einträge: Datumfeld (Beispiel für Chrome Browser)</span>
        </span>
    </span>

    <span class="box">
        Mozilla Firefox und andere zeigen hier - je nach Version - etwas Ähnliches,
        oder einen String wie <code>2018-01-10T16:18</code>.
        Lassen Sie sich durch das <code>T</code> (für time) nicht verunsichern.
        Sie müssen sich nicht darum kümmern, auch wenn sie den Timestamp selbst ändern.
    </span>

    <span class="tag-box invisible">
        <span class="inline-tag">Zeitgesteuerte Veröffentlichung</span>
    </span>
    <span class="box">
        Wenn Sie hier einen zukünftigen Zeitpunkt eintragen, wird
        Serendipity einen derart veröffentlichten Eintrag in der Übersicht
        nicht anzeigen. Sobald jedoch der eingetragene Zeitpunkt erreicht wurde,
        wird der Artikel ohne Ihr eigenes Zutun automatisch dargestellt.
        Somit können Sie dieses Eingabefeld auch für eine zeitgesteuerte
        Veröffentlichung nutzen.
    </span>
</span>
</p>

<p class="desc">
<span class="label invisible" id="eintraege-kategorie-dropdown">eintraege-kategorie-dropdown</span>
<span class="tag-box invisible">
    <span class="inline-tag">Eintrag!Kategorie</span>
</span><!-- tagbox -->
<span class="item mbold">Kategorie</span><!-- menuitem -->
<span class="desc-info">
    <span class="tag-box invisible">
        <span class="inline-tag">Eintrag!mehreren Kategorien zuweisen</span>
        <span class="inline-tag">Mehrere Kategorien!zuweisen</span>
    </span><!-- tagbox -->
    <span class="box first">
        Während eine einzelne, bereits gesetzte Kategorie durch einen Klick
        auf ihren angezeigten Namen für den Artikel festgelegt wird, können
        Sie einem Artikel zusätzlich mittels Klick auf den <span class="mbold">Kategorien</span>-Titel
        oder das <span class="mbold">Hamburger</span>-Symbol in der ersten Zeile auch
        mehrere Kategorien zuweisen. 
    </span>

    <span class="box">
        Nach einem Klick auf das Symbol werden Sie - je nach persönlicher
        Einstellung in den <span class="mbold">Eigenen Einstellungen</span> -
        auf ein Popup oder den Kategorienblock des Eintragsformulares weitergeleitet.
        Dort sehen Sie eine Liste aller erstellten Kategorien in hierarchischer Gliederung.
        Mit gedrückter <em>(Strg/Apfel)</em>-Taste und einem linken Mausklick können
        Sie dabei mehrere Kategorien markieren und mit einem zweiten Klick eine
        Markierung auch wieder aufheben. Alle ausgewählten Kategorien werden dabei
        vom Browser markiert dargestellt.
    </span>
</span>
</p>

<p class="desc">
<span class="tag-box invisible">
    <span class="inline-tag">Eintrag!Eintragstext</span>
</span><!-- tagbox -->
<span class="item mbold">Eintrag</span><!-- menuitem -->
<span class="desc-info">
    <span class="box">
        Den größten Platz dieser Seite nimmt das Feld für den eigentlichen
        Artikeltext ein. Je nachdem, ob Sie den <em>WYSIWYG</em>-Editor in den
        <span class="mbold">Eigenen Einstellungen</span> aktiviert haben, sieht dies etwas
        unterschiedlich aus.
    </span>

    <span class="box mda-box">

        <span class="tag-box invisible">
            <span class="inline-tag">Eintrag!ohne WYSIWYG-Editor</span>
        </span><!-- tagbox -->
        <span class="item mbold">Eintrag mit deaktiviertem WYSIWYG-Editor</span><!-- menuitem -->
        <span class="box">
            Bei deaktiviertem <em>WYSIWYG</em>-Editor (siehe obige Abbildung 4.4) sehen Sie ein Feld, in das direkt
            HTML-Code eingetragen wird. Wenn Sie einfachen, unformatierten Text
            schreiben wollen, können Sie diesen hier einfach einfügen. In HTML werden
            Umbrüche nicht durch einen üblichen Zeilenumbruch mittels
            Eingabe-Taste angegeben, sondern mittels des HTML-Tags <code>&lt;br /&gt;</code>.
            Damit Sie aber Artikel trotz HTML-Tags bequem verfassen können, ist
            standardmäßig bei der Serendipity-Installation ein Plugin namens
            <em>Textformatierung: NL2BR</em> aktiviert worden. Dieses kümmert sich beim
            Speichern Ihrer Artikel darum, automatisch den gewohnten Zeilenumbruch in
            einen HTML-Zeilenumbruch umzuwandeln.
        </span>

        <span class="box">
            Rechts oberhalb des Eingabebereichs für den <span class="mbold">Eintrag</span> befindet sich
            eine kleine Symbolleiste, auf der mehrere Buttons verteilt sind. Damit
            können Sie einige Formatierungsoptionen auf Ihren Artikeltext anwenden.
            Geben Sie dazu einen kleinen Text in <span class="mbold">Eintrag</span> ein und markieren Sie ein Wort
            daraus per Maus.
        </span>

        <span class="list">
            <span class="li-item siLi">
                <code class="sub-item">noBR</code>
                <span class="sub-box">
                    Aktiviert einen Block indem das nl2br Plugin nicht aktiv sein darf. Dies ist ratsam, wenn einzelne Textpassagen im Textfeld bereits HTML-formatiert sind.
                </span>
            </span>
            <span class="li-item siLi">
                <code class="sub-item">I</code>, <code class="sub-item">B</code>, <code class="sub-item">U</code>
                <span class="sub-box"><span class="mbold">I</span> formatiert ein Wort <em>kursiv</em>, ein
                    Klick auf <span class="mbold">B</span> formatiert es <em>fett</em>, und ein Klick auf <span class="mbold">U</span>
                    unterstreicht das gewählte Wort.</span>
            </span>
            <span class="li-item siLi">
                <code class="sub-item">Zitat</code>
                <span class="sub-box">
                    markiert einen größeren gewählten
                    Textbereich als Zitat markieren. Gerade bei Blog-Einträgen ist die Form
                    des Zitierens sehr gebräuchlich.
                </span>
            </span>
            <span class="li-item siLi">
                <code class="item">[group: external files]</code>
                <span class="sub-box">
                    Die letzten vier Buttons dienen der Einbindung von externen Dateien und
                    benötigen daher keine vorherige Textauswahl. Ein Klick auf einen der
                    Buttons <span class="mbold">img</span>, <span class="mbold">Mediathek</span> oder <span class="mbold">URL</span> wird an der
                    Stelle, wo sich der Cursor im Text befindet, das gewünschte Objekt einbinden.
                </span>
            </span>
            <span class="li-item siLi">
                <code class="sub-item">img</code>
                <span class="sub-box">
                    bindet ein externes Bild ein. Bei einem Klick auf den Button
                    werden Sie über ein Popup-Fenster aufgefordert, die URL des Bildes
                    einzugeben. Tragen sie die URL vollständig mit <code>http://</code>-Präfix ein.
                    Nach dem Klick auf <span class="mbold">OK</span> wird automatisch der benötigte HTML-Code in
                    Ihren Eintrag eingefügt - so können Sie sich auch direkt merken, wie ein
                    Bild bei Gelegenheit auch manuell eingefügt werden kann.
                </span>
            </span>
            <span class="li-item siLi">
                <code class="sub-item"><img src="images/mlgallery.png"> [Gallery]</code>
                <span class="sub-box">
                    öffnet beim Anklicken ein neues Popup-Fenster, in
                    dem eine Vorschau-Bilderserie als einfache Bildergalerie aus der eigenen Mediathek eingefügt werden kann. Eine
                    detaillierte Beschreibung dieses Popups folgt auf Seite
                    <span class="pageref"><a href="#mediathek-popup">Mediathek-Popup</a></span>.
                </span>
            </span>
            <span class="li-item siLi">
                <code class="sub-item"><img src="images/thumbnail.png"> [Media]</code>
                <span class="sub-box">
                    öffnet beim Anklicken ein neues Popup-Fenster, in
                    dem ein Bild aus der eigenen Mediathek eingefügt werden kann. Eine
                    detaillierte Beschreibung dieses Popups folgt auf Seite
                    <span class="pageref"><a href="#mediathek-popup">Mediathek-Popup</a></span>.
                </span>
            </span>
            <span class="li-item siLi">
                <code class="sub-item">URL</code>
                <span class="sub-box">
                    öffnet ein Eingabefenster, um einen Hyperlink zu einer
                    Webseite einzutragen. Geben Sie dort die URL wieder vollständig mit
                    <code>http://</code>-Präfix ein. Nach dem Klick auf <span class="mbold">OK</span> können Sie
                    zusätzlich die Beschreibung des Hyperlinks eingeben, wie er später dem
                    Benutzer dargestellt wird. Sie können hierbei auch vor dem Klick auf den
                    Button <span class="mbold">URL</span> einen Text in Ihrem Artikel mit der Maus markieren,
                    dieser wird dann beim Einfügen eines Hyperlinks automatisch als
                    Beschreibungstext eingesetzt. Zuletzt fordert Sie der Einfügedialog noch
                    auf, einen <em>title/tooltip</em> zu vergeben. Der Text, den Sie dort
                    eintragen, wird später beim Darüberfahren mit der Maus für den Besucher
                    in einem Info-Popup angezeigt.
                </span>
            </span>
        </span>

    </span><!-- box mda-box Eintrag!ohne WYSIWYG-Editor end -->

    <span class="box mda-box">

        <span class="tag-box invisible">
            <span class="inline-tag">WYSIWYG</span>
            <span class="inline-tag">Eintrag!WYSIWYG</span>
        </span>
        <span class="label invisible" id="wysiwyg">wysiwyg</span>
        <span class="item mbold">Eintrag mit aktiviertem WYSIWYG-Editor</span><!-- menuitem -->
        <span class="box" id="fig-toolbar-cs">
            <img src="img/toolbar-standard-ckecore.bl.png">
            <span class="asfigcaption">Abbildung 4.4a: Inhalt: Neuer Eintrag (aktivierter Kern WYSIWYG-Editor - Basic Toolbar im Dark Mode, Spracheinstellung: EN)</span>
        </span>

        <span class="box">
            Alternativ hier noch einmal die Standard Toolbar des <span class="mbold">CKEditor Plus</span>
            Plugins in der CKEditor Version 4.8 aus dem Dezember 2017.
            Das CKEditor Plus Plugin bietet 3 Auswahlmöglichkeiten für die Toolbar: Standard, Full oder Basic.
        </span>

        <span class="box" id="fig-toolbar-ps">
            <img src="img/toolbar-basic-ckeplus.png">
            <span class="asfigcaption break">Abbildung 4.4d: Inhalt: Neuer Eintrag (aktivierter CKEditor Plus WYSIWYG-Editor - Basic Toolbar).</span>
        </span>

        <span class="box">
            Letztere ist auf einen Einzeiler reduziert und bietet nur die nötigsten Formatierungen.
            Als Beispiel sind hier aber der optionale <code>Codesnippet</code>-Button, der stets
            aktive <code>Mediaembed</code>-Button, das optionale <code>Embed</code>-Snippet-Button
            und 3 Serendipity Plugins (Linktrimmer, Amazonchooser, Emoticonchooser) aktiv gesetzt.
            Wie man sieht, sind solche <em>gehookten</em> Serendipity Plugin Buttons, wie auch die
            beiden für die Bedienung der Mediathek, in Farbe, im Gegensatz zum sonst üblich
            gehaltenen Schwarz.
            Auf die Abbildung der vollständigen Toolbar wurde hier verzichtet, da solche Vollversionen
            in der Praxis wohl kaum genutzt werden. Sie beanspruchen einfach zuviel Platz und man wird
            diese zusätzlichen Funktionen auf einem Blogsystem auch nicht wirklich gebrauchen können.
        </span>

        <span class="box" id="fig-toolbar-ps">
            <img src="img/toolbar-standard-ckeplus.png">
            <span class="asfigcaption">Abbildung 4.4e: Inhalt: Neuer Eintrag (aktivierter CKEditor Plus WYSIWYG-Editor - Standard Toolbar)</span>
        </span>

        <span class="box">
            Ist in Ihren <span class="mbold">Eigenen Einstellungen</span> der WYSIWYG-Editor aktiviert,
            sehen Sie einen Eingabebereich, der aus Microsoft Word oder OpenOffice
            bekannte Bedienelemente abbildet. Die meisten der Symbole werden auf
            einen markierten Text im Artikel angewendet. Wenn Sie mit der Maus
            darüberfahren und etwas warten, wird ein Info-Popup die jeweilige
            Beschreibung des Icons anzeigen.
        </span>

        <span class="box">
            Dabei wird ab Serendipity 2.0+ der im Kern bereits implementierte <em>CKEditor</em> verwendet.
            Die Default Buttons des Editors sind in in schwarzer Schrift/Icon auf grauem Grund gehalten,
            die per Serendipity Plugin dazu installierten Plugins haben ein farbiges Icon. Dazu gehört per Default auch das Mediathek- und das Galerie-Icon.
            Weitere Hinweise zur individuellen Anpassung befinden sich in den Dateien <code>templates/_assets/ckebasic/config.js</code> und <code>templates/_assets/ckebasic_plugin.js</code>.
            Im Einzelnen bedeuten die Buttons und Gruppen Folgendes (Auswahl):
        </span>

        <span class="list">
            <span class="li-item siLi">
                <code class="sub-item">font</code>
                <span class="sub-box">formatiert einen ausgewählten Textbereich mit der im Auswahlfeld gewählten Schriftart.</span>
            </span>
            <span class="li-item siLi">
                <code class="sub-item">size</code>
                <span class="sub-box">formatiert einen ausgewählten Textbereich mit der im Auswahlfeld gewählten Schriftgröße.</span>
            </span>
            <span class="li-item siLi">
                <code class="sub-item">format</code>
                <span class="sub-box">stellt ein, welchem Texttyp ein ausgewählter Textbereich entspricht.
                Überschriften werden später auch als HTML-Überschriften gesetzt.</span>
            </span>
            <span class="li-item siLi">
                <code class="sub-item">B</code>
                formatiert einen ausgewählten Textbereich fett.
            </span>
            <span class="li-item siLi">
                <code class="sub-item">I</code>
                formatiert einen ausgewählten Textbereich kursiv.
            </span>
            <span class="li-item siLi">
                <code class="sub-item">U</code>
                formatiert einen ausgewählten Textbereich unterstrichen.
            </span>
            <span class="li-item siLi">
                <code class="sub-item">S</code>
                formatiert einen ausgewählten Textbereich durchgestrichen.
            </span>
            <span class="li-item siLi">
                <code class="sub-item">x²</code>
                <span class="sub-box">Die beiden <span class="mbold">x</span>-Zeichen mit hoch- und tiefgestellter
                <span class="mbold">2</span> können einen ausgewählten Textbereich entsprechend positionieren</span>
            </span>
            <span class="li-item siLi">
                <code class="sub-item">group: clipboard</code>
                <span class="sub-box">Im letzten Bereich der oberen Symbolleiste befinden sich die Funktionen für die Zwischenablage.
                Ein markierter Text kann hiermit in die Zwischenablage <span class="mbold">kopiert</span> oder <span class="mbold">ausgeschnitten</span>
                und von dort in den Text <span class="mbold">eingefügt</span> werden. Die beiden Pfeile <span class="mbold">zurück</span> und
                <span class="mbold">vor</span> können eine vorherige Aktion rückgängig machen oder wiederherstellen.</span>
            </span>
            <span class="li-item siLi">
                <code class="sub-item">group: textflow</code>
                <span class="sub-box">Der erste Bereich der unteren Symbolzeile ermöglicht es, den Textfluss eines gewählten Absatzes
                zu verändern: <span class="mbold">linksbündig</span>, <span class="mbold">zentriert</span>, <span class="mbold">rechtsbündig</span>
                und <span class="mbold">Blocksatz</span>. Beachten Sie beim Blocksatz, dass dies aufgrund fehlender Browser-Unterstützung
                für Wortumbrüche selten empfehlenswert ist.</span>
            </span>
            <span class="li-item siLi">
                <code class="sub-item">group: textdirection</code>
                <span class="sub-box">Die beiden Symbole mit dem Paragraphen-Symbol können einen markierten Textbereich in eine
                bestimmte Textrichtung (<span class="mbold">links nach rechts</span> oder <span class="mbold">rechts nach links</span>)
                fließen lassen. Dies ist hauptsächlich für arabische Sprachen interessant.</span>
            </span>
            <span class="li-item siLi">
                <code class="sub-item">group: lists</code>
                <span class="sub-box">Im nächsten Bereich befinden sich Icons, die den jeweiligen markierten Text in eine
                <span class="mbold">nummerierte</span> oder <span class="mbold">geordnete</span> Listenaufzählung formatieren können.
                Die Buttons rechts daneben dienen zur <span class="mbold">Einrückung</span> eines Textes.</span>
            </span>
            <span class="li-item siLi">
                <code class="sub-item">group: colors</code>
                <span class="sub-box">Die Textfarbe und Hintergrundfarbe eines markierten Textbereichs stellen Sie über die
                beiden Icons mit dem <span class="mbold">T</span>-Symbol bzw. dem <span class="mbold">Farbeimer</span> ein.
                Bei einem Klick darauf öffnet sich ein Farbauswahlfenster.</span>
            </span>
            <span class="li-item siLi">
                <code class="sub-item">-</code>
                <span class="sub-box">Der Button mit dem horizontalen Strich fügt ein <span class="mbold">Trennzeichen</span>
                in den Text an der aktuellen Cursorposition ein.</span>
            </span>
            <span class="li-item siLi">
                <code class="sub-item">chain</code>
                <span class="sub-box">Der Button mit dem <span class="mbold">Kettensymbol</span> fügt an der aktuellen Cursorposition
                im Text einen Hyperlink ein. Bei einem Klick auf den Button werden Sie in einem Popup-Fenster aufgefordert, das Linkziel
                und die Linkbeschreibung einzutragen. Etwaiger vormarkierter Text wird hierbei als Beschreibung vorausgewählt.</span>
            </span>
            <span class="li-item siLi">
                <code class="sub-item">picture frame [Intern]</code>
                <span class="sub-box">Das Symbol mit dem <span class="mbold">Bilderrahmen</span> ermöglicht das Einfügen eines
                externen Bildes. Bei einem Klick hierauf öffnet sich ein Dialog, in dem Sie die URL eines Bildes sowie weitere Optionen
                eintragen können. Diese sind <span class="mbold">Alternate text</span> (für eine manuell vergebene Bildbeschreibung),
                <span class="mbold">Alignment</span> (für die Ausrichtung des Bildes), <span class="mbold">Border thickness</span>
                (für die Randstärke eines Bildes), <span class="mbold">Horizontal spacing</span> (für den horizontalen Abstand in Pixel
                des Bildes zum Text), <span class="mbold">Vertical spacing</span> (für den vertikalen Abstand in Pixel des Bildes zum Text).
                Bei einem Klick auf <span class="mbold">OK</span> wird das gewählte Bild in den Text eingefügt.</span>
                <span class="sub-box">
                <span class="mbold">Achtung: </span> Aus Gründen der Einbindung und der Besonderheiten der Serendipity Medien Datenbank
                und der HTML-CSS-Auszeichnung ihrer Inhalte, wurde dieser CKEditor eigene Button per CSS deaktiviert, so dass er zwar
                für den Editor weiterhin wirksam, aber weder anklickbar noch sichtbar ist.</span>
            </span>
            <span class="li-item siLi">
                <code class="sub-item"><img src="images/thumbnail.png"> [Media]</code>
                <span class="sub-box">Die komfortablere Art, ein Bild einzufügen, führt über die integrierte Mediathek
                von Serendipity. Das Symbol hierfür befindet sich rechts neben dem Bilderrahmen und soll eine stilisierte
                <span class="mbold">Bilderübersicht</span> in einer Liste darstellen. Ein Klick hierauf öffnet das Mediathek-Popup,
                das auf Seite <span class="pageref"><a href="#mediathek-popup">Mediathek-Popup</a></span> eingehender erklärt wird.</span>
            </span>
            <span class="li-item siLi">
                <code class="sub-item"><img src="images/mlgallery.png"> [Gallery]</code>
                <span class="sub-box">
                    Mit Styx haben Sie die Möglichkeit an dieser Stelle eine einfache Bildergalerie einzufügen.
                    Dieser Button öffnet beim Anklicken ein neues Popup-Fenster, in
                    dem eine Vorschau-Bilderserie als einfache Bildergalerie aus der eigenen Mediathek eingefügt werden kann. Eine
                    detaillierte Beschreibung dieses Popups folgt auf Seite
                    <span class="pageref"><a href="#mediathek-popup">Mediathek-Popup</a></span>.
                </span>
            </span>
            <span class="li-item siLi">
                <code class="sub-item">table</code>
                <span class="sub-box">Über den Button <span class="mbold">Tabelle</span> lässt sich eine HTML-Tabelle einbinden.
                Dies ist leider relativ komplex gelöst und erfordert viel Fingerspitzengefühl bei der Einrichtung einer Tabelle,
                da Spalten- und Zeilenanzahl vorher festgelegt werden müssen. Eine Tabelle kann nach ihrem Einfügen im Eingabetext selber
                gefüllt werden.</span>
            </span>
            <span class="li-item siLi">
                <code class="sub-item">&lt;&gt;</code>
                <span class="sub-box">Der letzte Button <span class="mbold">&lt;&gt;</span> hat eine ganz besondere Bedeutung:
                Er schaltet vom normalen WYSIWYG-Modus in den HTML-Modus um. Sobald der HTML-Modus aktiviert ist, kann man sozusagen
                einen Blick <em>hinter die Kulissen</em> werfen und prüfen, wie der Editor die eigenen Eingaben in HTML umsetzt.
                Wenn man sich mit HTML etwas auskennt, kann man hier möglicherweise manuell einige Fehler beheben, die der WYSIWYG-Editor
                bei einigen Operationen einfügen könnte. Während der HTML-Modus aktiv ist, sind alle weiteren Optionen des WYSIWYG-Editors
                so lange ausgeblendet, bis der HTML-Modus durch erneuten Klick wieder deaktiviert wird.</span>
            </span>
            <span class="li-item siLi">
                <code class="sub-item">min/max</code>
                <span class="sub-box">Der Button rechts neben dem HTML-Modus ermöglicht das Öffnen eines Popup-Fensters,
                in dem man den Text des Artikels in einem größeren Bereich bearbeiten kann. Diese Ansicht muss man mit erneutem Klick
                auf den Button wieder schließen, um die Änderungen in das Serendipity-Fenster zu übernehmen.</span>
            </span>
            <span class="li-item siLi">
                <code class="sub-item">?</code>
                öffnet eine kleine Informationsseite von CKEditor.
            </span>
        </span>

        <span class="box">
            Im Textbereich können Sie wie gewohnt Text eintippen. Wenn Sie die
            <em>(Enter)</em>-Taste drücken, wird ein neuer Absatz begonnen, wenn Sie
            <em>(Shift)</em>+<em>(Enter)</em> drücken, wird ein einfacher Zeilenumbruch
            eingefügt.
        </span>

    </span><!-- box mda-box Eintrag!mit WYSIWYG-Editor end -->

    <span class="box mda-box">

        <span class="tag-box invisible">
            <span class="inline-tag">Fehler!doppelte Zeilenumbrüche</span>
            <span class="inline-tag">Fehler!Leerzeilen vor/nach Tabellen</span>
        </span>
        <span class="item mbold">Eintrags Markup Fehler</span><!-- menuitem -->
        <span class="box first">
            Beachten Sie, dass Sie bei aktiviertem WYSIWYG-Editor das
            Textformatierungs-Plugin <em>Textformatierung: NL2BR</em> (siehe Seite
            <span class="pageref"><a href="#nl2br">nl2br</a></span>) besser deinstallieren sollten. Andernfalls könnte es
            zu doppelten Zeilenumbrüchen kommen oder bei Tabellen zu überflüssigen
            Zeilenumbrüchen vor/nach der Tabelle. Alternativ können Sie das
            NL2BR-Plugin auch gezielt nur für einzelne Artikel deaktivieren, indem
            Sie es mithilfe des Plugins <em>Erweiterte Eigenschaften von
            Artikeln</em> (siehe Seite <span class="pageref"><a href="#entryproperties">entryproperties</a></span>) in den
            <span class="mbold">Erweiterten Optionen</span> des jeweiligen Artikels aus der Liste
            auswählen. Ab <span class="item mbold">Serendipity 2.0</span> sorgt das mitgelieferte <code>entryproperties</code>-Plugin aber automatisch dafür,
            dass die Nutzung des WYSIYWG Editors selbstständig erkannt und die Nutzung von NL2BR per Eintrag ausgeschaltet wird.
        </span>

    </span><!-- box mda-box Eintrag!Fehler!doppelte Zeilenumbrüche end -->

</span>
</p>

<p class="desc">
<span class="tag-box invisible">
    <span class="inline-tag">Eintrag!Kommentar-Optionen</span>
    <span class="inline-tag">Kommentarmoderation</span>
</span><!-- tagbox -->
<span class="item mbold">Kommentar-Optionen</span><!-- menuitem -->
<span class="desc-info">Unterhalb des Eingabebereichs für den Text,
im Klappmenu: <span class="mbold">Eintrags Metadaten</span>,
gibt es ein Kommentar Optionsfeld mit zwei Optionen, mit denen man
steuern kann, ob Kommentare zu diesem Artikel zugelassen sind, und
wenn ja, ob diese Kommentare nach dem Abschicken durch den Besucher
erst von einem Redakteur freigeschaltet werden müssen.
Die Voreinstellung dieser beiden Optionen wird in den
<span class="mbold">Eigenen Einstellungen</span> vorgenommen.</span>
</p>

<p class="desc">
<span class="tag-box invisible">
    <span class="inline-tag">Eintrag!Aktionen</span>
    <span class="inline-tag">Eintrag!Vorschau</span>
</span><!-- tagbox -->
<span class="item mbold">Aktionen</span><!-- menuitem -->
<span class="desc-info">
    <span class="box">
        Rechts oben in der ersten Zeile des Eintragsformulares befinden sich außerdem
        zwei Aktions-Buttons. Der Button <span class="mbold">Vorschau</span> lädt die Seite neu und
        zeigt oberhalb der Erfassungsmaske eine Voransicht des gerade
        erstellten Artikels an. Die Voransicht ist nur eine vage Annäherung,
        wie der Artikel später im Blog aussehen wird, kann aber dennoch als grobe
        Richtlinie dienen, um dessen Formatierung zu prüfen.
    </span>

    <span class="box">
        Mittels des Buttons <span class="mbold">Speichern</span> wird ein Artikel im System
        gespeichert. Sollte vor einem Klick auf diesen
        Button der Computer abstürzen, sind die Einträge unwiderruflich verloren.
        Daher empfiehlt es sich sehr, einen längeren Artikel erst in den
        <span class="mbold">Entwurfs-Modus</span> zu setzen und zwischendurch häufiger zu speichern,
        oder alternativ den Text in einem normalen Schreibprogramm vorzutippen.
    </span>

    <span class="box">
        Was beim Speichern eines Artikels geschieht, erfahren Sie auf Seite
        <span class="pageref"><a href="#Eintrag-speichern">Eintrag-speichern</a></span>.
    </span>
</span>
</p>

<p class="desc">
<span class="label invisible" id="erweiterter-eintrag">erweiterter-eintrag</span>
<span class="tag-box invisible">
    <span class="inline-tag">Eintrag!Erweiterter Eintrag</span>
    <span class="inline-tag">Teaser</span>
</span><!-- tagbox -->
<span class="item mbold">Erweiterter Eintrag</span><!-- menuitem -->
<span class="desc-info">
    <span class="box">
        Der Artikeltext, den Sie im Bereich <span class="mbold">Eintrag</span> verfasst haben, wird später im
        Frontend vollständig auf den Übersichtsseiten angezeigt. Dieser Text stellt somit
        einen <em>Teaser</em> [*]
        <span class="footnote"><i class="fa fa-info-circle"></i> Ein Teaser ist ein Kurztext, der dem
        Leser einen Vorgeschmack auf die ausführliche Fassung geben soll.</span><!-- footnote --> dar.
    </span>

    <span class="box">
        Der vollständige Text eines Artikels kann im Bereich <span class="mbold">Erweiterter
        Eintrag</span> verfasst werden. Der hier eingegebene Text wird später im
        Frontend erst auf der Detailseite eines Artikels angezeigt und ist
        auch standardmäßig nicht im RSS-Feed enthalten.
    </span>

    <span class="box">
        Bei der Ansicht der Detailseite eines Artikels wird der normale
        Artikeltext zusätzlich angezeigt. Verfassen Sie daher Ihre Beiträge so,
        dass die beiden Textbereiche ineinander übergehen.
    </span>

    <span class="box">
        Der Bereich <span class="mbold">Erweiterter Eintrag</span> ist identisch formatiert wie
        der normale <span class="mbold">Eintrag</span>. Sie können diesen erweiterten Bereich
        mittels des <span class="mbold">Ausklappmenus</span> ein- und ausklappen.
    </span>
</span>
</p>

<p class="desc">
<span class="tag-box invisible">
    <span class="inline-tag">Erweiterte Optionen</span>
    <span class="inline-tag">Eintrag!Erweiterte Optionen</span>
</span><!-- tagbox -->
<span class="item mbold">Erweiterte Optionen</span><!-- menuitem -->
<span class="desc-info">Unterhalb des erweiterten Eintrags
und des Ausklappmenus Eintrags Metadaten, befindet sich ein Block
mit dem Titel <span class="mbold">Erweiterte Optionen</span>. Hier werden
diverse Optionen von eingebundenen Plugins angezeigt, und auch
eigene Plugins können an dieser Stelle eingebunden werden. Die
angebotenen Optionen an dieser Stelle können Sie der jeweiligen Erklärung
der Plugins in den folgenden Kapiteln entnehmen.</span>
</p>

<p class="desc">
<span class="tag-box invisible">
    <span class="inline-tag">Mediathek!Popup</span>
    <span class="inline-tag">Eintrag!Mediathek-Popup</span>
</span>
<span class="label invisible" id="mediathek-popup">Mediathek-Popup</span>
<span class="item mbold">Mediathek-Popup</span><!-- menuitem -->
<span class="desc-info">
    <span class="box">
        Das Mediathek-Popup ist ein Fenster, das sich an mehreren Stellen
        von Serendipity öffnen lässt, vor allem beim Einfügen von Bildern bei der
        Artikel-Erstellung.
    </span>

    <span class="box" id="fig-ml_popup">
        <img src="img/ml_popup.png">
        <span class="asfigcaption">Abbildung 4.5: Mediathek-Popup zum Einfügen einer Datei</span>
    </span>

    <span class="box">
        Das Popup-Fenster enthält eine vereinfachte Ansicht der Mediathek
        Serendipitys. Abhängig von der Option <span class="mbold">Symbolleiste für das
        Mediathek-Popup anzeigen</span> in den <span class="mbold">Eigenen Einstellungen</span> wird
        Ihnen jedoch zusätzliche Funktionalität angeboten, die im Kapitel
        <span class="reference">Mediathek</span> auf Seite <span class="pageref"><a href="#mediathek">Mediathek</a></span> detailliert
        beschrieben wird.
    </span>

    <span class="box">
        Solange das Popup-Fenster geöffnet ist, sollten Sie im Ursprungsfenster
        von Serendipity keine Änderungen vornehmen. Sollten Sie dies tun, kann
        das Popup-Fenster ein ausgewähltes Bild nicht mehr an den ursprünglich
        vorgesehenen Platz stellen.
    </span>

    <span class="box">
        Standardmäßig sehen Sie die Bilder aller Verzeichnisse in chronologischer
        Reihenfolge, also unabhängig von einem gewählten Verzeichnis.
        In dieser Dateiübersicht sehen Sie jeweils Vorschaubilder für alle
        hochgeladenen Dateien. Auch können dort Nicht-Bilddateien
        (Word-Dokumente, PDF-Dateien, ZIP-Archive ...) angezeigt werden.
    </span>

    <span class="box">
        Wenn Sie eine bestimmte Datei suchen, werden Ihnen die Filteroptionen der
        Mediathek sehr hilfreich sein. Diese sind ebenfalls detailliert im
        Kapitel <span class="reference">Mediathek</span> ab Seite <span class="pageref"><a href="#mediathek-filter">Mediathek Filter</a></span>
        beschrieben.
    </span>

    <span class="box">
        Da wir das Popup-Fenster nur aufgerufen haben, um ein Bild
        auszuwählen, dient die Dateiübersicht der einfachen Auswahl jenes Bildes.
        Ein Klick auf eines der Vorschaubilder führt zu einer Folgeseite, in der
        Sie bestimmen können, wie das Bild eingefügt werden soll. Abhängig vom
        Kontext, in dem Sie das Popup-Fenster aufgerufen haben, kann es sein, dass
        die Folgeseite nicht erscheint, sondern das Objekt direkt in die
        aufrufende Seite eingetragen wird. Auch wenn Sie eine einfache Datei
        anstelle eines Bildes einfügen wollen, wird die Folgeseite nicht
        erscheinen, sondern die Datei wird direkt in den Artikel eingebunden.
    </span>

    <span class="tag-box invisible">
        <span class="inline-tag">Formatierung!Bilder</span>
    </span>
    <span class="box" id="fig-ml_popup2">
        <img src="img/ml_popup2.png">
        <span class="asfigcaption">Abbildung 4.6: Mediathek-Popup zur Formatierung einer eingefügten Datei</span>
    </span>

    <span class="box">
        Auf dieser Folgeseite sehen Sie im oberen Bereich, für welche Datei Sie
        sich entschieden haben. Die kleine Vorschaugrafik wird ebenfalls dargestellt.
    </span>

    <span class="box">
        Es folgen nun einige Bereiche, in denen Sie das Layout des eingefügten
        Bildes bestimmen:
    </span>

    <span class="box mda-box">

        <span class="sub-box">Bei dem Bereich der <span class="mbold">Bildgröße</span> legen Sie fest, ob nur das kleine
        Vorschaubild eingefügt werden soll oder das Bild in seiner
        Originalgröße.</span>

        <span class="sub-box">Über die <span class="mbold">Bildausrichtung</span> bestimmen Sie, wie das Bild im Text des
        Artikels arrangiert wird. Dabei wird das Layout durch eine kleine Grafik
        visuell dargestellt. Die erste Option richtet ein Bild oberhalb eines
        Absatzes, also für sich allein stehend aus. Die zweite Möglichkeit
        bettet ein Bild so ein, dass es vom folgenden Text
        linksbündig umflossen wird. Die letzte Möglichkeit bindet ein Bild so
        ein, dass es innerhalb des Textes rechtsbündig dargestellt wird.</span>

        <span class="sub-box">Im Abschnitt <span class="mbold">Bild als Link</span> können Sie zusätzlich einen Link auf
        ein Bild legen. Bei einem Klick auf ein Bild wird dann die
        eingetragene URL aufgerufen. Standardmäßig wird der Dateipfad zu der
        großen Version eines Bildes in dem Eingabefeld <span class="mbold">Das Bild soll
        hierhin linken:</span> eingefügt. Über die Option <span class="mbold">Ziel dieses Links</span> kann
        man einstellen, wie dieser Link im Browser geöffnet wird.
        <span class="mbold">Popup-Fenster (JavaScript)</span> wird das Bild in einem Fenster öffnen,
        das sich der Bildgröße genau anpasst. <span class="mbold">Eigenständige Seite</span> wird
        eine spezielle Frontend-Seite öffnen, die ausschließlich Ihr Bild im
        umgebenden Layout und mögliche Meta-Daten eines Bildes anzeigt.
        Die Option <span class="mbold">Popup-Fenster (target=_blank)</span> nutzt eine einfachere
        Version eines Popup-Fensters, die auch ohne aktiviertes JavaScript des
        Besuchers ein neues Fenster öffnen kann.</span>

        <span class="sub-box">Zuletzt haben Sie noch die Möglichkeit, zu einem Bild eine
        Bildunterschrift in das Feld <span class="mbold">Kommentar</span> hinzuzufügen. Dieses wird
        dann im Artikel später dem Bild zugehörig angezeigt.</span>

    </span>

    <span class="box" id="fig-ml_galpopup">
        <img src="img/ml_galpopup.png">
        <span class="asfigcaption">Abbildung 4.7: Mediathek-Popup zum Einfügen einer Galerie</span>
    </span>

    <span class="box">
        Die hier gezeigte <span class="mbold">Abbildung 4.7</span> zeigt das Popup-Fenster
        das mit dem Styx Galerie Button geöffnet wird. Wie Sie sehen, sieht das ähnlich zum
        normalen Fenster aus, mit dem Unterschied, dass sie verkleinerte Bild-Vorschauen
        eines Ordners, je nach Einstellung und Auswahl der Anzeige von Dateien aus
        Unterverzeichnissen in der Sortierung, angezeigt bekommen. Die strikte Sortierung
        auf eine Ordnerebene ist hier anzuraten (und ist deshalb im Galeriefall strikte und
        gesetzte Voraussetzung), da aus Performancegründen nur eine bestimmte Anzahl von 48 Elementen
        angezeigt werden. Die Auszeichnung der Seite und Markup Elemente für Bildkommentare etc.
        bleibt wie gehabt. Sie können allerdings keine bestehenden Galerie-Selektierungen erweitern,
        so dass Sie im Falle des Falles im Quellcode die alte Selektierung löschen müssen,
        um dann eine neue mit der gewünschten Vervollständigung vornehmen zu können.
        Wie Sie sich vorstellen können, ist es also ratsam eine saubere Ordner- und Dateistruktur
        in der Mediathek angelegt zu haben. <span class="mbold">Serendipity Styx</span> hat besonderen Wert darauf gelegt,
        die Möglichkeiten einen tiefen Dateistruktur und ihrer Medien-Administrations-Aufgaben,
        wie Verschieben, Umbenennen, Ändern in Einträgen, etc zu verbessern, auszuarbeiten
        und vorhandene Bugs auszumerzen.
    </span>

    <span class="box">
        Wenn Sie abschließend auf <span class="mbold">Fertig</span> klicken, wird das Bild, bzw. die Galerie an die
        aufrufende Stelle (textarea) von Serendipity zurückgeliefert und mittels HTML-Code
        eingebunden. Dort können Sie es gegebenenfalls auch noch innerhalb des
        Eintrages verschieben und anpassen.
    </span>

    <span class="tag-box invisible">
        <span class="inline-tag">Fehler!Einfügen von Bildern</span>
    </span>
    <span class="box">
        Sämtliche Einfügeoperationen des Mediathek-Popups benötigen
        JavaScript. Sollte das Einfügen bei Ihnen also fehlschlagen, prüfen Sie,
        ob Sie JavaScript im Browser korrekt aktiviert haben. Auch
        mögliche Popup-Blocker oder die Firefox-Erweiterung <em>NoScript</em> könnten
        den erfolgreichen Aufruf der Mediathek verhindern.
    </span>

    <span class="box">
        Wenn Sie gerne ein Bild einfügen möchten, das Sie noch nicht in die
        Mediathek hochgeladen haben, dann müssen Sie dafür nicht extra auf
        den Menüpunkt <span class="mbold">Medien hinzufügen</span> im Hauptmenü klicken.
        Stattdessen ermöglicht es das Mediathek-Popup in der Bildübersicht,
        direkt, mittels Klick auf den Button <span class="mbold">Medien hinzufügen</span> eine
        neue Datei von Ihrem Computer hochzuladen. Diese Datei wird dann direkt
        für die Folgeseite zur Bestimmung der Einfügungsoptionen übernommen, was
        Ihnen einiges an Klickarbeit abnimmt.
    </span>

    <span class="box">
        Details zum Hochladen von Dateien finden Sie im Kapitel <span class="reference">Medien
        hinzufuegen</span> auf Seite <span class="pageref"><a href="#Medien hinzufuegen">Medien hinzufügen</a></span>,
        die auch für das Mediathek-Popup gelten.
    </span>
</span>
</p>

<p class="desc">
<span class="tag-box invisible">
    <span class="inline-tag">Eintrag!speichern</span>
</span>
<span class="label invisible" id="Eintrag-speichern">Eintrag-speichern</span>
<span class="item mbold">Speichern eines Eintrags</span><!-- menuitem -->
<span class="desc-info">
    <span class="tag-box invisible">
        <span class="inline-tag">picture-container</span>
        <span class="inline-tag">medien-speichern</span>
    </span>
    <span class="box">
        Je nachdem, ob Sie nun ein einzelnes Bild mit fest definiertem Format als einfaches
        &lt;img...&gt; in ihren Blogeintrag einfügen wollen, oder ob dies über das
        fortschrittlichere &lt;picture...&gt; container HTML Format erfolgen soll, müssen
        Sie nun selbst im <em>Speichern Dialog</em> entscheiden.
        Im Kapitel Mediathek auf Seite <span class="pageref"><a href="#mediathek">4.5 - Mediathek</a></span>,
        lernen Sie was Letzteres vom Ersten unterscheidet.
        Um es kurz zu machen, schicken Sie mit dem container Format mehrere Bilder
        zur Auswahl an denjenigen Browser, der es später auf Besucherseite laden und
        darstellen soll.
        Dieser wird immer das kleinste Format wählen, das die &lt;source... srcset...&gt;
        Zeilen bereitstellen und damit die Ladezeit ihres Blogs erheblich beschleunigen.
        Je weniger groß (MB / KB) eine zu ladende Datei ist, desto schneller wird sie
        natürlich auch übertragen. Ihre Besucher (ebenso wie Suchmaschinen) werden es
        Ihnen danken!
    </span>

    <span class="box" id="fig-ml_popup2-end.png">
        <img src="img/ml_popup2-end.png">
        <span class="asfigcaption">Abbildung 4.6e: Mediathek-Popup zum Einfügen von Bildern als &lt;img...&gt; oder über &lt;picture...&gt; container HTML tags</span>
    </span>

    <span class="box">
        Woher kommen aber nun diese unterschiedlichen Größen und Formate? Sie werden beim
        <span class="mbold">upload</span> der Bilder automatisch vom System erzeugt und in
        relativen Unterverzeichnissen "<span class="mbold">.v/</span>" des aktuellen Bildes
        in der Mediathek "<span class="mbold">versteckt</span>" gespeichert. Dies sind WebP
        (<span class="mbold">webp</span>) Format Dateien und die brandneuen AV Image File
        (<span class="mbold">avif</span>) Dateien, wenn Sie Letztere über die Image
        Konfiguration selbst zur Nutzung erlaubt haben.
        Solche Dateien sind also nur als "interne Erweiterung" der Mediathek zu verstehen.
        Sie selbst, als Backenduser, greifen nur indirekt auf diese zu, obwohl sie, woweit
        vorhanden, überall wo ein Bild der Mediathek [*]
        <span class="footnote"><i class="fa fa-info-circle"></i> Auch die Template(s) Vorschau
        Bilder gehorchen bereits diesem neuen Prinzip.</span><!-- footnote --> im Backend
        angezeigt wird, wie auch der Mediathek selbst, auch schon eifrig benutzt werden.
        Dies geschieht über die genannten &lt;picture...&gt; container, so dass auch das
        Backend schon sehr eindeutig vom schnelleren Ladeverhalten durch dieses HTML Container
        Format profitiert.
        Das Kapitel Mediathek auf Seite <span class="pageref"><a href="#mediathek">4.5 - Mediathek</a></span>
        und folgend, bringt Sie diesbezüglich auf den letzten Stand.
    </span>

    <span class="box">
        Wenn Sie einen Beitrag speichern, wird Serendipity in einem eigenen Bereich
        einige Aktionen durchführen.
        Zuerst wird der Artikel vollständig in der Datenbank gespeichert. Danach
        können etwaige Plugins ausgeführt werden, die individuelle Funktionen auf
        den Artikel anwenden und ihn umwandeln. So könnte ein Plugin zB. den
        neuen Artikel an Google und andere Suchmaschinen wie Technorati
        übermitteln, oder der Text könnte auf korrekte Syntax geprüft werden.
    </span>

    <span class="tag-box invisible">
        <span class="inline-tag">Trackbacks</span>
    </span>
    <span class="box">
        Sollte der Artikel als Veröffentlichung gespeichert sein, wird in einem
        weiteren Schritt der Artikeltext automatisch nach allen enthaltenen
        Hyperlinks durchsucht. Jeder gefundene Hyperlink wird daraufhin von
        Serendipity aufgerufen und geprüft, ob ein Trackback (siehe Seite <span class="pageref"><a href="#trackback">trackback</a></span>)
        an diese Adresse gesendet werden soll. Für jede gefundene URL wird auf
        dem Bildschirm eine Nachricht ausgegeben, ob ein Trackback an diese URL
        geschickt werden konnte.
    </span>

    <span class="box">
        Auch etwaige Fehlermeldungen werden Ihnen beim Speichern an dieser Stelle
        angezeigt. Der Prozess endet mit einer Meldung Serendipitys, dass der
        Eintrag gespeichert wurde. Falls der Artikel direkt veröffentlicht wurde,
        können Sie die URL mit diesem Artikel direkt anklicken.
    </span>

    <span class="box">
        Wenn Serendipity lediglich den Entwurf eines Beitrags gespeichert hat,
        wird keine Trackback-Analyse durchgeführt, und Serendipity meldet nach dem
        Speichern, dass der Entwurf eines Artikels gespeichert wurde.
    </span>

    <span class="tag-box invisible">
        <span class="inline-tag">Fehler!beim Speichern von Einträgen</span>
    </span>
    <span class="box">
        Sollten Sie nach dem Speichern eines Artikels keine solche Meldung
        erhalten, bedeutet dies möglicherweise, dass der Webserver Fehler
        verursacht hat. In diesem Fall sollten Sie die Fehler-Logfiles des
        Servers prüfen, da hierfür meist Netzwerk-Verbindungsprobleme oder
        Firewalls zuständig sind. In so einem Fall müssten Sie möglicherweise die
        Trackback-Funktionalität deaktivieren (siehe Seite <span class="pageref"><a href="#commentphp">commentphp</a></span>).
    </span>

    <span class="box">
        Um vorab Probleme mit verlorenen Artikeltexten zu vermeiden, können Sie die auf
        Seite <span class="pageref"><a href="#automatic-backup">automatic-backup</a></span> beschriebenen Maßnahmen einsetzen.
    </span>

    <span class="box">
        Nach dem Speichern landen Sie erneut auf der
        Seite zur Bearbeitung des Artikels, um gegebenenfalls Änderungen vorzunehmen
        und den Artikel erneut zu speichern.
    </span>
</span>
</p>

</section><!-- section.sub end -->

<section id="U442" class="sub">
<span class="u-toc">4.4.2 - Einträge bearbeiten</span>

<h3 class="subsection" id="einträge-bearbeiten">Einträge bearbeiten</h3>

<p class="tagging invisible">
<span class="label invisible" id="Einträge bearbeiten">Einträge bearbeiten</span>
<span class="tag-box invisible">
    <span class="inline-tag">Backend!Einträge!bearbeiten</span>
    <span class="inline-tag">Eintrag!Bearbeiten</span>
</span>
</p>

<p>Um einen geschriebenen Beitrag später zu bearbeiten, benutzen Sie
den Hauptmenüpunkt <span class="mbold">Einträge bearbeiten</span>. Bei einem Klick auf diesen
Menüpunkt wird eine blätterbare Liste aller geschriebenen Einträge dargestellt.</p>

<p>Bei einem Klick auf den jeweiligen Eintrag gelangt man auf die Seite, in
der man einen <span class="mbold">Neuen Eintrag</span> erstellen kann. Die Felder sind dabei
vorausgefüllt mit den jeweiligen Daten des gewählten Eintrags, und ein
Speichern erstellt keinen neuen Eintrag, sondern überarbeitet den bestehenden.</p>

<p>
<span class="tag-box invisible">
    <span class="inline-tag">ID eines Artikels</span>
    <span class="inline-tag">Artikel-ID</span>
</span>
Die Liste der Einträge stellt in der ersten Zeile den Titel des Artikels
dar. Sollte der Artikel noch nicht veröffentlicht worden sein, wird das
Wort <span class="mbold"><em>Entwurf</em></span> im Listeneintrag grau hinterlegt
auf der rechten Seite eingeblendet.
Wenn Sie mit der Maus über einen Beitragstitel fahren, wird ein Info-Popup
angezeigt, in dem die Artikel-ID angezeigt wird. Diese ID kann an einigen
Stellen des Serendipity-Backends eingetragen werden, unter anderem über den
<em>Stift</em>-Button unter dem Titel dieser Seitenliste zum schnellen Bearbeiten
einer bekannten Artikelnummer oder zur Erstellung eines neuen Artikels.</p>

<p>Unterhalb des Titels wird die Erstellungszeit des Artikels angezeigt.
Wenn rechts daneben das <span class="mbold">Uhrsymbol</span> steht, heißt dies, dass der
Artikel seit seiner Erstellung mindestens einmal überarbeitet wurde. Wenn
Sie mit der Maus über dieses Icon fahren (oder klicken), zeigt ein
Info-Popup den Zeitpunkt der letzten Aktualisierung an.</p>

<figure id="fig-edit_entries">
    <img src="img/edit_entries.png">
    <figcaption>Abbildung 4.7: Inhalt: Einträge bearbeiten</figcaption>
</figure>

<p>In dieser Zeile unterhalb des Titels wird auch angegeben, wer der Eigentümer
eines Artikels ist. Bei Bearbeitung eines Artikels durch andere Redakteure ändert
sich der Eigentümer nicht. Sollte ein Artikel in einer oder mehreren
Kategorien zugeordnet sein, werden alle Kategorienamen nach dem Autornamen
aufgelistet. Ein Klick auf den Kategorienamen ruft die Frontend-Ansicht
der jeweiligen Kategorie auf.</p>

<p>Innerhalb der Box, die den Artikel anzeigt, werden auf der rechten Seite
drei Buttons dargestellt. Der erste Button mit einer <em>Lupe</em>-Symbol zeigt
bei einem Klick abhängig vom Veröffentlichungsstatus entweder die
<span class="mbold">Ansicht</span> oder <span class="mbold">Vorschau</span>
des Artikels im Frontend in einem neuen Fenster an. Der zweite Button stellt
mit dem <em>Stift</em>-Symbol die Möglichkeit bereit, einen Artikel zu bearbeiten
(wie bei einem Klick auf den Artikeltitel).
<span class="tag-box invisible">
    <span class="inline-tag">Eintrag!löschen</span>
</span>
Der Button mit <em>Mülleimer</em>-Symbol löscht einen Artikel
unwiderruflich. Zur Sicherheit werden Sie beim Löschen gefragt, ob Sie
die Aktion wirklich ausführen wollen.</p>

<p>Als Letztes wird eine Auswahlbox neben dem <span class="mbold">Löschen</span>-Button
angezeigt. Hier können Sie mehrere Artikel auswählen, um anschließend am
Seitenende durch den Klick auf <span class="mbold">Markierte Einträge löschen</span> diese
Artikel gesammelt zu löschen.</p>

<p>
<span class="tag-box invisible">
    <span class="inline-tag">Auswahl umkehren</span>
</span>
Der Button <span class="mbold">Auswahl umkehren</span> wird jeden gewählten Artikel
deselektieren und jeden deselektierten Artikel wieder auswählen. Wenn
Sie also einmal alle Artikel bis auf einen löschen wollen, markieren Sie
nur diesen einen Artikel, klicken auf <span class="mbold">Auswahl umkehren</span>, wodurch
automatisch die anderen Artikel ausgewählt werden, und können danach löschen.</p>

<p>
<span class="tag-box invisible">
    <span class="inline-tag">Artikel-ID</span>
</span>
Über den Knopf mit dem <em>Stift</em>-Symbol am Anfang der Seite finden
Sie, wie schon erwähnt, eine Eingabebox, in der Sie die Artikel-ID eingeben
können, um einen Eintrag direkt zu bearbeiten. Alle Artikel in Serendipity
werden bei 1 beginnend automatisch durchnummeriert. Wenn ein Artikel einmal
gelöscht werden sollte, verändert sich die ID aller anderen Artikel nicht, daher
können ggf. Lücken entstehen. Sie sollten mit dem Löschen eines Artikels dennoch
mit Bedacht vorgehen, denn der Sinn eines Blogsystems besteht ja darin, aktuelle
Artikel zu erstellen, die mit der Zeit verdrängt und durch das Weiterrücken
sozusagen archiviert werden. Es ist nicht dazu gedacht, beliebig erstellt und
gelöscht zu werden, wie in einem CMS-System</p>

<p>Am Anfang der Seite neben dem gerade beschriebenen Button-Knopf,
sehen Sie mehrere Filtermöglichkeiten, die die Anzeige der Artikel
beinflussen. Standardmäßig werden Ihnen die chronologisch aktuellsten
Artikel angezeigt. Die Liste ist über die Buttons <span class="mbold">Weiter</span>
und <span class="mbold">Zurück</span> und <span class="mbold">Anfang</span>
und <span class="mbold">Ende</span> ober- und unterhalb der Artikel
blätterbar, sobald genügend Artikel vorhanden sind.</p>

<p>
<span class="tag-box invisible">
    <span class="inline-tag">Eintrag!filtern</span>
    <span class="inline-tag">Eintrag!suchen</span>
</span>
Folgende Filteroptionen sind verfügbar:</p>

<p class="desc">
<span class="item mbold">Autor</span><!-- menuitem -->
<span class="desc-info">Das Auswahlfeld neben der Option <span class="mbold">Autor</span> schränkt die Darstellung
der Artikel auf den ausgewählten Autor ein.</span>
</p>

<p class="desc">
<span class="item mbold">Artikelmodus</span><!-- menuitem -->
<span class="desc-info">Unterhalb des Autors gibt es ein weiteres Auswahlfeld, mit dem Sie
auswählen können, ob nur <span class="mbold">Entwürfe</span>, <span class="mbold">Veröffentlichungen</span> oder
beide Artikelarten angezeigt werden sollen.</span>
</p>

<p class="desc">
<span class="item mbold">Kategorie</span><!-- menuitem -->
<span class="desc-info">Um nur Artikel einer gewissen Kategorie anzuzeigen, können Sie im
Auswahlfeld <span class="mbold">Kategorie</span> die gewünschte Auswahl treffen.</span>
</p>

<p class="desc">
<span class="item mbold">Inhalt</span><!-- menuitem -->
<span class="desc-info">In das Feld <span class="mbold">Inhalt</span> können Sie ein beliebiges Suchwort eingeben,
das in einem Artikeltext (oder dem erweiterten Artikeltext) vorhanden
sein muss. Die Suche berücksichtigt dabei auch Teilworte und ignoriert
die Klein- und Großschreibung, wenn Sie also <code>miet</code>
eingeben, werden auch Artikel angezeigt, die <em>vermieten</em> oder
<em>Mietbüro</em> enthalten.</span>
</p>

<p class="desc">
<span class="item mbold">Sortieren nach</span><!-- menuitem -->
<span class="desc-info">Die Sortierung der gefilterten Artikel bestimmen Sie durch das
Auswahlfeld <span class="mbold">Sortieren nach</span>. Folgende Sortierungsmöglichkeiten
stehen zur Verfügung: <span class="mbold">Datum</span>, <span class="mbold">Veröffentlichung/Entwurf</span>,
<span class="mbold">Autor</span> (Autorname, alphabetisch), <span class="mbold">Kategorie</span> (Kategoriename,
alphabetisch), <span class="mbold">Zuletzt aktualisiert</span>, <span class="mbold">Titel</span> (Artikeltitel,
alphabetisch) und die <span class="mbold">ID</span> eines Artikels.</span>
</p>

<p class="desc">
<span class="item mbold">Sortierung</span><!-- menuitem -->
<span class="desc-info">Die Rangfolge der Sortierung (<span class="mbold">Absteigend</span> oder <span class="mbold">Aufsteigend</span>)
können Sie durch das Auswahlfeld <span class="mbold">Sortierung</span> einstellen. Dadurch
bestimmen Sie, ob die Liste vom <em>aktuellsten/ersten</em> Eintrag bis zum
<em>ältesten/letzten</em> Eintrag sortiert wird oder umgekehrt.</span>
</p>

<p class="desc">
<span class="item mbold">Artikel pro Seite</span><!-- menuitem -->
<span class="desc-info">Standardmäßig enthält die Übersicht die letzten 12 Artikel. Um eine
größere Übersicht zu ermöglichen, können Sie die <span class="mbold">Artikel pro Seite</span>
auf die Werte 12, 16, 15, 50 oder 100 stellen. Beim Blättern wird die jeweilige
Folgeseite ebenso viele Artikel darstellen.</span>
</p>

<p>Ein Klick auf <span class="mbold">Los!</span> führt die gewünschte Filterung aus und zeigt
die daraus resultierende Artikelauswahl in der eingetragenen Sortierung.
Bei Angabe mehrerer Filterkriterien werden diese alle miteinander
<em>UND</em>-verkettet, d.h. es müssen alle Filterbedingungen zutreffen,
damit ein Artikel in der folgenden Liste aufgeführt wird.</p>

<p>Die zuletzt eingestellten Filter- und Sortierungsoptionen werden in einem
Cookie gespeichert und beim nächsten Aufruf des Menüs erneut angewendet.
Wenn Sie also einmal eine chronologische Auswahl erwarten würden, prüfen
Sie zuerst, ob die Filtereinstellungen dies verhindern.</p>

<p>Der Filter-<span class="mbold">Reset</span>-Button setzt getroffene Filter
auf die Default-Einstellung zurück.</p>

</section><!-- section.sub end -->

<section id="U443" class="sub">
<span class="u-toc">4.4.3 - Kategorien</span>

<h3 class="subsection" id="kategorien">Kategorien</h3>

<p class="tagging invisible">
<span class="label invisible" id="Kategorien">Kategorien</span>
<span class="tag-box invisible">
    <span class="inline-tag">Kategorien|see{Backend, Kategorien}</span>
    <span class="inline-tag">Backend!Kategorien</span>
</span>
</p>

<p>Im Bereich <span class="mbold">Kategorien</span> können die für Artikel gültigen Kategorien
erstellt und verändert werden.</p>

<p>Auf der Übersichtsseite sieht man die Auflistung aller verfügbaren
Kategorien in ihrer hierarchischen Ordnung. Für jede Kategorie gibt es
eine einzelne Zeile, und Kategorien können unendlich tief ineinander
verschachtelt werden, um Unterkategorien zu ermöglichen.</p>

<p>Pro Zeile gibt es die bekannten zwei Buttons zum
<span class="mbold">Bearbeiten</span> und <span class="mbold">Löschen</span>
einer Kategorie. In ihrer Mitte befindet sich ein <span class="mbold">Plus</span>-Symbol
für die Erstellung einer Unterkategorie der jeweiligen Kategorie.
Unter dem Namen einer Kategorie liegen, versteckt in einer Klappbox,
die über das kleine rechtsweisende Dreiecks-Symbol aktiviert wird,
weitere Angaben zur Beschreibung einer Kategorie, und abschließend
den Namen des Eigentümers einer Kategorie.</p>

<p>Der Eigentümer einer Kategorie bestimmt im späteren Verlauf, welche
Redakteure Artikel für diese Kategorie erstellen dürfen. Gewähren gewisse
Rechtekonstellationen (siehe Kapitel <span class="reference">Gruppenverwaltung</span>
auf Seite <span class="pageref"><a href="#Gruppenverwaltung">Gruppenverwaltung</a></span>)
keinen Zugriff, wird die Kategorie auf dieser Übersichtsseite für unbefugte
Redakteure nicht angezeigt und ist auch beim Erstellen eines Beitrags nicht
auswählbar. Wenn an der Stelle des Eigentümers <em>Alle Autoren</em> steht,
bedeutet dies, dass die Kategorie keinen speziellen Eigentümer besitzt,
sondern für alle Redakteure zur Verfügung steht.</p>

<figure id="fig-categories">
    <img src="img/categories.png">
    <figcaption>Abbildung 4.10: Inhalt: Kategorien</figcaption>
</figure>

<p>Am Ende der Seite führt der Button <span class="mbold">Neue Kategorie</span> zu der
Erstellungsmaske für eine neue Kategorie.</p>

<figure id="fig-categoryform">
    <img src="img/categoryform.png">
    <figcaption>Abbildung 4.11: Inhalt: Kategorien: Neue Kategorie</figcaption>
</figure>

<p>Sowohl der Klick auf <span class="mbold">Neue Kategorie</span> als auch
das <span class="mbold">Bearbeiten</span> einer Kategorie führen zu derselben
Maske. Dort können folgende Daten erfasst werden:</p>

<p class="desc">
<span class="tag-box invisible">
    <span class="inline-tag">Kategorien!Name</span>
</span><!-- tagbox -->
<span class="item mbold">Name</span><!-- menuitem -->
<span class="desc-info">Der Name einer Kategorie wird in das Feld
<span class="mbold">Name</span> eingetragen; sie wird später im Frontend
jeweils mit diesem Namen dargestellt. Sonderzeichen und Leerzeichen sind
erlaubt. Die Zeichenlänge ist grundsätzlich unbeschränkt, aber sehr lange
Kategorienamen könnten zu problematischen Zeilenumbrüchen in Auswahlboxen
führen.</span>
</p>

<p class="desc">
<span class="tag-box invisible">
    <span class="inline-tag">Kategorien!Beschreibung</span>
</span><!-- tagbox -->
<span class="item mbold">Beschreibung</span><!-- menuitem -->
<span class="desc-info">Die Beschreibung einer Kategorie wird an einigen
Stellen im Backend und als Meta-Beschreibung zur Kategorie im Frontend angezeigt.
Hier können Sie auch längere Beschreibungen eintragen.</span>
</p>

<p class="desc">
<span class="tag-box invisible">
    <span class="inline-tag">Kategorien!Bild</span>
</span><!-- tagbox -->
<span class="item mbold">Bild</span><!-- menuitem -->
<span class="desc-info">
    <span class="box">
        Wenn Sie einen Artikel in einer Kategorie veröffentlichen, können Sie ein Bild
        mit dieser Kategorie verbinden. Dieses Bild wird dann bei der Darstellung
        eines Artikels im Frontend im Inhaltsbereich ausgegeben und ermöglicht
        den Besuchern eine einfache Assoziation des Textes mit einem Thema.
    </span>

    <span class="box">
        Über den Button <span class="mbold">Bild</span> können Sie das Mediathek-Popup (siehe
        Seite <span class="pageref"><a href="#mediathek-popup">Mediathek-Popup</a></span>)
        aufrufen und die gewünschte Bilddatei einfügen. Alternativ tragen Sie in das Eingabefeld
        <span class="mbold">Bild</span> eine vollständige URL mit dem Bildziel ein.
    </span>
</span>
</p>

<p class="desc">
<span class="label invisible" id="kategorie-leserechte">kategorie-leserechte</span>
<span class="tag-box invisible">
    <span class="inline-tag">Kategorien!Leserechte</span>
    <span class="inline-tag">Zugriffsrechte</span>
    <span class="inline-tag">Lesebeschränkung</span>
</span><!-- tagbox -->
<span class="item mbold">Leserechte</span><!-- menuitem -->
<span class="desc-info">
    <span class="box">
        Wenn Sie einen Artikel in einer Kategorie verfassen, kann es sein, dass
        nicht jeder Besucher der Webseite Einträge aus dieser Kategorie lesen
        soll.
    </span>

    <span class="box">
        Über das Auswahlfeld <span class="mbold">Leserechte</span> können Sie diejenigen
        Benutzergruppen wählen, die später im Frontend die Befugnis haben, einen
        Artikel zu lesen. Mehrere Gruppen können mit gedrückter
        <em>(Strg/Apfel)</em>-Taste und einem Mausklick gewählt werden.
    </span>

    <span class="box">
        Die Sondergruppe <span class="mbold">Alle Autoren</span> wird benutzt, wenn eine Kategorie von jedem Besucher
        (also nicht eingetragenen Redakteuren) aufgesucht werden darf.
        Sobald eine Einschränkung auf eine Benutzergruppe eingerichtet wurde, muss ein
        Redakteur dieser Gruppe(n) sich erst ins Backend eingeloggt haben, bevor er
        im Frontend die Artikel lesen kann. Alle derart geschützten Artikel sind
        auch im normalen RSS-Feed nicht mehr vorhanden.
    </span>

    <span class="box">
        Die Option der Einschränkung von Leserechten kann durch die globale
        Serendipity-Konfigurationsoption <span class="mbold">Leserechte auf
        Kategorien anwenden</span> (siehe Kapitel <span class="reference">Konfiguration</span>,
        Seite <span class="pageref"><a href="#Konfiguration">Konfiguration</a></span>)
        ausgehebelt werden. Um im Seitenleisten-Plugin <em>Kategorien</em> (Seite
        <span class="pageref"><a href="#categoriesplugin">categoriesplugin</a></span>)
        ebenfalls nur die Kategorien anzuzeigen, für die man Leserechte besitzt,
        muss in der Konfiguration dieses Plugins die Option
        <span class="mbold">Quelle der Kategorien</span> auf
        <span class="mbold">Derzeitiger Autor</span> eingestellt werden.
    </span>
</span>
</p>

<p class="desc">
<span class="tag-box invisible">
    <span class="inline-tag">Kategorien!Schreibrechte</span>
</span><!-- tagbox -->
<span class="item mbold">Schreibrechte</span><!-- menuitem -->
<span class="desc-info">
    <span class="box">
        Analog zu den Leserechten können bei Serendipity die <span class="mbold">Schreibrechte</span>
        einer Kategorie vergeben werden.
    </span>

    <span class="box">
        Nur die ausgewählten Benutzergruppen werden später die Möglichkeit haben,
        einen Artikel für diese Kategorie zu schreiben. Sobald eine Einschränkung
        des Schreibrechts auf mindestens eine Benutzergruppe vorgenommen wird,
        wird für die Kategorie der aktuelle Redakteur als <em>Eigentümer</em> der
        Kategorie vermerkt und in der Kategorieübersicht dargestellt. Die
        spezielle Option <span class="mbold">Alle Autoren</span> bedeutet, dass der Schreibzugriff
        auf die Kategorie nicht eingeschränkt ist.
    </span>
</span>
</p>

<p class="desc">
<span class="tag-box invisible">
    <span class="inline-tag">Kategorien!übergeordnetekategorien@übergeordnete Kategorie</span>
</span><!-- tagbox -->
<span class="item mbold">Übergeordnete Kategorie</span><!-- menuitem -->
<span class="desc-info">
    <span class="box">
        Kategorien können beliebig verschachtelt werden. Um eine Kategorie einer
        Oberkategorie zuzuordnen, muss diese Kategorie im Auswahlfeld
        <span class="mbold">Übergeordnete Kategorie</span> ausgewählt werden. In diesem Auswahlfeld
        sind alle bisher angelegten Kategorien hierarchisch (durch Leerzeichen
        eingerückt) dargestellt.
    </span>

    <span class="box">
        Beim Bearbeiten einer Kategorie kann diese somit leicht (mitsamt allen
        untergeordneten Kategorien) an einen anderen Punkt des Kategoriebaums
        <em>eingehängt</em> werden.
    </span>
</span>
</p>

<p class="desc">
<span class="tag-box invisible">
    <span class="inline-tag">Kategorien!Artikel von Unterkategorien verstecken</span>
    <span class="inline-tag">Fehler!Artikel aus Unterkategorien nicht angezeigt</span>
</span>
<span class="item mbold">Artikel von Unterkategorien verstecken?</span><!-- menuitem -->
<span class="desc-info">
    <span class="box">
        Wenn Sie im Frontend eine Kategorie zur Ansicht ausgewählt haben, werden
        standardmäßig alle Einträge dieser Kategorie und auch alle Einträge in
        den zugehörigen Unterkategorien dargestellt.
        Dies ermöglicht dem Besucher, dass er bei der Auswahl von Oberkategorien
        nicht jede Unterkategorie einzeln anklicken muss.
    </span>

    <span class="box">
        Wenn Serendipity jedoch eher als Content-Management-System eingesetzt
        wird, ist dieses Verhalten recht untypisch und häufig nicht gewünscht.
        Daher können Sie für jede Oberkategorie die Option <span class="mbold">Artikel von
        Unterkategorien verstecken</span> aktivieren. Daraufhin werden bei Auswahl
        einer derart konfigurierten Kategorie im Frontend ausschließlich die
        Artikel angezeigt, die auch in exakt dieser Kategorie eingetragen wurden.
    </span>
</span>
</p>

<p class="desc">
<span class="tag-box invisible">
    <span class="inline-tag">Kategorien!Plugins!Weitere Kategorie Felder</span>
</span>
<span class="item mbold">Weitere Kategorie Felder</span><!-- menuitem -->
<span class="desc-info">
    <span class="box">
        Plugins, wie zB. das <span class="mbold">Statische Seiten</span>-Plugin,
        können über einen Hook (<em>"eine Art Sprungmarker"</em>, siehe <a href="#ereignis-hooks">Ereignis-Hooks</a>) hier weitere
        Felder, wie eine "<span class="mbold">Zugeordnete statische Seite</span>",
        einfügen.
    </span>
</span>
</p>

<p>&nbsp;</p><!-- separator -->

<p>Ein Klick auf <span class="mbold">Erstellen</span> (für neue Kategorien) bzw.
<span class="mbold">Speichern</span> schließt die Erstellungs-/Bearbeitungsmaske und
speichert die Änderungen.</p>

<p>Wenn Sie eine Kategorie löschen möchten, wird Serendipity Sie fragen, was
mit Einträgen geschehen soll, die dieser Kategorie bisher zugeordnet
waren. Mittels eines Auswahlfeldes können Sie festlegen, ob diese Einträge
stattdessen einer anderen bestehenden Kategorie zugeordnet werden
sollen. Ohne eine Neuzuordnung werden Artikel nicht gelöscht, sondern sind dann
einfach keiner Kategorie mehr zugeordnet.</p>

<p>
<span class="tag-box invisible">
    <span class="inline-tag">KategorieID@Kategorie-ID ermitteln</span>
</span>
<span class="label invisible" id="Kategorie-ID ermitteln">Kategorie-ID ermitteln</span>
Einige Plugins benötigen zur Konfiguration die Kategorie-ID. Eine ID
identifiziert eine Kategorie eindeutig und bleibt auch gleich, wenn Sie eine
Kategorie einmal umbenennen. Diese ID wird üblicherweise weder im
Frontend noch im Backend wirklich deutlich angezeigt; sie ist jedoch
meist Bestandteil der URL (zB. <code>/categories/17-Generelles</code>).</p>

<p>Um die ID ohne Nachschlagen in der Datenbank oder Durchsuchen
des HTML-Quellcodes zu ermitteln, können Sie in der
Kategorie-Übersicht im Backend-Bereich <span class="mbold">Kategorien</span> mit der Maus
über das Stift-Symbol fahren. Wenn Sie dann kurz warten, wird Ihr Browser
unterhalb der Mausposition ein kleines Fenster anzeigen, in dem die ID der
Kategorie steht.</p>

</section><!-- section.sub end -->

</section><!-- section.index end -->

<section id="S450" class="index">
<span class="s-toc">4.5 - Mediathek</span>
<span class="label invisible" id="mediathek">Mediathek</span>

<h3 class="section" id="mediathek">Mediathek</h3>

<p class="tagging invisible">
<span class="tag-box invisible">
    <span class="inline-tag">Mediathek|see{Backend, Mediathek}</span>
    <span class="inline-tag">Backend!Mediathek</span>
</span>
</p>

<p>Serendipity kann von Ihnen hochgeladene Bilder und Dateien in einer
eigenständigen Datenbank, der <em>Mediathek</em>, verwalten.</p>

<p>Die Mediathek/Mediendatenbank besteht aus zwei Komponenten. Zum einen ist das ein
Unterverzeichnis namens <code>uploads</code> im Serendipity-Stammverzeichnis.
Dort werden die Dateien, die Sie von Ihrer eigenen Festplatte aus
hochladen, abgespeichert. Zum anderen ist das eine Tabelle in Ihrer
serverseitigen Datenbank, die sogenannte <em>Meta-Informationen</em> über
die hochgeladenen Dateien speichert.</p>

<p>Diese Meta-Informationen enthalten Angaben über den Typ einer Datei, wann
und von wem die Datei hochgeladen wurde sowie etwaige Beschreibungen der
Datei.</p>

<p>Serendipity stellt nur die Dateien der Mediathek dar, die auch in
dieser Datenbanktabelle verzeichnet sind. Dateien, die lediglich manuell
mittels FTP-Programm in das Verzeichnis <code>uploads</code> auf den Server
geladen werden, sind dort vorerst nicht enthalten.</p>

<p>
<span class="tag-box invisible">
    <span class="inline-tag">Synchronisierung</span>
    <span class="inline-tag">Mediathek!Synchronisierung</span>
</span>
Aufgrund dieser zwei unterschiedlichen Komponenten ist es wichtig, dass
Serendipity diese ständig miteinander <em>synchronisiert</em>, denn sonst
könnte es passieren, dass Ihnen Dateien angezeigt werden, die gar nicht
existieren - oder Ihnen könnten bereits hochgeladene Dateien fehlen.</p>

<p>Im Dateisystem der Mediathek können sowohl Bilder (JPEG, GIF,
PNG und weitere) verwaltet werden als auch beliebige andere Dokumente
(MP3, AVI, ZIP, DOC, PDF, etc.). Diese Dateien können zur besseren
Strukturierung auch in beliebig verschachtelten Unterverzeichnissen
abgelegt werden.</p>

<p>Unterschiedliche Schreib- und Leserechte auf Bildordner können über die
Meta-Informationen der Mediathek verwaltet werden.</p>

<p>
<span class="tag-box invisible">
    <span class="inline-tag">Thumbnails</span>
</span>
Bilder können in der Mediathek speziell bearbeitet werden. So kann
man die Bilder auf dem Server vergrößern/verkleinern, und Serendipity kann
kleine Vorschaubilder (<em>Thumbnails</em>) einer Grafik erstellen. Für
diesen Automatismus muss Ihr Webserver entweder <em>gdlib</em> oder
<em>ImageMagick</em> unterstützen (siehe Kapitel <span class="reference">Voraussetzungen</span> auf
Seite <span class="pageref"><a href="#Voraussetzungen">Voraussetzungen</a></span>). Trotz dieser rudimentären
Grafikbearbeitungsmöglichkeiten ersetzt Serendipity nicht die
Nachbearbeitung eines Bildes mit Programmen wie <em>GIMP</em> oder
<em>Adobe Photoshop</em>. Ein Bild, das direkt von einer Digitalkamera
kommt, ist üblicherweise viel zu groß für die Darstellung im Internet.
Daher sollten Sie Bilder von vornherein auf eine angemessene Größe
bringen. Statistisch liegen die verbreitetsten Auflösungen im Internet
unter 1280 x 1024 Pixel, daher macht eine Datei mit einer
höheren Auflösung als dieser nur in besonderen Fällen Sinn und würde nur
<span class="tag-box invisible">
    <span class="inline-tag">Traffic</span>
</span>
zu viel Speicherplatz benötigen.</p>

<p>Dem trägt eine Einstellung in der
<strong>Konfiguration <span class="icon arrow-right">→</span> Bildkonvertierung <span class="icon arrow-right">→</span> Maximale (Breite/Höhe)
eines hochgeladenen Bildes</strong> bereits Rechnung, mittels derer man ein festes Maß als Maximalmaß
für den Upload festsetzen kann und das intern beim Upload größere Bilder bereits herunterrechnet.
Hier ist ImageMagick als Toolkit für die graphische Voraussetzung sehr zu empfehlen.</p> 

<p>Mit Serendipity Styx 3.0 begann eine neue Ära für die Mediathek,
die um sogenannte <strong>Variationen</strong> erweitert wurde.
Dabei handelt es sich um neue Dateiformate, die wesentliche Verbesserungen
für die Kompressionsgrößen eines Bildes erzeugen, ohne dabei wesentlich an
Bildqualität zu verlieren. Solche Formate sind natürlich jeweils neu und
werden nur langsam im Web und den heimatlichen Computern bzw dessen Programmen
und Möglichkeiten adaptiert. Serendipity Styx hat sich daher entschieden vorerst
weiterhin auf die bekannten Image Formate wie <strong>jpg</strong> oder <strong>png</strong>
als image Upload Formate zu setzen, sie aber direkt beim Upload und soweit
möglich in versteckte Variationen zu duplizieren, die die weitere Nutzung
drastisch erweitern.</p>

<p>Solch ein Format ist <strong>webp</strong>; WebP aus dem Hause Google,
das nach etwa neunjähriger Entwicklungszeit Anfang 2020 das Licht der Welt
erblickte. Die verbesserten Komprimierungsraten gegenüber den bekannten Formaten
belaufen sich im Mittel auf etwa 30%, können aber auch wesentlich größer
ausfallen, je nach Ausgangsqualität und Ausgangsmaterial des Original Bildes.
Mit Styx 3.6/3.7 kam im Herbst bzw Ende 2021 ein weiteres vielversprechendes
Format hinzu, das <strong>AVIF</strong> (AV Image Format) genannt wird und von
einem Konsortium vieler großer Firmen als <strong>DIE</strong> neue und freie
Videokompressionsoftware <strong>AV1</strong> entwickelt wurde. AVIF ist also
ein Ableger derselben.</p>

<p><strong>Noch einmal</strong> konnte die Kompression damit um weitere 30%
( wiederum im Mittel) gesteigert werden, so dass heute Bilder (Variationen)
nur noch etwa 10 bis 30 Prozent der Originalgröße beanspruchen und Sie es an der
Qualität nicht bemerken werden. Alle großen Browser sind heutzutage in der Lage
mit ihnen umzugehen und durch die Möglichkeit eines wunderbaren neuen Ausgabeformates
(siehe <span class="reference">Picture Container</span> auf Seite
<span class="pageref"><a href="#Eintrag-speichern">Eintrag-speichern als Picture Element Container</a></span>)
ist HTML und damit auch Styx in der Lage diese so auszuliefern, dass auch weniger
ausgefeilte Browser damit umgehen können.</p>

<p>Das WebP Format ist also schon gut abgehangen und es sind keine größeren
Probleme in der Herstellung, also Konvertierung über die GDlib bzw ImageMagick
zu erwarten und die WebP Nutzung als Variation hat sich in den letzten zwei
Jahren schon als sehr stabil erwiesen. Mit AVIF ist dies etwas anders. Obwohl
annonciert mit Erscheinen von <strong>PHP 8.1</strong> [*]
<span class="footnote"><i class="fa fa-info-circle"></i> Dies bezieht sich auf
die darin enthaltene GDlib Bibliothek. Mit ImageMagick benötigen Sie mindestens
die Version 7.0.25 um überhaupt mit AVIF arbeiten zu können.</span><!-- footnote -->
im Herbst 2021 voll kompatibel zu sein. fehlt dennoch ein wichtiges Puzzlestück
um praktisch damit arbeiten zu können, so wie es für WebP möglich ist. Dies
betrifft die Auslesung von Metadaten, inbesondere von Größenangaben im Meta
Bereich von AVIF Dateien, das normalerweise über die PHP Funktion
<strong>getimagesize()</strong> geschieht, und immer dann genutzt wird,
wenn Formatwechsel oder Dateigrößenwechsel der Ausmaße anstehen, also für
Serendipity gesprochen ein sehr häufig benutztes Kernstück.</p>

<p>Dieses Kernstück wird für AVIF erst ab <strong>PHP 8.2</strong> Ende des Jahres 2022
zur Verfügung stehen. Bis dahin kann AVIF nur etwas eingeschränkt benutzt werden.
Diese Einschränkung beinhaltet alles, was über die Konvertierung eines hochgeladenen
Bildes (in das Serendipity <em>Thumbnails</em> Vorschaubild) hinausgeht, also zB. spätere
Skaldierungen des vorliegenden Bildformates "Dateiausmaße ändern", sowie Änderungen
des Bildformates selber und ebenso Rotationen des Bildes "(<em>Bild um 90 Grad
gegen den/im Uhrzeigersinn drehen</em>)". Da es unter der Prämisse der genutzten AVIF
Option dann immer alle Dateiformate beträfe, denn für eine Rotation beispielsweise muss
das Orginalbild, sein Thumbnail, ebenso wie diese, die WebP Variationen, dann eben auch
die AVIF Variationen gedreht werden, wurden zum Teil bereits Vorkehrungen getroffen,
solcherlei Änderungen vorerst zu unterbinden.</p>

<p>Aus diesem Grunde steht AVIF bislang nur als Option in <strong>Konfiguration
<span class="icon arrow-right">→</span> Bildkonvertierung
<span class="icon arrow-right">→</span> Nutzung von AVIF Variationen
aktivieren?</strong> zuschaltbar zur Verfügung.</p>

<p>Eine weitere zu beachtende Einschränkung besteht darin, dass die unglaublich gute AV1
Kompression ein schweres Stück Arbeit ist und deshalb viel <strong>ZEIT</strong> entsprechend
der zur Verfügung stehenden GPU/CPU Kerne und mindestens ebenso anspruchsvoll viel RAM
bis in den GBit Bereich beansprucht [*]
<span class="footnote"><i class="fa fa-info-circle"></i> Dies bezieht sich insbesondere auf
größere Bilder, also zB. mit 13 MB im Ausgangsformat. Mit kleineren Bildern bis 2,
höchstens 3 MB, ist AVIF durchaus nutzbar und verursacht nicht allzugroße Schmerzen
beim Upload.</span><!-- footnote -->.
Aus diesem Grunde ist <em>bis dato</em> davon abzuraten, mehr als ein Bild zur Zeit hochzuladen
und konvertieren zu lassen. So wie WebP mit seiner langen Entwicklungszeit viel Raum
hatte diesem Anpruch mit schnelleren Algorithmen und verbesserter Hardware auf
Anwenderseite zu begegnen, wird es sicherlich auch AVIF ergehen. Die Leistungsfähigkeit
und Schnelligkeit wird mit der Zeit also bestimmt besser werden, ist aber zur Zeit
hardwareseitig noch gewissen Einschränkungen unterworfen.</p>

<p>Um es kurz zu sagen, <strong>natürlich</strong> können Sie auch gleich WebP oder AVIF
Format Dateien auf Ihr Blog hochladen. Dies ist ohne weiteres möglich. Allein die Möglichkeiten
Ihres Browser bestimmen, ob Sie diese als Bilder auch tatsächlich angezeigt bekommen,
was ja die großen, wie Mozilla Firefox oder Chrome mit all seinen Chromium Variationen,
wie bereits gesagt, seit Sommer 2021 gut beherrschen.</p>

<p>Allein die Ausgabe im Frontend, zB. in einem Eintrag als normales image Format, wird
eventuell schwierig, denn Sie können ja nicht wissen, welche Voraussetzungen die Besucher
Ihres Blogs diesbezüglich mitbringen. Aus diesem Grunde ist es vorerst durchaus ratsam in
der überwiegenden Masse [*]
<span class="footnote"><i class="fa fa-info-circle"></i> Für einzelne Bild-Solitäre ist
die Nutzung aber bereits durchaus ein willkommenes Feature. Hervorragend gut gemachte Seiten
wie <a href="https://avif.io/" target="_blank">https://avif.io/</a> machen es Ihnen einfach,
lokal vorhandene Bilder nach AVIF zu konvertieren ("<em>Convert to AVIF"</em>) damit Sie
diese dann in Serendipity hochladen oder etwa auch zB in ihrem Theme als solitäre Header
Image Datei nutzen können.</span><!-- footnote -->
auf diese Möglichkeit zu verzichten, und lieber die geschilderten Variations Formate für
ihr Ausgabeformat zu benutzen (siehe <span class="reference">Picture Container</span>
auf Seite <span class="pageref"><a href="#Eintrag-speichern">Eintrag-speichern als Picture Element Container</a></span>).<br>
<br>
AVIF wurde also entwickelt, um PNG, JPEG und WebP bei allen Bildern, Fotos und Grafiken zu
ersetzen, das heißt, um lizenzfreie Bilder mit einer besseren Komprimierungseffizienz bereitzustellen. [*]
<span class="footnote"><i class="fa fa-info-circle"></i> Für PNG muß gesagt werden, dass
AVIF bei der Komprimierungseffizienz, der Dateigröße und der Kodierungs-/Dekodierungszeit
nicht ganz so effizient ist. Dies liegt daran, dass AVIF sich darauf konzentriert, als verlustbehaftetes
Komprimierungsformat überlegen zu sein. PNG hat (noch) eine bessere Unterstützung in allen Browsern
und eine schnellere Kodierungs-/Dekodierungsleistung (insbesondere bei der Dekodierung).
Aus diesem Grunde werden sie bei PNG Dateien auch relativ häufiger eine bessere Komprimierung
erleben.</span><!-- footnote -->
Es basiert auf vier verschiedenen Technologien. AVIF verwendet Basiselemente des ISO BMFF Byte Stream
Formats, kombiniert es mit IFF/HEIF für bildspezifische und codec-agnostische Funktionen, verwendet
MIAF für zusätzliche strukturelle Einschränkungen von ISOBMFF und benutzt die Abbildung des AV1 KeyFrame.
Als Ergebnis der Bemühungen des Konsortiums wurden lizenzfreie, offene Videocodecs für bewegte
Bilder und das AV1 Image File Format (AVIF) für Bilder entwickelt. Es kombiniert
AV1-Kompressionsalgorithmen mit der HEIF-Containertechnologie, die Apple seit vielen Jahren verwendet.
HEIF bietet eine einheitliche und standardisierte Methode für den Austausch, die Speicherung (zB. von
Metadaten) und die Übertragung von mit AV1 kodierten Bildinhalten. In diesem Sinne überschneiden sich
AVIF und HEIF. AVIF und HEIF kodieren Bilddaten mit unterschiedlichen Kompressionsmethoden. Anstelle
der AV1-Kompression verwendet das HEIF-Format das HEVC-Videoformat.</p>

<p>Die PHP GD- und ImageMagick-Kodierungskomprimierung sind leicht unterschiedlich und ihre
Ergebnisse oft überraschend, wenn man die Dateigrößen aller Formate miteinander vergleicht.
Sehen Sie hier ein Beispielergebnis:</p>

<figure>
    <a class="lightbox" rel="lightbox" href="img/lib-variation-comparison.avif" lg-uid="lg450" data-fallback="img/lib-variation-comparison.webp">
      <picture>
        <source srcset="img/lib-variation-comparison.avif" type="image/avif">
        <source srcset="img/lib-variation-comparison.webp" type="image/webp">
        <img src="img/lib-variation-comparison.png" alt="lib-variation-comparison.png" loading="lazy" width="1120" height="760">
      </picture>
    </a>
    <figcaption>Eine Serie von 4 Bildern, die vergleichend mit ImageMagick (IM) und PHP GD
    kodiert wurden. Im Allgemeinen können Dauer und Resultat der Bildkodierung - abgesehen
    von der Größe - von der Verwendung von hohen Dynamikbereichen (HDR), verlustfreier oder
    verlustbehafteter Kompression, Farbebenen, Profilen, großem Farbumfang,
    Chroma-Sub-Sampling und Bittiefen von 8, 10 oder 12 abhängen. Hier liegen die wesentlichen
    Unterschiede und natürlich in der Art, der Ruhe oder Unruhe des Bildmotives selbst.<br>
    <div>Alles, was wir also wissen müssen, ist: Das neue AVIF ist meist das bessere Format und wird sich sicherlich in Zukunft durchsetzen.</div></figcaption>
</figure>

<p>&nbsp;</p>

<p>Was beim WebP - AVIF Vergleich auffällt, ist, dass es aber durchaus vorkommen kann, dass das umgewandelte
AVIF Format (Datei) größentechnisch nicht <strong><em>per se</em></strong> immer besser - sprich kleiner - als
das WebP Format ist. Serendipity Styx sorgt aber bereits im Vorfeld dafür, dass durch das neue &lt; <strong><em>picture</em></strong> &gt;
container Ausgabeformat, welches ansonsten streng nach dem fallback-Prinzip von oben nach unten arbeitet,
die Reihenfolge der Ausgabe an der Dateigröße gemessen wird und somit immer das Kleinste der vorhandenen
Bild Variationen geliefert wird. Das heißt, im Falle einer kleineren WebP Variation bleibt das AVIF &lt;source&gt; srcset leer.
Am Browser des Clients, also des Besuchers, liegt es dann zu entscheiden, welches von den angebotenen Bildern/Variationen
er wirklich laden und darstellen kann.
Eine Win-win Situation, die dazu führt ihren Webauftritt erheblich zu beschleunigen!</p>

<p>In Ausgabecode gegossen und als Link zum großen Bild sähe das dann in etwa so aus:</p>

<pre>
<code class="html">
&lt;a href="img/.v/pippi-longstocking.avif" data-fallback="img/.v/pippi-longstocking.webp"&gt;<br>
&nbsp;&nbsp;&lt;picture&gt;<br>
&nbsp;&nbsp;&nbsp;&nbsp;&lt;source srcset="img/.v/pippi-longstocking.styxThumb.avif" type="image/avif"&gt;<br>
&nbsp;&nbsp;&nbsp;&nbsp;&lt;source srcset="img/.v/pippi-longstocking.styxThumb.webp" type="image/webp"&gt;<br>
&nbsp;&nbsp;&nbsp;&nbsp;&lt;img&nbsp;src="img/pippi-longstocking.styxThumb.png" alt="pippi-longstocking.styxThumb.png" loading="lazy" width="1120" height="760"&gt;<br>
&nbsp;&nbsp;&lt;/picture&gt;<br>
&lt;/a&gt;<br>
</code></pre>

<p>Wie Sie sehen, beinhaltet das Beispiel bereits die versteckenden Mediatheks "<strong>.v/</strong>"
Ordner, relativ zum Bildverzeichnis, in denen die Bildvariationen (webp/avif) als interne Erweiterung
der Mediathek gespeichert sind. (Siehe <span class="reference">medien-speichern</span> auf Seite
<span class="pageref"><a href="#Eintrag-speichern">Eintrag-speichern als Picture Element Container</a></span>)
</p>

<p class="tagging invisible">
<span class="label invisible" id="Medien hinzufuegen">Medien hinzufuegen</span>
<span class="tag-box invisible">
    <span class="inline-tag">Medien!hinzufügen|see{Backend, Medien hinzufügen}</span>
    <span class="inline-tag">Backend!Medien!hinzufügen</span>
</span>
</p>

<section id="U451" class="sub">
<span class="u-toc">4.5.1 - Medien hinzufügen</span>

<h3 class="subsection" id="medien-hinzufügen">Medien hinzufügen</h3>

<p>Um Ihre Mediathek mit Daten zu füllen, müssen Sie die Dateien in
dieser Datenbank <em>anmelden</em>. Um eine Datei komfortabel über die Oberfläche
hochladen zu können, gibt es den Menüpunkt <span class="mbold">Medien hinzufügen</span>.</p>

<p>Auf dieser Seite können Sie zwischen zwei Varianten wählen, von welcher Quelle
eine Datei eingestellt werden soll.</p>

<figure id="fig-upload">
    <img src="img/upload.png">
    <figcaption>Abbildung 4.12: Mediathek: Medien hinzufügen</figcaption>
</figure>

<p>Die erste Variante ist der Download einer Datei, die bereits im Internet
unter einer URL verfügbar ist. Wenn Sie also auf einer Webseite eine
Bilddatei sehen, können Sie über Ihren Browser (meist mittels eines
Rechtsklicks auf die Grafik) die URL dieses Bildes heraussuchen und in das
Feld <span class="mbold">URL zum Download angeben</span> eintragen.</p>

<p>
<span class="tag-box invisible">
    <span class="inline-tag">Urheberrecht</span>
</span>
Achten Sie bitte beim Download einer Grafikdatei aus dem Internet immer
darauf, dass die Bilder/Dateien urheberrechtlich geschützt sein könnten
und die Einbindung einer solchen Datei in Ihrem Blog rechtlich nicht
erlaubt ist. Stellen Sie daher immer sicher, dass Sie das Recht haben,
eine Datei zu vervielfältigen.</p>

<p><span class="label invisible" id="Hotlink">Hotlink</span>
<span class="tag-box invisible">
    <span class="inline-tag">Hotlink</span>
</span>
Unterhalb der Eingabebox zum Download einer Datei aus dem Internet
befindet sich das Auswahlfeld <span class="mbold">Download-Methode</span>. Wenn Sie hier
<span class="mbold">Bild auf diesem Server speichern</span> auswählen, bedeutet das, dass
die Daten der eingetragenen URL heruntergeladen und auf dem eigenen Webserver
gespeichert werden. Wenn Sie ein solches Bild später einbinden, wird es
von den Besuchern von Ihrem eigenen Webserver heruntergeladen und verursacht
auf Ihrem Webserver Kosten für den aufgekommenen <em>Traffic</em>
(Datenverkehr). Die zweite Möglichkeit stellt die Option <span class="mbold">Nur zum
Quellserver linken</span> dar. Ist diese Option gewählt, wird die von Ihnen
eingetragene Datei nicht wirklich heruntergeladen, sondern nur ein
Verweis auf den Zielserver gespeichert. Wenn Sie eine derartige Datei
später einbinden, werden die Daten dann vom fremden Webserver geladen --
dies nennt man <em>hotlinking</em>. Dies hat den Vorteil, dass auf Ihrer
eigenen Seite kein erhöhter Datenverkehr entsteht und dass,
formaljuristisch gesehen, die Einbindung solcher Bilder urheberrechtlich
unterschiedlich gehandhabt wird, da Sie das Bild nicht eigenständig anbieten.[*]
<span class="footnote"><i class="fa fa-info-circle"></i> Diesen Hinweis genießen Sie bitte mit Vorsicht. Im
Zweifelsfall sollten Sie den Eigentümer einer Datei immer um Erlaubnis
bitten oder mit der Hilfe eines Fachanwalts den Sachverhalt klären.</span><!-- footnote --> Der
Nachteil einer solchen Einbindung ist jedoch, dass, wenn einmal der
verwiesene Server nicht mehr betrieben oder die Datei entfernt wird,
ein solches Bild natürlich auch in Ihrem Artikel nicht mehr angezeigt werden
kann.</p>

<p>Als zweite Variante zum Hinzufügen einer Datei können Sie diese von Ihrer
eigenen Festplatte auswählen. Wenn Sie auf den Button <span class="mbold">Durchsuchen</span>
neben der Eingabebox <span class="mbold">Datei zum Hochladen angeben</span> klicken, öffnet
sich ein Dateiauswahldialog Ihres Betriebssystems, und Sie können eine
Datei aus Ihrer Verzeichnisstruktur auswählen.</p>

<p>Sie können immer nur eine dieser beiden Varianten des Hinzufügens wählen.
<em>Entweder</em> Sie laden eine Datei aus dem Internet, <em>oder</em> Sie
laden sie vom eigenen Computer. Wenn Sie beide Eingabefelder ausfüllen,
wird nur die Datei aus dem Internet geladen und die selbst hochgeladene
Datei ignoriert. Wenn Sie also sowohl eine Datei aus dem Internet als
auch eine vom eigenen Computer hochladen wollen, müssen Sie dies nacheinander
tun.</p>

<p>Wenn Sie eine Datei von der eigenen Festplatte hochladen, können Sie noch
weitere Details bestimmen. Im Eingabefeld <span class="mbold">Datei speichern mit dem
Namen</span> können Sie einen Dateinamen für die hochgeladene Datei vergeben.
Standardmäßig wird hier der Originalname der Datei von Ihrer Festplatte
eingetragen. Im Feld <span class="mbold">In diesem Verzeichnis ablegen</span> können
Sie das Unterverzeichnis auswählen, in dem die Datei später gespeichert
wird. Unterverzeichnisse werden über den Mediathek-Menüpunkt
<span class="mbold">Verzeichnisse verwalten</span> (siehe Kapitel <span class="reference">Verzeichnisse
verwalten</span> auf Seite <span class="pageref"><a href="#Verzeichnisse verwalten">Verzeichnisse verwalten</a></span>) erstellt.</p>

<p>Wenn Sie mehr als eine Datei hochladen möchten, können Sie auf den Button
<span class="mbold">Mehr Bilder hinzufügen</span> klicken. Jeder Klick auf diesen Button
stellt ein zusätzliches Eingabefeld für eine auszuwählende Datei
zur Verfügung, und in jedem dieser Blöcke können Sie danach auch den Dateinamen und
das Zielverzeichnis bestimmen.[*]
<span class="footnote"><i class="fa fa-info-circle"></i> Diese Funktion benötigt
aktiviertes JavaScript und wird von allen gängigen Browsern
unterstützt.</span><!-- footnote --> Beachten Sie bitte, dass Sie nicht zu viele Dateien in
einem Schritt hochladen sollten. Je nach Einstellung des Webservers
(siehe Kapitel <span class="reference">file-uploads</span> auf Seite <span class="pageref"><a href="#file-uploads">file-uploads</a></span>)
dürfen Sie ein gewisses Limit (meist 4MB) nicht überschreiten.</p>

<p>Inzwischen gibt es aber die Möglichkeit beim Durchsuchen gleich mehrere Bilder <em>“In-Once”</em> zugleich emporzuladen,
die, durch ein kleines Javascript Programm gesteuert, automatisch abgearbeitet werden. Im Zuge der in Kapitel 5.0 erklärten
Veränderungen (siehe oben) mit den AVIF Variation Dateien und der mitunter erheblich Kodierungszeit,
sollten sie von mehrfachen Uploads vorerst absehen, wenn Sie dies Feature nutzen, auch wenn das hier genannte Javascript
nur eines zur Zeit bearbeitet.</p>

<p>Nachdem Sie also die Dateien ausgewählt haben, haben Sie zwei
Möglichkeiten der Speicherung. Ein Klick auf <span class="mbold">Los!</span> speichert die
Datei und erstellt ggf. automatisch kleine Voransichten. Wenn Sie
jedoch auf <span class="mbold">Los und Eigenschaften angeben</span> klicken, werden Sie auf
einer Folgeseite gebeten, zu einer Datei optionale Meta-Informationen
anzugeben. Diese Meta-Informationen können Sie auch später noch
nachtragen oder überarbeiten, wenn sie in der Mediathek bereits
gespeichert sind.</p>

</section><!-- section.sub end -->

<section id="U452" class="sub">
<span class="u-toc">4.5.2 - Mediendaten: Probleme beim Upload</span>

<h3 class="subsection" id="mediendaten-probleme-beim-upload">Mediendaten: Probleme beim Upload</h3>

<p class="tagging invisible">
<span class="label invisible" id="Mediendaten-Probleme beim Upload">Mediendaten-Probleme beim Upload</span>
<span class="tag-box invisible">
    <span class="inline-tag">Mediendaten!Probleme beim Upload|see{Backend, Mediendaten: Probleme beim Upload}</span>
    <span class="inline-tag">Backend!Mediendaten!Probleme beim Upload</span>
    <span class="inline-tag">Fehler!Datei-Upload</span>
</span>
</p>

<p>Scheitert das Speichern einer neuen Datei, liegt dies meist an
falschen Zugriffsrechten (Kapitel <span class="reference">Zugriffsrechte</span> auf Seite
<span class="pageref"><a href="#Zugriffsrechte">Zugriffsrechte</a></span>). Stellen Sie sicher, dass Ihr
Webserver Schreibzugriff auf den Ordner <code>uploads</code> besitzt. Auch eine
falsche Einstellung durch den PHP <code>SafeMode</code> kann Schreibprobleme
verursachen.</p>

<p>Wenn eine Datei aufgrund der Größenbeschränkung des Webservers nicht
hochgeladen werden kann, wird Serendipity darüber einen Hinweis geben.</p>

<p>Einige Webserver filtern zudem spezielle Dateien, um Sicherheitsprobleme
zu verhindern. Wenn Sie also merkwürdige Fehlermeldungen erhalten,
sollten Sie Webserver-Module wie <code>mod_security</code> oder <code>suhosin</code>
in Betracht ziehen und gemeinsam mit dem Serverprovider anpassen.</p>

<p>Beim Upload großer Dateien kann es zudem auch passieren, dass Ihre
Verbindung aufgrund der großen Transferdauer entweder sehr lange dauert
oder sogar abbricht. In so einem Fall sollten Sie besonders große Dateien
lieber mittels FTP-Programm auf den Server laden.</p>

</section><!-- section.sub end -->

<section id="U453" class="sub">
<span class="u-toc">4.5.3 - Mediendaten: Eigenschaften angeben</span>

<h3 class="subsection" id="mediendaten-eigenschaften-angeben">Mediendaten: Eigenschaften angeben</h3>

<p class="tagging invisible">
<span class="label invisible" id="Mediendaten-Eigenschaften hinzufuegen">Mediendaten-Eigenschaften hinzufügen</span>
<span class="tag-box invisible">
    <span class="inline-tag">Mediendaten!Eigenschaften hinzufügen|see{Backend, Mediendaten: Eigenschaften hinzufügen}</span>
    <span class="inline-tag">Backend!Mediendaten!Eigenschaften hinzufügen</span>
</span>
</p>

<p>Wenn Sie beim Hochladen einer Datei auf den Button <span class="mbold">Los und
Eigenschaften angeben</span> geklickt oder innerhalb der Mediathek-Übersicht auf das
<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-image" viewBox="0 0 16 16">
  <path d="M6.002 5.5a1.5 1.5 0 1 1-3 0 1.5 1.5 0 0 1 3 0z"/>
  <path d="M2.002 1a2 2 0 0 0-2 2v10a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2V3a2 2 0 0 0-2-2h-12zm12 1a1 1 0 0 1 1 1v6.5l-3.777-1.947a.5.5 0 0 0-.577.093l-3.71 3.71-2.66-1.772a.5.5 0 0 0-.63.062L1.002 12V3a1 1 0 0 1 1-1h12z"/>
</svg>
<span class="mbold">Blacklist</span>-Symbol einer Datei geklickt haben, landen Sie
auf einer Seite, in der Sie die Eigenschaften einer Datei überarbeiten können.</p>

<figure id="fig-upload2">
    <img src="img/upload2.png">
    <figcaption>Abbildung 4.13: Mediathek: Eigenschaften angeben</figcaption>
</figure>

<p>Diese Seite stellt die betreffenden Meta-Informationen einer Datei dar.
Als Erstes wird dabei entweder das Vorschaubild einer Grafikdatei oder
ein Dateityp-Icon von Nicht-Grafikdateien angezeigt.</p>

<p>Unterhalb dieses Icons bzw Vorschaubildes sehen Sie den Namen und den Typ der gewählten
Datei. Direkt darunter wird aufgeführt, wer die Datei zu welchem Datum
hochgeladen hat und wie groß die Datei ist. Im Falle einer Grafikdatei
wird hier zudem die Auflösung der Grafik und die Auflösung des kleineren
Vorschaubildes angezeigt.</p>

<p>Es folgt der Block mit den <span class="mbold">Medien-Eigenschaften</span>. Auch hier werden
abhängig vom Dateityp gewisse Zusatzinformationen angezeigt. Bei Bildern
wird die
<span class="tag-box invisible">
    <span class="inline-tag">DPI</span>
</span>
<span class="mbold">DPI</span>-Zahl [*]
<span class="footnote"><i class="fa fa-info-circle"></i> Die DPI-Zahl (Dots Per Inch) eines
Bildes bestimmt, wie fein die Datei beim Ausdruck gerastert wird. Je
höher die Zahl ist, desto mehr Pixel passen auf ein Inch und desto feiner
wird eine Grafik dargestellt. Druckgrafiken haben meist 300 DPI und
Dateien, die nicht für den Druck vorgesehen sind, 72 DPI.</span><!-- footnote --> angegeben. Bei
Video- und Audiodateien wird die Länge der Datei dargestellt. Serendipity
versucht die DPI-Zahl und die Spieldauer einer Datei automatisch
auszulesen, jedoch kann dies bei den vielen unterschiedlichen
Dateiformaten manchmal misslingen. Daher können Sie diese Angaben auch
manuell korrigieren und in die Eingabefelder eintragen.</p>

<p>Für alle Dateitypen werden die folgenden Felder angezeigt:</p>

<p class="desc">
<span class="tag-box invisible">
    <span class="inline-tag">Medieneigenschaften@Medien-Eigenschaften!verknüpftes Datum</span>
</span><!-- tagbox -->
<span class="item mbold">Verknüpftes Datum</span><!-- menuitem -->
<span class="desc-info">Jede Datei kann einen Zeitstempel enthalten, wann sie erstmals gespeichert
wurde. Bei Bildern, Videos oder Musikstücken entspricht dies oft dem
Aufnahmedatum. Diese Information versucht Serendipity anhand der Datei
automatisch zu erkennen. Sollten Sie das Datum ändern wollen, können Sie
es (beliebig formatiert) hier eintragen.</span>
</p>

<p class="desc">
<span class="tag-box invisible">
    <span class="inline-tag">Medieneigenschaften@Medien-Eigenschaften!Copyright</span>
</span><!-- tagbox -->
<span class="item mbold">Copyright</span><!-- menuitem -->
<span class="desc-info">Das Feld <span class="mbold">Copyright</span> kann Urheberrechtsinformationen für die
jeweilige Datei enthalten.</span>
</p>

<p class="desc">
<span class="tag-box invisible">
    <span class="inline-tag">Medieneigenschaften@Medien-Eigenschaften!Titel</span>
</span><!-- tagbox -->
<span class="item mbold">Titel</span><!-- menuitem -->
<span class="desc-info">Der <span class="mbold">Titel</span> einer Datei wird vom Redakteur manuell festgelegt.</span>
</p>

<p class="desc">
<span class="tag-box invisible">
    <span class="inline-tag">Medieneigenschaften@Medien-Eigenschaften!Kurzer Kommentar</span>
    <span class="inline-tag">Medieneigenschaften@Medien-Eigenschaften!Langer Kommentar</span>
</span><!-- tagbox -->
<span class="item mbold">Kurzer Kommentar</span>
<span class="item mbold">Langer Kommentar</span>
<span class="desc-info">Eine kurze sowie eine ausführliche Beschreibung einer Datei können Sie
in diesen beiden Eingabefeldern eintragen.</span>
</p>

<p class="desc">
<span class="tag-box invisible">
    <span class="inline-tag">Medieneigenschaften@Medien-Eigenschaften!Bildinhalt im ALT-Attribut</span>
</span><!-- tagbox -->
<span class="item mbold">Bildinhalt (im ALT-Attribut)</span><!-- menuitem -->
<span class="desc-info">Der HTML Markup <span class="mbold">Ersetzungstext</span> der angezeigt
wird, falls das Bild aus irgendwelchen Gründen nicht im Frontend angezeigt werden kann.</span>
</p>

<p class="desc">
<span class="tag-box invisible">
    <span class="inline-tag">Medieneigenschaften@Medien-Eigenschaften!Verzeichnis</span>
</span><!-- tagbox -->
<span class="item mbold">Verzeichnis oder Bildformat</span><!-- menuitem -->
<span class="desc-info">

    <span class="box">
        Wenn eine Dateiveränderung erforderlich ist, verwenden Sie <span class="mbold">entweder</span> die Änderung
        des Verzeichnisses <span class="mbold">oder</span> die Änderung der Bildformatauswahl per Übertragung. Sie
        können beide <span class="mbold">nicht</span> gleichzeitig verändern! Dies funktioniert ebenfalls nicht, wenn
        bereits ein Dateiname mit diesem neuen Format existiert und sollte deshalb vorher überprüft werden!
    </span>

    <span class="box">
        Das Auswahlfeld <span class="mbold">Verzeichnis</span> bestimmt, in welchem Verzeichnis eine
        Datei gespeichert wird. Wenn Sie später eine Datei verschieben wollen,
        können Sie das zugeordnete Verzeichnis an dieser Stelle ändern.
    </span>

    <span class="box">
        Das Auswahlfeld <span class="mbold">Bildformat</span> bestimmt,
        in welches andere Bildformat das Bild konvertiert werden soll.
    </span>

    <span class="tag-box invisible">
        <span class="inline-tag">Medien!verschieben</span>
    </span>
    <span class="box">
        Bei beiden Veränderung werden die Original Datei, sowie das Vorschaubild in das
        gewünschte Verzeichnis auf dem Server physikalisch verschoben, oder eben konvertiert und
        der alte Speicherort bzw. der komplette Name existiert dann also nicht mehr. Serendipity
        versucht nun automatisch alle Ihre Artikel anzupassen, die das verschobene oder veränderte
        Bild referenziert haben. Prüfen Sie also bitte sicherheitshalber, ob alle Ihnen bekannten
        Verweise auf die Datei nach dem Verschieben bzw der Konvertierung noch stimmen. Generell
        empfiehlt es sich, nachdem Sie eine Datei bereits eingebunden haben, den Speicherort der
        Datei als auch ihre Extension, alöso das Bildformat nicht mehr zu verändern.
        Folgerichtig ist eine gut durchdachte Planung ihrer Mediathek, des Dateiverzeichnisses und
        des Bilduploads durchaus etwas Wert!
    </span>

    <span class="tag-box invisible">
        <span class="inline-tag">Medien!konvertieren</span>
    </span>
    <span class="box">
        Bei dieser Konvertierung wird die Datei mit all ihren Formaten und Variationen
        physikalisch, als auch in der Mediendatenbank verändert. Natürlich werden entsprechende
        Blogeinträge auf nötige Veränderunegn untersucht.
        WEBP / AVIF Formatvariationen von Originaldateien existieren wahrscheinlich bereits
        und sind von dieser Änderung nicht betroffen.
    </span>
</span>
</p>

<p>Diese Felder können später von Redakteuren in der Mediathek eingesehen und
durchsucht werden und stehen auch in speziellen Galerie-Ansichten (siehe Seite
<span class="pageref"><a href="#mdb-profi">mdb-profi</a></span>) für normale Besucher zur Verfügung.
Sie können auch individuell weitere Meta-Informationsfelder für Dateien
erfassen. Dies wird über die Option <span class="mbold">Medien-Eigenschaften</span> in der
Serendipity-Konfiguration (siehe Kapitel <span class="reference">Konfiguration</span> ab Seite
<span class="pageref"><a href="#Konfiguration">Konfiguration</a></span>) eingestellt.</p>

<p>
<span class="tag-box invisible">
    <span class="inline-tag">Medienschluesselwoerter@Medien-Schlüsselwörter</span>
</span>
Der Abschnitt <em>Medien-Schlüsselwörter</em> kann für eine Datei vorher
festgelegte Schlüsselwörter angeben. Die verfügbaren Schlüsselwörter
werden dabei ebenfalls an zentraler Stelle der Serendipity-Konfiguration
(so.) über die Option <span class="mbold">Medien-Schlüsselwörter</span> festgelegt.</p>

<p>Jedes Schlüsselwort kann über die Aktivierung der links daneben stehenden
Auswahlbox aktiviert werden. Schlüsselwörter machen es später leichter,
eine Datei mit bestimmten Kriterien über eine Suche in der Mediathek
wieder aufzufinden.</p>

<p>
<span class="tag-box invisible">
    <span class="inline-tag">EXIF</span>
    <span class="inline-tag">IPTC</span>
    <span class="inline-tag">XMP</span>
</span>
Am Ende der Seite befindet sich im Abschnitt <span class="mbold">EXIF/IPTC/XMP</span> eine
von der Datei abhängige Liste an Datei-Angaben. Das <em>EXIF</em>-Format
stellt spezielle Angaben wie das Erstellungsdatum, Angaben über die
verwendete Digitalkamera, Blendenwerte, involvierte Software und Weiteres
innerhalb einer Datei zur Verfügung und kann von Serendipity daher
ausgelesen werden. Da diese Angaben fest in der Datei gespeichert sind,
können sie von Ihnen nicht bearbeitet werden, sondern dienen nur der
Information. Moderne Digitalkameras speichern diese Informationen in den
erstellten Bilddateien automatisch ab.</p>

<p>Sollte eine Datei über die Mediathek im Frontend speziell
eingebunden werden (siehe Seite <span class="pageref"><a href="#mdb-by-id">mdb-by-id</a></span>), können Sie in einem weiteren
Abschnitt alle Verweisquellen aufgelistet sehen. Die dort aufgeführten
Webseiten stellen also Internet-Seiten dar, auf denen das aktuelle Bild
dargestellt wird. So können Sie leicht herausfinden, ob ein Bild
überhaupt eingesetzt wird oder ob Sie es problemlos löschen/verändern
können.</p>

</section><!-- section.sub end -->

<section id="U454" class="sub">
<span class="u-toc">4.5.4 - Mediathek: Übersicht</span>

<h3 class="subsection" id="mediathek-übersicht">Mediathek: Übersicht</h3>

<p class="tagging invisible">
<span class="tag-box invisible">
    <span class="inline-tag">Backend!Mediathek</span>
</span>
</p>

<p>Über den Menüpunkt <span class="mbold">Mediathek</span> wird die zentrale Übersicht
aller in der Mediathek eingetragenen Dateien aufgerufen.</p>

<p>Diese Seite haben Sie möglicherweise auch schon im Kapitel
<span class="reference">Mediathek-Popup</span> auf Seite <span class="pageref"><a href="#mediathek-popup">Mediathek-Popup</a></span>
gesehen, dort jedoch noch ohne Bearbeitungsoptionen für jede Datei.</p>

<p>Die Übersicht besteht aus einem Kopfbereich verschiedenster Einstellungen für die
Mediathek und darunter einer mehrspaltigen Ansicht aller von Ihnen
hochgeladenen Dateien, oder eines einzelnen Ordners.</p>

<figure id="fig-ml_directory">
  <a class="lightbox" rel="lightbox" href="media/ml_directory_dm_de.avif" lg-uid="lg4541" data-fallback="media/ml_directory_dm_de.webp">
    <picture>
      <source srcset="media/ml_directory_dm_de.avif" type="image/avif">
      <source srcset="media/ml_directory_dm_de.webp" type="image/webp">
      <img src="media/ml_directory_dm_de.png" alt="ml_directory_dm_de.png" loading="lazy" width="1385" height="920">
    </picture>
    <figcaption>Abbildung 4.14: Mediathek: Übersicht</figcaption>
  </a>
</figure>

<p>Die Seite stellt standardmäßig jeweils acht Dateien pro Seite dar und kann über die Buttons
<span class="mbold">Weiter</span> und <span class="mbold">Zurück</span> (in einem Bereich vor
und nach der Dateiübersicht) geblättert werden.
Mit Serendipity 2.1 kamen noch Seitenanfang und Seitenende Buttons, wie auch für die Blog Eintrags Liste hinzu.
Ebenfalls neu ist die Möglichkeit, analog zur bisherigen Sammel-Löschung mittels checkbox Auswahl, einer Sammel-Verschiebung von Dateien
innerhalb der Mediathek über den "Bewegen" Knopf und das Verzeichnis Auswahl Feld am unteren Ende. Damit können etwas ausgeuferte
Mediendatei-Sammlungen effizient in Form gebracht werden.</p>

<p>Ebenfalls interessant ist die buttonartige schmale Gitter Funktionsleiste in der
rechten oberen Ecke, die die Ansicht der Mediatheksdaten in ein 2-Spalten, 3-Spalten
oder 4-Spalten-Layout wechselt. Durch die Ladeverhalten-Verbesserungen die mit den
neuen Bildvariationen erreicht wurden, können Sie diese Spalten natürlich auch mit
mehr als den standardmäßigen 8 Dateien pro Seite betreiben. Dazu wurde die Auswahl
an zugleich gezeigten Dateien im Sortierungsfilter erheblich erweitert, so dass Sie
immer eine passende Ansicht und Zahl zu der von Ihnen gewählten Spaltenansicht
erhalten können, ohne Löcher in der Dateienansicht zu erzeugen. Ein sehr praktisches
Tool, um damit schnell einen Überblick zu gewinnen, oder ein gesuchtes Bild zu finden.</p>

<figure id="fig-ml_imageinfo">
  <a class="lightbox" rel="lightbox" href="media/ml_imageinfo_dm_de.avif" lg-uid="lg4542" data-fallback="media/ml_imageinfo_dm_de.webp">
    <picture>
      <source srcset="media/ml_imageinfo_dm_de.avif" type="image/avif">
      <source srcset="media/ml_imageinfo_dm_de.webp" type="image/webp">
      <img src="media/ml_imageinfo_dm_de.png" alt="ml_imageinfo_dm_de.png" loading="lazy" width="1385" height="820">
    </picture>
    <figcaption>Abbildung 4.14a: Mediathek: Symbolleiste</figcaption>
  </a>
</figure>

<p>In dem mehrpaltigen Bereich wird pro Box ein Objekt aus der Mediathek dargestellt,
mit den jeweiligen Informationen und Optionen dieses Objekts:</p>

<p class="desc">
<span class="tag-box invisible">
    <span class="inline-tag">Mediathek!Symbolleiste</span>
</span><!-- tagbox -->
<span class="item mbold">Symbolleiste</span><!-- menuitem -->
<span class="desc-info">
    <span class="box">
        Die <span class="mbold">Symbolleiste</span> unterhalb jeder Infobox stellt
        die möglichen Funktionen für eine Datei dar. Abhängig davon, ob eine
        Datei ein Bild oder etwas anderes darstellt, bietet die Symbolleiste
        unterschiedliche Optionen an.
    </span>

    <span class="box">
        Die <span class="mbold">Lupe</span> öffnet eine Ansicht der
        Originaldatei in einem separaten Popup-Fenster. Bei Bildern wird hierin
        passgenau das Originalbild angezeigt, bei anderen Dateitypen wie
        PDF-Dokumenten wird das damit assoziierte Programm auf Ihrem Computer
        gestartet.
    </span>

    <span class="tag-box invisible">
        <span class="inline-tag">Mediendaten!umbenennen</span>
    </span>
    <span class="box">
        Das <span class="mbold">Stift</span>-Icon ermöglicht Ihnen, eine Datei
        umzubenennen. Ein Popup-Fenster wird Sie nach dem neuen Dateinamen
        fragen. Beim Umbenennen der Datei müssen Sie darauf achten, dass, sofern die
        Datei bereits in Blog-Artikeln referenziert wird, Sie den Namen der Datei
        dort ebenfalls anpassen müssen, damit er dem neuen entspricht. Beim Umbenennen
        einer Datei kann nur der Stammname verändert werden und nicht die
        Dateiendung.
    </span>

    <span class="box">
        Bei Bilddateien sehen Sie nun drei weitere Buttons: Das <span class="mbold">Diagonale Pfeile</span> Symbol
        ermöglicht es, ein Bild zu vergrößern oder zu verkleinern. Bei einem Klick darauf
        öffnet sich eine Seite, die das Originalbild und dessen Originalauflösung darstellt,
        sie aber skaldiert (d.h. Seitengerecht verkleinert) anzeigt,
        und Sie können in einer Texteingabebox die neue Auflösung eintragen.
    </span>

    <span class="box">
        <span class="sub-box indent">Die Auswahlbox <span class="mbold">Proportionen beibehalten</span>
        sollte hier aktiviert sein und bewirkt, dass das Seitenverhältnis einer Datei bei der
        Verkleinerung beibehalten wird. Die Auswahlbox <span class="mbold">Variationsformat ändern</span>,
        sollte nur aktiviert sein, wenn Sie das eigentliche Proportionsverhältnis des Bildes verändern.
        Näheres wird in den Info Boxen der Seite selbst erläutert. Siehe nachfolgend: Abbildung 4.14b.</span>
    </span>

    <span class="box">
        Die beiden weiteren Buttons in der Symbolleiste
        (<span class="mbold">Rotation nach links</span>, <span class="mbold">Rotation
        nach rechts</span>) drehen ein Bild im oder gegen den Uhrzeigersinn jeweils um
        90 Grad. Sie können daher ein im Querformat hochgeladenes Bild ins Hochformat
        umwandeln und umgekehrt. Achten Sie auf die gemachten Einschränkungen bezüglich
        der Nutzung von AVIF Variations Dateien.
    </span>

    <span class="box">
        Der nächste Button ist nun wieder für jeden Dateityp identisch.
        Das <span class="mbold">Picture-Symbol</span> öffnet die Medien-Eigenschaften einer Datei
        (siehe Seite <span class="pageref"><a href="#Mediendaten-Eigenschaften hinzufuegen">Mediendaten-Eigenschaften hinzufügen</a> und übernächste Abbildung 4.14c</span>).
    </span>

    <span class="box">
        Das Löschen eines einzelnen Bildes kann mit dem (vor-)letzten Button dieser Reihe,
        über das allseits verwendete <span class="mbold">Mülleimer</span>-Symbol,
        oder global für mehrere Bilder über die Löschung mittels Checkbox und des Button
        <span class="tag-box invisible">
            <span class="inline-tag">Auswahl umkehren</span>
        </span>
        <span class="mbold">Auswahl umkehren</span> und <span class="mbold">Löschen</span>
        am Seitenende geschehen. Siehe vorhergehende Abbildung 4.14a.
    </span>

    <span class="box">
        Bilddateien mit einer Bild-Variation (WebP/AVIF) zeigen einen weiteren Button, der auf
        Klick das größere Bild in der Variation anzeigt. Das macht zwar auch der Klick auf das
        gezeigte Vorschau Bild selbst auch, doch ist es dort mit seinem Originalnamen ausgezeichnet.
        Da aber, wie bereits erwähnt, das Styx Backend vollends auf die Ansichts Möglichkeiten
        von &lt;picture&gt; Containern setzt, wird auch hier schon das kleinstmögliche der
        möglichen Variationen geladen und angezeigt. Der Name allerdings orientert sich am
        Originalbild, so dass Sie in etwa das sehen: "Vollbild: Blumenkohl.jpeg (AVIF)".
        Nur die Auszeichnung in der Klammer deutet auf die Variation hin. Drücken Sie aber
        den Variations Button, so sehen Sie: "Bild Variation: Blumenkohl.avif, 2500x1666px".
    </span>
</span>
</p>

<figure id="fig-ml_imagesize">
  <a class="lightbox" rel="lightbox" href="media/ml_imagesize_dm_de.avif" lg-uid="lg4543" data-fallback="media/ml_imagesize_dm_de.webp">
    <picture>
      <source srcset="media/ml_imagesize_dm_de.avif" type="image/avif">
      <source srcset="media/ml_imagesize_dm_de.webp" type="image/webp">
      <img src="media/ml_imagesize_dm_de.png" alt="ml_imagesize_dm_de.png" loading="lazy" width="1385" height="920">
    </picture>
    <figcaption>Abbildung 4.14b: Mediathek: Symbolleiste: Proportionen ändern</figcaption>
  </a>
</figure>

<figure id="fig-ml_imageproperties">
  <a class="lightbox" rel="lightbox" href="media/ml_imageproperties_dm_de.avif" lg-uid="lg4544" data-fallback="media/ml_imageproperties_dm_de.webp">
    <picture>
      <source srcset="media/ml_imageproperties_dm_de.avif" type="image/avif">
      <source srcset="media/ml_imageproperties_dm_de.webp" type="image/webp">
      <img src="media/ml_imageproperties_dm_de.png" alt="ml_imageproperties_dm_de.png" loading="lazy" width="1377" height="1848">
    </picture>
    <figcaption>Abbildung 4.14c: Mediathek: Symbolleiste: Medien Eigenschaften</figcaption>
  </a>
</figure>

<p class="desc">
<span class="item mbold">Vorschaubild/Icon</span><!-- menuitem -->
<span class="desc-info">Bei Bildern sehen Sie oben das Vorschaubild.
Bei anderen Dateien kann hier ein Symbol für das jeweilige Dateiformat stehen.</span>
</p>

<p class="desc">
<span class="item mbold">Datei-Informationen</span><!-- menuitem -->
<span class="desc-info">Relevante und vorhandene Dateinformationen,
werden direkt darunter angezeigt.
Auf einen Eigentümer Informationsausgabe wurde verzichtet,
da seit vielen Serendipity Versionen keine Eigentümer Struktur für
Medieninhalte mehr vergeben wird.</span>
</p>

<p>&nbsp;</p><!-- separator -->

<figure id="fig-ml_filter_sort">
  <a class="lightbox" rel="lightbox" href="media/ml_filter_sort_dm_de.avif" lg-uid="lg4545" data-fallback="media/ml_filter_sort_dm_de.webp">
    <picture>
      <source srcset="media/ml_filter_sort_dm_de.avif" type="image/avif">
      <source srcset="media/ml_filter_sort_dm_de.webp" type="image/webp">
      <img src="media/ml_filter_sort_dm_de.png" alt="ml_filter_sort_dm_de.png" loading="lazy" width="1377" height="1700">
    </picture>
    <figcaption>Abbildung 4.15: Mediathek: Filtern und Sortieren</figcaption>
  </a>
</figure>

<p>Üblicherweise richten sich die dargestellten Dateien nach deren
chronologischem Hochlade-Zeitpunkt. Das erste dargestellte Bild ist also
das, was zuletzt hochgeladen wurde - ganz gleich, in welchem Verzeichnis die
Datei abgelegt wurde. Diese Reihenfolge und die Kriterien, nach denen Dateien
angezeigt werden, können Sie im Kopfbereich anpassen:</p>

<p class="tagging invisible">
<span class="label invisible" id="mediathek-filter">Mediathek Filter</span>
<span class="tag-box invisible">
    <span class="inline-tag">Mediathek!Filter</span>
    <span class="inline-tag">Mediathek!Sortieren</span>
</span>
</p>

<p class="desc">
<span class="item mbold">Filter: Verzeichnis</span><!-- menuitem -->
<span class="desc-info">Im Auswahlfeld <span class="mbold">Verzeichnis</span> können Sie wählen, aus welchem
Unterverzeichnis Dateien dargestellt werden sollen.</span>
</p>

<p class="desc">
    <span class="item mbold">Filter: Dateiname</span><!-- menuitem -->
    <span class="desc-info">
        <span class="box">
            Wenn Sie die Mediathek nach einem ganz speziellen Dateinamen durchsuchen wollen,
            können Sie diesen in dem Eingabefeld <span class="mbold">Dateiname</span> eintragen.
            Dabei wird die Suche später auch nach Teilwörtern und ohne Berücksichtigung der
            Groß- und Kleinschreibung ausgeführt. So könnten Sie beispielsweise nach allen
            PDF-Dateien suchen, indem Sie dort <code>.pdf</code> eintragen.
        </span>

        <span class="box">
            Über die <span class="mbold">Vereinfachte Filter</span>-Einstellung in den
            <span class="mbold">Eigenen Einstellungen</span> können Sie bestimmen, wieviel
            an Filteroptionen hier angezeigt und erlaubt werden.
        </span>
    </span>
</p>

<p class="desc">
<span class="item mbold">Filter</span><!-- menuitem -->
<span class="desc-info">
    <span class="box">
        Die beiden vorangestellten Pfeile vor dem Button <span class="mbold">Filter</span> deuten
        darauf hin, dass ein Klick einen Unterbereich im Filtermenü ausklappt.
        Dieser belegt recht viel Bildschirmplatz und wird standardmäßig
        ausgeblendet. Sie finden innerhalb dieses eingeblendeten Bereichs
        zahlreiche Filtermethoden, die Sie ausfüllen können, um Dateien nach
        bestimmten Kriterien zu suchen.
    </span>

    <span class="box">
        Alle ausgefüllten Filterkriterien werden dabei miteinander so verkettet
        (<em>UND-Verkettung</em>), dass nur Dateien angezeigt werden, auf die
        <em>jedes</em> Kriterium zutrifft. Wenn Sie daher nach Dateien suchen
        wollen, die mehreren unterschiedlichen Kriterien entsprechen könnten,
        müssen Sie dafür jeweils erneut eine Suche ausführen.
    </span>

    <span class="box mda-box">

        <span class="box">
            <span class="box"><span class="item mbold">Filter: Medien-Schlüsselwörter</span></span>
            In das Eingabefeld <span class="mbold">Medien-Schlüsselwörter</span> können Sie, mit
            Semikolon getrennt, mehrere Schlüsselwörter eingeben, die auf ein Bild
            zutreffen müssen. Rechts neben dem Eingabefeld sehen Sie die Liste aller
            verfügbaren Schlüsselwörter, die Sie auch direkt durch Anklicken in das
            Eingabefeld übernehmen können.
        </span>

        <span class="box">
            <span class="box"><span class="item mbold">Filter: Upload-Datum</span></span>
            Um nur Dateien anzuzeigen, die in einem gewissen Zeitraum eingestellt
            worden sind, können Sie das Start- und Enddatum in das Feld
            <span class="mbold">Upload-Datum</span> eintragen. Das Dateiformat kann dabei der Syntax
            <code>Tag.Monat.Jahr</code> oder <code>Jahr-Monat-Tag</code> oder <code>Monat/Tag/Jahr</code>
            entsprechen - die Angabe einer Uhrzeit ist nicht möglich. Wenn Sie nur
            das Startdatum eintragen, werden alle Dateien seit diesem Zeitpunkt bis
            heute angezeigt. Ist nur das Enddatum ausgefüllt, werden alle Dateien bis
            zu diesem Zeitpunkt angezeigt.
        </span>

        <span class="box">
            <span class="box"><span class="item mbold">Filter: Dateiname</span></span>
            Die Filterung nach einem Dateinamen konnten Sie bereits oberhalb des
            Filter-Bereichs einstellen, aber er wird hier der Vollständigkeit halber
            nochmals aufgeführt.
        </span>

        <span class="box">
            <span class="box"><span class="item mbold">Filter: Autor</span></span>
            Wenn Sie nach Dateien suchen, die ein bestimmter Autor hochgeladen hat,
            können Sie diesen aus dem Auswahlfeld <span class="mbold">Autor</span> aussuchen.
        </span>

        <span class="box">
            <span class="box"><span class="item mbold">Filter: Dateiendung</span></span>
            Wollen Sie nach einem Dateinamen
            <em>und</em> einer Dateiendung suchen, reicht es
            nicht aus, nur das Feld <span class="mbold">Dateiname</span> auszufüllen, da Sie dort ja
            nur nach einer einzigen Teilzeichenkette suchen. Daher können Sie
            zusätzlich im Feld <span class="mbold">Dateiendung</span> nach einer Endung suchen und
            <span class="mbold">Dateiname</span> für den eigentlichen Dateityp verwenden. Um zB.
            nach allen PDF-Dateien mit der Zeichenkette <code>hund</code> im Dateinamen
            zu suchen, tragen Sie <code>pdf</code> in <span class="mbold">Dateiendung</span> ein und
            <code>hund</code> in <span class="mbold">Dateinamen</span>. So werden
            <code>Schäferhund.pdf</code> wie auch <code>Hundekuchen.pdf</code> gefunden.
            Hätten Sie für den Dateinamen nur <code>hund.pdf</code> eingetragen, wäre nur
            <code>Schäferhund.pdf</code> gefunden worden!
        </span>

        <span class="box">
            <span class="box"><span class="item mbold">Filter: Dateigröße</span></span>
            Die <span class="mbold">Dateigröße</span> kann ähnlich wie das Upload-Datum in einem
            <code>von</code>-<code>bis</code>-Bereich angegeben werden. So können Sie alle
            Dateien zwischen <code>X</code> und <code>Y</code>kb Größe anzeigen.
        </span>

        <span class="box">
            <span class="box">
                <span class="item mbold">Filter: Bildbreite</span>
                <span class="item mbold">Filter: Bildhöhe</span>
            </span>
            Auch die <span class="mbold">Bildbreite</span> und <span class="mbold">Bildhöhe</span> lassen sich hier in Pixeln
            in einem minimalen und maximalen Bereich angeben. Wenn Sie also nach
            besonders kleinen oder großen Bildern suchen wollen, können Sie diese
            Einschränkung hier vornehmen.
        </span>

        <span class="box">
            <span class="box"><span class="item mbold">Filter: DPI</span></span>
            Die DPI-Angaben einer Bilddatei lassen sich im Eingabefeld <span class="mbold">DPI</span>
            filtern. Sollte man also nach einer druckfähigen Bilddatei suchen, könnte
            man hier <code>300</code> angeben.
        </span>
        <span class="box">
            <span class="box"><span class="item mbold">Filter: Laufzeit</span></span>
            Bei einer Video- oder Audio-Datei könnte man im Eingabefeld
            <span class="mbold">Laufzeit</span> den Bereich der Spieldauer eintragen. Die Angabe erfolgt
            dabei in Sekunden.
        </span>

        <span class="box">
            <span class="box"><span class="item mbold">Filter: Verknüpftes Datum</span></span>
            Wenn Sie nach einer Datei suchen, die zu einem speziellen Zeitpunkt
            erstellt wurde und in den Meta-Daten einer Datei festgehalten wurde,
            können Sie im Eingabefeld <span class="mbold">Verknüpftes Datum</span> danach suchen. Die
            zeitliche Einschränkung wird im selben Format vorgenommen wie bei der
            Filterung nach <span class="mbold">Upload-Datum</span>.
        </span>

        <span class="box">
            <span class="box"><span class="item mbold">Filter: Copyright</span></span>
            Suchen Sie Dateien mit einem speziell hinterlegten Urheber, können Sie im
            Eingabefeld <span class="mbold">Copyright</span> danach suchen. Teilwörter werden dabei auch
            akzeptiert. Achten Sie darauf, dass das Copyright ein vom Redakteur
            optional ausgefülltes Informationsfeld ist und daher nicht zwingend bei
            jeder Datei verfügbar ist.
        </span>

        <span class="box">
            <span class="box"><span class="item mbold">Filter: Titel, Kurzer Kommentar, Langer Kommentar</span></span>
            Die letzten drei Filterfelder <span class="mbold">Titel</span>, <span class="mbold">Kurzer Kommentar</span> und
            <span class="mbold">Langer Kommentar</span> können ebenfalls Teilwörter enthalten, nach denen
            Sie in den entsprechend vom Redakteur ausgefüllten Meta-Feldern suchen
            können.
        </span>

    </span>

</span>
</p>

<p>&nbsp;</p><!-- separator -->

<p>Die verfügbaren Filter-Felder der Meta-Informationen lassen sich mittels
der Option <span class="mbold">Medien-Eigenschaften</span> in der Serendipity-Konfiguration
(siehe Kapitel <span class="reference">Konfiguration</span> ab Seite <span class="pageref"><a href="#Konfiguration">Konfiguration</a></span>)
einstellen. Alle dort festgelegten Felder können als Filterkriterium
dienen.</p>

<p>Unterhalb des Filter-Bereichs können Sie die Sortierung der Anzeige
beeinflussen:</p>

<p class="desc">
<span class="item mbold">Sortieren nach</span><!-- menuitem -->
<span class="desc-info">Über das Auswahlfeld <span class="mbold">Sortieren nach</span> stellen Sie ein, wie die
Bilder innerhalb der Übersicht sortiert werden. Zur Auswahl steht das
<span class="mbold">Upload-Datum</span>, der <span class="mbold">Dateiname</span> (alphabetisch), der
<span class="mbold">Autorname</span> (alphabetisch), die <span class="mbold">Dateiendung</span> (alphabetisch),
die <span class="mbold">Bildbreite</span> oder <span class="mbold">Bildhöhe</span> und zuletzt die
Sortierung nach allen konfigurierten Meta-Feldern.</span>
</p>

<p class="desc">
<span class="item mbold">Sortierung</span><!-- menuitem -->
<span class="desc-info">Die Sortierungsreihenfolge (<span class="mbold">absteigend</span> oder <span class="mbold">aufsteigend</span>)
wird über das Auswahlfeld <span class="mbold">Sortierung</span> festgelegt.</span>
</p>

<p class="desc">
<span class="item mbold">Dateien pro Seite</span><!-- menuitem -->
<span class="desc-info">Die letzte Option der Suche gibt an, wie viele <span class="mbold">Dateien pro Seite</span> in
der Übersicht angezeigt werden sollen. Die Auswahl ist auf <span class="mbold">8, 16,
50</span> oder <span class="mbold">100</span> Dateien begrenzt.</span>
</p>

<p class="desc">
<span class="item mbold">Per Verzeichnis</span><!-- menuitem -->
<span class="desc-info">Die Option der nächsten Zeile gibt an,
ob <span class="mbold">nur</span> Dateien des ausgewählten Verzeichnissebene,
oder alle Mediendateien inklusive der Unterverzeichnisse dargestellt werden
sollen. Diese Option ist ungemein hilfreich, wenn Sie über eine gut und
verschachtelt sortierte Mediathek verfügen.</span>
</p>

<p>&nbsp;</p><!-- separator -->

<p>Ein Klick auf den Button <span class="mbold">Los!</span> wird die gewünschten Filterkriterien
auswerten und danach alle Suchergebnisse in der gewohnten blätterbaren
Übersicht darstellen.</p>

</section><!-- section.sub end -->

<section id="U455" class="sub">
<span class="u-toc">4.5.5 - Verzeichnisse verwalten</span>

<h3 class="subsection" id="verzeichnisse-verwalten">Verzeichnisse verwalten</h3>

<p class="tagging invisible">
<span class="label invisible" id="Verzeichnisse verwalten">Verzeichnisse verwalten</span>
<span class="tag-box invisible">
    <span class="inline-tag">Verzeichnisse verwalten|see{Backend, Verzeichnisse verwalten}</span>
    <span class="inline-tag">Backend!Verzeichnisse verwalten</span>
</span>
</p>

<p>
<span class="tag-box invisible">
    <span class="inline-tag">Zugriffsrechte</span>
    <span class="inline-tag">Mediathek!Zugriffsrechte</span>
</span>
Ähnlich wie die Verwaltung der Kategorien (siehe Kapitel <span class="reference">Kategorien</span>
auf Seite <span class="pageref"><a href="#Kategorien">Kategorien</a></span>) können Schreib- und Leserechte von
Mediathek-Dateien verwaltet werden.</p>

<p>Hinter dem Menüpunkt <span class="mbold">Verzeichnisse verwalten</span> sehen Sie eine
Übersicht aller Unterverzeichnisse der Mediathek
(<code>uploads</code>-Verzeichnis im Serendipity-Stammverzeichnis).</p>

<figure id="fig-ml_directories">
  <a class="lightbox" rel="lightbox" href="media/ml_directories_dm_de.avif" lg-uid="lg4551" data-fallback="media/ml_directories_dm_de.webp">
    <picture>
      <source srcset="media/ml_directories_dm_de.avif" type="image/avif">
      <source srcset="media/ml_directories_dm_de.webp" type="image/webp">
      <img src="media/ml_directories_dm_de.png" alt="ml_directories_dm_de.png" loading="lazy" width="1385" height="1033">
    </picture>
    <figcaption>Abbildung 4.16: Mediathek: Verzeichnisse verwalten: Neues Verzeichnis anlegen</figcaption>
  </a>
</figure>

<p>Neben allen Verzeichnissen, die jeweils wie im Dateisystem verschachtelt
untereinander angezeigt sind, sehen Sie drei Buttons zum
<span class="mbold">Bearbeiten</span>, <span class="mbold">Duplizieren</span>
und zum <span class="mbold">Löschen</span> eines Verzeichnisses.</p>

<p>Ein Klick auf den Button <span class="mbold">Neues Verzeichnis anlegen</span> öffnet eine
Seite, in der Sie den <span class="mbold">Namen</span> eines neuen Verzeichnisses sowie
dessen übergeordnetes <span class="mbold">Stammverzeichnis</span> aus einem Auswahlfeld
wählen können. Wenn Sie danach auf <span class="mbold">Verzeichnis anlegen</span> klicken,
wird Serendipity versuchen, das neue Verzeichnis zu erstellen. Damit dies
erfolgreich durchgeführt werden kann, müssen die Zugriffsrechte (siehe
Seite <span class="pageref"><a href="#Zugriffsrechte">Zugriffsrechte</a></span>) korrekt eingerichtet sein.</p>

<figure id="fig-ml_directories_new">
  <a class="lightbox" rel="lightbox" href="media/ml_directories_new_dm_de.avif" lg-uid="lg4552" data-fallback="media/ml_directories_new_dm_de.webp">
    <picture>
      <source srcset="media/ml_directories_new_dm_de.avif" type="image/avif">
      <source srcset="media/ml_directories_new_dm_de.webp" type="image/webp">
      <img src="media/ml_directories_new_dm_de.png" alt="ml_directories_new_dm_de.png" loading="lazy" width="1420" height="800">
    </picture>
    <figcaption>Abbildung 4.16a: Mediathek: Verzeichnisse verwalten: Neues Verzeichnis anlegen</figcaption>
  </a>
</figure>

<p><span class="label invisible" id="mdb-zugriffsrechte">mdb-zugriffsrechte</span> Ein erstelltes Verzeichnis kann bearbeitet werden, indem Sie auf das
<span class="mbold">Stift</span>-Icon klicken. In dieser Maske sehen Sie zum einen den
<span class="mbold">Namen</span> des Verzeichnisses und zum anderen zwei größere
Auswahlfelder für die <span class="mbold">Leserechte</span> und die <span class="mbold">Schreibrechte</span>.</p>

<figure id="fig-ml_directories_edit">
  <a class="lightbox" rel="lightbox" href="media/ml_directories_edit_dm_de.avif" lg-uid="lg4553" data-fallback="media/ml_directories_edit_dm_de.webp">
    <picture>
      <source srcset="media/ml_directories_edit_dm_de.avif" type="image/avif">
      <source srcset="media/ml_directories_edit_dm_de.webp" type="image/webp">
      <img src="media/ml_directories_edit_dm_de.png" alt="ml_directories_edit_dm_de.png" loading="lazy" width="1420" height="1010">
    </picture>
    <figcaption>Abbildung 4.17: Mediathek: Verzeichnisse verwalten: Verzeichnis bearbeiten</figcaption>
  </a>
</figure>

<p>Diese Zugriffsrechte bestimmen ausschließlich die Zugriffsmöglichkeiten
innerhalb Serendipitys. Wenn Ihre Redakteure allerdings auch per FTP Zugriff auf die
Dateien der Mediathek haben, entzieht sich dies Serendipitys
Zugriffsmöglichkeiten.</p>

<p>Die Zugriffsrechte in der Mediathek werden auch nicht herangezogen,
wenn eine in einem Artikel eingebundene Datei im Frontend angezeigt wird.
Der Link für eine eingebundene Datei zeigt direkt auf den Dateinamen und
kann außerhalb von Serendipity über den normalen Webserver
heruntergeladen werden. Serendipity selbst ist also beim Download der
Datei nicht involviert und kann daher auch keine Zugriffsrechte auswerten.[*]
<span class="footnote"><i class="fa fa-info-circle"></i> Um Bilder <em>nicht</em> über den vollständigen
URL-Pfad auszugeben und so Zugriffsrechte abzufragen, gibt es jedoch einen
Trick, der auf Seite <span class="pageref"><a href="#mdb-by-id">mdb-by-id</a></span> erklärt wird.</span><!-- footnote -->
Einzig das Mediathek-Popup und weitere Funktionalitäten für
Redakteure werten später die Zugriffsrechte aus und zeigen entsprechend
der Rechte eines Redakteurs die ihm verfügbaren Optionen an.</p>

<p>Hat ein Redakteur kein Schreibrecht auf ein Verzeichnis, gilt dies auch
für alle darin enthaltenen Dateien. Solche Dateien könnte ein Redakteur
daher später nicht löschen. Wenn ein Redakteur auch keine Leserechte in
einem Verzeichnis besitzt, wird er derartige Bilder in der
Mediathek-Ansicht erst gar nicht angezeigt bekommen.</p>

<p>Die Lese- und Schreibrechte können jeweils für mehrere Benutzergruppen
definiert werden, indem Sie die <em>(Strg/Apfel)</em>-Taste gedrückt halten und
anklicken. Die Option <span class="mbold">Alle Autoren</span> gibt ein Verzeichnis für alle
Redakteure frei.</p>

<p>Alle Lese- und Schreibrechte gelten ausschließlich für das aktuell
bearbeitete Verzeichnis. Etwaige Unterverzeichnisse müssen alle separat
konfiguriert werden. Dadurch ist es später möglich, zwar ein
Stammverzeichnis für Redakteure zu sperren, aber Unterverzeichnisse
gezielt wieder zugänglich zu machen. Wenn Sie im Nachhinein bei einer
bestehenden Verzeichnisstruktur Rechte vergeben, möchten Sie vielleicht
gerne diese Rechte auch für alle Unterverzeichnisse identisch vergeben.
Dafür müssen Sie das Ankreuzfeld <span class="mbold">Identische Rechte auch auf alle
Unterverzeichnisse anwenden</span> aktivieren.</p>

<p>Standardmäßig stehen die Lese- / Schreibrechte auf "0", das heißt "Alle Autoren".
Setzen Sie sie aber als Administrator beispielsweise auf Redakteur, gleich "1", können
Sie anschließend nicht mehr zurück wechseln, da Sie sich selbst das Recht entzogen haben.
Achten Sie also darauf, <span class="mbold">höherrangige Usergruppen</span> immer mit zu <span class="mbold">inkludieren</span>, wenn Sie
selbst weiterhin darauf Zugriff haben sollen. <span class="mbold">Und das wollen Sie!</span></p>

<p>
<span class="tag-box invisible">
    <span class="inline-tag">Mediathek!Verzeichnisse löschen</span>
</span>
Um ein Verzeichnis zu löschen, klicken Sie auf das <span class="mbold">Mülleimer</span> Symbol. Sie
gelangen danach auf eine Unterseite, die Sie nochmals fragt, ob Sie das
Verzeichnis inklusive aller Dateien löschen (sowohl in der
Mediathek als auch im Dateisystem) wollen.
<span class="tag-box invisible">
    <span class="inline-tag">Mediathek!FTP</span>
</span>
Wenn Sie einmal Dateien mittels FTP in das zu löschende Verzeichnis (oder
eines seiner Unterverzeichnisse) hochgeladen haben, kann es sein, dass
sich darin Dateien befinden, die die Mediathek noch nicht
synchronisiert/importiert hat. Standardmäßig löscht Serendipity jedoch
nur alle Dateien, die in der Mediathek auch verzeichnet sind. Wenn
Sie die Option <span class="mbold">Alle Dateien dieses Verzeichnisses löschen</span>
aktivieren, wird Serendipity auch alle dem System unbekannten Dateien
zu löschen versuchen. Auch hier gilt wieder, dass Serendipity nur Dateien
löschen kann, auf die es auch Schreibzugriff hat.</p>

<figure id="fig-ml_directories_del">
  <a class="lightbox" rel="lightbox" href="media/ml_directories_del_dm_de.avif" lg-uid="lg4554" data-fallback="media/ml_directories_del_dm_de.webp">
    <picture>
      <source srcset="media/ml_directories_del_dm_de.avif" type="image/avif">
      <source srcset="media/ml_directories_del_dm_de.webp" type="image/webp">
      <img src="media/ml_directories_del_dm_de.png" alt="ml_directories_del_dm_de.png" loading="lazy" width="1420" height="1010">
    </picture>
    <figcaption>Abbildung 4.18: Mediathek: Verzeichnisse verwalten: Verzeichnis löschen</figcaption>
  </a>
</figure>

</section><!-- section.sub end -->

<section id="U456" class="sub">
<span class="u-toc">4.5.6 - Vorschauen erneuern</span>

<h3 class="subsection" id="vorschauen-erneuern">Vorschauen erneuern</h3>

<p class="tagging invisible">
<span class="label invisible" id="Vorschauen erneuern">Vorschauen erneuern</span>
<span class="tag-box invisible">
    <span class="inline-tag">Vorschauen erneuern|see{Backend, Vorschauen erneuern}</span>
    <span class="inline-tag">Backend!Vorschauen erneuern</span>
    <span class="inline-tag">FTP!Synchronisation</span>
    <span class="inline-tag">Mediathek!Synchronisierung</span>
    <span class="inline-tag">Synchronisierung</span>
    <span class="inline-tag">Thumbnails</span>
</span>
</p>

<p>Mit Serendipity 2.0 rückte dieser administrative Teil der Mediathek an sich,
in die <span class="mbold">Wartung</span>s Sektion der <span class="pageref">Backend:
<a href="#S470">Einstellungen</a></span>, genauer <span class="pageref">Wartung:
<a href="#U495">Vorschauen erneuern</a></span>.</p>

<p>Wie am Anfang des Kapitels <span class="reference">Mediathek</span> auf Seite
<span class="pageref"><a href="#mediathek">Mediathek</a></span> erklärt,
muss Serendipity zwischen den Dateien innerhalb der Verzeichnisstruktur auf dem Server
und einer Datenbanktabelle mit Meta-Informationen synchronisieren.</p>

<p>Wenn Sie also Dateien mittels FTP in das Mediathek-Verzeichnis
<code>uploads</code> hineinkopieren, wird Serendipity davon erst einmal nichts
mitbekommen. Damit Serendipity einen Abgleich zwischen Dateien auf dem
Server und der Mediendatenbank durchführen kann, nutzen Sie den Menüpunkt
<span class="mbold">Vorschauen erneuern</span>.</p>

<p>Wenn Sie auf diesen Menüpunkt klicken, wird Serendipity alle Dateien und
Unterverzeichnisse des <code>uploads</code>-Verzeichnisses durchgehen und
prüfen, ob die Datei bereits (oder noch) in der Mediendatenbank vorhanden
ist. Etwaige gelöschte Dateien auf dem Server werden daraufhin aus der
Mediathek entfernt und neue Dateien importiert.</p>

<p>Auch schon der normale Aufruf der Mediathek selbst kann ihre Daten automatisch
synchronisieren (siehe Seite <span class="pageref"><a href="#MDB-Synchronisation">MDB-Synchronisation</a></span>),
ist aber mit der genannten Option nicht zu hundert Prozent identisch.
Es kann daher ratsam sein, dann und wann die erste Option der Mediathek
Wartungsaufgaben ("<em>Behalte alle vorhandenen Vorschaubilder</em>") laufen zu
lassen, damit auch kleinste Unebenheiten bereinigt werden und Sie über diese auch
informiert werden.</p>

<p>Für jede gelöschte oder neu hinzugefügte Datei wird daraufhin ein
Hinweis auf die durchgeführte Aktion ausgegeben. Die Meldung <code>Fertig
(xx Bilder synchronisiert)</code> am Ende des Vorgangs gibt genaue Information
darüber, wie viele Dateien bearbeitet wurden.</p>

<p>Fehlerhafte und nicht lesbare Dateien werden ebenfalls in dieser Ausgabe
angezeigt, so dass Sie diese Dateien möglicherweise manuell via FTP löschen
oder verändern müssen.</p>

<p>
<span class="tag-box invisible">
    <span class="inline-tag">Performance</span>
</span>
Wenn Sie besonders viele Dateien und Verzeichnisse in der Mediathek gespeichert haben,
kann die Ausführung dieser Funktion möglicherweise sehr lange dauern oder gar zu
Server/PHP-Timeouts führen. Wenn dies passiert, sollten Sie entweder überlegen, alte
Dateien in der Mediathek zu löschen, oder Sie können alternativ in der
Serendipity-Konfiguration die automatische Synchronisierung der Mediathek aktivieren
(siehe Seite <span class="pageref"><a href="#MDB-Synchronisation">MDB-Synchronisation</a></span>).
Sobald die automatische Synchronisierung aktiviert ist, werden extern hochgeladene
Dateien beim Betrachten der Mediathek automatisch importiert. Dies beansprucht
weniger Zeit, da bei einem etwaigen Verbindungsabbruch an der Stelle fortgefahren
werden kann, bei der zuletzt abgebrochen wurde. Ein Löschen von bereits in Artikeln
benutzten Mediendateien ist nur bedingt anzuraten, denn diese bedingt ein sauberes System.
Die Fehlerquellen - gerade in alten Blogs - mit alten Fehlern und weiteren Ungereimtheiten
machen dies zu einem gewagten Spiel.</p>

<p>Ein weiteres Feature der Funktion <span class="mbold">Vorschauen erneuern</span>
ist, dass alle Vorschaugrafiken von Bildern überprüft und ggf. neu erstellt werden.
Falls Sie also versehentlich eine Vorschaugrafik namens <code>.serendipityThumb</code>
auf dem Server gelöscht haben, kann diese Datei immer neu erstellt werden. Wenn Sie in
der Serendipity-Konfiguration (siehe Seite <span class="pageref"><a href="#vorschaubildgroesse">Vorschaubildgröße</a></span>)
die Auflösung der Vorschaugrafiken einmal verändert haben (standardmäßig 400 Pixel),
könnten sämtliche Vorschaubilder mit der neuen Auflösung neu berechnet werden.</p>

<p>Die automatische Synchronisierung kann Änderungen in der Vorschaubild-Auflösung
nicht automatisch durchführen. Wenn also Ihre Mediathek zu groß geworden ist, um die
Ausführung der Funktion <span class="mbold">Vorschauen erneuern</span> erfolgreich zu beenden,
müssen Sie die Vorschaubilder leider manuell mittels anderer Bildverwaltungsprogramme verkleinern.
Allerdings kann die genannte Funktion durchaus mehrfach aktualisiert werden wenn eventuelle Fehler
auftreten oder es gar einen Abruch aus Zeitüberschreitung gab, denn es werden ja jeweils nur die
neueren oder fehlenden Bilder synchronisiert.</p>

<p>Mit <span class="mbold">Serendipity Styx</span> wurden schon allerlei Bugs und
Ungereimtheiten gefixt, die die fehlerfreie Funktion der Mediendaten-Synchronisation,
und/oder die korrekte Konvertierung der Einträge die bereits Mediendaten enthielten,
behinderten. Es ist einfach ein komplizierter Prozess und jede weitere Neuerung macht
es noch komplizierter. Und so finden sich in den Randbereichen bis heute Prozesse,
die weiter und immer weiter optimiert werden müssen.</p>

<p>Auch wurde ein neuer Menüpunkt <span class="mbold">Konvertiere alte Vorschaubild-Namen</span>
hinzugefügt, der es ermöglicht, einen Abgleich und Umschrieb der Mediendaten auf eine veränderte
Vorschaubild-Endung durchzuführen, falls Sie sich mittendrin entscheiden sollten, die Serendipity
<code>.serendipityThumb</code> oder Styx <code>.styxThumb</code> Standardeinstellung des
Vorschaubild-"Präfixes" zu verändern.
Diese Option ist solange nicht zu sehen, wie das bisherige <em>thumbSuffix</em> nicht geändert
wurde. Wenn es geändert wurde, muss schon mindestens eine neue Mediatheksdatei neu damit erstellt
worden sein damit sie in der Wartung und den Optionen der Bildersynchronisation auftaucht. Sie konvertiert
bestehende Thumbnails, die nicht nach dem aktuellen thumbSuffix-Schema benannt sind: <em>fooThumb</em>
(als Beispiel), in der Datenbank, im Dateisystem und bereits in Einträgen verwendet, in das gleiche
Suffix-Benennungsschema.</p>

<p>Das sollten Sie aber nicht unbedarft tun, denn die Möglichkeiten eines riesigen Kuddelmuddels
sind groß. Ein wenig Erfahrung und vielleicht das eine oder andere Backup der Mediathek, sowohl
real im Filesystem als auch der Datenbank, können nicht schaden, um eventuelle Schäden zu verhindern.
Sie können <strong>ohne weiteres</strong> mit zwei verschiedenen Thumbnail Auszeichnungen leben,
wenn es sich durch ein Update eines alten Blogs so ergeben hat. Nur in einem Fall ist die Synchronizität
im Vorwege wirklich erforderlich, wenn Sie die "<em>Erneuere alle [...]</em>" Option laufen lassen wollen.
Dann müssen Sie die Thumbname Präfix Auszeichnung überall gleich haben! Ansonsten laufen die Find
und Replace Anweisungen in ihren Blogeinträgen möglicherweise Amok.</p>

<p>Der Punkt "<em>Erstelle/Lösche alle zusätzlichen Picture-Format Variationen</em>" ist die Aufgabe
gedacht, wenn Sie alle Bild Variationen auf einmal löschen und danach neu erstellen lassen wollen.
Je nach Zustand (haben oder nicht haben) wird aus diesem Punkt ein "Löschen" oder "Erstellen".
Für das Erstellen gelten natürlich alle bisher gemachten Einschränkungen und Bedachtsamkeitem
bezüglich Auslastung und Fehlerquellen, insbesondere wenn Sie die AVIF Option aktiv gesetzt haben.
Löschen Sie ein Bild mit den üblichen dafür vorgesehenen Werkzeugen, werden natürlich auch dessen
Variationen gelöscht. Das ist also hier <strong>nicht</strong> gemeint!</p>

</section><!-- section.sub end -->

</section><!-- section.index end -->

<section id="S460" class="index">
<span class="s-toc">4.6 - Aktivität</span>

<h3 class="section" id="aktivitaet">Aktivität</h3>

<p class="tagging invisible">
<span class="tag-box invisible">
    <span class="inline-tag">Aktivität|see{Backend, Aktivität}</span>
    <span class="inline-tag">Backend!Aktivität</span>
</span>
</p>

<p>Der Menübereich <span class="mbold">Aktivität</span> umfasst alle Möglichkeiten
verschiedenster Aktivitäten für die Backend Administration, welche nicht eindeutig
nur aus dem Backend erstellte Formate für Texte bzw, Medien beinhalten.
Viele Plugins können ihre Backendaufgaben daher hier einfügen.
Die Kommentare wurden ehedem im Eintracks/Inhaltsbereich eingeordnet, doch sind
sie eine Art Zwitterwesen, da sie zwar relativ eindeutig zu den Eintragsinhalten
gehören, doch andererseits von Außen erstellt werden und hier nur die Aufgabe
vorliegt sie effektiv zu administrieren. Außerdem wäre dieser Bereich sonst recht
leer, wenn sich noch keine zusätzlichen Pluginaufgaben hier eingelinkt hätten.
Auch passen sie inhaltlich verzahnt eben besonders zum Spamblock Plugin, das hier
ebenso administriert wird.
</p>

<section id="U461" class="sub">
<span class="u-toc">4.6.1 - Kommentare</span>

<h3 class="subsection" id="kommentare">Kommentare</h3>

<p class="tagging invisible">
<span class="label invisible" id="Kommentare">Kommentare</span>
<span class="tag-box invisible">
    <span class="inline-tag">Kommentare|see{Backend, Kommentare}</span>
    <span class="inline-tag">Backend!Kommentare</span>
    <span class="inline-tag">Moderieren!Kommentare</span>
    <span class="inline-tag">Plugins!Spamschutz!</span>
</span>
</p>

<p>Ähnlich wie die Übersichtsseite <span class="mbold">Einträge bearbeiten</span> enthält die
Seite <span class="mbold">Kommentare</span> eine Übersicht aller übermittelten Kommentare und
Trackbacks Ihrer Besucher.</p>

<p>Von dieser Oberfläche aus können Sie Kommentare löschen, freischalten,
überarbeiten oder auch nach speziellen Kommentaren suchen.</p>

<p>Systemmeldungen, wie erfolgreiches Moderieren, Löschen, oder Fehlermeldungen,
werden in den Systemfarben für diese Ereignisse am Anfang der Seitenliste oberhalb 
des <span class="mbold">Kommentare</span>-Titels ausgegeben.</p>

<h4 class="plugin-config-header">Die Kommentar Liste:</h4>

<p>Der Inhaltsbereich zeigt die Kommentare in einzelnen Boxen untereinander
an. Direkt oberhalb dieser Boxen befindet sich ein Informationstext, der
die Anzahl der dargestellten Kommentare und die Nummer der aktuellen Seite angibt.
Die Möglichkeit zum Blättern mittels <span class="mbold">Weiter</span> und
<span class="mbold">Zurück</span>, <span class="mbold">Anfang</span> und
<span class="mbold">Ende</span> befindet sich, wie bei solchen
Listendarstellungen üblich, sowohl oberhalb  als auch unterhalb der
Kommentarauflistung, wenn genügend Listeneinträge vorhanden sind.</p>

<figure id="fig-comments-fill">
  <a class="lightbox" rel="lightbox" href="media/comments_fill_dm_de.avif" lg-uid="lg4611" data-fallback="media/comments_fill_dm_de.webp">
    <picture>
      <source srcset="media/comments_fill_dm_de.avif" type="image/avif">
      <source srcset="media/comments_fill_dm_de.webp" type="image/webp">
      <img src="media/comments_fill_dm_de.png" alt="comments_fill_dm_de.png" loading="lazy" width="1424" height="80">
    </picture>
    <figcaption>Abbildung 4.8: Aktivität: Kommentare (<em>siehe auch übernächste Abbildung 4.9-sx für Serendipity Styx</em>)</figcaption>
  </a>
</figure>

<p>Die erste Zeile jeder Box zeigt Informationen über den Autor,
zu welchem Artikel der Kommentar gehört und wann er erstellt wurde.
Die Detailangaben zum Autor und seiner Verbindung zum Artikel werden
über eine ausklappbare Box über den <em>Informations</em>-Button am
Ende dieser Informationszeile realisiert und klappen unterhalb dieser
auf. Jede Kommentarbox enthält folgende Angaben:</p>

<p class="desc">
<span class="tag-box invisible">
    <span class="inline-tag">Kommentare!Ueberschrift@Überschrift</span>
</span><!-- tagbox -->
<span class="item mbold">Überschrift</span><!-- menuitem -->
<span class="desc-info">
    <span class="box">
        Der Bezug zu einem Artikel ist klickbar und führt ins Frontend Ihres Blogs.
    </span>
    <span class="box">
        Nicht freigeschaltete Kommentare und Trackbacks werden durch eine
        graunterlegte Markierung im rechten oberen Teil der Kommentarbox
        vom Rest abgehoben.
    </span>
</span>
</p>

<p class="desc">
<span class="tag-box invisible">
    <span class="inline-tag">Kommentare!Autor</span>
</span><!-- tagbox -->
<span class="item mbold">Autor</span><!-- menuitem -->
<span class="desc-info">Der Name des Verfassers eines Kommentars wird gleich am Anfang dargestellt.</span>
</p>

<p class="desc">
<span class="tag-box invisible">
    <span class="inline-tag">Kommentare!Detailbox</span>
</span><!-- tagbox -->
<span class="item mbold">Detailbox</span><!-- menuitem -->
<span class="box group-box">
    <span class="subdesc">
        <code class="item sql-field">Autor:</code>
        <span class="sub-box">
            Wenn das <em>Spamblock</em>-Plugin (siehe Seite
            <span class="pageref"><a href="#spamblock">spamblock</a></span>) installiert ist, wird in der
            <span class="mbold">Detailbox</span> neben dem Namen des Autors ein Symbol mit <span class="mbold">durchstrichenem Kreis</span>,
            im folgenden <em>Blacklist</em>-Symbol genannt, angezeigt. Ein Klick auf dieses Symbol wird in Zukunft Kommentare des gleichnamigen Autors
            in eine <em>Blacklist</em> einfügen und abweisen.
            Erscheint ein <span class="mbold">Erfolgs</span>-Symbol an dessen Stelle, wird der Name bereits
            gefiltert, und ein erneuter Klick hebt diesen Filter wieder auf.
        </span>
    </span>

    <span class="subdesc">
        <span class="tag-box invisible">
            <span class="inline-tag">Kommentare!E-Mail</span>
        </span><!-- tagbox -->
        <code class="item sql-field">E-Mail:</code>
        <span class="sub-box">
            Die E-Mail-Adresse eines Kommentators wird neben <span class="mbold">E-Mail</span> angezeigt.
            Auch hier kann bei aktiviertem <em>Spamblock</em>-Plugin die E-Mail-Adresse
            in einen Filter aufgenommen werden.
        </span>
    </span>

    <span class="subdesc">
        <span class="tag-box invisible">
            <span class="inline-tag">Sicherheit</span>
            <span class="inline-tag">Kommentare!IP</span>
        </span><!-- tagbox -->
        <code class="item sql-field">IP:</code>
        <span class="sub-box">
            In der zweiten Zeile der Kommentarbox wird die IP-Adresse des Kommentators angezeigt.
            <span class="tag-box invisible">
                <span class="inline-tag">IP-Adresse</span>
            </span>
            Eine IP-Adresse identifiziert einen Benutzer im
            Internet beim Aufruf einer Seite. Sollte Sie einmal rechtswidrige Inhalte in
            einem Kommentar auffinden, kann eine Strafverfolgungsbehörde mit Hilfe dieser
            IP möglicherweise den wahren Täter aufspüren. Meist werden für derartige
            Straftaten aber offene <em>Proxies</em> eingesetzt, die die eigene IP-Adresse des
            Täters verschleiern, so dass er sozusagen nur über einen Deckmann auf Ihren Server
            zugreift.
        </span>
    </span>

    <span class="subdesc">
        <span class="tag-box invisible">
            <span class="inline-tag">Kommentare!URL</span>
        </span><!-- tagbox -->
        <code class="item sql-field">URL:</code>
        <span class="sub-box">
            Die Homepage eines Kommentators wird unterhalb seiner E-Mail-Adresse
            angezeigt. Ein Klick hierauf öffnet die Homepage direkt in einem neuen
            Browserfenster. Auch die URL kann als Filter für das
            <em>Spamblock</em>-Plugin durch Klick auf das <span class="mbold">Blacklist</span>-Symbol
            gesetzt werden.
        </span>
    </span>

    <span class="subdesc">
        <span class="tag-box invisible">
            <span class="inline-tag">Kommentare!Referrer</span>
            <span class="inline-tag">Referrer</span>
        </span><!-- tagbox -->
        <code class="item sql-field">Referrer:</code>
        <span class="sub-box">
            Wenn ein Besucher Ihre Webseite aufruft, übermittelt sein Browser
            üblicherweise die URL der zuletzt aufgerufenen Webseite. Wenn ein
            Besucher über eine Suchmaschine den Weg zu Ihnen findet, gibt der
            sogenannte <em>Referrer</em> Auskunft darüber, nach welchen Begriffen er
            gesucht hat. Möglicherweise ist es also für Sie interessant zu erfahren,
            von welcher Webseite ein Besucher zu Ihnen kam und dann einen Kommentar
            hinterlassen hat.
        </span>

        <span class="sub-box">
            Genau diese vorherige Webseite wird in der Kommentarbox beim Punkt
            <span class="mbold">Referrer</span> eingebunden, ein Klick darauf öffnet die entsprechende
            Webseite.
        </span>

        <span class="sub-box">
            Wenn ein Besucher keine vorherige Webseite besucht hat, ist in diesem
            Feld meistens die URL des kommentierten Artikels enthalten.
        </span>
    </span>
</p>

<p class="desc">
    <span class="tag-box invisible">
        <span class="inline-tag">Kommentare!Text</span>
    </span><!-- tagbox -->
    <span class="item mbold">Kommentar</span><!-- menuitem -->
    <span class="desc-info">
        <span class="box">
            Der eigentliche Text, den der Besucher als Kommentar (oder Trackback)
            hinterlassen hat, wird im Hauptteil der Box angegeben. Damit zu lange
            Texte nicht den Rahmen sprengen, und die Kommentar-Vorschauzeile möglichst
            eine Kurzzeile bleibt, werden sie nach ~72 Zeichen mit einem <code>...</code> abgekürzt.
        </span>

        <span class="box">
            Wenn gekürzt wurde, also tatsächlich mehr Text vorhanden ist, wird ein
            neuer <em>Aufklapp</em>-Button für die vollständige Anzeige ans Ende der
            Kommentar Symbolleiste am rechten Rand der untersten Zeile hinzugefügt
            (<em>siehe übernächste Abbildung 4.9-sx für Serendipity Styx</em>).
            Solche Kürzungen werden für die Einhaltung des Darstellungsdesigns
            an mehreren Stellen vorgenommen und konnen auch schon nach ~25 Zeichen erfolgen.
        </span>

        <span class="box">
            Da dies unverifizierte Eingaben aus dem Internet sind, werden all diese Angaben
            zu ihrer eigenen Sicherheit mittels <code>serendipity_specialchars()</code>
            "unbrauchbar" gemacht, so dass kein ausführbarer Code weitergegeben, dargestellt,
            oder ausgeführt wird. Solche Einträge werden als reiner Textstring angezeigt.
            Aktive HTML-Kommentaren werden mittels eines roten <code>...&lt;/&gt;</code>
            Abschlußsymbols kenntlich gemacht.
        </span>
    </span>
</p>

<p class="desc">
<span class="tag-box invisible">
    <span class="inline-tag">Kommentare!Symbolleiste</span>
</span><!-- tagbox -->
<span class="item mbold">Symbolleiste</span><!-- menuitem -->
<span class="desc-info">
    <span class="box">
        Unterhalb jedes Kommentars befindet sich eine Symbolleiste mit Buttons.
        Die Buttons richten sich dabei danach, ob das Objekt ein Kommentar oder
        ein Trackback ist, ob es freigeschaltet, versteckt oder moderiert ist und ob der
        Text länger als ~72 Zeichen ist oder nicht.
    </span>

    <span class="box">
        Bei noch nicht freigeschalteten Beiträgen erscheint der Button als
        <span class="mbold">Like</span>-"Bewilligen"-Symbol. Ein Klick darauf wird
        den gewählten Beitrag freischalten. Ist ein Kommentar bereits freigeschaltet,
        erscheint der Button als <span class="mbold">Dis-Like</span>-"Moderieren"-Symbol
        mit dem abgesenktem Daumen, um den Kommentar erneut zu verstecken.
    </span>

    <span class="box">
        Da es manchmal vorkommen kann, dass man einen Kommentar gerne behalten,
        aber eben auch nicht anzeigen lassen möchte, und Wert darauf legt, dass ein
        solcher nicht die Liste der unbewilligten und zu bearbeitenden Kommentare
        unnötig aufbläht, wurde der "<em>Bewilligen, aber versteckt</em>" Button
        (siehe Abbildung 9c) über das <span class="mbold">Auge</span>-"Inaktiv/Aktiv setzen"-Symbol
        eingeführt.
    </span>

    <span class="box">
        Bei Beiträgen, die länger als ~72 Zeichen sind, wird der Button <span class="mbold">ganz
        anzeigen</span> als nach rechts weisender kleiner Dreieckspfeil eingeblendet.
        Per Klick wird der vollständige Kommentartext angezeigt, ein erneuter Klick
        reduziert die Ansicht wieder auf die gekürzte Fassung.
    </span>

    <span class="box">
        Desweiteren gibt es Buttons, die immer verfügbar sind. Die <span class="mbold">Lupe</span>
        (Anzeigen) öffnet bei einem Klick ein neues Fenster, in dem der Kommentar im Kontext des
        Artikels im Frontend dargestellt wird.
    </span>

    <span class="box">
        Das <span class="mbold">Stift</span>-"Bearbeiten"-Symbol öffnet wie immer eine
        Oberfläche, in der ein Kommentar von Ihnen bearbeitet und redaktionell verändert
        werden kann.
    </span>

    <span class="box" id="fig-edit-comment-plain">
      <a class="lightbox" rel="lightbox" href="media/edit_comment_plain_dm_de.avif" lg-uid="lg4612" data-fallback="media/edit_comment_plain_dm_de.webp">
        <picture>
          <source srcset="media/edit_comment_plain_dm_de.avif" type="image/avif">
          <source srcset="media/edit_comment_plain_dm_de.webp" type="image/webp">
          <img src="media/edit_comment_plain_dm_de.png" alt="edit_comment_plain_dm_de.png" loading="lazy" width="1420" height="830">
        </picture>
        <span class="asfigcaption">Abbildung 4.9: Aktivität: Kommentar bearbeiten mit PLAIN TEXT Editor</span>
      </a>
    </span>

    <span class="box">
        In dieser Oberfläche können Sie wie beim Kommentieren im Frontend die bekannten
        Felder ändern, die mit den Eingaben des Besuchers vorausgefüllt sind. Ein Klick
        auf <span class="mbold">Kommentar abschicken</span> speichert die von Ihnen überarbeitete Fassung
        des Kommentars. Achten Sie bei der Moderation von Kommentaren darauf, dass dies
        möglicherweise von Besuchern als Zensur aufgefasst werden könnte. <span class="inline-tag">Zensur</span>
        Überarbeiten Sie also einen Kommentar eines fremden Users wirklich nur dann,
        wenn Sie entweder darauf hinweisen oder es unabdingbar ist.
    </span>

    <span class="box" id="fig-edit-comment-html">
      <a class="lightbox" rel="lightbox" href="media/edit_comment_html_dm_de.avif" lg-uid="lg4613" data-fallback="media/edit_comment_html_dm_de.webp">
        <picture>
          <source srcset="media/edit_comment_html_dm_de.avif" type="image/avif">
          <source srcset="media/edit_comment_html_dm_de.webp" type="image/webp">
          <img src="media/edit_comment_html_dm_de.png" alt="edit_comment_html_dm_de.png" loading="lazy" width="1420" height="830">
        </picture>
        <span class="asfigcaption">Abbildung 4.9b: Aktivität: Kommentar bearbeiten mit HTML Editor</span>
      </a>
    </span>

    <span class="box">
        HTML Kommentare - bzw den Rich-Text-Editor - können Sie für das Frontend und das Backend in der
        <span class="mbold">Konfiguration</span> - <span class="mbold">Generelle Einstellungen</span>
        per Konfigurationsoption erlauben. Die notwendigen Sicherheitsmaßnahmen sind getroffen, um
        dies als eine wählbare Alternative für größere Nutzerfreundlichkeit zu erlauben.
    </span>

    <span class="tag-box invisible">
        <span class="inline-tag">Kommentare!löschen</span>
    </span>
    <span class="box">
        Der Button mit dem <span class="mbold">Mülleimer</span>-Symbol entfernt
        einen Kommentar vollständig aus der Datenbank. Wenn sich bereits andere
        Kommentare auf einen zu löschenden Kommentar beziehen (also im Frontend
        verschachtelt darunter dargestellt werden), wird ein Kommentar beim
        Löschen erst nur gekürzt. Der Text wird ausgeschnitten, aber die
        Grunddaten des Kommentars bleiben intakt, um die Verschachtelung nicht
        durcheinander geraten zu lassen. Erst wenn ein derartiger Kommentar
        ein zweites Mal gelöscht wird, werden die Bezüge zerstört und der
        Kommentar komplett entfernt.
    </span>

    <span class="box">
        Die Symbolleiste stellt auch den Antwort-Button als <span class="mbold">Chat</span>-Symbol zur
        Verfügung. Dies ermöglicht Ihnen, direkt zu einem internen Popup-Fenster zu
        springen, um den betreffenden Text direkt mit einer Antwort kommentieren
        zu können. Das Eingabefeld <span class="mbold">Antwort zu</span> ist dabei korrekt mit dem
        betreffenden Kommentar vorausgefüllt, ebenso Ihr Name und Ihre E-Mail-Adresse.
    </span>

</span>
</p>

<p>Innerhalb jeder Kommentarbox befindet sich linksseitig eine HTML Checkbox.
Wenn diese ausgewählt wird, kann man die markierten Kommentare über den Button
"Markierte Kommentare" <span class="mbold">Löschen</span> am Ende der Seite entfernen.
Der Button <span class="mbold">Auswahl umkehren</span> dreht die Markierungen um,
so dass vorher ausgewählte Kommentare nun nicht mehr gewählt sind und stattdessen
alle anderen. So lässt sich besonders leicht Spam herausfiltern, da eine ganze
Seite mit dargestellten Kommentaren durch einen Klick auf
<span class="mbold">Auswahl umkehren</span> markiert und gelöscht, oder
<span class="mbold">bewilligt</span> werden kann.</p>

<h4 class="plugin-config-header">Die Serendipity Styx Kommentarliste:</h4>

<figure id="fig-comments-snip">
  <a class="lightbox" rel="lightbox" href="media/comments_snip_dm_de.avif" lg-uid="lg4614" data-fallback="media/comments_snip_dm_de.webp">
    <picture>
      <source srcset="media/comments_snip_dm_de.avif" type="image/avif">
      <source srcset="media/comments_snip_dm_de.webp" type="image/webp">
      <img src="media/comments_snip_dm_de.png" alt="comments_snip_dm_de.png" loading="lazy" width="969" height="966">
    </picture>
    <figcaption>Abbildung 4.9-sx: Aktivität: Kommentarliste - Detailansicht</figcaption>
  </a>
</figure>

<p>Ob die einzelne Kommentar-Box einen Trackback, einen Pingback oder einen
User-Kommentar darstellt, ist in <span class="mbold">Serendipity Styx</span>
über eine verschiedenfarbene Belegung der <span class="mbold">unteren linken</span>
Ecke realisiert und Kommentare werden als <code>C</code>, Trackbacks als <code>T</code>
und Pingbacks als <code>P</code> gekennzeichnet. Ob der Kommentar von Ihnen selbst
als Blogautor geschrieben wurde, ist mittels eines kräftig blauen diagonalen Dreiecks
in der <span class="mbold">rechten oberen</span> Ecke ausgewiesen. Allgemein wirkt das
Design der Serendipity Styx Kommentarliste aufgeräumter und die wesentlichen
Komponenten sind schneller erfassbar und strukturierter angeordnet.
</p>

<h4 class="plugin-config-header">Die Kommentar Filterung:</h4>

<p>Ebenfalls analog zu der Oberfläche <span class="mbold">Einträge bearbeiten</span> kann die
Darstellung der Kommentarübersicht nach bestimmten Kriterien gefiltert
werden:</p>

<p class="desc">
<span class="item mbold">Autor</span><!-- menuitem -->
<span class="desc-info">In das Feld <span class="mbold">Autor</span> können Sie den Namen eines Kommentators
eingeben, nach dessen Kommentaren Sie suchen möchten. Dabei wird ein
Autorenname unabhängig von Groß- und Kleinschreibung nach Teilwörtern
durchsucht. Eine Suche nach <code>ann</code> wird also sowohl Kommentare von
<em>Hanni</em> als auch von <em>Nanni</em> darstellen.</span>
</p>

<p class="desc">
<span class="item mbold">E-Mail</span><!-- menuitem -->
<span class="desc-info">Um nur Kommentare von Benutzern mit einer bestimmten
E-Mail-Adresse anzuzeigen, können Sie deren Adresse in diesem Eingabefeld
eintragen. Hierbei gilt dasselbe Suchmuster wie bei der Suche nach
<span class="mbold">Autor</span>.</span>
</p>

<p class="desc">
<span class="item mbold">URL</span><!-- menuitem -->
<span class="desc-info">Um nur Kommentare von Benutzern mit einer speziellen <span class="mbold">URL</span>-Adresse
anzuzeigen, können Sie diese URL eintragen. Hierbei gilt dasselbe
Suchmuster wie bei der Suche nach <span class="mbold">Autor</span>.</span>
</p>

<p class="desc">
<span class="item mbold">IP</span><!-- menuitem -->
<span class="desc-info">Um nur Kommentare von Benutzern mit einer speziellen <span class="mbold">IP</span>-Adresse
anzuzeigen, können Sie diese hier eintragen. Hierbei gilt dasselbe
Suchmuster wie bei der Suche nach <span class="mbold">Autor</span>. Bei der Angabe von IPs
empfiehlt es sich daher, immer die vollständige Zahlenreihe einzugeben und
nicht nur Teile davon.</span>
</p>

<p class="desc">
<span class="item mbold">Inhalt</span><!-- menuitem -->
<span class="desc-info">Hier können Sie Kommentare nach dem
Auftreten bestimmter Wörter im Inhaltstext des Kommentars
durchsuchen. Es gilt dasselbe Suchmuster wie bei der Suche nach
<span class="mbold">Autor</span>.</span>
</p>

<p class="desc">
<span class="item mbold">Referrer</span><!-- menuitem -->
<span class="desc-info">Die URL der Webseite, auf der sich ein Kommentator zuletzt befunden hat,
kann in dem Eingabefeld <span class="mbold">Referrer</span> eingetragen werden. Auch hier
können Teilwörter wie bei der Suche nach <span class="mbold">Autor</span> eingetragen werden.</span>
</p>

<p class="desc">
<span class="item mbold">Kommentare</span><!-- menuitem -->
<span class="desc-info">Das Auswahlfeld <span class="mbold">Kommentare</span> ermöglicht es, mehr als nur 10
Kommentare pro Seite anzuzeigen. Die Auswahl reicht hier von 10, 20 und
50 bis hin zu allen Kommentaren. Achten Sie darauf, dass bei der Anzeige
aller Kommentare die HTML-Seite sehr groß werden kann und Ihren Browser
sehr lange beschäftigen könnte.</span>
</p>

<p class="desc">
<span class="item mbold">Zeige</span><!-- menuitem -->
<span class="desc-info">Über dieses Auswahlfeld kann man einstellen, ob man in der
Kommentarübersicht noch freizuschaltende Kommentare/Trackbacks sehen
möchte, nur freigeschaltete oder Kommentare/Trackbacks beiden Typs.</span>
</p>

<p class="desc">
<span class="item mbold">Typ</span><!-- menuitem -->
<span class="desc-info">Das Auswahlfeld schränkt ein, ob man nur <span class="mbold">Kommentare</span>,
nur <span class="mbold">Trackbacks</span> oder beide Sorten von Kommentaren dargestellt
bekommen möchte.</span>
</p>

<p>&nbsp;</p><!-- separator -->

<p>Diese Filteroptionen werden durch einen Klick auf <span class="mbold">Los!</span> gesetzt
und beim Blättern der Folgeseiten auch angewendet. Falls Sie das
<em>Spamblock-Plugin</em> verwenden, können Sie übrigens durch einen Klick
auf <span class="mbold">Anti-Spam-Maßnahmen konfigurieren</span> direkt zu dessen
Konfigurationsoberfläche springen.</p>

<article id="XU" class="subsub">

<header>
    <h4 class="subarticle" id="kommentarbenachrichtigungen">Kommentarbenachrichtigungen</h4>
</header>

<p class="tagging invisible">
<span class="tag-box invisible">
    <span class="inline-tag">Kommentarbenachrichtigungen</span>
    <span class="inline-tag">E-Mail!Benachrichtigungen</span>
    <span class="inline-tag">Kommentarmoderation</span>
</span>
</p>

<p>Wenn in Ihrem Blog ein Besucher einen neuen Kommentar hinterlässt, wird
abhängig von den Einstellungen des Artikels und Ihrer <span class="mbold">Eigenen
Einstellungen</span> eine E-Mail an Sie gesendet, um Sie darüber zu
benachrichtigen.</p>

<p>Innerhalb der E-Mail sehen Sie dann eine Übersicht über die Identität
des Kommentators, den Kommentartext und einen Link zu dem Artikel in
Ihrem Frontend.</p>

<p>Wenn Beiträge moderiert werden, müssen Kommentare von Ihnen erst
freigeschaltet werden. Dazu dienen die drei Links am Ende der E-Mail:
<span class="mbold">Ansehen</span>, <span class="mbold">Löschen</span> und
<span class="mbold">Bewilligen</span>. Diese Links führen direkt
ins Frontend zu dem gewünschten Artikel und werden den Kommentar
anzeigen, löschen oder freischalten. Dies funktioniert jedoch nur, wenn Sie sich
vorher im Backend eingeloggt haben oder noch einen Login-Cookie besitzen.
Andernfalls könnte jeder Besucher Ihres Blogs selbständig Kommentare
freischalten.</p>

<p>Natürlich können Sie den Kommentar auch von der
Kommentar-Verwaltungsoberfläche aus freischalten oder auch löschen.</p>

<p>Sobald ein Kommentar freigeschaltet wird, sucht Serendipity danach, ob
sich andere Kommentatoren desselben Beitrags mit der Option <span class="mbold">Bei
Aktualisierung dieser Kommentare benachrichtigen</span> eingetragen haben. An
alle diese Personen wird dann eine E-Mail verschickt, die sie über den
Eingang eines neuen Kommentars informiert. Innerhalb der E-Mail
befindet sich für jeden Empfänger die Möglichkeit, einen derart
<em>abonnierten</em> Artikel auch wieder abzubestellen.</p>

</article>

</section><!-- section.sub end -->

<section id="U462" class="sub">
<span class="u-toc">4.6.2 - Spamschutz</span>

<h3 class="subsection" id="spamschutz">Spamschutz</h3>

<p class="tagging invisible">
<span class="label invisible" id="Spamschutz">Spamschutz</span>
<span class="tag-box invisible">
    <span class="inline-tag">Anti-Spam</span>
    <span class="inline-tag">Spamblock</span>
    <span class="inline-tag">Spamschutz</span>
</span>
<span class="tag-box invisible">
    <span class="inline-tag">Spamschutz|see{Backend, Spamschutz}</span>
    <span class="inline-tag">Backend!Spamschutz</span>
    <span class="inline-tag">Plugins!serendipity_event_spamblock</span>
</span>
</p>

<p>Der Menüpunkt <span class="mbold">Spamschutz</span> verlinkt direkt
in die Konfiguration des <span class="mbold">serendipity_event_spamblock</span>
Plugins (<span class="pageref"><a href="#serendipity_event_spamblock">Spamschutz</a></span>).
Bitte lesen Sie dort nach, welche vielfältigen Möglichkeiten des Spamabwehr und der
Spambehandlung es in Serendipity gibt. Dies Plugin sollte immer aktiviert sein!</p>

</section><!-- section.sub end -->

<section id="U463" class="sub">
<span class="u-toc">4.6.3 - Option ein-/ausblenden</span>

<h3 class="subsection" id="toggle">Option ein-/ausblenden</h3>

<p class="tagging invisible">
<span class="label invisible" id="toggle">Option ein-/ausblenden</span>
<span class="tag-box invisible">
    <span class="inline-tag">toggle</span>
</span>
</p>

<p>Das Symbol
<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-card-text" viewBox="0 0 16 16">
  <path d="M14.5 3a.5.5 0 0 1 .5.5v9a.5.5 0 0 1-.5.5h-13a.5.5 0 0 1-.5-.5v-9a.5.5 0 0 1 .5-.5h13zm-13-1A1.5 1.5 0 0 0 0 3.5v9A1.5 1.5 0 0 0 1.5 14h13a1.5 1.5 0 0 0 1.5-1.5v-9A1.5 1.5 0 0 0 14.5 2h-13z"></path>
  <path d="M3 5.5a.5.5 0 0 1 .5-.5h9a.5.5 0 0 1 0 1h-9a.5.5 0 0 1-.5-.5zM3 8a.5.5 0 0 1 .5-.5h9a.5.5 0 0 1 0 1h-9A.5.5 0 0 1 3 8zm0 2.5a.5.5 0 0 1 .5-.5h6a.5.5 0 0 1 0 1h-6a.5.5 0 0 1-.5-.5z"></path>
</svg> vom Menüpunkt <span class="mbold">Option ein-/ausblenden</span> dient dem schnellen Überblick
und klappt alle zur Zeit gezeigten Kommentare der Liste direkt auf oder zu, so wie es der Button mit dem
rechts-/himmelweisendem Dreieck es auch für jeden einzelnen Kommentar tun kann.</p>

</section><!-- section.sub end -->

</section><!-- section.index end -->

<section id="S470" class="index">
<span class="s-toc">4.7 - Einstellungen</span>

<h3 class="section" id="einstellungen">Einstellungen</h3>

<p class="tagging invisible">
<span class="tag-box invisible">
    <span class="inline-tag">Einstellungen|see{Backend, Einstellungen}</span>
    <span class="inline-tag">Backend!Einstellungen</span>
</span>
</p>

<p>Der Menübereich <span class="mbold">Einstellungen</span> fasst die
Möglichkeiten zusammen, um Ihr Blog zu individualisieren. Zum einen
können Sie hier das Template Ihres Blogs wählen, zum anderen Ihre
eingesetzten Plugins verwalten. Die weiteren wichtigen Unterpunkte
unter dem Seitenleisten Hauptmenüpunkt: Einstellungen, sind in diesem Buch
unter <span class="pageref"><a href="#S480">Einstellungen (Administration)</a></span>
beschrieben.</p>

<section id="U471" class="sub">
<span class="u-toc">4.7.1 - Themes verwalten</span>

<h3 class="subsection" id="themes-verwalten">Themes verwalten</h3>

<p class="tagging invisible">
<span class="label invisible" id="Themes verwalten">Themes verwalten</span>
<span class="tag-box invisible">
    <span class="inline-tag">Styles!verwalten|see{Backend, Themes verwalten}</span>
    <span class="inline-tag">Backend!Themes verwalten</span>
    <span class="inline-tag">Themes!verwalten|see{Backend, Themes verwalten}</span>
    <span class="inline-tag">Template-S@Templates!verwalten|see{Backend, Themes verwalten}</span>
    <span class="inline-tag">Themes</span>
    <span class="inline-tag">Template-S@Templates</span>
    <span class="inline-tag">Styles</span>
    <span class="inline-tag">Layout</span>
    <span class="inline-tag">Frontend</span>
</span>
</p>

<p>Bei Serendipity sind die Begriffe <em>Style, Theme</em> und <em>Template</em>
synonym verwendet. Alle drei Begriffe bezeichnen eine Sammlung von
Dateien, die das Layout Ihres Frontends (und auch in begrenztem Maße des
Backends) bestimmen.</p>

<p>Alle Templates werden im Verzeichnis <code>templates</code> verwaltet. Dort
befindet sich pro Template ein Unterverzeichnis, das eine Sammlung von
Dateien enthält (siehe Kapitel <span class="reference">templatefiles</span> ab
Seite <span class="pageref"><a href="#templatefiles">templatefiles</a></span>).</p>

<p>Um eigene oder fremde Templates in Serendipity einzubinden,
müssen sich die Template-Dateien in diesem Unterverzeichnis befinden. Erst
dann kann Serendipity über den Menüpunkt <span class="mbold">Themes</span> auf
diese Verzeichnisse zugreifen.</p>

<p>
<span class="tag-box invisible">
    <span class="inline-tag">Smarty</span>
</span>
Eine Template-Datei stellt dabei bestimmte Elemente (Einträge, Übersichten,
Kommentare ...) in einfachem HTML-Format dar. Innerhalb der
Template-Datei (<code>*.tpl</code>) werden Platzhalter verwendet, die bei der
Ausführung von Serendipity durch eigentliche Inhalte ersetzt werden. Für
diese Platzhalter-Logik verwendet Serendipity eine Software-Bibliothek
namens <em>Smarty</em> [*]
<span class="footnote"><i class="fa fa-info-circle"></i> <a href="http://www.smarty.net/" target="_blank" rel="noopener">http://www.smarty.net/</a></span><!-- footnote -->.
Smartys Aufgabe ist es, die Template-Dateien nach Platzhaltern zu durchsuchen, zu
<em>kompilieren</em> (in PHP-Code umwandeln) und danach auszugeben. Dabei
kann Smarty weitaus mehr, als nur Variablen zu ersetzen: Smarty bietet
Kontrollstrukturen (<em>IF-Abfragen</em>), Schleifen und
PHP-Funktionsaufrufe an. Dies alles kann von Template-Entwicklern benutzt
werden, um ganz individuelle Darstellungen des Frontends zu erreichen, und
wird in Kapitel <span class="reference">Smarty-Templates</span> ab Seite <span class="pageref"><a href="#Smarty-Templates">Smarty-Templates</a></span>
ausführlich erklärt.</p>

<p>Ein Klick auf den Menüpunkt <span class="mbold">Themes</span> stellt eine
Liste aller verfügbaren Templates dar. Dabei werden auch kleine
Vorschaubilder zu den Themes untereinander angezeigt, die einen Eindruck
vermitteln, wie Ihr Frontend später aussehen könnte.</p>

<figure id="fig-themes">
  <a class="lightbox" rel="lightbox" href="media/themes_core_dm_de.avif" lg-uid="lg4711" data-fallback="media/themes_core_dm_de.webp">
    <picture>
      <source srcset="media/themes_core_dm_de.avif" type="image/avif">
      <source srcset="media/themes_core_dm_de.webp" type="image/webp">
      <img src="media/themes_core_dm_de.png" alt="themes_core_dm_de.png" loading="lazy" width="1416" height="2540">
    </picture>
    <figcaption>Abbildung 4.19: Einstellungen: Themes verwalten</figcaption>
  </a>
</figure>

<p>Jede Template-Box enthält dabei als Überschrift den Namen des Templates
und Informationen über den Autor, das Erstellungsdatum und ob eine
<span class="mbold">Eigene Admin-Oberfläche</span> vorhanden ist. Zu einigen Templates
wird Ihnen auch ein größeres Vorschaubild angeboten, wenn Sie auf das
Vorschaubild klicken.</p>

<p>Um ein Template zu aktivieren, klicken Sie einfach auf den
<span class="mbold">Installieren</span>-Button unterhalb der Vorschau.
Daraufhin wird das Template aktiviert, und wenn Sie das Frontend nun
öffnen (<span class="mbold">Zurück zum Blog</span>), werden Sie das neue
Layout schon betrachten können.
<span class="tag-box invisible">
    <span class="inline-tag">Fehler!Template-Änderung wirkt sich nicht aus</span>
</span>
Je nach eingesetztem Browser könnte es notwendig sein, dass Sie den Browser
neu starten oder den Browsercache leeren müssen, bevor die Änderungen am
Layout bei Ihnen sichtbar sind. Dies könnte erforderlich sein, da das
Design zum Teil von der geladenen Stylesheet-Datei bestimmt wird, die aus
Geschwindigkeitsgründen von vielen Browsern zwischengespeichert wird.</p>

<p>Jede Template-Box enthält einen Informations-Button, mittels dem nützliche
Informationen zum Theme, wie Autor, letztes Aktualisierungsdatum, Angaben zu
einer eigenen Konfigurationsdatei, oder sogar einer eigenen Admin-Oberfläche
ausgegeben werden. Ebenso kann diese Ausgabe eine Zusammenfassung der
Möglichkeiten des Themes und/oder sogar zusätzlich eine Beschreibung
des eigenen Backends oder überhaupt seiner Eigenschaften enthalten.
Dies ist mit <span class="mbold">Serendipity Styx</span> grundlegend
erweitert worden, ebenso wie die Möglichkeit die Informations-Texte nach
der eingestellten Sprache auszugeben, soweit diese schon übersetzt wurde.
Siehe: <code>lang_info_en.inc.php</code> und analog für Deutsch <code>lang_info_de.inc.php</code> etc. ebenso wie im UTF-8 Verzeichnis des Themes.</p>

<p>Die mitgelieferten Themes sind in drei Kategorien eingeteilt.
Die ersten beiden beschreiben die aktuell ausgewählten Themes für das
Frontend und das Backend. Darunter befindet sich die Sektion der
empfohlenen Themes, die in ihrer Mehrheit heutigen Erfordernissen entsprechen
oder sonstwie als herausragend angesehen werden. Darunter sind alle anderen,
wie auch einige Besondere, wie ein default-php oder auch default-xml Template,
oder Beispiele für Engine Templates.</p>

<p>Die Serendipity Styx 3.x Series hat dieses Konzept der empfohlenen Themes
wieder verworfen und vereinfacht. Die mitgelieferten Themes heißen nun einfach
"Kern Themes"; die per Spartacus hinzugefügten "Verfügbare Themes".</p>

<p>Diese mitgelieferten Kern Themes bestehen zum Teil aus den Standard Themes
der verschiedenen Jahre und Revisionen, wie das "pure" Theme 2020, das "2k11" aus
2011/13, usw., bis hin zum originären "default" Theme das für die
Zugriffs-Kaskade in der Datei-/Template-Suche einen besonderen Platz als Endpunkt
einnimmt. Zum anderen Teil aus möglichen Standard Derivaten (wie "Next"),
verschiedenen Framework-Themes ("bootstrap4" oder "skeleton"), Besonderheiten,
wie dem PHP-Template Beispiel Theme, und weiteren interessanten Engine Themes,
die als Beispiele für eigene Versuche gelten können. Ihnen gemein ist, dass sie
mit den Styx Revisionen kontinuierlich gepflegt wurden.</p>

<p>Weitere Themes werden nur geladen und angezeigt, wenn Sie Spartacus
dazu verwenden und die erweiterte Theme Option in dessen Konfiguration
aktiviert haben. Per default macht das keinen Sinn, da es viele Themes
auf Spartacus gibt, die schon sehr lange kein grundlegendes Update mehr
erfahren haben. Die Aktivierung dieser Option kann manch schwache Systeme,
auf Grund der Menge der zu verarbeitenden Information beim ersten Laden
dieser Seite, durchaus kurz außer Gefecht setzen. Die Empfehlung lautet
daher, sich erst einmal an die empfohlenen Themes zu halten, bis man genügend
Vertrautheit mit den Gegebenheiten erlangt hat.</p>

<p>Durch das Konzept der webP Bild-Variationen mit Styx 3.0 und der zum Teil
erheblichen Reduzierung der Datei Größe, gilt obige Warnung heute nur noch
bedingt. Ebenso wurden all diese alten Themes auf Funktionalität und
Kompatibilität getestet und soweit generalüberholt bzw. ergänzt, dass sie
unter neuen Styx Versionen wenigstens funktionieren. Tauglich für heutige
Mobilgeräte sind, und/oder über ein vollständiges Responsives Verhalten verfügen,
dennoch nur wenige!</p>

</section><!-- section.sub end -->

<section id="U472" class="sub">
<span class="u-toc">4.7.2 - Template-Optionen</span>

<h3 class="subsection" id="template-optionen">Template-Optionen</h3>

<p class="tagging invisible">
<span class="tag-box invisible">
    <span class="inline-tag">Template-Optionen</span>
</span>
</p>

<p>Seit Serendipity 1.1 besteht für Templates die Möglichkeit, eigene
Optionen zu konfigurieren. Das bedeutet, dass ein Template individuell
entscheiden kann, was für zusätzliche Möglichkeiten und Darstellungsarten
Sie gerne aktivieren möchten.</p>

<figure id="fig-themes_standard">
  <a class="lightbox" rel="lightbox" href="media/theme_config_pure_dm_de.avif" lg-uid="lg4712" data-fallback="media/theme_config_pure_dm_de.webp">
    <picture>
      <source srcset="media/theme_config_pure_dm_de.avif" type="image/avif">
      <source srcset="media/theme_config_pure_dm_de.webp" type="image/webp">
      <img src="media/theme_config_pure_dm_de.png" alt="theme_config_pure_dm_de.png" loading="lazy" width="1411" height="1154">
    </picture>
    <figcaption>Abbildung 4.20: Einstellungen: Template-Optionen des Standard Themes pure</figcaption>
  </a>
</figure>

<p>Wenn Sie ein Template ausgewählt haben, das diese Optionen bereitstellt,
sehen Sie einen zusätzlichen Bereich im ersten Abschnitt des <span class="mbold">Styles
verwalten</span>-Menüpunktes. Nur wenige der von Serendipity mitgelieferten
Templates unterstützen diese Optionen. Das Serendipity (pure) Standard-Template
bietet z. B. diese Template-Optionen an, um den Inhalt der
zusätzlichen Navigations-Links im Frontend einstellen zu können.</p>

<p>Ist dieses Template gewählt, so befinden sich im oberen Bereich jeweils
zwei Eingabeboxen pro Menüpunkt. Über diese Eingabeboxen können Sie den
jeweiligen Link eines Menüpunkts im Frontend bestimmen und festlegen, wie der Text
des Menüpunktes lauten soll.</p>

<p>
<span class="tag-box invisible">
    <span class="inline-tag">Spartacus</span>
</span>
Andere Templates, die via Spartacus (siehe Seite <span class="pageref"><a href="#Spartacus">Spartacus</a></span>)
bezogen werden können, bieten Template-Optionen für weitaus
fortgeschrittenere Konfigurationsmöglichkeiten, die Sie z. B. zwischen
mehreren Farbvarianten wählen lassen oder auch bestimmen, wie die
Inhaltsbreite festgelegt wird.</p>

</section><!-- section.sub end -->

<section id="U473" class="sub">
<span class="u-toc">4.7.3 - Besondere Templates</span>

<h3 class="subsection" id="besondere-templates">Besondere Templates</h3>

<p class="tagging invisible">
<span class="tag-box invisible">
    <span class="inline-tag">Template-S@Templates!besondere</span>
    <span class="inline-tag">Template-S@Templates!für Programmierer</span>
</span>
</p>

<p>Bei Serendipity gibt es eine kleine Zahl besonderer Templates, die Sie
nur in Sonderfällen aktivieren sollten. Dies sind:</p>

<p class="desc">
<code class="item name">PHP Engine (Dev)</code>
<span class="desc-info">
    Das Template <code>PHP Engine (Dev)</code> benutzt eine vom Standard abweichende Template-Engine.
    Anstelle von Smarty kommt hier PHP-Syntax zum Einsatz. Dieses Template ist nur für Entwickler gedacht
    und kann ev. zu Fehldarstellungen des Frontends führen, wenn es ohne weitere Modifikationen eingesetzt wird.
    <span class="mbold">Serendipity Styx</span> hat dieses besondere Template ausführlicher ausgearbeitet.
</span>
</p> 

<p class="desc">
<code class="item name">XML Engine (Dev)</code>
<span class="desc-info">
    Auch das Template <code>XML Engine (Dev)</code> benutzt eine vom Standard abweichende Template-Engine.
    Hier kommt XSLT zum Einsatz, und auch dieses Template kann ohne weitere Anpassung die Darstellung des
    Frontends unbenutzbar machen. Für beide genannten Templates gilt, dass der Namenszusatz <em>Dev</em>
    für <em>Developer</em> (Entwickler) steht und daher auch nur von dieser Zielgruppe benutzt werden sollte.
</span>
</p> 

<p class="desc">
<code class="item name">Newspaper Blog</code>
<span class="desc-info">
    <span class="box">
        Dieses Template existiert eher nur noch aus historischen Gründen und stammt aus einer Zeit, in der
        Serendipity-Templates noch nicht mittels Smarty-Syntax erstellt wurden. Dementsprechend erhalten Sie die Warnung:
        <em>Hinweis: Das aktuelle Template verwendet eine ältere Methode der HTML-Erzeugung. Falls möglich,
        bitte das Template auf die Nutzung von Smarty optimieren.</em> wenn das Template aktiviert wurde. 
    </span>

    <span class="box">
        Im Grunde genommen soll dieses Template also nur demonstrieren, dass auch ganz alte Templates mit
        Serendipity noch grundsätzlich funktionstüchtig sind.
    </span>
</span>
</p> 

</section><!-- section.sub end -->

<section id="U474" class="sub">
<span class="u-toc">4.7.4 - Plugins verwalten</span>

<h3 class="subsection" id="plugins-verwalten">Plugins verwalten</h3>

<p class="tagging invisible">
<span class="label invisible" id="Plugins verwalten">Plugins verwalten</span>
<span class="tag-box invisible">
    <span class="inline-tag">Plugins!verwalten|see{Backend, Plugins verwalten}</span>
    <span class="inline-tag">Backend!Plugins verwalten</span>
</span>
</p>

<p>Das Herzstück des Serendipity-Systems zur Erweiterung des Blogs ist der
Menüpunkt <span class="mbold">Plugins</span>.</p>

<p>
<span class="tag-box invisible">
    <span class="inline-tag">Plugins</span>
</span>
Als <em>Plugin</em> bezeichnet man eine eigenständige PHP-Datei, die
zusätzliche Funktionalität in das System "stöpselt".
Das Aktivieren eines Plugins erfolgt komfortabel über eine Verwaltungsoberfläche,
Sie müssen also selber keine Dateien bearbeiten oder Kenntnisse des
Systems haben.</p>

<p>Ein Plugin hat zudem den Vorteil, dass bestimmte Funktionen so einfach
optional nachgerüstet werden können. Für viele Benutzer ist
möglicherweise ein Umfrage-Modul interessant, während andere Benutzer
damit gar nichts anfangen können. Da liegt es nahe, diese optionale
Funktionalität so loszulösen, dass nur diejenigen die Komponente
installieren, die sie auch benötigen. Das hält das Grundsystem schlank
und macht es einfacher wartbar. Durch die Auslagerung von Code in Plugins
können auch kleine Bestandteile des Blogs einzeln aktualisiert werden.
Wenn eine neue Version einer Komponente veröffentlicht wird, müssen Sie
also nicht direkt das ganze Blogsystem aktualisieren.</p>

<figure id="fig-plugins-ev">
  <a class="lightbox" rel="lightbox" href="media/plugins_ev_dm_de.avif" lg-uid="lg4741" data-fallback="media/plugins_ev_dm_de.webp">
    <picture>
      <source srcset="media/plugins_ev_dm_de.avif" type="image/avif">
      <source srcset="media/plugins_ev_dm_de.webp" type="image/webp">
      <img src="media/plugins_ev_dm_de.png" alt="plugins_ev_dm_de.png" loading="lazy" width="1416" height="1960">
    </picture>
    <figcaption>Abbildung 4.21a: Einstellungen: Plugins verwalten (Ereignis)</figcaption>
  </a>
</figure>

<p>Bei Serendipity gibt es zwei verschiedene Arten von Plugins.
<span class="tag-box invisible">
    <span class="inline-tag">Seitenleisten-Plugins</span>
</span>
<em>Seitenleisten-Plugins</em> stellen Inhalte und Funktionen in der
Seitenleiste eines Blogs im Frontend dar.
<span class="tag-box invisible">
    <span class="inline-tag">Ereignis-Plugins</span>
</span>
<em>Ereignis-Plugins</em> sind
interne Funktionen von Serendipity, die Anpassungen des Kernsystems
ermöglichen und sich nicht nur im Frontend, sondern auch im Backend
auswirken können. Ein Seitenleisten-Plugin sieht man daher immer an einer
festgesetzten Stelle im Frontend, während ein Ereignis-Plugin eher
<em>im Hintergrund</em> arbeitet, dafür aber umso mächtiger ist und meist
wichtige neue Backendaufgaben bereitstellt.</p>

<figure id="fig-plugins-sb">
  <a class="lightbox" rel="lightbox" href="media/plugins_sb_dm_de.avif" lg-uid="lg4742" data-fallback="media/plugins_sb_dm_de.webp">
    <picture>
      <source srcset="media/plugins_sb_dm_de.avif" type="image/avif">
      <source srcset="media/plugins_sb_dm_de.webp" type="image/webp">
      <img src="media/plugins_sb_dm_de.png" alt="plugins_sb_dm_de.png" loading="lazy" width="1416" height="1218">
    </picture>
    <figcaption>Abbildung 4.21b: Einstellungen: Plugins verwalten (Seitenleisten)</figcaption>
  </a>
</figure>

<p>Nach einem Klick auf <span class="mbold">Einstellungen: Plugins</span> in der Backend Seitenleiste, sehen
Sie die Liste der Seitenleisten- oder Ereignis-Plugins, je nachdem,
welche sie zuletzt genutzt haben. Pro Plugin gibt es eine einzelne "schwebende" Inhaltsbox.
Die Seitenleisten-Plugins sind in verschiedene Bereiche unterteilt:
<em>links</em>, <em>rechts</em> und <em>versteckt</em>. Diese Bereiche
entsprechen also der Positionierung des Seitenleisten-Plugins im Frontend,
auf der linken oder rechten Seite. Dabei gilt es zu beachten, dass einige
Templates möglicherweise nur eine Seitenleiste anbieten, und manchmal sind
beide Seitenleisten auch rechts oder links angegliedert. Abhängig vom Template
und seinen konfigurierbaren Eigenschaften kann es auch sein, dass hier noch
weitere Plugin-Bereiche dargestellt werden, zB. in Sliver.</p>

<p>Der Bereich <em>versteckt</em> ist dabei ein Sonderbereich. Alle Plugins,
die dort aufgeführt sind, sind <em>inaktiv</em> gesetzt und werden später
im Frontend nicht dargestellt.</p>

<p>Innerhalb der Pluginbox sind folgende Informationen/Einstellungen
enthalten:</p>

<p class="desc">
<span class="tag-box invisible">
    <span class="inline-tag">Drag and Drop</span>
    <span class="inline-tag">Plugin-Reihenfolge verändern</span>
    <span class="inline-tag">Reihenfolge!von Plugins verändern</span>
</span><!-- tagbox -->
<span class="item mbold">Drag and Drop-Rahmen</span>
<span class="desc-info">
    <span class="box">
        Jede einzelne Pluginbox kann mittels JavaScript <em>Drag'n'Drop</em> in ihrer
        Position verändert werden. Das heißt, sowohl die Reihenfolge der Plugins
        untereinander als auch die Wahl der linken oder rechten Seitenleiste
        kann bestimmt werden. Dazu klicken Sie mit der Maus auf den
        Anfassbereich in der linken oberen Ecke jeder Pluginbox (der Cursor
        verwandelt sich dann in einen Positionierungspfeil), halten die Maus
        gedrückt und verschieben dann die Box an die gewünschte Position. Dabei
        wird der jeweilige Bereich, über dem Sie sich befinden, mit einem Rahmen
        hervorgehoben. Sobald Sie die Maustaste loslassen, wird das Plugin in den
        gerade hervorgehobenen Bereich eingefügt.
    </span>

    <span class="box">
        Diese Funktionalität wird mittels JavaScript eingebunden. Sollte Ihr
        Browser dies nicht unterstützen,
        sehen Sie anstelle der Anfasser für jedes Plugin eine Auswahlbox, mit
        der Sie angeben, ob das Plugins links, rechts oder versteckt platziert
        wird. Die Reihenfolge kann in diesem Falle dann über zwei eigenständige
        Pfeil-Buttons verändert werden.
    </span>

    <span class="box">
        Es ist wichtig, dass Sie nach der Änderung der Positionierung auf den
        Button <span class="mbold">Speichern</span> klicken. Erst wenn Sie diesen
        Button auch anklicken, werden die Änderungen tatsächlich gespeichert.
        Sollten Sie also einmal nach einer längeren Sortierungsaktion unzufrieden
        mit dem Ergebnis sein, können Sie die Seite einfach neu laden oder verlassen,
        und die Änderungen werden verworfen.
    </span>
</span>
</p>

<p class="desc">
<span class="tag-box invisible">
    <span class="inline-tag">Plugins!entfernen</span>
</span><!-- tagbox -->
<span class="item mbold">Markierungsbox</span><!-- menuitem -->
<span class="desc-info">Neben jedem Plugin-Titel ist eine Auswahlbox dargestellt, die angekreuzt
werden kann. Um ein oder mehrere Plugins zu löschen, müssen Sie die Boxen
der jeweiligen Plugins aktivieren und danach auf den Button
<span class="mbold">Löschen</span> (Markierte Plugins entfernen) klicken.</span>
</p>

<p class="desc">
<span class="tag-box invisible">
    <span class="inline-tag">Plugins!konfigurieren</span>
</span><!-- tagbox -->
<span class="item mbold">Zahnrad-Symbol</span><!-- menuitem -->
<span class="desc-info">Einige Plugins bieten spezielle Konfigurationsoptionen an. Jedes Plugin
mit solchen Optionen zeigt ein <span class="mbold">Zahnrad</span>-Symbol an, auf
das Sie klicken können.</span>
</p>

<p class="desc">
<span class="item mbold">Plugin-Titel</span><!-- menuitem -->
<span class="desc-info">Der Name eines Plugins wird im Zentrum der Pluginbox angezeigt. Plugins,
die eigene Konfigurationseinstellungen anbieten, kann man mit einem Klick
auf das Zahnrad-Symbol bearbeiten.</span>
</p>

<p class="desc">
<span class="item mbold">Plugin-Beschreibung</span><!-- menuitem -->
<span class="desc-info">In der Plugin-Beschreibung, die sich nach einen Klick auf den angezeigten
Pluginnamen als details-HTML Box entfaltet, wird die Funktionalität eines Plugins kurz
beschrieben. Dies ist auch diejenige Beschreibung, die auf Spartacus angezeigt wird.</span>
</p>

<p class="desc">
<span class="tag-box invisible">
    <span class="inline-tag">Versionsnummer eines Plugins</span>
</span><!-- tagbox -->
<span class="item mbold">Plugin-Version</span><!-- menuitem -->
<span class="desc-info">Da Plugins öfter aktualisiert werden und mit neuen Versionen Fehler
behoben oder neue Funktionen angeboten werden, ist es ab und zu
interessant zu erfahren, welche Version eines Plugins man gerade wirklich
einsetzt. Diese Versionsnummer wird unterhalb der Plugin-Beschreibung
angezeigt.</span>
</p>

<p class="desc">
<span class="tag-box invisible">
    <span class="inline-tag">Plugin-Eigentümer</span>
    <span class="inline-tag">Eigentümer eines Plugins</span>
</span><!-- tagbox -->
<span class="item mbold">Plugin-Eigentümer</span><!-- menuitem -->
<span class="desc-info">
    <span class="box">
        Zuletzt gibt ein Auswahlfeld den Eigentümer eines Plugins an. Bei einigen
        Plugins ist nur der hier festgelegte Eigentümer (oder ein Administrator)
        autorisiert, Änderungen an der Konfiguration eines Plugins durchzuführen.
        Ob ein Plugin solche Einschränkungen festlegt, ist dem Plugin selbst
        überlassen. Das Plugin <code>HTML Klotz</code> ist ein Beispiel hierfür.
    </span>

    <span class="box">
        Diese Einstellung regelt <em>nicht</em>, wer den Inhalt eines Plugins im Frontend
        sehen darf! Wenn solche Beschränkungen vorgenommen werden sollen, muss das
        Plugin <em>Seitenleisten ein/ausklappen</em> (siehe Seite <span class="pageref"><a href="#sidebarhider">sidebarhider</a></span>)
        verwendet werden.
    </span>
</span>
</p>

<p>&nbsp;</p><!-- separator -->

<p>Um bestimmte Plugins zu entfernen, markieren Sie diese und klicken auf
<span class="mbold">Markierte Plugins entfernen</span>. Um Änderungen an dem Eigentümer eines
Plugins zu speichern, müssen Sie das Plugin markieren und danach auf
<span class="mbold">Speichern</span> klicken. Für Änderungen an der Positionierung oder
Reihenfolge eines Plugins klicken Sie einfach nur auf <span class="mbold">Speichern</span>,
eine Auswahl der beteiligten Plugins ist in diesem Fall nicht
notwendig.</p>

<p>
<span class="tag-box invisible">
    <span class="inline-tag">Plugins!aktivieren</span>
</span>
Ein neues Seitenleisten-Plugin können Sie installieren, indem Sie den Link
<span class="mbold">Seitenleisten-Plugin installieren</span> benutzen.</p>

<p>Analog zu der Auflistung der Seitenleisten-Plugins werden die
Ereignis-Plugins dargestellt. Da diese im Frontend keinem <em>Bereich</em>
entsprechen, sind sie nicht weiter unterteilt und gliedern sich nur in
<span class="mbold">Aktiv</span> und <span class="mbold">Inaktiv</span>. Ein aktives Ereignis-Plugin wird bei
jedem Seitenaufruf von Serendipity in den Speicher geladen und
ausgeführt. Wenn Sie ein Plugin vorübergehend deaktivieren wollen,
können Sie es einfach in den Bereich <span class="mbold">Inaktiv</span> verschieben.</p>

<p>
<span class="tag-box invisible">
    <span class="inline-tag">Reihenfolge!von Ereignis-Plugins</span>
</span>
Die Reihenfolge von Ereignis-Plugins
kann in einigen Situationen wichtig sein. Die Liste dieser Plugins wird vom
ersten bis zum letzten in dieser Reihenfolge ausgeführt; dabei kann die Ausgabe
des vorigen Plugins miteinbezogen werden.
<span class="tag-box invisible">
    <span class="inline-tag">Textformatierungs-Plugins</span>
</span>
Gerade bei Textformatierungs-Plugins, die gewisse Umformatierungen Ihrer Einträge
vornehmen, ist diese Reihenfolge von Interesse. Wenn bspw. ein
Textformatierungs-Plugin wie <em>Textformatierung: Smilies</em>
ausgeführt wird und danach ein Plugin wie das <em>Textformatierung: Wiki-Markup</em>, dann könnte
dies dazu führen, dass die HTML-Formatierung der Smilies durch das
Wiki-Markup-Plugin zerstört wird. Richtig wäre es daher, das Wiki-Markup-Plugin als eines
der ersten Textformatierungs-Plugins anzuwenden. Bei welchen Fällen Sie auf die
Reihenfolge zu achten haben, wird bei der Beschreibung des jeweiligen Plugins in
diesem Buch erwähnt.</p>

<p>Ereignis-Plugins können ähnlich wie Seitenleisten-Plugins über
<span class="mbold">Ereignis-Plugin installieren</span> neu
hinzugefügt werden.</p>

</section><!-- section.sub end -->

<section id="U475" class="sub">
<span class="u-toc">4.7.5 - Fehler bei Plugins</span>

<h3 class="subsection" id="fehler-bei-plugins">Fehler bei Plugins</h3>

<p class="tagging invisible">
<span class="tag-box invisible">
    <span class="inline-tag">Fehler!Arbeitsspeicher voll</span>
    <span class="inline-tag">Fehler!Plugins werden nicht geladen</span>
</span>
</p>

<p class="tagging invisible">
<span class="tag-box invisible">
    <span class="inline-tag">Performance</span>
</span>
</p>

<p>Je länger die Liste der Ereignis-Plugins, desto mehr Arbeitsspeicher
benötigt Serendipity auf dem Webserver. So kann es passieren, dass
nach der Installation eines neuen Ereignis-Plugins der
Arbeitsspeicher ausgereizt ist.</p>

<p>Es kann durchaus passieren, dass zu viele Plugins die fehlerfreie
Ausführung des Frontends oder Backends verhindern. In so einem Fall
müssen Sie also Ereignis-Plugins löschen oder Ihren Provider bitten, den
Arbeitsspeicher (siehe Kapitel <span class="reference">memory-limit</span> auf Seite
<span class="pageref"><a href="#memory-limit">memory-limit</a></span>) zu vergrößern.</p>

<p>Im Zuge der heutzutage üblichen und flexiblen Kontigent-Containerisierung ist
dies dieser Zustand wohl nur noch dann zu erreichen, wenn man es praktisch übertreibt.
Deshalb: Nutzen Sie nur so viel Plugins wie unbedingt nötig!</p>

<p>Sollten Sie nicht mehr auf die Plugin-Verwaltungsoberfläche gelangen,
können Sie ein Plugin auch entfernen, indem Sie das entsprechende
Verzeichnis im <code>plugins</code>-Unterverzeichnis löschen. Sobald Serendipity
eine angeforderte Plugin-Datei nicht mehr findet, wird das
entsprechende Plugin einfach temporär deaktiviert. Sie werden es dann
trotzdem noch in der dann wieder aufrufbaren Plugin-Verwaltung sehen
können, dort wird dann jedoch nur eine Meldung wie</p>

<pre><code class="msg">
    Fehler! serendipity_event_xxx
</code></pre>

<p>zu sehen sein. Ein solches Plugin können Sie jedoch wie gewohnt löschen.</p>

<p>Abgesehen von der absichtlichen Löschung eines Plugins kann es auch
einmal vorkommen, dass Sie die obige Meldung bei Plugins sehen, die
eigentlich fehlerfrei funktionieren sollten. Diese Meldung kann auch
angezeigt werden, wenn eine Plugin-Datei für Serendipity nicht lesbar
ist oder womöglich fehlerhaft via FTP hochgeladen wurde. Prüfen Sie
daher, ob diese Dateien auch dem richtigen Zustand (Dateigröße und
Dateirechte) entsprechen.</p>

<p>
<span class="tag-box invisible">
    <span class="inline-tag">Fehler!Plugins nach Serverumzug defekt</span>
</span>
Auch nach einem Serverumzug kann es vorkommen, dass früher
funktionierende Plugins plötzlich nicht mehr aufrufbar sind. In diesem
Fall finden Sie in der Datenbanktabelle <code>serendipity_plugins</code> eine
Auflistung aller aktivierten Plugins inklusive deren Dateipfad. Diesen
Pfad müssen Sie möglicherweise auf neue Gegebenheiten anpassen.</p>

<p>Manchmal kann es sein, dass nach der Installation
mehrere Instanzen eines Plugins aktiviert wurden. Sie können daher doppelte Plugins
leicht wieder aus der Verwaltungsoberfläche löschen.</p>

<p>Wenn Sie eine Plugin-Datei selbständig editieren, kann es passieren, dass
Sicherungskopien eines Plugins mit der Dateiendung <code>.bak</code> oder
<code>.php~</code> von Ihrem Editor im jeweiligen Plugin-Verzeichnis gespeichert
werden. Diese Dateien können die Plugin-Verwaltung von Serendipity stören
und müssen daher unbedingt gelöscht werden. Auch ganze Kopien eines
Verzeichnisses unter einem zweiten Namen dürfen niemals im
<code>plugins</code>-Unterverzeichnis gespeichert werden, verschieben Sie
derartige Sicherheitskopien immer an einen von Serendipity unabhängigen
Speicherort! Es ist aber alles eine Frage der Reihenfolge. Ein vorangestelltes
<code>_</code> zum Beispiel, erlaubt es aber dennoch ein Plugin vorübergehend
aus der Liste und der Bearbeitung zu nehmen.</p>

</section><!-- section.sub end -->

<section id="U476" class="sub">
<span class="u-toc">4.7.6 - Neue Plugins installieren</span>

<h3 class="subsection" id="neue-plugins-installieren">Neue Plugins installieren</h3>

<p class="tagging invisible">
<span class="tag-box invisible">
    <span class="inline-tag">Plugins!installieren</span>
    <span class="inline-tag">Plugins!aktivieren</span>
</span>
</p>

<p>Wenn Sie ein neues Ereignis- oder Seitenleisten-Plugin installieren, wird
Serendipity Ihnen die verfügbaren Plugins auf einer Plugin-Übersicht
darstellen. Dort wird jedes Plugin, das im Serendipity-Verzeichnis
vorhanden ist, aufgelistet. Auch bereits installierte Plugins werden
daher an dieser Stelle dargestellt, da es einige Arten von Plugins
gibt, die mehrfach installiert (genauer: instanziert)
werden können.
<span class="tag-box invisible">
    <span class="inline-tag">Plugin-Instanz</span>
</span>
</p>

<p>Serendipity wird mit einer kleinen Auswahl an verfübaren Plugins
ausgeliefert, die nicht alle von Anfang an aktiviert sind. Sollten Sie
weitere Plugins benötigen, können Sie diese entweder vom Server
<code>https://ophian.github.io/plugins/</code> manuell herunterladen [*]
<span class="footnote"><i class="fa fa-info-circle"></i> Github kann momentan
keine Plugins einzeln als ZIP verpackt bereitstellen. Sie sind aber sehr einfach
über diese URL <a href="https://github.com/ophian/additional_plugins" target="_blank"
rel="noopener">https://github.com/ophian/additional_plugins</a> aufrufbar und können
entweder komplett als ZIP Datei heruntergeladen oder in Einzelteilen per einzelner
RAW Datei gespeichert werden.</span><!-- footnote -->,
automatisch mittels des <code>Spartacus</code>-Plugins installieren oder ein
selbst entwickeltes Plugin auswählen. Siehe <span class="mbold">Serendipity Styx</span> und sein
eigenes darauf abgestimmtes Plugin-Repository. Wenn Sie aus dem Internet ein
Serendipity-Plugin als ZIP-Datei heruntergeladen haben, müssen Sie
dieses in die Unterverzeichnisstruktur von <code>plugins</code> entpacken.
Serendipity kann mit der ZIP-Datei selber nichts anfangen, und auch wenn
eine Plugin-Datei versehentlich nur ins Stammverzeichnis kopiert werden
sollte, kann dies dazu führen, dass es später in der Plugin-Übersicht
nicht aufgeführt wird.</p>

<p>Plugins müssen also in zwei Schritten für Serendipity verfügbar gemacht
werden. Zum einen muss ein Plugin in einem Unterverzeichnis des
<code>plugins</code>-Verzeichnisses gespeichert werden, damit Serendipity das
Plugin überhaupt sehen kann. Im zweiten Schritt muss dann das
hochgeladene Plugin für Serendipity über die Plugin-Verwaltung
<em>aktiviert</em> werden.</p>

<figure id="fig-plugins-sb-new">
  <a class="lightbox" rel="lightbox" href="media/plugin_sb_new_dm_de.avif" lg-uid="lg4761" data-fallback="media/plugin_sb_new_dm_de.webp">
    <picture>
      <source srcset="media/plugin_sb_new_dm_de.avif" type="image/avif">
      <source srcset="media/plugin_sb_new_dm_de.webp" type="image/webp">
      <img src="media/plugin_sb_new_dm_de.png" alt="plugin_sb_new_dm_de.png" loading="lazy" width="1007" height="1213">
    </picture>
    <div class="shape-separator"></div>
    <figcaption>Abbildung 4.22: Einstellungen: Plugins verwalten: Neues Plugin installieren (Ausschnitt)</figcaption>
  </a>
</figure>

<p>In der Plugin-Übersicht für die Installation sehen Sie pro Zeile jeweils
einen Plugin-Namen. Die Plugins sind unterteilt in verschiedene Gruppen,
die Sie speziell auch über das Auswahlfeld <span class="mbold">Filter</span> am Seitenanfang
anwählen können.</p>

<p>Unter jedem Plugin-Namen wird eine Beschreibung des Plugins angezeigt,
sowie der Autor und die Versionsnummer des Plugins. Unterhalb der
Beschreibung sehen Sie entweder einen Button zur Installation des
gewünschten Plugins oder die Information, dass ein Plugin <span class="mbold">bereits
installiert</span> ist.</p>

<p>Wenn Sie auf den Installations-Button klicken, werden Sie ggf. direkt
zur Konfiguration des gerade gewählten Plugins weitergeleitet. Dort
werden Ihnen die Standardoptionen bereits vorausgefüllt, Sie müssen also
nicht sofort die vollständige Konfiguration aufrufen, sondern können die
Konfiguration auch jederzeit später vervollständigen. Nach diesem Vorgang
ist ein Plugin installiert und kann wie gewohnt über den Menüpunkt
<span class="mbold">Plugins</span> verschoben und konfiguriert werden.</p>

</section><!-- section.sub end -->

<section id="U477" class="sub">
<span class="u-toc">4.7.7 - SPARTACUS</span>

<h3 class="subsection" id="spartacus-1">SPARTACUS</h3>

<p class="tagging invisible">
<span class="label invisible" id="spartacus">spartacus</span>
<span class="tag-box invisible">
    <span class="inline-tag">Spartacus</span>
</span>
</p>

<p><em>SPARTACUS</em> steht für das <em>Serendipity Plugin Access Repository
Tool And Customization/Unification System</em>. Trotz des zugegebenermaßen
konstruierten Akronyms wird deutlich, dass Spartacus ein System ist, das
Plugins und Templates zur Verfügung stellt.</p>

<p>Spartacus besteht aus zwei Komponenten: Zum einen der zentrale Server
<code>http://spartacus.s9y.org</code>, auf dem sämtliche verfügbaren
offiziellen Plugins vorhanden sind und auch für Nicht-Serendipity-Benutzer
übersichtlich dargestellt werden.
Zum anderen wird bei Serendipity ein gleichnamiges Ereignis-Plugin
mitgeliefert, das direkt auf diesen zentralen Server zugreifen und
Plugins herunterladen kann. Das Plugin stellt einige Anforderungen an den
Server, auf dem Sie Serendipity installiert haben:</p>

<p class="tagging invisible">
<span class="tag-box invisible">
    <span class="inline-tag">Fehler!Spartacus</span>
</span>
</p>

<ul class="realList">

    <li>Der Webserver darf nicht durch eine Firewall blockiert werden. Er
    muss Zugriffe auf <code>github.com</code>, <code>sourceforge.net</code>
    und <code>spartacus.s9y.org</code> auf Port 80 ermöglichen.</li>

    <li>Die PHP-Konfiguration muss den Zugriff auf Netzwerk-Sockets erlauben.</li>

    <li>Damit Serendipity Dateien selbständig herunterladen und auf dem
    Server speichern kann, muss Schreibzugriff auf die Verzeichnisse
    <code>plugins</code> und <code>templates</code> gewährt werden.</li>

</ul>

<p>Auf manchen Webservern schlägt die erste Bedingung fehl, was dazu
führt, dass keine PHP-Anwendung <em>nach draußen</em> zugreifen kann.
Gerade bei großen Providern ist aus Sicherheitsgründen ein derartiger
Zugriff nicht gestattet. In so einem Fall können Sie Spartacus also
leider nicht einsetzen und müssen die Plugins manuell vom Server
<code>https://ophian.github.io/plugins/</code> bzw der Weiterleitung auf GitHub beziehen. Seit langem
besteht auch behelfsweise die Möglichkeit, Dateien direkt über Ihren FTP-Zugang
auf den Webserver hochzuladen - dadurch werden die
PHP-Beschränkungen umgangen. Die Zugangsdaten müssen Sie in der Konfiguration
des Spartacus-Plugins festlegen.</p>

<p>Der Autor hat diese Einschränkungen in den letzten 10 Jahren aber
nicht mehr erlebt, so dass Serendipity und Spartacus heutzutage auf
nahezu allen Systemen out-of-the-box funktionieren sollte!</p>

<p>Wenn das Spartacus-Plugin auf solchen blockierten Servern installiert
wird, kann das zu einer Reihe von Problemen führen: von der vollständigen
Fehlfunktion der Plugin-Installationsoberfläche bis hin zu weißen Seiten
beim Klick auf ein zu installierendes Plugin.</p>

<p>Sollten Sie also beim Installieren von Plugins eine leere Seite erhalten,
oder Ihr Browser gibt an, die Datei <code>serendipity_admin.php</code> müsse
lokal auf der Festplatte gespeichert werden, oder die Installation eines
Plugins führt zu langen Ladezeiten, dann können Sie sich sicher
sein, dass Spartacus auf Ihrem Server nicht gestartet werden kann. Eine
Fehlermeldung, die in diesem Zusammenhang auch auftreten kann, ist:</p>

<p class="tagging invisible">
<span class="tag-box invisible">
    <span class="inline-tag">Access denied!in PEAR.php at line 848</span>
    <span class="inline-tag">Fehler!Access denied in PEAR.php at line 848</span>
</span>
</p>

<pre><code class="error">
    Access Denied in /var/www/example.com/serendipity/bundled-libs/PEAR.php at line 848
</code></pre>

<p>Dies ist eine generische Fehlermeldung, die bedeutet, dass die für den
Download zuständige PEAR-Komponente keine Verbindung zu einem Server
aufnehmen konnte.</p>

<p>
<span class="tag-box invisible">
    <span class="inline-tag">Proxy-Server</span>
</span>
Möglicherweise kann Ihr Webserver auf fremde Server zugreifen, wenn Sie einen
Proxy-Server benutzen. Um einen Proxy für Spartacus einzustellen, bietet das
Plugin <code>Trackbacks kontrollieren</code> (siehe Seite <span class="pageref"><a href="#trackbacks">trackbacks</a></span>) eine
Möglichkeit, den Proxy-Server zu konfigurieren. Der dort eingestellte
Proxy-Server gilt dann für alle Serendipity-Funktionalitäten und aktuellen
Plugins.</p>

<p>Wenn Sie ein älteres Plugin nutzen, das sich nicht von der im
Trackback-Plugin konfigurierten Proxy-Einstellung beeindrucken lässt,
können Sie notfalls auch manuell in der Datei
<code>bundled-libs/HTTP/Request2.php</code> in Zeile 136 folgende Variablen
setzen:</p>

<pre><code class="php">
    $this-&gt;_proxy_host = null;<br>
    $this-&gt;_proxy_port = null;<br>
    $this-&gt;_proxy_user = null;<br>
    $this-&gt;_proxy_pass = null;
</code></pre>

<p>Beachten Sie, dass diese Änderung einer zentralen Bibliothek nicht gerade
die <em>feine englische Art</em> ist, da die lokale Bibliothek auf einigen
Servern durch eine zentrale PEAR-Bibliothek übergangen werden könnte.</p>

<p>In älteren Serendipity Releases war das Spartacus-Plugin aufgrund der aufgeführten potenziellen Probleme
standardmäßig nach der Installation nicht aktiviert. Sie mussten es daher
über den Menüpunkt <span class="mbold">Klicken Sie hier, um Ereignis-Plugin zu
installieren</span> erst auswählen und aktivieren. In der Konfiguration des
Spartacus-Plugins konnten und können einige wichtige Optionen festgelegt werden,
siehe Seite <span class="pageref"><a href="#Spartacus">Spartacus</a></span>.</p>

<p>Kann Spartacus auf dem Server eingesetzt werden, fügt es sich
nahtlos in die Serendipity-Oberfläche ein. Wenn Sie sich mit aktiviertem
Plugin dann die Plugin-Verwaltung zur Installation eines neuen
Plugins ansehen, wird das Plugin automatisch aus dem Internet eine
aktuelle Liste der verfügbaren Plugins laden und Ihnen darstellen. Bei
Klick auf ein Plugin wird Spartacus automatisch alle benötigten
Dateien herunterladen und Sie über diesen Download benachrichtigen.</p>

<p>Sollte der Download eines Plugins mittels Spartacus einmal fehlschlagen,
können Sie über FTP das entsprechende Plugin-Verzeichnis einfach
komplett löschen und die Neuinstallation probieren.</p>

<p>
<span class="tag-box invisible">
    <span class="inline-tag">Aktualisierte Plugins anzeigen</span>
</span>
Auch die Aktualisierung von Plugins kann mittels Spartacus komfortabel
vorgenommen werden. Anstatt über die Spartacus-Webseite nach neuen
Versionen zu suchen, können Sie über die Plugin-Verwaltung den Button
<span class="mbold">Plugins updaten</span> anklicken, um Spartcus nach
updatefähigen Seitenleisten- und Ereignis-Plugins zu durchsuchen.
Dort werden dann alle aktualisierbaren Plugins aufgelistet und können auf den
einzeln oder oder automatisch eingespielt werden. Das <span class="mbold">CKEditor Plus</span>
Plugin sollte als bisher einziges Plugin immer nur einzeln aktualisiert werden,
wenn es ein neues und aktualisiertes Zip mitbringt.</p>

<p>Leider gibt es bei einem Upgrade in der Plugin-Oberfläche nicht immer einen
Hinweis, welche Dinge sich bei einem Plugin verändert haben. Als
Faustregel gilt, dass nur große Versionssprünge in einem Plugin
tiefgreifende Änderungen mit sich bringen. Die meisten Updates sind
Bugfixes oder kleinere neue Features. Da Plugin-Entwickler oft faule
Leute sind, ist die Dokumentation der Updates jedoch meist dürftig,
und Sie müssen sich die Aktualisierungen manuell in der
Spartacus-Versionsverwaltung ansehen.[*]
<span class="footnote"><i class="fa fa-info-circle"></i> <a href="https://github.com/ophian/additional_plugins" target="_blank" rel="noopener">https://github.com/ophian/additional_plugins</a></span><!-- footnote -->
Details zu dieser Webseite finden Sie im Kapitel
<span class="reference">sourcecodeverwaltung</span> ab Seite <span class="pageref"><a href="#sourcecodeverwaltung">sourcecodeverwaltung</a></span>.</p>

<p>Auch bei Plugins werden Updates immer unter großer Beachtung der
Rückwärts-Kompatibilität durchgeführt. Sie müssen also nicht fürchten, dass
sich bei einem Update eines Plugins etwas für Sie ändern könnte oder zu Bruch
geht - diese Gefahr ist relativ gering. Lediglich wenn Sie selbst Änderungen
an den Plugin-Dateien gemacht haben, müssen Sie diese sichern und nach dem
Update erneut einfügen. Die Konfigurationsoptionen Ihrer Plugins bleiben bei
einer Aktualisierung weiterhin bestehen.</p>

<p>Wenn Sie mehrere Plugins auf einmal aktualisieren wollen, müssen Sie
sie diese mittels des rechten Mausbuttons in neue Tabs installieren oder
jenen bereits genannten automatischen Einspieler nutzen. <span class="mbold">Achtung:</span>
Dies kann, je nach Menge und zur Verfügung gestellter Kapazität des Servers durchaus zu Fehlern führen,
wenn die Grenzen der zugestandenen Auslastung erreicht sind.
Besser und sicherer ist es jedoch, jedes Plugin einzeln und nacheinander upzudaten,
auch, da es wie beim <code>CKEditor Plus</code>-Plugin mittlerweile durchaus Plugins geben kann,
die augenblicklich für wichtige Upgrade-Aufgaben in ihre eigenen Konfigurationsseiten zurückfallen möchten.
</p>

<p>Oberhalb jeder Übersichtsseite werden Sie einige Meldungen von Spartacus
sehen, die Sie darüber informieren, dass gerade eine Übersichtsdatei oder
Weiteres aus dem Internet geladen wird. Diese Meldungen helfen Ihnen, im
Fall von Zugriffsproblemen die Schreibrechte zu prüfen.</p>

<p>Die XML-Dateien, die Spartacus herunterlädt, werden in dem temporären
Verzeichnis <code>templates_c</code> gespeichert. Damit das Plugin
nicht bei jedem Zugriff auf Ihre Plugin-Verwaltung diese Dateien neu lädt,
wird Spartacus die Dateien zwischenspeichern und nur alle 12 Stunden auf
Aktualisierung prüfen. Aufgrund dieser Zwischenspeicherung kann es also
passieren, dass neue Plugins im Spartacus-Archiv erst mit maximal
12 Stunden Verzögerung dargestellt werden. Wenn Sie unbedingt forcieren
wollen, dass Spartacus den Zwischenspeicher leert, dann können Sie über
die Plugin-Konfiguration von Spartacus einfach auf den Button
<span class="mbold">Speichern</span> klicken. Dadurch werden die temporären Dateien alle
gelöscht. Auf Wunsch könnten Sie die Dateien natürlich auch mit einem
FTP-Programm löschen.</p>

<p>Alle Inhalte des Spartacus-Systems können Sie auch ohne Serendipity unter
<code>https://ophian.github.io/plugins/</code> ansehen und dort bzw auf GitHub Plugins als ZIP-Datei
manuell herunterladen (siehe vorherige Fußnote).</p>

<p>Die Plugins von Spartacus werden, ebenso wie Serendipity selbst, öffentlich
über ein Versionskontrollsystem gepflegt. Alle vorgenommenen Änderungen
werden darin protokolliert. Details finden Sie in Kapitel
<span class="reference">sourcecodeverwaltung</span> auf Seite <span class="pageref"><a href="#sourcecodeverwaltung">sourcecodeverwaltung</a></span>.</p>

</section><!-- section.sub end -->

</section><!-- section.index end -->

<section id="S480" class="index">
<span class="s-toc">4.8 - Einstellungen (Administration)</span>

<h3 class="section" id="administration">Einstellungen (Administration)</h3>

<p class="tagging invisible">
<span class="tag-box invisible">
    <span class="inline-tag">Administration|see{Backend, Einstellungen (Administration)}</span>
    <span class="inline-tag">Backend!Einstellungen (Administration)</span>
</span>
</p>

<p>Im Menübereich <span class="mbold">Einstellungen</span> (hier <em>Administration</em> genannt)
befinden sich alle Möglichkeiten, die generellen Optionen Ihres Blogs zu bearbeiten.
Für die Benutzerverwaltung gibt es einen eigenen Seitenleisten Bereich, ebenso wie für
die schon verschiedentlich erwähnte <span class="mbold">Wartung</span>-Sektion, deren Teil,
unter anderem, der Export und der Import von Blog-Artikeln sind.</p>

<p>&nbsp;</p>

<section id="U481" class="sub">
<span class="u-toc">4.8.1 - Konfiguration</span>

<h3 class="subsection" id="konfiguration">Konfiguration</h3>

<p class="tagging invisible">
<span class="label invisible" id="Konfiguration">Konfiguration</span>
<span class="tag-box invisible">
    <span class="inline-tag">Backend!Konfiguration</span>
    <span class="inline-tag">Installation!fortgeschrittener Modus</span>
</span>
</p>

<p>Hinter <span class="mbold">Konfiguration</span> finden Sie alle Einstellungen
des Blogs, die Sie auch bei der Installation im
<em>Fortgeschrittenen</em>-Modus festlegen können.</p>

<p>Der Konfigurationsbereich ist dabei in mehrere Bereiche untergliedert,
um etwas Struktur in die Oberfläche zu bringen. Jeder Bereich kann
dabei über den <span class="mbold">Zeilenlangen</span>-Button aus- und eingeklappt werden. Um alle
Bereiche auf einmal auszuklappen, klicken Sie auf den obersten <span class="mbold">Button</span>,
um alle Optionen gemeinsam ein-/ausblenden.</p>

<article id="XU" class="subsub">

<header>
    <h4 class="subarticle" id="datenbankeinstellungen">Datenbankeinstellungen</h4>
</header>

<p class="tagging invisible">
<span class="tag-box invisible">
    <span class="inline-tag">Konfiguration!Datenbankeinstellungen</span>
</span>
</p>

<p>Die <span class="mbold">Datenbankeinstellungen</span> bestimmen den Zugang zur zentralen
Serendipity-Datenbank und deren möglichen Optionen.</p>

<p>Hier müssen immer die aktuell gültigen Zugangsparameter zur
Datenbank eingetragen werden. Diese Datenbankinformationen werden
zusätzlich in der Datei <code>serendipity_config_local.inc.php</code>
gespeichert. Wenn sich also einmal die Zugangsdaten ändern, könnte es
sein, dass Sie manuell zuerst diese Datei (siehe auch Kapitel
<span class="reference">Installation erneut ausführen</span> auf Seite
<span class="pageref"><a href="#Installation erneut ausfuehren">Installation erneut ausführen</a></span>) überarbeiten müssen, bevor Sie sich wieder ins
Backend einloggen können.</p>

<figure id="fig-configuration-db">
  <a class="lightbox" rel="lightbox" href="media/configuration_db_dm_de.avif" lg-uid="lg4811" data-fallback="media/configuration_db_dm_de.webp">
    <picture>
      <source srcset="media/configuration_db_dm_de.avif" type="image/avif">
      <source srcset="media/configuration_db_dm_de.webp" type="image/webp">
      <img src="media/configuration_db_dm_de.png" alt="configuration_db_dm_de.png" loading="lazy" width="1424" height="1000">
    </picture>
    <figcaption>Abbildung 4.23a: Einstellungen: Konfiguration - Datenbank</figcaption>
  </a>
</figure>

<p>&nbsp;</p><!-- separator -->

<p class="tagging invisible">
<span class="tag-box invisible">
    <span class="inline-tag">Datenbank!Typ</span>
    <span class="inline-tag">Konfiguration!Datenbanktyp</span>
</span>
</p>

<p class="desc">
<span class="item mbold">Datenbanktyp</span><!-- menuitem -->
<span class="desc-info">
    <span class="box">
        In diesem Auswahlfeld sind die verfügbaren Datenbanktypen aufgeführt,
        zu denen Serendipity Verbindung aufnehmen kann. Die Liste der
        verfügbaren Typen richtet sich nach der Konfiguration Ihres
        PHP-Servers. PHP muss für jeden Datenbankserver eine sogenannte
        <span class="tag-box invisible">
            <span class="inline-tag">Client-Libary</span>
        </span>
        <em>Client-Library</em> eingebunden haben, um auf die Funktionen des
        jeweiligen Datenbanktyps zugreifen zu können. Wenn Sie sich sicher
        sind, dass auf Ihrem Server ein MySQL-Server läuft, muss das nicht
        automatisch bedeuten, dass PHP darauf auch zugreifen kann. Zahlreiche
        Linux-Distributionen bieten die Client-Libraries in eigenen Paketen
        an, bei Debian beispielsweise <code>php-mysql</code>.
    </span>

    <span class="tag-box invisible">
        <span class="inline-tag">MySQL</span>
        <span class="inline-tag">mysqli</span>
        <span class="inline-tag">sqlite</span>
        <span class="inline-tag">postgres</span>
        <span class="inline-tag">sqlite3</span>
        <span class="inline-tag">PDO postgres</span>
        <span class="inline-tag">PDO-sqlite3</span>
    </span>
    <span class="box">
        Serendipity kann auf folgende Client-Libraries zugreifen: <code>mysqli</code> (ab MySQL 4),
        <code>postgres</code> (PostgreSQL), <code>PDO postgres</code> (spezielle PHP5-Variante
        der PostgreSQL-Library), <code>sqlite</code>, <code>sqlite3</code> und <code>PDO-sqlite3</code>.
    </span>

    <span class="box">
        SQLite ist ein Sonderfall einer Datenbank, da es ohne einen Datenbankserver
        auskommen kann. Ab PHP5 ist SQLite fester Bestandteil von PHP und somit immer
        verfügbar. Die Vorteile von SQLite sind eine sehr hohe Performance beim Lesen
        von Datenbanken und die Erstellung einer einzelnen Datenbankdatei, von der man
        sehr leicht ein Backup aufnehmen kann. Der Nachteil ist, dass SQLite nicht alle
        Datenbank-Operationen mittels SQL-Syntax unterstützt und gerade bei komplexeren
        Datenbankabfragen doch eher langsam wird.
    </span>

    <span class="box">
        Am besten getestet ist Serendipity bei Verwendung der MySQL-Datenbank.
        Die Kernfunktionen von Serendipity laufen auch problemlos mit allen
        anderen Datenbanktypen, aber einige Plugins könnten spezielle
        MySQL-Funktionen einsetzen.
    </span>

    <span class="box">
        Wenn Sie den Datenbanktyp bei einer aktiven Serendipity-Installation
        ändern, richtet Serendipity <em>keine</em> neue Datenbank auf dem
        gewünschten System ein! Alle Datenbankeinstellungen richten sich nach
        dem <em>Ist-Zustand</em>, Serendipity geht also davon aus, dass Sie mit
        diesen Optionen die aktuellen Gegebenheiten abbilden, und nicht, wie
        Sie es in Zukunft gerne hätten. Um Serendipity auf eine andere Datenbank
        umzustellen, müssen Sie die Migration mithilfe der Dokumentation des
        Datenbankservers leider selbständig vornehmen.
    </span>
</span>
</p>

<p class="desc">
<span class="tag-box invisible">
    <span class="inline-tag">Konfiguration!Datenbankservername@Datenbank-Servername</span>
</span><!-- tagbox -->
<span class="item mbold">Datenbank Servername</span><!-- menuitem -->
<span class="desc-info">Der Servername der Datenbank kann entweder eine IP-Adresse (zB.
<code>127.0.0.1</code>), ein lokaler Hostname (<code>localhost</code>) oder ein Internet-Hostname
(<code>www.example.com</code>) sein. Wird für SQLite nicht benötigt.</span>
</p>

<p class="desc">
<span class="tag-box invisible">
    <span class="inline-tag">Konfiguration!Datenbankusername@Datenbank-Username</span>
</span><!-- tagbox -->
<span class="item mbold">Datenbank Username</span><!-- menuitem -->
<span class="desc-info">Der Benutzername für den Datenbankserver. Wird für SQLite nicht
benötigt.</span>
</p>

<p class="desc">
<span class="tag-box invisible">
    <span class="inline-tag">Konfiguration!Datenbankpasswort</span>
</span><!-- tagbox -->
<span class="item mbold">Datenbank Passwort</span><!-- menuitem -->
<span class="desc-info">Das Passwort für den Benutzer des Datenbankservers. Wird für SQLite
nicht benötigt.</span>
</p>

<p class="desc">
<span class="tag-box invisible">
    <span class="inline-tag">Konfiguration!Datenbankname</span>
</span><!-- tagbox -->
<span class="item mbold">Datenbankname</span><!-- menuitem -->
<span class="desc-info">Der Name der Datenbank, in der Serendipity installiert wurde. Bei
Verwendung von SQLite wird hier der Dateiname der <code>.db</code>-Datenbank
gespeichert.</span>
</p>

<p class="desc">
<span class="tag-box invisible">
    <span class="inline-tag">Konfiguration!Datenbankpräfix</span>
    <span class="inline-tag">Datenbank-Präfix</span>
</span><!-- tagbox -->
<span class="item mbold">Datenbank-Präfix</span><!-- menuitem -->
<span class="desc-info">Jede Serendipity-Tabelle in einer Datenbank muss einen vordefinierten
Präfix besitzen, damit sich die Tabellennamen von möglicherweise gleichnamigen
Tabellen anderer Anwendungen in derselben Datenbank abheben können.
Standardmäßig wird hier <code>styx_</code> eingetragen. Wenn Sie den
Tabellenpräfix nachträglich ändern, müssen Sie die bestehenden Tabellen
manuell in der Datenbank umbenennen, Serendipity führt dies nicht
selbständig aus.</span>
</p>

<p class="desc">
<span class="tag-box invisible">
    <span class="inline-tag">Konfiguration!persistente Verbindungen nutzen</span>
    <span class="inline-tag">Persistente Verbindungen</span>
</span><!-- tagbox -->
<span class="item mbold">Persistente Verbindungen nutzen</span><!-- menuitem -->
<span class="desc-info">
    <span class="box">
        Bei jedem Aufruf einer Seite von Serendipity wird eine Verbindung zur
        Datenbank aufgebaut. Im "Lebenszyklus" einer PHP-Anwendung wird diese
        Datenbankverbindung nach der Ausführung automatisch wieder geschlossen.
        Um etwas Zeit zu sparen, können PHP-Anwendungen sogenannte
        <em>Persistent Connections</em> (<em>Ständige Verbindungen</em>) nutzen.
        Diese Option wird in der PHP-Dokumentation [*]
        <span class="footnote"><i class="fa fa-info-circle"></i> <a href="https://www.php.net/manual/de/features.persistent-connections.php" target="_blank" rel="noopener">https://www.php.net/manual/de/features.persistent-connections.php</a></span><!-- footnote -->
        ausführlicher beschrieben und bewirkt - kurz gesagt -, dass mehrere
        PHP-Aufrufe dieselbe Datenbankverbindung nutzen können, ohne diese
        ständig neu auf- und abzubauen.
    </span>

    <span class="box">
        Generell birgt diese Option einige Gefahren, da bei Datenbankproblemen
        eine Verbindung nicht mehr automatisch neu aufgebaut wird und
        möglicherweise viele Zugriffe auf die Webseite das Ressourcenlimit an
        Verbindungen schneller erschöpfen könnten. Daher sollte diese Option
        nur dann aktiviert werden, wenn Sie sich mit ihren
        Vor- und Nachteilen auskennen.
    </span>
</span>
</p>

<p class="desc">
<span class="tag-box invisible">
    <span class="inline-tag">Konfiguration!Datenbankzeichensatz@Datenbank-Zeichensatzkonvertierung aktivieren</span>
    <span class="inline-tag">Datenbank!Zeichensatzkonvertierung</span>
</span><!-- tagbox -->
<span class="item mbold">Datenbank-Zeichensatzkonvertierung aktivieren</span><!-- menuitem -->
<span class="desc-info">
    <span class="box">
        Diese Option gilt nur für MySQL-Datenbanktypen und bringt Serendipity
        dazu, beim Verbinden mit der Datenbank anzugeben, welchen Zeichensatz
        das Blog benutzt. Gerade bei den damals aktuellen MySQL-Versionen ab 4.1 konnte die
        falsche Verwendung von Zeichensätzen zu Fehlern führen, siehe Kapitel
        <span class="reference">Falsche Anzeige von Datumsangaben oder Sonderzeichen</span> ab Seite
        <span class="pageref"><a href="#Falsche Anzeige von Datumsangaben oder Sonderzeichen">Falsche Anzeige von Datumsangaben oder Sonderzeichen</a></span>.
    </span>

    <span class="tag-box invisible">
        <span class="inline-tag">Sonderzeichen</span>
        <span class="inline-tag">Fehler!Sonderzeichen</span>
    </span>
    <span class="box">
        Sollte Ihr Blog bei der Darstellung von Sonderzeichen Probleme machen,
        könnte die Umstellung dieser Option Abhilfe schaffen.
    </span>
    <span class="box">
        Ansonsten ist das aktivieren der Datenbank-Zeichensatzkonvertierung heutzutage aber die empfohlene Einstellung.
    </span>
</span>
</p>

</article>

<article id="XU" class="subsub">

<header>
    <h4 class="subarticle" id="pfade">Pfade</h4>
</header>

<p class="tagging invisible">
<span class="tag-box invisible">
    <span class="inline-tag">Konfiguration!Pfade</span>
</span>
</p>

<p>Im Bereich <span class="mbold">Pfade</span> tragen Sie einige Optionen zur Festlegung der
URLs ein. Bitte beachten Sie, dass Sie an dieser Stelle die derzeit
gültigen Pfade eintragen müssen, die mit Ihrer Installation
übereinstimmen.</p>

<figure id="fig-configuration-path">
  <a class="lightbox" rel="lightbox" href="media/configuration_path_dm_de.avif" lg-uid="lg4812" data-fallback="media/configuration_path_dm_de.webp">
    <picture>
      <source srcset="media/configuration_path_dm_de.avif" type="image/avif">
      <source srcset="media/configuration_path_dm_de.webp" type="image/webp">
      <img src="media/configuration_path_dm_de.png" alt="configuration_path_dm_de.png" loading="lazy" width="1424" height="1008">
    </picture>
    <figcaption>Abbildung 4.23b: Einstellungen: Konfiguration - Pfade</figcaption>
  </a>
</figure>

<p>Wenn Sie eine Serendipity-Installation auf dem Server verschieben
wollen, müssen Sie dies vorher manuell (mittels FTP-Programm oder
Ähnlichem) erledigen und nachträglich die geänderten Pfade an dieser
Stelle eintragen.</p>

<p>
Fehler: <span class="msg-hint error-msg">Seite nicht gefunden</span>
<span class="pageref"><a href="#Seite nicht gefunden">Seite nicht gefunden</a></span>
<span class="tag-box invisible">
    <span class="inline-tag">Fehler!falsche Pfadangaben</span>
    <span class="inline-tag">Fehler!Seite nicht gefunden</span>
</span>
Bitte achten Sie darauf, dass <em>alle</em> Pfadangaben immer mit einem
Schrägstrich enden müssen. Etwaige fehlerhaft eingestellte Pfade können
dazu führen, dass Links in Ihrem Blog nicht aufgerufen werden können
und zu leeren Seiten führen. Auch wenn Ihre Seite unformatiert aussieht
und keine Grafiken darstellt, kann das seine Ursache in einem falsch
konfigurierten Pfad haben.</p>

<p class="tagging invisible">
<span class="tag-box invisible">
    <span class="inline-tag">Konfiguration!voller Pfad</span>
    <span class="inline-tag">Pfad</span>
    <span class="inline-tag">Backslash</span>
    <span class="inline-tag">Trailing Slash</span>
    <span class="inline-tag">Document Root</span>
    <span class="inline-tag">Schrägstrich</span>
</span>
</p>

<p class="desc">
<span class="item mbold">Voller Pfad</span><!-- menuitem -->
<span class="desc-info">
    <span class="box">
        Diese Option enthält den vollständigen Pfad der
        Serendipity-Installation auf dem Server. Dieser Pfad entspricht also
        dem eigentlichen Dateisystem (zB.
        <code>/var/www/example.com/serendipity/</code>), und nicht dem Schema der URL
        (<code>/serendipity/</code>). Bitte stellen Sie sicher, dass der Pfad immer
        einfache Schrägstriche (/) verwendet und nicht den Backslash
        (\). Auf Windows-Systemen können Sie den Backslash
        einfach mit einem normalen Schrägstrich ersetzen, und lassen Sie das
        Laufwerk (<code>C:/</code>) am Anfang weg.[*]
        <span class="footnote"><i class="fa fa-info-circle"></i> Den Laufwerksbuchstaben
        bräuchten Sie nur, wenn Ihr <em>DocumentRoot</em> nicht auf demselben
        Laufwerk liegen würde wie das Verzeichnis von Serendipity. Da
        Serendipity aber immer innerhalb des <em>DocumentRoot</em> liegen muss,
        kann dieser Fall effektiv nicht eintreten.</span><!-- footnote -->
    </span>

    <span class="box">
        Wenn möglich, sollten Sonderzeichen in den Verzeichnispfaden vermieden
        werden, und der Pfad muss <em>immer</em> mit einem Schrägstrich enden.
    </span>
</span>
</p>

<p class="desc">
<span class="tag-box invisible">
    <span class="inline-tag">Konfiguration!Upload-Pfad</span>
    <span class="inline-tag">Upload-Pfad</span>
</span><!-- tagbox -->
<span class="item mbold">Upload-Pfad</span><!-- menuitem -->
<span class="desc-info">
    <span class="box">
        Unterhalb des im <span class="mbold">Voller Pfad</span> eingetragenen Verzeichnisses
        befindet sich der Ordner, in dem die Dateien der Mediathek
        gespeichert werden sollen (üblicherweise <code>uploads</code>). Wenn Sie Ihre
        Mediendateien in einem anderen Verzeichnis speichern wollen, können Sie
        den gewünschten Speicherort relativ zum vollen Pfad hier eintragen.
    </span>

    <span class="box">
        Sollte das Upload-Verzeichnis außerhalb des Serendipity-Verzeichnisses
        liegen, dürfen Sie hier nicht einfach einen absoluten Pfad eintragen,
        sondern müssen mittels <code>../../</code> die jeweiligen Verzeichnisebenen
        höher wechseln. Wenn Sie also Serendipity im Verzeichnis
        <code>/var/www/example.com/serendipity/</code> gespeichert haben und Ihr
        Upload-Verzeichnis sich in <code>/var/uploads/</code> befindet, müssen Sie für
        den <span class="mbold">Upload-Pfad</span> <code>../../../uploads/</code> eintragen.
        Wenn Sie dieses Verzeichnis umkonfigurieren, müssen Sie bereits
        hochgeladene Dateien manuell in das neue Verzeichnis verschieben.
    </span>
</span>
</p>

<p class="desc">
<span class="tag-box invisible">
    <span class="inline-tag">Konfiguration!relativer HTTP-Pfad</span>
    <span class="inline-tag">Relativer HTTP-Pfad</span>
</span><!-- tagbox -->
<span class="item mbold">Relativer HTTP-Pfad</span><!-- menuitem -->
<span class="desc-info">Der <span class="mbold">Relative HTTP-Pfad</span> gibt die Pfadkomponente der URL an, in
der Serendipity installiert wurde. Dabei muss der HTTP-Pfad sämtliche
Verzeichnisnamen hinter dem Domain-Namen enthalten. Wäre Serendipity
unter <code>http://example.com/~john/serendipity/</code> installiert,
müsste der relative HTTP-Pfad den Eintrag <code>/~john/serendipity/</code>
enthalten.</span>
</p>

<p class="desc">
<span class="tag-box invisible">
    <span class="inline-tag">Konfiguration!relativer Template-Pfad</span>
    <span class="inline-tag">Relativer Template-Pfad</span>
</span><!-- tagbox -->
<span class="item mbold">Relativer Template-Pfad</span><!-- menuitem -->
<span class="desc-info">
    <span class="box">
        Um Grafiken und Stylesheets der Templates anzuzeigen, muss Serendipity
        auf den Stammordner zugreifen, in dem sich die Templates befinden. Der
        <span class="mbold">Relative Template-Pfad</span> gibt dabei die notwendige
        Verzeichnisstruktur (relativ zum HTTP-Pfad) an.
    </span>

    <span class="box">
        Sie sollten diese Option möglichst nicht ändern, da an zahlreichen
        Stellen in Serendipity der Template-Pfad <code>templates/</code> fest vorgesehen
        ist. Eine Änderung macht nur Sinn, wenn Sie mit symbolischen Links auf
        dem Webserver arbeiten, die unterschiedliche Pfadangaben benötigen.
    </span>
</span>
</p>

<p class="desc">
<span class="tag-box invisible">
    <span class="inline-tag">Konfiguration!relativer Upload-Pfad</span>
    <span class="inline-tag">Relativer Upload-Pfad</span>
</span><!-- tagbox -->
<span class="item mbold">Relativer Upload-Pfad</span><!-- menuitem -->
<span class="desc-info">
    <span class="box">
        Wenn Sie den Upload-Pfad wie im Beispiel oben ändern, wird sich auch
        dessen URL ändern. Die Option <span class="mbold">Relativer Upload-Pfad</span> gibt dabei
        den Verzeichnisnamen des Speicherorts der Mediendateien an,
        relativ zur Stamm-URL.
    </span>

    <span class="tag-box invisible">
        <span class="inline-tag">symbolischer Link</span>
        <span class="inline-tag">Symlink</span>
    </span>
    <span class="box">
        Sollte sich das Serendipity-Verzeichnis auf
        einem anderen VirtualHost oder einer ganz abweichenden Pfad-Struktur
        befinden, kann dies nur funktionieren, wenn Sie einen
        symbolischen Link [*]
        <span class="footnote"><i class="fa fa-info-circle"></i> Symbolische Links sind häufig auf Linux-Servern zu finden
        und ermöglichen einen Datei- oder Verzeichnisverweis zu völlig anderen
        Verzeichnissen. Symbolische Links können nur mit direktem Zugriff zum
        Dateisystem eines Servers erstellt werden und sind daher meist
        Administratoren bzw. Shell-Benutzern vorbehalten.</span><!-- footnote --> zum Ziel-Upload-Verzeichnis erstellen.
    </span>
</span>
 </p>

<p class="desc">
<span class="tag-box invisible">
    <span class="inline-tag">Konfiguration!URL zum Blog</span>
    <span class="inline-tag">URL!zum Blog</span>
</span><!-- tagbox -->
<span class="item mbold">URL zum Blog</span><!-- menuitem -->
<span class="desc-info">
    <span class="box">
        Im Eingabefeld <span class="mbold">URL zum Blog</span> tragen Sie die vollständige URL (mit
        Protokoll und Domainnamen) ein. Dabei können Sie, falls verfügbar, auch
        gerne <code>https://</code> benutzen, wenn Ihr Server dies anbietet.
    </span>

    <span class="tag-box invisible">
        <span class="inline-tag">Fehler!verschiedene URLs für das Blog</span>
    </span>
    <span class="box">
        Sollte Ihr Blog unter mehreren URLs erreichbar sein [*]
        <span class="footnote"><i class="fa fa-info-circle"></i> zB.
        <code>http://example.com/serendipity/</code>,
        <code>https://www.example.com/serendipity/</code> und
        <code>http://blog.example.com/serendipity/</code></span><!-- footnote -->, dann müssen Sie lediglich
        eine dieser URLs hier konfigurieren und die Option <span class="mbold">HTTP-Hostnamen
        automatisch erkennen</span> aktivieren (siehe unten).
    </span>

    <span class="box">
        Auch hier gilt: Wenn Sie Serendipity auf eine andere URL verschieben
        möchten, müssen Sie die Verzeichnisse und Dateien manuell verschieben
        und können erst danach diese Konfigurationsoption den neuen
        Gegebenheiten anpassen.
    </span>
</span>
</p>

<p class="desc">
<span class="tag-box invisible">
    <span class="inline-tag">HTTP-Hostname</span>
    <span class="inline-tag">Fehler!HTTP-Hostname</span>
    <span class="inline-tag">Konfiguration!HTTP-Hostnamen automatisch erkennen</span>
    <span class="inline-tag">Fehler!verschiedene URLs für das Blog</span>
</span><!-- tagbox -->
<span class="label invisible" id="HTTP-Hostname">HTTP-Hostname</span>
<span class="item mbold">HTTP-Hostnamen automatisch erkennen</span><!-- menuitem -->
<span class="desc-info">
    <span class="box">
        Wenn Ihr Blog unter mehreren URLs erreichbar ist, können Sie Serendipity
        zwar unter allen drei URLs aufrufen, aber alle Verweise
        innerhalb des Blogs werden ausschließlich auf die in <span class="mbold">URL zum
        Blog</span> konfigurierte URL verweisen.
    </span>

    <span class="box">
        Wenn Sie gerne möchten, dass für jeden Besucher die URL weiterbenutzt
        wird, die er zum Aufrufen verwendet hat, dann können Sie die Option
        <span class="mbold">HTTP-Hostnamen automatisch erkennen</span> aktivieren.
    </span>

    <span class="box">
        Diese Funktion kann jedoch nur dann korrekt funktionieren, wenn sich
        die Pfadkomponente der URL niemals ändert. Sollte Ihr Blog aber unter
        den URLs <code>http://example.com/serendipity/</code> und auch
        <code>http://serendipity.example.com/</code> verfügbar sein, dann wäre dies
        nicht der Fall. In so einem Fall können Sie nur eine der beiden URLs
        für den korrekten Betrieb von Serendipity wählen. Mögliche Lösungen
        dieses Problems finden Sie im Kapitel <span class="reference">Weiterleitung</span> auf Seite
        <span class="pageref"><a href="#Weiterleitung">Weiterleitung</a></span>.
    </span>
</span>
</p>

<p class="desc">
<span class="tag-box invisible">
    <span class="inline-tag">Index-Datei</span>
    <span class="inline-tag">Konfiguration!Index-Datei</span>
</span>
<span class="label invisible" id="index-Datei">index-Datei</span>
<span class="item mbold">Index-Datei</span><!-- menuitem -->
<span class="desc-info">
    <span class="box">
        Diese Option legt fest, welche zentrale Datei Serendipity benutzt, um
        jeden Seitenaufruf dorthin umzulenken.
    </span>

    <span class="box">
        Üblicherweise sollten Sie diese Option nur ändern, wenn Sie Serendipity
        in einer anderen Webseite einbetten (siehe Option <span class="mbold">Eingebettete Nutzung
        von Serendipity aktivieren</span> auf Seite <span class="pageref"><a href="#embedding">embedding</a></span>).
    </span>

    <span class="tag-box invisible">
        <span class="inline-tag">htaccess@.htaccess</span>
    </span>
    <span class="box">
        In der Datei <code>.htaccess</code> wird die hier konfigurierte Datei als
        <code>ErrorDocument</code> und <code>DirectoryIndex</code> eingebunden. Sollten Sie
        einmal eine eigene Datei hier angeben, müssen Sie in dieser Datei
        sicherstellen, dass das Serendipity-Framework über <code>index.php</code>
        eingebunden wird.
    </span>

    <span class="box">
        Sie sollten die Option nicht zweckentfremden, um eine eigene
        HTML-Seite als Startseite für Serendipity festzulegen. Dies würde dazu
        führen, dass auch andere URLs von Serendipity nicht mehr zugänglich
        wären. Eine individuelle Startseite für Serendipity können Sie mittels
        des Plugins <em>Statische Seiten</em> einstellen, siehe Kapitel
        <span class="reference">staticpage</span> ab Seite <span class="pageref"><a href="#staticpage">staticpage</a></span>.
    </span>
</span>
</p>

</article>

<article id="XU" class="subsub">

<header>
    <h4 class="subarticle" id="permalinks">Permalinks</h4>
</header>

<p class="tagging invisible">
<span class="label invisible" id="permalinkconfig">permalinkconfig</span>
<span class="tag-box invisible">
    <span class="inline-tag">Permalinks</span>
    <span class="inline-tag">Konfiguration!Permalink-S@Permalinks</span>
</span>
</p>

<p>Sämtliche <em>Permalinks</em> [*]
<span class="footnote"><i class="fa fa-info-circle"></i> Permalinks sind sprechende URLs (siehe
Seite <span class="pageref"><a href="#urlformung">urlformung</a></span>), die im Frontend eindeutig zu den jeweiligen
Funktionalitäten führen.</span><!-- footnote --> können im gleichnamigen Konfigurationsbereich eingestellt werden.</p>

<p>
<span class="tag-box invisible">
    <span class="inline-tag">Fehler!Permalinks</span>
</span>
Bei den Permalinks ist es sehr wichtig, dass Sie genau wissen, in welchem
Rahmen die Pfade verändert werden können. Es ist bei jedem Permalink wichtig,
dass ein festes Verzeichnis-Präfix (wie <code>archives</code>, <code>categories</code> und
andere) für jeden Permalink-Typen definiert wird, damit Serendipity beim Aufruf
einer URL erkennen kann, welche Unterseite angefordert wird. Sie können also
nicht einfach einen Pfadteil weglassen und Eintrags-URLs ohne vorangestellten
Pfad konfigurieren, da Serendipity dann keine Pfad-Zuordnung treffen kann.</p>

<p>Jeder konfigurierte Pfad muss exakt in der Permalink-Struktur
übernommen werden, Sie können also <span class="mbold">Pfad zu den
Einträgen</span> nicht auf <code>eintraege</code> setzen und dann für die
Permalink-Struktur <code>artikel/%id%-%title%.html</code> einsetzen. In
beiden Fällen müssen Sie entweder <code>eintraege</code> <em>oder</em>
<code>artikel</code> benutzen.
Vermeiden Sie möglichst Sonderzeichen (also auch Leerzeichen) in der
URL.</p>

<p>Ein Hinweis noch zu dem Parameter <code>%id%</code>, den Sie bei mehreren
Permalinks aufgeführt sehen. Obwohl dies später im Frontend als
sprechende URL möglicherweise nicht <em>sexy</em> aussieht, birgt die
Verwendung von <code>%id%</code> einen großen Performancevorteil. Denn
sobald diese ID enthalten ist, kann Serendipity ohne weitere
Datenbankabfrage herausfinden, welche Inhalte es anzeigen muss.</p>

<figure id="fig-configuration-permalinks">
  <a class="lightbox" rel="lightbox" href="media/configuration_pl_dm_de.avif" lg-uid="lg4813" data-fallback="media/configuration_pl_dm_de.webp">
    <picture>
      <source srcset="media/configuration_pl_dm_de.avif" type="image/avif">
      <source srcset="media/configuration_pl_dm_de.webp" type="image/webp">
      <img src="media/configuration_pl_dm_de.png" alt="configuration_pl_dm_de.png" loading="lazy" width="1416" height="1529">
    </picture>
    <figcaption>Abbildung 4.23c: Einstellungen: Konfiguration - Permalinks</figcaption>
  </a>
</figure>

<p>Bei der Umstellung von Permalinks ist darauf zu achten, dass dadurch
die vorher gültigen URLs nicht mehr aktiv sind! Sollte eine
Suchmaschine Ihre Seiten also bereits indiziert haben, kann eine
Umstellung der Permalinks bedeuten, dass die Suchmaschine sämtliche
Ihrer Seiten aus dem Index wirft und neu bewerten muss. Legen Sie sich
daher möglichst früh auf Ihr gewünschtes URL-Muster fest.</p>

<p>Die Seiten, die sich hinter den jeweiligen Permalinks befinden, sind
ausführlich im Kapitel <span class="reference">Permalinks-Frontend</span> ab Seite
<span class="pageref"><a href="#Permalinks-Frontend">Permalinks-Frontend</a></span> beschrieben.</p>

<p class="desc">
<span class="tag-box invisible">
    <span class="inline-tag">Konfiguration!Permalink-Struktur!für Artikel-URLs</span>
</span><!-- tagbox -->
<span class="item mbold">Permalink-Struktur für die Artikel-URLs</span><!-- menuitem -->
<span class="desc-info">
    <span class="box">
        Hier wird die Struktur des Permalinks eingetragen, die beim Aufrufen
        eines einzelnen Artikels verwendet wird. Platzhalter dienen jeweils
        dazu, dynamische Teile in die URL zu übernehmen:
    </span>

    <span class="box"><code class="item">%id%</code> für die ID eines Artikels.</span>

    <span class="box"><code class="item">%title%</code> für den Titel eines Artikels.</span>

    <span class="box"><code class="item">%day%</code> für den Tag, an dem der Artikel verfasst wurde.</span>

    <span class="box"><code class="item">%month%</code> für den Monat, in dem der Artikel verfasst wurde.</span>

    <span class="box"><code class="item">%year%</code> für das Jahr, in dem der Artikel verfasst wurde.</span>

    <span class="box">
        Diese (und auch alle folgenden) Permalink-Strukturen können weitere
        beliebige Pfadkomponenten enthalten.
    </span>
</span>
</p>

<p class="desc">
<span class="tag-box invisible">
    <span class="inline-tag">Konfiguration!Permalink-Struktur!für Autoren-URLs</span>
</span><!-- tagbox -->
<span class="item mbold">Permalink-Struktur für Autoren-URLs</span><!-- menuitem -->
<span class="desc-info">
    <span class="box">
        Für die Darstellung der Einträge eines Autors wird dieser Permalink
        verwendet. Folgende Variablen sind verfügbar:
    </span>

    <span class="box"><code class="item">%id%</code> für die ID eines Autors.</span>

    <span class="box">
        <code class="item">%realname%</code> für den Benutzernamen eines Autors, wie er
        üblicherweise bei Artikeln angezeigt wird.
    </span>

    <span class="box"><code class="item">%username%</code> für den Login-Namen eines Autors.</span>

    <span class="box"><code class="item">%email%</code> für die E-Mail-Adresse eines Autors.</span>
</span>
</p>

<p class="desc">
<span class="tag-box invisible">
    <span class="inline-tag">Konfiguration!Permalink-Struktur!für Kategorie-URLs</span>
</span><!-- tagbox -->
<span class="item mbold">Permalink-Struktur für Kategorie-URLs</span><!-- menuitem -->
<span class="desc-info">
    <span class="box">
        Dieser Permalink stellt Einträge pro Kategorie dar. Verfügbare
        Variablen sind:
    </span>

    <span class="box"><code class="item">%id%</code> für die ID einer Kategorie.</span>

    <span class="box"><code class="item">%name%</code> für den Namen einer Kategorie.</span>

    <span class="box">
        <code class="item">%description%</code> für die Beschreibung einer Kategorie
        (Vorsicht bei langen URLs durch lange Beschreibungen!).
    </span>

    <span class="box"><code class="item">%email%</code> für die E-Mail-Adresse eines Autors.</span>
</span>
</p>

<p class="desc">
<span class="tag-box invisible">
    <span class="inline-tag">Konfiguration!Permalink-Struktur!für RSS-Kategorien-Feed-URLs</span>
</span><!-- tagbox -->
<span class="item mbold">Permalink-Struktur für RSS-Kategorien-Feed URLs</span><!-- menuitem -->
<span class="desc-info">Die Artikel einer Kategorie für einen RSS-Feed können über diese
konfigurierte URL aufgerufen werden. Es sind dieselben Variablen wie
für den normalen Kategorie-Permalink verfügbar.</span>
</p>

<p class="desc">
<span class="tag-box invisible">
    <span class="inline-tag">Konfiguration!Permalink-Struktur!für RSS-Autoren-Feed-URLs</span>
</span><!-- tagbox -->
<span class="item mbold">Permalink-Struktur für RSS-Autoren-Feed URLs</span><!-- menuitem -->
<span class="desc-info">Die Artikel eines Autors für einen RSS-Feed werden in diesem Permalink
festgehalten. Es gelten dieselben Variablen wie für die normalen
Autoren-Permalinks.</span>
</p>

<p class="desc">
<span class="tag-box invisible">
    <span class="inline-tag">Konfiguration!Pfad!zu den Einträgen</span>
</span><!-- tagbox -->
<span class="item mbold">Pfad zu den Einträgen</span><!-- menuitem -->
<span class="desc-info">Der erste Verzeichnisname für alle Artikelübersichten, standardmäßig
<code>archives</code>.</span>
</p>

<p class="desc">
<span class="tag-box invisible">
    <span class="inline-tag">Konfiguration!Pfad!zu den Archiven</span>
</span><!-- tagbox -->
<span class="item mbold">Pfad zu den Archiven</span><!-- menuitem -->
<span class="desc-info">Der Verzeichnisname für die Archivübersicht, in der die Artikel nur
chronologisch dem jeweiligen Monat zugeordnet sind.</span>
</p>

<p class="desc">
<span class="tag-box invisible">
    <span class="inline-tag">Konfiguration!Pfad!zu den Kategorien</span>
</span><!-- tagbox -->
<span class="item mbold">Pfad zu den Kategorien</span><!-- menuitem -->
<span class="desc-info">Der Verzeichnisname für die Artikelübersicht einer Kategorie.</span>
</p>

<p class="desc">
<span class="tag-box invisible">
    <span class="inline-tag">Konfiguration!Pfad!zu den Autoren</span>
</span><!-- tagbox -->
<span class="item mbold">Pfad zu den Autoren</span><!-- menuitem -->
<span class="desc-info">Der Verzeichnisname für die Artikelübersicht eines Autors.</span>
</p>

<p class="desc">
<span class="tag-box invisible">
    <span class="inline-tag">Konfiguration!Pfad!zum Abbestellen/Löschen/Bewilligen von Kommentaren</span>
</span><!-- tagbox -->
<span class="item mbold">Pfad zum Abbestellen/Löschen/Bewilligen von Kommentaren</span><!-- menuitem -->
<span class="desc-info">Wenn Sie als Autor oder Administrator über den Eingang eines neuen
Kommentars per E-Mail benachrichtigt werden, können Sie innerhalb der
E-Mail auf Links klicken, die den Kommentar freischalten oder löschen.
Für Personen, die neue Kommentare bei einem Artikel abonniert haben,
gibt es zusätzlich einen Link, der dieses Abonnement wieder aufhebt.
Alle drei Pfadvariablen können über diese Konfigurationsfelder
angepasst werden.</span>
</p>

<p class="desc">
<span class="tag-box invisible">
    <span class="inline-tag">Konfiguration!Pfad!zu den RSS-Feeds</span>
</span><!-- tagbox -->
<span class="item mbold">Pfad zu den RSS-Feeds</span><!-- menuitem -->
<span class="desc-info">Der Verzeichnisname für alle RSS-Feeds.</span>
</p>

<p class="desc">
<span class="tag-box invisible">
    <span class="inline-tag">Konfiguration!Pfad!zu einem externen Plugin</span>
</span><!-- tagbox -->
<span class="item mbold">Pfad zu einem externen Plugin</span><!-- menuitem -->
<span class="desc-info">
    <span class="box">
        Ereignis-Plugins können eigenständige, neue Unterseiten in Ihrem Blog
        zur Verfügung stellen. Diese Unterseiten können unabhängig vom
        Serendipity-Layout von einem Plugin ausgegeben werden; unter anderem
        werden die Anti-Spam-Grafiken vom Spamblock-Plugin derart ausgegeben.
    </span>

    <span class="box">
        Dafür benutzen die Plugins das Unterverzeichnis <code>plugin</code>. Sie
        sollten dieses Verzeichnis möglichst nicht ändern, da es mehrere
        Plugins gibt, die immer fest auf das Verzeichnis <code>plugin</code> zugreifen
        und möglicherweise nicht mehr funktionieren, wenn Sie den
        Verzeichnisnamen ändern!
    </span>
</span>
</p>

<p class="desc">
<span class="tag-box invisible">
    <span class="inline-tag">Konfiguration!Pfad!zur Administration</span>
</span><!-- tagbox -->
<span class="item mbold">Pfad zur Administration</span><!-- menuitem -->
<span class="desc-info">Der Pfad, den Sie aufrufen, um das Backend (die
Administrationsoberfläche) hervorzubringen.</span>
</p>

<p class="desc">
<span class="tag-box invisible">
    <span class="inline-tag">Konfiguration!Pfad!zur Suche</span>
</span><!-- tagbox -->
<span class="item mbold">Pfad zur Suche</span><!-- menuitem -->
<span class="desc-info">Der Pfad zur Suche nach Begriffen in Artikeltexten.</span>
</p>

<p class="desc">
<span class="tag-box invisible">
    <span class="inline-tag">Konfiguration!Pfad!zu Kommentaren</span>
</span><!-- tagbox -->
<span class="item mbold">Pfad zu Kommentaren</span><!-- menuitem -->
<span class="desc-info">Der Pfad zur Übersicht von Kommentaren zu Artikeln.</span>
</p>

</article>

<article id="XU" class="subsub">

<header>
    <h4 class="subarticle" id="generelle-einstellungen">Generelle Einstellungen</h4>
</header>

<p class="tagging invisible">
<span class="tag-box invisible">
    <span class="inline-tag">Konfiguration!Generelle Einstellungen</span>
</span>
</p>

<p>Weitere globale Einstellungen befinden sich im Bereich <span class="mbold">Generelle
Einstellungen</span>.</p>

<figure id="fig-configuration-gs">
  <a class="lightbox" rel="lightbox" href="media/configuration_gs_dm_de.avif" lg-uid="lg4814" data-fallback="media/configuration_gs_dm_de.webp">
    <picture>
      <source srcset="media/configuration_gs_dm_de.avif" type="image/avif">
      <source srcset="media/configuration_gs_dm_de.webp" type="image/webp">
      <img src="media/configuration_gs_dm_de.png" alt="configuration_gs_dm_de.png" loading="lazy" width="1416" height="1424">
    </picture>
    <figcaption>Abbildung 4.23d: Einstellungen: Konfiguration - Generelle Enstellungen</figcaption>
  </a>
</figure>

<p class="desc">
<span class="tag-box invisible">
    <span class="inline-tag">Konfiguration!Blog-Titel</span>
</span><!-- tagbox -->
<span class="item mbold">Blog-Titel</span><!-- menuitem -->
<span class="desc-info">Der <span class="mbold">Blog-Titel</span> legt die Überschrift Ihres Blogs fest. Hier
können Sie auch Sonderzeichen einfügen, jedoch keinen HTML-Code oder
Grafiken. Eine derartige Sonderdarstellung müssen Sie über Anpassungen
in Ihrem Template vornehmen (siehe Seite <span class="pageref"><a href="#templatefiles">templatefiles</a></span>).</span>
</p>

<p class="desc">
<span class="tag-box invisible">
    <span class="inline-tag">Konfiguration!Blog-Beschreibung</span>
</span><!-- tagbox -->
<span class="item mbold">Blog-Beschreibung</span><!-- menuitem -->
<span class="desc-info">Die Blog-Beschreibung wird unterhalb des Blog-Titels im Frontend
angezeigt. Auch hier können Sie Sonderzeichen einfügen, aber keinen HTML-Code.</span>
</p>

<p class="desc">
<span class="tag-box invisible">
    <span class="inline-tag">Fehler!kein E-Mail-Versand</span>
    <span class="inline-tag">Konfiguration!Emailadresse@E-Mail-Adresse des Blogs</span>
</span><!-- tagbox -->
<span class="item mbold">E-Mail-Adresse des Blogs</span><!-- menuitem -->
<span class="desc-info">
    <span class="box">
        Wenn Serendipity E-Mails an Autoren oder Kommentatoren schickt, muss
        eine E-Mail-Adresse für den Absender eingetragen werden. Da Serendipity
        E-Mails über den Webserver verschickt, muss die hier eingetragene
        E-Mail-Adresse auch vom Mailserver als gültig anerkannt werden.
        Ansonsten könnte der Mailserver Ihre E-Mail als Spam deklarieren und
        verwerfen. Meist können an dieser Stelle nur E-Mail-Adressen
        eingetragen werden, die auch auf demselben Server gehostet werden.
    </span>

    <span class="tag-box invisible">
        <span class="inline-tag">sendmail</span>
    </span>
    <span class="box">
        Sollte Serendipity einmal keine Mails an Sie verschicken, prüfen
        Sie, ob Sie hier eine gültige Adresse eingetragen haben und ob Ihr
        Webserver auch in der Lage ist, E-Mails mittels
        <em>sendmail</em> [*]
        <span class="footnote"><i class="fa fa-info-circle"></i> Sendmail ist ein Unix-Mailbefehl, der von PHP
        nur genutzt werden kann, wenn dieses Paket auf dem Server installiert
        ist.</span><!-- footnote --> zu versenden.
    </span>

    <span class="tag-box invisible">
        <span class="inline-tag">Fehler!Windows-Server</span>
    </span>
    <span class="box">
        Auf Windows-Servern muss ein Mailserver in der
        <code>php.ini</code>-Datei eingetragen werden.
    </span>

</span>
</p>

<p class="desc">
<span class="tag-box invisible">
    <span class="inline-tag">Konfiguration!HTML Kommentare</span>
</span><!-- tagbox -->
<span class="item mbold">HTML Kommentare</span><!-- menuitem -->
<span class="desc-info">
    <span class="box">
        Mit dieser Einstellung erlauben Sie den Rich-Text-Editor für Kommentarfelder,
        sowohl im Frontend als auch im Backend.
    </span>

    <span class="box">
        Es wirde das Möglichste getan um dieses Feature so sicher wie möglich zu machen.
        Wenn die Rich-Text-Editor (WYSIWYG)-Option in den "Eigenen Einstellungen" erlaubt
        ist, können Sie hier also zusätzlich "tag"-beschränkte HTML-Kommentare und "pre/code"
        HTML-Auszeichnungs-Bestandteile zulassen, die in Backend- und Frontend-Seiten als
        HTML verarbeitet, aber vom Editor nur im Backend bearbeitet werden. Bitte beachten
        Sie: Diese Option gibt auch alte Kommentare frei, um ihren eventuellen Markup Inhalt
        als HTML anzuzeigen. Überprüfen Sie diese also besser vor der Erlaubnis (!), damit
        Sie keine versehentlich genehmigten, aber unsichere (javascript oder links, etc)
        Kommentar Inhalte in Ihrer Datenbank gespeichert haben. Ansonsten eignen sich
        Rich-Text-Editor-Kommentare auch hervorragend, um lästige Bot-Programm-Spammer
        loszuwerden.
    </span>
</span>
</p>

<p class="desc">
<span class="label invisible" id="eintrags-abonnement">Eintrags-Abonnement</span>
<span class="tag-box invisible">
    <span class="inline-tag">Konfiguration!Abonnieren von Einträgen erlauben</span>
    <span class="inline-tag">E-Mail!Benachrichtigungen</span>
</span><!-- tagbox -->
<span class="item mbold">Abonnieren von Einträgen erlauben?</span><!-- menuitem -->
<span class="desc-info">Wenn Sie es Ihren Besuchern erlauben wollen, dass sie per E-Mail über
Kommentare benachrichtigt werden, muss diese Option aktiviert sein. Ein
Benutzer kann Kommentare jedoch nur abonnieren, wenn er selber zu einem
Beitrag kommentiert hat.</span>
</p>

<p class="desc">
<span class="label invisible" id="double-opt-in-fuer-kommentar-abonnementmail">Double-Opt In für Kommentar-Abonnementmails</span>
<span class="tag-box invisible">
    <span class="inline-tag">Konfiguration!Double-Opt In für Kommentar-Abonnementmails</span>
    <span class="inline-tag">E-Mail!Double-Opt In für Benachrichtigungen</span>
</span><!-- tagbox -->
<span class="item mbold">Double-Opt In für Kommentar-Abonnementmails?</span><!-- menuitem -->
<span class="desc-info">Falls aktiviert, wird einem Besucher Kommentator, der E-Mail-Benachrichtigungen
zu neuen Kommentaren abonnieren möchte, eine E-Mail zugeschickt. Diese enthält einen
Bestätigungslink nach dem z.B. für Deutsche Gesetze erforderlichen <span class="mbold">Opt-In-Schema</span>.</span>
</p>

<p class="desc">
<span class="label invisible" id="token-kommentar-moderation">Schnelle Kommentar-Moderation verwenden</span>
<span class="tag-box invisible">
    <span class="inline-tag">Konfiguration!Schnelle Kommentar-Moderation verwenden</span>
    <span class="inline-tag">E-Mail!Token für Benachrichtigungen</span>
</span><!-- tagbox -->
<span class="item mbold">Schnelle Kommentar-Moderation verwenden?</span><!-- menuitem -->
<span class="desc-info">Diese Methode setzt Tokens ein, damit Kommentare direkt aus der Hinweis-E-Mail
heraus gelöscht oder akzeptiert, also administriert werden können. Diese Funktion ist für höheren
Komfort gedacht, geht aber zu Lasten der Sicherheit: Wenn jemand die E-Mail abfängt, kann diese
Person entsprechende Kommentare ohne weitere Authentifikation löschen oder freischalten.</span>
</p>

<p class="desc">
<span class="tag-box invisible">
    <span class="inline-tag">Konfiguration!Sprache</span>
</span><!-- tagbox -->
<span class="item mbold">Sprache</span><!-- menuitem -->
<span class="desc-info">
    <span class="box">
        An dieser Stelle können Sie die Sprache der Oberfläche des Blogs
        wählen. Serendipity zeigt dann alle eigenen Meldungen in dieser Sprache an.
    </span>

    <span class="box">
        Im Gegensatz zur Spracheinstellung im Menü <span class="mbold">Eigene Einstellungen</span>
        wird hier nur die Sprache für Besucher des Blogs eingestellt. Ihre
        persönliche Spracheinstellung "überschreibt" diesen Wert.
    </span>
</span>
</p>

<p class="desc">
<span class="tag-box invisible">
    <span class="inline-tag">Konfiguration!Zeichensatz-Auswahl</span>
    <span class="inline-tag">UTF-8</span>
</span><!-- tagbox -->
<span class="item mbold">Zeichensatz-Auswahl</span><!-- menuitem -->
<span class="desc-info">
    <span class="box">
        Serendipity ermöglicht die Darstellung aller Meldungen und Ihrer
        eigenen Artikel in verschiedenen Zeichensätzen. Alle Sprachen können im
        Zeichensatz <em>UTF-8</em> abgebildet werden, daher ist dieser
        Zeichensatz mittlerweile der Standard im Internet. Einige andere
        Sprachen, besonders Chinesisch, verwenden jedoch eigene, nationale
        Zeichensätze zur korrekten Darstellung. Wenn Sie in dem Auswahlfeld
        dieser Option <span class="mbold">Nationaler Zeichensatz</span> wählen, wird dieser
        spezielle nationale Zeichensatz benutzt (abhängig von der jeweils gewählten Sprache).
    </span>

    <span class="tag-box invisible">
        <span class="inline-tag">Fehler!Sonderzeichen</span>
    </span>
    <span class="box">
        Wenn Ihr Blog bereits Artikel enthält, wird die Umstellung dieser
        Option dazu führen, dass die Sonderzeichen Ihrer Artikel falsch
        angezeigt werden. Sie müssen daher die Konvertierung in diesem Fall
        manuell vornehmen, wie im Kapitel 
        <span class="reference">Falsche Anzeige von Datumsangaben oder Sonderzeichen</span>
        ab Seite <span class="pageref"><a href="#Falsche Anzeige von Datumsangaben oder Sonderzeichen">Falsche Anzeige von Datumsangaben oder Sonderzeichen</a></span>
        beschrieben.
    </span>
</span>
</p>

<p class="desc">
<span class="tag-box invisible">
    <span class="inline-tag">Konfiguration!Kalendertyp</span>
</span><!-- tagbox -->
<span class="item mbold">Kalendertyp</span><!-- menuitem -->
<span class="desc-info">Für einige Kulturen gibt es möglicherweise unterschiedliche Arten der
Kalender-Darstellung. Für Serendipity wurde daher der persische
Kalender als Alternative zum bekannten gregorianischen Kalender
eingebaut und kann hier ausgewählt werden.</span>
</p>

<p class="desc">
<span class="tag-box invisible">
    <span class="inline-tag">Konfiguration!Sprache!des Browsers eines Besuchers verwenden</span>
</span><!-- tagbox -->
<span class="item mbold">Sprache des Browsers eines Besuchers verwenden</span><!-- menuitem -->
<span class="desc-info">Wenn diese Option aktiviert ist, wird Serendipity die Sprache des
Frontends abhängig von der im Browser des Besuchers eingestellten
Sprache auswählen. So können Sie es Ihren Besuchern erleichtern, die
umgebenden Texte zu verstehen, wenn sie Ihre Artikel in der Landessprache
nicht lesen können. Bitte beachten Sie, dass diese
Sprachauswahl die Artikel nicht automatisch übersetzen kann.</span>
</p>

<p class="desc">
<span class="label invisible" id="benutzergruppen-pluginrechte">Benutzergruppen Pluginrechte</span>
<span class="tag-box invisible">
    <span class="inline-tag">Konfiguration!Plugin-Rechte für Benutzergruppen</span>
</span><!-- tagbox -->
<span class="item mbold">Plugin-Rechte für Benutzergruppen aktivieren?</span><!-- menuitem -->
<span class="desc-info">
    <span class="box">
        Serendipity ermöglicht es, pro Benutzergruppe zu definieren, welche
        Plugins von dieser Gruppe im Backend ausgeführt werden dürfen. Über die
        Definition in der <span class="mbold">Gruppenverwaltung</span> kann verhindert werden,
        dass bestimmte Autoren zum Beispiel Zugriff zu dem Plugin <em>Statische
        Seiten</em> haben.
    </span>

    <span class="tag-box invisible">
        <span class="inline-tag">Performance</span>
    </span>
    <span class="box">
        Da es in Blogs relativ selten vorkommt, dass Sie den Zugriff derart
        strikt eingrenzen müssen, ist diese Option standardmäßig nicht
        aktiviert und muss daher bewusst von Ihnen eingeschaltet werden. Das
        Einschalten dieser Option kann die Performance von Serendipity spürbar
        negativ beeinflussen, da für jede Ausführung eines Plugins nun erst
        geprüft werden muss, ob Zugriff darauf erlaubt ist.
    </span>

    <span class="box">
        Wenn Sie also auf diese Flexibilität verzichten können, sollten Sie die
        Option <span class="mbold">Plugin-Rechte für Benutzergruppen aktivieren</span>
        weiterhin auf <span class="mbold">Nein</span> stellen.
    </span>
</span>
</p>

<p class="desc">
<span class="tag-box invisible">
    <span class="inline-tag">Konfiguration!Update!-Hinweis</span>
</span><!-- tagbox -->
<span class="item mbold">Update-Hinweis</span><!-- menuitem -->
<span class="desc-info">Mit dieser Option aktivieren Sie den Serendipity
Update Hinweis und den "1-Klick"-Upgrade Task in der Backend Startseite,
wenn das <code>serendipity_event_autoupdate</code> Plugin installiert ist und ein neues Update bereitsteht.
Aus Performancegründen wird das Ergebnis für 6 Stunden gecached.</span>
</p>

<p class="desc">
<span class="tag-box invisible">
    <span class="inline-tag">Konfiguration!Update!-RELEASE-Datei URL</span>
</span><!-- tagbox -->
<span class="item mbold">Update-RELEASE-Datei URL</span><!-- menuitem -->
<span class="desc-info">Mit dieser URL positionieren Sie den Zeiger auf
die <span class="mbold">Serendipity Styx</span> Release Datei. Dies ist Bestandteil der vorangegangen (aktiv gesetzten) <span class="mbold">Update-Hinweis</span> Option.</span>
</p>

<p class="desc">
<span class="tag-box invisible">
    <span class="inline-tag">Konfiguration!Debug!Log Level</span>
</span><!-- tagbox -->
<span class="item mbold">Log Level</span><!-- menuitem -->
<span class="desc-info">Wenn diese Option aktiviert ist, schaltet Serendipity
in verschiedenen Bereichen ein Developer Debug Level ein. Je nach Implementierung
im Serendipity-Code wurden Debugging-Ausgaben platziert und in eine Tagesdatei unter <code>templates_c/logs/</code> geschrieben.
Diese Option sollte nur aktiviert werden, wenn Probleme in der Funktionsausführung bestehen.
Wird die Option auf "Fehler" gesetzt, werden PHP-Fehler in jenes Logfile geschrieben.
Hierbei wird die PHP error_log Option überschrieben.
Das <span class="mbold">Serendipity Styx</span> <code>event_changelog</code> Plugin erlaubt diese Logdateien am Tage selbst
komfortabel aus dem Wartungsbereich und innerhalb der eingelogten Sitzung heraus zu lesen.
Ansonsten sind Vorkehrungen getroffen, dass auf diese Textdateien nicht ohne weiteres von außen zugegriffen werden kann
und alte Logdateien in der Wartung gelöscht werden können, da sie eventuell relevante interne Daten enthalten.</span>
</p>

<p class="desc">
<span class="tag-box invisible">
    <span class="inline-tag">Konfiguration!Caching!Erlaube caching (EXPERIMENTAL)</span>
</span><!-- tagbox -->
<span class="item mbold">Erlaube caching (EXPERIMENTAL)</span><!-- menuitem -->
<span class="desc-info">Wenn diese Option aktiviert ist, erlaubt Serendipity
einen internen Puffer (cache) einzuschalten, um spezifische SQL queries zwischenzuspeichern.
Dadurch verringert sich die Last auf Servern mit mittlerem bis hohem Verkehr und verbessert die Ladezeit.
Diese Option ist immer noch experimentell und bisher nur ungenügend validiert und getestet.</span>
</p>

</article>

<article id="XU" class="subsub">

<header>
    <h4 class="subarticle" id="design-und-optionen">Design und Optionen</h4>
</header>

<p class="tagging invisible">
<span class="tag-box invisible">
    <span class="inline-tag">Konfiguration!Design und Optionen</span>
</span>
</p>

<p>Optionen, die das Aussehen des Blogs betreffen, sind im Bereich
<span class="mbold">Design und Optionen</span> zusammengefasst.</p>

<figure id="fig-configuration-dao">
  <a class="lightbox" rel="lightbox" href="media/configuration_dao_dm_de.avif" lg-uid="lg4815" data-fallback="media/configuration_dao_dm_de.webp">
    <picture>
      <source srcset="media/configuration_dao_dm_de.avif" type="image/avif">
      <source srcset="media/configuration_dao_dm_de.webp" type="image/webp">
      <img src="media/configuration_dao_dm_de.png" alt="configuration_dao_dm_de.png" loading="lazy" width="1416" height="1392">
    </picture>
    <figcaption>Abbildung 4.23e: Einstellungen: Konfiguration - Design und Optionen</figcaption>
  </a>
</figure>

<p class="desc">
<span class="tag-box invisible">
    <span class="inline-tag">Konfiguration!Anzahl der Artikel auf der Startseite</span>
</span><!-- tagbox -->
<span class="item mbold">Anzahl der Artikel auf der Startseite</span><!-- menuitem -->
<span class="desc-info">Standardmäßig zeigt Serendipity die letzten 15 Artikel auf der
Startseite. Über die Einstellung <span class="mbold">Anzahl der Artikel auf der
Startseite</span> können Sie diese Anzahl kontrollieren, die auch für alle
Übersichtsseiten angewendet wird.</span>
</p>

<p class="desc">
<span class="tag-box invisible">
    <span class="inline-tag">Konfiguration!Einträge im Feed</span>
</span><!-- tagbox -->
<span class="item mbold">Einträge im Feed</span><!-- menuitem -->
<span class="desc-info">
    <span class="box">
        Analog zu der Anzahl der Artikel auf der Startseite bestimmt die Option
        <span class="mbold">Einträge im Feed</span>, wie viele Artikel in Ihrem RSS-Feed
        standardmäßig enthalten sind.
    </span>

    <span class="tag-box invisible">
        <span class="inline-tag">Traffic</span>
    </span>
    <span class="box">
        Eine hohe Einstellung dieser Zahl stellt Ihren Besuchern zwar mehr
        Einträge dar, vergrößert aber auch die Dateigröße des RSS-Feeds (und
        damit den Traffic) erheblich.
    </span>
</span>
</p>

<p class="desc">
<span class="tag-box invisible">
    <span class="inline-tag">Konfiguration!Stabile Archive</span>
    <span class="inline-tag">Sortierung</span>
</span><!-- tagbox -->
<span class="item mbold">Stabile Archive</span><!-- menuitem -->
<span class="desc-info">
    <span class="box">
        Diese Option sortiert die Archiv-Seiten absteigend, so dass sie auf einer
        festen Seite bleiben und Suchmaschinen sie nicht immer wieder neu indizieren
        müssen. Voreingestellt ist aber die fortlaufende Sortierung.
    </span>
</span>
</p>

<p class="desc">
<span class="tag-box invisible">
    <span class="inline-tag">Konfiguration!Wie sollen Such-Resultate sortiert werden</span>
        <span class="inline-tag">Sortierung</span>
</span><!-- tagbox -->
<span class="item mbold">Wie sollen Such-Resultate sortiert werden?</span><!-- menuitem -->
<span class="desc-info">
    <span class="box">
        Diese Auswahlbox sortiert die Such-Resultate nach Datum oder Relevanz.
    </span>
</span>
</p>

<p class="desc">
<span class="label invisible" id="rfc2616">rfc2616</span>
<span class="tag-box invisible">
    <span class="inline-tag">Konfiguration!strikte RFC2616-RSS-Feed-Kompatibilität</span>
    <span class="inline-tag">RFC 2616</span>
</span><!-- tagbox -->
<span class="item mbold">Strikte RFC2616 RSS-Feed Kompatibilität</span><!-- menuitem -->
<span class="desc-info">
    <span class="box">
        Wie im Kapitel <span class="reference">Caching von RSS-Feeds</span> auf Seite
        <span class="pageref"><a href="#Caching von RSS-Feeds">Caching von RSS-Feeds</a></span> erklärt, können RSS-Feeds bei Ihren Besuchern
        zwischengespeichert werden. Dieses Caching macht möglicherweise bei
        einer kleinen Anzahl von Software-Programmen Probleme. Sollte die
        benutzerseitige Deaktivierung des Cachings (siehe erwähntes Kapitel)
        nicht ausreichen, können Sie die Option <span class="mbold">Strikte RFC2616 RSS-Feed
        Kompatibilität</span> aktivieren.
    </span>

    <span class="box">
        Serendipity verhält sich dann absolut standardgemäß, verzichtet jedoch
        auf das zusätzliche Feature der fallweisen Artikelauslieferung abhängig
        vom letzten Besuchsdatum.
    </span>

    <span class="box">
        Zwei weitere Einstellungen, die das Caching beeinflussen, können Sie auf
        Seite <span class="pageref"><a href="#Caching-Variablen">Caching-Variablen</a></span> nachschlagen.
    </span>
</span>
</p>

<p class="desc">
<span class="tag-box invisible">
    <span class="inline-tag">Konfiguration!GZIP-Kompression verwenden</span>
    <span class="inline-tag">Traffic</span>
</span><!-- tagbox -->
<span class="item mbold">GZIP-Kompression verwenden</span><!-- menuitem -->
<span class="desc-info">
    <span class="box">
        Wenn Serendipity den HTML-Code des Frontends an den Browser Ihrer
        Besucher ausgibt, wird dabei eine Menge an Klartext-Daten übertragen.
        Klartext lässt sich mittels ZIP-Kompression relativ stark bündeln und
        bietet sich daher zum Einsparen von Traffic an. Gerade bei Besuchern
        mit niedriger Bandbreite (Benutzer von Modems, GPRS-Verbindungen) kann
        die GZIP-Komprimierung einige Vorteile bringen.
    </span>

    <span class="box">
        Leider benötigt das Packen mit GZIP-Kompression einiges an
        CPU-Leistung. Daher muss man abwägen, ob der eigene Server eher einen
        Engpass bei der CPU-Leistung oder bei der Trafficmenge hat. Zwar
        wird eine Aktivierung der GZIP-Kompression weniger Daten übertragen,
        aber die Performance von Serendipity wird dadurch sinken.
    </span>

    <span class="box">
        Hier müssen Sie eine Entscheidung treffen. Da Bandbreite heutzutage ein
        selteneres Problem ist, empfehle ich, zugunsten der
        Servergeschwindigkeit diese Option zu deaktivieren.
    </span>
</span>
</p>

<p class="desc">
<span class="label invisible" id="config-popups">config-popups</span>
<span class="tag-box invisible">
    <span class="inline-tag">Konfiguration!Popups für Kommentare, Trackbacks usw. verwenden</span>
    <span class="inline-tag">Popups</span>
</span><!-- tagbox -->
<span class="item mbold">Popups für Kommentare, Trackbacks usw. verwenden?</span><!-- menuitem -->
<span class="desc-info">
    <span class="box">
        Blendet Serendipity im Frontend einen Link auf Kommentare und Trackbacks
        eines Artikels ein, können diese Links entweder auf die
        vollständige Artikelansicht zeigen oder auch ein Popup-Fenster mit der
        gewünschten Darstellung öffnen.
    </span>

    <span class="box">
        Wenn Sie diese Popups benutzen wollen, aktivieren Sie die Option
        <span class="mbold">Popups für Kommentare, Trackbacks usw. verwenden</span>. Beachten Sie
        jedoch, dass Popups bei vielen Internet-Nutzern verpönt sind und es daher
        empfehlenswert ist, Ihren Besuchern die Wahl zu lassen, ob sie etwas
        als Popup öffnen möchten oder nicht. Jeder moderne Browser bietet dazu
        das Öffnen von Links in einem neuen Fenster mit einfachem Mausklick
        der mittleren Taste an.
    </span>
</span>
</p>

<p class="desc">
<span class="tag-box invisible">
    <span class="inline-tag">Konfiguration!eingebettete Serendipity-Nutzung aktivieren</span>
    <span class="inline-tag">Konfiguration!Embedding</span>
</span><!-- tagbox -->
<span class="item mbold">Eingebettete Nutzung von Serendipity aktivieren?</span><!-- menuitem -->
<span class="desc-info">
    <span class="box">
        Wenn Sie Serendipity in eine andere Anwendung einbetten wollen, können
        Sie die Ausgaben von Serendipity zentral speichern und in der
        PHP-Anwendung weiterverarbeiten. Damit diese Einbindung gelingt, darf
        Serendipity dann keine HTML-Kopf- und -Fußzeilen senden.
    </span>

    <span class="box">
        Die Aktivierung dieser Option bietet genau dies: Serendipity sendet
        dann nur den eigentlichen Inhalt des Blogs, der von der fremden
        Anwendung im Zusammenspiel mit der Option <span class="mbold">Index-Datei</span> (siehe Seite
        <span class="pageref"><a href="#index-Datei">index-Datei</a></span>) genutzt werden kann.
    </span>

    <span class="box">Diese Option war besonders für ältere Serendipity-Versionen notwendig.
        Seit es Smarty-Templates gibt, kann man diese Templates auch leicht
        so anpassen, dass keine Kopf- und Fußzeilen mehr gesendet werden
        müssen. Schlagen Sie im Kapitel <span class="reference">sharedinstall</span> ab Seite <span class="pageref"><a href="#sharedinstall">sharedinstall</a></span>
        nach, um eine Anleitung zur Einbettung von Serendipity zu erhalten.
    </span>

    <span class="tag-box invisible">
        <span class="inline-tag">Fehler!kaputtes Layout</span>
    </span>
    <span class="box">
        Sollte Ihr Serendipity-Blog ein merkwürdiges Layout aufweisen, ist
        womöglich die Aktivierung dieser Option "schuld" daran.
    </span>
</span>
</p>

<p class="desc">
<span class="tag-box invisible">
    <span class="inline-tag">Konfiguration!externe Links (un)klickbar</span>
</span><!-- tagbox -->
<span class="item mbold">Externe Links klickbar?</span><!-- menuitem -->
<span class="desc-info">
    <span class="box">
        Für die Seitenleisten-Plugins <code>Top Exits</code> und <code>Top Referrer</code>
        kann man mittels dieser Option einstellen, ob in diesen Plugins
        dargestellte Links mittels HTML klickbar dargestellt werden oder nicht.
    </span>

    <span class="box">
        Eigentlich gehört diese Option mittlerweile in die Konfigurationsseite
        der beiden Plugins. Aus historischen Gründen ist die Option jedoch in
        der globalen Konfiguration enthalten und wird möglicherweise in
        zukünftigen Versionen verschwinden.
    </span>
</span>
</p>

<p class="desc">
<span class="tag-box invisible">
    <span class="inline-tag">Konfiguration!Referrer-Tracking (de)aktivieren</span>
    <span class="inline-tag">Referrer-Tracking</span>
</span>
<span class="label invisible" id="trackreferrer">trackreferrer</span>
<span class="item mbold">Referrer-Tracking aktivieren?</span><!-- menuitem -->
<span class="desc-info">
    <span class="box">
        Wenn Sie die Option <span class="mbold">Referrer-Tracking</span> aktivieren, wird bei jedem
        Aufruf einer Serendipity-Seite ausgewertet, von welcher Seite ein
        Besucher kam. Diese Daten können dann in den Statistiken verwendet
        werden und zeigen Ihnen, von welchen Webseiten häufig zu Ihnen verlinkt
        wird.
    </span>

    <span class="tag-box invisible">
        <span class="inline-tag">Spam</span>
    </span>
    <span class="box">
        Leider wurde diese Option im Laufe der Zeit sehr oft durch Spammer
        missbraucht und zeigt nur noch in seltenen Fällen wirklich nutzbare
        Daten an.
    </span>
</span>
</p>

<p class="desc">
<span class="tag-box invisible">
    <span class="inline-tag">Konfiguration!geblockte Referrer</span>
</span><!-- tagbox -->
<span class="item mbold">Geblockte Referrer</span><!-- menuitem -->
<span class="desc-info">Um ein wenig Kontrolle auf Referrer-Spammer auszuüben, können Sie
in diesem Eingabefeld mehrere Stichwörter eintragen, die Sie mittels
<em>;</em> voneinander trennen. Sobald eines dieser Stichwörter in der
URL eines Besuchers vorkommt, wird diese URL nicht mit in die
Referrer-Statistik übernommen.</span>
</p>

<p class="desc">
<span class="tag-box invisible">
    <span class="inline-tag">Konfiguration!URL Formung@URL-Formung</span>
    <span class="inline-tag">URL-Formung</span>
    <span class="inline-tag">sprechende URLs</span>
    <span class="inline-tag">SEO</span>
</span>
<span class="label invisible" id="urlformung">urlformung</span>
<span class="item mbold">URL-Formung</span><!-- menuitem -->
<span class="desc-info">
    <span class="box">
        Die Option <span class="mbold">URL-Formung</span> ist zuständig, um <em>sprechende URLs</em> zu
        aktivieren (siehe Seite <span class="pageref"><a href="#mod-rewrite">mod-rewrite</a></span>). Ob Serendipity URLs hübsch
        formatieren kann, hängt davon ab, ob Ihr Webserver dies unterstützt.
    </span>

    <span class="box">
        Die Unterstützung können Sie ausprobieren, indem Sie testweise einfach
        die Methoden zur URL-Formung aktivieren und die Konfiguration
        abspeichern. Besuchen Sie danach Ihr Frontend und prüfen Sie, ob der Link
        zu einer Artikel-Detailseite noch funktioniert.
    </span>

    <span class="box">
        Wenn Sie Fehlermeldungen erhalten oder dies nicht klappt, müssen Sie
        die URL-Formung wieder deaktivieren. Die Administrationsoberfläche
        können Sie immer unter
        <code>http://www.example.com/serendipity/serendipity_admin.php</code> auch im
        Fehlerfall aufrufen. Möglicherweise müssen Sie dazu die Datei
        <code>.htaccess</code> löschen, wenn bei Ihrem Webserver sonst alle Aufrufe
        fehlschlagen.
    </span>

    <span class="box">Folgende Arten der URL-Formung sind möglich:</span>

    <span class="box mda-box">

        <span class="box">
            <span class="box"><span class="item mbold">Disable URL Rewriting</span></span>
            <span class="sub-box">
                <span class="box">
                    Bei dieser Methode werden sprechende URLs
                    deaktiviert. Ein Link sieht dann aus wie:
                    <code>http://www.example.com/serendipity/index.php?/archives/1-MeinArtikel.html</code>
                    <span class="box">Diese URLs mögen für Sie zwar <em>sprechend</em> aussehen, aber für eine
                    Suchmaschine wie Google sind sie es nicht und können daher nicht zur
                    Aufwertung der Auffindbarkeit dienen (siehe Kapitel <span class="pageref"><a href="#SEO">SEO</a></span>).</span>
                </span>
            </span>
        </span>

        <span class="tag-box invisible">
            <span class="inline-tag">Apache!ErrorHandling</span>
        </span><!-- tagbox -->
        <span class="box">
            <span class="box"><span class="item mbold">Use Apache ErrorHandling</span></span>
            <span class="sub-box">
                <span class="box">
                    Auf vielen Apache-basierten Webservern ist diese Methode einsetzbar.
                    Mittels eines kleinen Tricks werden
                    Fehlerseiten dazu benutzt, um die eigentlich nicht existierende
                    virtuelle Seite aufzurufen. Eine URL sieht dann aus wie:
                    <code>http://www.example.com/serendipity/archives/1-MeinArtikel.html</code>
                </span>
                <span class="box">
                    Der Nachteil dieser Methode ist, dass für jeden URL-Aufruf in Ihrem
                    Apache Fehler-Logfile ein Eintrag erscheint, was man als
                    <em>unsexy</em> bezeichnen könnte.
                </span>
            </span>
        </span>

        <span class="tag-box invisible">
            <span class="inline-tag">mod_rewrite</span>
        </span><!-- tagbox -->
        <span class="box">
            <span class="box"><span class="item mbold">Use Apache mod_rewrite</span></span>
            <span class="sub-box">
                <span class="box">
                    Die performanteste Methode der URL-Formung stellt <span class="mbold">Use Apache
                    mod_rewrite</span> dar. Sie produziert identische URLs wie das Apache
                    ErrorHandling, ist aber flexibler und erzeugt keine
                    Fehler-Logfile-Einträge.
                </span>
            </span>
        </span>

    </span>

</span>
</p>

<p class="desc">
<span class="tag-box invisible">
    <span class="inline-tag">Konfiguration!Basiert die Zeitdifferenz auf der Server-Zeitzone</span>
    <span class="inline-tag">Zeitunterschied</span>
    <span class="inline-tag">Zeitzone</span>
</span><!-- tagbox -->
<span class="item mbold">Basiert die Zeitdifferenz auf der Server-Zeitzone?</span><!-- menuitem -->
<span class="desc-info">
    <span class="box">
        Wenn Ihr Webserver in einer anderen Zeitzone als Ihr eigener Computer
        steht, kann es zu einem Zeitversatz kommen. Mir dieser Auswahl werden
        Eintragszeiten nach Server-Zeitzone eintragen oder nicht. YES wählt
        die Server-Zeitzone als Basis, NO wählt GMT.
    </span>
</span>
</p>

<p class="desc">
<span class="tag-box invisible">
    <span class="inline-tag">Konfiguration!Zeitunterschied des Servers</span>
    <span class="inline-tag">Zeitunterschied</span>
</span><!-- tagbox -->
<span class="item mbold">Zeitunterschied des Servers</span><!-- menuitem -->
<span class="desc-info">
    <span class="box">
        Wenn Ihr Webserver in einer anderen Zeitzone als Ihr eigener Computer
        steht, kann es zu einem Zeitversatz kommen. Ihr Server würde Artikel,
        die Sie um 15:00 Uhr Ortszeit erstellen, je nach Serverzeit
        möglicherweise für 03:00 Uhr morgens auszeichnen.
    </span>

    <span class="box">
        Um diesen Zeitversatz zu korrigieren, können Sie in dem Eingabefeld
        <span class="mbold">Zeitunterschied des Servers</span> eintragen, wie viele Stunden
        Zeitunterschied zwischen Ihrem Computer und dem Server liegen. Um
        diesen Zeitunterschied herauszufinden, wird die aktuelle Serverzeit im
        Text neben der Eingabebox für Sie angezeigt.
    </span>

    <span class="box">
        Sie können halbe Stunden mit einer Angabe wie <code>1.5</code> eintragen.
        Negative Zeitunterschiede geben Sie mit einem vorangestellten <code>-</code> an.
    </span>
</span>
</p>

<p class="desc">
<span class="label invisible" id="Zeitgesteuerte Veroeffentlichung">Zeitgesteuerte Veroeffentlichung</span>
<span class="tag-box invisible">
    <span class="inline-tag">Zeitgesteuerte Veröffentlichung</span>
    <span class="inline-tag">Konfiguration!zukünftige Einträge zeigen</span>
</span><!-- tagbox -->
<span class="item mbold">Zukünftige Einträge zeigen</span><!-- menuitem -->
<span class="desc-info">
    <span class="box">
        Üblicherweise wird Serendipity nur Artikel darstellen, deren Uhrzeit
        nicht vor der aktuellen Serverzeit liegt. So können Sie zukünftige
        Einträge bereits verfassen, ohne dass Sie zum jeweiligen Zeitpunkt
        manuell etwas freischalten müssen.
    </span>

    <span class="box">
        Wenn Sie jedoch auch zukünftige Artikel anzeigen wollen (zum
        Beispiel für ein Blog mit in der Zukunft stattfindenden Ereignissen),
        können Sie die Option <span class="mbold">Zukünftige Einträge zeigen</span> aktivieren.
    </span>
</span>
</p>

<p class="desc">
<span class="tag-box invisible">
    <span class="inline-tag">Konfiguration!Leserechte auf Kategorien anwenden</span>
</span><!-- tagbox -->
<span class="item mbold">Leserechte auf Kategorien anwenden</span><!-- menuitem -->
<span class="desc-info">
    <span class="box">
        Serendipity unterstützt die Möglichkeit, Artikel in Kategorien mit
        einem Leseschutz zu versehen. So können Sie einer Kategorie Leserechte
        nur für bestimmte Benutzergruppen zuweisen, und alle anderen
        Benutzergruppen (insbesondere anonyme Besucher des Frontends) können
        dann Artikel in dieser Kategorie nicht lesen. Dies ermöglicht es,
        Serendipity auch als CMS einzusetzen.
    </span>

    <span class="tag-box invisible">
        <span class="inline-tag">Performance</span>
    </span>
    <span class="box">
        In vielen Blogs ist ein derartiger Zugriffsschutz jedoch nicht
        notwendig, da alle Artikel von allen Besuchern gelesen werden sollen.
        Ist dies der Fall, können Sie die Option <span class="mbold">Leserechte auf
        Kategorien anwenden</span> gerne auf <span class="mbold">Nein</span> setzen. Dies wird die
        Geschwindigkeit der Darstellung im Frontend positiv beinflussen, da
        weitaus weniger Datenbankabfragen ausgeführt werden müssen, um die
        Artikelübersicht zu erzeugen.
    </span>
</span>
</p>

</article>

<article id="XU" class="subsub">

<header>
    <h4 class="subarticle" id="feedeinstellungen">Feed-Einstellungen</h4>
</header>

<p class="tagging invisible">
<span class="tag-box invisible">
    <span class="inline-tag">Konfiguration!Feed-Einstellungen</span>
</span>
</p>

<p>Der vorletzte Bereich, <span class="mbold">Feed-Einstellungen</span>, legt einige Optionen
für die Blog Feeds fest.</p>

<figure id="fig-configuration-feed">
  <a class="lightbox" rel="lightbox" href="media/configuration_feed_dm_de.avif" lg-uid="lg4816" data-fallback="media/configuration_feed_dm_de.webp">
    <picture>
      <source srcset="media/configuration_feed_dm_de.avif" type="image/avif">
      <source srcset="media/configuration_feed_dm_de.webp" type="image/webp">
      <img src="media/configuration_feed_dm_de.png" alt="configuration_feed_dm_de.png" loading="lazy" width="1416" height="1163">
    </picture>
    <figcaption>Abbildung 4.23f: Einstellungen: Konfiguration - Feed-Einstellungen</figcaption>
  </a>
</figure>

<p class="desc">
<span class="label invisible" id="xxx">Einträge mit erweitertem Text im RSS-Feed einbinden</span>
<span class="tag-box invisible">
    <span class="inline-tag">Feeds!Einträge mit erweitertem Text im RSS-Feed einbinden</span>
    <span class="inline-tag">Feeds!YYY</span>
</span><!-- tagbox -->
<span class="item mbold">Einträge mit erweitertem Text im RSS-Feed einbinden</span><!-- menuitem -->
<span class="desc-info">
    <span class="box">
        Erweiterte <code>Ja</code> - <code>Nein</code> - <code>Client</code> Abfrage. Voreinstellung: <strong>Nein</strong>.
    </span>

    <span class="box">
        Ein RSS-Feed enthält üblicherweise nur den Text eines Artikels, den Sie
        im Feld <em>Eintrag</em> erfasst haben. Der <em>Erweiterte Eintrag</em> ist
        nicht Bestandteil der RSS-Feeds, und somit muss ein Benutzer Ihr Blog
        besuchen, um den vollständigen Artikel lesen zu können. Dies ist häufig
        gewünscht, um mehr Besucher auf die Webseite zu "locken". Um Ihren
        Besuchern mehr Komfort zu bieten, können Sie aber auch den vollständigen
        Artikel im RSS-Feed eintragen.
    </span>

    <span class="box">
        Mit dieser Konfigurationsoption können Sie dieses Verhalten beeinflussen.
        Wenn Sie die Option <span class="mbold">Client</span> aktivieren, kann, wie im Abschnitt
        <span class="reference">FullFeed</span> auf Seite <span class="pageref"><a href="#FullFeed">FullFeed</a></span> erwähnt, der Leser selbst
        bestimmen, ob er einen vollständigen RSS-Feed haben will oder nicht. Dazu
        muss er Ihren RSS-Feed über die Datei <code>rss.php?fullFeed=true</code>
        abonnieren. Dies ist natürlich relativ versteckt, so dass Sie Ihre Besucher
        über diese mögliche Variante informieren müssten.
    </span>
</span>
</p>

<p class="desc">
<span class="label invisible" id="xxx">Bild für den RSS-Feed</span>
<span class="tag-box invisible">
    <span class="inline-tag">Feeds!Bild für den RSS-Feed</span>
    <span class="inline-tag">Feeds!YYY</span>
</span><!-- tagbox -->
<span class="item mbold">Bild für den RSS-Feed</span><!-- menuitem -->
<span class="desc-info">
    <span class="box">
         Ein (<code>string</code>) input Feld. Voreinstellung: <strong>Leer</strong> (leer heißt: Binde das Serendipity-Logo ein).
    </span>

    <span class="box">
        URL für ein Bild im GIF/JPEG/PNG Format, falls vorhanden.
    </span>
</span>
</p>

<p class="desc">
<span class="label invisible" id="xxx">Breite des Bildes</span>
<span class="tag-box invisible">
    <span class="inline-tag">Feeds!Breite des Bildes</span>
    <span class="inline-tag">Feeds!YYY</span>
</span><!-- tagbox -->
<span class="item mbold">Breite des Bildes</span><!-- menuitem -->
<span class="desc-info">
    <span class="box">
         Ein (<code>string</code>) input Feld. Voreinstellung: <strong>Leer</strong> (in Pixeln, max. 144).
    </span>
</span>
</p>

<p class="desc">
<span class="label invisible" id="xxx">Höhe des Bildes</span>
<span class="tag-box invisible">
    <span class="inline-tag">Feeds!Höhe des Bildes</span>
    <span class="inline-tag">Feeds!YYY</span>
</span><!-- tagbox -->
<span class="item mbold">Höhe des Bildes</span><!-- menuitem -->
<span class="desc-info">
    <span class="box">
         Ein (<code>string</code>) input Feld. Voreinstellung: <strong>Leer</strong> (in Pixeln, max. 400).
    </span>
</span>
</p>

<p class="desc">
<span class="label invisible" id="xxx">E-Mail-Adressen einbinden?</span>
<span class="tag-box invisible">
    <span class="inline-tag">Feeds!E-Mail-Adressen einbinden</span>
    <span class="inline-tag">Feeds!YYY</span>
</span><!-- tagbox -->
<span class="item mbold">E-Mail-Adressen einbinden</span><!-- menuitem -->
<span class="desc-info">
    <span class="box">
        Einfache <code>Ja</code> - <code>Nein</code> Abfrage. Voreinstellung: <strong>Nein</strong>.
    </span>
</span>
</p>

<p class="desc">
<span class="label invisible" id="xxx">Feld "managingEditor"</span>
<span class="tag-box invisible">
    <span class="inline-tag">Feeds!Feld "managingEditor"</span>
    <span class="inline-tag">Feeds!YYY</span>
</span><!-- tagbox -->
<span class="item mbold">Feld "managingEditor"</span><!-- menuitem -->
<span class="desc-info">
    <span class="box">
         Ein (<code>string</code>) input Feld. Voreinstellung: <strong>Leer</strong> (leer heißt: nicht verwenden).
    </span>

    <span class="box">
        E-Mail-Adresse des verantwortlichen Editors, falls vorhanden. [RSS 2.0]
    </span>
</span>
</p>

<p class="desc">
<span class="label invisible" id="xxx">Feld "webMaster"</span>
<span class="tag-box invisible">
    <span class="inline-tag">Feeds!Feld "webMaster"</span>
    <span class="inline-tag">Feeds!YYY</span>
</span><!-- tagbox -->
<span class="item mbold">Feld "webMaster"</span><!-- menuitem -->
<span class="desc-info">
    <span class="box">
         Ein (<code>string</code>) input Feld. Voreinstellung: <strong>Leer</strong> (leer heißt: nicht verwenden).
    </span>

    <span class="box">
        E-Mail-Adresse des Webmasters, falls vorhanden. [RSS 2.0]
    </span>
</span>
</p>

<p class="desc">
<span class="label invisible" id="xxx">Feld "ttl" (time-to-live)</span>
<span class="tag-box invisible">
    <span class="inline-tag">Feeds!Feld "ttl" (time-to-live)</span>
    <span class="inline-tag">Feeds!YYY</span>
</span><!-- tagbox -->
<span class="item mbold">Feld "ttl" (time-to-live)</span><!-- menuitem -->
<span class="desc-info">
    <span class="box">
         Ein (<code>string</code>) input Feld. Voreinstellung: <strong>Leer</strong> (leer heißt: nicht verwenden).
    </span>

    <span class="box">
        Anzahl der Minuten, nachdem das Blog von fremden Seiten nicht mehr gecached werden sollte. [RSS 2.0]
    </span>
</span>
</p>

<p class="desc">
<span class="label invisible" id="xxx">Feld "pubDate"</span>
<span class="tag-box invisible">
    <span class="inline-tag">Feeds!Feld "pubDate"</span>
    <span class="inline-tag">Feeds!YYY</span>
</span><!-- tagbox -->
<span class="item mbold">Feld "pubDate"</span><!-- menuitem -->
<span class="desc-info">
    <span class="box">
        Einfache <code>Ja</code> - <code>Nein</code> Abfrage. Voreinstellung: <strong>Ja</strong>.
    </span>

    <span class="box">
        Soll das "pubDate"-Feld für den RSS-Kanal eingebettet werden, um das Datum des letzten Eintrags zu enthalten?
    </span>
</span>
</p>

<p class="desc">
<span class="label invisible" id="xxx">Individuelle Feed-URL</span>
<span class="tag-box invisible">
    <span class="inline-tag">Feeds!Individuelle Feed-URL</span>
    <span class="inline-tag">Feeds!YYY</span>
</span><!-- tagbox -->
<span class="item mbold">Individuelle Feed-URL</span><!-- menuitem -->
<span class="desc-info">
    <span class="box">
        Ein (<code>string</code>) input Feld. Voreinstellung: <strong>Leer</strong>.
    </span>

    <span class="box">
        Wenn gesetzt, wird die eingetragene URL verwendet um Feedreader dorthin weiterzuleiten. Dies ist hilfreich für Statistikdienste wie z.B. Feedburner, so dass hier die Feedburner-URL des eigenen Feeds hinterlegt werden kann.
    </span>
</span>
</p>

<p class="desc">
<span class="label invisible" id="xxx">Erzwingen der individuellen Feed-URL?</span>
<span class="tag-box invisible">
    <span class="inline-tag">Feeds!Erzwingen der individuellen Feed-URL</span>
    <span class="inline-tag">Feeds!YYY</span>
</span><!-- tagbox -->
<span class="item mbold">Erzwingen der individuellen Feed-URL</span><!-- menuitem -->
<span class="desc-info">
    <span class="box">
        Einfache <code>Ja</code> - <code>Nein</code> Abfrage. Voreinstellung: <strong>Nein</strong>.
    </span>

    <span class="box">
        Wenn aktiviert, werden alle Feedreader automatisch zu der eingetragenen individuellen Feed-URL weitergeleitet.
    </span>
</span>
</p>

</article>

<article id="XU" class="subsub">

<header>
    <h4 class="subarticle" id="bildkonvertierung">Bildkonvertierung</h4>
</header>

<p class="tagging invisible">
<span class="tag-box invisible">
    <span class="inline-tag">Konfiguration!Bildkonvertierung</span>
</span>
</p>

<p>Der letzte Bereich, <span class="mbold">Bildkonvertierung</span>, legt einige Optionen
für die Mediathek und die Vorschaubild-Erzeugung fest.</p>

<figure id="fig-configuration-img">
  <a class="lightbox" rel="lightbox" href="media/configuration_img_dm_de.avif" lg-uid="lg4817" data-fallback="media/configuration_img_dm_de.webp">
    <picture>
      <source srcset="media/configuration_img_dm_de.avif" type="image/avif">
      <source srcset="media/configuration_img_dm_de.webp" type="image/webp">
      <img src="media/configuration_img_dm_de.png" alt="configuration_img_dm_de.png" loading="lazy" width="1416" height="1473">
    </picture>
    <figcaption>Abbildung 4.23g: Einstellungen: Konfiguration - Bildkonvertierung</figcaption>
  </a>
</figure>

<p class="desc">
<span class="tag-box invisible">
    <span class="inline-tag">Fehler!Erstellung von Vorschaubildern</span>
    <span class="inline-tag">Konfiguration!ImageMagick zur Skalierung verwenden</span>
    <span class="inline-tag">ImageMagick</span>
    <span class="inline-tag">gdlib</span>
</span><!-- tagbox -->
<span class="item mbold">ImageMagick zur Skalierung verwenden</span><!-- menuitem -->
<span class="desc-info">
    <span class="box">
        Wenn auf Ihrem Webserver die Software ImageMagick [*]
        <span class="footnote"><i class="fa fa-info-circle"></i>
        <a href="http://www.imagemagick.org" target="_blank" rel="noopener">http://www.imagemagick.org</a></span><!-- footnote -->
        installiert ist, können Sie diese Software zur Erstellung und Konvertierung von
        Vorschaubildern benutzen.
    </span>

    <span class="box">
        Ist ImageMagick nicht aktiviert, kann Serendipity auch die PHP-Bibliothek
        <code>gdlib</code> (für JPG, PNG, GIF, WBMP, WebP, XBM und XPM Dateien) einsetzen.
        Jede dieser Bildverarbeitungsbibliotheken hat ihre Vor- und Nachteile.
        Sowohl GD als auch ImageMagick bieten einige grundlegende Funktionen wie:
        - Größenanpassung und Zuschneiden von Bildern, - Erstellen von Bildern,
        die aus benutzerdefinierten Formen, Text und anderen Bilddateien bestehen,
        - Anwendung von Bildfiltern (Änderung von Helligkeit, Kontrast, Einfärbung usw.).
    </span>

    <span class="box">
        Die GD-Bibliothek ist durch die direkte Einbingung in PHP weit verbreitet,
        so dass sie wahrscheinlich überall -out-of-the-box- funktionieren wird.
    </span>

    <span class="box">
        ImageMagick bietet den Vorteil, dass zB. auch Vorschaubilder von PDF-Dateien
        erzeugt werden können, oder TIFF Bilddateien bearbeitet werden können.
        Bis auf diesen Vorteil sind GD-Lib und ImageMagick in den Grundfunktionen
        ungefähr gleichwertig; anderseits aber unterstützt ImageMagick mehr
        Dateitypen und kann Bilder auf viel mehr Arten transformieren als die GD-Bibliothek.
        Es erlaubt Ihnen, Code von größerer Klarheit und Qualität zu schreiben. Und
        ImageMagick kann exaktere Zuschnitte von Bildern forcieren, was eventuell
        bei der Serendipity Mediathek von Bedeutung sein kann.
    </span>
</span>
</p>

<p class="desc">
<span class="tag-box invisible">
    <span class="inline-tag">Konfiguration!Pfad!zur convert-ImageMagick-Datei</span>
</span><!-- tagbox -->
<span class="item mbold">Pfad zur "convert" ImageMagick-Datei</span><!-- menuitem -->
<span class="desc-info">In diesem Eingabefeld müssen Sie den vollständigen Pfad zur
ImageMagick-Datei auf dem Webserver eintragen. ImageMagick kann nur
ausgeführt werden, wenn der Webserver-Benutzer für diese Datei
Zugriffsrechte gewährt. Gerade bei aktiviertem Safe Mode ist dies
selten der Fall. Deaktivieren Sie ImageMagick, falls Fehlermeldungen
bei der Vorschaubild-Erzeugung auftreten.</span>
</p>

<p class="desc">
<span class="label invisible" id="vorschaubildendung">Vorschaubildendung</span>
<span class="tag-box invisible">
    <span class="inline-tag">Konfiguration!Vorschaubild-Endung</span>
    <span class="inline-tag">Thumbnails</span>
    <span class="inline-tag">serendipity-Thumb@styxThumb</span>
    <span class="inline-tag">serendipity-Thumb@serendipityThumb</span>
</span><!-- tagbox -->
<span class="item mbold">Vorschaubild-Endung</span><!-- menuitem -->
<span class="desc-info">
    <span class="box">
        Als Thumbnail bezeichnet man die Vorschaugrafiken, die Serendipity von
        einer Bilddatei automatisch erzeugt.
    </span>

    <span class="box">
        Jede dieser Vorschaugrafiken enthält standardmäßig den Namenszusatz
        <code>styxThumb</code>. Die Vorschaudatei zum Bild <code>logo.jpg</code> wird
        also <code>logo.styxThumb.jpg</code> heißen und im selben Verzeichnis
        angelegt werden.
    </span>

    <span class="box">
        Diesen Dateinamen können Sie über die Option <span class="mbold">Vorschaubild-Endung</span>
        selber festlegen. Wenn Sie den Dateinamen ändern und bereits Dateien
        in der Mediathek vorhanden sind, müssen Sie im Menü
        <span class="mbold">Mediathek</span> auf <span class="mbold">Vorschauen erneuern</span> klicken.
    </span>
</span>
</p>

<p class="desc">
<span class="label invisible" id="vorschaubildgroesse">Vorschaubildgröße</span>
<span class="tag-box invisible">
    <span class="inline-tag">Konfiguration!Vorschaubildgröße</span>
    <span class="inline-tag">Thumbnails!Größe</span>
</span><!-- tagbox -->
<span class="item mbold">Vorschaubildgröße</span><!-- menuitem -->
<span class="desc-info">
    <span class="box">
        Jede Grafikdatei wird standardmäßig auf maximal 400 Pixel Breite oder
        Höhe für die Vorschaugrafik verkleinert. Der jeweils größere Wert
        (Breite oder Höhe) wird dabei auf 400 Pixel verkleinert und der
        jeweils kleinere Wert unter Berücksichtigung der Bildproportionen
        errechnet.
    </span>

    <span class="box">
        Serendipity zeigt die Vorschaubilder in der Mediathek stets in der
        hier konfigurierten Größe an. Wenn Sie also größere (oder kleinere)
        Vorschaubilder bevorzugen, können Sie die maximale Größe unter
        <span class="mbold">Vorschaubildgröße</span> einstellen. Auch hier müssen Sie auf
        <span class="mbold">Vorschauen erneuern</span> klicken, wenn Sie diesen Wert ändern, obwohl
        Sie schon Dateien in die Mediathek eingestellt haben.
    </span>
</span>
</p>

<p class="desc">
<span class="label invisible" id="Bestimmung der maximalen Vorschaubildgröße">Bestimmung der maximalen Vorschaubildgröße</span>
<span class="tag-box invisible">
    <span class="inline-tag">Konfiguration!Vorschaubildgröße</span>
    <span class="inline-tag">Thumbnails!Größe</span>
    <span class="inline-tag">Thumbnails!Bestimmung</span>
</span><!-- tagbox -->
<span class="item mbold">Bestimmung der maximalen Vorschaubildgröße</span><!-- menuitem -->
<span class="desc-info">
    <span class="box">
        Legt fest, wie die Größe der Thumbnails angepasst werden soll.
        Der Standard "Längste Seite" nutzt die größte Seite als Beschränkung,
        so dass weder Breite noch Höhe die festgelegte Zahl überschreiten dürfen.
        "Breite" und "Höhe" legen lediglich die Höhe bzw. Breite als größte Seite fest,
        so dass die jeweils andere Angabe auch größer als die festgelegte Zahl sein darf.
    </span>
</span>
</p>

<p class="desc">
<span class="label invisible" id="uploadlimit">uploadlimit</span>
<span class="tag-box invisible">
    <span class="inline-tag">Konfiguration!maximale Dateigröße für den Upload</span>
    <span class="inline-tag">Upload-Limit</span>
    <span class="inline-tag">Dateigröße!für den Upload beschränken</span>
</span><!-- tagbox -->
<span class="item mbold">Maximale Dateigröße für den Upload</span><!-- menuitem -->
<span class="desc-info">
    <span class="box">
        Wenn Sie den Upload von Dateien künstlich einschränken wollen, können
        Sie die maximale Dateigröße einer in die Mediathek hochgeladenen
        Datei über das Feld <span class="mbold">Maximale Dateigröße für den Upload</span>
        einstellen.
    </span>

    <span class="box">
        Beachten Sie, dass Sie diesen Wert nicht größer einstellen können als
        die ebenfalls limitierenden Konfigurationsoptionen
        <code>upload_max_filesize</code>, <code>post_max_size</code> und
        <code>max_input_time</code> der <code>php.ini</code> (siehe Kapitel <span class="reference">file-uploads</span>
        auf Seite <span class="pageref"><a href="#file-uploads">file-uploads</a></span>).
    </span>
</span>
</p>

<p class="desc">
<span class="label invisible" id="uploadlimit2">uploadlimit2</span>
<span class="tag-box invisible">
    <span class="inline-tag">Konfiguration!maximale Breite/Höhe eines hochgeladenen Bildes</span>
</span><!-- tagbox -->
<span class="item mbold">Maximale Breite eines hochgeladenen Bildes</span><!-- menuitem -->
<span class="item mbold">Maximale Höhe eines hochgeladenen Bildes</span><!-- menuitem -->
<span class="desc-info">Abgesehen von der Dateigröße können Sie ein hochgeladenes Bild auch auf
eine maximale Auflösung festlegen. Wenn das Bild eine dieser
Dimensionen überschreitet, wird es nicht akzeptiert. So können Sie
verhindern, dass Redakteure Bilder hochladen, die für den Einsatz im
Internet nicht geeignet sind.</span>
</p>

<p class="desc">
<span class="label invisible" id="Vor dem Upload Größe anpassen">Vor dem Upload Größe anpassen</span>
<span class="tag-box invisible">
    <span class="inline-tag">Konfiguration!Vorschaubildgröße</span>
    <span class="inline-tag">Thumbnails!Größe</span>
    <span class="inline-tag">Thumbnails!Upload</span>
    <span class="inline-tag">Thumbnails!Automatik</span>
</span><!-- tagbox -->
<span class="item mbold">Vor dem Upload Größe anpassen</span><!-- menuitem -->
<span class="desc-info">
    <span class="box">
        Mittels Javascript werden Bilder vor dem Upload an die gewählte
        Maximalgröße angepasst. Wenn aktiv, wird Ajax für den Bildupload
        verwendet, was auch zur Entfernung des "Eigenschaften angeben"-
        Buttons führt. Dieses muss dann separat geschehen.
    </span>

    <span class="box">
        <span class="mbold">ACHTUNG:</span> Diese Einstellung verhindert andere Optionen,
        insbesondere dann, wenn das <code>imageselectorplus</code> event
        Plugin genutzt wird!
    </span>
</span>
</p>

<p class="desc">
<span class="label invisible" id="MDB-Synchronisation">MDB-Synchronisation</span>
<span class="tag-box invisible">
    <span class="inline-tag">Automagische Synchronisation</span>
    <span class="inline-tag">Synchronisierung</span>
    <span class="inline-tag">Konfiguration!Automagische Synchronisation der Mediathek</span>
    <span class="inline-tag">Fehler!beim Zugriff auf Mediendateien</span>
</span>
<span class="item mbold">Automagische Synchronisation der Mediathek</span><!-- menuitem -->
<span class="desc-info">
    <span class="box">
        Da Serendipity, wie im Kapitel <span class="reference">Mediathek</span> ab Seite
        <span class="pageref"><a href="#mediathek">Mediathek</a></span> beschrieben, den Dateibestand des
        Upload-Verzeichnisses mit einer eigenen Datenbanktabelle abgleicht,
        kann es hier zu Unterschieden kommen.
    </span>

    <span class="box">
        Serendipity kann bei jedem Aufruf der Mediathek prüfen, ob
        möglicherweise Dateien hinzugekommen oder gelöscht worden sind. Dazu
        werden alle Verzeichnisse und Dateien auf dem Server mit der Datenbank
        abgeglichen. Serendipity optimiert den Zugriff dabei, indem es diese
        Aktion nur ausführt, wenn sich etwas an der Menge der Dateien und
        Unterverzeichnisse getan hat.
    </span>

    <span class="tag-box invisible">
        <span class="inline-tag">Performance</span>
    </span>
    <span class="box">
        Dieser Vorgang kann bei einer großen Mediathek
        möglicherweise zu Ressourcen-Engpässen führen. In so einem Fall müssen
        Sie die <span class="mbold">automagische Synchronisation</span> deaktivieren.
    </span>

    <span class="box">
        Wenn der automatische Synchronisationsvorgang eine neue Datei findet
        oder eine alte Datei löscht, wird dies direkt innerhalb der
        Mediathek dargestellt.
    </span>
</span>
</p>

<p class="desc">
<span class="tag-box invisible">
    <span class="inline-tag">Konfiguration!dynamische Bildgrößenanpassung erlauben</span>
</span><!-- tagbox -->
<span class="item mbold">Dynamische Bildgrößenanpassung erlauben</span><!-- menuitem -->
<span class="desc-info">
    <span class="box">
        Üblicherweise kann Serendipity von einem Bild entweder nur die
        Originalgrafik oder die Vorschaugrafik zurückliefern.
    </span>

    <span class="box">
        Ein Teil der Mediathek kann aber auch (manuell) über
        das Frontend angesprochen und benutzt werden, um Grafiken auch in jeder
        anderen beliebigen Dateigröße auszugeben (siehe Seite <span class="pageref"><a href="#mdb-profi">mdb-profi</a></span>).
    </span>
</span>
</p>

<p class="desc">
<span class="tag-box invisible">
    <span class="inline-tag">Konfiguration!EXIF/JPEG-Metadaten übernehmen</span>
</span><!-- tagbox -->
<span class="item mbold">EXIF/JPEG Metadaten übernehmen?</span><!-- menuitem -->
<span class="desc-info">
    <span class="box">
        Wenn Sie ein Bild in die Mediathek von Serendipity hochladen,
        kann Serendipity automatisch die Binärdaten des Bildes auswerten und in
        der Mediathek speichern. In solchen Binärdateien können
        <span class="tag-box invisible">
            <span class="inline-tag">EXIF</span>
        </span>
        sogenannte <code>EXIF</code>-Daten [*]
        <span class="footnote"><i class="fa fa-info-circle"></i> <a href="https://www.exif.org/" target="_blank" rel="noopener">https://www.exif.org/</a></span><!-- footnote -->
        gespeichert werden, die zB. von Digitalkameras automatisch eingefügt
        werden und Informationen über Belichtungszeit und Aufnahmezeitpunkt
        enthalten.
    </span>

    <span class="tag-box invisible">
        <span class="inline-tag">Performance</span>
    </span>
    <span class="box">
        Serendipity kann diese Metadaten innerhalb der
        Mediathek anzeigen. Da das Auslesen der Binärdaten einiges an
        Server-Ressourcen beanspruchen kann, könnte dies möglicherweise zu sehr
        großen Datenmengen in der Datenbank (dort werden die Metadaten
        zwischengespeichert) oder auch dazu führen, dass das Hochladen von
        Dateien fehlschlägt. Deaktivieren Sie in diesem Fall die Option
        <span class="mbold">EXIF/JPEG Metadaten übernehmen</span>.
    </span>
</span>
</p>

<p class="desc">
<span class="tag-box invisible">
    <span class="inline-tag">Medieneigenschaften@Medien-Eigenschaften</span>
</span>
<span class="label invisible" id="Medien-Eigenschaften">Medien-Eigenschaften</span>
<span class="tag-box invisible">
    <span class="inline-tag">Konfiguration!Medien-Eigenschaften</span>
</span><!-- tagbox -->
<span class="item mbold">Medien-Eigenschaften</span><!-- menuitem -->
<span class="desc-info">
    <span class="box">
        Zu jeder Datei in der Serendipity-Mediathek können Sie eine
        selbst definierte Menge von möglichen Metadaten eintragen.
    </span>

    <span class="box">
        Standardmäßig greift Serendipity dabei auf die Felder <code>DPI</code> (nur
        bei Bildern), <code>Laufzeit</code> (nur bei Video/Audio), <code>Datum</code>,
        <code>Copyright</code>, <code>Titel</code>, <code>Kurzer Kommentar</code> und <code>Langer
        Kommentar</code> zurück.
    </span>

    <span class="box">
        Diese verwendeten Felder werden in der Eingabebox
        <span class="mbold">Medien-Eigenschaften</span> festgelegt. Die Eingabebox mag für Sie
        etwas kryptisch erscheinen, ist aber für Serendipity ein sehr
        schneller Weg, ohne umständliche Zusatzoberfläche Ihre Eingaben zu
        erfassen.
    </span>

    <span class="tag-box invisible">
        <span class="inline-tag">DPI</span>
        <span class="inline-tag">IPTC</span>
        <span class="inline-tag">Meta-Daten@Metadaten</span>
    </span>
    <span class="box">
        Alle gewünschten Felder werden dabei mit einem <code>;</code>-Zeichen
        getrennt: <code>DPI;DATE;COPYRIGHT;TITLE;COMMENT1;COMMENT2</code></span>

    <span class="box">
        Jedes Feld kann einen beliebigen Namen haben, der aber keine
        Sonderzeichen und Leerzeichen beinhalten darf. Wie der Name eines
        Feldes später in der Mediathek angezeigt wird, richtet sich
        ebenfalls nach diesem Feld. Serendipity sucht dabei in den
        Sprachdateien (siehe Kapitel <span class="reference">lang-dir</span>, Seite <span class="pageref"><a href="#lang-dir">lang-dir</a></span>)
        nach einer definierten Konstante <code>MEDIA_PROPERTY_DPI</code>.
        Ist diese Konstante definiert, wird die darin definierte Bezeichnung in
        der Mediathek angezeigt. Gäbe es keine solche Konstante, würde
        der Begriff selbst dargestellt werden. Wenn Sie also das Feld
        <code>QUALITAET</code> am Ende einfügen, wird in der Mediathek auch
        <code>QUALITAET</code> angezeigt. Um eine eigene, klarere Bezeichnung zu
        wählen, müssen Sie die Konstante selbst definieren, wie im
        angesprochenen Kapitel erwähnt.
    </span>

    <span class="box">
        Nun kann jedes aufgeführte Feld noch einige Optionen aufweisen,
        die jeweils durch das <code>:</code>-Zeichen getrennt werden. Vier Optionen
        sind verfügbar:
    </span>

    <span class="box">
        <code class="item">:IMAGE</code> wenn das vorangehende Feld nur für Bilddateien
        benutzt werden soll.
    </span>

    <span class="box">
        <code class="item">:VIDEO</code> wenn das vorangehende Feld nur für Videos
        benutzt werden soll.
    </span>

    <span class="box">
        <code class="item">:AUDIO</code> wenn das vorangehende Feld nur für Sounddateien
        benutzt werden soll.
    </span>

    <span class="box">
        <code class="item">:MULTI</code> wenn eine Medien-Eigenschaft einen längeren
        Eingabetext anstelle nur einer einzeiligen
        Eingabebox zulassen soll.
    </span>

    <span class="box">
        Beispielsweise möchten Sie gerne für Bilder ein Eingabefeld
        <em>Bildqualität</em>, für Videos <em>Bewegungsqualität</em> und für alle
        Dateien pauschal ein großes Eingabefeld <em>Einsatzzweck</em> speichern.
        Dafür würden Sie folgende Konfiguration vornehmen:
    </span>

    <span class="box">
        <span id="pre-style"><code class="txt">
            Bildqualitaet:IMAGE;Bewegungsqualitaet:VIDEO;Einsatzzweck:MULTI
        </code></span>
    </span>
</span>
</p>

<p class="desc">
<span class="label invisible" id="Medien-Schluesselwoerter">Medien-Schluesselwoerter</span>
<span class="tag-box invisible">
    <span class="inline-tag">Medienschluesselwoerter@Medien-Schlüsselwörter</span>
    <span class="inline-tag">Konfiguration!Medien-Schlüsselwörter</span>
</span><!-- tagbox -->
<span class="item mbold">Medien-Schlüsselwörter</span><!-- menuitem -->
<span class="desc-info">
    <span class="box">
        Jeder Datei in der Datenbank können Sie über die Eigenschaftsoberfläche
        einer Liste von selbst definierten Schlüsselwörtern zuordnen. Dabei
        können mehrere Schlüsselwörter einer einzelnen Datei zugewiesen werden,
        und die Mediathek kann später auch nach diesen Schlüsselwörtern
        durchsucht werden.
    </span>

    <span class="box">
        Schlüsselwörter werden fest in der Eingabebox
        <span class="mbold">Medien-Schlüsselwörter</span> vorgegeben. Alle möglichen
        Schlüsselwörter müssen Sie mit einem Semikolon voneinander
        trennen. Ein einzelnes Schlüsselwort darf in diesem Fall auch
        Sonderzeichen und Leerzeichen enthalten.
    </span>
</span>
</p>

<p class="desc">
<span class="label invisible" id="Erlaube, Daten über lokale URLs abzurufen">Erlaube, Daten über lokale URLs abzurufen</span>
<span class="tag-box invisible">
    <span class="inline-tag">Konfiguration!Mediendaten</span>
    <span class="inline-tag">Intranet</span>
</span><!-- tagbox -->
<span class="item mbold">Erlaube, Daten über lokale URLs abzurufen</span><!-- menuitem -->
<span class="desc-info">
    <span class="box">
        Standardmäßig ist es aus Sicherheitsgründen verboten, Daten über
        lokale URLs abzurufen, um Server-Side Request Forgery (SSRF) zu
        vermeiden. Wenn Sie ein lokales Intranet verwenden, können sie
        die Datenabfrage über diese Option explizit erlauben.
    </span>
</span>
</p>

<p>&nbsp;</p><!-- separator -->

<p>
<span class="tag-box invisible">
    <span class="inline-tag">serendipity-configlocalincphp@serendipity_config_local.inc.php</span>
    <span class="inline-tag">htaccess@.htaccess</span>
</span>
Über den Button <span class="mbold">Testen &amp; speichern</span> können Sie die geänderte
Konfiguration sichern. Serendipity wird die Datei
<code>serendipity_config_local.inc.php</code> immer neu abspeichern,
egal ob und welche Änderungen erfolgt sind. Bei Änderungen
an der Permalink-Struktur oder den Pfaden wird zusätzlich die Datei
<code>.htaccess</code> erneut erstellt.</p>

<p>
<span class="tag-box invisible">
    <span class="inline-tag">Fehler!htaccess neu erzeugen@.htaccess im ~fall neu erzeugen</span>
</span>
Durch einen Klick auf diesen Button können Sie daher auch eine
versehentlich gelöschte <code>.htaccess</code>-Datei wieder neu erzeugen.</p>

</article>

<article id="XU" class="subsub">

<header>
    <h4 class="subarticle" id="profi-einstellungen">Profi-Einstellungen</h4>
</header>

<p class="tagging invisible">
<span class="tag-box invisible">
    <span class="inline-tag">Einstellungen!versteckte</span>
    <span class="inline-tag">serendipity-configincphp@serendipity_config.inc.php</span>
    <span class="inline-tag">Konfigurationsvariablen</span>
    <span class="inline-tag">Serendipity-Variablen</span>
    <span class="inline-tag">$serendipity|see{Serendipity-Variablen}</span>
</span>
</p>

<p>Abgesehen von diesen menügesteuerten Einstellungsoptionen besitzt
Serendipity noch einige <em>versteckte</em> Optionen. Diese legt man in den
Dateien <code>serendipity_config_local.inc.php</code> und
<code>serendipity_config.inc.php</code> fest. Dafür müssen Sie also die beiden
genannten Dateien mit einem Editor öffnen und ändern. Innerhalb der Datei
sind einige Werte festgelegt, die sich alle auf unterschiedliche
<code>$serendipity[...]</code>-Variablen beziehen.</p>

<p>Diese Variablen sind im Folgenden aufgeführt. Einige von ihnen
werden über die Datei <code>serendipity_config.inc.php</code> vorbelegt,
die Sie jedoch im Bedarfsfall über die eigene
Konfigurationsdatei <code>serendipity_config_local.inc.php</code>
überschreiben können.</p>

<p class="desc">
<span class="tag-box invisible">
    <span class="inline-tag">Serendipity-Variablen!\$serendipity['versionInstalled']</span>
</span>
<code class="item var">$serendipity['versionInstalled']</code>
<span class="desc-info">In dieser Variable wird die aktuell installierte
Serendipity-Versionsnummer gespeichert. Diese müssen Sie höchstens dann
manuell anpassen, wenn Sie ein gescheitertes Update neu ausführen wollen!</span>
</p>

<p class="desc">
<span class="tag-box invisible">
    <span class="inline-tag">Serendipity-Variablen!\$serendipity['dbName']</span>
    <span class="inline-tag">Serendipity-Variablen!\$serendipity['dbPrefix']</span>
    <span class="inline-tag">Serendipity-Variablen!\$serendipity['dbHost']</span>
    <span class="inline-tag">Serendipity-Variablen!\$serendipity['dbUser']</span>
    <span class="inline-tag">Serendipity-Variablen!\$serendipity['dbPass']</span>
    <span class="inline-tag">Serendipity-Variablen!\$serendipity['dbType']</span>
    <span class="inline-tag">Serendipity-Variablen!\$serendipity['dbPersistent']</span>
</span>
<code class="item var">$serendipity['dbName']
$serendipity['dbPrefix']
$serendipity['dbHost']
$serendipity['dbUser']
$serendipity['dbPass']
$serendipity['dbType']
$serendipity['dbPersistent']</code>
<span class="desc-info">Enthält die Zugangsdaten und Parameter der Datenbankverbindung, mit der
Serendipity installiert ist. Diese Variablen können normal über die
Serendipity-Konfiguration eingestellt werden und sollten daher in dieser
Datei nur geändert werden, wenn Sie die Datenbank oder den Server
gewechselt haben und nicht mehr auf Ihre Serendipity-Installation
zugreifen können.</span>
</p>

<p class="desc">
<span class="label invisible" id="noautodiscovery">noautodiscovery</span>
<span class="tag-box invisible">
    <span class="inline-tag">Trackbacks!deaktivieren</span>
    <span class="inline-tag">Fehler!Trackbacks</span>
    <span class="inline-tag">Deaktivieren!Trackbacks</span>
    <span class="inline-tag">Serendipity-Variablen!\$serendipity['noautodiscovery']</span>
</span>
<code class="item var">$serendipity['noautodiscovery']</code>
<span class="desc-info">Wenn Serendipity nicht versuchen soll, automatische Trackbacks an URLs zu
schicken, die Sie in Ihren Artikeln angegeben haben, können Sie die
Variable <code class="nobreak">$serendipity['noautodiscovery']</code> auf <code>true</code> setzen.
Standardmäßig ist die Variable überhaupt nicht gesetzt und daher
deaktiviert (<code>false</code>).</span>
</p>

<p class="desc">
<span class="tag-box invisible">
    <span class="inline-tag">Pingback!deaktivieren</span>
    <span class="inline-tag">Fehler!Pingbacks</span>
    <span class="inline-tag">Deaktivieren!Pingbacks</span>
    <span class="inline-tag">Serendipity-Variablen!\$serendipity['pingbackFetchPage']</span>
</span>
<code class="item var">$serendipity['pingbackFetchPage']</code>
<span class="desc-info">
    <span class="box">
        Wenn Serendipity einen Pingback (siehe Seite <span class="pageref"><a href="#trackback">trackback</a></span>)
        empfängt, bedeutet dies, dass ein fremdes Blog sich auf Ihr Blog bezieht,
        aber kein Trackback senden möchte. Ein Pingback ist somit eine reduzierte
        Form des Trackbacks.
    </span>

    <span class="box">
        Serendipity kann ab Version 1.3 Pingbacks vollständig auswerten. Da ein
        Pingback üblicherweise nur die URL des fremden Blogs enthält, kann es
        im Gegensatz zu einem Trackback keine Textauszüge mitliefern. Somit
        würden Sie nur die URL des fremden Blogs in Ihrem Artikel auffinden.
    </span>

    <span class="box">
        Um Textauszüge zu beziehen, kann Serendipity die fremde URL öffnen und
        dort die ersten Zeichen des Textes mit einbinden. Damit dies erfolgen
        kann, muss die Variable <code class="nobreak">$serendipity['pingbackFetchPage']</code> auf
        <code>true</code> gesetzt werden.
    </span>

    <span class="tag-box invisible">
        <span class="inline-tag">Performance</span>
    </span>
    <span class="box">
        Standardmäßig ist diese Variable nicht gesetzt, da das Öffnen einer
        fremden URL zu einem Performanceverlust des Blogs führen kann und auch
        DDoS-Angriffe [*]
        <span class="footnote"><i class="fa fa-info-circle"></i> 
        <span class="tag-box invisible">
            <span class="inline-tag">DDoS</span>
        </span>
        Rasche Zugriffe in Folge von mehreren
        automatisierten Browsern, die sämtliche Ressourcen Ihres Webservers
        aufbrauchen oder durch manipulierte URLs Timeouts erzeugen
        können.</span><!-- footnote --> erleichtert.
    </span>
</span>
</p>

<p class="desc">
<span class="tag-box invisible">
    <span class="inline-tag">Serendipity-Variablen!\$serendipity['pingbackFetchPageMaxLength']</span>
</span>
<code class="item var">$serendipity['pingbackFetchPageMaxLength']</code>
<span class="desc-info">Bei empfangenen Pingbacks wird standardmäßig nur eine beschränkte Anzahl an
Zeichen der sendenden Blog-Seite abgerufen. Diese Zeichen werden später verwendet,
um den Inhalt des Pingbacks zu füllen. Die Anzahl der Zeichen, die ausgelesen werden,
können Sie über die Variable <code class="nobreak">$serendipity['pingbackFetchPageMaxLength']</code>
steuern, standardmäßig sind dies 200 Zeichen.</span>
</p>

<p class="desc">
<span class="label invisible" id="referrerXSRF">referrerXSRF</span>
<span class="tag-box invisible">
    <span class="inline-tag">Fehler!Ihr Browser hat keinen gültigen HTTP-Referrer übermittelt</span>
    <span class="inline-tag">XSRF</span>
    <span class="inline-tag">CSRF</span>
    <span class="inline-tag">Serendipity-Variablen!\$serendipity['referrerXSRF']</span>
    <span class="inline-tag">HTTP-Referrer</span>
</span>
<code class="item var">$serendipity['referrerXSRF']</code>
<span class="desc-info">
    <span class="box">
        Serendipity verfügt über zwei Methoden zur Sicherung des Blogs gegen
        <em>XSRF-Angriffe</em> (siehe Seite <span class="pageref"><a href="#XSRF">XSRF</a></span>). Wenn Sie die Variable
        <code class="nobreak">$serendipity['referrerXSRF']</code> auf <code>true</code> setzen, wird
        Serendipity bei einer fehlenden HTTP-Referrer-Kopfzeile (vom
        Browser übermittelt) eine angeforderte Aktion nicht ausführen. Diese
        Option können Sie aktivieren, wenn Sie Ihr Blog gegen zusätzliche
        Attacken sichern möchten; Sie müssen aber sicherstellen, dass alle Redakteure
        des Blogs in ihrem Browser die Übermittlung von HTTP-Referrern aktiviert
        haben und auch kein etwaiger Proxyserver diese Kopfzeilen herausfiltert.
    </span>

    <span class="box">
        Ist der Wert auf <code>false</code> gesetzt, wird Serendipity eine Warnmeldung
        ausgeben, sobald Ihr Browser oder Proxyserver bei der Ausführung einer
        Aktion keinen HTTP-Referrer ausliefert.
    </span>
</span>
</p>

<p class="desc">
<span class="tag-box invisible">
    <span class="inline-tag">Serendipity-Variablen!\$serendipity['expose_s9y']</span>
</span>
<code class="item var">$serendipity['expose_s9y']</code>
<span class="desc-info">Standardmäßig ist diese Variable auf <code>true</code> gesetzt. Dies bedeutet,
dass Serendipity einige HTTP-Header an den Browser übermittelt, die
darauf hindeuten, dass Serendipity auf dem Server eingesetzt wird. Wenn
Sie dies aus Sicherheitsgründen vermeiden wollen, können Sie die Variable
auf <code>false</code> setzen.
    </span>
</p>

<p class="desc">
<span class="tag-box invisible">
    <span class="inline-tag">HTTP-Authentifikation</span>
    <span class="inline-tag">Authentifikation!via HTTP</span>
    <span class="inline-tag">Login!via HTTP</span>
    <span class="inline-tag">Geschützte RSS-Feeds</span>
    <span class="inline-tag">Fehler!Login</span>
</span>
<span class="label invisible" id="HTTP-Authentifikation">HTTP-Authentifikation</span>
<span class="tag-box invisible">
    <span class="inline-tag">Serendipity-Variablen!\$serendipity['useHTTP-Auth']</span>
</span>
<code class="item var">$serendipity['useHTTP-Auth']</code>
<span class="desc-info">
    <span class="box">
        Diese Variable ist
        standardmäßig auf <code>true</code> gesetzt und Serendipity ermöglicht damit
        eine HTTP-Authentifikation. Diese HTTP-Authentifikation benutzt die
        Abfrage eines Benutzernamens und Passworts und ist Teil des
        HTT-Protokolls. Ihr Browser zeigt daher für die Autorisation ein
        Popup-Fenster an, das den Benutzernamen und das Passwort abfragt. Die
        eingegebenen Daten dienen dann für den Login eines
        Serendipity-Benutzers und können alternativ zum Login über das Backend
        dienen.
    </span>

    <span class="box">
        Der große Vorteil der HTTP-Autorisation ist, dass man sich auch ohne
        Interaktion des Benutzers mit dem Aufrufen einer URL einloggen kann:
    </span>

    <span class="box">
        <span id="pre-style"><code class="html">
            http://John+Doe:john@www.example.com/serendipity/
        </code></span>
    </span>

    <span class="box">
        Benutzername und Passwort müssen der URL vorangestellt werden.
        Besonders hilfreich ist diese Art der Authentifikation für RSS-Feeds. Da
        diese von externen Programmen (RSS-Readern) aufgerufen werden, können Sie
        häufig nicht auf Ihren vorhandenen Login ins Backend zugreifen. Ohne
        diesen Login kann Serendipity nicht zuordnen, welcher Benutzergruppe man
        angehört, und so würde man eventuell lesegeschützte Artikel nicht lesen
        können. Gibt man als URL für den RSS-Reader jedoch diese authentifizierte
        URL an, kann der Login sozusagen durchgereicht werden.
    </span>

    <span class="box">
        Wenn Sie das Authentifikations-Popup des Browsers verwenden wollen,
        können Sie an jede URL den Parameter <code>http_auth=true</code> anhängen, also
        zum Beispiel:
    </span>

    <span class="box">
        <span id="pre-style"><code class="html">
            http://www.example.com/serendipity/index.php?http_auth=true
        </code></span>
    </span>

    <span class="box">
        Die HTTP-Authentifikation kann nur bei Apache-Webservern benutzt werden,
        bei denen PHP als Modul (nicht als CGI) eingebunden wurde. Diese Art der
        Authentifikation kann man häufig auch mittels einer <code>.htaccess</code>-Datei
        herbeiführen:
    </span>

    <span class="box">
        <span id="pre-style"><code id="httpauth" class="conf">AuthType&nbsp;Basic<br>
        AuthName&nbsp;"Authorisation:&nbsp;User&nbsp;erforderlich"<br>
        AuthUserFile&nbsp;/etc/passwd<br>
        require&nbsp;valid-user</code></span><!-- snippet -->
    </span>

    <span class="box">
        Sollten Sie manuell derartige Kommandos eingebaut haben, um das Frontend
        von Serendipity zu schützen, wird Serendipity diese automatisch auch zum
        Login in das Backend verwenden. Daher müssten die Benutzernamen, die Sie
        zum HTTP-Auth-Login verwenden, identisch sein mit den Zugangsdaten der
        Serendipity-Benutzerdatenbank. Sollte dies nicht der Fall sein, müssen
        Sie die Variable <code class="nobreak">$serendipity['useHTTP-Auth']</code> auf <code>false</code>
        setzen und damit die HTTP-Authentifikation im Backend unterbinden.
    </span>

    <span class="box">
        Einen Benutzernamen und ein Passwort, das Sie zum Login einsetzen wollen,
        können Sie auch notfalls an jede URL mit den Parametern
        <code>http_auth_user</code> und <code>http_auth_pw</code> anhängen:
    </span>

    <span class="box">
        <span id="pre-style"><code class="html">
            http://www.example.com/serendipity/index.php?http_auth_user=John+Doe&amp;http_auth_pw=john
        </code></span>
    </span>

    <span class="tag-box invisible">
        <span class="inline-tag">Sicherheit</span>
    </span>
    <span class="box">
        Bei einem derartigen Aufruf müssen Sie darauf achten, dass Ihr
        Benutzername und Passwort im Klartext an den Webserver übermittelt werden
        und dabei möglicherweise in Zugriffs-Logfiles auftauchen könnten. Nutzen
        Sie daher diese Art des Logins nur in vertrauenswürdigen Umfeldern und
        wenn die obige Variante mittels Apache-PHP-Modul nicht möglich ist.
    </span>

    <span class="tag-box invisible">
        <span class="inline-tag">HTTPS</span>
    </span>
    <span class="box">
        Die sicherste Methode zum Login bleibt jedoch nach wie vor der Zugriff
        über das <code>HTTPS</code>-Protokoll.
    </span>
</span>
</p>

<p class="desc">
<span class="tag-box invisible">
    <span class="inline-tag">Serendipity-Variablen!\$serendipity['use_PEAR']</span>
    <span class="inline-tag">PEAR</span>
</span>
<code class="item var">$serendipity['use_PEAR']</code>
<span class="desc-info">
    <span class="box">
        <em>PEAR</em> ist eine Sammlung von PHP-Bibliotheken (siehe Kapitel
        <span class="reference">PEAR</span> auf Seite <span class="pageref"><a href="#PEAR">PEAR</a></span>), die Serendipity für einige
        Funktionalitäten benötigt. Serendipity liefert diese Bibliotheken zwar
        mit, aber da sie oft auf Servern vorhanden sind und besser gewartet werden,
        bevorzugt Serendipity standardmäßig die Server-Bibliotheken.
    </span>

    <span class="box">
        Dies kann jedoch möglicherweise zu Problemen führen, wenn Ihr Server ganz
        alte PEAR-Bibliotheken anbietet oder es zu Zugriffsrechtsproblemen kommt.
        In so einem Fall können Sie die Variable <code class="nobreak">$serendipity['use_PEAR']</code>
        auf <code>false</code> setzen und damit erzwingen, dass Serendipity seine
        eigenen Bibliotheken benutzt.
    </span>
</span>
</p>

<p class="desc">
<span class="tag-box invisible">
    <span class="inline-tag">Serendipity-Variablen!\$serendipity['CacheControl']</span>
    <span class="inline-tag">Performance</span>
    <span class="inline-tag">Traffic</span>
</span>
<code class="item var">$serendipity['CacheControl']</code>
<span class="desc-info">
    <span class="box">
        Falls diese Variable auf <code>false</code> gesetzt ist, wird Serendipity
        spezielle HTTP-Header senden, die es dem Browser ermöglichen, die Seiten
        des Blogs lokal zwischenzuspeichern. Dies beschleunigt den Aufruf von
        bereits besuchten Blog-Seiten ungemein.
    </span>

    <span class="box">
        Wenn Sie jedoch ein Blog führen, in dem es häufig Änderungen im
        Minutentakt gibt, kann das Zwischenspeichern dazu führen, dass Ihre
        Besucher ältere Inhalte sehen und nicht merken, dass es neue Daten gibt.
    </span>

    <span class="box">
        Standardmäßig ist die Variable auf
        <code>true</code> gesetzt und verbietet daher dieses Caching zugunsten stets
        aktueller Inhalte.
    </span>
</span>
</p>

<p class="desc">
<span class="tag-box invisible">
    <span class="inline-tag">Serendipity-Variablen!\$serendipity['version']</span>
    <span class="inline-tag">Update</span>
</span>
<code class="item var">$serendipity['version']</code>
<span class="desc-info">Im Gegensatz zu <code class="nobreak">$serendipity['versionInstalled']</code> gibt
diese Variable nicht an, welche Version gerade
<em>aktiviert</em> ist, sondern welcher Version die Dateien auf dem Server
entsprechen. Dieser minimale Unterschied ist dann wichtig, wenn Sie
gerade eine neue Serendipity-Version hochgeladen haben, denn Serendipity
wird aufgrund eines Unterschieds in den Versionsnummern der beiden
genannten Variablen erkennen, ob und wenn ja, welches Update ausgeführt
werden soll. Ändern Sie diese Versionsnummer daher nicht eigenständig.</span>
</p>

<p class="desc">
<span class="tag-box invisible">
    <span class="inline-tag">Serendipity-Variablen!\$serendipity['production']</span>
</span>
<code class="item var">$serendipity['production']</code>
<span class="desc-info">
    <span class="box">
        Wenn diese Variable auf <code>true</code> gesetzt ist, befindet sich Serendipity
        im <em>produktiven Einsatz</em>. In diesem Fall werden dann einige
        Fehlermeldungen <em>nicht</em> ausgegeben, die Serendipity in einer
        Testumgebung ansonsten darstellen würde.
    </span>

    <span class="box">
        Um Fehler leichter zu bemerken, ist diese Variable bei allen
        Beta-Versionen und Snapshots von Serendipity standardmäßig deaktiviert
        (<code>false</code>), damit Fehlermeldungen ausgegeben werden. In allen finalen
        Versionen ist sie standardmäßig aktiviert.
    </span>
</span>
</p>

<p class="desc">
<span class="label invisible" id="allowdatemanipulation">allowdatemanipulation</span>
<span class="tag-box invisible">
    <span class="inline-tag">Serendipity-Variablen!\$serendipity['allowDateManipulation']</span>
    <span class="inline-tag">Zeitangaben!von Artikeln verändern</span>
</span>
<code class="item var">$serendipity['allowDateManipulation']</code>
<span class="desc-info">Standardmäßig ist diese Variable auf <code>true</code> gesetzt und ermöglicht
es dadurch einem Redakteur, eine beliebige Uhrzeit für die
Veröffentlichung seines Artikels einzutragen. Wenn Sie diese Variable auf
<code>false</code> setzen, wird immer nur die aktuelle Uhrzeit für einen Artikel
eingetragen, und Redakteuren (auch Administratoren!) ist es nicht
erlaubt, das Datum zu verändern. Diese Option ist daher bei solchen Blogs
sinnvoll, die streng auf <em>ehrliche</em> Zeitangaben setzen.</span>
</p>

<p class="desc">
<span class="tag-box invisible">
    <span class="inline-tag">Caching</span>
    <span class="inline-tag">Fehler!RSS-Feeds</span>
</span>
<span class="label invisible" id="Caching-Variablen">Caching-Variablen</span>
<span class="tag-box invisible">
    <span class="inline-tag">Serendipity-Variablen!\$serendipity['max_last_modified']</span>
    <span class="inline-tag">Serendipity-Variablen!\$serendipity['max_fetch_limit']</span>
</span>
<code class="item var">$serendipity['max_last_modified']</code>
<code class="item var">$serendipity['max_fetch_limit']</code>
<span class="desc-info">
    <span class="box">
        Diese beiden Variablen beziehen sich auf das Caching der RSS-Feeds (siehe
        Seite <span class="pageref"><a href="#Caching von RSS-Feeds">Caching von RSS-Feeds</a></span>).
    </span>

    <span class="box">
        Wenn ein Artikel von Ihnen überarbeitet wird oder einen neuen Kommentar
        erhält, ändert dies nichts an dem Veröffentlichungsdatum Ihres
        Blog-Artikels. Ein RSS-Feed würde daher Änderungen an einem Artikel nicht
        an die Benutzer weiterreichen. Da so ein Verhalten unerwünscht ist, sorgt
        Serendipity bei jeder Aktualisierung (auch bei Kommentaren) eines
        Artikels dafür, dass ein Aktualisierungsdatum auf den aktuellen Zeitpunkt
        gesetzt wird. Der RSS-Feed richtet sich nach diesem Aktualisierungsdatum
        und zeigt trotz aktiviertem RSS-Caching daraufhin die neuen Einträge an.
    </span>

    <span class="box">
        Da RSS-Reader Einträge eindeutig anhand einer ID oder ihrer URL
        identifizieren, kann das Programm den aktualisierten Artikel erneut
        einlesen und Sie über Änderungen (und neue Kommentare) informieren.
    </span>

    <span class="box">
        Die Variable <code class="nobreak">$serendipity['max_last_modified']</code> legt nur fest,
        wie alt ein Artikel maximal (relativ zum aktuellen Zeitpunkt) sein darf,
        damit Änderungen am Artikel in RSS-Feeds als <em>neu</em> angesehen werden.
        Schließlich interessiert es einen Leser Ihres RSS-Feeds sicher nicht,
        wenn Sie einen zwei Jahre alten Artikel überarbeiten oder jemand den ersten
        Eintrag Ihres Blogs kommentiert. Diese Variable enthält eine Angabe in
        Sekunden, die der Abstand zwischen Veröffentlichungsdatum und aktuellem
        Zeitpunkt maximal betragen darf. Ist ein Artikel älter als diese
        Zeitangabe, wird er nicht als <em>aktualisiert</em> markiert. Standardmäßig
        ist <code class="nobreak">$serendipity['max_last_modified']</code> auf 604800 Sekunden [*]
        <span class="footnote"><i class="fa fa-info-circle"></i> Das entspricht sieben Tagen. Für Programme ist es einfacher,
        einheitlich mit Sekunden zu arbeiten, auch wenn die Angabe fürs
        menschliche Auge etwas merkwürdig wirken mag.</span><!-- footnote --> gesetzt.
    </span>

    <span class="tag-box invisible">
        <span class="inline-tag">Traffic</span>
    </span>
    <span class="box">
        Die zweite Variable <code class="nobreak">$serendipity['max_fetch_limit']</code> legt fest,
        wie viele Artikel ein Benutzer, der Ihren RSS-Feed seit langem nicht mehr
        aufgerufen hat, maximal empfangen darf. Standardmäßig ist der Wert auf
        <code>50</code> Artikel gesetzt, um nicht zu viel Bandbreite zu verschwenden und
        potenziellen Missbrauch einzudämmen.
    </span>
</span>
</p>

<p class="desc">
<span class="tag-box invisible">
    <span class="inline-tag">Serendipity-Variablen!\$serendipity['trackback_filelimit']</span>
</span>
<code class="item var">$serendipity['trackback_filelimit']</code>
<span class="desc-info">
    <span class="box">
        Wenn Serendipity ein Trackback zu einem Artikel schicken will, muss es
        die URL zu dem fremden Artikel öffnen. Dies macht Serendipity mit allen
        URLs, auf die Sie in einem Artikel verweisen, um automatisch
        herauszufinden, zu welchen URLs ein Trackback gesendet werden soll. Wenn
        Sie jedoch auf große Dateien (Videos, Audio-Dateien) verweisen, muss
        Serendipity auch diese URL vollständig abrufen. Das kann dann dazu
        führen, dass Serendipity sehr lange braucht, um Trackbacks auszuwerten, und
        <span class="tag-box invisible">
            <span class="inline-tag">Performance</span>
            <span class="inline-tag">Traffic</span>
        </span>
        währenddessen auch viel Bandbreite/Traffic aufbraucht.
    </span>

    <span class="box">
        Sollten Sie Trackbacks aber nicht pauschal deaktivieren wollen (siehe Seite
        <span class="pageref"><a href="#noautodiscovery">noautodiscovery</a></span>), können Sie die maximale Dateigröße
        (in Bytes) in der Variable <code class="nobreak">$serendipity['trackback_filelimit']</code>
        eintragen. Das Standardlimit steht derzeit auf <code>150</code>kb. Bitte
        beachten Sie, dass Serendipity nicht immer von vornherein beim Besuch
        einer URL weiß, wie groß der Inhalt sein wird. Daher kann es auch passieren, dass
        URLs mit größeren Inhalten zwangsweise aufgerufen werden. In diesem Fall
        hilft das Plugin <code>Trackbacks kontrollieren</code> (siehe Seite
        <span class="pageref"><a href="#trackbacks">trackbacks</a></span>), mit dem Sie Trackbacks gezielt auf spezielle URLs
        einschränken können.
    </span>
</span>
</p>

<p class="desc">
<span class="label invisible" id="fetchlimit">fetchLimit</span>
<span class="tag-box invisible">
    <span class="inline-tag">Serendipity-Variablen!\$serendipity['fetchLimit']</span>
    <span class="inline-tag">Serendipity-Variablen!\$serendipity['RSSfetchLimit']</span>
    <span class="inline-tag">Serendipity-Variablen!\$serendipity['CBAfetchLimit']</span>
    <span class="inline-tag">Ausgaben!von Artikeln verändern</span>
</span>
<code class="item var">$serendipity['fetchLimit']</code>
<code class="item var">$serendipity['RSSfetchLimit']</code>
<code class="item var">$serendipity['CBAfetchLimit']</code>
<span class="desc-info">
    <span class="box">
        Diese drei <code>limit</code> Variablen beziehen sich auf den Datenbank Auszüge, in etwa:
        "Suche xxx in TABELLE limit 0, 15" für die Eintragsnavigationen.
        Ihre Verschiedenheit beruht auf unterschiedlichen Ausgabe Anforderungen.
        Dies sind Blog Einträge, RSS Feed Ausgaben und Kommentar Ausgaben.
    </span>

    <span class="box">
        Die <code class="nobreak">$serendipity['fetchLimit']</code>, sowie die <code class="nobreak">$serendipity['RSSfetchLimit']</code>
        Variablen können und sollen natürlich unter <span class="mbold">Konfiguration</span>
        - <span class="mbold">Design und Optionen</span> per Konfigurationsoption eingestellt werden.
        Die Zahl 15 stammt übrigens aus frühen Zeiten des Internets als RSS Feeds generell
        mit <code>15</code> limitiert wurden. Deshalb wurde diese Zahl damals auch für
        die Einstellung der Blog "fetchLimit" Variable übernommen, obwohl sicherlich,
        je nachdem wie Sie ihr Blog nutzen und wie lang ihre Blogeinträge werden,
        eine engere Limitierung des Ausgabefensters besser passt.
    </span>

    <span class="box">
        Die <code class="nobreak">$serendipity['CBAfetchLimit']</code> Variable allerdings ist eine
        dieser "versteckten" Variablen, die nur per Hand überschrieben werden können
        und behandelt die Anzahl der zugleich dargestellten Kommentare auf den comments_by_author
        <code>/comments/</code> Zusammenfassungsseiten (siehe Seiten <span class="pageref">
        <a href="#Permalinks-Frontend">Permalinks-Frontend</a> und <span class="pageref">
        <a href="#U342">Kommentarübersichten</a></span>).
        Ihr ungesetzter default Wert sind <code>10</code> Kommentare per Seite.
        Erfahrungsgemäß ist hier aber etwa <code>20</code> die bessere Einstellung,
        da ja jemand diese Kommentar Archiv Seiten nur aufruft, um schnell einen
        Überblick der letzten Kommentare zu erhalten.
    </span>
</span>
</p>

<p class="desc">
<span class="tag-box invisible">
    <span class="inline-tag">iframe</span>
    <span class="inline-tag">Fehler!iframes</span>
    <span class="inline-tag">Serendipity-Variablen!\$serendipity['use_iframe']</span>
</span>
<code class="item var">$serendipity['use_iframe']</code>
<span class="desc-info">
    <span class="box">
        Wenn Serendipity einen Artikel speichert, führt es diese Aktionen in
        einem separaten Bereich der Webseite aus, den Serendipity oberhalb der
        Artikelmaske einbettet. Ein derart eingebetteter Bereich nennt sich
        <em>iframe</em> und kann von allen halbwegs modernen Browsern angezeigt
        werden.
    </span>

    <span class="box">
        Bei Browsern auf Handys und PDAs könnte diese Technik jedoch
        möglicherweise Probleme machen, daher können Sie die Variable
        <code class="nobreak">$serendipity['use_iframe']</code> auf <code>false</code> setzen, um Serendipity
        ohne diese Technik nutzen zu können.
    </span>

    <span class="box">
        Wenn iframes deaktiviert sind, können mögliche Fehler beim Speichern
        eines Artikels (hauptsächlich Trackback- und Plugin-Fehler) jedoch eher
        dazu führen, dass der gesamte Artikel nicht gespeichert wird. Daher
        sollten Sie iframes nur im größten Notfall deaktivieren und vorzugsweise
        lieber auf einen anderen Browser zurückgreifen. Beachten Sie auch, dass
        das Deaktivieren der iframes global für alle Redakteure gilt.
    </span>
</span>
</p>

<p class="desc">
<span class="tag-box invisible">
    <span class="inline-tag">Serendipity-Variablen!\$serendipity['languages']</span>
    <span class="inline-tag">Uebersetzungssprache@Übersetzungssprache!neu erstellen</span>
</span>
<code class="item var">$serendipity['languages']</code>
<span class="desc-info">
    <span class="box">
        In dieser Variable speichert Serendipity die Liste aller für Besucher
        und Redakteure verfügbaren Sprachen. Die dort aufgeführten Kürzel
        müssen eine entsprechende Sprachdatei
        <code>lang/serendipity_lang_XX.inc.php</code> aufweisen, damit Sie die
        Sprache auch wirklich benutzen können. Wenn Sie also eine neue
        Übersetzung von Serendipity (zB. für Plattdeutsch) erstellen
        wollen, können Sie die neue Sprache zum einen in diese Variable
        miteintragen und zum anderen die entsprechende Sprachdatei im
        <code>lang</code>-Unterverzeichnis erstellen.
    </span>

    <span class="box">
        Wenn Sie die Liste der verfügbaren Sprachen für Redakteure
        einschränken wollen, können Sie die überflüssigen Sprachen aus der
        Variablenliste entfernen.
    </span>
</span>
</p>

<p class="desc">
<span class="tag-box invisible">
    <span class="inline-tag">Serendipity-Variablen!\$serendipity['autolang']</span>
</span>
<code class="item var">$serendipity['autolang']</code>
<span class="desc-info">Die Sprache, die Serendipity standardmäßig bei der Installation benutzt
(wenn keine andere Sprache vom Browser präferiert wurde), wird in der
Variable <code class="nobreak">$serendipity['autolang']</code> gespeichert. Das dort
eingetragene Kürzel (standardmäßig <code>en</code> für <code>englisch</code>) muss in
der Liste der Variable <code class="nobreak">$serendipity['languages']</code> enthalten sein.</span>
</p>

<p class="desc">
<span class="tag-box invisible">
    <span class="inline-tag">Serendipity-Variablen!\$serendipity['defaultTemplate']</span>
    <span class="inline-tag">Standard-Template</span>
</span>
<code class="item var">$serendipity['defaultTemplate']</code>
<span class="desc-info">
    <span class="box">
        Templates müssen nur die Dateien in ihrem eigenen Verzeichnis mitliefern, die
        von den Standarddateien abweichen. Dadurch können Templates klein
        gehalten werden und ihre Features vom Standard-Template abhängig machen.
    </span>

    <span class="box">
        Wenn eine Template-Datei eines Themes nicht vorhanden ist, wird die Datei
        im Standard-Theme benutzt. Eben jenes Standard-Theme definieren Sie in
        der Variable <code class="nobreak">$serendipity['defaultTemplate']</code> (standardmäßig
        <code>2k11</code>, <em>2k11</em>).
    </span>

    <span class="box">
        Weiterhin gilt als letzter Ausweg immer das Verzeichnis <code>default</code> im
        Template-Verzeichnis.
    </span>
</span>
</p>

<p class="desc">
<span class="label invisible" id="smartyhooks">smartyhooks</span>
<span class="tag-box invisible">
    <span class="inline-tag">Serendipity-Variablen!\$serendipity['skip_smarty_hooks']</span>
</span>
<code class="item var">$serendipity['skip_smarty_hooks']</code>
<span class="desc-info">Wenn der Wert dieser Variable auf <code>true</code> gesetzt wird, können
Smarty-Templates selbständig keinerlei Ereignis-Plugins aufrufen (siehe auch
Seite <span class="pageref"><a href="#serendipity-hookPlugin">serendipity-hookPlugin</a></span>).</span>
</p>


<p class="desc">
<span class="tag-box invisible">
    <span class="inline-tag">Serendipity-Variablen!\$serendipity['skip_smarty_hook']</span>
</span>
<code class="item var">$serendipity['skip_smarty_hook']</code>
<span class="desc-info">Statt den Aufruf aller Ereignis-Plugins mittels
<code class="nobreak">$serendipity['skip_smarty_hooks']</code> zu verbieten, kann dieses Array eine
Liste von Ereignissen (<code>Hooks</code>) enthalten, die ein Smarty-Funktionsaufruf
innerhalb der Template-Dateien <em>nicht</em> aufrufen darf. Jeder Array-Schlüssel
muss hierbei dem Namen des zu verbietenden Hooks enthalten.</span>
</p>

<p>&nbsp;</p><!-- separator -->

<p>Achten Sie darauf, dass, wenn Sie Änderungen in der Datei
<code>serendipity_config.inc.php</code> vornehmen, diese Änderungen bei einem
Update von Serendipity überschrieben werden und Sie sie neu eintragen
müssen. Einzig Änderungen in der Datei
<code>serendipity_config_local.inc.php</code> (sofern sie am Ende der Datei
vorgenommen wurden) behält Serendipity bei einem Update bei.</p>

</article>

</section><!-- section.sub end -->

<section id="U482" class="sub">
<span class="u-toc">4.8.2 - Benutzerverwaltung</span>

<h3 class="subsection" id="benutzerverwaltung">Benutzerverwaltung</h3>

<p class="tagging invisible">
<span class="label invisible" id="Benutzerverwaltung">Benutzerverwaltung</span>
<span class="tag-box invisible">
    <span class="inline-tag">Benutzerverwaltung|see{Backend, Benutzerverwaltung}</span>
    <span class="inline-tag">Backend!Benutzerverwaltung</span>
</span>
</p>

<p>In der Benutzerverwaltung von Serendipity können Sie die Redakteure und
ihre Zugriffsmöglichkeiten verwalten.</p>

<p>Auf dieser Übersichtsseite sehen Sie eine Liste aller Redakteure, auf die
Sie Zugriff haben.</p>

<figure id="fig-usermanagement">
  <a class="lightbox" rel="lightbox" href="media/usermanagement_dm_de.avif" lg-uid="lg4821" data-fallback="media/usermanagement_dm_de.webp">
    <picture>
      <source srcset="media/usermanagement_dm_de.avif" type="image/avif">
      <source srcset="media/usermanagement_dm_de.webp" type="image/webp">
      <img src="media/usermanagement_dm_de.png" alt="usermanagement_dm_de.png" loading="lazy" width="1424" height="800">
    </picture>
    <figcaption>Abbildung 4.24: Einstellungen: Benutzerverwaltung</figcaption>
  </a>
</figure>

<p class="tagging invisible">
<span class="tag-box invisible">
    <span class="inline-tag">Zugriffsrechte</span>
    <span class="inline-tag">Benutzerrang</span>
    <span class="inline-tag">Userlevel</span>
</span>
</p>

<p>In Serendipity werden Zugriffsrechte aufgrund von zwei Eigenschaften
geregelt. Die eine ist der globale <em>Benutzerrang/Userlevel</em>, der der
Zahl 0 (einfacher Redakteur), 1 (Chefredakteur) oder 255 (Administrator)
entspricht. Die zweite ist die Zugehörigkeit zu einer Benutzergruppe,
wobei jede Benutzergruppe flexible Rechte besitzen kann.</p>

<p>
<span class="tag-box invisible">
    <span class="inline-tag">Benutzergruppen</span>
</span>
Die festen Benutzerlevel wurden in Serendipity 0.6 eingeführt und
mittlerweile in fast allen Bereichen durch die Eingliederung in
eigenständige <em>Benutzergruppen</em> abgelöst, die den Zugriff viel
kleinstufiger regeln können. Dennoch gilt der Benutzerrang nach wie vor
als ein Kriterium für einige zusätzliche Plugins. Sollte ein Redakteur
keiner Gruppe zugehörig sein, regelt sein Benutzerrang alle ihm zur
Verfügung stehenden Zugriffsmöglichkeiten.</p>

<p>Grundsätzlich empfiehlt es sich daher weiterhin, neue Redakteure auch
einem Benutzerrang grob zuzuordnen. Bestimmen Sie dabei, ob ein Redakteur
volle Rechte zu einem Blog haben soll (Administrator), ob er als
Chefredakteur über anderen Redakteuren stehen soll oder ob er nur einen ganz
schlichten Redakteur zur Texterfassung darstellen soll.</p>

<p>Ein Administrator sieht in der Übersicht alle Redakteure. Ein
Chefredakteur sieht hier nur noch andere Chefredakteure und normale
Redakteure. Normale Redakteure wiederum sehen nur andere normale
Redakteure.</p>

<p>In der Benutzerübersicht wird dem Benutzerrang entsprechend ein kleines
Symbol dem Namen vorangestellt. Es folgen der Benutzerrang und drei
Links, als ein Button zur Ansicht der Frontend-<span class="mbold">Einträge</span> des Nutzers und zwei administrative
zum <span class="mbold">Bearbeiten</span> und <span class="mbold">Löschen</span> eines Benutzers.</p>

<p>Über den Button <span class="mbold">Einen neuen Benutzer anlegen</span> können Sie einen
neuen Benutzer anlegen, die Oberfläche ähnelt dabei den Optionen bei
der Bearbeitung eines Redakteurs. Beachten Sie beim Bearbeiten eines
Redakteurs, dass Ihre Möglichkeiten zum Ändern der Daten von Ihren
Rechten abhängig sind, daher wird Ihnen unter Umständen beim Speichern
eines Benutzers das Recht verwehrt, diese Änderung durchzuführen.</p>

<article id="XU" class="subsub">

<header>
    <h4 class="subarticle" id="einen-neuen-benutzer-anlegen-oder-einen-benutzer-bearbeiten">Einen neuen Benutzer anlegen oder einen Benutzer bearbeiten</h4>
</header>

<p class="tagging invisible">
<span class="tag-box invisible">
    <span class="inline-tag">Backend!Benutzerverwaltung</span>
    <span class="inline-tag">Benutzer!anlegen</span>
</span>
</p>

<p>Die Oberfläche zum Bearbeiten/Anlegen eines Redakteurs sieht
größtenteils exakt so aus wie die Seite der <span class="mbold">Eigenen
Einstellungen</span> (siehe Kapitel <span class="reference">Eigene Einstellungen</span> ab Seite
<span class="pageref"><a href="#Eigene Einstellungen">Eigene Einstellungen</a></span>). Hier können Sie einen Benutzer so
bearbeiten, als wären es Ihre eigenen Einstellungen. Tun Sie dies bitte
nur mit Vorsicht, denn üblicherweise sollten die Redakteure ihre
Einstellungen selbständig vornehmen.</p>

<p>
<span class="tag-box invisible">
    <span class="inline-tag">Passwort!aendern@ändern</span>
</span>
Das <span class="mbold">Alte Passwort</span> eines Benutzers muss an dieser Stelle nur
eingegeben werden, wenn der Benutzer Ihrem eigenen Redakteurs-Account
entspricht. Andernfalls kann ein Administrator bzw. befugter Benutzer
Änderungen auch ohne Passwortangabe vornehmen und so auch ein neues
Passwort setzen.</p>

<figure id="fig-usermanagement_new">
  <a class="lightbox" rel="lightbox" href="media/new_user_form_dm_de.avif" lg-uid="lg4822" data-fallback="media/new_user_form_dm_de.webp">
    <picture>
      <source srcset="media/new_user_form_dm_de.avif" type="image/avif">
      <source srcset="media/new_user_form_dm_de.webp" type="image/webp">
      <img src="media/new_user_form_dm_de.png" alt="new_user_form_dm_de.png" loading="lazy" width="1412" height="1794">
    </picture>
    <figcaption>Abbildung 4.25: Einstellungen: Benutzerverwaltung: Neuer Redakteur</figcaption>
  </a>
</figure>

<p>&nbsp;</p><!-- separator -->

<p>Abweichend von den <span class="mbold">Eigenen Einstellungen</span> sind in dieser Oberfläche
zusätzlich die folgenden Optionen aufgeführt:</p>

<p class="tagging invisible">
<span class="tag-box invisible">
    <span class="inline-tag">Zugriffsrechte</span>
</span>
</p>

<p class="desc">
<span class="item mbold">Zugriffsrechte</span><!-- menuitem -->
<span class="desc-info">
    <span class="box">
        Die <span class="mbold">Zugriffsrechte</span> entsprechen der groben
        Einordnung eines Benutzers in einen Benutzerrang. Wählen Sie aus dem
        Auswahlfeld, welchem Rang der Benutzer am ehesten entspricht.
    </span>

    <span class="tag-box invisible">
        <span class="inline-tag">Fehler!keine Zugriffsrechte</span>
    </span>
    <span class="box">
        Achten Sie darauf, dass Sie, wenn Sie Ihren eigenen Benutzer bearbeiten,
        Ihre eigenen Rechte beschränken könnten. Wenn Sie versehentlich Ihren
        Benutzerrang auf <em>Redakteur</em> stellen, sind Ihre Rechte erstmal
        eingeschränkt. Um in diesem Fall Ihren Benutzerrang zu reaktivieren,
        müssen Sie das Script <code>fixpriv.php</code> auf Seite <span class="pageref"><a href="#fixpriv.php">fixpriv.php</a></span>
        ausführen.
    </span>
</span>
</p>

<p class="desc">
<span class="tag-box invisible">
    <span class="inline-tag">Gruppenzugehörigkeit</span>
</span><!-- tagbox -->
<span class="item mbold">Gruppenzugehörigkeit</span><!-- menuitem -->
<span class="desc-info">
    <span class="box">
        Die Gruppenzugehörigkeit des gewählten Redakteurs wird über das
        Mehrfachauswahlfeld <span class="mbold">Gruppenzugehörigkeit</span> gesteuert. Ein
        Redakteur kann dabei Mitglied in mehreren Gruppen sein, um alle Rechte
        jeder einzelnen Gruppe zu vereinen.
    </span>

    <span class="box">
        Achten Sie auch hier darauf, dass, wenn Sie sich (versehentlich) als
        Mitglied der Gruppe entfernen, Sie möglicherweise Ihren Zugriff auf
        Serendipity zerstören.
    </span>
</span>
</p>

<p class="desc">
<span class="tag-box invisible">
    <span class="inline-tag">Benutzer!deaktivieren</span>
    <span class="inline-tag">Rechte!entziehen</span>
    <span class="inline-tag">Fehler!keine Backend-Menüs</span>
</span><!-- tagbox -->
<span class="label invisible" id="no-create">no-create</span>
<span class="item mbold">Benutzer deaktivieren / Rechte entziehen</span><!-- menuitem -->
<span class="desc-info">
    <span class="box">
        Eine globale Option, um einem Benutzer sämtliche Zugriffsrechte außer
        dem Einloggen zu verbieten, stellt der Punkt <span class="mbold">Benutzer deaktivieren</span>
        dar. Ist der Wert <span class="mbold">Ja</span> aktiviert, ist ein Benutzer sozusagen
        gesperrt.
    </span>

    <span class="box">
        Dies ist besonders nützlich, wenn Sie Benutzer anlegen wollen, die
        eigentlich nur im Frontend Artikel lesen, aber im Backend
        keinerlei Möglichkeiten nutzen sollen. Über das Plugin <span class="mbold">Freie
        Benutzer-Registrierung</span> können Sie Besuchern ermöglichen, sich selbst
        einen Redakteurs-Account anzulegen (Details siehe Seite <span class="pageref"><a href="#adduser">adduser</a></span>)
        - auch bei solchen Redakteuren wird es oft gewünscht sein, den Zugriff
        stark einzuschränken.
    </span>

    <span class="box">
        Achten Sie darauf, nicht versehentlich für sich selbst diese
        Option zu aktivieren. Auch dies können Sie nur mittels des
        <code>fixpriv.php</code>-Scripts rückgängig machen.
    </span>
</span>
</p>

<p class="desc">
<span class="label invisible" id="rightpublish">rightpublish</span>
<span class="tag-box invisible">
    <span class="inline-tag">Fehler!Einträge können nicht veröffentlicht werden</span>
</span><!-- tagbox -->
<span class="item mbold">Rechte: Einträge veröffentlichen</span><!-- menuitem -->
<span class="desc-info">
    Die Option <span class="mbold">Rechte: Einträge veröffentlichen</span> bestimmt,
    ob es einem Redakteur erlaubt ist, einen Artikel als <em>Veröffentlichung</em> zu
    speichern. Ist diese Option nicht aktiviert, kann ein Benutzer
    lediglich <em>Entwürfe</em> speichern. Diese Entwürfe müssen dann von
    einem höherrangigen Redakteur veröffentlicht werden.
</span>
</p>

<p>&nbsp;</p><!-- separator -->

<p>Beim Erstellen eines neuen Benutzers achten Sie bitte auf die
Voreinstellungen, da zB. die Option <span class="mbold">Rechte: Einträge
veröffentlichen</span> standardmäßig auf <span class="mbold">Nein</span> steht. Möglicherweise
entspricht dies nicht der Einstellung, die Sie beabsichtigen.</p>

</article>

</section><!-- section.sub end -->

<section id="U483" class="sub">
<span class="u-toc">4.8.3 - Gruppenverwaltung</span>

<h3 class="subsection" id="gruppenverwaltung">Gruppenverwaltung</h3>

<p class="tagging invisible">
<span class="label invisible" id="Gruppenverwaltung">Gruppenverwaltung</span>
<span class="tag-box invisible">
    <span class="inline-tag">Gruppenverwaltung|see{Backend, Gruppenverwaltung}</span>
    <span class="inline-tag">Backend!Gruppenverwaltung</span>
</span>
</p>

<p>Ähnlich wie bei der Verwaltung der Benutzer sehen Sie in der Übersicht der
<span class="mbold">Gruppenverwaltung</span> alle angelegten Benutzergruppen.</p>

<figure id="fig-groupmanagement">
  <a class="lightbox" rel="lightbox" href="media/groupmanagement_dm_de.avif" lg-uid="lg4831" data-fallback="media/groupmanagement_dm_de.webp">
    <picture>
      <source srcset="media/groupmanagement_dm_de.avif" type="image/avif">
      <source srcset="media/groupmanagement_dm_de.webp" type="image/webp">
      <img src="media/groupmanagement_dm_de.png" alt="groupmanagement_dm_de.png" loading="lazy" width="1424" height="800">
    </picture>
    <figcaption>Abbildung 4.26: Einstellungen: Gruppenverwaltung</figcaption>
  </a>
</figure>

<p>Sie können von dort aus entweder eine <span class="mbold">Neue Gruppe anlegen</span>,
bestehende Gruppen <span class="mbold">Bearbeiten</span> oder <span class="mbold">Löschen</span>. Beim Löschen
einer Gruppe müssen Sie vorsichtig sein, dass Sie damit bestehenden
Redakteuren nicht den Zugriff auf das Backend vollständig entziehen.</p>

<p>
<span class="tag-box invisible">
    <span class="inline-tag">Benutzergruppen</span>
</span>
Standardmäßig werden in Serendipity drei Benutzergruppen angelegt:
<span class="mbold">Administrator</span>, <span class="mbold">Chefredakteur</span> und <span class="mbold">Redakteur</span>. Jede
dieser Gruppen ist so eingerichtet, dass sie den Zugriff für die
Mitglieder dieser Gruppen so einschränkt, wie es zu erwarten wäre:
Redakteure dürfen nur Artikel anlegen und eigene Artikel bearbeiten,
Chefredakteure dürfen zusätzlich Plugins und das Aussehen des Blogs
verwalten und Einträge anderer Redakteure überarbeiten. Administratoren
dürfen natürlich alles.</p>

<p>Jede Gruppe kann eine große Menge an kleinstufigen Rechten festlegen,
die Sie in der Detailseite einer neuen oder bestehenden Gruppe
ankreuzen können.</p>

<article id="XU" class="subsub">

<header>
    <h4 class="subarticle" id="eine-gruppe-erstellen-oder-bearbeiten">Eine Gruppe erstellen oder bearbeiten</h4>
</header>

<p>Die Detailseite einer Gruppe listet alle
Rechte auf. Sie können dabei nur diejenigen Rechte mittels einer
Auswahlbox auswählen, die Sie selber aufgrund Ihrer
Gruppenmitgliedschaft besitzen.</p>

<figure id="fig-groupmanagement_edit">
  <a class="lightbox" rel="lightbox" href="media/edit_groups_userlevel_editor_dm_de.avif" lg-uid="lg4832" data-fallback="media/edit_groups_userlevel_editor_dm_de.webp">
    <picture>
      <source srcset="media/edit_groups_userlevel_editor_dm_de.avif" type="image/avif">
      <source srcset="media/edit_groups_userlevel_editor_dm_de.webp" type="image/webp">
      <img src="media/edit_groups_userlevel_editor_dm_de.png" alt="edit_groups_userlevel_editor_dm_de.png" loading="lazy" width="1412" height="2052">
    </picture>
    <figcaption>Abbildung 4.27: Einstellungen: Gruppenverwaltung: Gruppe bearbeiten</figcaption>
  </a>
</figure>

<p>Hier im Beispiel der Bearbeitung für die Gruppe <span class="mbold">Redakteur</span>, also der niedrigsten der vorgesehen Gruppenrechte.</p>

<p>Wenn Sie aber als Mitglied der Gruppe <span class="mbold">Chefredakteur</span>
beisielsweise eine neue Gruppe erstellen, können Sie keine Rechte zur Administration
des Blogs vergeben - denn das wäre natürlich eine einfache Art, sich die Blog-Herrschaft
anzueignen.</p>

<p>Bei solchen nicht vergebbaren Rechten sehen Sie also nur den aktuellen
Wert des jeweiligen "gesperrten" Rechtes.</p>

<p>Folgende Rechte stehen zur Verfügung:</p>

<p class="tagging invisible">
<span class="tag-box invisible">
    <span class="inline-tag">Rechte</span>
</span>
</p>

<p class="desc">
<span class="item mbold">Name</span><!-- menuitem -->
<span class="desc-info">Der Name einer Gruppe kann von Ihnen frei gewählt werden und darf auch
Sonderzeichen enthalten. Bei den von Serendipity vordefinierten Gruppen
steht an dieser Stelle nicht der jeweilige Gruppenname, sondern etwas
in der Art <code>USERLEVEL_CHIEF_DESC</code>. Dies wird später bei der
Darstellung durch den jeweiligen "echten" Namen ersetzt, damit bei
anderssprachigen Redakteuren deren Gruppenzugehörigkeit nicht auf
einen deutschen Begriff festgelegt wird.</span>
</p>

<p class="desc">
<span class="item mbold">Gruppenzugehörigkeit</span><!-- menuitem -->
<span class="desc-info">
    <span class="box">
        In dieser Auswahlbox werden alle verfügbaren Redakteure dargestellt. So
        können Sie einer neuen Gruppe relativ leicht bestehende Redakteure
        hinzufügen, indem Sie sie einfach in dem Mehrfachauswahlfeld markieren.
    </span>

    <span class="box">
        Einen Benutzer können Sie auf zwei Arten aus einer Gruppe entfernen:
        Entweder Sie heben die Zugehörigkeit in diesem Mehrfachauswahlfeld auf,
        oder Sie bearbeiten den jeweiligen Benutzer und heben dort die
        Gruppenzuordnung auf.
        Mehrere Redakteurszuordnungen können Sie mit gedrückter
        <em>(Strg/Apfel)</em>-Taste und der linken Maustaste vornehmen.
    </span>
</span>
</p>

<p class="desc">
<span class="tag-box invisible">
    <span class="inline-tag">Zugriffsrechte</span>
    <span class="inline-tag">Benutzerrechte</span>
    <span class="inline-tag">Gruppenrechte</span>
    <span class="inline-tag">Rechte!adminCategories</span>
    <span class="inline-tag">Rechte!adminCategoriesDelete</span>
    <span class="inline-tag">Rechte!adminCategoriesMaintainOthers</span>
</span><!-- tagbox -->
<span class="item mbold">adminCategories, adminCategoriesDelete, adminCategoriesMaintainOthers</span><!-- menuitem -->
<span class="desc-info">
    <span class="box">
        Wenn das Recht <span class="mbold">adminCategories</span> aktiviert ist, kann ein Redakteur
        Kategorien verwalten (neue Kategorien anlegen und bestehende Kategorien
        bearbeiten). Besitzt er das Recht <span class="mbold">adminCategoriesDelete</span>, darf er
        auch Kategorien löschen.
    </span>

    <span class="box">
        Dabei ist der Zugriff nur auf selbst angelegte Kategorien möglich. Erst
        wenn ein Benutzer auch das Recht <span class="mbold">adminCategoriesMaintainOthers</span>
        besitzt, darf er auch Kategorien anderer Benutzer verwalten.
    </span>
</span>
</p>

<p class="desc">
<span class="tag-box invisible">
    <span class="inline-tag">Rechte!adminComments</span>
</span><!-- tagbox -->
<span class="item mbold">adminComments</span><!-- menuitem -->
<span class="desc-info">Damit ein Redakteur die Kommentarübersicht aufrufen kann, muss er das
Recht <span class="mbold">adminComments</span> besitzen. Ohne dieses Recht darf er nur
Kommentare zu von ihm geschriebenen Artikeln (mittels der E-Mail-Benachrichtigung)
freischalten.</span>
</p>

<p class="desc">
<span class="tag-box invisible">
    <span class="inline-tag">Rechte!adminEntries</span>
    <span class="inline-tag">Rechte!adminEntriesMaintainOthers</span>
</span><!-- tagbox -->
<span class="item mbold">adminEntries, adminEntriesMaintainOthers</span><!-- menuitem -->
<span class="desc-info">
    <span class="box">
        Nur wenn ein Redakteur das Recht <span class="mbold">adminEntries</span> besitzt, darf er
        Einträge im Blog erstellen. Dabei darf er nur selbst erstellte Artikel
        im Nachhinein überarbeiten. Wenn er das Recht
        <span class="mbold">adminEntriesMaintainOthers</span> besitzt, darf er zusätzlich auch auf
        Artikel anderer Redakteure zugreifen.
    </span>

    <span class="box">
        Ob ein Benutzer überhaupt Einträge erstellen und veröffentlichen darf,
        wird zusätzlich individuell pro Benutzer in dessen Einstellungen (siehe
        Seite <span class="pageref"><a href="#Benutzerverwaltung">Benutzerverwaltung</a></span>) festgelegt.
    </span>
</span>
</p>

<p class="desc">
<span class="tag-box invisible">
    <span class="inline-tag">Rechte!adminImages</span>
</span><!-- tagbox -->
<span class="item mbold">adminImages</span> und weitere
<span class="desc-info">
    <span class="box">
        Um auf die Mediathek zuzugreifen, benötigt ein Redakteur das
        Recht <span class="mbold">adminImages</span>. Weitere feinstufige Rechte kontrollieren, was
        der Redakteur innerhalb der Mediathek durchführen darf.
    </span>

    <span class="box">
        Mittels <span class="mbold">adminImagesAdd</span> darf er neue Mediendateien hochladen. Das
        Recht <span class="mbold">adminImageDelete</span> ermöglicht es ihm, Mediendateien auch
        wieder zu löschen. Neue Unterverzeichnisse kann er mit dem Recht
        <span class="mbold">adminImagesDirectories</span> anlegen.
        Um Vorschaubilder erneut zu erstellen, benötigt er das Recht
        <span class="mbold">adminImagesSync</span>.
    </span>

    <span class="box">
        Die Mediathek selbst kann ein Redakteur zum Einbinden von Dateien
        nur aufrufen, wenn er das Recht <span class="mbold">adminImagesView</span> besitzt. Um auch
        die Dateien anderer Redakteure anzusehen, benötigt er das Recht
        <span class="mbold">adminImagesViewOthers</span>.
    </span>

    <span class="box">
        Um auch die Mediendaten anderer Redakteure bearbeiten/löschen zu
        können, ist das Recht <span class="mbold">adminImagesMaintainOthers</span> erforderlich.
    </span>
</span>
</p>

<p class="desc">
<span class="tag-box invisible">
    <span class="inline-tag">Rechte!adminImport</span>
</span><!-- tagbox -->
<span class="item mbold">adminImport</span><!-- menuitem -->
<span class="desc-info">Das Recht <span class="mbold">adminImport</span> regelt, ob ein Redakteur die Einträge
fremder Blogsysteme importieren darf.</span>
</p>

<p class="desc">
<span class="tag-box invisible">
    <span class="inline-tag">Rechte!adminPlugins</span>
</span><!-- tagbox -->
<span class="item mbold">adminPlugins</span><!-- menuitem -->
<span class="desc-info">Besitzt ein Redakteur das Recht <span class="mbold">adminPlugins</span>, kann er
Seitenleisten- und Ereignis-Plugins installieren. Dabei wird der
Redakteur als Eigentümer eines Plugins aufgeführt und kann daraufhin
nur seine eigenen Plugins auch konfigurieren. Über das Recht
<span class="mbold">adminPluginsMaintainOthers</span> kann ein Redakteur auch die
Konfiguration fremder Plugins ändern.</span>
</p>

<p class="desc">
<span class="tag-box invisible">
    <span class="inline-tag">Rechte!adminTemplates</span>
</span><!-- tagbox -->
<span class="item mbold">adminTemplates</span><!-- menuitem -->
<span class="desc-info">Um ein anderes Template zu aktivieren und Template-Optionen zu
konfigurieren, benötigt der Redakteur das Recht <span class="mbold">adminTemplates</span>.</span>
</p>

<p class="desc">
<span class="tag-box invisible">
    <span class="inline-tag">Rechte!adminUsers</span>
</span><!-- tagbox -->
<span class="item mbold">adminUsers</span> und weitere
<span class="desc-info">
    <span class="box">
        Ob ein Redakteur die Benutzerverwaltung aufrufen darf, wird mit dem
        Recht <span class="mbold">adminUsers</span> eingestellt. Neue Benutzer darf er mit dem
        Recht <span class="mbold">adminUsersCreateNew</span> anlegen, Benutzer löschen mit
        <span class="mbold">adminUsersDelete</span>.
    </span>

    <span class="box">
        Den Benutzerrang darf er nur verändern, wenn er das Recht
        <span class="mbold">adminUsersEditUserlevel</span> besitzt. Ansonsten darf er nur Redakteure
        niederen Ranges anpassen.
    </span>

    <span class="box">
        Die Gruppenverwaltung darf der Benutzer mit dem Recht
        <span class="mbold">adminUsersGroups</span> anlegen. Besitzt er das Recht
        <span class="mbold">adminUsersMaintainSame</span>, darf er gleichrangige Benutzer
        bearbeiten, und wenn er das Recht <span class="mbold">adminUsersMaintainOthers</span>
        besitzt, darf er auch alle anderen Benutzer verwalten.
    </span>
</span>
</p>

<p class="desc">
<span class="tag-box invisible">
    <span class="inline-tag">Rechte!blogConfiguration</span>
</span><!-- tagbox -->
<span class="item mbold">blogConfiguration</span><!-- menuitem -->
<span class="desc-info">Wenn der Redakteur das Recht <span class="mbold">blogConfiguration</span> besitzt, darf er
Änderungen an der globalen Konfiguration des Blogs vornehmen. Darunter
fallen jedoch keine Änderungen der Datenbankkonfiguration oder
systemnaher Einstellungen.</span>
</p>

<p class="desc">
<span class="tag-box invisible">
    <span class="inline-tag">Rechte!personalConfiguration</span>
    <span class="inline-tag">Rechte!personalConfiguratioNoCreate</span>
</span><!-- tagbox -->
<span class="item mbold">personalConfiguration, personalConfigurationNoCreate</span><!-- menuitem -->
<span class="desc-info">
    <span class="box">
        Die <span class="mbold">Eigenen Einstellungen</span> darf ein Redakteur nur mit dem Recht
        <span class="mbold">personalConfiguration</span> aufrufen.
    </span>

    <span class="box">
        Das Sonderrecht, einen Benutzer zu sperren, darf ein Redakteur nur
        ausüben, wenn er das Recht <span class="mbold">personalConfigurationNoCreate</span> besitzt.
        Analog dazu darf er die Sondervariablen zum Veröffentlichungsrecht von
        Artikeln und den Benutzerrang nur bearbeiten, wenn er über die Rechte
        <span class="mbold">personalConfigurationRightPublish</span> und
        <span class="mbold">personalConfigurationUserlevel</span> verfügt.
    </span>
</span>
</p>

<p class="desc">
<span class="tag-box invisible">
    <span class="inline-tag">Rechte!siteAutoUpgrades</span>
</span><!-- tagbox -->
<span class="item mbold">siteAutoUpgrades</span><!-- menuitem -->
<span class="desc-info">
    <span class="box">
        Das "besondere" Recht <span class="mbold">siteAutoUpgrades</span> wurde
        mit Serendipity Styx 2.8.0 eingeführt und ermöglicht, einem bestimmten
        Benutzer, mit der Gruppeneigenschaft "Chefredakteur", die Erlaubnis zu
        erteilen, das Serendipity Autoupdate über die Backend Startseite auszuführen,
        sobald ein Upgrade vorliegt. Dieses Recht darf nur der Administrator vergeben
        und entziehen und sollte nur auf Multiuser-Systemen mit diesem besonderen
        Bedürfnis vergeben werden.
    </span>

    <span class="box">
        Als empfohlenes Beispiel gehen Sie wie folgt vor:
        Erstellen Sie als Administrator unter "Gruppe" eine neue Gruppe mit beliebigem Namen
        und vergeben in dieser nur die Hauptkategorien, sowie das spezielle Feld <span class="mbold">siteAutoUpgrades</span>
        und das - in diesem Fall - besonders wichtige Feld <span class="mbold">Hidden group / Non-Author</span>,
        damit diese Gruppe für andere Benutzer verborgen bleibt.
        Danach verbinden sie unter "Benutzer" den gewünschten Nutzer mit der Eigenschaft "Chefredakteur"
        zusätzlich mit eben dieser neu erstellten Gruppe.
    </span>
</span>
</p>

<p class="desc">
<span class="tag-box invisible">
    <span class="inline-tag">Rechte!siteConfiguration</span>
</span><!-- tagbox -->
<span class="item mbold">siteConfiguration</span><!-- menuitem -->
<span class="desc-info">
    <span class="box">
        Die systemweite Konfiguration (mit Einstellungen der Datenbank und
        anderer systemnaher Optionen) darf ein Redakteur nur verändern, wenn er
        über das Recht <span class="mbold">siteConfiguration</span> verfügt.
    </span>
</span>
</p>

<p class="desc">
<span class="tag-box invisible">
    <span class="inline-tag">Rechte!userlevel</span>
</span>
<span class="item mbold">userlevel</span><!-- menuitem -->
<span class="desc-info">
    <span class="box">
        Die vordefinierten Gruppen von Serendipity können mit einem
        Benutzerrang verkettet werden. Dies ist nicht veränderbar und lediglich
        für die vordefinierten Gruppen von Interesse. Daher sehen Sie an dieser
        Stelle auch in allen Fällen nur ein <span class="mbold">Nein</span>.
    </span>
</span>
</p>

<p class="desc">
<span class="tag-box invisible">
    <span class="inline-tag">Verbotene Plugins</span>
    <span class="inline-tag">Rechte!verbotene Plugins</span>
</span>
<span class="item mbold">Verbotene Plugins</span><!-- menuitem -->
<span class="desc-info">
    <span class="box">
        <span class="label invisible" id="verboteneplugins">verboteneplugins</span>
        Ist die globale Option <span class="mbold">Sollen persönliche Plugin-Rechte für
        Benutzergruppen aktiviert werden?</span> in der <span class="mbold">Konfiguration</span> des Blogs
        (Abschnitt <span class="mbold">Generelle Einstellungen</span>) aktiviert, werden Sie an
        dieser Stelle eine Liste aller installierten Plugins sehen. Sollte die
        Option (wie standardmäßig der Fall) deaktiviert sein, sehen Sie hier
        nur einen Hinweis, der auf die Konfigurationsoption Bezug nimmt.
    </span>

    <span class="box">
        In dem Mehrfach-Auswahlfeld können Sie alle Plugins auswählen, auf die
        eine Benutzergrupe <em>keinen</em> Zugriff hat. So können Sie
        Redakteure von der Benutzung einiger Plugins gezielt ausnehmen.
    </span>
</span>
</p>

<p class="desc">
<span class="tag-box invisible">
    <span class="inline-tag">Verbotene Ereignisse</span>
    <span class="inline-tag">Rechte!verbotene Ereignisse</span>
    <span class="inline-tag">Ereignisse</span>
    <span class="inline-tag">Events</span>
    <span class="inline-tag">Hooks</span>
</span>
<span class="item mbold">Verbotene Ereignisse</span><!-- menuitem -->
<span class="desc-info">
    <span class="box">
        <span class="label invisible" id="verboteneereignisse">verboteneereignisse</span>
        Die Ereignis-Plugins von Serendipity werden an speziellen Stellen des
        Systems ausgeführt. Diese Stellen nennen sich <em>Ereignisse</em> und
        tragen alle einen individuellen Namen. Plugins können sich zu einem
        <em>Ereignis</em> einklinken und dann beliebige Aktionen durchführen.
    </span>

    <span class="box">
        Wenn man ein Plugin nicht zentral verbieten will, kann über dieses
        Mehrfachfeld gezielt nur eine Menge von gewünschten Ereignissen für die
        Benutzergruppe blockiert werden.
    </span>

    <span class="box">
        Die Namen der Ereignisse lassen auf deren Bedeutung schließen, sind aber
        nur für erfahrenere Benutzer von Belang. Auch von
        Plugins selbst eingebundene Ereignisse sind in dieser Liste enthalten.
    </span>

    <span class="box">
        Eine Übersicht über die üblichen Serendipity-Ereignisse sehen Sie im
        Abschnitt <span class="reference">Ereignisse</span> ab Seite <span class="pageref"><a href="#Ereignisse">Ereignisse</a></span>.
    </span>
</span>
</p>

<p>Wenn Sie eine neue Gruppe anlegen wollen, sehen Sie am Ende der
Eingabemaske den Button <span class="mbold">Neue Gruppe anlegen</span>.</p>

<p>Sollten Sie eine bestehende Gruppe bearbeiten, können Sie die
vorgenommenen Änderungen über den Menüpunkt <span class="mbold">Speichern</span> übernehmen.
Auch hier sehen Sie dann den Button <span class="mbold">Neue Gruppe anlegen</span>. Dieser
dient dazu, eine ganz neue Gruppe mit den konfigurierten Möglichkeiten zu
erstellen. Sie können diese Methode also nutzen, wenn Sie eine Gruppe
erstellen wollen, die einer bestehenden Gruppe ähnelt. Bearbeiten Sie
dann diese Gruppe als Vorlage, nehmen Sie die Änderungen vor und klicken
Sie auf <span class="mbold">Neue Gruppe anlegen</span>, um dies durchzuführen.</p>

</article>

</section><!-- section.sub end -->

</section><!-- section.index end -->

<section id="S490" class="index">
<span class="s-toc">4.9 - Einstellungen (Wartung)</span>

<h3 class="section" id="wartung">Einstellungen (Wartung)</h3>

<p class="tagging invisible">
<span class="tag-box invisible">
    <span class="inline-tag">Wartung|see{Backend, Einstellungen (Wartung)}</span>
    <span class="inline-tag">Backend!Wartung</span>
</span>
</p>

<p>Der Punkt <span class="mbold">Einstellungen (Wartung)</span> ist ein neuer
Menüpunkt im Backend seit der Serendipity Version 2.0.</p>

<p>Auf dieser Sammel-Seite werden alle administrativen Aufgaben zusammengefasst,
die einen Wartungscharakter haben, aber als eigenständiger Menüpunkt entweder zu
gewichtig wären, oder etwas außerhalb der sonstigen Aufgaben stehen. Diese Seite
ist ein wenig so etwas, wie das Pendent, die Rückseite, zur Backend-Startseite,
dem <em>“Dashboard”</em>.</p>

<p>So finden Sie hier die <span class="mbold">Daten importieren</span>
und <span class="mbold">Einträge exportieren</span> Zugänge, das Werkzeug
<span class="mbold">Installation prüfen</span>, die Wartungsaufgabe,
um den Smarty (compile) <span class="mbold">Template-Cache zu leeren</span>,
das bereits beschriebene <span class="mbold">Vorschauen erneuern</span>
Mediendaten-Tool, die neue <span class="mbold">UTF-8-MB4 Migration</span>s-Aufgabe,
die <span class="mbold">Spamblock Wartung</span>, den Zugang zu den
<span class="mbold">Serendipity Logfiles</span>, den
<span class="mbold">Service Wartungs Modus</span>, sofern sie das
<span class="pageref"><a href="#serendipity_event_modemaintain">modemaintain</a></span>
event Plugin installiert haben, und anderes. Wie auch auf der Startseite,
können sich Plugins mit weiteren Aufgaben über den <code>backend_maintenance</code>
Hook hier einhaken.</p>

<figure id="fig-maintenance">
  <a class="lightbox" rel="lightbox" href="media/maintenance_dm_de.avif" lg-uid="lg4901" data-fallback="media/maintenance_dm_de.webp">
    <picture>
      <source srcset="media/maintenance_dm_de.avif" type="image/avif">
      <source srcset="media/maintenance_dm_de.webp" type="image/webp">
      <img src="media/maintenance_dm_de.png" alt="maintenance_dm_de.png" loading="lazy" width="1424" height="1056">
    </picture>
    <figcaption>Abbildung 4.28: Einstellungen: Wartung (Beispielseite)</figcaption>
  </a>
</figure>

<section id="U491" class="sub">
<span class="u-toc">4.9.1 - Installation prüfen</span>

<h3 class="subsection" id="wartung-installation-prüfen">Wartung: Installation prüfen</h3>

<p class="tagging invisible">
<span class="label invisible" id="Installation prüfen">Installation prüfen</span>
<span class="tag-box invisible">
    <span class="inline-tag">Installation!prüfen|see{Backend, Installation prüfen}</span>
    <span class="inline-tag">Backend!Installation!prüfen</span>
    <span class="inline-tag">prüfen</span>
</span>
</p>

<p class="desc-info">
    <span class="box">
        Bei jedem Serendipity Release, bei Styx sogar bei den Beta-Releases,
        wird eine <span class="mbold">Checksumme</span> jeder einzelnen Datei erstellt.
        Den Vergleich mit ihren aktuellen Dateien können Sie hier vornehmen.
    </span>

    <span class="box">
        Natürlicherweise können nur Dateien verglichen werden, die auf ihrem
        augenblicklichen System, wie auch in einem Release Zip zu finden sind.
        Veränderte Dateien, und seien es nur veränderte Speicherzeiten, werden
        Ihnen angemahnt. Dies muss nicht immer einen Fremdzugriff bedeuten, denn oft
        war man es selbst, der eine Datei geöffnet und neu gespeichert hat.
    </span>
</p>

</section><!-- section.sub end -->

<section id="U492" class="sub">
<span class="u-toc">4.9.2 - Template Cache leeren</span>

<h3 class="subsection" id="wartung-template-cache-leeren">Wartung: Template Cache leeren</h3>

<p class="tagging invisible">
<span class="label invisible" id="Template Cache leeren">Template Cache leeren</span>
<span class="tag-box invisible">
    <span class="inline-tag">Template!Cache leeren|see{Backend, Template Cache leeren}</span>
    <span class="inline-tag">Backend!Template!Cache leeren</span>
    <span class="inline-tag">Cache leeren</span>
</span>
</p>

<p class="desc-info">
    <span class="box">
        Die <span class="mbold">Smarty</span> Zwischenschicht Dateien, einer
        simplen Abstraktion von PHP, werden im <code>templates_c</code>-Ordner
        kompiliert und gespeichert. Siehe: System/Plugin/Smarty-Template "Cache"
        <span class="pageref"><a href="#U826">Dateisystem</a></span>
        für temporär erstellte Dateien.
    </span>

    <span class="box">
        Um zu vermeiden, dass sie nach einem Systemupgrade oder einer eigenen
        Veränderung der Template (<code>*.tpl</code>) Dateien möglicherweise
        einem Cache-Effekt unterliegen, können Sie hier die Template Dateien
        ihres Themes löschen lassen. Smarty wird diese sofort neu anlegen, sobald
        ein Request dafür vorliegt.
    </span>
</p>

</section><!-- section.sub end -->

<section id="U493" class="sub">
<span class="u-toc">4.9.3 - Einträge exportieren</span>

<h3 class="subsection" id="wartung-einträge-exportieren">Wartung: Einträge exportieren</h3>

<p class="tagging invisible">
<span class="label invisible" id="Einträge exportieren">Einträge exportieren</span>
<span class="tag-box invisible">
    <span class="inline-tag">Eintrag!exportieren|see{Backend, Einträge exportieren}</span>
    <span class="inline-tag">Backend!Einträge!exportieren</span>
    <span class="inline-tag">Export</span>
</span>
</p>

<p>Hinter dem Menüpunkt <span class="mbold">Einträge exportieren</span> befindet sich nur ein
einzelner Button: <span class="mbold">Vollständigen RSS-Feed exportieren</span>.</p>

<p>Dieser Button ist lediglich ein Link auf Ihren RSS-Feed im Frontend,
dem der Parameter <code>all=1</code> angehängt ist.</p>

<p>Als Ergebnis dieser Exportaktion wird Ihr Browser also einen RSS-Feed
mit allen Ihren Einträgen anzeigen. Diesen RSS-Feed können Sie
speichern und in andere Anwendungen importieren.</p>

<p>Bitte beachten Sie unbedingt, dass der RSS-Feed nur einen ganz kleinen
Teil Ihres Blogs enthält, nämlich nur den Beitragstext sowie die
Überschriften Ihrer Artikel und einige zusätzliche Informationen wie
den Autor, die zugeordnete Kategorie und die Veröffentlichungszeit.
<em>Nicht</em> enthalten sind in diesem RSS-Feed die erweiterten
Artikelinhalte, Benutzerinformationen, alle verfügbaren Kategorien und
noch vieles mehr. Daher ist ein RSS-Export definitiv nicht als Backup
geeignet.</p>

<p>Um die Daten von Serendipity in ein anderes Blogsystem zu überführen, müssen
Sie daher auf manuelle Importwege zurückgreifen (siehe Kapitel <span class="reference">Wartung</span>)
oder auf die Entwicklung eines Import-Moduls des Fremdsystems für Serendipity
hoffen. Serendipity selbst bietet eine Reihe von Import-Modulen für andere
Blogsysteme an. Häufig sind die Datenbankstrukturen fremder Systeme nicht so
weit entfernt voneinander, so dass mit etwas SQL-Kenntnis ein Import
vorgenommen werden kann.</p>

</section><!-- section.sub end -->

<section id="U494" class="sub">
<span class="u-toc">4.9.4 - Daten importieren</span>

<h3 class="subsection" id="wartung-daten-importieren">Wartung: Daten importieren</h3>

<p class="tagging invisible">
<span class="label invisible" id="Daten importieren">Daten importieren</span>
<span class="tag-box invisible">
    <span class="inline-tag">Daten importieren|see{Backend, Daten importieren}</span>
    <span class="inline-tag">Backend!Daten importieren</span>
</span>
</p>

<p>Serendipity kann von anderen Blogsystemen Daten importieren.
Über den Menüpunkt <span class="mbold">Daten importieren</span> finden Sie eine Auswahl
des betreffenden Systems, von dem Sie importieren wollen.</p>

<p>Abhängig vom gewählten System können nur Teile der Daten dieses Systems
importiert werden, und da es bei fremder Software öfter zu Änderungen der
Datenbankstruktur kommt, kann die exakte Versionsnummer beim Import sehr
wichtig sein.</p>

<p>Sollte Ihre Blogsoftware in der Liste nicht aufgeführt sein, ist ein
Import zu Serendipity dennoch nicht unmöglich. Fragen Sie in diesem
Fall in den Serendipity-Styx-Discussions unter <code>https://github.com/ophian/styx/discussions</code> einfach
einmal nach, dort wird man sicher helfen können. Grundsätzlich müssen beim
Import lediglich Daten auf Datenbankbasis eingelesen und in einem neuen Format
gespeichert werden. Wenn Sie über SQL-Kenntnisse verfügen, könnten Sie Ihren
eigenen Importer so relativ einfach entwickeln. Details zur Datenbankstruktur
von Serendipity finden Sie ab Seite <span class="pageref"><a href="#er-schema">er-schema</a></span>.</p>

<p>Nachdem Sie das Quell-Blogsystem (siehe vorherige Abbildung: 4.28) gewählt haben,
klicken Sie auf <span class="mbold">Los!</span>.
Auf der Folgeseite werden Ihnen abhängig vom gewählten System einige
Optionen präsentiert.</p>

<figure id="fig-import-wp">
  <a class="lightbox" rel="lightbox" href="media/maintenance_import_wp_form_dm_de.avif" lg-uid="lg4941" data-fallback="media/maintenance_import_wp_form_dm_de.webp">
    <picture>
      <source srcset="media/maintenance_import_wp_form_dm_de.avif" type="image/avif">
      <source srcset="media/maintenance_import_wp_form_dm_de.webp" type="image/webp">
      <img src="media/maintenance_import_wp_form_dm_de.png" alt="maintenance_import_wp_form_dm_de.png" loading="lazy" width="1420" height="828">
    </picture>
    <figcaption>Abbildung 4.30: Einstellungen: Daten importieren: WordPress</figcaption>
  </a>
</figure>

<p>Meist ist es wichtig, dass die Datenbank des Zielsystems sich auf demselben
Server wie das Serendipity-Blog befindet, um auf die Datensätze
zugreifen zu können. Sie sollten auf jeden Fall mittels einer Software
wie phpMyAdmin vor dem Import ein Backup sowohl der Serendipity-Datenbank
als auch des Quell-Blogs machen.</p>

<p>Der Import-Vorgang in Serendipity kann beliebig oft durchgeführt werden
und führt bei jedem neuen Aufruf zum erneuten Import. So kann es also
passieren, dass bei mehreren Importversuchen die Artikel mehrfach
importiert werden. Nach jedem fehlgeschlagenen Import sollten Sie daher
die möglicherweise bereits erstellten Einträge, Kategorien und Autoren
wieder löschen.</p>

<p>Folgende Blogsysteme stehen zum Import bereit:</p>

<p class="desc">
<span class="tag-box invisible">
    <span class="inline-tag">Import!Serendipity</span>
    <span class="inline-tag">Serendipity</span>
</span>
<span class="item select">Serendipity</span><!-- itemselect -->
<span class="desc-info">
    <span class="box">
        <em>Importiert werden</em>: Daten aus Serendipity Standard Release Datenbank Tabellen.
    </span>

    <span class="box">
        Serendipity Import ist <span class="mbold">kein</span> Serendipity <span class="mbold">Upgrader</span>
        oder <span class="mbold">Installer</span> und dient nur dazu Tabellendaten eines anderen Blogs in
        einen weiterführenden und existierenden anderen Blog zu integrieren.
    </span>

    <span class="box">
        <em>Konfigurationsoptionen</em>: Zugangsdaten, Zeichensatz, HTML-Maskierung, Tabellen-Gruppen, Testlauf.
    </span>

    <span class="box">
        Die Option <span class="mbold">Zeichensatz</span> gibt an, in welchem Zeichensatz das Import-Serendipity
        seine Artikel gespeichert hat. Dies ist in neuen Serendipity-Versionen meist UTF-8, und ISO-8859-1 in älteren.
    </span>

    <span class="tag-box invisible">
        <span class="inline-tag">Sonderzeichen</span>
    </span>
    <span class="box">
        In Serendipity-Artikeln werden früher Sonderzeichen gerne auch mit HTML-Syntax
        maskiert. Aus einem <em>Ä</em> wird so ein <em>&amp;Auml;</em>. Serendipity
        bevorzugt jedoch die <em>echten</em> Sonderzeichen. Wenn Sie die Option
        <span class="mbold">Soll versucht werden, HTML-Instanzen automatisch zu konvertieren</span>
        aktivieren, werden derartige Sonderzeichen wieder korrekt umgewandelt.
    </span>

    <span class="box">
        Sollten Sie beim Import der Einträge später einmal merkwürdige
        Sonderzeichen erhalten, probieren Sie einmal diese beiden Optionen aus.
    </span>

    <span class="box">
        Mit der Option <span class="mbold">Imortiere gruppierte Tabellen</span>
        (aus Gründen der PHP max_execution_time limits bei Blogs mit vielen Einträgen)
        können Sie erzwingen, dass Datenbank Tabelleneinträge nur gruppiert eingelesen
        und importiert werden, was die Last und Ausführungszeit deutlich verringern kann.
    </span>

    <span class="box">
        Die wichtigste Option ist der virtuelle <span class="mbold">Testlauf-Import</span>.
        Mit seiner Hilfe können Sie recht gefahrlos testen, ob beim Auslesen und Importieren
        eventuelle Fehler geschehen würden, die vorher dringend gefixt werden müssten.
        Sie sollten nur Daten <span class="mbold">gleicher</span> Serendipity Versionen
        importieren und immer mit einem vollständigen Backup ihrer Datenbank beginnen.
        Tabellendaten von Plugins, wie zB. Staticpages, sind unbekannt und müssen, ebenso
        wie anderes, zB die Mediendaten in "<code>/uploads</code>", per Hand importiert werden.
    </span>
</span>
</p>

<p class="desc">
<span class="tag-box invisible">
    <span class="inline-tag">Import!WordPress</span>
    <span class="inline-tag">WordPress</span>
</span>
<span class="item select">WordPress</span><!-- itemselect -->
<span class="desc-info">
    <span class="box">
        <em>Importiert werden</em>: Autoren, Passwörter, Kategorien, Kommentare,
        Artikel, Statische Seiten.
    </span>

    <span class="box">
        <em>Konfigurationsoptionen</em>: Zugangsdaten, Zeichensatz, HTML-Maskierung, Trackbacks.
    </span>

    <span class="box">
        Die Option <span class="mbold">Zeichensatz</span> gibt an, in welchem Zeichensatz WordPress
        seine Artikel gespeichert hat. Dies ist in neuen
        WordPress-Versionen meist UTF-8, und ISO-8859-1 in älteren.
    </span>

    <span class="tag-box invisible">
        <span class="inline-tag">Sonderzeichen</span>
    </span>
    <span class="box">
        In WordPress-Artikeln werden oft Sonderzeichen mit HTML-Syntax
        maskiert. Aus einem <em>Ä</em> wird so ein <em>&amp;Auml;</em>. Serendipity
        bevorzugt jedoch die <em>echten</em> Sonderzeichen. Wenn Sie die Option
        <span class="mbold">Soll versucht werden, HTML-Instanzen automatisch zu konvertieren</span>
        aktivieren, werden derartige Sonderzeichen wieder korrekt umgewandelt.
    </span>

    <span class="box">
        Sollten Sie beim Import der Einträge später einmal merkwürdige
        Sonderzeichen erhalten, probieren Sie einmal diese beiden Optionen aus.
    </span>

    <span class="box">
        Mit der Option <span class="mbold">Trackbacks an erkannte Links im Eintrag senden</span>
        können Sie erzwingen, dass alle Trackbacks zu den importierten Einträgen
        nochmals geschickt werden. Üblicherweise ist dies unerwünscht, daher ist
        die Voreinstellung auf <span class="mbold">Nein</span> gesetzt.
    </span>

    <span class="box">
        WordPress kann neben Artikeln auch sogenannte <span class="mbold">attachments</span> und
        <span class="mbold">staticpages</span> speichern. Wenn Sie die Option <span class="mbold">Auch
        attachments und staticpages als normale Blog-Einträge importieren</span>
        aktivieren, werden diese Sonderseiten auch als Serendipity-Artikel
        importiert.
    </span>
</span>
</p>

<p class="desc">
<span class="tag-box invisible">
    <span class="inline-tag">Import!WordPress PostgreSQL</span>
</span>
<span class="item select">WordPress PostgreSQL</span><!-- itemselect -->
<span class="desc-info">
    <span class="box">
        <em>Importiert werden</em>: Autoren, Passwörter, Kategorien, Kommentare, Artikel.
    </span>

    <span class="box">
        <em>Konfigurationsoptionen</em>: Zugangsdaten, Zeichensatz, HTML-Maskierung, Trackbacks.
    </span>

    <span class="box">
        Eine Abspaltung von WordPress stellt <span class="mbold">WordPress PostgreSQL</span> dar.
        Dieses läuft mit einer PostgreSQL- statt MySQL-Datenbank und kann mit
        identischen Optionen (Datenbankeinstellungen, Sonderzeichen,
        Trackbacks) wie <span class="mbold">WordPress</span> importiert werden.
    </span>
</span>
</p>

<p class="desc">
<span class="tag-box invisible">
    <span class="inline-tag">Import!b2Evolution</span>
    <span class="inline-tag">b2Evolution</span>
</span>
<span class="item select">b2Evolution 0.9.0.11 Paris</span><!-- itemselect -->
<span class="desc-info">
    <span class="box">
        <em>Importiert werden</em>: Autoren, Passwörter, Kategorien, Kommentare, Artikel.
    </span>

    <span class="box">
        <em>Konfigurationsoptionen</em>: Zugangsdaten, Zeichensatz, HTML-Maskierung, Trackbacks.
    </span>
</span>
</p>

<p class="desc">
<span class="tag-box invisible">
    <span class="inline-tag">Import!LifeType</span>
    <span class="inline-tag">LifeType</span>
</span>
<span class="item select">LifeType</span><!-- itemselect -->
<span class="desc-info">
    <span class="box">
        <em>Importiert werden</em>: Autoren, Passwörter, Kategorien, Kommentare, Artikel.
    </span>

    <span class="box">
        <em>Konfigurationsoptionen</em>: Zugangsdaten, Zeichensatz, HTML-Maskierung, Trackbacks.
    </span>
</span>
</p>

<p class="desc">
<span class="tag-box invisible">
    <span class="inline-tag">Import!bBlog</span>
    <span class="inline-tag">bBlog</span>
</span>
<span class="item select">bBlog 0.7.4</span><!-- itemselect -->
<span class="desc-info">
    <span class="box">
        <em>Importiert werden</em>: Autoren, Passwörter, Kategorien, Kommentare, Artikel.
    </span>

    <span class="box">
        <em>Konfigurationsoptionen</em>: Zugangsdaten, Zeichensatz, HTML-Maskierung, Trackbacks.
    </span>
</span>
</p>

<p class="desc">
<span class="tag-box invisible">
    <span class="inline-tag">Import!blogger.com</span>
    <span class="inline-tag">blogger.com</span>
</span>
<span class="item select">Blogger</span><!-- itemselect -->
<span class="desc-info">
    <span class="box">
        <em>Importiert werden</em>: Autoren, Kommentare, Artikel.
    </span>

    <span class="box">
        <em>Konfigurationsoptionen</em>: Blogger.com-Exportdatei, Passwort für
        neue Autoren, Zeichensatz, Einteilung erweiterter Artikel.
    </span>

    <span class="box">
        <code>blogger.com</code> stellt einen recht komplizierten Fall des Imports
        dar. Dieses System läuft nicht auf dem eigenen Webserver, sondern wird
        von Google bereitgestellt. Daher gibt es auch keinen direkten
        Datenbankzugriff zum System.
    </span>

    <span class="box">
        Der Blogger-Import besteht aus einer ausführlichen Beschreibung, wie
        man sein Blog bei Blogger.com konfigurieren muss, um eine Exportdatei
        herzustellen. Diese Datei kann dann Serendipity wiederum importieren
        und auslesen.
    </span>

    <span class="box">
        Leider sind die Anweisungen auf die alten Templates von Blogger.com
        bezogen und können bei der neuen Blogger-Oberfläche nicht ohne
        Umstellung angewendet werden.
    </span>

    <span class="box">
        Notfalls müssen Sie daher Ihre Einträge von Blogger mittels des
        <span class="mbold">Allgemeinen RSS-Imports</span> importieren.
    </span>
</span>
</p>

<p class="desc">
<span class="tag-box invisible">
    <span class="inline-tag">Import!boastMachine</span>
    <span class="inline-tag">boastMachine</span>
</span>
<span class="item select">boastMachine 3.0</span><!-- itemselect -->
<span class="desc-info">
    <span class="box">
        <em>Importiert werden</em>: Autoren, Passwörter, Kategorien, Kommentare, Artikel.
    </span>

    <span class="box">
        <em>Konfigurationsoptionen</em>: Zugangsdaten, Zeichensatz, HTML-Maskierung, Trackbacks.
    </span>
</span>
</p>

<p class="desc">
<span class="tag-box invisible">
    <span class="inline-tag">Import!Geeklog</span>
    <span class="inline-tag">Geeklog</span>
</span>
<span class="item select">Geeklog 1.3.11</span><!-- itemselect -->
<span class="desc-info">
    <span class="box">
        <em>Importiert werden</em>: Autoren, Passwörter, Kategorien, Kommentare, Artikel.
    </span>

    <span class="box">
        <em>Konfigurationsoptionen</em>: Zugangsdaten, Zeichensatz, HTML-Maskierung, Trackbacks.
    </span>
</span>
</p>

<p class="desc">
<span class="tag-box invisible">
    <span class="inline-tag">Import!LiveJournal</span>
    <span class="inline-tag">LiveJournal</span>
</span>
<span class="item select">LiveJournal</span><!-- itemselect -->
<span class="desc-info">
    <span class="box">
        <em>Importiert werden</em>: Nur Artikel.
    </span>

    <span class="box">
        <em>Konfigurationsoptionen</em>: XML-Quelldatei, zugeordnete Kategorie, Artikelstatus.
    </span>

    <span class="box">
        Ähnlich wie Blogger.com ist LiveJournal ein Online-Dienst, der
        Ihnen keinen direkten Zugriff auf Ihre geschriebenen Artikel
        ermöglicht.
    </span>

    <span class="box">
        Jedoch ermöglicht es LiveJournal, eine XML-Datei der Einträge zu
        exportieren. Diese können Sie auf Ihren Webserver hochladen und dem
        Importer benennen.
    </span>

    <span class="box">
        Leider können über diese XML-Datei nur die Artikel importiert
        werden und keinerlei andere Informationen.
    </span>
</span>
</p>

<p class="desc">
<span class="tag-box invisible">
    <span class="inline-tag">Import!MovableType</span>
    <span class="inline-tag">MovableType</span>
</span>
<span class="item select">MovableType</span><!-- itemselect -->
<span class="desc-info">
    <span class="box">
        <em>Importiert werden</em>: Autoren, Passwörter, Kategorien, Kommentare, Artikel.
    </span>

    <span class="box">
        <em>Konfigurationsoptionen</em>: MovableType-Datensätze, Zeichensatz, Debugging, Trackbacks.
    </span>

    <span class="box">
        MovableType speichert seine Daten (in älteren Versionen) in einem für
        Serendipity nicht zugänglichen Datencontainer. Von der
        MovableType-Administrationsoberfläche aus können Sie jedoch eine
        Exportdatei erzeugen. Diese Exportdatei können Sie dann auf den
        Serendipity-Server hochladen und den Pfad zu dieser Datei beim
        Importvorgang eintragen.
    </span>

    <span class="box">
        Die MoveableType-Datensätze liegen leider in einem relativ
        "chaotischen" Format vor, und daher kann es leicht zu defekten
        Importen kommen. Daher gibt es eine Debugging-Option und die
        Möglichkeit, trotz defekter Datei lesbare Einträge zu importieren.
    </span>
</span>
</p>

<p class="desc">
<span class="tag-box invisible">
    <span class="inline-tag">Import!Nucleus</span>
    <span class="inline-tag">Nucleus</span>
</span>
<span class="item select">Nucleus</span><!-- itemselect -->
<span class="desc-info">
    <span class="box">
        <em>Importiert werden</em>: Autoren, Passwörter, Kategorien, Kommentare, Artikel.
    </span>

    <span class="box">
        <em>Konfigurationsoptionen</em>: Zugangsdaten, Zeichensatz, HTML-Maskierung, Trackbacks.
    </span>
</span>
</p>

<p class="desc">
<span class="tag-box invisible">
    <span class="inline-tag">Import!Pivot</span>
    <span class="inline-tag">Pivot</span>
</span>
<span class="item select">Pivot</span><!-- itemselect -->
<span class="desc-info">
    <span class="box">
        <em>Importiert werden</em>: Kategorien, Kommentare, Artikel.
    </span>

    <span class="box"><em>Konfigurationsoptionen</em>: Pivot-Datensätze.</span>

    <span class="box">
        Pivot speichert seine Dateien in einer zentralen PHP-Datei. Den Pfad zu
        dieser Datei müssen Sie beim Importvorgang angeben. Alle importierten
        Artikel werden dem aktuellen Serendipity-Benutzer zugeordnet.
    </span>
</span>
</p>

<p class="desc">
<span class="tag-box invisible">
    <span class="inline-tag">Import!pMachine</span>
    <span class="inline-tag">pMachine</span>
</span>
<span class="item select">pMachine Pro 2.4</span><!-- itemselect -->
<span class="desc-info">
    <span class="box">
        <em>Importiert werden</em>: Autoren, Passwörter, Kategorien, Kommentare, Artikel.
    </span>

    <span class="box">
        <em>Konfigurationsoptionen</em>: Zugangsdaten, Zeichensatz, HTML-Maskierung, Trackbacks.
    </span>
</span>
</p>

<p class="desc">
<span class="tag-box invisible">
    <span class="inline-tag">Import!sunlog</span>
    <span class="inline-tag">sunlog</span>
</span>
<span class="item select">sunlog 0.4.4</span><!-- itemselect -->
<span class="desc-info">
    <span class="box">
        <em>Importiert werden</em>: Autoren, Kategorien, Kommentare, Artikel.
    </span>

    <span class="box">
        <em>Konfigurationsoptionen</em>: Zugangsdaten, Zeichensatz,
        HTML-Maskierung, Trackbacks.
    </span>

    <span class="box">
        Sunlog bietet zwar diverse Zugriffsrechte für seine Redakteure, diese
        sind jedoch inkompatibel zu Serendipity. Dabei werden beim Import nur
        die Stammdaten der Redakteure übernommen, und alle Redakteure werden als
        Administratoren übernommen. Da Sunlog seine Passwörter in einem für
        Serendipity nicht lesbaren Format speichert, müssen die Passwörter
        aller Autoren erneut vergeben werden. Standardmäßig wird ein Redakteur
        dabei mit dem Passwort <em>sunlog</em> angelegt.
    </span>
</span>
</p>

<p class="desc">
<span class="tag-box invisible">
    <span class="inline-tag">Import!Textpattern</span>
    <span class="inline-tag">Textpattern</span>
</span>
<span class="item select">Textpattern 1.0rc1</span><!-- itemselect -->
<span class="desc-info">
    <span class="box">
        <em>Importiert werden</em>: Autoren, Kategorien, Kommentare, Artikel.
    </span>

    <span class="box">
        <em>Konfigurationsoptionen</em>: Zugangsdaten, Zeichensatz, HTML-Maskierung, Trackbacks.
    </span>

    <span class="box">
        Da Textpattern seine Passwörter in einem für Serendipity nicht lesbaren
        Format speichert, müssen die Passwörter aller Autoren erneut vergeben
        werden. Standardmäßig wird ein Redakteur dabei mit dem Passwort
        <em>txp</em> angelegt.
    </span>
</span>
</p>

<p class="desc">
<span class="tag-box invisible">
    <span class="inline-tag">Import!phpNuke</span>
    <span class="inline-tag">phpNuke</span>
</span>
<span class="item select">phpNuke</span><!-- itemselect -->
<span class="desc-info">
    <span class="box">
        <em>Importiert werden</em>: Autoren, Kategorien, Kommentare, Artikel.
    </span>

    <span class="box">
        <em>Konfigurationsoptionen</em>: Zugangsdaten, Zeichensatz, HTML-Maskierung, Trackbacks.
    </span>
</span>
</p>

<p class="desc">
<span class="tag-box invisible">
    <span class="inline-tag">Import!Voodoopad</span>
    <span class="inline-tag">Voodoopad</span>
</span>
<span class="item select">Voodoopad</span><!-- itemselect -->
<span class="desc-info">
    <span class="box"><em>Importiert werden</em>: Inhalte.</span>

    <span class="box"><em>Konfigurationsoptionen</em>: VoodooPad-Datendatei.</span>

    <span class="box">
        Voodoopad ist eigentlich kein Blogsystem, sondern eher ein
        Offline-Wiki. Der Importer kann exportierte Daten von Voodoopad
        übernehmen und als statische Seiten importieren. Daher wird das
        Serendipity-Plugin <em>Statische Seiten</em> benötigt (siehe Seite
        <span class="pageref"><a href="#staticpage">staticpage</a></span>).
    </span>

    <span class="box">
        Im Importer geben Sie den Pfad zu der XML-Datei an, und alle Datensätze
        darin können daraufhin importiert werden.
    </span>
</span>
</p>

<p class="desc">
<span class="tag-box invisible">
    <span class="inline-tag">Import!phpBB</span>
    <span class="inline-tag">phpBB</span>
</span>
<span class="item select">phpBB</span><!-- itemselect -->
<span class="desc-info">
    <span class="box"><em>Importiert werden</em>: Autoren, Kategorien, Postings.</span>

    <span class="box">
        <em>Konfigurationsoptionen</em>: Zugangsdaten, Zeichensatz, HTML-Maskierung, Trackbacks.
    </span>

    <span class="box">
        phpBB ist ein Forensystem. Was in einem Blog die Artikel und Kategorien
        sind, wird in einem Forum als Bereiche und Postings definiert.
        Serendipity kann alle eingetragenen Benutzer des Forums importieren und
        als Serendipity-Redakteur übernehmen. Dabei wird auch erkannt, ob ein
        Forenbenutzer Administratorrechte hat, und er erhält diese dann auch in
        Serendipity.
    </span>

    <span class="box">
        Die einzelnen Foren und Unterforen werden in Serendipity als Kategorien
        und Unterkategorien übernommen. Der jeweils erste Eintrag in einem
        Foren-Thread wird als Blog-Artikel importiert, alle folgenden Postings
        des Threads werden als Blog-Kommentar importiert.
    </span>
</span>
</p>

<p class="desc">
<span class="tag-box invisible">
    <span class="inline-tag">Import!RSS</span>
    <span class="inline-tag">RSS-Import</span>
</span>
<span class="item select">Allgemeiner RSS-Import</span>
<span class="desc-info">
    <span class="box"><em>Importiert werden</em>: Nur Artikel.</span>

    <span class="box">
        <em>Konfigurationsoptionen</em>: RSS-Feed URL, Artikelstatus, Zugeordnete
        Kategorie, Zeichensatz, Erweiterter Eintrag.
    </span>

    <span class="box">
        Als letzte Möglichkeit des Artikel-Imports gilt der <span class="mbold">Allgemeine
        RSS-Import</span>. Hiermit können Sie einen RSS-Feed in Ihr eigenes Blog
        importieren. Dabei werden die importierten Artikel dem aktuell
        eingeloggten Serendipity-Benutzer zugeschrieben.
    </span>

    <span class="box">
        Da in einem RSS-Feed nur sehr wenige Daten vorhanden sind, können nur
        Artikelstammdaten (Veröffentlichungszeitpunkt, Titel, Text) importiert
        werden. Sollte eine Kategoriezuordnung im RSS-Feed enthalten sein,
        versucht der Importer eine gleichnamige Kategorie im Blog zu finden und
        zuzuordnen. Schlägt das fehl, wird die im Importer festgelegte
        Standard-Kategorie zugeordnet.
    </span>

    <span class="box">
        In einigen RSS-Feeds kann neben den Artikel-Teasern auch ein
        erweiterter Artikeltext enthalten sein, der ebenfalls importiert wird.
        Wenn Sie die Option <span class="mbold">Füge den gesamten importierten Text in das
        einzelne Text-Feld ein</span> auf <span class="mbold">Ja</span> setzen, wird sämtlicher
        verfügbarer Inhalt in das Hauptfeld des Blog-Artikels übernommen.
        Andernfalls versucht Serendipity, den Teaser-Text und vollständigen Text
        des RSS-Artikels sinnvoll aufzuteilen.
    </span>

    <span class="box">
        Als Sonderfall des RSS-Imports dient das WPXRSS-Format. Dieses wird von
        WordPress-Blogs eingesetzt und enthält außer Artikeln auch Informationen zu
        Kategorien, Kommentaren und Redakteuren. Das WPXRSS-Format funktioniert nur auf
        Webservern mit PHP5-Unterstützung.
    </span>

    <span class="box">
        Bitte beachten Sie, dass dieser Importvorgang nicht für den
        regelmäßigen Import eines RSS-Feeds gedacht ist. Dafür gibt es das
        <code>RSS Aggregator</code>-Plugin, siehe Seite <span class="pageref"><a href="#aggregator">aggregator</a></span>.
    </span>
</span>
</p>

</section><!-- section.sub end -->

<section id="U495" class="sub">
<span class="u-toc">4.9.5 - Vorschauen erneuern</span>

<h3 class="subsection" id="wartung-vorschauen-erneuern">Wartung: Vorschauen erneuern</h3>

<p class="tagging invisible">
<span class="label invisible" id="Vorschauen erneuern">Vorschauen erneuern</span>
<span class="tag-box invisible">
    <span class="inline-tag">Vorschauen!erneuern|see{Backend, Vorschauen erneuern}</span>
    <span class="inline-tag">Backend!Vorschauen!erneuern</span>
    <span class="inline-tag">erneuern</span>
</span>
</p>

<p class="desc-info">
    <span class="box">
        Dieser Vorgang wurde bereits im Kapitel der Mediathek genauer beschrieben.
        Siehe: <span class="pageref"><a href="#U456">Vorschauen erneuern</a></span>.
        Bitte lesen Sie dort nach was es mit dieser Wartungsaufgabe auf sich hat.
    </span>
</p>

</section><!-- section.sub end -->

<section id="U496" class="sub">
<span class="u-toc">4.9.6 - Spamblog Log Wartung</span>

<h3 class="subsection" id="wartung-spamblog-log-wartung">Spamblog Log Wartung</h3>

<p class="tagging invisible">
<span class="label invisible" id="Spamblog Log Wartung">Spamblog Log Wartung</span>
<span class="tag-box invisible">
    <span class="inline-tag">Spamblog!Log!Wartung|see{Backend, Spamblog Log Wartung}</span>
    <span class="inline-tag">Backend!Spamblog!Log!Wartung</span>
    <span class="inline-tag">Log!Wartung</span>
    <span class="inline-tag">Wartung</span>
</span>
</p>

<p class="desc-info">
    <span class="box">
        Wie bereits in <span class="mbold">Kapitel VIII</span> beschrieben,
        verursachen Datenbank Logeinträge, wie zum Beispiel beim Spamblock Plugin,
        mit der Zeit eine unnötig große Aufblähung ihrer Datenbank.
        Dies kann Ihr System mit der Zeit also stetig verlangsamen.
        Siehe: <span class="pageref"><a href="#spamblocklog-loeschen">Spamblocklog Dateineinträge Löschen</a></span>.
        Die dort vorgeschlagenen manuellen SQL Queries zum Aufräumen solchen
        Masseneinträge, sind hier schon einmal automatisiert gelistet,
        so dass Sie diese Wartungsaufgabe einfach nur ab und an selber
        anklicken müssen.
    </span>

    <span class="box">
        Sodann werden Datenbank-Logeinträge gelöscht, die bestimmten Kriterien
        unterliegen. Erfahrungsgemäß sind, je nach Einstellung der vorhandenen
        Spamblog Plugins, die beiden Typen (<em>moderate</em> und <em>rejected</em>)
        hauptsächlich mit Spam bestückt.
    </span>

    <span class="box">
        Sie haben hier die Wahl entweder grob oder selektiv Löschungen anzustoßen.
    </span>
</p>

</section><!-- section.sub end -->

<section id="U497" class="sub">
<span class="u-toc">4.9.7 - Service Wartungs Modus</span>

<h3 class="subsection" id="wartung-service-wartungs-modus">Wartung: Service Wartungs Modus</h3>

<p class="tagging invisible">
<span class="label invisible" id="Service Wartungs Modus">Service Wartungs Modus</span>
<span class="tag-box invisible">
    <span class="inline-tag">Service!Wartungsmodus|see{Backend, Service Wartungs Modus}</span>
    <span class="inline-tag">Backend!Service!Wartungsmodus</span>
    <span class="inline-tag">Wartungsmodus</span>
</span>
</p>

<p class="desc-info">
    <span class="box">
        Über das zu installierende <code>serendipity_event_modemaintain</code>
        <span class="pageref"><a href="#serendipity_event_modemaintain">modemaintain</a></span>
        event Plugin, kann Ihr öffentliches Blog - das Frontend - in einen
        <em>“503 - Service Temporarily Unavailable”</em> Modus (einen
        temporären 503 Wartungsmodus) versetzt werden.
        Die <span class="mbold">Bedingung</span> dafür ist, dass sie sich
        mit der LogIn <span class="mbold">Daten speichern</span> Methode angemeldet haben und sich während
        des Vorganges weder ausloggen, noch ihr Browserfenster schließen.
    </span>

    <span class="box">
        Diese LogIn Methode geschieht über das Login-Cookie, welches Ihnen
        erlaubt, über die temporäre Sitzung hinaus angemeldet zu bleiben.
        Wie das geht, können Sie bei <span class="pageref"><a href="#login">Login</a></span>
        unter Option <span class="mbold">Daten speichern</span> nachlesen.
    </span>

    <span class="box">
        Ansonsten können Sie ihr Blog frei im Backend und im Frontend bedienen
        und anschauen. Ist der Vorgang der Wartung, zB ein Serendipity Upgrade,
        abgeschlossen, deaktvieren Sie dem Modus wieder.
    </span>

    <span class="box">
        Bitte lesen Sie die Informationen zu dieser Wartungsaufgabe genau durch,
        damit Sie sich nicht versehentlich selber aussperren!
    </span>
</p>

</section><!-- section.sub end -->

<section id="U498" class="sub">
<span class="u-toc">4.9.8 - Zeige Serendipity Logfiles</span>

<h3 class="subsection" id="wartung-zeige-serendipity-logfiles">Wartung: Zeige Serendipity Logfiles</h3>

<p class="tagging invisible">
<span class="label invisible" id="Zeige Serendipity Logfiles">Zeige Serendipity Logfiles</span>
<span class="tag-box invisible">
    <span class="inline-tag">Serendipity Logfiles|see{Backend, Serendipity Logfiles}</span>
    <span class="inline-tag">Backend!Serendipity Logfiles</span>
    <span class="inline-tag">Logfiles</span>
</span>
</p>

<p class="desc-info">
    <span class="box">
        Wenn Sie das changelog event Plugin installiert haben (default) und
        die Konfigurationsoptions <span class="mbold">Log Level</span> auf Fehler
        oder Debug gestellt haben, werden bestimmte Ereignisse zB. bei
        Trackbacks oder bei bestimmten Mediathekaktionen während
        des Vorganges im Hintergrund still in eine Logdatei geschrieben.
        Diese können Sie dann hier und nur hier einsehen. Der Zugriff auf
        diese Logdateien sollte über das Frontend sollte nicht möglich sein.
        Löschen Sie die alten Logfiles trotzdem regelmäßig, wenn sie ihren Dienst
        getan haben, denn sie könnten relevante Informationen enthalten.
        Die default Einstellung zur Logausgabe lautet: <span class="mbold">Nein</span>.
    </span>

    <span class="box">
        Ohne weiteres Zutun kann hier ansonsten nur das Serendipity Styx
        <span class="mbold">ChangeLog</span> einfach im Browserfenster ausgelesen werden, damit Sie
        sich über all die kleineren und größeren Veränderungen zwischen
        den Release Versionen auf dem Laufenden halten können.
    </span>
</p>

</section><!-- section.sub end -->

<section id="U499" class="sub">
<span class="u-toc">4.9.9 - UTF-8 MB4 Migration</span>

<h3 class="subsection" id="wartung-utf-8mb4-migration">Wartung: UTF-8 MB4 Migration</h3>

<p class="tagging invisible">
<span class="label invisible" id="UTF-8 MB4 Migration">UTF-8 MB4 Migration</span>
<span class="tag-box invisible">
    <span class="inline-tag">UTF-8MB4!Migration|see{Backend, UTF-8 MB4 Migration}</span>
    <span class="inline-tag">Backend!UTF-8MB4!Migration</span>
    <span class="inline-tag">Migration</span>
</span>
</p>

<p class="desc-info">
    <span class="box">
        UTF8MB4 ist mit <span class="mbold">Serendipity Styx 2.4+</span> und
        <span class="mbold">MySQL</span> die Default Installations-Kollation,
        wenn vom Server unterstützt. In diesem Fall sehen Sie bereits die
        grün hervorgehobene Erfolgsmeldung, wie auf der Abbildung 4.28:
        Einstellungen: Wartung (Beispielseite) zu sehen.
    </span>
</p>

<p class="desc-info">
    <span class="box">
        Für <span class="mbold">Serendipity (+ Styx) Upgrader:</span>
    </span>
    <span class="box">
        Wenn Sie Serendipity Styx 2.4+ mit MySQLi- und UTF-8-Zeichensätzen (Standard)
        verwenden, können die Datenbanktabellen und Indizes von UTF-8 nach
        <span class="mbold">UTF-8 mit Multibyte-Erweiterung</span> migriert werden,
        um auch Unicode-Zeichen außerhalb des "Basic Multilingual Plane" (BMP) zu
        unterstützen, wie zB. <b>Emojis</b>.
    </span>
    <span class="box">
        <span class="mbold">Utf8mb4</span> ist eine Obermenge von UTF-8. 
    </span>

    <span class="box">
        Wenn ihr MySQLi-Treiber oder die MySQL Server-Version kleiner ist als Version 5.5.3,
        oder ihre aktuelle Installation den UTF-8 Zeichensatz nicht verwendet, ist UTF8MB4
        nicht unterstützt. Um UTF8MB4 verwenden zu können, stellen Sie sicher,
        dass Ihr Blog für den UTF-8 Zeichensatz konfiguriert ist, und bestehende Daten
        nach UTF-8 konvertiert wurden, indem Sie ein Tool wie mysqldump für Export,
        Konvertierung nach UTF-8 und den Import verwenden.
    </span>
</p>

<p class="desc-info">
    <span class="box">
        Die grüne Erfolgsmeldung über ihre Systemvoraussetzung ist natürlich, oder
        spätestens nach einiger Zeit, überflüssig zu behalten und kann seit
        Serendipity Styx 3 über das eingefügte icon permanent weggeklickt werden.
    </span>
</p>

</section><!-- section.sub end -->

<section id="U4910" class="sub">
<span class="u-toc">4.9.10 - Plugin Altlastenmanager</span>

<h3 class="subsection" id="wartung-plugin-altlastenmanager">Wartung: Plugin Altlastenmanager</h3>

<p class="tagging invisible">
<span class="label invisible" id="pluginaltlastenmanager">Plugin Altlastenmanager</span>
<span class="tag-box invisible">
    <span class="inline-tag">Backend!Plugin Altlastenmanager</span>
    <span class="inline-tag">Altlastenmanager</span>
</span>
</p>

<p class="desc-info">
    <span class="box">
        Das mächtige Plugin Werkzeug muss ebenso wie die Mediathek mit der Datenbank
        synchron gehalten werden. Mit der Zeit aber sammeln sich hier ehemals installierte
        Plugins, werden dann deaktiviert oder nur unvollständig deinstalliert. Jedenfalls
        existierten über Jahre solche <span class="mbold">Zombies</span> ohne jemals
        mit ihrer <span class="mbold">remote</span> Version von Spartacus aktualisiert
        zu werden. Häufig wurden diese dann zur erneuten Installaton vorgeschlagen, wenn
        Sie die Liste der neue-plugins-installieren aufriefen.
        Solch alte Versionen konnten dann mitunter das ganze System aus dem Tritt bringen.
        Löschen Sie die alten Plugins also regelmäßig, wenn sie ihren Dienst getan haben.
    </span>

    <span class="box">
        Der Button <span class="mbold">Suche nach Plugin Zombies</span> zeigt eine
        multi-select Liste, aus der alle darin von Ihnen gewählten Plugins wirklich
        vom System gelöscht werden können.
    </span>
</p>

</section><!-- section.sub end -->

</section><!-- section.index end -->

<section id="S4100" class="index">
<span class="s-toc">4.10 - Bookmarklet</span>

<h3 class="section" id="bookmarklet">Bookmarklet</h3>

<p class="tagging invisible">
<span class="tag-box invisible">
    <span class="inline-tag">Bookmarklet|see{Backend, Bookmarklet}</span>
    <span class="inline-tag">Backend!Bookmarklet</span>
</span>
</p>

<p>Der Punkt <span class="mbold">Bookmarklet</span> ist eigentlich kein eigenständiger
Menüpunkt im Backend. Vielmehr sehen Sie diesen Menüpunkt im Kasten
<span class="mbold">Weitere Links</span> auf der <span class="mbold">Startseite</span>
des Backends, wenn den Info-Button anklicken.</p>

<p>Der Link zum Bookmarklet führt dabei auf Ihre eigene Seite und enthält
einen JavaScript-Code. Dieser Link ist nicht zum Anklicken gedacht,
sondern Sie sollten ihn als Lesezeichen/Favorit in Ihrem Browser
speichern.</p>

<p>Wechseln Sie nun auf eine fremde Webseite, über die Sie in einem
eigenen Blog-Artikel gerne berichten wollen. Markieren Sie dort einen
Textteil, auf den Sie sich beziehen wollen, und wählen Sie in Ihrem
Browser das Lesezeichen <span class="mbold">Bookmarklet</span> aus. Sie werden nun auf Ihr
Blog geleitet, und die URL der fremden Seite wird automatisch in Ihren
Artikeltext eingefügt. So können Sie komfortabel und ohne eigenes
Zutun schnell Artikel verfassen. Allerdings unterliegen die Auswahl
und deren Übertragung per GET-Parameter in Gänze der URL einer gewissen
Längenbeschränkung. Sehen also keinen Übertrag, haben Sie eventuell
zu viel Text ausgewählt. Versuchen Sie es dann mit deutlich weniger
markiertem Text erneut.</p>

<p><span class="mbold">Serendipity Styx</span> öffnet mit dem
<span class="mbold">Informations</span>-Button der Backend Startseite,
außer dem Bookmarklet, noch eine weitere Box, die einen
<span class="mbold">Styx Quick Tipp</span> als erstes Willkommen
bereitstellt. Auch dieser ist Sprach- und Übersetzungsfähig, wird
über Sprachtemplates generiert und harret noch fleißigen Sprachhelfern. 
</p>

</section><!-- section.index end -->
