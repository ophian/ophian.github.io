
<h2 id="chapter-VI">Kapitel 6: Ereignis-Plugins</h2>

<p>
<span class="tag-box invisible">
    <span class="inline-tag">Events</span>
    <span class="inline-tag">Hooks</span>
</span><!-- tagbox -->
Ereignis-Plugins dienen der Erweiterung von Funktionen im Frontend wie auch im Backend.
Serendipity setzt innerhalb seines Quellcodes an zahlreichen strategisch wichtigen
Stellen sogenannte <em>Event-Callbacks</em> bzw. <em>Event-Hooks</em>. An dieser Stelle
des Codes führt Serendipity also nacheinander alle installierten Ereignis-Plugins aus,
so dass jedes Plugin an dieser Stelle die Möglichkeit erhält, seine eigenen Funktionen
auszuführen. Die Reihenfolge, in der die Ereignis-Plugins in der Plugin-Verwaltung
aufgeführt sind, bestimmt dabei auch die Ausführungsreihenfolge.</p>

<p><span class="label invisible" id="Textformatierungs-Plugins">Textformatierungs-Plugins</span>
<span class="tag-box invisible">
    <span class="inline-tag">Plugins!Textformatierungen</span>
    <span class="inline-tag">Textformatierungs-Plugins</span>
</span>
Bei den Textformatierungs-Plugins ist die Ausführungsreihenfolge besonders wichtig.
Ein Textformatierungs-Plugin kann bei Artikeltexten und auch Kommentartexten dazu
benutzt werden, Text- oder Formatierungsänderungen durchzuführen. Daher reichen
solche Plugins von einfachen Wortersetzungen (<code>s9y</code> könnte zB. überall
durch <code>Serendipity</code> ersetzt werden) über Smiley-Ersetzungen (<code>:-)</code>
wird zu einem grinsenden Gesicht) bis zu speziellen Plugins, die Quelltexte in
beliebigen Programmiersprachen korrekt einrücken und darstellen.</p>

<p>Stellen Sie sich ein Textformatierungs-Plugin vor (<em>Plugin A</em>), das
das Wort <code>*doof*</code> in eine besondere Grafik verwandelt. Ein
zweites <em>Plugin B</em> kümmert sich darum, dass alle Wörter, die von
Sternchen <code>*</code> umgeben sind, im Artikel später fett geschrieben
werden. Wenn Plugin A vor Plugin B platziert wird, sehen
Sie nach der Umwandlung des Wortes <code>*doof*</code> wie gewünscht eine
schöne Grafik. Wäre Plugin B jedoch das zuerst ausgeführte Plugin,
würden Sie in der Ausgabe nur ein fettes Wort <code>doof</code> sehen. Denn
nachdem Plugin B alle Wörter mit umgebenden Sternchen umgewandelt hat,
kann das Smiley-Plugin das Wort <code>*doof*</code> nicht mehr
finden.</p>

<p>Die Plugin-Reihenfolge ergibt sich also meist abhängig von Ihrem
persönlichen Einsatz des Plugins, daher können keine allgemeinen
Aussagen getroffen werden, welches Plugin an welcher Stelle stehen muss.</p>

<p>Textformatierungs-Plugins werden also immer erst bei der Ausgabe
angewendet und bieten Ihnen den Komfort der einfacheren Eingabe. Wer
möchte schon jedesmal den kompletten HTML-Code für eine Smiley-Grafik
einfügen?</p>

<p>Ihre Eingaben werden ganz unabhängig von der späteren Formatierung in der
Datenbank gespeichert - wenn Sie also einen Artikel später überarbeiten, werden
sämtliche Formatierungsänderungen dort noch nicht angezeigt, da sie nur bei der
Anzeige angewendet werden und nicht beim Speichern der Rohdaten. Das bedeutet
auch, dass sämtliche von einem Textformatierungs-Plugin vorgenommenen Änderungen
nicht mehr ausgeführt werden, wenn Sie dieses Plugin löschen. Seien Sie also
vorsichtig beim Löschen von Plugins und prüfen Sie, ob dadurch möglicherweise
alte Artikel nicht mehr so dargestellt werden, wie Sie es erwarten.</p>

<p>Eine weitere Besonderheit von Textformatierungs-Plugins ist, dass alle diese
Plugins eine Konfigurationsoption anbieten, um einzustellen, auf welche
Ausgabefelder eine Formatierung angewendet wird. So können Sie einstellen, ob
eine Formatierung nur auf normale Artikeltexte, erweiterte Artikeltexte,
Kommentare von Besuchern oder HTML-Klötze (siehe Seite
<span class="pageref"><a href="#htmlnugget">htmlnugget</a></span>) angewendet wird. Im Eingabefeld für Kommentare von
Besuchern kann jedes Textformatierungs-Plugin eigene Hinweise einblenden,
wie deren Syntax zu benutzen ist.</p>

<p><span class="label invisible" id="Standardpluginkonfiguration">Standardpluginkonfiguration</span>
<span class="tag-box invisible">
    <span class="inline-tag">Ereignis-Plugins!häufige Konfigurationsoptionen</span>
</span>
Mehrere Ereignis-Plugins bieten die Möglichkeit, beliebige Inhalte
innerhalb Ihres Blogs einzubinden: eigenständige HTML-Seiten (statische
Seiten), Gästebücher, Kontaktformulare und weitere. Alle diese Plugins
haben einen Satz an Konfigurationsoptionen gemeinsam, auf die Sie immer
wieder stoßen werden. Damit diese nicht immer für jedes Plugin wiederholt
werden müssen, werden Sie hier erklärt:</p>

<p class="desc">
<span class="label invisible" id="Standardpluginkonfiguration-Permalink">Standardpluginkonfiguration-Permalink</span>
<span class="tag-box invisible">
    <span class="inline-tag">Plugins!Standard-Konfigurationsoptionen!Permalink</span>
    <span class="inline-tag">Permalinks</span>
</span><!-- tagbox -->
<span class="item mbold">Permalink</span><!-- menuitem -->
<span class="tag-box invisible">
    <span class="inline-tag">Fehler!falsche Permalinks</span>
</span>
<span class="desc-info">
    <span class="box">
        In das Feld <span class="mbold">Permalink</span> tragen Sie die URL ein, unter der Sie später
        die Ausgaben des jeweiligen Plugins wollen. Hier müssen Sie den
        vollständigen HTTP-Pfad eintragen, der zu dieser URL führt. Standardmäßig
        wird das Feld vorausgefüllt mit
        <code>/serendipity/pages/pluginname.html</code>, was Ihrem Pfadnamen und einem
        virtuellen Pfad entspricht. Im virtuellen Pfadnamen können Sie eine
        beliebige Struktur einsetzen. Dabei müssen Sie lediglich darauf achten,
        dass die URL mit <code>.html</code> endet, keine Sonderzeichen enthält und
        keinem bereits vorhandenen Permalink entspricht. Wichtig ist, dass
        diese Variable immer nur eine Pfadangabe enthalten darf, niemals eine
        vollständige URL wie <code>http://www.example.com/...</code>. Auch muss
        der Stammpfad zum Serendipity-Blog beibehalten bleiben, eine Eingabe wie
        <code>/anderes_blog/pages/pluginname.html</code> wäre ungültig.[*]
        <span class="footnote"><i class="fa fa-info-circle"></i> Eine
        derartige URL wäre ungültig, da der Aufruf dieser URL außerhalb der
        Serendipity-Installation läge. Serendipity kann nur virtuelle
        Verzeichnisse unterhalb seiner eigenen Verzeichnisstruktur verwalten.</span><!-- footnote -->
    </span>

    <span class="box">
        Wenn Sie in Ihrem Blog einmal die URL-Umformung (siehe Seite
        <span class="pageref"><a href="#urlformung">urlformung</a></span>) (de-)aktivieren oder Ihr Blog in ein Unterverzeichnis
        verschieben, kann es sein, dass Sie die konfigurierten Permalinks aller Plugins
        ebenfalls anpassen müssen. Bei deaktivierter URL-Umformung muss ein Permalink
        einen Wert wie <code>/serendipity/index.php?/pages/pluginname.html</code> enthalten.
        Erst bei der Pfadangabe hinter <code>index.php?</code> dürfen Sie eine beliebige URL
        eintragen, der Pfad davor muss der Konfiguration Ihres Servers entsprechen.
    </span>
</span>
</p>

<p class="desc">
<span class="tag-box invisible">
    <span class="inline-tag">Plugins!Standard-Konfigurationsoptionen!Pagetitle</span>
    <span class="inline-tag">Plugins!Standard-Konfigurationsoptionen!Seitentitel</span>
    <span class="inline-tag">Plugins!Standard-Konfigurationsoptionen!URL-Titel der Seite</span>
    <span class="inline-tag">Plugins!Standard-Konfigurationsoptionen!URL shorthand name</span>
</span><!-- tagbox -->
<span class="label invisible" id="Standardpluginkonfiguration-Pagetitle">Standardpluginkonfiguration-Pagetitle</span>
<span class="item mbold">URL-Titel der Seite, Seitentitel, Pagetitle oder URL shorthand name</span>
<span class="desc-info">
    <span class="box">
        Alternativ zu der Konfiguration eines Permalinks bieten alle Plugins auch
        einen <em>URL-Titel der Seite</em> oder <em>URL shorthand name</em> an.
        Mithilfe dieser Variable kann man die Ausgaben eines Plugins auch ohne
        Permalink ansehen, indem man
    </span>

    <span class="box">
        <span id="pre-style"><code class="txt">
            http://www.example.com/serendipity/index.php?serendipity[subpage]=Seitentitel
        </code></span>
    </span>

    <span class="box">
        aufruft. Dies ist wichtig, da in manchen Webserver-Konfigurationen ein Permalink
        nicht mit Formulardaten beschickt werden kann.[*]
        <span class="footnote"><i class="fa fa-info-circle"></i> Konkret ist dies
        bei der Nutzung der URL-Umformungsmethode <code>Apache ErrorHandling</code>
        nicht möglich. Eine URL wie
        <code>/serendipity/pages/seite.html?variable=inhalt</code> würde keine
        GET-Variable <code>$_GET['variable']</code> erzeugen, die die Plugins
        teilweise jedoch benötigen, um abhängig von der Anfrage des Besuchers
        bestimmte Inhalte anzuzeigen.</span><!-- footnote -->
    </span>

    <span class="tag-box invisible">
        <span class="inline-tag">Template-Variablen!\$staticpage_pagetitle</span>
    </span><!-- tagbox -->
    <span class="box">
        Tragen Sie für den URL-Titel einer Seite ausschließlich Namen ohne
        Sonderzeichen, Umlaute und Leerzeichen ein. Beinahe alle Plugins weisen
        den Wert der <code>serendipity[subpage]</code>-Variable der Smarty-Variablen
        <code>$staticpage_pagetitle</code> zu. Über diese Variable kann man
        individuell in den Templates bei speziellen Plugins unterschiedliche
        Template-Ausgaben erreichen (siehe Seite <span class="pageref"><a href="#Smarty-Templates">Smarty-Templates</a></span>).
    </span>
</span>
</p>

<p class="desc">
<span class="label invisible" id="Standardpluginkonfiguration-Articleformat">Standardpluginkonfiguration-Articleformat</span>
<span class="tag-box invisible">
    <span class="inline-tag">Plugins!Standard-Konfigurationsoptionen!Als Artikel formatieren</span>
</span><!-- tagbox -->
<span class="item mbold">Als Artikel formatieren</span>
<span class="desc-info">
    <span class="box">
        Wenn Sie die Option <span class="mbold">Als Artikel formatieren</span> aktivieren, wird
        Serendipity die Ausgabe eines Plugins so darstellen, als sei dies ein
        normaler Blog-Artikel. Um die Ausgabe herum wird also das übliche
        HTML-Konstrukt erzeugt, das Serendipity standardmäßig ausgibt (mit
        Seitenüberschrift und Datum).
    </span>

    <span class="box">
        Wenn Sie diese Option deaktivieren, werden die Ausgaben 1:1
        weitergereicht und in den Inhaltsbereich von Serendipity eingefügt. Das
        heißt, dass Serendipity sich in jedem Fall um die Ausgabe des HTML-Kopf-
        und -Fußkonstruktes sowie der Seitenleisten-Plugins kümmert, aber sonstige
        Überschriften nicht ausgibt.
    </span>
</span>
</p>

<p>Die Plugins der folgenden Zusammenstellungen sind aber nach Alphabet,
im Sinne von <code>serendipity_event_A-Z</code> geordnet.</p>

<p>&nbsp;</p>

<section id="S610" class="index">
<span class="s-toc">6.1 Standardmäßig aktivierte Plugins</span>

<h3 class="section" id="standardmäßig-aktivierte-plugins-1">Standardmäßig aktivierte Plugins</h3>

<p>Die im Folgenden behandelten Ereignis-Plugins werden bei Serendipity mitgeliefert und sind
standardmäßig aktiviert.</p>

<p>&nbsp;</p><!-- empty p after Section S start before diving into subs ??? -->

<span class="u-toc">6.1.1 - Logdatei Betrachter: Liest Serendipity Logdateien - serendipity_event_changelog</span>

<section id="serendipity_event_changelog" class="sub">
<h3 class="subsection" id="liest-serendipity-logdateienserendipity_event_changelog">Liest Serendipity Logdateien<br>serendipity_event_changelog</h3>

<p class="tagging invisible">
<span class="tag-box invisible">
    <span class="inline-tag">Wartung</span>
    <span class="inline-tag">Wartung!Zeige Serendipity Logfiles</span>
    <span class="inline-tag">Plugins!Logdatei Betrachter</span>
    <span class="inline-tag">Plugins!serendipity_event_changelog</span>
</span>
</p>

<p>Dieses Plugin gewährt über die Wartungsseite des Backends leichten Zugang
zum Serendipity ChangeLog und optional aktivierten Error/Debug-Log Dateien.
Siehe: <span class="pageref"><a href="#generelle-einstellungen">Generelle Einstellungen</a></span>
[Log Level] Konfigurations-Option.</p>

<p>
    <span class="box">
        Dies ist ein Beispiel eines <em>stillen</em>, optionslosen Plugins.
    </span>

    <span class="box">
        Im Wartungsbereich des Backend finden Sie einen Abschnittsblock
        mit dem Titel: <span class="mbold">Zeige Serendipity Logfiles</span>.
        Dort können Sie das Serendipity Styx ChangeLog aufrufen und lesen,
        was sich in den letzten Versionen alles verändert hat.
    </span>

    <span class="box">
        Ein weiterer Button öffnet die letzte Logdatei für die Debugging-Session,
        welches in der Konfiguration: "Generelle Einstellung" gesetzt wurde.
        Löschen löscht alle alten Log-Dateien.
    </span>

    <span class="box">
        Diese Debug-oder-Fehler Dateien, die, wenn aktiviert, im Hintergrund
        still in einigen Bereichen, wie zB. bei verschiedenen Operationen der
        Mediendatenbank, geschrieben werden, können hier ausgelesen und alte
        Dateien auch wieder gelöscht werden.
    </span>

    <span class="box">
        Auch wenn jemand erraten sollte wie eine solche Debug Datei genau
        heißt und versucht auf sie zuzugreifen, da sie ja in einem schreib-
        und lesbaren Ordner innerhalb des <code>templates_c</code>-Ordners
        liegt, so ist sie dort für unautorisierte Nutzer nicht einsehbar.
        Zugriff wird nur über die Wartungsseite für den Administrator der
        Seite gewährt. Trotzdem sollten sie fragile Debug-Ausgaben nicht
        unnötig herumliegen lassen, wenn Sie sie nicht mehr benötigen,
        denn Hacker sind findige Leute.
    </span>
</p>

</section><!-- section.sub end -->

<section id="serendipity_event_emoticate" class="sub">
<span class="u-toc">6.1.2 - Textformatierung: Smilies: serendipity_event_emoticate</span>

<h3 class="subsection" id="textformatierung-smiliesserendipity_event_emoticate">Textformatierung: Smilies<br>serendipity_event_emoticate</h3>

<p class="tagging invisible">
<span class="label invisible" id="emoticate">emoticate</span>
<span class="tag-box invisible">
    <span class="inline-tag">Smileys</span>
    <span class="inline-tag">Plugins!Textformatierung: Smilies</span>
    <span class="inline-tag">Plugins!serendipity_event_emoticate</span>
</span>
</p>

<p>Das wohl gebräuchlichste Textformatierungs-Plugin nennt
sich <em>Smilies</em>. Es ersetzt typische Smiley-Zeichenketten wie :-) durch
einen grafischen Smiley.</p>

<p>Wenn Sie die Konfigurationsoptionen des Plugins aufrufen, sehen Sie eine
Liste aller verfügbaren Smiley-Umwandlungen. Auch Besucher können, falls
gewünscht, in ihren Kommentaren auf die Smiley-Grafiken zurückgreifen.</p>

<p>Vielfach wird den Serendipity-Smileys vorgeworfen, dass sie ziemlich
hässlich aussähen. Zum einen ist das natürlich Geschmackssache, aber zum
Teil kann man das auch nicht ganz von der Hand weisen. Da Serendipity
so freizügig wie möglich lizensiert wurde, können nur Smiley-Grafiken mit
Serendipity ausgeliefert werden, die derselben Lizens unterliegen. Die
meisten Smileys, die im Internet zu haben sind, sind jedoch entweder nur
kommerziell oder inkompatibel lizensiert oder von den Seiten ohne
Befugnis eingebaut. Da die Smiley-Grafiken auch mit einem
Serendipity-Template zusammen gebündelt werden können, gibt es auch
einige (wenige) Templates mit eigenen Grafikdateien: <em>GreenMile</em>,
<em>kamouflage</em> und <em>truth</em>.</p>

<p>Als Betreiber des Blogs können Sie aber glücklicherweise die Grafiken
einfach ersetzen. Das Plugin versucht Ihnen das so einfach wie möglich
zu machen, daher gibt es mehrere Möglichkeiten, eigene Smileys
einzubinden.</p>

<p class="indent">
<span class="item option"><strong>Variante 1: Grafikdateien ersetzen</strong></span><!-- ospitem option -->
<span class="desc-info">
    <span class="box">
        Die einfachste Methode ist, die Smiley-Grafikdateien von
        Serendipity durch eigene zu ersetzen. Diese Dateien befinden sich
        standardmäßig im Verzeichnis <code>templates/default/emoticons/</code>. Die
        Dateien haben eine <code>.png</code>-Dateiendung, Sie können aber auch die
        Smiley-üblichen <code>.gif</code>-Dateien hochladen, wenn Sie in der
        Konfiguration des Smilie-Plugins danach als <span class="mbold">Dateiendung</span> für
        Smileys auch <code>.gif</code> eintragen.
    </span>

    <span class="box">
        Sie können die eigenen Smiley-Dateien entweder direkt in das genannte
        Verzeichnis hochladen oder auch in ein gleichnamiges Unterverzeichnis
        eines eigenen Templates. Wenn Sie die Dateien in ein eigenes
        Template-Verzeichnis hochladen, werden die Grafiken automatisch von dort
        eingebunden und Sie haben den Vorteil, später die Grafiken
        zusammenhängend mit Ihrem Template archivieren oder verteilen zu können.
    </span>
</span>
</p>

<p>
<span class="item option"><strong>Variante 2: Smileys erweitern</strong></span><!-- ospitem option -->
<span class="desc-info">
    <span class="box">
        Beim Ersetzen von Smileys können Sie natürlich keine neuartigen Smileys
        hinzufügen, sondern nur die bestehenden überarbeiten.
    </span>

    <span class="box">
        Um eigene zu erstellen, kann das Plugin eine Datei
        <code>emoticons.inc.php</code> auswerten. Diese Datei muss ein Array enthalten,
        in dem Smileys beschrieben und einer Grafik zugewiesen werden.
    </span>

    <span class="box">Standardmäßig würde eine Datei so aussehen:</span>

    <span class="box">
        <span id="pre-style"><code id="emoticons" class="php">&lt;?php<br>
        <br>
        $serendipity['custom_emoticons']&nbsp;=&nbsp;array(<br>
        &nbsp;":'("&nbsp;&nbsp;=&gt;&nbsp;serendipity_getTemplateFile('img/emoticons/cry.png'),<br>
        &nbsp;':-)'&nbsp;&nbsp;=&gt;&nbsp;serendipity_getTemplateFile('img/emoticons/smile.png'),<br>
        &nbsp;':-|'&nbsp;&nbsp;=&gt;&nbsp;serendipity_getTemplateFile('img/emoticons/normal.png'),<br>
        &nbsp;':-O'&nbsp;&nbsp;=&gt;&nbsp;serendipity_getTemplateFile('img/emoticons/eek.png'),<br>
        &nbsp;':-('&nbsp;&nbsp;=&gt;&nbsp;serendipity_getTemplateFile('img/emoticons/sad.png'),<br>
        &nbsp;'8-)'&nbsp;&nbsp;=&gt;&nbsp;serendipity_getTemplateFile('img/emoticons/cool.png'),<br>
        &nbsp;':-D'&nbsp;&nbsp;=&gt;&nbsp;serendipity_getTemplateFile('img/emoticons/laugh.png'),<br>
        &nbsp;':-P'&nbsp;&nbsp;=&gt;&nbsp;serendipity_getTemplateFile('img/emoticons/tongue.png'),<br>
        &nbsp;';-)'&nbsp;&nbsp;=&gt;&nbsp;serendipity_getTemplateFile('img/emoticons/wink.png'),<br>
        );<br>
        <br>
        ?&gt;</code></span><!-- snippet -->
    </span>

    <span class="box">
        Pro Zeile sehen Sie jeweils den Text, der durch eine Grafik ersetzt
        werden soll, und danach auf der rechten Seite einen Aufruf, der auf die
        entsprechende Grafikdatei verweist.
    </span>

    <span class="box">
        Wenn Sie sich mit regulären Ausdrücken (siehe Seite <span class="pageref"><a href="#regexp">regexp</a></span>)
        auskennen, können Sie auch Smileys mit solchen Ausdrücken definieren.
        Damit ist es leichter, diverse Plugin-Alternativen zu beschreiben, zB.
        dass sowohl :-) als auch :) zur selben Grafik umgewandelt werden. Damit
        das Array <code>$serendipity['custom_emoticons']</code> diese regulären
        Ausdrücke nutzen kann, müssen Sie eine weitere Variable
    </span>

    <span class="box">
        <span id="pre-style"><code class="php">
            $serendipity['custom_emoticons_regexp'] = true;
        </code></span>
    </span>

    <span class="box">innerhalb der <code>emoticons.inc.php</code> definieren.
    </span>
</span>
</p>

</section><!-- section.sub end -->

<section id="serendipity_event_entryproperties" class="sub">
<span class="u-toc">6.1.3 - Erweiterte Eigenschaften von Artikeln: serendipity_event_entryproperties</span>

<h3 class="subsection" id="erweiterte-eigenschaften-von-artikelnserendipity_event_entryprop">Erweiterte Eigenschaften von Artikeln<br>serendipity_event_entryproperties</h3>

<p class="tagging invisible">
<span class="tag-box invisible">
    <span class="inline-tag">Plugins!Erweiterte Eigenschaften von Artikeln</span>
    <span class="inline-tag">Plugins!serendipity_event_entryproperties</span>
    <span class="inline-tag">Plugins!Entryproperties</span>
</span>
<span class="label invisible" id="entryproperties">entryproperties</span>
<span class="tag-box invisible">
    <span class="inline-tag">entryproperties</span>
    <span class="inline-tag">Erweiterte Eigenschaften von Artikeln</span>
    <span class="inline-tag">Cache</span>
</span>
</p>

<p>Mit Serendipity 2.0 wurde das <code>entryproperties</code>-Plugin in die Liste
der aktiven Plugins gesetzt, da die Jahre inzwischen eine Verbesserung der Lage
auf den verwendeten Webservern erbrachte, so dass dieses mächtige Plugin als gesetzt
gegeben werden konnte.</p>

<p>Das Plugin <em>Erweiterte Eigenschaften von Artikeln</em> ist ein sehr
mächtiges Ereignis-Plugin, das Ihnen eine große Vielfalt an Möglichkeiten
eröffnet.
Zum einen bietet dieses Plugin mehrere Optionen bei der Erstellung von
Einträgen an, und zum anderen kann es dafür sorgen, Artikel zu cachen und
somit schneller darzustellen.</p>

<p>Die Konfigurationsoptionen des Plugins sind:</p>

<p class="desc">
<span class="item mbold">Artikel cachen?</span><!-- menuitem -->
<span class="desc-info">
    <span class="box">
        Wenn Sie mehrere Textformatierungs-Plugins benutzen, werden diese
        nacheinander bei jeder Darstellung eines Artikels erneut durchgeführt.
        Meistens verschwendet Serendipity bei dieser erneuten Ausführung einiges
        an Ressourcen, die Sie aber mit diesem Plugin einsparen können.
    </span>

    <span class="box">
        Wenn Sie die Caching-Option aktivieren, wird das Plugin beim Speichern
        eines Artikels die Ausgabe aller Textformatierungs-Plugins auswerten und
        speichern. Bei der Anzeige eines Artikels wird dann nur diese Version
        geholt - alle Textformatierungs-Plugins werden übersprungen. Wenn Sie einen
        Artikel überarbeiten, wird der Cache automatisch neu gefüllt.
    </span>

    <span class="box">
        Jedoch kann das Aktivieren des Cachings auch Probleme mit sich bringen.
        Wenn Sie den Inhalt eines Artikels direkt über die Datenbank bearbeiten
        oder einmal ein neues Textformatierungs-Plugin installieren, kann der Cache
        vom aktuellen Stand abweichen. Daher können Sie den Cache über
        den Menüpunkt <span class="mbold">Inhalt <span class="icon arrow-right">→</span> Cachen aller Artikel</span> neu aufbauen
        lassen. Dies sollten Sie immer dann tun, wenn Sie ein
        Textformatierungs-Plugin entfernen oder hinzufügen.
    </span>

    <span class="box">
        Auch für das Caching ist die Reihenfolge der Ereignis-Plugins von
        entscheidender Bedeutung. Das Plugin kann nur die Ausgaben der
        Textformatierungs-Plugins cachen, die in der Reihenfolge vor diesem Plugin
        stehen. Alle danach aufgeführten Plugins werden weiterhin ausgeführt und
        nicht gecached.
    </span>

    <span class="box">
        Diese Tatsache können Sie ausnutzen, um Textformatierungs-Plugins hinter
        diesem Plugin zu positionieren, wenn sie ohne Caching ausgeführt werden
        sollen. Derartige Textformatierungs-Plugins gibt es jedoch wenige. Als
        Faustregel gilt, dass man ein Plugin nicht cachen sollte, wenn es die
        Ausgabe eines Artikels abhängig von anderen Daten macht. Wenn ein Plugin
        also beispielsweise die Farbe eines Links abhängig von der aktuellen
        Tageszeit verändert, wäre ein Caching denkbar ungeeignet.
    </span>

    <span class="box">
        Denken Sie also vor allem bei der Erstellung eines eigenen Plugins an
        diese Caching-Option, falls dessen Ausgaben Ihnen nicht korrekt
        vorkommen.
    </span>
</span>
</p>

<p class="desc">
<span class="item mbold">Reihenfolge der Optionen</span><!-- menuitem -->
<span class="desc-info">
    <span class="box">
        Hier kann ausgewählt werden, welche Optionen in welcher Reihenfolge
        im Editiermodus des Artikels angezeigt werden.
    </span>

    <span class="box">
        Diese über flexible Boxen steuerbare Sortierung ihrer Pluginoption
        für die Anzeige im Artikelformular erlaubt Gruppen nach Vorlieben
        zu setzen. Serendipity Styx hat versucht dies insoweit zu optimieren,
        als das Felder auf Desktops in einem 2-Spalten Muster angeordnet werden,
        wenn sie kurz genug sind. Dies spart Platz und ist besser lesbar.
        Für einzelne solcher Felder wurde eine funktionslos leere Spacebox
        als Partner eingefügt. Die Standardeinstellung lautet:
        <span class="sub-box table">
            <span class="row"><span class="col">Dauerhafte Artikel</span><span class="col">Funktionslose (Geschwister-)Leer-Box</span></span>
            <span class="row"><span class="col">Autor</span><span class="col">Passwort</span></span>
            <span class="row"><span class="col">Nicht in Artikelübersicht zeigen</span><span class="col">Eintragsinhalt im RSS-Feed verstecken</span></span>
            <span class="row"><span class="col">Artikel können gelesen werden von</span><span class="col">Formatierungs-PlugIns für diesen Eintrag deaktivieren</span></span>
            <span class="row"><span class="col">Leserechte: Gruppe</span><span class="col">Leserechte: Autor</span></span>
            <span class="row"><span class="col">Mehrere Autoren</span><span class="col">Freie Felder</span></span>
            <span class="row"><span class="line">Freie Felder</span></span>
        </span>
    </span>
</span>
</p>

<p class="desc">
<span class="item mbold">Leserechte auf Gruppen/Benutzer beschränken</span><!-- menuitem -->
<span class="desc-info">
    <span class="box">
        Bevor Serendipity es ermöglichte, Leserechte auf Kategorie-Ebene zu
        vergeben, konnte man mit diesem Plugin pro Eintrag bestimmen, von wem er
        gelesen werden darf.
    </span>

    <span class="box">
        Diese besonders flexible Leserecht-Setzung bietet das Plugin nach wie
        vor an, wenn Sie die Option <span class="mbold">Leserechte auf Gruppen beschränken</span>
        und/oder <span class="mbold">Leserechte auf Benutzer beschränken</span> auswählen. Der
        Ressourcenbedarf bei der Datenbankabfrage ist relativ hoch, daher sollten
        Sie diese Optionen nur aktivieren, wenn Sie individuelle Leserechte
        tatsächlich benötigen.
    </span>
</span>
</p>

<p class="desc">
<span class="item mbold">Verwende erweiterte Datenbankabfragen</span><!-- menuitem -->
<span class="desc-info">
    <span class="box">
        Erlaubt, zusätzliche Datenbankabfragen auszuführen. Damit wird es möglich,
        "dauerhafte", nicht in der "Artikelübersicht aufgeführte", und im RSS-Feed
        "versteckte Artikel" zu verwenden. Wenn diese Funktionen nicht benötigt werden,
        kann das Abschalten der Abfragen die Geschwindigkeit verbessern.
    </span>
</span>
</p>

<p class="desc">
<span class="item mbold">Standard: Artikel können gelesen werden von</span><!-- menuitem -->
<span class="desc-info">
    <span class="box">
        Wenn Sie die Beschränkung der Leserechte aktivieren, können Sie mit dieser Option
        festlegen, welche Leserechte ein neu erstellter Artikel standardmäßig besitzt.
        <span class="mbold">Co-Autoren</span> bedeutet, dass jeder eingeloggte Besucher
        einen Artikel lesen darf, ansonsten beschränkt sich der Zugriff entweder nur auf
        <span class="mbold">sie selbst</span> oder erlaubt es <span class="mbold">allen</span>.
    </span>
</span>
</p>

<p class="desc">
<span class="tag-box invisible">
    <span class="inline-tag">Freie Felder</span>
</span><!-- tagbox -->
<span class="label invisible" id="Freie-Felder">Freie-Felder</span>
<span class="tag-box invisible">
    <span class="inline-tag">Custom Fields</span>
</span><!-- tagbox -->
<span class="item mbold">Freie Felder</span><!-- menuitem -->
<span class="desc-info">
    <span class="box">
        Die sogenannten <em>Freien Felder</em> (oder <em>Custom Fields</em>) bieten
        eine sehr praktische Möglichkeit, um beliebige weitere Eingabefelder zu
        einem Artikel auszufüllen.
    </span>

    <span class="box">
        In das große Eingabefeld <span class="mbold">Freie Felder</span> können Sie eine Liste von
        kommaseparierten Feldnamen eintragen. Die Groß- und Kleinschreibung
        dieser Feldnamen ist später von Bedeutung, außerdem sollten Sie bei einem
        Feldnamen auf Leer- und Sonderzeichen verzichten.
    </span>

    <span class="box">
        Für jedes hier eingetragene Feld wird später beim Erstellen eines
        Artikels ein eigenständiges Eingabefeld eingebunden. Dort können Sie dann
        genauso wie beim <em>Artikeltext</em> oder <em>Erweiterten Eintrag</em>
        beliebigen Text eintragen.
    </span>

    <span class="box">
        Später können Sie die eingetragenen Felder an beliebigen Stellen in
        der Artikelausgabe des Frontends einbinden, indem Sie die Template-Datei
        <code>entries.tpl</code> bearbeiten. Weitere Informationen zum Einbau von Freien
        Feldern können Sie auf Seite <span class="pageref"><a href="#entryproperties-customprop">entryproperties-customprop</a></span> nachschlagen.
        Um Artikel mit bestimmten Eigenschaften innerhalb eines Templates darzustellen,
        können Sie den Parameter <code>entryprops</code> der Smarty-Funktion
        <code>serendipity_fetchPrintEntries</code> nutzen, wie auf Seite
        <span class="pageref"><a href="#entryproperties-customprop-fetch">entryproperties-customprop-fetch</a></span> beschrieben.
    </span>
</span>
</p>

<p>&nbsp;</p><!-- separator -->

<p>Wenn das Plugin konfiguriert und aktiviert ist, können Sie im Bereich
<span class="mbold">Erweiterte Optionen</span> beim Erstellen oder Bearbeiten eines
Blog-Artikels einige neue Einstellungen tätigen:</p>

<p class="desc">
<span class="tag-box invisible">
    <span class="inline-tag">Dauerhafte Artikel</span>
    <span class="inline-tag">Sticky Entries</span>
</span><!-- tagbox -->
<span class="label invisible" id="stickyentries">stickyentries</span>
<span class="item mbold">Dauerhafte Artikel</span><!-- menuitem -->
<span class="desc-info">Wenn ein Artikel als <em>Dauerhafter Artikel</em> (<em>Sticky</em>) markiert
ist, wird er im Frontend immer als erster Artikel angezeigt. Ein
Blog-Beitrag kann durch diese Markierung hervorgehoben werden und
erscheint so außerhalb der üblichen chronologischen Übersicht. Oft wird dies
für besonders wichtige Artikel verwendet, oder als eine Art Einführung zum Blog.</span>
</p>

<p class="desc">
<span class="item mbold">Nicht in Artikelübersicht zeigen</span><!-- menuitem -->
<span class="desc-info">Die Aktivierung dieser Option bewirkt, dass ein Artikel nicht in der
Artikelübersicht dargestellt wird. Er kann dann von einem Besucher nur
gefunden werden, wenn er sich in der Ansicht der zugehörigen Kategorie
des Eintrages befindet oder nach einem Artikel sucht.</span>
</p>

<p class="desc">
<span class="item mbold">Eintragsinhalt im RSS-Feed verstecken</span><!-- menuitem -->
<span class="desc-info">Wenn Sie nicht wollen, dass ein Blog-Beitrag mit im RSS-Feed ausgeliefert
werden soll, können Sie diese Option aktivieren.</span>
</p>

<p class="desc">
<span class="item mbold">Artikel können gelesen werden von:</span><!-- menuitem -->
<span class="desc-info">Mit diesem Auswahlfeld können Sie festlegen, ob ein Artikel nur von
eingeloggten Benutzern gelesen werden kann, nur von Ihnen selbst oder von
allen Besuchern. Diese Option wird nur dann angezeigt, wenn Sie in den
Optionen des Plugins die Beschränkung der Leserechte aktiviert haben.</span>
</p>

<p class="desc">
<span class="item mbold">Passwort</span><!-- menuitem -->
<span class="desc-info">Sie können einen Artikel vor unbefugten Lesern schützen, indem Sie ein
Passwort für einen Artikel vergeben. Der Besucher kann dann in der
Artikelübersicht zwar den normalen Artikeltext wie gewöhnlich lesen, aber
der <em>Erweiterte Eintrag</em> und die Detailansicht des Artikels können nur
aufgerufen werden, wenn der Besucher das richtige Passwort in einer
dargestellten Box einträgt.</span>
</p>

<p class="desc">
<span class="item mbold">Autor</span><!-- menuitem -->
<span class="desc-info">
    <span class="box">
        Wenn ein Redakteur einen Beitrag erstellt, wird er als der Eigentümer
        des Artikels festgelegt. Der Artikel kann danach nur noch vom
        Eigentümer oder berechtigten Benutzergruppen gelesen werden.
    </span>

    <span class="box">
        In manchen Fällen möchten Sie den Eigentümer eines Artikels gerne ändern.
        Das können Sie mithilfe dieses Plugins tun. Nur Chefredakteure bzw.
        Administratoren haben (abgesehen vom derzeit eingetragenen Besitzer) die
        Befugnis, den Autoren zu verändern.
    </span>

    <span class="box">
        Der hier eingestellte Autor ist auch derjenige, der in der
        Artikelübersicht als Autor aufgeführt wird.
    </span>
</span>
</p>

<p class="tagging invisible">
<span class="tag-box invisible">
    <span class="inline-tag">Deaktivieren!Textformatierungs-Plugins (fallweise)</span>
    <span class="inline-tag">Textformatierungs-Plugins!fallweise deaktivieren</span>
</span>
</p>

<p class="desc">
<span class="item mbold">Formatierungs-PlugIns für diesen Eintrag deaktivieren</span><!-- menuitem -->
<span class="desc-info">
    <span class="box">
        Standardmäßig werden alle installierten Textformatierungs-Plugins auf
        einen Artikel angewendet. In manchen Fällen kann es jedoch erforderlich
        sein, dass gewisse Textformatierungen nicht ausgeführt werden,
        beispielsweise wenn Sie HTML-Quellcode oder JavaScript in einem Beitrag
        verwenden wollen und es durch ein möglicherweise installiertes
        Wiki-Formatierungs-Plugin zu Veränderungen darin käme.
    </span>

    <span class="box">
        Über das Auswahlfeld können Sie bestimmen, welche Textformatierungen auf
        den aktuellen Artikel <em>nicht</em> angewendet werden sollen. Alle nicht
        ausgewählten Plugins werden weiterhin ausgeführt.
    </span>
</span>
</p>

<p class="desc">
<span class="item mbold">Freie Felder</span><!-- menuitem -->
<span class="desc-info">
    <span class="box">
        Abschließend folgt eine Liste aller in der Plugin-Konfiguration
        eingerichteten <em>Freien Felder</em>. Für jedes festgelegte Feld können
        Sie hier einen beliebigen Inhalt hinterlegen: HTML-Text, kurze Sätze --
        die Einsatzzwecke sind nur durch Ihre Fantasie begrenzt. Auch ist es
        möglich, einen Verweis auf eine Datei in der Mediendatenbank einzutragen
        -- so könnten Sie beispielsweise einfach eine MP3-Datei mit einem Artikel
        verketten. Um eine Mediendatei leicht einzufügen, befindet sich hinter
        jedem freien Feld direkt ein Link zum Aufruf der Mediendatenbank. In
        diesem Popup können Sie wie beim Artikeltext gewohnt eine Datei zum
        Einfügen auswählen.
    </span>
</span>
</p>

</section><!-- section.sub end -->

<section id="serendipity_event_modemaintain" class="sub">
<span class="u-toc">6.1.4 - Wartungs Modus: Temporärer 503 Wartungsmodus - serendipity_event_modemaintain</span>

<h3 class="subsection" id="temporaerer-503-wartungsmodusserendipity_event_modemaintain">Temporärer 503 Wartungsmodus<br>serendipity_event_modemaintain</h3>

<p class="tagging invisible">
<span class="tag-box invisible">
    <span class="inline-tag">Wartung</span>
    <span class="inline-tag">Wartung!Service Wartungs Modus</span>
    <span class="inline-tag">Plugins!Wartungs Modus</span>
    <span class="inline-tag">Plugins!serendipity_event_modemaintain</span>
</span>
</p>

<p>Dieses Plugin erlaubt das öffentliche Blog - das Frontend - in einen
"<em>503 - Service Temporarily Unavailable</em>" Modus zu versetzen.
Siehe: <span class="pageref"><a href="#U497">Wartung: Service Wartungs Modus</a></span>.</p>

<p class="desc">
<span class="tag-box invisible">
    <span class="inline-tag">Plugins!Wartung!Öffentlicher Wartungs Modus Text</span>
</span><!-- tagbox -->
<span class="item mbold">Öffentlicher Wartungs Modus Text</span><!-- menuitem -->
<span class="desc-info">
    <span class="box">
        Informationstext der erscheint, wenn sich ihr Blog zur Zeit im Wartungsmodus befindet.
        <span class="pageref"><a href="#xxx">xxx</a></span> nachlesen.
    </span>

    <span class="box"><span class="recommended">Empfohlene Einstellung</span>: <em>Nein</em></span>
</span>
</p>

<p class="desc">
<span class="tag-box invisible">
    <span class="inline-tag">Plugins!Wartung!Binde das Serendipity Logo ein</span>
</span><!-- tagbox -->
<span class="item mbold">Binde das Serendipity Logo ein?</span><!-- menuitem -->
<span class="desc-info">
    <span class="box">
        Bindet das Serendipity Styx Logo in den Wartungstext ein.
    </span>

    <span class="box"><span class="recommended">Empfohlene Einstellung</span>: <em>Warum nicht?! :)</em></span>
</span>
</p>

<p>
    <span class="box">
        Dieser Wartungsmodus kann nur vom Administrator des Blogs
        in der Wartung des Backend über <span class="mbold">Service Wartungs Modus</span>
        in Betrieb gesetzt werden.
    </span>

    <span class="box">
        Er dient vor allem dazu, das Blog während Serendipity Updates,
        oder sonstige Wartungsaufgaben die den Frontendbetrieb stören
        können, für Besucher kurzerhand außer Berieb zu setzen.
    </span>

    <span class="box">
        Er ist dazu gedacht dem Administrator aber weiterhin volle
        Kontrolle und Zugriff auf das Back- wie das Frontend zu geben.
        Dies geschieht über das Login-Cookie, welches erlaubt, über die
        temporäre Session hinaus angemeldet zu bleiben.
        Wie das geht können Sie bei <span class="pageref"><a href="#login">Login</a></span>
        unter Option <span class="mbold">Daten speichern</span> nachlesen.
    </span>

    <span class="box">
        Während des Wartungs-Sperrvorganges ist das Serendipity Backend Logout
        deaktiviert, damit Sie sich nicht versehentlich aussperren können.
        Gehen Sie trotzdem achtsam damit um und schließen Sie nicht voreilig
        den Browser oder das Tab, oder senden das generelle Konfigurations
        Formular ab, ohne den Wartungsmodus vorher korrekt zurückgesetzt zu haben!
    </span>

    <span class="box">
        Auf der Wartungsseite dient der <span class="mbold">grüne</span> Button:
        <span class="mbold">Aktiviere den 503 Modus</span> dazu,
        den Modus zu aktivieren. Dieser <span class="mbold">muss</span>
        danach <span class="mbold">rot</span> werden und
        <span class="mbold">Deaktiviere den 503 Modus</span> heißen.
        Sollte dies nicht geschehen klicken Sie zu einer anderen Stelle
        des Backend und kehren Sie zurück. Als zweite Möglichkeit sollte
        eine weiterer Versuch den Button zu aktivieren 1-2 Sekunden später gehen.
        Ebenso muss dies von <span class="mbold">rot</span> nach
        <span class="mbold">grün</span> werden, wenn Sie das Blog wieder freigeben!
    </span>

    <span class="box">
        Wenn Sie sich jemals ausloggen, ohne den 503 Maintenance Mode zurückgestellt
        zu haben, ihr Login Cookie beschädigt oder gelöscht wurde, müssen Sie die
        <code>$serendipity['maintenance']</code> Variable in der
        <span class="mbold">serendipity_config_local.inc.php</span> Datei manuell auf 'false' stellen,
        um sich und der Öffentlichkeit wieder Zugang zu ihrem Blog zu ermöglichen!
    </span>

    <span class="box">
        Sollte Letzteres aus Gründen der allzu restriktiv gesetzten Dateiberechtigungen
        ihres Hosters nicht möglich sein, können Sie nur noch temporär den Ordner des
        modemaintain Plugins mit einem Unterstrich <code>_</code> kurzeitig außer
        Betrieb setzen, bis sie wieder angemeldet sind.
    </span>
</p>

</section><!-- section.sub end -->

<section id="serendipity_event_nl2br" class="sub">
<span class="u-toc">6.1.5 - Textformatierung: NL2BR: serendipity_event_nl2br</span>

<h3 class="subsection" id="textformatierung-nl2brserendipity_event_nl2br">Textformatierung: NL2BR<br>serendipity_event_nl2br</h3>

<p class="tagging invisible">
<span class="tag-box invisible">
    <span class="inline-tag">Plugins!Textformatierung: NL2BR</span>
    <span class="inline-tag">Plugins!serendipity_event_nl2br</span>
</span>
<span class="label invisible" id="nl2br">nl2br</span>
<span class="tag-box invisible">
    <span class="inline-tag">Fehler!Zeilenumbrüche werden nicht umgewandelt</span>
    <span class="inline-tag">Fehler!ungewollte Zeilenumbrüche im Text</span>
</span>
</p>

<p>Das Plugin <em>NL2BR</em> ist ein ebenfalls recht simples
Textformatierungs-Plugin. Es sorgt einfach dafür, dass von Ihnen
eingegebene Zeilenumbrüche in einem Beitrag später in einen korrekten
HTML-Zeilenumbruch (<code>&lt;br /&gt;</code>) umgewandelt werden.</p>

<p>Das ist notwendig, weil der HTML-Standard normale Zeilenumbrüche nicht
als solche erkennt. Auch mehrere hintereinander eingetragene
Leerzeichen werden von HTML als ein einziges Leerzeichen
zusammengefasst.</p>

<p>Wenn Sie also ohne dieses Plugin Beiträge schreiben, müssten Sie selber
die korrekten HTML-Absätze (entweder mittels <code>&lt;p&gt;...&lt;/p&gt;</code> oder
<code>&lt;br /&gt;</code>) einfügen. Je nachdem, ob Sie einen WYSIWYG-Editor einsetzen,
tut dies der Editor auch bereits selbständig.</p>

<p>Wenn Sie also bei selbständiger Eingabe überflüssige Zeilenumbrüche in
Ihren Artikeln haben, sollten Sie das <em>NL2BR</em>-Plugin anpassen (s.u.).</p>

<p>Abhängig vom eingesetzten Template kann es sein, dass das Template die
Abstände zwischen Absätzen (den <code>&lt;p&gt;</code>-Tags) mittels
CSS-Formatierungen deaktiviert. Die eigentlich zu erwartenden Leerzeilen
zwischen zwei Absätzen würden somit also unterdrückt werden. In älteren
Templates wurde dies hauptsächlich deshalb eingefügt, um doppelte
Zeilenumbrüche in Verbindung mit dem <em>NL2BR</em>-Plugin zu vermeiden.
Wenn Sie ein derartiges Template einsetzen, können Sie eine einfache
CSS-Formatierung am Ende der <code>style.css</code>-Datei im entsprechenden
<code>templates</code>-Unterverzeichnis einfügen:</p>

<pre><code class="css">
    .serendipity_entry p {<br>
    &nbsp; margin: 1em;<br>
    }
</code></pre>

<p>Dadurch wird der Abstand (<em>margin</em>) zwischen Paragraphen auf eine
relative Einheit gesetzt, die dem üblichen Absatzabstand entspricht.</p>

<p>Ein weiteres Problem kann auftreten, wenn Sie in einem
Beitrag JavaScript oder anderweitigen Sourcecode platzieren möchten. Denn
auch hier würde das Plugin relativ stur sämtliche Leerzeichen durch
<code>&lt;br /&gt;</code> umwandeln und dadurch JavaScript ungültig machen oder Ihre
spezielle Sourcecode-Formatierung in einem
<code>&lt;blockquote&gt;</code>-HTML-Konstrukt mit überflüssigen HTML-Zeilenumbrüchen
stören. Es gibt mehrere
Möglichkeiten (abgesehen vom Deinstallieren des NL2BR-Plugins), dieses Problem zu beheben:</p>

<ul class="realList">
    <li>Den WYSIWYG-Editor verwenden, denn dieser deaktiviert die
    Benutzung von nl2br automatisch. Im PLAIN TEXT-Editor haben Sie
    die Möglichkeit die P-Tag Option zu verwenden, oder per NoBR-Button
    bestimmte Textpassagen vom NL2BR-Parsen auszuschließen.</li>

    <li>NL2BR-Plugin fallweise für einen einzelnen Artikel
    deaktivieren. Dies können Sie beim Erstellen eines Artikels im
    Abschnitt <em>Erweiterte Optionen</em> erledigen, wenn Sie das
    Ereignis-Plugin <em>Erweiterte Eigenschaften von Artikeln</em>
    installiert haben.</li>

    <li>In der Konfiguration des NL2BR-Plugins die Blog Einträge von
    der NL2BR-Parsung auszunehmen, oder die Liste von geschützten
    HTML-Tags so ändern, dass keine Zeilenumbrüche zwischen
    ungewünschten Tags eingefügt werden. So können Sie zB.
    <code>script</code> mit in die kommaseparierte Tagliste aufnehmen,
    damit das NL2BR-Plugin keine Zeilenumbrüche in JavaScript-Containern
    einfügt.</li>

    <li>Bei der Reihenfolge der Textformatierungs-Plugins darauf achten,
    dass das NL2BR-Plugin als letztes ausgeführt wird. Dadurch wird
    verhindert, dass die Zeilenumbrüche zu früh eingefügt werden und
    möglicherweise andere Textformatierungs-Plugins durcheinanderbringen.</li>
</ul>

</section><!-- section.sub end -->

<section id="serendipity_event_s9ymarkup" class="sub">
<span class="u-toc">6.1.6 - Textformatierung: Serendipity: serendipity_event_s9ymarkup</span>

<h3 class="subsection" id="textformatierung-serendipityserendipity_event_s9ymarkup">Textformatierung: Serendipity<br>serendipity_event_s9ymarkup</h3>

<p class="tagging invisible">
<span class="tag-box invisible">
    <span class="inline-tag">Plugins!Textformatierung: Serendipity</span>
    <span class="inline-tag">Plugins!serendipity_event_s9ymarkup</span>
</span>
</p>

<p class="tagging invisible">
<span class="tag-box invisible">
    <span class="inline-tag">Fehler!falsche Textformatierung im Artikel</span>
</span>
</p>

<p>Das Textformatierungs-Plugin <em>Serendipity</em> bietet einige ganz
einfache Umwandlungen für Ihre Artikeltexte an. Diese Umwandlungen sind
an alte Mailbox-Hervorhebungsmöglichkeiten angelehnt und stammen noch aus
einer Zeit, in der Formatierung via HTML gänzlich unbekannt war. Daher
haben sich viele alte Hasen an derlei Formatierung gewöhnt und können
damit leichter umgehen als mit HTML-Code:</p>

<ul class="simpleList">
    <li><code>*Wort*</code> formatiert ein Wort fett.</li>
    <li><code>_Wort_</code> unterstreicht ein Wort.</li>
    <li><code>^Wort^</code> setzt ein Wort hochgestellt.</li>
    <li><code>@Wort@</code> setzt ein Wort tiefgestellt.</li>
</ul>

<p>Aufgrund dieser besonderen Konventionen kann das
Serendipity-Textformatierungs-Plugin besonders bei Artikeln mit
Quellcode-Inhalten Probleme verursachen. Wenn Sie in einem Artikel
PHP-Code zitieren, könnten die oben aufgeführten Sonderzeichen ungewollte
HTML-Formatierungen auslösen.</p>

<p>Sie können dieses Problem meist beheben, indem Sie das Plugin im
Bedarfsfall für einen einzelnen Beitrag deaktivieren (über die
zusätzlichen Artikeloptionen des Plugins <em>Erweiterte Eigenschaften
für Artikel</em>, siehe Seite <span class="pageref"><a href="#entryproperties">entryproperties</a></span>) oder indem Sie es
vollständig deinstallieren. Wenn Sie das Plugin in Zusammenhang mit anderen
Quellcode-Hervorhebungs-Plugins benutzen, achten Sie möglichst darauf,
dass das Serendipity-Textformatierungs-Plugin als letztes
Textformatierungs-Plugin in der Plugin-Liste aufgeführt wird.</p>

</section><!-- section.sub end -->

<section id="serendipity_event_spamblock" class="sub">
<span class="u-toc">6.1.7 - Spamschutz: serendipity_event_spamblock</span>

<h3 class="subsection" id="spamschutzserendipity_event_spamblock">Spamschutz<br>serendipity_event_spamblock</h3>

<p class="tagging invisible">
<span class="tag-box invisible">
    <span class="inline-tag">Anti-Spam</span>
    <span class="inline-tag">Spamblock</span>
    <span class="inline-tag">Spamschutz</span>
</span>
<span class="label invisible" id="spamblock">spamblock</span>
<span class="tag-box invisible">
    <span class="inline-tag">Plugins!Spamschutz</span>
    <span class="inline-tag">Plugins!serendipity_event_spamblock</span>
</span>
</p>

<p>Das Plugin, das den Rekord für die höchste Anzahl von
Konfigurationsoptionen hält, ist sicherlich das <em>Spamschutz</em>-Plugin.
Erschrecken Sie nicht davor, sondern gehen Sie die Möglichkeiten ruhig
nacheinander durch. Die Voreinstellungen des Plugins sind für gewöhnliche
Zwecke bereits recht gut geeignet.</p>

<p>
<span class="tag-box invisible">
    <span class="inline-tag">Spam</span>
</span><!-- tagbox -->
Anhand der Fülle verschiedener Optionen wird eines recht deutlich: Der
Kampf gegen Spam (unerwünschte Werbung) ist extrem müßig und mit viel
"Wenn" und "Aber" verbunden. Einen optimalen Schutz gegen Spam
kann Ihnen auch dieses Buch leider nicht geben, dafür ändern sich die
Techniken der Spammer zu häufig.</p>

<p>
<span class="tag-box invisible">
    <span class="inline-tag">Akismet</span>
    <span class="inline-tag">Captchas</span>
</span><!-- tagbox -->
Als probates Mittel hat sich eine Zeitlang die Verwendung des <em>Akismet</em>-Services
erwiesen. Dieser zentrale Server führt schwarze Listen von
Kommentarspam-Fällen und kann von vielen Blogsystemen genutzt werden,
darunter Serendipity, WordPress und MoveableType. Auch die Aktivierung
von Captchas reduziert Kommentarspam sehr deutlich, bringt aber
auch Usability-Einschränkungen mit sich.</p>

<p>Heutzutage empfiehlt sich folgende Zusammenstellung und Einstellung:
Installieren Sie die <a href="#serendipity_event_spamblock_bee">Spamschutz Biene</a>, das
<code>serendipity_event_spamblock_bee</code> Plugin
und setzen Sie es an die absolute Spitze der event Pluginliste.
Wenn das Spamblock Plugin kurz dahinter arbeitet, können sich allein diese
beiden Plugins so hervorragend ergänzen, dass nur noch sehr sehr wenig
bis gar kein SPAM mehr durchkommt. Dies geht am besten in einer Kombination
aus Einstellungen von Comment-Moderation und -Reject. In Kurzform: Bee Honepot
einsetzen YES und Bee Methode JSON und Bee versteckte CAPTCHAS auf Kommentare
abweisen. Und im Spamblock Captchas auf aus stellen. Doch würde es hier
zu weit führen dies ausführlicher zu erklären. Die Biene ist aber ein sehr
ressourcenschonendes Plugin, da es die dummen Bots bereits an der äußersten Front beseitigt
und das Spamblock Plugin mit seinen vielfätigen Einstellungen den Rest erledigen kann.
Als letztes - soweit dann noch notwendig - kann dann noch als letzte Defensivlinie das lernende Bayes Plugin
mit seiner Datenbank für die Wortanalyse und -gewichtung als schweres Geschütz eingesetzt werden.
</p>

<p>Dafür ermöglichen es Ihnen aber viele der aufgeführten Optionen, flexibel
auf neue Gegebenheiten eingehen zu können. Daher sollten Sie das
Folgende aufmerksam durchlesen, um im Bedarfsfall schnell auf Spam
reagieren zu können.</p>

<p>Das Spamschutz-Plugin wird jeweils aufgerufen, wenn in Ihrem Blog jemand
einen Kommentar oder ein Trackback hinterlässt. Das Plugin prüft
daraufhin, was der Benutzer übermittelt hat, und führt nacheinander
mehrere Tests aus. Sobald einer der aktivierten Tests einen Kommentar als
Spam markiert, wird der Artikel speziell vorgemerkt. Das Plugin merkt
sich daraufhin, aufgrund welcher Maßnahme ein Artikel als Spam
identifiziert wurde. Denn wie bei der Spam-Filterung bei E-Mails kann es
leicht vorkommen, dass auch gültige Nachrichten aufgrund einer
Filterregel als Spam klassifiziert worden sind. Daher ist es wichtig,
die Filter von vornherein nicht zu "scharf" einzustellen und
ab und zu die Logdateien nach falsch eingestuftem Spam durchzugehen.</p>

<p>Wenn ein Kommentar als Spam identizifiert ist, können zwei Dinge
geschehen: Entweder er wird komplett verworfen, oder er wird moderiert.
Moderierte Kommentare müssen erst von einem Redakteur freigeschaltet
werden. Komplett verworfene Kommentare werden erst gar nicht in der
Datenbank gespeichert, und der Redakteur wird von einem solchen Kommentar
nie etwas erfahren. Nur auf zu moderierende Kommentare wird ein
Redakteur möglicherweise per E-Mail hingewiesen (abhängig von den
Einstellungen des Redakteurs bezüglich E-Mail-Benachrichtigungen, siehe
Seite <span class="pageref"><a href="#einstellungen-commentnotify">einstellungen-commentnotify</a></span>).</p>

<p>Bei vielen Anti-Spam-Optionen können Sie einstellen, ob beim Zutreffen
einer einzelnen Regel die Nachricht verworfen oder moderiert werden soll.
Sobald die erste Regel zutrifft, die eine Nachricht verwirft, ist die
Ausführung des Anti-Spam-Plugins beendet. Daher ist es durchaus möglich,
dass ein Kommentar von einer Regel erst als "moderiert"
eingestuft wird, dann aber eine Folge-Filterregel den Kommentar doch
"abweist". Das Abweisen hat also Priorität vor der Moderation.</p>

<p>Wenn Sie einen Artikel bereits mit aktivierter Option <span class="mbold">Kommentare
und Trackbacks dieses Eintrags werden moderiert</span> erstellt haben, kann das
Anti-Spam-Plugin dennoch Kommentare abweisen. Ein Kommentar kann dann
jedoch niemals ohne Moderation veröffentlicht werden. Wenn Sie die Option
<span class="mbold">Kommentare für diesen Eintrag zulassen</span> bei einem Artikel
deaktiviert haben, ist das Anti-Spam-Plugin für diesen Artikel
irrelevant, da sämtliche Kommentare abgewiesen werden.</p>

<p>Durch die schiere Anzahl der Konfigurationsoptionen erschien es ratsam
diese in neueren Serendipity Version in drei Hauptblöcke zu unterteilen.
Dies sind: Wortfilter-Einstellungen, Trackback-Einstellungen und Generelle-Einstellungen.
Die beiden ersteren sind per default ein-/zugeklappt, um sich erst einmal den wichtigen
Generellen-Einstellungen widmen zu können.</p>

<h4 class="plugin-config-header">Spamblock: Generelle-Einstellungen</h4>

<p class="desc">
<span class="tag-box invisible">
    <span class="inline-tag">Plugins!Spamschutz!Generelle-Einstellungen!Notfall-Blockade von Kommentaren</span>
</span><!-- tagbox -->
<span class="item mbold">Notfall-Blockade von Kommentaren</span><!-- menuitem -->
<span class="desc-info">
    <span class="box">
        Wenn gerade eine Spam-Welle über Sie hereinbricht, können Sie diese
        Option aktivieren, um im Blog keinerlei Kommentare oder Trackbacks
        anzunehmen. Weitergehende Blockademaßnahmen können Sie auf Seite
        <span class="pageref"><a href="#commentphp">commentphp</a></span> nachlesen.
    </span>

    <span class="box"><span class="recommended">Empfohlene Einstellung</span>: <em>Nein</em></span>
</span>
</p>

<p class="desc">
<span class="tag-box invisible">
    <span class="inline-tag">Plugins!Spamschutz!Generelle-Einstellungen!Spamblock für Autoren deaktivieren</span>
</span><!-- tagbox -->
<span class="item mbold">Spamblock für Autoren deaktivieren</span><!-- menuitem -->
<span class="desc-info">
    <span class="box">
        Häufig können Sie den angemeldeten Autoren des Blogs vertrauen, dass sie
        keine Spam-Einträge in Ihrem Blog vornehmen. Daher können Sie mit der
        Einstellung <span class="mbold">Spamblock für Autoren deaktivieren</span> dafür sorgen, dass
        alle eingeloggten Redakteure bei Kommentaren von keinerlei
        Anti-Spam-Maßnahmen betroffen sind (Einstellung <span class="mbold">Alle Autoren</span>).
        Eingeloggte Autoren sehen also keine Captcha-Grafiken und werden nicht
        anderweitig von Filterungen behelligt. Wenn Sie das Auswahlfeld auf
        <span class="mbold">keine</span> stellen, unterscheidet das Plugin nicht zwischen anonymen
        und eingeloggten Besuchern.
    </span>

    <span class="box">
        Ansonsten können Sie in diesem Feld gezielt Benutzergruppen auswählen.
        Wenn Sie das Plugin <em>Freie Benutzer-Registrierung</em> benutzen, ist
        dies besonders sinnvoll, um "anonyme" Redakteure dennoch von den
        "echten", manuell erzeugten Redakteuren unterscheiden zu können. Achten
        Sie dann einfach darauf, dass die Benutzergruppe der Redakteure, die über das
        Registrierungs-Plugin hinzugefügt werden, nicht im Auswahlfeld markiert ist.
    </span>

    <span class="box"><span class="recommended">Empfohlene Einstellung</span>: <em>Alle Autoren</em></span>
</span>
</p>

<p class="desc">
<span class="tag-box invisible">
    <span class="inline-tag">Plugins!Spamschutz!Generelle-Einstellungen!Keine doppelten Kommentare erlauben</span>
</span><!-- tagbox -->
<span class="item mbold">Keine doppelten Kommentare erlauben</span><!-- menuitem -->
<span class="desc-info">
    <span class="box">
        Üblicherweise sollte es in einem Blog nie dazu kommen, dass identische
        Kommentare mehrfach vorkommen. Daher können Sie Kommentare sperren, die
        bereits in der Datenbank vorhanden sind, wenn Sie die Option <span class="mbold">Keine
        doppelten Kommentare erlauben</span> auf <span class="mbold">Ja</span> stellen.
    </span>

    <span class="box">
        Viele Spammer variieren ihre Inhalte durch zufällig erzeugte Buchstaben
        und sind daher von dieser Einstellung nicht betroffen. Dennoch kann diese
        Anti-Spam-Maßnahme auch helfen, doppelte profane Kommentare wie
        "super!" zu unterbinden.
    </span>

    <span class="box"><span class="recommended">Empfohlene Einstellung</span>: <em>Ja</em></span>
</span>
</p>

<p class="desc">
<span class="tag-box invisible">
    <span class="inline-tag">Plugins!Spamschutz!Generelle-Einstellungen!Kommentare abweisen, die als Text nur Bekanntes enthalten</span>
</span><!-- tagbox -->
<span class="item mbold">Kommentare abweisen, die als Text nur Bekanntes enthalten</span><!-- menuitem -->
<span class="desc-info">
    <span class="box">
        Eine beliebte Form des Kommentar-Spams stellte einmal die Methode dar, bei
        einem Kommentar einfach den Titel Ihrer eigenen Artikel zu übernehmen.
        Anstelle eines Links zu einem fremden Artikel erhielten Spammer ihren
        Nutzen dadurch, dass deren Benutzername oder Homepage auf eine fremde URL
        verwies.
    </span>

    <span class="box">
        Wenn Sie diese Option aktivieren, werden solche Kommentare verboten.
        In der freien Wildbahn treten derartige Spam-Kommentare kaum noch auf,
        daher ist es empfehlenswert, die Option aus Geschwindigkeitsgründen
        besser zu deaktivieren.
    </span>

    <span class="box"><span class="recommended">Empfohlene Einstellung</span>: <em>Nein</em></span>
</span>
</p>

<p class="desc">
<span class="tag-box invisible">
    <span class="inline-tag">IP-Adresse!sperren</span>
</span>
<span class="label invisible" id="ipblock">ipblock</span>
<span class="tag-box invisible">
    <span class="inline-tag">Plugins!Spamschutz!Generelle-Einstellungen!IP-Block Intervall</span>
</span><!-- tagbox -->
<span class="item mbold">IP-Block Intervall</span><!-- menuitem -->
<span class="tag-box invisible">
    <span class="inline-tag">IP</span>
</span>
<span class="desc-info">
    <span class="box">
        Jeder Besucher des Blogs besitzt eine eigene IP, die den Benutzer im
        Internet identifiziert. Üblicherweise hat somit jeder Besucher der
        Webseite eine eindeutige IP, die sich jedoch bei jeder neuen Einwahl des
        Benutzers ins Internet unterscheiden wird. Mit einer so gewonnenen
        IP-Adresse kann man versuchen, Kommentare von dort nach gewissen
        Kriterien zu unterbinden.
    </span>

<span class="tag-box invisible">
    <span class="inline-tag">Proxy</span>
</span>
    <span class="box">
        IP-Adressen sind jedoch leider keine verlässliche Maßnahme. Wenn ein
        Besucher einen sogenannten <em>Proxy</em> [*]
        <span class="footnote"><i class="fa fa-info-circle"></i> Ein Proxy ist eine
        Art Webserver, der die Inhalte fremder Webseiten zwischenspeichern kann, um so
        Traffic zu reduzieren oder Inhalte leichter zu filtern.</span><!-- footnote --> benutzt,
        werden seine Zugriffe über die IP-Adresse dieses Servers durchgeführt.
        Der Proxy verschleiert also die wahre Identität des Besuchers. Da große
        Unternehmen wie T-Online und auch AOL für ihre Benutzer zentrale
        Proxy-Server benutzen, könnte man also beim Blocken einer solchen IP
        nicht nur den Zugriff für eine einzelne Person verhindern, sondern für
        alle Besucher, die diesen Proxy verwenden.
    </span>

    <span class="box">
        Kurzum, Sie sollten der IP-Adresse kein absolutes Vertrauen schenken.
        Dennoch kann es helfen, Missbrauch auf gewisse Weise einzudämmen. Die
        Option <span class="mbold">IP-Block Intervall</span> ermöglicht es, dass eine eindeutige IP
        nur einmal einen Kommentar eintragen darf, und dann erst wieder nach Ablauf
        des konfigurierten Zeitraums. Somit ist es nicht mehr möglich, mehrere
        hundert Kommentare pro Sekunde abzusetzen.
    </span>

    <span class="box">
        In Blogs passiert es selten, dass Benutzer (auch die Benutzer eines Proxies)
        im Minutentakt gewünschte Kommentare hinterlassen. Daher ist ein
        Zeitraum von einer Minute hier durchaus empfehlenswert.
    </span>

    <span class="box">
        Die Abweisung eines Kommentars mittels dieser Option erfolgt erst bei
        der Abarbeitung eines bereits übermittelten Kommentars. Das heißt, der
        eigentliche Zugriff auf das Blog wird anhand dieser Option nicht
        eingeschränkt.
    </span>

    <span class="box"><span class="recommended">Empfohlene Einstellung</span>: <em>60</em>.</span>
</span>
</p>

<p class="desc">
<span class="tag-box invisible">
    <span class="inline-tag">CSRF</span>
    <span class="inline-tag">XSRF</span>
    <span class="inline-tag">Plugins!Spamschutz!Generelle-Einstellungen!CSRF-Schutz aktivieren</span>
</span><!-- tagbox -->
<span class="item mbold">CSRF-Schutz aktivieren?</span><!-- menuitem -->
<span class="desc-info">
    <span class="box">
        Die meisten Spam-Kommentare erfolgen, indem ein Spam-Roboter automatisch
        Ihre URLs aufruft und einen Kommentar überträgt. Meist macht sich der
        Roboter nicht die Mühe, vorher (wie ein normaler Blog-Besucher) die
        eigentliche Webseite aufzurufen. Dieses Vorgehen kann man sich zur Abwehr
        zunutze machen: Man speichert auf der Seite, von der aus das
        Kommentarformular eingebunden wird, einen Zufallswert. Nur wenn dieser
        Zufallswert gültig mit dem Kommentar vom Browser des Besuchers
        übermittelt wird, kann man davon ausgehen, dass ein menschlicher Besucher
        auch vorher den Artikel aufgerufen hat und dass nicht einfach etwas automatisiert
        übertragen wird.
    </span>

    <span class="box">
        Die Aktivierung dieser Option hat leider einen gravierenden Nachteil.
        Denn damit der eingegebene Zufallswert auf dem Server zur Prüfung
        zwischengespeichert werden kann, muss eine Session (siehe Terminologie,
        Seite <span class="pageref"><a href="#sessioncookies">sessioncookies</a></span>) für den Besucher angelegt werden. Eine Session
        ist jedoch von Serendipity nur nutzbar, wenn der Browser des Besuchers Cookies annimmt
        (siehe Hinweis Seite <span class="pageref"><a href="#Cookie">Cookie</a></span>).
    </span>

    <span class="box">
        Weiterhin bringt diese Option einen Schutz vor
        <em>CSRF</em> [*]
        <span class="footnote"><i class="fa fa-info-circle"></i> <em>Cross Site Request Forgery</em> nennt man den
        Versuch eines fremden Benutzers, Ihren Browser fernzusteuern und damit
        Aktionen auszulösen, die Sie selbst gar nicht
        ausführen möchten.</span><!-- footnote -->. Dies führt zu Angriffen, bei denen ein böswilliger Benutzer
        Sie dazu bringen könnte, ungewollt Kommentare zu verfassen oder sogar
        freizuschalten.
    </span>

    <span class="box"><span class="recommended">Empfohlene Einstellung</span>: <em>Ja</em>.</span>
</span>
</p>

<p class="desc">
<span class="tag-box invisible">
    <span class="inline-tag">Plugins!Generelle-Einstellungen!Spamschutz!Captchas aktivieren</span>
    <span class="inline-tag">Captchas</span>
</span><!-- tagbox -->
<span class="item mbold">Captchas aktivieren</span><!-- menuitem -->
<span class="desc-info">
    <span class="box">
        Captchas (siehe Seite <span class="pageref"><a href="#Captcha">Captcha</a></span>) sind kleine Grafiken mit schwer
        zu lesenden Zeichenkombinationen. Damit ein Besucher einen Kommentar
        schreiben darf, muss er die dargestellten Zeichen in eine Box abtippen,
        um sich dem System gegenüber als "Mensch" auszuweisen.
    </span>

    <span class="box">
        Captcha-Grafiken müssen eine gewisse Komplexität aufweisen, damit sie
        tatsächlich nicht von Computern überlistet werden können. Dies kann dazu
        führen, dass es auch den Besuchern immer schwerer fällt, die Captchas
        zu entziffern. Dennoch bietet diese Maßnahme eine der effektivsten
        Möglichkeiten, automatisierten Spam zu unterbinden.
    </span>

    <span class="box">
        Mit der Option <span class="mbold">Stärkere Captchas</span> können Sie die Komplexität der
        Grafiken noch weiter erhöhen, indem weitere Zufallsmuster eingefügt
        werden. Diese Option ist mehr für den "Spam der Zukunft" vorgesehen
        und sollte derzeit glücklicherweise noch nicht erforderlich sein.
    </span>

    <span class="tag-box invisible">
        <span class="inline-tag">gdlib</span>
    </span>
    <span class="box">
        Um Captchas anzeigen zu können, sollte Ihr Server die PHP <em>gdlib</em>
        anbieten. Andernfalls werden die Zeichenfolgen mit Grafikdateien
        zusammengebaut, was von Spam-Robotern um einiges einfacher zu umgehen
        ist. Damit Ihre Besucher Captchas ausfüllen können, müssen sie
        in ihrem Browser Cookies annehmen. Wie Sie die Captcha-Grafiken anpassen
        können, ist auf Seite <span class="pageref"><a href="#Captcha-anpassen">Captcha-anpassen</a></span> ausgeführt.
    </span>

    <span class="box"><span class="recommended">Empfohlene Einstellung</span>: <em>Ja</em>.</span>
</span>
</p>

<p class="desc">
<span class="tag-box invisible">
    <span class="inline-tag">Plugins!Spamschutz!Generelle-Einstellungen!Captchas nach wie vielen Tagen erzwingen</span>
</span><!-- tagbox -->
<span class="item mbold">Captchas nach wie vielen Tagen erzwingen</span><!-- menuitem -->
<span class="desc-info">
    <span class="box">
        Da Captchas gerade für sehbehinderte Menschen große Probleme schaffen,
        möchte man diese Grafiken so selten wie möglich erforderlich machen.
    </span>

    <span class="box">
        Da Spammer mit Vorliebe alte Artikel in Ihrem Blog als Ziel nehmen (da
        diese Artikel bei Suchmaschinen bereits besser vertreten sind), sind
        häufig neue Artikel des Blogs nicht betroffen.
    </span>

    <span class="box">
        Dies können Sie ausnutzen, indem Sie Captchas nur dann einblenden, wenn
        ein Artikel ein gewisses Alter erreicht hat. Das Mindestalter tragen Sie
        in Tagen ein. Wenn Sie <em>0</em> eintragen, werden Captchas auch bei
        aktuellen Artikeln direkt eingebunden.
    </span>

    <span class="box"><span class="recommended">Empfohlene Einstellung</span>: <em>14</em>.</span>
</span>
</p>

<p class="desc">
<span class="tag-box invisible">
    <span class="inline-tag">Plugins!Spamschutz!Generelle-Einstellungen!Hintergrundfarbe des Captchas</span>
</span><!-- tagbox -->
<span class="item mbold">Hintergrundfarbe des Captchas</span><!-- menuitem -->
<span class="desc-info">
    <span class="box">
        Die Captcha-Grafik wird unterhalb des Eingabeformulars für einen Kommentar
        eingebunden. Je nach Design Ihres Blogs möchten Sie die Hintergrundfarbe
        dieser automatisch erzeugten Grafiken sicher anpassen. Daher können Sie bei
        dieser Option eine Farbe im RGB-Format eintragen. Drei Zahlen repräsentieren hier,
        von einem Komma voneinander getrennt, den Farbwert von <em>Rot, Grün</em> und <em>Blau</em>.
        Wer sich an die Farbenlehre erinnern kann, weiß, dass man mit diesen drei
        Primärfarben jede andere vom Monitor darstellbare Farbe abbilden kann. Um
        diese Farbwerte leicht herauszufinden, können Sie kleine Tools wie etwa den Colorpicker [*]
        <span class="footnote"><i class="fa fa-info-circle"></i> <a href="http://www.pagetutor.com/colorpicker/index.html" target="_blank">http://www.pagetutor.com/colorpicker/index.html</a></span><!-- footnote -->
        benutzen.
    </span>

    <span class="box"><span class="recommended">Empfohlene Einstellung</span>: <em>255,255,255</em> (Weiß)</span>
</span>
</p>

<p class="desc">
<span class="tag-box invisible">
    <span class="inline-tag">Plugins!Spamschutz!Generelle-Einstellungen!Kommentarmoderation nach wievielen Tagen erzwingen</span>
</span><!-- tagbox -->
<span class="item mbold">Kommentarmoderation nach wievielen Tagen erzwingen</span><!-- menuitem -->
<span class="desc-info">
    <span class="box">
        Bei besonders alten Artikeln ist es sehr selten, dass Besucher noch
        gewünschte Kommentare hinterlassen. Blogs sind meistens so tagesaktuell,
        dass ältere Artikel schnell an "Kommentarwert" verlieren. Dies können
        Sie also ausnutzen, um Kommentare zu alten Artikeln von vornherein
        auszusortieren.
    </span>

    <span class="box">
        Wenn Sie hier die Zahl <code>0</code> eintragen, wird diese Möglichkeit der
        automatischen Moderation deaktiviert. Eine Zahl wie <code>60</code> bewirkt,
        dass Artikel älter als zwei Monate nicht ohne Ihre Zustimmung kommentiert
        werden können.
    </span>

    <span class="box"><span class="recommended">Empfohlene Einstellung</span>: <em>60</em></span>
</span>
</p>

<p class="desc">
<span class="tag-box invisible">
    <span class="inline-tag">Plugins!Spamschutz!Generelle-Einstellungen!Was soll mit auto-moderierten Kommentaren passieren</span>
</span><!-- tagbox -->
<span class="item mbold">Was soll mit auto-moderierten Kommentaren passieren?</span><!-- menuitem -->
<span class="desc-info">
    <span class="box">
        Üblicherweise werden Kommentare zu Artikeln, die Sie mit der Option
        <span class="mbold">Kommentarmoderation nach wievielen Tagen erzwingen</span> gefiltert
        haben, in der Datenbank gespeichert, aber nicht freigeschaltet.
    </span>

    <span class="box">
        Über die Option <span class="mbold">Was soll mit auto-moderierten Kommentaren
        passieren</span> können Sie mit solchen Kommentaren auch noch härter verfahren
        und Kommentare vollständig <span class="mbold">abweisen</span>.
    </span>

    <span class="box"><span class="recommended">Empfohlene Einstellung</span>: <span class="mbold">moderieren</span></span>
</span>
</p>

<p class="desc">
<span class="tag-box invisible">
    <span class="inline-tag">Plugins!Spamschutz!Generelle-Einstellungen!Behandlung von per API übermittelten Kommentaren</span>
</span><!-- tagbox -->
<span class="item mbold">Behandlung von per API übermittelten Kommentaren</span><!-- menuitem -->
<span class="desc-info">
    <span class="box">
        Es gibt bei Serendipity grundsätzlich zwei Möglichkeiten, als Benutzer
        eine Mitteilung zu einem Blog-Artikel zu hinterlassen. Zum einen sind das
        Kommentare, die direkt im Blog eingetragen werden. Hierbei ist also eine
        Interaktion des Benutzers notwendig, Captchas und andere Anti-Spam-Maßnahmen
        können in den Prozess eingebunden werden.
    </span>

    <span class="box">
        Anders ist dies bei Trackbacks. Derartige "Kommentare" werden von einem
        automatischen System verschickt und empfangen, daher können dort keine
        Captchas zwischengeschaltet werden. Solche automatische Methoden
        bezeichnet man daher als API (siehe Terminologie auf Seite <span class="pageref"><a href="#API">API</a></span>).
        Sie können derartige Kommentare, die immer von Computern übermittelt
        werden, gezielt behandeln: Entweder werden solche Kommentare
        <span class="mbold">abgewiesen</span>, oder sie müssen von Ihnen <span class="mbold">moderiert</span> werden.
    </span>

    <span class="box">
        Wenn Sie automatisch übermittelte Kommentare gleichrangig wie via
        Formular eingetragene Kommentare behandeln wollen, können Sie die Option
        <span class="mbold">keine</span> wählen.
    </span>

    <span class="box">
        Da das Aktivieren der automatischen Moderation meist eine große E-Mail-Flut von
        Benachrichtigungen mit sich bringt und man gültige von ungültigen Trackbacks
        schwer trennen kann, macht eine pauschale Moderation von Trackbacks selten
        Sinn. Nur wenn Sie auf Trackbacks vollständig verzichten wollen, sollten Sie die
        Option auf <span class="mbold">abweisen</span> stellen.
    </span>

    <span class="box"><span class="recommended">Empfohlene Einstellung</span>: <em>keine</em></span>
</span>
</p>

<p class="desc">
<span class="tag-box invisible">
    <span class="inline-tag">Plugins!Spamschutz!Generelle-Einstellungen!Erforderliche Anzahl an Links für Moderation</span>
</span><!-- tagbox -->
<span class="item mbold">Erforderliche Anzahl an Links für Moderation</span><!-- menuitem -->
<span class="desc-info">
    <span class="box">
        Viele Spammer nennen in ihren Kommentaren einfach zahlreiche Links und
        hoffen, dass Ihre Besucher diese Links anklicken. Es ist
        üblicherweise ungewöhnlich, dass Kommentatoren Ihrer Artikel dutzende von
        Links an Sie schicken, daher können Sie in diesem Optionsfeld eine Anzahl
        von Links angeben, bei deren Erreichen ein Kommentar automatisch
        moderiert werden soll.
    </span>

    <span class="box">
        <span class="recommended">Empfohlene Einstellung</span>: <em>7</em></span>
</span>
</p>

<p class="desc">
<span class="tag-box invisible">
    <span class="inline-tag">Plugins!Spamschutz!Generelle-Einstellungen!Erforderliche Anzahl an Links für Abweisung</span>
</span><!-- tagbox -->
<span class="item mbold">Erforderliche Anzahl an Links für Abweisung</span><!-- menuitem -->
<span class="desc-info">
    <span class="box">
        Die Anzahl der erforderlichen Links im oberen Eingabefeld dient nur der
        Moderation eines Kommentars. Wenn Sie ab einer gewissen Anzahl von Links
        aber einen Kommentar direkt abweisen wollen, können Sie dies im Feld
        <span class="mbold">Erforderliche Anzahl an Links für Abweisung</span> eintragen.
    </span>

    <span class="box"><span class="recommended">Empfohlene Einstellung</span>: <em>13</em></span>
</span>
</p>

<p class="desc">
<span class="tag-box invisible">
    <span class="inline-tag">E-Mail-Adresse!verstecken</span>
    <span class="inline-tag">Plugins!Spamschutz!Generelle-Einstellungen!E-Mail-Adressen bei Kommentatoren verstecken</span>
</span><!-- tagbox -->
<span class="item mbold">E-Mail-Adressen bei Kommentatoren verstecken</span><!-- menuitem -->
<span class="desc-info">
    <span class="box">
        Wird ein Kommentar bei einem Blog-Artikel angezeigt, sehen Sie auch
        die Informationen zu demjenigen, der den Kommentar verfasst hat. Dabei
        kann (je nach Template) auch die E-Mail-Adresse angezeigt werden, die
        wiederum Spam-Roboter in Ihrem Blog sammeln könnten, um den
        Kommentatoren mit Werbenachrichten zu belästigen.
    </span>

    <span class="box">
        Um dies zu verhindern, können Sie die E-Mail-Adresse Ihrer Besucher mit der
        Option <span class="mbold">E-Mail-Adressen bei Kommentatoren verstecken</span> stets
        ausblenden, bzw. automatisch mit der Dummy-Adresse <code>nospam@example.com</code>
        ersetzen.
    </span>

    <span class="box">
        Als Administrator können Sie die echte E-Mail-Adresse nach wie vor in der
        Backend-Kommentar-Oberfläche einsehen.
    </span>

    <span class="box"><span class="recommended">Empfohlene Einstellung</span>: <em>Ja</em></span>
</span>
</p>

<p class="desc">
<span class="tag-box invisible">
    <span class="inline-tag">Plugins!Spamschutz!Generelle-Einstellungen!Auf ungültige E-Mail-Adressen prüfen</span>
</span><!-- tagbox -->
<span class="item mbold">Auf ungültige E-Mail-Adressen prüfen?</span><!-- menuitem -->
<span class="desc-info">
    <span class="box">
        Grundsätzlich ist es möglich, dass Kommentatoren in Ihrem Blog eine ungültige E-Mail-Adresse eintragen. Gerade
        Spammer können dies benutzen, um statt einer E-Mail-Adresse einfach eine
        Homepage zu übertragen.
    </span>

    <span class="box">
        Das Spamschutz-Plugin kann dies in gewissem Maße einschränken und eine
        (grobe) Prüfung durchführen, ob eine E-Mail-Adresse ein gültiges Muster
        besitzt (also <code>user@domain.land</code>).
    </span>

    <span class="box">
        Wenn Sie diese Option aktivieren, kann Serendipity jedoch nicht prüfen,
        ob die E-Mail-Adresse auch tatsächlich existiert. Fantasie-Adressen mit
        gültigem Muster können also so nicht abgefangen werden.
    </span>

    <span class="box"><span class="recommended">Empfohlene Einstellung</span>: <em>Ja</em></span>
</span>
</p>

<p class="desc">
<span class="tag-box invisible">
    <span class="inline-tag">Plugins!Spamschutz!Generelle-Einstellungen!Pflichtfelder</span>
</span><!-- tagbox -->
<span class="item mbold">Pflichtfelder</span><!-- menuitem -->
<span class="desc-info">
    <span class="box">
        Wenn ein Kommentator die Formularfelder ausfüllt, um einen Kommentar zu
        hinterlassen, gibt es eine Reihe von optionalen Feldern. Serendipity
        lässt Kommentare zu, bei denen lediglich der Kommentartext ausgefüllt
        wird und ansonsten alle Angaben anonym sind.
    </span>

    <span class="box">
        Wenn Sie dies verhindern wollen, können Sie Pflichtfelder im
        Kommentarformular definieren. Alle Pflichtfelder tragen Sie dabei in dem
        Eingabefeld ein. Folgende Felder stehen zur Verfügung: <span class="mbold">name</span> (Name
        des Kommentators), <span class="mbold">email</span> (E-Mail-Adresse), <span class="mbold">url</span> (Homepage),
        <span class="mbold">comment</span> (Kommentartext). Ein weiteres Feld ist <span class="mbold">replyTo</span>, das
        angibt, auf welchen vorausgehenden Kommentar sich ein Benutzer bezieht.
        Dieses Feld als Pflichtfeld zu bestimmen macht meistens keinen Sinn, weil
        man einen Besucher dadurch zwingt, sich auf einen existierenden Kommentar
        zu beziehen.
    </span>

    <span class="box">
        Wenn Sie Pflichtfelder definieren, müssen Sie Ihre Besucher auch darüber
        in Kenntnis setzen. Schlagen Sie dazu im Kapitel <span class="reference">commenttemplates</span> auf
        Seite <span class="pageref"><a href="#commenttemplates">commenttemplates</a></span> nach, wie Sie Anpassungen am Kommentarformular
        vornehmen können.
    </span>

    <span class="box"><span class="recommended">Empfohlene Einstellung</span>: <em>comment</em></span>
</span>
</p>

<p class="desc">
<span class="tag-box invisible">
    <span class="inline-tag">htaccess@.htaccess</span>
    <span class="inline-tag">Plugins!Spamschutz!Generelle-Einstellungen!SPAM IP Adressen via HTaccess blocken</span>
</span><!-- tagbox -->
<span class="item mbold">SPAM IP Adressen via HTaccess blocken?</span><!-- menuitem -->
<span class="desc-info">
    <span class="box">
        Eine sehr experimentelle Option stellt <span class="mbold">Block bad IPs via HTaccess</span>
        dar. Innerhalb einer <code>.htaccess</code>-Datei können Sie bei
        Apache-Webservern Regeln definieren, um Besucher mit einer bestimmten
        IP-Adresse abzulehnen.
    </span>

    <span class="box">
        Diese Besucher können dann das gesamte Blog nicht mehr aufrufen und
        belasten dabei glücklicherweise auch das System nur noch minimal - denn
        Serendipity kommt selbst gar nicht mehr zum Zuge, um den Aufruf dieses
        Besuchers zu bearbeiten, da der Webserver ihn bereits zuvor abgewiesen hat.
    </span>

    <span class="box">
        Derartige Verbote können mittels des Befehls <code>Deny From
        IP-Adresse</code> vorgenommen werden. Dieses Kommando stellt eine
        Blacklist von ein oder mehreren IP-Adressen dar und könnte auch manuell
        in der <code>.htaccess</code>-Datei eingestellt werden.
    </span>

    <span class="box">
        Das Spamschutz-Plugin ermöglicht jedoch eine interessantere Art der
        Einbindung. Jedesmal, wenn beim Prüfen eines Kommentars dieser
        abgewiesen wird, merkt sich das Spamblock-Plugin die IP der Person, die
        diesen Kommentar hinterlassen hat. So entsteht eine Liste, mit der
        man herausfinden kann, von welchen IPs in letzter Zeit Spam geschickt
        wurde. Sobald dieser Tabelle eine IP hinzugefügt wird, aktualisiert das
        Plugin die <code>.htaccess</code>-Datei und sperrt den Zugriff für alle IPs, die
        in den letzten zwei Tagen dort eingetragen worden sind.
    </span>

    <span class="box">
        Daher kann ein Besucher mit einer "verdächtigen" IP-Adresse frühestens nach zwei
        Tagen erneut probieren, einen Kommentar zu hinterlassen.
    </span>

    <span class="box">
        Der große Vorteil dieser Sperrungsart ist, dass Spammern so schnell die
        Server-Ressourcen entzogen werden können. Die Nachteile sind jedoch, dass
        zum einen nur Apache-Webserver mit dieser Option arbeiten können und man
        zum anderen möglicherweise einen zu großen Benutzerkreis blockiert (siehe
        Anmerkungen zur Option <span class="mbold">IP-Block Intervall</span> auf Seite
        <span class="pageref"><a href="#ipblock">ipblock</a></span>). Benutzen Sie die Option daher nur, wenn Sie wissen,
        was sie bewirkt.
    </span>

    <span class="box"><span class="recommended">Empfohlene Einstellung</span>: <em>Nein</em></span>
</span>
</p>

<p class="desc">
<span class="tag-box invisible">
    <span class="inline-tag">Wartung!Logfiles</span>
    <span class="inline-tag">Plugins!Spamschutz!Generelle-Einstellungen!Protokollierung von fehlgeschlagenen Kommentaren</span>
</span><!-- tagbox -->
<span class="item mbold">Protokollierung von fehlgeschlagenen Kommentaren</span><!-- menuitem -->
<span class="desc-info">
    <span class="box">
        Wenn ein Kommentar oder Trackback moderiert oder abgewiesen
        wird, bemerken Sie dies als Redakteur möglicherweise gar nicht. Daher
        ermöglicht das Spamschutz-Plugin, solche Meldungen entweder in der
        Datenbank oder in einer Datei zu speichern.
    </span>

    <span class="box">
        Dieses Protokoll können Sie dann von Zeit zu Zeit prüfen, um
        herauszufinden, ob Ihre Anti-Spam-Einstellungen in der Gesamtheit noch
        Wirkung haben.
    </span>

    <span class="box">
        Wenn Sie das Protokoll in einer <span class="mbold">Einfachen Datei</span> speichern, müssen
        Sie einen Speicherplatz angeben. Sie können diese Datei dann von Zeit zu
        Zeit herunterladen und auf dem Server wieder löschen, damit sie
        nicht zu groß wird.
    </span>

    <span class="tag-box invisible">
        <span class="inline-tag">Datenbank-Tabellen!serendipity_spamblocklog</span>
    </span>
    <span class="box">
        Für die Auswertung von Protokollen ist die Speicherung in einer <span class="mbold">Datenbank</span> sicher
        empfehlenswerter. Die Datenbanktabelle <code>serendipity_spamblocklog</code> können Sie
        mit einem Programm wie <em>phpMyAdmin</em> komfortabel ansehen und nach bestimmten
        Kriterien filtern. Fortgeschrittene Benutzer können die Datenbanktabelle nutzen,
        um sich kleine Scripte zu schreiben, die täglich oder wöchentlich Statusberichte
        per E-Mail verschicken oder auch im Blog anzeigen. Auch diese Datenbanktabelle
        sollten Sie von Zeit zu Zeit leeren, um nicht zu viele alte Daten vorzuhalten.
    </span>
</span>
</p>

<p class="desc">
<span class="tag-box invisible">
    <span class="inline-tag">Plugins!Spamschutz!Generelle-Einstellungen!Speicherplatz für das Logfile</span>
</span><!-- tagbox -->
<span class="item mbold">Speicherplatz für das Logfile</span><!-- menuitem -->
<span class="desc-info">
    Wenn Sie die Protokollierung in eine einfache Datei aktiviert haben,
    müssen Sie hier den vollständigen Dateisystem-Pfad auf dem Server
    eintragen, wo das Logfile gespeichert werden soll. Der Webserver muss
    Schreibrechte zu diesem Verzeichnis haben, daher können Sie zB. auch Ihr
    <code>uploads</code>-Verzeichnis dafür verwenden.</span>
</p>

<h4 class="plugin-config-header">Spamblock: Trackback-Einstellungen</h4>

<p class="desc">
<span class="tag-box invisible">
    <span class="inline-tag">IP-Filterung</span>
    <span class="inline-tag">Plugins!Spamschutz!Trackback-Einstellungen!Trackback IP Validierung</span>
</span><!-- tagbox -->
<span class="item mbold">Trackback IP Validierung</span>
<span class="desc-info">
    <span class="box">
        Wenn Sie von einem fremden Blog ein Trackback erhalten (siehe Seite
        <span class="pageref"><a href="#trackback">trackback</a></span>), dann wird dieses Trackback von einem bestimmten Server aus
        gesendet. In einem Trackback selbst ist die URL des fremden Blogs enthalten.
    </span>

    <span class="box">
        Im üblichen Fall entspricht die IP-Adresse des Servers, der das
        Trackback sendet, genau der IP-Adresse der URL, die im Trackback enthalten
        ist.
    </span>

    <span class="box">
        Bei Spam sieht dies anders aus: Die Trackbacks werden von infizierten
        Computersystemen aus verschickt, und die beworbene URL entspricht meist
        der von Spam-Seiten und liegt auf einem völlig anderen Server.
    </span>

    <span class="box">
        Das Antispam-Plugin kann solche Trackbacks automatisch abweisen, wenn die
        IPs des sendenden Servers und des beworbenen Servers nicht
        übereinstimmen.
    </span>

    <span class="box">
        Die Aktivierung dieser Option ist sehr empfehlenswert, da es im täglichen
        Einsatz de facto nicht zu einer fehlenden Übereinstimmung bei echten
        Trackbacks kommen kann. Lediglich in Randfällen wie Servern, die
        Trackbacks über Proxy-Server verschicken müssen, kann dies gültige
        Trackbacks verwerfen. Wägt man den positiven Nutzen des Schutzes vor
        ungültigem Spam dagegen ab, ist dieser Nachteil jedoch leicht zu
        verschmerzen.
    </span>

    <span class="box"><span class="recommended">Empfohlene Einstellung</span>: <em>abweisen</em></span>
</span>
</p>

<p class="desc">
<span class="tag-box invisible">
    <span class="inline-tag">IP-Filterung</span>
    <span class="inline-tag">Plugins!Spamschutz!Trackback-Einstellungen!URLs von IP-Validierung ausnehmen</span>
</span><!-- tagbox -->
<span class="item mbold">URLs von IP-Validierung ausnehmen</span>
<span class="desc-info">
    <span class="box">
        Ein Feld für URLs, die von der IP-Validierung ausgeschlossen werden sollen.
        Reguläre Ausdrücke sind erlaubt, Zeichenketten durch Semikolon (;) zu trennen.
        Das @-Zeichen muss mit <code>\@</code>, der Punkt als <code>\.</code> angegeben werden.
    </span>

</span>
</p>

<p class="desc">
<span class="tag-box invisible">
    <span class="inline-tag">Plugins!Spamschutz!Trackback-Einstellungen!Trackbackmoderation nach wievielen Tagen erzwingen</span>
</span><!-- tagbox -->
<span class="item mbold">Trackbackmoderation nach wievielen Tagen erzwingen</span><!-- menuitem -->
<span class="desc-info">
    <span class="box">
        Ähnlich der Einstellung für Kommentare können auch Trackbacks nach einem
        gewissen Zeitraum automatisch moderiert werden.
    </span>

    <span class="box"><span class="recommended">Empfohlene Einstellung</span>: <em>60</em></span>
</span>
</p>

<p class="desc">
<span class="tag-box invisible">
    <span class="inline-tag">Plugins!Spamschutz!Trackback-Einstellungen!Was soll mit auto-moderierten Trackbacks passieren</span>
</span><!-- tagbox -->
<span class="item mbold">Was soll mit auto-moderierten Trackbacks passieren?</span><!-- menuitem -->
<span class="desc-info">
    <span class="box">
        Ähnlich der Einstellung für Kommentare können die durch automatische
        Moderation erfassten Trackbacks entweder moderiert oder verworfen werden.
    </span>

    <span class="box"><span class="recommended">Empfohlene Einstellung</span>: <em>moderieren</em></span>
</span>
</p>

<p class="desc">
<span class="tag-box invisible">
    <span class="inline-tag">Plugins!Spamschutz!Trackback-Einstellungen!Trackback URLS@Trackback-URLS prüfen</span>
</span><!-- tagbox -->
<span class="item mbold">Trackback-URLS prüfen</span><!-- menuitem -->
<span class="desc-info">
    <span class="box">
        Der Sinn eines Trackbacks ist, dass ein fremdes Blog Sie darauf hinweisen
        kann, dass es sich auf einen Ihrer Artikel bezieht. Daher muss ein
        Trackback immer die URL des fremden Blogs enthalten, auf dem sich jemand
        zu Ihrem Artikel äußert.
    </span>

    <span class="box">
        Bei Spam ist das meistens nicht der Fall - die URL, die das Trackback
        bewirbt, enthält meistens nur besondere Angebote zum preiswerten Bezug
        von Viagra oder tolle Vorschläge, wie man reich werden kann. Für die
        Spammer wäre es ein hoher Aufwand, sich dort tatsächlich auf Ihren
        Blog-Artikel zu beziehen.
    </span>

    <span class="box">
        Diese Nachlässigkeit der Spammer können Sie ausnutzen und mit der Option
        <span class="mbold">Trackback-URLs prüfen</span> einstellen, ob alle Trackback-URLs daraufhin
        geprüft werden sollen, ob sie die URL Ihres Artikels enthalten.
    </span>

    <span class="tag-box invisible">
        <span class="inline-tag">Traffic</span>
    </span>
    <span class="box">
        Die Aktivierung dieser Option birgt jedoch zwei Gefahren: Wenn ein
        Spammer eine ungültige URL oder eine URL mit besonders
        vielen Daten hinterlässt, dann wird Ihr Webserver diese Seite gnadenlos trotzdem
        aufrufen und viel Traffic verursachen. Da die URL-Prüfung ausgeführt
        wird, während das Trackback gespeichert wird, kann dies die Dauer der
        Prüfung sehr in die Länge ziehen und Ihren Server stark auslasten.
        Zusätzlich darf bei der Aktivierung dieser Option der Webserver nicht von
        einer Firewall blockiert werden, damit fremde URLs überhaupt aufgerufen
        werden können.
    </span>

    <span class="box">
        Die zweite Gefahr ist, dass Sie möglicherweise Trackbacks abweisen, die
        eigentlich gültig wären. Manche Blogsysteme senden ein Trackback an Ihr
        Blog nämlich bereits, bevor der eigene Artikel veröffentlicht wurde. Das
        Blogsystem würde also erst dann seinen Artikel mit dem Link zu Ihnen
        online stellen, wenn das Trackback an Sie abgearbeitet wurde. Da Sie aber
        bereits bei der Annahme des Trackbacks die Existenz der fremden URL
        voraussetzen, würde das Trackback fehlschlagen.
    </span>

    <span class="box">
        <span class="recommended">Empfohlene Einstellung</span>: <em>Nein</em></span>
</span>
</p>

<h4 class="plugin-config-header">Spamblock: Wortfilter-Einstellungen</h4>

<p class="desc">
<span class="tag-box invisible">
    <span class="inline-tag">Wortfilter</span>
    <span class="inline-tag">Blacklist</span>
</span>
<span class="label invisible" id="Wortfilter">Wortfilter</span>
<span class="tag-box invisible">
    <span class="inline-tag">Plugins!Spamschutz!Wortfilter-Einstellungen!Wortfilter aktivieren</span>
</span><!-- tagbox -->
<span class="item mbold">Wortfilter aktivieren</span><!-- menuitem -->
<span class="desc-info">
    <span class="box">
        In den folgenden großen Eingabefeldern können Sie Zeichenketten
        eintragen. Sobald eine dieser Zeichenketten in einem Kommentar vorkommt
        ("Blacklisting"), kann ein Kommentar speziell behandelt werden.
    </span>

    <span class="box">
        Wie diese Behandlung ausfallen soll, stellen Sie über die Option
        <span class="mbold">Wortfilter aktivieren</span> ein. Ob Sie diese auf
        <span class="mbold">moderieren</span> oder
        <span class="mbold">abweisen</span> stellen, hängt davon ab, wie "scharf" Sie Ihre
        Wortfilter einstellen. Wenn Sie beispielsweise das Wort <code>arsch</code>
        filtern, dann ist das erstmal ein guter Gedanke. Vielleicht denken Sie
        aber nicht daran, dass ja diese Zeichenkette auch bei dem Wort
        "marschieren" vorkommen könnte und in diesem Fall keineswegs
        filterungswürdig wäre. Hätten Sie den Wortfilter hier auf <span class="mbold">abweisen</span>
        gestellt, wäre ein Kommentar mit diesem Wort vollständig verloren, und
        der Besucher wundert sich womöglich, warum sein Kommentar nicht
        angenommen wurde.
    </span>

    <span class="box">
        Daher ist es ganz wichtig, dass Sie die folgenden Wortfilter so eng
        wie möglich fassen, um gültige Buchstabenkonstellationen nicht auch zu
        verhindern. Für obiges Beispiel wäre daher der Einsatz von
        <code>" arsch "</code> (ohne Quotes!) eher
        zu empfehlen. Durch die zusätzlichen Leerzeichen würde der Filter nur
        noch dann aktiv werden, wenn das Wort isoliert vorkommt.
    </span>

    <span class="box"><span class="recommended">Empfohlene Einstellung</span>: <em>abweisen</em></span>
</span>
</p>

<p class="desc">
<span class="tag-box invisible">
    <span class="inline-tag">Plugins!Spamschutz!Wortfilter-Einstellungen!Wortfilter für URLs, Autorennamen, Inhalt und E-Mail-Adressen</span>
</span><!-- tagbox -->
<span class="item mbold">Wortfilter für URLs, Autorennamen, Inhalt und E-Mail-Adressen</span><!-- menuitem -->
<span class="desc-info">
    <span class="box">
        Auf jedes Feld, das ein Kommentator ausfüllt, können Sie einen
        Wortfilter anwenden.
    </span>

    <span class="box">
        Die zu filternden Wörter müssen mit dem Semikolon (<code>;</code>) getrennt
        werden. Wenn Sie am Zeilenende angelangt sind, können Sie vor oder nach
        diesem Semikolon auch gerne einen Zeilenumbruch <em>(Return)</em>-Taste
        zur besseren Lesbarkeit einfügen.
    </span>

    <span class="box">
        Jedes eingetragene Wort wird dabei einzeln auf das Vorhandensein im
        Kommentar geprüft. Trifft eines der Wörter zu, wird der Kommentar
        entsprechend der Wortfilter-Einstellung entweder moderiert oder
        abgewiesen.
    </span>

    <span class="tag-box invisible">
        <span class="inline-tag">Reguläre Ausdrücke</span>
    </span>
    <span class="box">
        <span class="label invisible" id="regexp">regexp</span> Sämtliche Wortfilter werden als "reguläre
        Ausdrücke" [*]
        <span class="footnote"><i class="fa fa-info-circle"></i> <a href="http://de.wikipedia.org/wiki/Regul%C3%A4rer_Ausdruck" target="_blank">http://de.wikipedia.org/wiki/Regul%C3%A4rer_Ausdruck</a></span><!-- footnote -->
        interpretiert. Dies ist eine spezielle Syntax, in der Sie auch
        Platzhalter verwenden können. Reguläre Ausdrücke sind ein Thema
        für sich, aber hier ein Beispiel für einen Wortfilter-Ausdruck:
    </span>

    <span class="box">
        <span id="pre-style"><code class="txt">
            \@[^\s]+\.jp\s
        </code></span>
    </span>

    <span class="box">
        Dieser Ausdruck würde einen Kommentar dann sperren, wenn jemand eine
        E-Mail-Adresse angibt, die zu einer japanischen Domain führt. Ein Kommentar wie
        "Mail me at shyguy@yahoo.jp" würde also blockiert werden.
    </span>

    <span class="tag-box invisible">
        <span class="inline-tag">Escaping</span>
    </span>
    <span class="box">
        Aufgrund des Einsatzes von regulären Ausdrücken gibt es bei den
        Wortfiltern Besonderheiten für Zeichen, die bei regulären Ausdrücken
        besonders genutzt werden. Solche Zeichen muss man, wenn sie im Wort
        vorkommen sollen, <em>escapen</em>. Dazu stellt man einfach den Backslash
        (\) vor eines der folgenden Sonderzeichen:
    </span>

    <span class="box">
        <span id="pre-style"><code class="txt">
            @ [ ] ( ) { } . ? * ^ $ | + -
        </code></span>
    </span>

    <span class="box">
        Wenn Sie also die große Flexibilität von regulären Ausdrücken nicht
        nutzen wollen, können Sie die Wortfilter auch ganz einfach als
        Wortliste verwenden. Einzig beim Auftreten eines Sonderzeichens müssen
        Sie daran denken, den Backslash voranzustellen.
    </span>

    <span class="tag-box invisible">
        <span class="inline-tag">Fehler!bei der Kommentarabgabe</span>
    </span>
    <span class="box">
        Wenn Sie ungültige reguläre Ausdrücke eingeben, kann dies zu PHP-Fehlermeldungen bei der
        Kommentarabgabe führen oder sogar dazu, dass keinerlei Kommentare mehr
        gespeichert werden können. In diesem Fall sollten Sie versuchen, alle
        Wortfilter zu löschen. Wenn es danach wieder klappt, können Sie nach und
        nach die ursprünglichen Zeichenketten wieder einfügen und so
        herausfinden, welche Regel falsch war.
    </span>

    <span class="box"><span class="recommended">Empfohlene Einstellung</span>: <em>Keine Empfehlung möglich</em></span>
</span>
</p>

<p class="desc">
<span class="label invisible" id="Akismet">Akismet</span>
<span class="tag-box invisible">
    <span class="inline-tag">Akismet</span>
    <span class="inline-tag">Plugins!Spamschutz!Wortfilter-Einstellungen!Akismet API Key</span>
</span><!-- tagbox -->
<span class="item mbold">Akismet API Key</span><!-- menuitem -->
<span class="desc-info">
    <span class="box">
        <em>Akismet</em> ist ein zentraler Web-Service, der eine Schnittstelle für
        Blogsysteme wie WordPress, Serendipity und MoveableType anbietet. Ein
        Kommentar wird vollständig an den Service übermittelt, der Service
        überprüft den Kommentar und sieht nach, ob er Spam-Kriterien aufweist.
    </span>

    <span class="box">
        Da sehr viele Systeme Spam an diesen Service melden und die Datenbank
        bereits sehr groß ist und aktiv gepflegt wird, kann Akismet relativ
        verlässlich entscheiden, ob ein Kommentar Spam darstellt oder nicht.
    </span>

    <span class="box">
        Wenn Sie den Akismet-Dienst benutzen wollen, benötigen Sie einen
        sogenannten API-Key, den Sie mit der Anmeldung [*]
        <span class="footnote"><i class="fa fa-info-circle"></i> <a href="http://akismet.com" target="_blank">http://akismet.com</a></span><!-- footnote --> erhalten. Sie müssen ihn dann im
        Spamschutz-Plugin im Konfigurationsfeld <span class="mbold">Akismet API Key</span> eintragen.
    </span>

    <span class="box">
        Die Abfrage des Akismet-Servers kann nur klappen, wenn Ihr Webserver
        nicht von einer Firewall am Verbindungsaufbau gehindert wird.
    </span>

    <span class="box">
        Beachten Sie bei der Benutzung von Akismet, dass es auch hier zu
        falsch erkanntem Spam kommen kann und dass in besonders geschützten
        Intranet-Blogs Kommentare so an einen zentralen Server übertragen werden,
        über den Sie keine Kontrolle haben. Blogs, bei denen Sie schützenswerte
        Inhalte hinterlegen, sollten Sie daher nicht mit Akismet betreiben.
    </span>

    <span class="box"><span class="recommended">Empfohlene Einstellung</span>: <em>Akismet-Schlüssel beantragen!</em></span>
</span>
</p>

<p class="desc">
<span class="tag-box invisible">
    <span class="inline-tag">Plugins!Spamschutz!Wortfilter-Einstellungen!Antispam-Server</span>
</span><!-- tagbox -->
<span class="item mbold">Antispam-Server</span><!-- menuitem -->
<span class="desc-info">
    <span class="box">
        Mit dieser Option legen Sie fest, für welchen Antispam-Server der obige
        API-Key gelten soll. Die anonymisierten Varianten bedeuten, dass alle
        übertragenen Daten zu den Antispam-Servern keine Angabe von Name oder
        E-Mail-Adresse enthalten. Dies reduziert jedoch auch die Spam-Erkennungsrate.
    </span>

    <span class="box">
        Diw Optionen sind:
        <span class="mbold">TypePad Antispam</span> oder <span class="mbold">Akismet</span>.
        <span class="mbold">TypePad Antispam (anonymisiert)</span> oder <span class="mbold">Akismet (anonymisiert)</span>.
    </span>

    <span class="box"><span class="recommended">Empfohlene Einstellung</span>: <em>Je nachdem!</em></span>
</span>
</p>

<p class="desc">
<span class="tag-box invisible">
    <span class="inline-tag">Plugins!Spamschutz!Wortfilter-Einstellungen!Behandlung von Akismet-Spam</span>
</span><!-- tagbox -->
<span class="item mbold">Behandlung von Akismet-Spam</span><!-- menuitem -->
<span class="desc-info">
    <span class="box">
        Mit dieser Option legen Sie fest, wie von Akismet erkannter Spam
        behandelt werden soll. Sie können derartigen Spam entweder
        <span class="mbold">moderieren</span> oder <span class="mbold">abweisen</span>.
    </span>

    <span class="box">
        Der große Komfort von Akismet und die relativ geringe Fehlerquote
        ermöglichen es, diese Option auf <span class="mbold">abweisen</span> einzustellen. So
        erhalten Sie wirklich nur noch Moderationshinweise von Kommentaren, bei
        denen die Einstufung als Spam aufgrund anderer Spamschutz-Kriterien nicht
        eindeutig war.
    </span>

    <span class="box"><span class="recommended">Empfohlene Einstellung</span>: <em>abweisen</em></span>
</span>
</p>

<p>Unterhalb der Konfigurationsoptionen bindet das Plugin noch eine kleine
Vorschaugrafik der Captchas ein. Dort können Sie sehen, wie ein Captcha
für einen Besucher aussieht, und gegebenenfalls Änderungen der
Hintergrundfarbe vornehmen.</p>

<p><span class="label invisible" id="Captcha-anpassen">Captcha-anpassen</span>
<span class="tag-box invisible">
    <span class="inline-tag">Captchas!Grafiken anpassen</span>
    <span class="inline-tag">gdlib</span>
</span>
Die Art der Captcha-Grafiken richtet sich danach, ob Ihr Webserver
das PHP-Modul <em>gdlib</em> unterstützt. Ohne <em>gdlib</em> gibt das
Spamblock-Plugin PNG-Grafiken im Verzeichnis
<code>plugins/serendipity_event_spamblock</code> direkt aus. Für jeden
Buchstaben gibt es eine eigene <code>captcha_zeichen.png</code>-Datei,
die Sie mit einem Bildbearbeitungsprogramm anpassen können.</p>

<p>
<span class="tag-box invisible">
    <span class="inline-tag">Schriftarten</span>
    <span class="inline-tag">TTF</span>
</span>
Wenn <em>gdlib</em> vorhanden ist, gilt:
Die verwendeten Schriftarten der Captchas können Sie nur mit
etwas Aufwand verändern. Das Plugin kann mit beliebigen TTF-Schriftdateien, wie
sie Windows mitliefert, umgehen. Diese Dateien liegen im Verzeichnis
<code>plugins/serendipity_event_spamblock</code> und sind standardmäßig auf
die vier Schriftarten Vera, VeraSE, Chumbly und 36daysago beschränkt. Das
Auswahlkriterium der Schriftarten war, dass diese möglichst nicht
maschinenlesbar sein sollen. Wenn Sie lieber eine eigene, besser lesbare
Schriftart benutzen wollen, können Sie die vorhandenen TTF-Dateien
mit anderen ersetzen und müssen dabei die Dateien lediglich umbenennen.</p>

<p>Das Plugin wählt zufällig eine der vier verfügbaren Schriftarten aus.
Wenn Sie mehr als vier Schriftdateien benutzen wollen, müssen Sie die
Plugin-Datei
<code>plugins/serendipity_event_spamblock/serendipity_event_spamblock.php</code>
öffnen und bearbeiten. Suchen Sie nach der Zeile</p>

<pre><code class="php">
    $fontfiles = array('Vera.ttf', 'VeraSe.ttf', 'chumbly.ttf', '36daysago.ttf');
</code></pre>

<p>Dort müssen Sie (jeweils in Anführungszeichen) den Namen der Schriftdatei
kommasepariert eintragen.</p>

<p>Etwas oberhalb dieser Codezeile findet sich auch die Angabe, wie groß die
Captcha-Grafik ist:</p>

<pre><code class="php">
    $width = 120;<br>
    $height = 40;
</code></pre>

<p>Mit den beiden Zahlen <code>120</code> (Breite) und <code>40</code> (Höhe) können
Sie die Bildgröße anpassen.</p>

<p>Die Schriftgröße müssen Sie über eine weitere Variable anpassen, die
ebenfalls in der Nähe der obigen Stellen erscheint:</p>

<pre><code class="php">
    $size&nbsp; = mt_rand(15, 21);
</code></pre>

<p>Diese Zeile bewirkt, dass das Plugin zufällig eine Schriftgröße zwischen
15 und 21 für jeden einzelnen Buchstaben benutzt. Sie können diese beiden
Zahlen auf den gewünschten Wert erhöhen (zB. 21 und 26), um größere
Schriften anzuzeigen.</p>

<p>Das Plugin verzichtet bei der Ausgabe der Schriften auf einige Zeichen,
die häufig missverständlich aussehen. Die Zahlen 1, 5, 6 und 8 sowie die
Buchstaben I, O und S werden daher ausgelassen. Wenn Sie weitere
Buchstaben ausschließen wollen, können Sie auch diese in der
Spamschutz-Datei ändern. Suchen Sie dafür folgende Code-Stelle und passen
Sie sie an:</p>

<pre class="snippet"><code id="snippet-spamblock" class="php">&lt;?php<br>
<br>
function&nbsp;random_string($max_char,&nbsp;$min_char)&nbsp;{<br>
&nbsp;&nbsp;&nbsp;&nbsp;$this-&gt;chars&nbsp;=&nbsp;array(2,&nbsp;3,&nbsp;4,&nbsp;7,&nbsp;9);&nbsp;<br>
&nbsp;&nbsp;&nbsp;&nbsp;//&nbsp;1,&nbsp;5,&nbsp;6&nbsp;and&nbsp;8&nbsp;may&nbsp;look&nbsp;like&nbsp;characters.<br>
&nbsp;&nbsp;&nbsp;&nbsp;$this-&gt;chars&nbsp;=&nbsp;array_merge($this-&gt;chars,<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;array('A','B','C','D','E','F','H','J','K','L','M',<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;'N','P','Q','R','T','U','V','W','X','Y','Z'));&nbsp;<br>
&nbsp;&nbsp;&nbsp;&nbsp;//&nbsp;I,&nbsp;O,&nbsp;S&nbsp;may&nbsp;look&nbsp;like&nbsp;numbers<br>
<br>
?&gt;</code></pre><!-- snippet -->

</section><!-- section.sub end -->

<section id="serendipity_event_spartacus" class="sub">

<span class="u-toc">6.1.8 - Spartacus: Plugins und Themes Synchronizr - serendipity_event_spartacus</span>

<h3 class="subsection" id="spartacus-serendipity_event_spartacus">Spartacus - Plugins und Themes Synchronizr<br>serendipity_event_spartacus</h3>

<p class="tagging invisible">
<span class="tag-box invisible">
    <span class="inline-tag">Spartacus</span>
</span>
<span class="label invisible" id="Spartacus">Spartacus</span>
<span class="tag-box invisible">
    <span class="inline-tag">Plugins!Spartacus</span>
    <span class="inline-tag">Plugins!serendipity_event_spartacus</span>
</span>
</p>

<p>Mit Serendipity 2.0 konnte das <code>Spartacus</code>-Plugin endlich
in die Liste der bereits aktiv gesetzten Plugins gesetzt werden, da die
Jahre inzwischen eine Verbesserung der Lage auf den verwendeten Webservern
erbrachte, so dass dieses wertvolle und essentielle Plugin von vornherein
als gesetzt gegeben werden konnte.</p>

<p>Im Kapitel <span class="reference">Spartacus</span> auf Seite
<span class="pageref"><a href="#spartacus-1">Spartacus</a></span> wird das
Plugin-System <em>Spartacus</em> beschrieben. Dies ist ein online
verfügbares Archiv, in dem zahlreiche Plugins und Templates für
Serendipity angeboten werden. Spartacus steht für:</p>

<h4 class="plugin-config-header"><span>[<strong>S</strong>]erendipity [<strong>P</strong>]lugin [<strong>A</strong>]ccess [<strong>R</strong>]epository [<strong>T</strong>]ool [<strong>A</strong>]nd [<strong>C</strong>]ustomization/[<strong>U</strong>]nification [<strong>S</strong>]ystem</span></h4>

<p>Damit Sie von Ihrem Blog aus leicht solche Plugins und Templates
installieren können, ist das Ereignis-Plugin <em>Spartacus</em>
bereits vorinstalliert.</p>

<p>Das Plugin bindet sich in Serendipity an allen Stellen ein, wo Plugins
(und Templates) zur Installation angeboten werden. Sobald das Plugin installiert
ist, werden zusätzliche Funktionen aktiviert und die Inhalte des
Plugin-Archivs eingebunden.</p>

<p>
<span class="tag-box invisible">
    <span class="inline-tag">Mirror</span>
</span>
Technisch funktioniert das Plugin so, dass es eine Paketdatei im
XML-Format von einem festgelegten Internet-Server (<em>Mirror</em>) abruft.
Diese Paketdatei (<code>package_event_de.xml</code> für Ereignis-Plugins mit
deutscher Beschreibung, <code>package_sidebar_de.xml</code> für
Seitenleisten-Plugins) wird auf Ihren eigenen Server heruntergeladen und
im Verzeichnis <code>templates_c</code> gespeichert. Bei der Installation von
Plugins wertet Spartacus diese XML-Daten aus und stellt sie für Sie dar.
Sobald Sie nun ein Plugin installieren wollen, wird Spartacus vom
konfigurierten Internet-Server die Dateien einzeln herunterladen und im
<code>plugins</code>-Verzeichnis abspeichern.</p>

<p>Damit Spartacus die XML-Datei nicht jedesmal aufs Neue herunterladen und
auslesen muss, wird die XML-Datei für einen bestimmten Zeitraum
zwischengespeichert, und alle Informationen daraus werden in einer Datenbank
hinterlegt.</p>

<p>Folgende Konfigurationsoptionen bietet Spartacus:</p>

<p class="desc">
<span class="item mbold">Spartacus verwenden, um Plugins zu laden?</span><!-- menuitem -->
<span class="desc-info">Damit Spartacus sich in die Plugin-Verwaltung einbindet, muss diese Option
aktiviert sein. Wenn Sie Spartacus also beispielsweise nur für die
Verwaltung von Templates aktivieren möchten, können Sie dies gezielt
einstellen.</span>
</p>

<p class="desc">
<span class="item mbold">Spartacus verwenden, um Themes zu laden?</span><!-- menuitem -->
<span class="desc-info">Ähnlich wie für die Einbindung in die Plugin-Verwaltung müssen Sie Spartacus
auch für das Herunterladen von Templates aktivieren, wenn Sie dies
wünschen.</span>
</p>

<p class="desc">
<span class="item mbold">Plugin-Versions Fernabfrage zulassen?</span><!-- menuitem --><br>
<span class="item mbold">Pfad zum Fernabruf der Versions-Information</span><!-- menuitem -->
<span class="desc-info">
    <span class="box">
        Spartacus verfügt über eine Art <em>Fernwartungszugriff</em>. Unter einer
        speziellen URL können Sie eine Liste aller installierten Plugins einsehen und
        prüfen, ob für diese Plugins neue Versionen vorliegen. Diese Datei ist in einem
        sehr einfachen Format abgelegt und kann so leicht von Ihnen geparst oder
        regelmäßig zB. via cronjob ausgelesen und per E-Mail versendet werden.
    </span>

    <span class="box">
        Diese Option ist nur für erfahrene Administratoren vorgesehen. Da die Ausgabe
        etwaigen böswilligen Besuchern des Blogs detaillierte Informationen über Ihr Blog
        geben kann, ist die Option standardmäßig deaktiviert.
    </span>

    <span class="box">
        Wenn Sie die Fernwartung aktivieren, sollten Sie den Namen der URL unbedingt
        ändern, so dass fremde Besucher den Namen zum Aufruf nicht raten können.
    </span>

    <span class="box">
        Optional können sie den in der Beschreibung jeweils neu generierten Hash-Link zB. <code>spartacus_bfd83dwnPp2PQcmdhLuZg</code> nutzen,
        welche die Benutzer wissen müssen, um den Fernabruf der Versions-Informationen durchzuführen.
        Zusammen mit dem <code>serendipity_event_plugup</code> Plugin für einen Plugin Update Hinweis auf der Backend Startseite, enthält die generierte Seite,
        im Gegensatz zu der originalen "spartacus_remote" Zeichenkette, keine nennenswert zu schützende Information, außer der, dass ganz allgemein Plugin Updates vorliegen.
    </span>
</span>
</p>

<p class="desc">
<span class="item mbold">Datei/Mirror Speicherort (XML-Metadaten)</span><!-- menuitem -->
<span class="desc-info">In diesem Auswahlfeld legen Sie fest, von welchem Internet-Server das
Plugin Paketinformationen beziehen kann. Nur <em>github.com</em> und <em>s9y.org</em>
sind derzeit in Betrieb.</span>
</p>

<p class="desc">
<span class="item mbold">Datei/Mirror Speicherort (Downloads)</span><!-- menuitem -->
<span class="desc-info">
    <span class="box">
        Die eigentlichen Plugin- und Template-Dateien bezieht das Plugin von dem
        hier ausgewählten Server. Hier haben Sie neben <em>Github.com</em> auch
        noch die Alternative, den <em>s9y.org</em> und den <em>SourceForge.net</em>-Server zu wählen. Der
        SourceForge-Server hat in der Vergangenheit jedoch öfter Ausfälle gehabt, daher
        sollten Sie möglichst <em>Github.com</em> voreingestellt lassen.
    </span>

    <span class="box">
        <span class="mbold">Serendipity Styx</span> nutzt keinen dieser fest einstellbaren Server. Default sollte aber <em>Github.com</em> sein.
    </span>
</span>
</p>

<p class="desc">
<span class="item mbold">STYX Repository oder eigene Mirror-Quelle</span><!-- menuitem -->
<span class="desc-info">
    <span class="box">
        <span class="mbold">Serendipity Styx</span> nutzt diese als Experteneinstellung gedachte Überschreibung
        für eigene Mirror Server für das konsequent auf Styx abgestimmte additional Plugins Verzeichnis.
        Die hier per default voreingestellte URL ist auf das Styx "additional_plugins" Verzeichnis limitiert.
        Zusätzliche THEMES werden weiterhin von den oben eingestellten Spiegelservern gezogen. 
    </span>

    <span class="box">
        <span class="mbold">Serendipity Styx</span> kann ordnungsgemäß nur mit dem per default-URL verweisenden Link funktionieren!
    </span>
</span>
</p>

<p class="desc">
<span class="tag-box invisible">
    <span class="inline-tag">Fehler!Schreibzugriff auf von Spartacus heruntergeladene Daten</span>
</span><!-- tagbox -->
<span class="item mbold">Eigentümer der heruntergeladenen Dateien</span><!-- menuitem --><br>
<span class="item mbold">Zugriffsrechte der heruntergeladenen Dateien/Verzeichnisse</span><!-- menuitem -->
<span class="desc-info">
    <span class="box">
        Spartacus läuft auf Ihrem Webserver als ein normaler PHP-Prozess. Alle
        Daten, die das Plugin auf die Festplatte Ihres Servers schreibt,
        gehören somit standardmäßig dem PHP-Benutzer, meist <em>nobody</em>
        oder <em>wwwrun</em>. Weitere Informationen zur Einrichtung von
        Benutzerrechten lesen Sie in Kapitel <span class="reference">Zugriffsrechte</span> ab Seite
        <span class="pageref"><a href="#Zugriffsrechte">Zugriffsrechte</a></span>.
    </span>

    <span class="box">
        Je nach Konfiguration des Providers könnte es passieren, dass aufgrund
        dieser Eigentumsrechte eine von Spartacus heruntergeladene Datei für Sie
        mit FTP-Zugriffsrechten nicht mehr zu bearbeiten ist. Oft ist es jedoch
        gewünscht, per FTP die Dateien eines Plugins anzupassen/zu bearbeiten.
    </span>

    <span class="box">
        Daher bietet das Spartacus-Plugin die Möglichkeit, dass Sie hier den
        Namen Ihres FTP-Benutzers eintragen. Spartacus versucht dann, eine
        heruntergeladene Datei diesem Benutzer zu übertragen. Nicht alle Provider
        unterstützen diese <code>chown</code>-Kommandos!
    </span>

    <span class="box">
        Abgesehen von den Informationen über den Eigentümer eines Plugins können Sie auch
        gezielt Zugriffsrechte einer Datei und eines Verzeichnisses für andere Benutzer
        festlegen. Wenn Sie also auf Ihrem System die Dateien von Spartacus später nicht
        mehr verändern dürfen, können Sie über die hier festgelegten Zugriffsrechte
        Anpassungen vornehmen. Zugriffsrechte wie <code>0777</code> würden dafür sorgen, dass
        jeder Benutzer auf dem Server die Dateien lesen und schreiben darf.
    </span>

    <span class="box">
        Wenn Sie die Zugriffsrechte oder Eigentümer an dieser Stelle ändern, gilt
        dies nur für Dateien, die Spartacus in Zukunft herunterladen wird.
        Bereits auf dem Server befindliche Dateien werden nachträglich nicht
        verändert. Diese müssten Sie manuell zB. mittels des
        <em>fixperm</em>-Scripts (siehe Seite <span class="pageref"><a href="#fixperm">fixperm</a></span>) beheben.
    </span>
</span>
</p>

<p class="desc">
<span class="item mbold">FTP server address, username, password, serendipity directory</span><!-- menuitem -->
<span class="desc-info">
    <span class="box">
        Seit Serendipity 1.3 bietet Spartacus die Möglichkeit, Dateien nicht
        nur intern direkt per PHP-Befehl auf dem Server zu speichern, sondern auch per
        FTP.
    </span>

    <span class="tag-box invisible">
        <span class="inline-tag">Safe Mode</span>
    </span>
    <span class="box">
        Dieser FTP-Upload umgeht das Problem, dass auf einigen Servern der PHP
        <em>SafeMode</em> aktiviert ist. Der <em>SafeMode</em> sorgt dafür, dass Dateien in
        Ihrem Stammverzeichnis des Webservers nur durch den FTP-Besitzer verändert
        werden dürfen. PHP selbst besitzt in diesem Fall häufig keinen Schreibzugriff.
    </span>

    <span class="box">
        Daher kann das Spartacus-Plugin, das über den PHP-Benutzer ausgeführt wird, auf
        derartigen Servern nicht korrekt ausgeführt werden, da es die heruntergeladenen
        Plugins nicht speichern kann. Durch Verwendung des FTP-Zugangs, den Sie auch zum
        Hochladen Ihrer Dateien verwenden, kann das Plugin die Dateien jedoch über
        diesen Umweg speichern.
    </span>

    <span class="box">
        In den Konfigurationsfeldern müssen Sie die Zugangsdaten Ihres
        FTP-Benutzers eintragen. Das <span class="mbold">Serendipity directory</span> entspricht dabei dem
        relativen Verzeichnis von Serendipity. Bei einer FTP-Verbindung werden Sie
        standardmäßig in das Stammverzeichnis Ihres Webauftritts geleitet, zum Beispiel
        <code>/var/www/example.com/</code>. Wenn Serendipity im Unterverzeichnis <code>blog</code>
        installiert wird, müssen Sie diesen Pfad auch in der Konfiguration eintragen.
        Andernfalls würde das Spartacus-Plugin die heruntergeladenen Dateien in einem
        falschen Unterverzeichnis speichern.
    </span>
</span>
</p>

</section><!-- section.sub end -->

</section><!-- section.index end -->

<section id="S620" class="index">
<span class="s-toc">6.2 - Weitere mitgelieferte Plugins</span>

<h3 class="section" id="weitere-mitgelieferte-plugins-1">Weitere mitgelieferte Plugins</h3>

<p>Über die bereits vorinstallierten Ereignis-Plugins hinaus liefert
Serendipity noch einige weitere Ereignis-Plugins mit, die Sie direkt über
die Plugin-Verwaltung installieren können.</p>

<p>Beachten Sie, dass bei Textformatierungs-Plugins die Reihenfolge der
Plugins für die endgültige Formatierung maßgeblich sein kann (siehe Seite
<span class="pageref"><a href="#Textformatierungs-Plugins">Textformatierungs-Plugins</a></span>).</p>

<section id="serendipity_event_bbcode" class="sub">
<span class="u-toc">6.2.1 - Textformatierung: BBCode: serendipity_event_bbcode</span>

<h3 class="subsection" id="textformatierung-bbcodeserendipity_event_bbcode">Textformatierung: BBCode<br>serendipity_event_bbcode</h3>

<p class="tagging invisible">
<span class="tag-box invisible">
    <span class="inline-tag">Plugins!Textformatierung: BBCode</span>
    <span class="inline-tag">Plugins!serendipity_event_bbcode</span>
</span>
</p>

<p class="tagging invisible">
<span class="tag-box invisible">
    <span class="inline-tag">BBCode</span>
</span>
</p>

<p>BBCode ist eine sehr weit verbreitete Möglichkeit, um einfachste
Formatierungen (fett, kursiv, Hyperlinks) durchzuführen. Grundsätzlich
könnte man sich natürlich auch die nicht viel komplizierteren HTML-Tags
aneignen, aber aus mehreren Gründen sollte man darauf verzichten.</p>

<p>BBCode wird seltener von den Redakteuren selbst
genutzt, sondern meist von Besuchern, die ihre Kommentare im Blog mittels
BBCode formatieren können. HTML stellt ein grundlegendes
Sicherheitsrisiko dar, wenn beliebige Besucher derartige Formatierungen auf
die Webseite setzen können. Denn in HTML kann man JavaScript einbinden,
das ungewünschte, sicherheitsrelevante Funktionen
auslösen kann - so könnten möglicherweise Logindaten ausgespäht werden,
oder der Inhalt der Seite könnte von gewitzten Benutzern vollständig abgeändert
werden. Kurzum, als Betreiber eines Blogs sollte man es vermeiden,
HTML-Kommentare zuzulassen. Serendipity verhindert dies aus
Sicherheitsgründen vollständig, daher ist die einzige Möglichkeit zur
Formatierung von Kommentaren die Benutzung von Standards wie BBCode. Denn
diese Formatierungen können problemlos und sicher in HTML umgesetzt
werden. BBCode ist aufgrund seiner hohen Verbreitung so allgegenwärtig,
dass die Kommentatoren meist Kenntnis davon haben. Nicht nur Blogs,
sondern auch Internetforen oder auch E-Mail-Programme "sprechen" oft
BBCode.</p>

<p>Auch bei der Artikelerstellung kann BBCode hilfreich sein - die Syntax,
um eine HTML-Auflistung zu erstellen, ist wesentlich unkomplizierter als
entsprechender HTML-Code.[*]
<span class="footnote"><i class="fa fa-info-circle"></i> Eine Auflistung von BBCodes gibt
<a href="http://de.wikipedia.org/wiki/BBcode" target="_blank">http://de.wikipedia.org/wiki/BBcode</a>.</span><!-- footnote --> BBCodes sind immer von eckigen
(statt bei HTML spitzen) Klammern umgeben. Um ein Wort zu fetten, würde man
<code>[b]Wort[/b]</code> verwenden, Bilder kann man mittels
<code>[img]http://www.example.com/bild.jpg[/img]</code> einbinden und Hyperlinks
via <code>[url]http://www.example.com[/url]</code>. Die erwähnten Auflistungen
kann man mittels <code>[list] [*]Punkt [*]Punkt ... [/list]</code> formatieren.</p>

<p>In den Konfigurationsoptionen des Plugins können Sie zudem einstellen, ob
von BBCode formatierte Links standardmäßig in einem neuen Fenster
geöffnet werden sollen.</p>

</section><!-- section.sub end -->

<section id="serendipity_event_mailer" class="sub">
<span class="u-toc">6.2.2 - Artikel mailen: serendipity_event_mailer</span>

<h3 class="subsection" id="artikel-mailenserendipity_event_mailer">Artikel mailen<br>serendipity_event_mailer</h3>

<p class="tagging invisible">
<span class="tag-box invisible">
    <span class="inline-tag">Plugins!Artikel mailen</span>
    <span class="inline-tag">Plugins!serendipity_event_mailer</span>
</span>
</p>

<p class="tagging invisible">
<span class="tag-box invisible">
    <span class="inline-tag">Mailingliste</span>
    <span class="inline-tag">Eintrag!via E-Mail verschicken</span>
    <span class="inline-tag">Eintrag!neuen ~ per E-Mail erhalten</span>
    <span class="inline-tag">E-Mail!Einträge via ~ erhalten</span>
</span>
</p>

<p>Das Plugin <em>Artikel mailen</em> ermöglicht es, einen neuen Artikel nach
der Veröffentlichung via E-Mail an einen (oder mehrere) Empfänger zu
verschicken.</p>


<p>Grundsätzlich stellen die RSS-Feeds (siehe Seite <span class="pageref"><a href="#RSS">RSS</a></span>)
eine wesentlich einfachere Möglichkeit dar, Besucher über neue
Einträge zu informieren. Im Gegensatz zu E-Mails können
RSS-Feeds auf Wunsch und Initiative des Besuchers empfangen werden, daher
spricht man hier von einem <em>Pull</em>-Dienst. Newsletter und E-Mails
zählen zu den <em>Push</em>-Diensten, das bedeutet, dass Inhalte zu
beliebigen Zeitpunkten an den Benutzer geliefert werden, und nicht etwa
dann, wenn der Besucher dies auslöst.</p>

<p>Der Vorteil von RSS-Feeds liegt daher darin, dass ein Besucher sich aktiv
über Ihren Blog informieren möchte, während eine eingehende
Benachrichtigungs-E-Mail bei ihm möglicherweise gerade unpassend ankommt.</p>

<p>Andererseits kann man natürlich auch argumentieren, dass ein
E-Mail-Hinweis komfortabel ist, um Besucher an Ihre Webseite zu erinnern, so
dass sich der Benutzer "berieseln" lassen kann, anstatt selber
Initiative zu zeigen.</p>

<p>Wie immer man also zu RSS-Feeds vs. E-Mails steht, das Plugin ermöglicht
genau diesen Mail-Versand. Standardmäßig wird eine E-Mail jedoch nur an eine
zentrale Empfängeradresse versendet. Wenn Sie stattdessen mehrere
Benutzer informieren wollen, können Sie mehrere Empfängeradressen,
natürlich mit Kommas getrennt, auflisten. Sinnvoller wäre es in diesem Fall
aber, potenziell interessierte Besucher in einer Liste zusammenzufassen.
Eine neue Benachrichtigungsmail geht dann an eine zentrale Liste, und
diese Liste wiederum leitet die E-Mail an alle eingetragenen Empfänger
weiter. Dieses Konzept nennt man <em>Mailingliste</em> oder auch
<em>Newsletter</em>.</p>

<p>Der Versand von Massen-E-Mails mittels einer PHP-Anwendung (wie
Serendipity) ist aus Ressourcengründen nicht zu empfehlen. Daher bietet
dieses Plugin keine konfigurierbare Mailingliste an, sondern Sie müssen
sich selbst um die Einrichtung einer solchen kümmern. Das ist jedoch kein
Problem, da zahlreiche kostenlose Anbieter am Markt so etwas komfortabel
umsetzen: Google Groups (<code>http://groups.google.de</code>) und Yahoo Groups
(<code>http://de.groups.yahoo.com</code>) sind die bekanntesten Vertreter. Dort
können Sie schnell eine eigene Mailingliste erstellen. Die Dienstleister
bieten auch kleine Code-Schnipsel an, die Sie in Ihrem Blog einbinden
können, damit sich Besucher leicht in die Mailingliste eintragen können.
Sie tragen dann lediglich die E-Mail-Adresse der Mailingliste in der
Konfiguration des Plugins ein, und Yahoo bzw. Google erledigt den Rest
für Sie. Natürlich können Sie auch eigene Mailinglisten-Software
wie ezmlm (<code>http://www.ezmlm.org/</code>) oder Mailman
(<code>http://www.gnu.org/software/mailman/mailman.html</code>) einsetzen, wenn
Sie dies auf Ihrem Server nutzen können.
<span class="tag-box invisible">
    <span class="inline-tag">Mailman</span>
</span>
</p>

<p>Bei der Erstellung eines Blog-Artikels sehen Sie im Bereich <span class="mbold">Erweiterte
Optionen</span> eine Oberfläche, in der standardmäßig die E-Mail-Adressen aufgeführt
sind, an die der Artikel verschickt wird. Zudem können Sie die Auswahlbox
<span class="mbold">An alle Redakteure schicken</span> markieren, damit der Blog-Artikel an alle
Redakteure des Blogs geht. Sobald Sie einen Artikel veröffentlichen,
gibt das Plugin aus, an welche E-Mail-Adressen eine E-Mail geschickt wurde.</p>

<p>Die weiteren Konfigurationsoptionen des Plugins sind:</p>

<p class="desc">
<span class="item mbold">Inhalt</span><!-- menuitem -->
<span class="desc-info">Mit diesem Auswahlfeld können Sie festlegen, ob die E-Mails den
vollständigen Artikeltext (bestehend aus <span class="mbold">Eintrag</span> und
<span class="mbold">Erweitertem Eintrag</span>) enthalten sollen oder eine beliebige
Kombination aus beidem. Wenn Sie bei einem ausführlichen Artikel also den
erweiterten Eintrag weglassen wollen, geben Sie so Ihren Besuchern einen
Anreiz, trotzdem Ihr Blog zu besuchen.</span>
</p>

<p class="desc">
<span class="item mbold">Mail-Empfänger</span><!-- menuitem -->
<span class="desc-info">In dieses Feld tragen Sie den eingangs erwähnten E-Mail-Empfänger ein,
oder die Adresse einer Mailingliste.</span>
</p>

<p class="desc">
<span class="item mbold">An alle Redakteure schicken</span><!-- menuitem -->
<span class="desc-info">Legt die Standardeinstellung für die Auswahlbox <span class="mbold">An alle Redakteure
schicken</span> bei der Erstellung eines Blog-Artikels fest.</span>
</p>

<p class="desc">
<span class="item mbold">URL des Artikels mailen</span><!-- menuitem -->
<span class="desc-info">Wenn Sie diese Option aktivieren, wird die URL Ihres Artikels mit in die
E-Mail aufgenommen. Dies ist wichtig, damit die Leser einer E-Mail auch
leicht zu Ihrem Blog gelangen können.</span>
</p>

<p class="desc">
<span class="item mbold">HTML entfernen</span><!-- menuitem -->
<span class="desc-info">
    <span class="box">
        Artikeltexte können HTML-Formatierungen enthalten, die in einer E-Mail
        nicht sinnvoll dargestellt werden. Wenn Sie die Option <span class="mbold">HTML
        entfernen</span> aktivieren, stellt das Plugin sicher, dass sämtliche HTML-Tags
        (mittels PHP <code>strip_tags()</code>-Befehl) aus der E-Mail entfernt werden.
    </span>

    <span class="box">
        Mögliche <code>&lt;a&gt;</code>- und <code>&lt;img&gt;</code>-Tags für Bilder und Hyperlinks werden
        dabei so entfernt, dass die referenzierte URL trotzdem im Text bestehen
        bleibt.
    </span>
</span>
</p>

<p class="desc">
<span class="item mbold">HTML-Paragraphen in Leerzeilen wandeln</span><!-- menuitem -->
<span class="desc-info">Wenn Sie die Option <span class="mbold">HTML entfernen</span> aktiviert haben, kann dies dazu
führen, dass die Zeilenumbrüche verloren gehen, die bei der HTML-Ansicht
eines Artikels für die Gliederung sorgen. Daher können Sie die Option
<span class="mbold">HTML-Paragraphen in Leerzeilen wandeln</span> aktivieren, damit nach
einem HTML-Absatz (<code>&lt;/p&gt;</code>) ein gewöhnlicher E-Mail-Zeilenumbruch
eingefügt wird.</span>
</p>

<p class="desc">
<span class="item mbold">Kategorien</span><!-- menuitem -->
<span class="desc-info">
    <span class="box">
        Für jede im Blog erstellte Kategorie sehen Sie ein zusätzliches
        Eingabefeld. Dort können Sie eine kategorieabhängige E-Mail-Adresse
        eintragen, damit ein Artikel dieser Kategorie nur an die E-Mail-Adressen
        geschickt wird, die für die Kategorie hinterlegt wurden.
    </span>

    <span class="box">
        E-Mails zu Artikeln, die keiner Kategorie zugeordnet sind, werden dann an
        die Standardadresse verschickt.
    </span>
</span>
</p>

</section><!-- section.sub end -->

<section id="serendipity_event_xhtmlcleanup" class="sub">
<span class="u-toc">6.2.3 - Übliche XHTML-Fehler beseitigen: serendipity_event_xhtmlcleanup</span>

<h3 class="subsection" id="übliche-xhtml-fehler-beseitigenserendipity_event_xhtmlcleanup">Übliche XHTML-Fehler beseitigen<br>serendipity_event_xhtmlcleanup</h3>

<p class="tagging invisible">
<span class="tag-box invisible">
    <span class="inline-tag">Plugins!übliche XHTML-Fehler@übliche XHTML-Fehler beseitigen</span>
    <span class="inline-tag">Plugins!serendipity_event_xhtmlcleanup</span>
</span>
</p>

<p class="tagging invisible">
<span class="tag-box invisible">
    <span class="inline-tag">XHTML</span>
    <span class="inline-tag">Validierung</span>
</span>
</p>

<p>Da XHTML an XML angelehnt ist, besteht wenig Fehlertoleranz gegenüber
Syntaxfehlern. Sollte ein Redakteur also versehentlich ungültiges XHTML
produzieren, kann dies dazu führen, dass trotz barrierefreier Templates
die Seite nicht mehr validiert.</p>

<p>Abgesehen von logischen Fehlern (HTML-Tags öffnen und sie nicht wieder
schließen oder bei verschachtelten HTML-Tags die Reihenfolge
vertauschen), kann das Serendipity-Plugin <em>Übliche XHTML-Fehler
beseitigen</em> dabei helfen, einige gängige Fehlerquellen auszuräumen:</p>

<ul class="realList">

    <li>Das Sonderzeichen <code>&amp;</code> darf bei XHTML nur dann benutzt
    werden, wenn daraufhin ein HTML-Sonderzeichen folgt, also
    beispielsweise <code>&amp;gt;</code> (&gt;), <code>&amp;euro;</code> (Euro-Symbol) oder
    andere. Wenn Sie jedoch das Zeichen <code>&amp;</code> auch so in einem
    Artikel anzeigen wollen, müssen Sie <code>&amp;amp;</code> benutzen.
    Normalerweise geben Redakteure selten HTML-Sonderzeichen ein und
    wissen nicht von der Regel, das <code>&amp;</code>-Zeichen nicht alleine zu
    setzen. Das Plugin kann sich daher darum kümmern, dass ein
    allein stehendes <code>&amp;</code> immer zu <code>&amp;amp;</code> umgewandelt wird.</li>

    <li>Alle XHTML-Tags müssen immer ein schließendes Element
    verwenden. Ein <code>&lt;p&gt;</code> ist daher nur gültig, wenn auch ein
    schließendes <code>&lt;/p&gt;</code> folgt. Das früher verbreitete HTML-Tag
    <code>&lt;br&gt;</code> musste, da es kein schließendes Element voraussetzt,
    zu <code>&lt;br&nbsp;/&gt;</code> verändert werden. In den häufigsten Fällen wird
    das <code>/&gt;</code>-Zeichen bei den Tags <code>&lt;img&gt;</code>, <code>&lt;hr&gt;</code> und
    eben jenem <code>&lt;br&gt;</code> vergessen. Das Plugin kann bei diesen Tags
    das fehlende <code>/</code> nachreichen.</li>

    <li>XHTML-Bilder-Tags (<code>&lt;img&gt;</code>) benötigen stets ein
    <code>alt</code>-Attribut, das sehbehinderten Benutzern beschreibt, was
    ein Bild darstellt. Dieses ALT-Tag wird aufgrund des höheren
    Aufwands von vielen Redakteuren jedoch vernachlässigt oder
    vergessen. Das Plugin kann sicherstellen, dass zumindest immer
    ein leeres <code>alt</code>-Attribut gesetzt wird. Wenn Sie die Option
    <span class="mbold">Encode XML-parsed data</span> aktivieren, wird zudem
    sichergestellt, dass innerhalb eines Bild-Links keine ungültigen
    Sonderzeichen erscheinen können.</li>

    <li>Bei Webseiten im UTF-8-Format sind HTML-Sonderzeichen wie
    <code>&amp;auml;</code> (<code>ä</code>) nicht erlaubt. Das Plugin kann solche
    Sonderzeichen in die korrekten UTF-8-Sonderzeichen umwandeln,
    wenn Sie die Option <span class="mbold">Cleanup UTF-8 entities</span> aktivieren.</li>

</ul>

<p>Wenn Sie Wert darauf legen, dass Ihre Seite dem XHTML-Standard
entspricht, sollten Sie dieses Plugin installieren.</p>

</section><!-- section.sub end -->

</section><!-- section.index end -->

<section id="S630" class="index">
<span class="s-toc">6.3 - Auswahl externer Plugins</span>

<h3 class="section" id="auswahl-externer-plugins-1">Auswahl externer Plugins</h3>

<p>Die Funktionalitäten des vormals hier genannten <code>serendipity_event_autosave</code>-Plugins
wurden mit Serendipity 2.0+ in den Serendipity-Kern übernommen und sind in den
<span class="mbold">Persönlichen Einstellungen</span> (
<span class="pageref"><a href="#Eigene Einstellungen">Eigene Einstellungen</a></span>)
als einstellbare Option verfügbar. Das Plugin wurde damit aus den Repository entfernt.</p>

<p>Über die mitgelieferten Plugins hinaus finden Sie auch eine große Auswahl
an Plugins über <code>http://spartacus.s9y.org/</code>. Eine Auswahl an häufig
genutzten Ereignis-Plugins finden Sie auf den folgenden Seiten.</p>

<section id="serendipity_event_adminnotes" class="sub">
<span class="u-toc">6.3.1 - QuickNotes: serendipity_event_adminnotes</span>

<h3 class="subsection" id="quicknotesserendipity_event_adminnotes">QuickNotes<br>serendipity_event_adminnotes</h3>

<p class="tagging invisible">
<span class="tag-box invisible">
    <span class="inline-tag">Plugins!QuickNotes</span>
    <span class="inline-tag">Plugins!serendipity_event_adminnotes</span>
    <span class="inline-tag">Kommunikation!unter Redakteuren</span>
</span>
</p>

<p>Die Kommunikation unter Redakteuren läuft in einem Blog meist
informell ab: Man spricht sich persönlich, via Telefon oder
E-Mail ab - und Gerüchten zufolge ist es vielen Bloggern auch egal, was
ihre Co-Autoren so treiben.</p>

<p>Das Plugin <em>QuickNotes</em> nimmt sich des Kommunikationsproblems an und
verwandelt die Startseite des Backends in ein Nachrichtenzentrum. Dort
können Chefredakteure Anweisungen an die Benutzer weiterreichen,
Administratoren können über etwaige neue Plugins berichten und einfache
Redakteure über ihre Artikel informieren.</p>

<p>Die Nachrichten arbeiten grundsätzlich gruppenorientiert. Eine Nachricht
wird immer für eine festgelegte Autorengruppe eingeblendet, das heißt,
dass Mitglieder anderer Gruppen die Nachricht nicht sehen können. Notizen
können zudem nur an die Gruppen geschrieben werden, in denen man Mitglied
ist. Daher ist es unter Umständen für dieses Plugin notwendig, dass Sie
als Administrator auch anderen Benutzergruppen beitreten (siehe
Seite <span class="pageref"><a href="#verboteneplugins">verboteneplugins</a></span>), um Nachrichten an diese zu verfassen.</p>

<p>In der Übersicht werden QuickNotes wie in folgender Abbildung dargestellt:</p>

<figure id="fig-quicknotes">
    <img src="img/quicknotes.png">
    <figcaption>Abbildung 6.1: Beispiel für QuickNotes</figcaption>
</figure>

<p>Nachrichten, die Sie noch nicht gelesen haben, werden speziell
hervorgehoben, bereits gelesene Nachrichten werden normal dargestellt. In
jedem Kasten befindet sich der Titel einer Notiz, die Angabe des
Herausgebers der Information und das dazugehörige Datum. Besonders
lange Hinweise können nach einer gewissen Textmenge abgeschnitten werden,
ein Klick auf den Button <span class="mbold">Alle Optionen ein/ausblenden</span> zeigt
den vollständigen Text an. Alle QuickNotes werden chronologisch
sortiert, ihre Anzahl richtet sich nach der Konfiguration des Plugins.</p>

<p>Sie können eine neue Notiz anlegen, indem Sie auf den Menüpunkt
<span class="mbold">Inhalt <span class="icon arrow-right">→</span> QuickNotes</span> klicken. Dort sehen Sie eine Liste aller Notizen, chronologisch
sortiert. Mittels der Buttons <span class="mbold">Bearbeiten</span>
und <span class="mbold">Löschen</span> können Sie eine bestehende Notiz verändern, der Button
<span class="mbold">Neuer Eintrag</span> legt eine neue Notiz an.</p>

<p>Beim Anlegen einer neuen Notiz tragen Sie den <span class="mbold">Titel</span> und den
<span class="mbold">Text</span> in den vorhergesehenen Feldern ein. In dem
Mehrfach-Auswahlfeld <span class="mbold">Gruppenzugehörigkeit</span> markieren Sie alle Gruppen,
für die die Nachricht bestimmt ist.</p>

<p>Die Konfigurationsoptionen des Plugins ermöglichen Ihnen weitere
Einstellungen zu Menge und Darstellung der Notizen:</p>

<p class="desc">
<span class="item mbold">Sollen Autoren eigene Hinweise anlegen dürfen</span><!-- menuitem -->
<span class="desc-info">Wenn Sie diese Option nicht aktivieren, können nur Chefredakteure und
Administratoren [*]
<span class="footnote"><i class="fa fa-info-circle"></i> Die Identifikation erfolgt anhand des
Benutzerrangs, nicht der Zugehörigkeit zu den gleichnamigen
Benutzergruppen.</span><!-- footnote --> QuickNotes anlegen. Bei aktivierter Option können auch
normale Autoren Nachrichten an die Mitglieder ihrer Benutzergruppen
senden.</span>
</p>

<p class="desc">
<span class="item mbold">Wie viele Elemente sollen angezeigt werden</span><!-- menuitem -->
<span class="desc-info">Tragen Sie in dieses Feld die Anzahl der QuickNotes ein, die auf der
Startseite angezeigt werden sollen.</span>
</p>

<p class="desc">
<span class="item mbold">HTML-Formatierung erlauben</span><!-- menuitem -->
<span class="desc-info">Standardmäßig dürfen die QuickNotes (aus Sicherheitsgründen) nur normalen
Text enthalten und keinen HTML-Code. So können Sie verhindern, dass
böswillige Redakteure möglicherweise JavaScript einschleusen.
Mit dieser Option können Sie gezielt HTML-Formatierungen auch nur
für Benutzer mit Administrator-Rang zugänglich machen.</span>
</p>

<p class="desc">
<span class="item mbold">Textformatierung(en) durchführen</span><!-- menuitem -->
<span class="desc-info">Der Text einer QuickNote kann, wie auch bei Blog-Artikeln üblich, mit den
installierten Textformatierungs-Plugins behandelt werden. Standardmäßig
ist dies aktiviert. Wenn Sie jedoch den Text ohne weitere Umformatierung
darstellen wollen, können Sie diese Option deaktivieren.</span>
</p>

<p class="desc">
<span class="item mbold">Nachrichten nach X Bytes kürzen</span><!-- menuitem -->
<span class="desc-info">Lange Notizen werden in der Übersicht nach einer festgelegten Anzahl an
Zeichen gekürzt. Längere Notizen müssen dann erst durch einen Klick auf
den Button <span class="mbold">Alle Optionen ein/ausblenden</span> gezielt geöffnet werden
und belegen so keinen wertvollen Bildschirmplatz.</span>
</p>

<p>&nbsp;</p><!-- separator -->

<p>Das Aussehen der Admin-Notes können Sie über das Admin-Stylesheet (siehe Seite
<span class="pageref"><a href="#template-css">template-css</a></span>) beeinflussen, indem Sie die CSS-Klassen
<code>.serendipity_note</code> und <code>.note_new</code> der Plugin-Datei
<code>plugins/serendipity_event_adminnotes/notes.css</code> entweder anpassen oder in
die <code>admin/style.css</code>-Template-Datei übernehmen. Weitere HTML-Klassen bei der
Ausgabe der Notizen sind verfügbar, diese können Sie im Bedarfsfall anhand des
HTML-Quelltextes in Ihrem Browser einsehen und dann dem Stylesheet hinzufügen.</p>

<article id="XU" class="subsub">

<header>
    <h4 class="subarticle" id="datenbanktabellen-1">Datenbanktabellen</h4>
</header>

<p>
<span class="tag-box invisible">
    <span class="inline-tag">Datenbank-Tabellen!serendipity_adminnotes</span>
</span>
QuickNotes werden in der Datenbanktabelle <code>serendipity_adminnotes</code>
gespeichert:</p>

<p class="desc sql-field-group">
    <code class="item sql-field">noteid</code> enthält die fortlaufende ID einer QuickNote.
    <code class="item sql-field">authorid</code> enthält die ID des Redakteurs, der die QuickNote erstellt hat.
    <code class="item sql-field">notetime</code> enthält die Erstellungszeit der QuickNote.
    <code class="item sql-field">subject</code> enthält den Betreff der QuickNote.
    <code class="item sql-field">body</code> enthält den Inhalt der QuickNote.
    <code class="item sql-field">notetype</code> gibt die Art der QuickNote an (derzeit nur <code>note</code> unterstützt).
</p>

<p>
<span class="tag-box invisible">
    <span class="inline-tag">Datenbank-Tabellen!serendipity_adminnotes_to_groups</span>
</span>
<code>serendipity_adminnotes_to_groups</code> ist eine
1:n-Zuordnungstabelle, die erstellte QuickNotes den Empfänger-Benutzergruppen
zuordnet. In Spalte <code>noteid</code> wird die ID der QuickNote gespeichert,
<code>groupid</code> enthält die ID der jeweiligen Benutzergruppe.</p>

</article>

</section><!-- section.sub end -->

<section id="serendipity_event_aggregator" class="sub">
<span class="u-toc">6.3.2 - RSS Aggregator: serendipity_event_aggregator</span>

<h3 class="subsection" id="rss-aggregatorserendipity_event_aggregator">RSS Aggregator<br>serendipity_event_aggregator</h3>

<p class="tagging invisible">
<span class="label invisible" id="aggregator">aggregator</span>
<span class="tag-box invisible">
    <span class="inline-tag">Syndication</span>
    <span class="inline-tag">Aggregation</span>
    <span class="inline-tag">Plugins!Aggregator</span>
    <span class="inline-tag">Plugins!serendipity_event_aggregator</span>
</span>
</p>

<p>Als <em>Aggregator</em> bezeichnet man eine Software, die verschiedene
RSS-Feeds (siehe Seite <span class="pageref"><a href="#RSS">RSS</a></span>) zusammenführen (<em>aggregieren</em>) kann.
RSS-Feeds sind die fundamentale Basis für <em>Content Syndication</em>,
also den Vertrieb von Inhalten.</p>

<p>Serendipitys <em>RSS Aggregator</em>-Plugin kümmert sich darum, dass die
Meldungen von beliebigen RSS-Feeds in Ihr Blog importiert werden
können. Gewissermaßen lässt sich ein Aggregator mit den Borg
vergleichen: Er assimiliert sämtliche Datenquellen und fügt sie einem
Kollektiv hinzu.</p>

<p>Ein Blog, in dem unterschiedliche Feeds zusammengeführt dargestellt
werden, bezeichnet man häufig als <em>Planet</em>. In den meisten Fällen
werden solche Blogs ohne eigenständige redaktionelle Inhalte geführt, da
andernfalls die Vermischung von eigenem und fremdem Inhalt für Besucher
sehr verwirrend sein könnte.</p>

<p>Besonders beliebt sind thematisch zusammengeführte Blogs. Wenn Sie als
Besitzer einer Gärtnerei selbst kein Blog führen, aber den Besuchern Ihrer Webseite
einen Mehrwert anbieten wollen, könnten Sie beispielsweise ein solches
aggregiertes Blog einrichten, in dem Sie die RSS-Feeds anderer
Partner-Gärtnereien oder Ihrer Lieferanten zusammenführen.</p>

<p>Das Plugin importiert Artikel fremder RSS-Feeds so, als seien es ganz
normale Blog-Einträge. Daher können Sie als Administrator des Blogs
später auch Änderungen an den Blog-Einträgen vornehmen und die
jeweiligen RSS-Feeds auch eigenständigen Blog-Kategorien zuordnen.</p>

<p>
<span class="tag-box invisible">
    <span class="inline-tag">Urheberrecht</span>
</span>
Bei derartiger Zusammenführung ist es vor allem wichtig, dass Sie etwaige
urheberrechtliche Fragen klären. Sie dürfen fremde RSS-Feeds nicht ohne
Zustimmung des Betreibers auf Ihren Seiten einbinden.</p>

<p>Sobald das RSS Aggregator-Plugin installiert ist, können Sie über den
Menüpunkt <span class="mbold">Inhalt <span class="icon arrow-right">→</span> RSS Aggregator</span> die gewünschten Feeds
einstellen.</p>

<p>In der Oberfläche sehen sie eine Liste, in der Sie einen neu zu
importierenden RSS-Feed festlegen können. In das Feld <span class="mbold">Feed name</span>
tragen Sie einen beliebigen Namen ein, der Ihnen später die
Identifizierung eines Feeds erleichert. Rechts daneben tragen Sie die URL
des jeweiligen RSS-Feeds ein, inklusive aller potenziellen URL-Parameter.
In dem Eingabefeld darunter können Sie zudem die URL der Homepage
angeben. In dem Mehrfachauswahlfeld rechts daneben legen Sie fest,
welcher Blog-Kategorie ein RSS-Feed zugeordnet werden soll. Jeder Beitrag
des RSS-Feeds wird später im Frontend innerhalb der gewählten Kategorie
dargestellt.</p>

<p>Ein besonderes Feld stellt die große Eingabebox <span class="mbold">Filter-Ausdruck</span>
dar. Dort können Sie einen regulären Ausdruck eintragen, der beim
Importieren jedes Artikels des fremden RSS-Feeds ausgewertet wird. Nur
wenn ein hier eingetragener Suchausdruck in einem Artikel vorhanden ist,
wird der Artikel ins Blog importiert, ansonsten wird er verworfen. Der Filter
wird dabei auf die Felder <em>Titel</em> und <em>Inhalt</em> angewendet. Dies
ist hilfreich, wenn Sie beispielsweise von der Gärtnerei <em>Rosenrot</em>,
die für ihre hervorragenden Blumenmesse-Berichte bekannt ist, nur die
Artikel importieren wollen, die das Schlüsselwort <em>Messe</em> enthalten.</p>

<p>
<span class="tag-box invisible">
    <span class="inline-tag">Reguläre Ausdrücke</span>
</span>
Da es sich bei dem Filter um einen regulären Ausdruck handelt, müssen Sie
etwaige Sonderzeichen <em>escapen</em>, also einen Backslash
(\) voranstellen.[*]
<span class="footnote"><i class="fa fa-info-circle"></i> Unter
<a href="http://php.net/manual/de/reference.pcre.pattern.syntax.php" target="_blank">http://php.net/manual/de/reference.pcre.pattern.syntax.php</a> sind solche Sonderzeichen 
aufgeführt.</span><!-- footnote --> Erweiterte Suchmuster wie
<code>Messe(bericht|report|review)(s|e)?</code> können ebenfalls verwendet
werden, damit Begriffe wie <em>Messeberichte</em> oder
<em>Messereviews</em> ebenfalls akzeptiert werden. Mehrere Filterbegriffe
können Sie durch das Tilde-Zeichen (<code>~</code>) voneinander trennen,
die Suchwörter werden dann ODER-kombiniert. Wenn Sie also
<code>Messe~Rosen~Stock</code> eintragen, wird jeder Artikel importiert, der
die Wörter <em>Messe</em>, <em>Rosen</em> oder <em>Stock</em> irgendwo
im Inhalt oder Betreff der RSS-Nachricht enthält.</p>

<p>Ein leerer Filter-Ausdruck importiert alle Einträge des RSS-Feeds.
Beachten Sie dabei, dass der RSS-Aggregator nur das importieren kann, was
der RSS-Feed anbietet. Der vollständige Artikeltext ist meist nicht in
einem RSS-Feed enthalten und kann daher auch vom Plugin nicht
ausgewertet/eingelesen werden!</p>

<p>Wenn Sie alle Felder eines neuen Datensatzes ausgefüllt haben, können Sie
auf den Button <span class="mbold">Los!</span> klicken, um den RSS-Feed zu speichern. Danach
können Sie weitere Datensätze anlegen. Um einen bestehenden Datensatz zu
löschen, müssen Sie lediglich den Feed-Namen leeren und auf <span class="mbold">Los!</span>
klicken.</p>

<p>
<span class="tag-box invisible">
    <span class="inline-tag">Cronjob</span>
</span>
Unterhalb jedes Datensatzes stellt das Plugin dar, wann der RSS-Feed
zuletzt importiert wurde. Dieser Importvorgang muss in einem festen
Intervall ausgeführt werden und wird gestartet, indem Sie die URL
<code>http://www.example.com/serendipity/index.php?/plugin/aggregator</code>
aufrufen. Dies können Sie entweder manuell über Cronjobs Ihres Servers
lösen oder mittels des Serendipity Cronjob-Plugins (siehe Seite
<span class="pageref"><a href="#Cronjobsched">Cronjobsched</a></span>). Die URL können Sie auch manuell im Browser
aufrufen, um den Importvorgang einmalig auszuführen. Ohne die Ausführung
dieses Vorgangs können RSS-Feeds nicht regelmäßig importiert werden!</p>

<p>
<span class="tag-box invisible">
    <span class="inline-tag">OPML</span>
</span>
Anstatt jeden Datensatz eines zu importierenden RSS-Feeds mühsam von
Hand einzupflegen, können Sie auch den Import einer <em>OPML-Datei</em> von
der RSS-Aggregator-Oberfläche auslösen. Eine OPML-Datei kann von vielen
RSS-Readern erstellt werden und enthält eine Liste abonnierter RSS-Feeds
inklusive ihrer Homepage-Adresse und etwaiger Kategorisierung. Um diese
OPML-Datei zu importieren, müssen Sie die Datei auf einen Server
hochladen (beispielsweise Ihren eigenen) und die URL dieser Datei im Feld
<span class="mbold">OPML-Datei importieren</span> eintragen. Das Ankreuzfeld <span class="mbold">Kategorien
importieren</span> bestimmt, ob etwaige im RSS-Feed vorhandene
Kategorisierungen übernommen werden sollen. Nicht vorhandene Kategorien,
die in der OPML-Datei angegeben sind, legt das Plugin automatisch im Blog
an. Über das Ankreuzfeld <span class="mbold">Jeden Feed in seine eigene Kategorie
einfügen</span> können Sie dafür sorgen, dass jeder von der OMPL-Datei
importierte Feed seine eigene, gleichbenannte Kategorie erhält. Dies
hilft, um später die Übersicht über die importierten RSS-Feeds zu behalten.</p>

<p>Im Gegenzug zum Import ermöglicht der RSS-Aggregator es auch, die
von Ihnen angelegten RSS-Feeds komfortabel in einer OPML-Datei zu
speichern (Export). Diese können Sie dann in einen RSS-Reader importieren. Ein
Klick auf <span class="mbold">Export OPML!</span> löst diesen Exportvorgang aus, die
resultierende Datei können Sie aus Ihrem Browser heraus speichern.</p>

<p>Sobald Sie erstmalig den RSS-Aggregatorvorgang gestartet haben,
werden alle Artikel im RSS-Feed eingelesen und in Ihr Blog
importiert. Bei jedem späteren Vorgang werden nur noch neue Artikel
importiert.</p>

<p>Standardmäßig wird jeder importierte Artikel in Ihrem Blog so
eingetragen, als wäre er von Ihnen redaktionell erstellt.
Aus urheberrechtlichen Gründen ist das jedoch nicht unproblematisch,
daher sollten Sie darauf achten, den Originalautor und die URL des
RSS-Feeds mit in die Darstellung des Blog-Eintrages einzubeziehen. Für
diesen Zweck stellt das Plugin einige Smarty-Template-Variablen zur
Verfügung, die Sie nach Belieben in die Datei <code>entries.tpl</code> Ihres
gewählten Templates einsetzen können (siehe auch Seite
<span class="pageref"><a href="#entries.tpl">entries.tpl</a></span>).
Die zur Verfügung stehenden Smarty-Variablen sind:</p>

<p class="desc citem-desc">
<span class="tag-box invisible">
    <span class="inline-tag">Template-Variablen!\$entry.properties.ep_aggregator_feedname</span>
</span>
<code class="item smarty">{$entry.properties.ep_aggregator_feedname}</code><!-- codeitem -->
<span class="desc-info">enthält den hinterlegten Namen des RSS-Feeds, aus dem der jeweilige Artikel
stammt.</span>
</p>

<p class="desc citem-desc">
<span class="tag-box invisible">
    <span class="inline-tag">Template-Variablen!\$entry.properties.ep_aggregator_feedurl</span>
</span>
<code class="item smarty">{$entry.properties.ep_aggregator_feedurl}</code><!-- codeitem -->
<span class="desc-info">enthält die hinterlegte URL des Quell-RSS-Feeds.</span>
</p>

<p class="desc citem-desc">
<span class="tag-box invisible">
    <span class="inline-tag">Template-Variablen!\$entry.properties.ep_aggregator_htmlurl</span>
</span>
<code class="item smarty">{$entry.properties.ep_aggregator_htmlurl}</code><!-- codeitem -->
<span class="desc-info">enthält die hinterlegte URL des Quell-Blogs.</span>
</p>

<p class="desc citem-desc">
<span class="tag-box invisible">
    <span class="inline-tag">Template-Variablen!\$entry.properties.ep_aggregator_articleurl</span>
</span>
<code class="item smarty">{$entry.properties.ep_aggregator_articleurl}</code><!-- codeitem -->
<span class="desc-info">enthält die hinterlegte URL des Artikels aus dem RSS-Feed.</span>
</p>

<p class="desc citem-desc">
<span class="tag-box invisible">
    <span class="inline-tag">Template-Variablen!\$entry.properties.ep_aggregator_author</span>
</span>
<code class="item smarty">{$entry.properties.ep_aggregator_author}</code><!-- codeitem -->
<span class="desc-info">enthält den Originalautornamen des Artikels.</span>
</p>

<p>Empfehlenswert ist daher, wenn Sie in der Template-Datei <code>entries.tpl</code>
ober- oder unterhalb der Ausgabe von <code>$entry.body</code> Folgendes
einfügen:</p>

<pre class="snippet"><code id="snippet-aggregator" class="tpl">&lt;div&nbsp;class="serendipity_entry_body"&gt;<br>
&nbsp;&nbsp;{$entry.body}<br>
<br>
&nbsp;&nbsp;{if&nbsp;$entry.properties.ep_aggregator_feedurl}<br>
&nbsp;&nbsp;&lt;p&gt;Dieser&nbsp;Artikel&nbsp;wurde&nbsp;ursprünglich&nbsp;von&nbsp;<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{$entry.properties.ep_aggregator_author}&nbsp;<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;im&nbsp;Blog&nbsp;&lt;a&nbsp;href="{$entry.properties.ep_aggregator_articleurl}"&gt;<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{$entry.properties.ep_aggregator_feedname}&lt;/a&gt;<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;verfasst&nbsp;und&nbsp;hier&nbsp;aggregiert.<br>
&nbsp;&nbsp;&lt;/p&gt;<br>
&nbsp;&nbsp;{/if}<br>
&lt;/div&gt;</code></pre><!-- snippet -->

<p>Ein weiteres Beispiel, wie eine Änderung der <code>entries.tpl</code> aussehen
kann, wird in der Datei <code>theme-patch.diff</code> des Aggregator-Plugins
demonstriert.</p>

<p>Folgende Konfigurationsoptionen bietet das Plugin:</p>

<p class="desc">
<span class="tag-box invisible">
    <span class="inline-tag">Onyx</span>
    <span class="inline-tag">MagpieRSS</span>
</span><!-- tagbox -->
<span class="item mbold">RSS Parser wählen</span><!-- menuitem -->
<span class="desc-info">
    <span class="box">
        Das RSS-Aggregator-Plugin benötigt zum Importieren der RSS-Feeds eine
        Softwarebibliothek. Sie können auswählen, ob dafür die bei Serendipity
        mitgelieferte Bibliothek <code>Onyx</code> verwendet werden soll oder die vom
        Plugin bevorzugte Bibliothek <code>MagpieRSS</code>.
    </span>

    <span class="box">
        Onyx wird heutzutage nicht mehr weiterentwickelt, ist aber stabil und bei
        Serendipity mit allen notwendigen Funktionen zur Zeichensatzkonvertierung
        aufgewertet. Onyx ist zudem zur BSD-Lizenz kompatibel.
    </span>

    <span class="box">
        MagpieRSS unterstützt im Gegensatz zu Onyx nicht nur RSS-Formate,
        sondern auch das neuere Atom-Feedformat. MagpieRSS ist GPL-lizenziert.
    </span>

    <span class="box">
        Wenn Sie den Aggregator in einem nichtkommerziellen Projekt einsetzen,
        ist der Einsatz von MagpieRSS zu bevorzugen.
    </span>
</span>
</p>

<p class="desc">
<span class="item mbold">Artikel entfernen</span><!-- menuitem -->
<span class="desc-info">Um die Artikeldatenbank des Blogs nicht unnötig immer größer werden zu
lassen, kann das Aggregator-Plugin automatisch alle Artikel löschen, die
älter als das hier festgelegte Limit (in Tagen) sind. Die Eingabe der Zahl
0 deaktiviert das automatische Entfernen.</span>
</p>

<p class="desc">
<span class="tag-box invisible">
    <span class="inline-tag">Prüfsummen</span>
</span><!-- tagbox -->
<span class="item mbold">Prüfsummen entfernen</span><!-- menuitem -->
<span class="desc-info">
    <span class="box">
        Um zu erkennen, ob das Plugin bestimmte Artikel bereits importiert hat,
        verwaltet es intern eine Prüfsummenliste. Da diese Prüfsummen ebenfalls
        recht groß werden können, sollte man sie automatisch nach einer gewissen
        Zeit löschen (standardmäßig 90 Tage).
    </span>

    <span class="box">
        Sie sollten unbedingt darauf achten, dass Sie die Prüfsummen länger
        aufbewahren als die Artikel selbst - andernfalls könnte es zu doppelt
        importierten Artikeln kommen, da das Plugin möglicherweise nicht mehr
        zuordnen kann, ob ein Artikel bereits importiert wurde.
    </span>
</span>
</p>

<p class="desc">
<span class="item mbold">Aktualisierungen ignorieren</span><!-- menuitem -->
<span class="desc-info">
    <span class="box">
        Wenn ein RSS-Artikel einmal importiert wurde, prüft Serendipity dennoch
        bei jedem neuen RSS-Importvorgang, ob sich ein derartiger Artikel
        möglicherweise verändert hat. Wenn der Original-Redakteur beispielsweise
        Rechtschreibfehler korrigiert hat, kann das Plugin so den Artikel auf
        Ihrem Blog ebenfalls korrigieren.
    </span>

    <span class="box">
        Wenn Sie die Option <span class="mbold">Aktualisierungen ignorieren</span> aktivieren, wird
        das Plugin niemals bereits importierte Artikel nachträglich verändern.
    </span>
</span>
</p>

<p class="desc">
<span class="item mbold">Nicht mehr verkettete Einträge löschen</span><!-- menuitem -->
<span class="desc-info">
    <span class="box">
        Wenn Sie die Option <span class="mbold">Nicht mehr verkettete Einträge löschen</span>
        aktiviert haben und einen RSS-Feed aus dem Aggregator löschen, werden
        standardmäßig alle diesem Feed zugehörigen Artikel gelöscht.
    </span>

    <span class="box">
        Wenn Sie jedoch die alten Einträge aus historischen Gründen sichern
        wollen, sollten Sie diese Option deaktivieren.
    </span>
</span>
</p>

<p class="desc">
<span class="item mbold">Kommentare für diesen Eintrag zulassen</span><!-- menuitem -->
<span class="desc-info">
    <span class="box">
        Da importierte RSS-Artikel üblicherweise nicht in einem aggregierenden
        Blog kommentiert werden (sondern nur im Original-Artikel), ist es
        sinnvoll, dass Kommentare zu derartigen Artikeln in Ihrem Blog nicht
        zugelassen sind.
    </span>

    <span class="box">
        Wenn Sie dennoch Kommentare zulassen wollen, müssen Sie die Option
        <span class="mbold">Kommentare für diesen Eintrag zulassen</span> aktivieren.
    </span>
</span>
</p>

<p class="desc">
<span class="item mbold">Debugging-Output</span><!-- menuitem -->
<span class="desc-info">Das Aggregator-Plugin kann bei Problemen mit dem Importvorgang detaillierte
Statusmeldungen ausgeben. Um diese beim Importvorgang zu sehen, müssen
Sie die Option <span class="mbold">Debugging-Output</span> aktivieren.</span>
</p>

<article id="XU" class="subsub">

<header>
    <h4 class="subarticle" id="datenbanktabelle-3">Datenbanktabelle</h4>
</header>

<p>
<span class="tag-box invisible">
    <span class="inline-tag">Datenbank-Tabellen!serendipity_aggregator_feeds</span>
</span>
Die Datenbanktabelle <code>serendipity_aggregator_feeds</code> enthält eine Liste der
Feeds, die vom Aggregator gelesen werden sollen:</p>

<p class="desc sql-field-group">
    <code class="item sql-field">feedid</code> enthält die fortlaufende ID eines Feeds.
    <code class="item sql-field">feedname</code> enthält den im Backend eingegebenen Namen des Feeds.
    <code class="item sql-field">feedurl</code> enthält die URL des Feeds.
    <code class="item sql-field">htmlurl</code> enthält die zugehörige Homepage der Seite.
    <code class="item sql-field">last_update</code> enthält das Datum der letzten Aktualisierung dieses Feeds.
    <code class="item sql-field">charset</code> enthält den Zeichensatz des Feeds.
</p>

<p>
<span class="tag-box invisible">
    <span class="inline-tag">Datenbank-Tabellen!serendipity_aggregator_md5</span>
</span>
In der Tabelle <code>serendipity_aggregator_md5</code> werden Hash-Werte gespeichert,
die jeden Artikel mit einer eindeutigen Prüfsumme verbinden. Durch Abgleich
dieser Datenbank kann beim Importieren der Feeds geprüft werden, ob ein Artikel
bereits in der Datenbank vorliegt.</p>

<p class="desc sql-field-group">
    <code class="item sql-field">entryid</code> enthält die ID des Blog-Artikels, für den die Prüfsumme erstellt wurde.
    <code class="item sql-field">md5</code> enthält den 32 Zeichen langen MD5-Hashcode des Artikeltexts.
    <code class="item sql-field">timestamp</code> enthält das Datum, an dem der MD5-Hash erstellt wurde.
</p>

<p>
<span class="tag-box invisible">
    <span class="inline-tag">Datenbank-Tabellen!serendipity_aggregator_feedcat</span>
</span>
In der Tabelle <code>serendipity_feedcat</code> wird gespeichert, welcher
Blog-Kategorie (<code>categoryid</code>) der jeweilige Feed (<code>feedid</code>) zugeordnet
sein soll.</p>

</article>

</section><!-- section.sub end -->

<section id="serendipity_event_autoupdate" class="sub">

<span class="u-toc">6.3.3 - Serendpity Autoupdate: serendipity_event_autoupdate</span>

<h3 class="subsection" id="serendpity-autoupdateserendipity_event_autoupdate">Serendpity Autoupdate<br>serendipity_event_autoupdate</h3>

<p class="tagging invisible">
<span class="tag-box invisible">
    <span class="inline-tag">Plugins!Autoupdate</span>
    <span class="inline-tag">Plugins!serendipity_event_autoupdate</span>
</span>
<span class="label invisible" id="autoupdate">autoupdate</span>
<span class="tag-box invisible">
    <span class="inline-tag">serendpity-autoupdate</span>
    <span class="inline-tag">Plugin!automatisches update</span>
</span>
</p>

<p>Bereits seit ein paar Jahren werkelt das Serendipity Autoupdate Plugin still und erfolgreich vor sich.
Es stellt in Verbindung mit dem (PRE-Serendipity-2.0) Dashboard-Plugin, sowohl als auch mit der neuen eingebauten
Backend Startseite ("Dashboard") in Serendipity 2.0+ einen Upgrade Button für ein automatisches "<em>EIN</em>-Klick"
Serendipity Upgrade bereit, solange Sie es installiert haben und die generelle Konfigurationsoption "<em>Update-Hinweis</em>"
dafür eingestellt haben. Mit <strong>Serendipity Styx</strong> bekam dieses Plugin aufgrund der Loslösung von Serendipity seine eigenen
Konfigurationsoptionen und ist damit nicht mehr ein Beispiel für ein sogenanntes "<em>stilles</em>" Plugin.
</p>

<p class="desc">
<span class="item mbold">Benutzerdefinierte download URL</span><!-- menuitem -->
<span class="desc-info">Definiert eine URL wie diese:
<code>https://github.com/s9y/Serendipity/releases/download/</code>.
Das benutzerdefiniertes Verzeichnis/Datei-Schema muss mit <code>$version/serendipity-$version.zip</code>
enden. Ersetzen Sie <code>$version</code> mit dem Versionnummern String aus ihrer benutzerdefinierten
RELEASE-Datei, zB. <code>2.1.5/serendipity-2.1.5.zip</code>.
Sie können die URL zu Letzterer in der Backend Konfiguration, unter dem Optionsblock
"Generelle Einstellungen" hinterlegen. Lassen Sie ansonsten die angegebene
Default-URL für automatische Styx Upgrades hier unverändert stehen! <span class="mbold">(Empfohlen!)</span></span>
</p>

<p class="desc">
<span class="item mbold">Benutzerdefinierte release tag URL</span><!-- menuitem -->
<span class="desc-info">Definiert eine URL wie diese:
<code>https://github.com/s9y/Serendipity/releases/tag/</code>.
Der Dateiname muss <code>$version</code> heißen.
Ersetzen Sie <code>$version</code> mit dem Versionnummern String
aus ihrer benutzerdefinierten RELEASE-Datei, zB. <code>2.1.5</code>.
Sie können die URL zu Letzterer in der Backend Konfiguration, unter dem Optionsblock
"Generelle Einstellungen" hinterlegen. Lassen Sie ansonsten die angegebene
Default-URL für automatische Styx Upgrades hier unverändert stehen! <span class="mbold">(Empfohlen!)</span></span>
</p>

<p>Der Webserver benötigt Schreibrechte für alle Dateien!</p>

</section><!-- section.sub end -->

<section id="serendipity_event_backendrss" class="sub">
<span class="u-toc">6.3.4 - Display RSS-Feed in Backend Overview: serendipity_event_backendrss</span>

<h3 class="subsection" id="display-rss-feed-in-backend-overviewserendipity_event_backendrss">Display RSS-Feed in Backend Overview<br>serendipity_event_backendrss</h3>

<p class="tagging invisible">
<span class="tag-box invisible">
    <span class="inline-tag">Backend!RSS-Feeds</span>
    <span class="inline-tag">Plugins!Display RSS-Feed in Backend Overview</span>
    <span class="inline-tag">Plugins!serendipity_event_backendrss</span>
</span>
</p>

<p>Wenn Sie sich ins Backend einloggen, sehen Sie üblicherweise eine ziemlich
leere Seite. Diesen Platz können Sie ausnutzen, um etwas gehaltvollere
Informationen darzustellen, wie beispielsweise einen RSS-Feed.</p>

<p>Ähnlich wie das Plugin <em>Fremder RSS/OPML-Blogroll Feed</em> (siehe Seite
<span class="pageref"><a href="#remoterss">remoterss</a></span>) bietet das Plugin <em>Display RSS-Feed in Backend
Overview</em> die Möglichkeit, beliebige RSS-Feeds einzubinden. Die
Konfigurationsoptionen sind dabei ähnlich gestaltet:</p>

<p class="desc">
<span class="item mbold">Anzahl der Einträge</span><!-- menuitem -->
<span class="desc-info">Bestimmt, wie viele Einträge aus dem RSS-Feed angezeigt werden sollen. Die
Zahl <code>0</code> entspricht allen Einträgen des Feeds. Sie können immer nur
maximal so viele Einträge darstellen, wie der Feed enthält.</span>
</p>

<p class="desc">
<span class="item mbold">Feed-Titel</span><!-- menuitem -->
<span class="desc-info">Hiermit legen Sie die Überschrift des RSS-Feeds fest. Da Sie mehrere
RSS-Feeds im Backend darstellen können, sollten Sie die Überschriften zur
Abgrenzung eindeutig vergeben.</span>
</p>

<p class="desc">
<span class="item mbold">RSS/OPML-URI</span><!-- menuitem -->
<span class="desc-info">In diesem Eingabefeld tragen Sie die vollständige URL des RSS-Feeds ein,
den Sie darstellen möchten.</span>
</p>

<p class="desc">
<span class="item mbold">Zeichensatz</span><!-- menuitem -->
<span class="desc-info">Die Option <span class="mbold">Zeichensatz</span> legt fest, in welchem Zeichensatz der
fremde RSS-Feed formatiert ist. Bei den meisten RSS-Feeds ist dies
<span class="mbold">UTF-8</span>.</span>
</p>

<p class="desc">
<span class="item mbold">Link-Target</span><!-- menuitem -->
<span class="desc-info">Der RSS-Feed zeigt nur die Überschriften der Beiträge an, ein Klick auf
den jeweiligen Beitrag öffnet diesen standardmäßig in einem neuen Fenster
(<code>_blank</code>). Wenn Sie stattdessen den Beitrag gerne im selben
Browser-Fenster lesen möchten, können Sie hier ein anderes Ziel (zB.
<code>_self</code> oder leer) eintragen.</span>
</p>

<p class="desc">
<span class="item mbold">Wann wird der Feed aktualisiert</span><!-- menuitem -->
<span class="desc-info">Der RSS-Feed wird vom Plugin gecached, damit nicht bei jedem Aufruf des
Backends der fremde Webserver kontaktiert wird. Tragen Sie in diesem
Feld ein, wie lange ein Feed zwischengespeichert werden soll.
Standardmäßig sind dies 3 Tage (10800 Sekunden).</span>
</p>

<p>&nbsp;</p><!-- separator -->

<p>Sie können diesen RSS-Feed in der Admin-Oberfläche gut dazu benutzen,
den RSS-Feed vom offiziellen
Serendipity-Blog [*]
<span class="footnote"><i class="fa fa-info-circle"></i> <a href="http://blog.s9y.org/rss.php" target="_blank">http://blog.s9y.org/rss.php</a></span><!-- footnote --> zu
abonnieren. So können Sie direkt beim Login in Ihr Blog erkennen, ob
es möglicherweise neue Versionen der Software gibt, in der zB.
Sicherheitslücken behoben worden sind.</p>

</section><!-- section.sub end -->

<section id="serendipity_event_categorytemplates" class="sub">
<span class="u-toc">6.3.5 - Eigenschaften/Templates von Kategorien: serendipity_event_categorytemplates</span>

<h3 class="subsection" id="eigenschaften-templates-von-kategorienserendipity_event_category">Eigenschaften/Templates von Kategorien<br>serendipity_event_categorytemplates</h3>

<p class="tagging invisible">
<span class="tag-box invisible">
    <span class="inline-tag">Plugins!Eigenschaften/Templates von Kategorien</span>
    <span class="inline-tag">Plugins!serendipity_event_categorytemplates</span>
    <span class="inline-tag">Individuelle Templates pro Kategorie</span>
    <span class="inline-tag">Multi-User-Blogs</span>
</span>
</p>

<p>Mithilfe des Plugins <em>Eigenschaften/Templates von Kategorien</em> können
Sie jeder Kategorie des Blogs gewisse Eigenschaften und
Konfigurationsoptionen zuweisen sowie individuelle Templates auswählen.</p>

<p>Diese Eigenschaften werden aktiv, wenn ein Besucher im Frontend die
Artikelübersicht einer Kategorie aufruft. Auch wenn er die Detailansicht
eines Blog-Artikels öffnet, der einer einzelnen Kategorie zugewiesen ist,
werden die Eigenschaften aktiv. Wenn einem Artikel mehrere Kategorien
zugewiesen sind, von denen aber nur eine Kategorie besondere Eigenschaften
besitzt, wird diese automatisch für die Einzel-Detailansicht angewendet.</p>

<p>Am häufigsten wird das Plugin dazu eingesetzt, abhängig von der
gewählten Kategorie unterschiedliche Templates für das Blog einzusetzen.
So kann man mehrere Kategorien des Blogs grafisch klar voneinander
unterscheiden. Durch diese Trennung kann man auch thematische Unter-Blogs
einrichten, die für den Besucher voneinander unabhängig erscheinen, aber
allesamt dieselbe Datenbank besitzen. Gerade für den Blog-Betreiber ist
es weitaus komfortabler, mit einem einzigen Backend mehrere voneinander
getrennt erscheinende Frontends zu verwalten.</p>

<p class="tagging invisible">
<span class="tag-box invisible">
    <span class="inline-tag">Template-Optionen!pro Kategorie setzen</span>
</span>
</p>

<p>Falls ein gewünschtes Template den Einsatz von
Template-Optionen unterstützt (siehe Seite <span class="pageref"><a href="#templateoptionen">templateoptionen</a></span>),
können diese Optionen für das Template individuell für jede Kategorie gesetzt
werden, in der das Template zum Einsatz kommt. Sie müssen daher das Template
nicht in mehrere Unterverzeichnisse kopieren, um ein eigenes Template pro
Kategorie zuzuweisen, sondern können die Template-Optionen direkt von der
Oberfläche aus mit den Eigenschaften einer Kategorie aufrufen.</p>

<p>Mit zusätzlicher Hilfe der individuellen Lese- und Schreibrechte zu
Kategorien kann man so sogar recht flexibel Mehr-Autoren-Blogs
einrichten, die allesamt mit derselben Verwaltungsoberfläche
administriert und bearbeitet werden können.</p>

<p>Das Plugin bietet folgende grundsätzliche Konfigurationsoptionen:</p>

<p class="desc">
<span class="item mbold">Password protection</span><!-- menuitem -->
<span class="desc-info">
    <span class="box">
        Über diese Option können Sie pro
        Kategorie entscheiden, ob diese mit einem Passwort-Zugriffsschutz
        versehen werden soll.
    </span>

    <span class="box">
        Wenn ein Besucher später die Übersichtsseite einer geschützten Kategorie
        aufrufen will, muss er zuerst ein Passwort eintragen. Erst nachdem der
        Besucher dies erledigt hat, sieht er die Einträge einer derart
        geschützten Kategorie auch auf der globalen Übersichtsseite.
    </span>

    <span class="box">
        Die Aktivierung dieser Option verlangsamt die Datenbankabfragen für
        Übersichtsseiten etwas, daher sollten Sie sie nur aktivieren, wenn Sie
        passwortgeschützte Kategorien dringend benötigen.
    </span>
</span>
</p>

<p class="desc">
<span class="tag-box invisible">
    <span class="inline-tag">Sortierung!Reihenfolge@~sreihenfolge von Artikeln ändern</span>
</span><!-- tagbox -->
<span class="label invisible" id="categorytemplates-sort">categorytemplates-sort</span>
<span class="item mbold">Standard: Sortierung</span><!-- menuitem -->
<span class="desc-info">
    <span class="box">
        Standardmäßig sortiert Serendipity die Artikelansichten stets
        chronologisch. Die aktuellsten Artikel erscheinen zuerst, die ältesten
        Artikel am Ende. Ein Besucher sieht so die aktuellsten Artikel immer
        direkt auf den ersten Blick.
    </span>

    <span class="box">
        Bei einigen Blogs wünschen sich die Besitzer jedoch, dass ihr Blog in der
        richtigen Reihenfolge, von den ältesten zu den neuesten Artikeln gelesen wird. Gerade
        bei fiktiven Blogs, die eine Geschichte erzählen, macht dies Sinn.
    </span>

    <span class="box">
        Über das Eingabefeld <span class="mbold">Standard: Sortierung</span> können Sie die
        Artikelsortierung festlegen, die für die generelle Artikelübersicht gilt.
        Beachten Sie, dass Sie auch eine Einstellung der Sortierung pro Kategorie
        vornehmen können, indem Sie die jeweiligen Eigenschaften einer Kategorie
        (über den Menüpunkt <span class="mbold">Inhalt <span class="icon arrow-right">→</span> Kategorien</span>) bearbeiten.
    </span>

    <span class="box">
        In dem Eingabefeld müssen Sie eine SQL-Syntax eingeben. Als
        Sortierungskriterium kann man sämtliche Datenbank-Spaltennamen der
        Tabelle <code>serendipity_entries</code> heranziehen. Die eigentliche
        Reihenfolge gibt man über den Befehl <code>ASC</code> (ascending: aufsteigend)
        oder <code>DESC</code> (descending: absteigend) an. In den meisten Fällen müssen
        Sie daher an dieser Stelle nur <code>timestamp DESC</code> eingeben (für die
        übliche Sortierungsreihenfolge mit aktuellsten Artikeln am Anfang) oder
        alternativ <code>timestamp ASC</code> (älteste Artikel am Anfang). Weitere
        sinnvolle Möglichkeiten wären eine Sortierung nach Titel (<code>title
        DESC</code>) oder nach der Anzahl der Kommentare zu einem Artikel (<code>comments DESC</code>).
    </span>
</span>
</p>

<p>Abgesehen von diesen beiden zentralen Optionen bietet das Plugin seine
Kernfunktionalität im Menüpunkt <span class="mbold">Inhalt <span class="icon arrow-right">→</span> Kategorien</span> an.
Bearbeiten Sie dort eine Kategorie, und Sie werden zusätzliche Felder
dort sehen:</p>

<p class="desc">
<span class="item mbold">Artikel von Unterkategorien verstecken</span><!-- menuitem -->
<span class="desc-info">
    <span class="box">
        Standardmäßig zeigt Serendipity bei der Artikelübersicht einer gewählten
        Kategorie im Frontend auch alle Einträge an, die in den möglichen
        Unterkategorien der gewählten Kategorie vorhanden sind. Gesetzt den Fall,
        Sie haben eine Hauptkategorie "Fernsehen" eingerichtet und darin
        die Unterkategorien "Drama", "Action", "Comedy" und "Lustspiele".
        Wenn Sie im Frontend nun auf die Kategorie "Fernsehen" klicken, sehen
        Sie auch alle Beiträge in den Unterkategorien. Erst wenn Sie auf die
        letzte Unterkategorie wie "Action" klicken, sehen Sie keine Einträge
        der anderen Kategorien mehr.
    </span>

    <span class="box">
        In den meisten Fällen ist diese Variante bei der Artikeldarstellung für
        Besucher recht angenehm, und Sie müssen Artikel nicht zwangsläufig
        mehreren Kategorien zuweisen.
    </span>

    <span class="box">
        Wenn Ihre Kategoriestruktur jedoch nicht hierarchisch aufgebaut ist,
        könnte die Standardübersicht unpassend sein. Daher bietet das Plugin die
        Möglichkeit (Option <span class="mbold">Artikel von Unterkategorien verstecken</span>), keine
        Artikel von Unterkategorien mehr anzuzeigen.
    </span>

    <span class="box">
        Die Einstellung sollte nur auf Kategorien angewendet werden, die
        Unterkategorien besitzen. Bei fehlenden Unterkategorien hat diese
        Einstellung natürlich keine Wirkung.
    </span>
</span>
</p>

<p class="desc">
<span class="item mbold">Wählen Sie das Template für das Blog</span><!-- menuitem -->
<span class="desc-info">
    <span class="box">
        Bei dieser Option stehen zwei Eingabemöglichkeiten zur Verfügung.
        Entweder Sie füllen das Eingabefeld aus und tragen dort einen
        Template-Namen ein, oder Sie wählen aus dem Ausklappfeld den
        entsprechenden Template-Namen. Bei einer Auswahl im Ausklappfeld wird
        Ihre Eingabe im Textfeld ignoriert.
    </span>

    <span class="box">
        In dem Ausklappfeld stehen Ihnen sämtliche Templates zur Verfügung, die
        in Ihrem Blog im Unterverzeichnis <code>templates</code> eingerichtet wurden.
    </span>

    <span class="box">
        In das Eingabefeld tragen Sie nicht den Namen des Templates (wie
        beispielsweise "Test-Theme 5.1") ein, sondern den
        Verzeichnisnamen (<code>test5</code>). Diese Eingabemöglichkeit
        bietet die Flexibilität, dass Sie in einem Haupt-Template-Verzeichnis auch
        Unterverzeichnisse mit eigenständigen Templates erstellen können, um so
        Ihre Verzeichnisstruktur aufgeräumter zu strukturieren. In einem solchen
        Fall können Sie auf Unterverzeichnisse mittels
        <code>mein_template/unter_template1</code> zugreifen. Tragen Sie nur
        Verzeichnisnamen ab der Verzeichnisebene <code>templates</code> ein.
    </span>

    <span class="box">
        Das ausgewählte Template wird im Frontend anstelle des Standard-Templates
        angezeigt, sobald der Besucher die Artikelübersicht (oder einen
        detaillierten Artikel) der Kategorie aufruft. Mit dieser
        Gestaltungsmöglichkeit können Sie Kategorien gezielt formatieren und
        eine Art "Themen-Blog" einrichten, bei dem Ihre Besucher das Gefühl
        haben, jeweils eigenständige Blogs aufzurufen. Für Sie hat dies den
        Vorteil, dass Sie das komplette Blog weiterhin über eine einzelne
        Administrationsoberfläche verwalten können.
    </span>

    <span class="box">
        Sollte das gewählte Template Ihnen zusätzliche Template-Optionen anbieten,
        wird ein Button zum Festlegen dieser Optionen unterhalb der Template-Auswahl
        eingebunden. Ein Klick darauf führt zu den Optionen des Templates, die Sie
        von der normalen <span class="mbold">Themes verwalten</span>-Funktionalität her bereits kennen
        (siehe Seite <span class="pageref"><a href="#Themes verwalten">Themes verwalten</a></span>).
    </span>

    <span class="box">
        Beachten Sie dabei, dass die so festgelegten Template-Optionen nur dann
        gelten, wenn Sie die jeweilige zugehörige Kategorie aufrufen - die
        Template-Optionen für die Übersichtsseite legen Sie wie gewohnt getrennt davon fest.
    </span>

    <span class="box">
        Wenn Sie ein Template mit Template-Optionen einsetzen und diese für jede
        Kategorie unterschiedlich konfigurieren möchten (beispielsweise über ein
        individuelles Kopfbild für jede Kategorie), können Sie dies festlegen, ohne
        für jede Kategorie ein eigenes Template anlegen/kopieren zu müssen.
    </span>
</span>
</p>

<p class="desc">
<span class="item mbold">Zukünftige Einträge zeigen</span><!-- menuitem -->
<span class="desc-info">
    <span class="box">
        In der globalen Konfiguration von Serendipity können Sie einstellen, ob
        Einträge mit einem zukünftigen Datum im Frontend bereits vor Erreichen
        dieses Datums angezeigt werden sollen (siehe Seite
        <span class="pageref"><a href="#Zeitgesteuerte Veroeffentlichung">Zeitgesteuerte Veroeffentlichung</a></span>).
    </span>

    <span class="box">
        Diese Einstellung können Sie auch pro Kategorie festlegen. Die Option
        <code>Standard</code> entspricht dabei der Einstellung, die Sie global
        vorgenommen haben. <code>Nein</code> legt fest, dass zukünftige Einträge nicht
        gezeigt werden, bei <code>Ja</code> werden sie angezeigt.
    </span>

    <span class="box">
        Die Einstellungen pro Kategorie sind nur dann gültig, wenn Sie im
        Frontend gezielt die Kategorie-Übersicht aufrufen.
    </span>
</span>
</p>

<p class="desc">
<span class="item mbold">Anzahl der Artikel für die Startseite der Kategorie</span><!-- menuitem -->
<span class="desc-info">
    <span class="box">
        Standardmäßig richtet sich die Anzahl der dargestellten Artikel in einer
        Kategorie nach der Einstellung in der globalen Serendipity-Konfiguration.
        Sie können jedoch auch fallweise pro Kategorie eine andere Artikelanzahl
        einbinden. Wenn Ihre Artikel in bestimmten Kategorien länger sind als
        gewöhnlich, könnten Sie die Anzahl der Artikel zur besseren Übersicht
        daher gezielt reduzieren.
    </span>

    <span class="box">
        Tragen Sie in das vorgesehene Eingabefeld die gewünschte Anzahl ein.
    </span>
</span>
</p>

<p class="desc">
<span class="item mbold">Sortierung</span><!-- menuitem -->
<span class="desc-info">
    <span class="box">
        In den Konfigurationsoptionen des Plugins können Sie bereits die globale
        Sortierungsreihenfolge der Artikelübersichten einstellen. Pro Kategorie
        können Sie auch eine individuelle Sortierungsreihenfolge vorgeben. Welche
        Möglichkeiten Sie zur Eingabe nutzen können, wird bei den
        Konfigurationseinstellungen dieses Plugins auf Seite
        <span class="pageref"><a href="#categorytemplates-sort">categorytemplates-sort</a></span> beschrieben.
    </span>

    <span class="box">
        Die Konfigurationsoption <span class="mbold">Globally set entry's category</span> sorgt dafür,
        dass beim Aufruf der Detailansicht eines Artikels, der einer
        einzelnen Kategorie zugeordnet ist, diese Kategorie als <em>aktuelle
        Kategorie</em> für die gesamte Blog-Darstellung verwendet wird. Diese Option ist vor
        allem dann hilfreich, wenn Sie Seitenleisten-Plugins so konfiguriert
        haben, dass sie ihre Ausgabe von der aktuellen Kategorie abhängig machen sollen.
        Da Detailseiten eines Artikels standardmäßig niemals eine Kategorie setzen, wären
        in so einem Fall bei deaktivierter Option die Seitenleisten ebenfalls ohne
        feste Kategorieabhängigkeit. Erst durch Aktivierung der Option sorgt das Plugin
        dafür, die globale Kategorievariable (<code>$serendipity['GET']['category']</code>) zu
        füllen.
    </span>
</span>
</p>

<article id="XU" class="subsub">

<header>
    <h4 class="subarticle" id="datenbanktabelle-1">Datenbanktabelle</h4>
</header>

<p>
<span class="tag-box invisible">
    <span class="inline-tag">Datenbank-Tabellen!serendipity_categorytemplates</span>
</span>
Das Plugin speichert die Zuordnungen individueller Templates pro Kategorie in
einer eigenen Datenbanktabelle <code>serendipity_categorytemplates</code>:
</p>

<p class="desc sql-field-group">
    <code class="item sql-field">categoryid</code>enthält die Kategorie-ID, bei der ein eigenes Template verwendet werden soll.
    <code class="item sql-field">template</code> enthält den Verzeichnisnamen des Templates, der für diese Kategorie eingesetzt werden soll.
    <code class="item sql-field">fetchlimit</code> gibt an, wie viele Einträge für Artikel dieser Kategorie auf der Übersichtsseite angezeigt werden sollen.
    <code class="item sql-field">futureentries</code> gibt an, ob bei Darstellung der jeweiligen Kategorie Einträge gezeigt werden sollen, deren Datum in der Zukunft liegt.
    <code class="item sql-field">lang</code> legt die Sprache für die Darstellung dieser Kategorie fest (wird derzeit noch nicht ausgewertet).
    <code class="item sql-field">pass</code> legt ein Passwort fest, um die Übersichtsseite dieser Kategorie aufrufen zu können.
    <code class="item sql-field">sort_order</code> legt die Sortierungsreihenfolge der Artikel für die Übersichtsseite der jeweiligen Kategorie fest.
</p>

</article>

</section><!-- section.sub end -->

<section id="serendipity_event_ckeditor" class="sub">
<span class="u-toc">6.3.6 - CKEditor Plus: serendipity_event_ckeditor</span>

<h3 class="subsection" id="ckeditorserendipity_event_ckeditor">CKEditor Plus<br>serendipity_event_ckeditor</h3>

<p class="tagging invisible">
<span class="tag-box invisible">
    <span class="inline-tag">Plugins!CKEditor</span>
    <span class="inline-tag">Plugins!CKEditor Plus</span>
    <span class="inline-tag">Plugins!serendipity_event_ckeditor</span>
</span>
<span class="label invisible" id="ckeditor-plugin">ckeditor-plugin</span>
<span class="tag-box invisible">
    <span class="inline-tag">wysiwyg-editor</span>
    <span class="inline-tag">Artikel!wysiwyg-editieren</span>
    <span class="inline-tag">Plugins!wysiwyg-editieren</span>
</span>
</p>

<p>Wie bereits mehrfach angesprochen ist der CKEditor [*]
<span class="footnote"><i class="fa fa-info-circle"></i>
<a href="http://ckeditor.com/about/features" target="_blank">http://ckeditor.com/about/features</a></span><!-- footnote -->
seit einigen Jahren der neue Serendipity-Standard-WYSIWYG-Editor.
Das <code>CKEditor</code>-Plus-Plugin konnte schon mit der Serendipity
1.7 Serie benutzt werden und wurde seitdem ständig weiterentwickelt.
Es verfügt im Gegensatz zu dem im Serendipity-Kern implementierten
CKEditor über ein etwas erweitertes Spektrum und wird regelmäßig mit
neuen Versionen aktualisiert.</p>

<p>Bereits eingebaut sind ein einfaches <code>mediaembed</code>
CKEditor-Plugin für embedded YouTube code, folgende offizielle CKEditor Plugins:
<code>autogrow</code>, <code>clipboard</code>, <code>codesnippet</code>,
<code>embedbase</code>, <code>embed</code>, <code>embedsemantic</code>,
<code>fakeobjects</code>, <code>lineutils</code>, <code>notification</code>,
<code>notificationaggregator</code>, <code>widget</code> und <code>widgetselection</code>
Plugins, sowie das Serendipity-CKE-<code>procurator</code> [*]
<span class="footnote"><i class="fa fa-info-circle"></i>
Dies ist eine Art "<em>Platzhalter</em>"-Plugin für spezielle Serendipity
HTML Markup Erfordernisse, insbesondere bei JavaScript Snippets, oder
bestimmten installierten Serendipity Plugins, wie <code>imageselectorplus</code>,
oder <code>smartymarkup</code>.</span><!-- footnote -->
und zusätzlich das Serendipity-CKE-<code>cheatsheet</code> Plugin als leicht
erreichbare Toolbar-Button Popup-Dokumentation für die CKEditor Tastatursteuerung.</p>

<p>Das CKEditor-Plugin bietet diese Konfigurationsoptionen an:</p>

<p class="desc">
<span class="item mbold">Relativer HTTP-Pfad</span><!-- menuitem -->
<span class="desc-info">
    <span class="box">
        Normalerweise <code>plugins/serendipity_event_ckeditor/ckeditor/</code>. (Wird automatisch voreingestellt.)
    </span>
</span>
</p>

<p class="desc">
<span class="item mbold">HTTP Pfad des S9y Plugins Verzeichnisses</span><!-- menuitem -->
<span class="desc-info">
    <span class="box">
        Normalerweise <code>/serendipity/plugins/</code>. Wichtig sind die beiden Slash (<code>/</code>) am Anfang und Ende. (Wird automatisch voreingestellt.)
    </span>
</span>
</p>

<p class="desc">
<span class="item mbold">Nutze "code toolbar button"?</span><!-- menuitem -->
<span class="desc-info">
    <span class="box">
        (boolean) Ja Nein
    </span>

    <span class="box">
        Diese Option erlaubt die Einbindung des CKEditor-Plugins <code>codesnippet</code> [*]
        <span class="footnote"><i class="fa fa-info-circle"></i> <a href="http://ckeditor.com/addon/codesnippet" target="_blank">http://ckeditor.com/addon/codesnippet</a></span><!-- footnote -->
        in die Toolbar. Dann können auf elegant einfache Weise in jeder Textarea in der der CKEditor
        eingebunden ist, <em>Code</em>-Blöcke eingebunden werden, die intern zu geeignetem HTML-Markup
        verändert und zusätzlich per <code>highlightjs</code>-Widget [*]
        <span class="footnote"><i class="fa fa-info-circle"></i> <a href="https://highlightjs.org/" target="_blank">https://highlightjs.org/</a></span><!-- footnote -->
        farblich entsprechend der <code>Code</code>-Sprache dargestellt werden.
    </span>
</span>
</p>

<p class="desc">
<span class="item mbold">Nutze zusätzliches code prettify css/js im Frontend?</span><!-- menuitem -->
<span class="desc-info">
    <span class="box">
        (boolean) Ja Nein
    </span>

    <span class="box">
        Ältere Versionen des Serendipity CKEdior-Plugins nutzten als higlight-Widget das <code>prettify</code>-JS-Widget
        von Google. Aus Kompatibilitätsgründen für ältere Einträge mit diesem highlighter musste diese Option für frühe
        Nutzer des Plugins geschaffen werden. Das oben beschriebene <code>codesnippet</code>-Plugin ist aber der Standard.
    </span>
</span>
</p>

<p class="desc">
<span class="item mbold">Stelle Advanced-Content-Filter (ACF) ab?</span><!-- menuitem -->
<span class="desc-info">
    <span class="box">
        (boolean) Ja Nein
    </span>

    <span class="box">
        Der Advanced-Content-Filter (ACF) [*]
        <span class="footnote"><i class="fa fa-info-circle"></i> <a href="http://docs.ckeditor.com/#!/guide/dev_acf" target="_blank">http://docs.ckeditor.com/#!/guide/dev_acf</a></span><!-- footnote -->
        ist ein interner Schutzmechanismus des CKEditors, um
        sich selbst, die eigenen fein aufeinander abgestimmten Funktionen
        <span class="mbold">und</span> den User vor allzu manipulativem oder fehlerhaftem
        HTML-Markup zu schützen. Es gibt aber Situationen für fortgeschrittene Power-User,
        wo dies etwas zu restriktiv ist. Dann kann man diesen <em>Wärter</em> für den Beitrag
        oder generell abschalten.
    </span>
</span>
</p>

<p class="desc">
<span class="item mbold">Wähle voreingestellte Toolbars </span><!-- menuitem -->
<span class="desc-info">
    <span class="box">
        Auswahl der vorgegebenen Toolbars. Dies sind Basic, Standard und Full-Toolbar.
    </span>

    <span class="box">
        Ebenso wie für den Kernimplementation könne auch hier fortgeschrittene Power-User
        eine ganz individuelle Kontrolle über ein wenig Handarbeit erreichen. Lesen Sie dazu
        die notwendigen Schritte in der <code>plugins/serendipity_event_ckeditor/cke_config.js</code>
        und gegebenenfalls in der <code>cke_plugins.js</code> Datei, analog zu Kern-Implementation.
    </span>
</span>
</p>

<p class="desc">
<span class="item mbold">Stelle den eingebauen Bildbutton ab?</span><!-- menuitem -->
<span class="desc-info">
    <span class="box">
        (boolean) Ja Nein
    </span>

    <span class="box">
        CKEditor verfügt wie alle WYSIWYG-Editoren über einen Image-Button,
        der die Eigenschaften enthält ein Bild aus dem Dateisytem oder Internet zu wählen
        und in den Textbereich per HTML-Markup einzubinden. Dies aber ist ein sensibler Bereich,
        der Serendipity-Funktionen und Serendipity-Eigenschften berührt. Also wurde das CKEdior
        eigene <em>Form</em>-"blatt" zugunsten des Serendipity eigenen Mediendatenbank Popups/layers
        deaktiviert. Eine Forum-User-Anfrage brachte aber zutage, dass es wohl (rar gesähte) Nutzer gibt,
        die genau das nicht wollen und auf eigene Risiko das CKE-Image-Form verwenden wollen.
        Diese Deaktivierung des Buttons kann man hier nun rückgängig machen.
    </span>
</span>
</p>

<p class="desc">
<span class="item mbold">Nutze den (CKE-default) toolbar-group Umbruch?</span><!-- menuitem -->
<span class="desc-info">
    <span class="box">
        (boolean) Ja Nein
    </span>

    <span class="box">
        Hier können Sie einstellen ob die gewählte Toolbar mit oder ohne einen Umbruch
        dargestellt werden soll.
    </span>
</span>
</p>

<p class="desc">
<span class="item mbold">Entpacke Zip Datei (im Notfall)</span><!-- menuitem -->
<span class="desc-info">
    <span class="box">
        Das CKEditor-Plugin verfügt über einen <code>Upgrade</code>-Hook, siehe <a href="#ereignis-hooks">Ereignis-Hooks</a>,
        um nach dem Upgrade in der Plugin Liste automatisch
        in die eigene Plugin Konfiguration weiterzuleiten, damit
        dort die notwendigen Tasks, wie das entpacken der Zip Datei, geschehen können.
        Dies ist insbesondere dann wichtig, wenn mehrere Plugin Updates bereit stehen.
        In der Anfangsphase der Enwicklung des Plugins kam es hier ab und an zu Fehlern, so dass
        diese Option eingeführt wurde, damit der Benutzer das Entpacken und daraus folgende Eigenschaften
        selber anstoßen konnte. Da auch in der Zukunft solche Probleme möglichweise denkbar sind,
        blieb diese Option als Notfall-Option erhalten.
    </span>
</span>
</p>

</section><!-- section.sub end -->

<section id="serendipity_event_contactform" class="sub">
<span class="u-toc">6.3.7 - Kontaktformular: serendipity_event_contactform</span>

<h3 class="subsection" id="kontaktformularserendipity_event_contactform">Kontaktformular<br>serendipity_event_contactform</h3>

<p class="tagging invisible">
<span class="tag-box invisible">
    <span class="inline-tag">Plugins!Kontaktformular</span>
    <span class="inline-tag">Plugins!serendipity_event_contactform</span>
    <span class="inline-tag">Kontaktformular</span>
</span>
</p>

<p>Das Plugin <em>Kontaktformular</em> dient dazu, in Ihrem Blog den Besuchern
eine einfache Möglichkeit zu bieten, mit Ihnen in Kontakt zu treten. Dies
ist besonders dann hilfreich, wenn Sie im Blog keine E-Mail-Adresse
veröffentlichen möchten und bei der Kontaktaufnahme im Voraus bestimmte
Daten abfragen möchten.</p>

<p>Ähnlich wie das Gästebuch-Plugin können Sie nach der Installation des
Plugins eine eigenständige URL aufrufen, unter der das Kontaktformular
eingebunden wird.</p>

<p>Das Plugin kann detailliert konfiguriert werden, um festzulegen, welche
Angaben eines Besuchers Sie abfragen wollen. Dabei stehen Ihnen
folgende Optionen zur Verfügung:</p>

<p class="desc">
<span class="item mbold">Permalink</span><!-- menuitem -->
<span class="desc-info">Globaler Permalink, um die Ausgabe des Plugins im Frontend sehen zu
können. Details siehe Seite
<span class="pageref"><a href="#Standardpluginkonfiguration-Permalink">Standardpluginkonfiguration-Permalink</a></span>.</span>
</p>

<p class="desc">
<span class="item mbold">URL shorthand name</span><!-- menuitem -->
<span class="desc-info">Globale Variable, die einen alternativen Permalink zur Ausgabe des
Plugins im Frontend bereitstellt. Details siehe Seite
<span class="pageref"><a href="#Standardpluginkonfiguration-Pagetitle">Standardpluginkonfiguration-Pagetitle</a></span>.</span>
</p>

<p class="desc">
<span class="item mbold">E-Mail-Adresse für Kontaktmails</span><!-- menuitem -->
<span class="desc-info">Hier tragen Sie die E-Mail-Adresse ein, bei der Kontaktanfragen eingehen
sollen. Sie können mehrere Instanzen des Kontaktformular-Plugins benutzen,
um unterschiedliche Kontaktarten für unterschiedliche Adressen/Formulare
aufzusetzen. Abhängig vom Mailserver [*]
<span class="footnote"><i class="fa fa-info-circle"></i> Der Mailserver muss mehrere
Adressen im TO:-Header der E-Mail aufschlüsseln können.</span><!-- footnote --> auf Ihrem Server können
Sie mehrere E-Mail-Adressen mit Komma getrennt angeben. Alternativ können
Sie eine Mailingliste einrichten, um Kontaktmails an mehrere Adressen zu
verteilen.</span>
</p>

<p class="desc">
<span class="item mbold">Einführungstext</span><!-- menuitem -->
<span class="desc-info">Der Einführungstext wird oberhalb des Kontaktformulars angezeigt. Hier
können Sie beliebigen HTML-Code eintragen.</span>
</p>

<p class="desc">
<span class="item mbold">Dargestellter Text nach Übermittlung der Nachricht</span><!-- menuitem -->
<span class="desc-info">Hier können Sie HTML-Code eintragen, der dem Benutzer nach Abschicken des
Kontaktformulars angezeigt wird.</span>
</p>

<p class="desc">
<span class="item mbold">Als Artikel formatieren</span><!-- menuitem -->
<span class="desc-info">Legt fest, ob das Kontaktformular im Layout normaler Blog-Einträge
angezeigt werden soll, Details siehe Seite
<span class="pageref"><a href="#Standardpluginkonfiguration-Articleformat">Standardpluginkonfiguration-Articleformat</a></span>.</span>
</p>

<p class="desc">
<span class="item mbold">Use the dynamic tpl</span><!-- menuitem -->
<span class="desc-info"></span>
<span class="desc-info">
    <span class="box">
        Legt fest, welche Daten von einem
        Besucher beim Abschicken eines Kontaktformulars abgefragt werden sollen.
    </span>

    <span class="box">
        <span class="mbold">Standard</span> legt als Pflichtfelder den Namen, die E-Mail-Adresse, die
        Homepage und einen Anfragetext fest.
    </span>

    <span class="box">
        <span class="mbold">Small Business</span> fragt die Pflichtfelder Vorname, Nachname,
        E-Mail-Adresse und den Anfragetext ab. Im Vergleich zu <span class="mbold">Standard</span>
        fehlt also die Homepage, aber dafür wird der Name in Vor- und Nachname
        aufgeteilt.
    </span>

    <span class="box">
        <span class="mbold">Detailed Form</span> fragt zusätzlich zu den Feldern von <em>Small
        Business</em> auch noch eine postalische Adresse ab.
    </span>

    <span class="box">
        Als letzte Variante dient die Option <span class="mbold">Custom</span>. Wenn Sie diese Option
        auswählen und auf den Button <span class="mbold">Speichern</span> klicken, wird unterhalb des
        Auswahlfeldes ein detaillierter Erklärungstext und ein Eingabefeld
        eingeblendet. Dort können Sie individuell festlegen, welche Kontaktfelder
        im Formular eingebunden werden sollen.
    </span>
</span>
</p>

<p class="desc">
<span class="item mbold">Form field string</span><!-- menuitem -->
<span class="desc-info">
    <span class="box">
        Die Syntax zur Eingabe der gewünschten Formularfelder sieht auf den
        ersten Blick sehr komplex aus, da sie in einem einzigen Texteingabefeld
        vorgenommen werden muss und nicht menügesteuert erfolgt. Dank
        dieser Eingabezeile haben Sie dafür eine sehr große Flexibilität in der
        Konfiguration der Felder.
    </span>

    <span class="box">
        Grundsätzlich müssen Sie für jedes Feld, das Sie im Kontaktformular
        darstellen wollen, einen Block bestehend aus vier Attributen eingeben.
        Mehrere Eingabefelder müssen Sie dabei mit dem Doppelpunkt (<code>:</code>)
        voneinander trennen. Die Attribute sind jeweils mit dem Semikolon
        (<code>;</code>) voneinander separiert.
    </span>

    <span class="box">
        Dazu ein kleines Beispiel. Wenn Sie nur ein Feld <code>Nachricht</code> und
        <code>Name</code> abfragen wollen, müssen Sie Folgendes im Eingabefeld
        eintragen:
    </span>

    <span class="box">
        <span id="pre-style"><code class="txt">
            Name;text:Nachricht;textarea
        </code></span>
    </span>

    <span class="box">
        Es werden also zwei Elemente definiert, die jeweils nur zwei Attribute
        besitzen. Die vollständige Liste der Attribute kann an erster Stelle den
        Text <code>require</code> enthalten, um ein Feld zu einem Pflichtfeld zu machen.
        In obigem Beispiel wären beide Felder optional, könnten also vom Besucher
        leer gelassen werden. Um den Namen als Pflichtfeld zu definieren, wäre
        folgende Eingabe nötig:
    </span>

    <span class="box">
        <span id="pre-style"><code class="txt">
            require;Name;text:Nachricht;textarea
        </code></span>
    </span>

    <span class="box">
        Als zweites Attribut [*]
        <span class="footnote"><i class="fa fa-info-circle"></i> Wenn Sie das Sonderattribut <em>require</em><br> 
        nicht angegeben haben, verschiebt sich die Attribut-Reihenfolge um eins
        nach vorne.</span><!-- footnote --> folgt der Name des Eingabefeldes (in unseren Beispielen
        <code>Name</code> und <code>Nachricht</code>).
    </span>

    <span class="box">
        Das dritte Attribut legt fest, wie das Eingabefeld dargestellt wird. Es
        stehen folgende Eingabetypen zur Verfügung:
    </span>

    <span class="box">
        <code class="item">text</code> Einzeilige Text-Eingabebox
        <code class="item">checkbox</code> Ankreuzbox
        <code class="item">radio</code> Auswahlbox
        <code class="item">hidden</code> Verstecktes Feld
        <code class="item">password</code> Passwort-Feld
        <code class="item">textarea</code> Mehrzeiliges Eingabefeld
        <code class="item">select</code> Ausklappfeld
    </span>

    <span class="box">
        Als viertes und letztes Attribut können Sie angeben, welcher Standardwert
        in einem Formularfeld vorgegeben wird. Mit so einem Standardwert können
        Sie Ihren Benutzern verdeutlichen, welche Eingaben Sie erwarten:
    </span>

    <span class="box">
        <span id="pre-style"><code class="txt">
            require;Homepage;text;Ihre private Homepage-URL
        </code></span>
    </span>

    <span class="box">
        Auch dieses letzte Attribut ist optional und kann weggelassen werden. Bei
        den Typen <code>checkbox</code> und <code>radio</code> kann als letztes Attribut
        <code>checked</code> angegeben werden, da eine Ankreuzbox nur entweder
        angekreuzt oder nicht angekreuzt sein kann. Bei dem Typ <code>select</code> kann
        stattdessen das Attribut <code>selected</code> eingetragen werden.
    </span>

    <span class="box">
        Bei den beiden Typen <code>radio</code> und <code>select</code> gilt für das letzte
        Attribut eine leicht unterschiedliche Syntax. Für derartige
        Mehrfach-Auswahlfelder müssen Sie festlegen, welche Inhalte diese
        besitzen sollen. Diese werden mit einem weiteren Sonderzeichen, dem
        Pipe-Symbol (<code>|</code>) voneinander getrennt:
        <code>;Feld1,Wert1|Feld2,Wert2|Feld3,Wert3</code>. <code>FeldX</code> entspricht dabei
        der Angabe, die der Besucher in einer Auswahlbox sieht, während
        <code>WertX</code> dem entspricht, was als Wert später im Kontaktformular
        übermittelt wird. Ihre Eingaben für <code>FeldX</code> und <code>WertX</code> können also
        auch identisch lauten.
    </span>

    <span class="box">
        Um <code>radio</code>- und <code>select</code>-Felder zu verdeutlichen, konstruieren wir
        ein weiteres Beispiel. Der Besucher soll zum einen mittels Auswahlbox
        mitteilen, ob er ein Raucher ist. Dafür stehen ihm die
        Antwortmöglichkeiten <em>Militanter Nichtraucher</em>, <em>Raucher</em> und
        <em>Nicht von einem Schornstein zu unterscheiden</em> zur Verfügung.
        Vorausgewählt soll die erste Option sein. In der Kontaktmail soll zur
        besseren Übersichtlichkeit nur <em>nichtraucher</em>, <em>raucher</em>
        oder <em>potenziellerKunde</em> erscheinen.
    </span>

    <span class="box">
        Zum anderen soll der Besucher mittels Ausklappfeld festlegen, was sein
        Lieblingsessen ist. Hierfür soll er die Möglichkeiten <em>Pizza</em>,
        <em>Pommes</em>, <em>Blumen</em> und <em>Ich esse nichts das einen Schatten
        wirft</em> wählen können. Hier soll die letzte Option vorausgewählt sein, und
        diese Angabe soll ein Pflichtfeld sein. In der Kontaktmail sollen nur
        die Werte <em>pizza</em>, <em>pommes</em>, <em>blumen</em> und <em>nichts</em>
        erscheinen.
    </span>

    <span class="box">Dazu dient folgende Konfiguration (alles in einer Zeile einzugeben):</span>

    <span class="box">
        <span id="pre-style"><code class="txt">
            Raucher;radio;Militanter Nichtraucher,nichtraucher,checked|Raucher,raucher|Nicht von einem Schornstein zu unterscheiden,<br>
            potenziellerKunde:require;Lieblingsessen;select;Pizza,pizza|Pommes,pommes|Blumen,blumen|<br>
            Ich esse nichts das einen Schatten wirft,nichts,selected
        </code></span>
    </span>

    <span class="box">
        Bei Eingabe dieser Konfigurationsmöglichkeiten müssen Sie stets
        darauf achten, dass Sie die richtigen Trennungszeichen verwenden, da es
        ansonsten zu unvorhergesehenen Auswirkungen kommen könnte. Ganz besonders gilt,
        dass Sie ein Komma (<code>,</code>) nicht innerhalb eines Auswahlfeld-Werts
        einsetzen dürfen, da dies als Trennzeichen verwendet wird.
    </span>

    <span class="box">
        Alle Einträge, die über das Kontaktformular-Plugin von Besuchern ausgefüllt
        wurden, können durch das Serendipity-Antispam-Plugin überprüft werden. Die
        Antispam-Methoden greifen dafür auf die Felder <code>name</code>, <code>url</code>,
        <code>comment</code> und <code>email</code> zu. Wenn Sie das Antispam-Plugin also
        sinnvoll integrieren wollen, sollten Sie darauf achten, bei einer
        dynamischen Konfiguration der Felder die Bezeichner für Namen, URLs etc.
        mit exakt den genannten Bezeichnern zu verwenden.
    </span>
</span>
</p>

<p>Das Layout des Kontaktformulars kann durch die Smarty-Templatedateien
    <span class="inline-tag">Template-Dateien!plugin_contactform.tpl</span> <code>plugin_contactform.tpl</code> (für normale Kontaktformulare) und
    <span class="inline-tag">Template-Dateien!plugin_dynamicform.tpl</span> <code>plugin_dynamicform.tpl</code> angepasst werden. Dabei sind folgende Variablen vorhanden:
</p>

<p class="desc citem-desc">
<span class="tag-box invisible">
    <span class="inline-tag">Template-Variablen!\$is_contactform_error</span>
    <span class="inline-tag">Template-Variablen!\$plugin_contactform_error</span>
    <span class="inline-tag">Template-Variablen!\$comments_messagestack</span>
</span>
<code class="item smarty_var">$is_contactform_error</code>: Bool, 
<code class="item smarty_var">$plugin_contactform_error</code>: String, 
<code class="item smarty_var">$comments_messagestack</code>: String<!-- codeitem -->
<span class="desc-info">enthält etwaige Fehlermeldungen beim Absenden des Kontaktformulars.</span>
</p>

<p class="desc citem-desc">
<span class="tag-box invisible">
    <span class="inline-tag">Template-Variablen!\$is_contactform_sent</span>
</span>
<code class="item smarty_var">$is_contactform_sent</code>: Bool<!-- codeitem -->
<span class="desc-info">gibt an, ob das Kontaktformular erfolgreich verschickt wurde.</span>
</p>

<p class="desc citem-desc">
<span class="tag-box invisible">
    <span class="inline-tag">Template-Variablen!\$plugin_contactform_articleformat</span>
</span>
<code class="item smarty_var">$plugin_contactform_articleformat</code>: Bool<!-- codeitem -->
<span class="desc-info">gibt an,
ob das Kontaktformular im Layout eines Blog-Artikels formatiert werden soll.</span>
</p>

<p class="desc citem-desc">
<span class="tag-box invisible">
    <span class="inline-tag">Template-Variablen!\$plugin_contactform_name</span>
</span>
<code class="item smarty_var">$plugin_contactform_name</code>: String<!-- codeitem -->
<span class="desc-info">enthält den Namen des Kontaktformulars.</span>
</p>

<p class="desc citem-desc">
<span class="tag-box invisible">
    <span class="inline-tag">Template-Variablen!\$plugin_contactform_preface</span>
</span>
<code class="item smarty_var">$plugin_contactform_preface</code>: String<!-- codeitem -->
<span class="desc-info">enthält den Einleitungstext des Formulars.</span>
</p>

<p class="desc citem-desc">
<span class="tag-box invisible">
    <span class="inline-tag">Template-Variablen!\$plugin_contactform_sent</span>
    <span class="inline-tag">Template-Variablen!\$plugin_contactform_message</span>
</span>
<code class="item smarty_var">$plugin_contactform_sent</code>: String, 
<code class="item smarty_var">$plugin_contactform_message</code>: String<!-- codeitem -->
<span class="desc-info">enthält den Text bei erfolgreichem Versand des Kontaktformulars.</span>
</p>

<p class="desc citem-desc">
<span class="tag-box invisible">
    <span class="inline-tag">Template-Variablen!\$commentform_action</span>
</span>
<code class="item smarty_var">$commentform_action</code>: String<!-- codeitem -->
<span class="desc-info">enthält das URL-Ziel des Formulars.</span>
</p>

<p class="desc citem-desc">
<span class="tag-box invisible">
    <span class="inline-tag">Template-Variablen!\$commentform_sname</span>
</span>
<code class="item smarty_var">$commentform_sname</code>: String<!-- codeitem -->
<span class="desc-info">enthält den URL-Namen der gewählten Kontaktformular-Seite.</span>
</p>

<p class="desc citem-desc">
<span class="tag-box invisible">
    <span class="inline-tag">Template-Variablen!\$commentform_name</span>
    <span class="inline-tag">Template-Variablen!\$commentform_url</span>
    <span class="inline-tag">Template-Variablen!\$commentform_email</span>
    <span class="inline-tag">Template-Variablen!\$commentform_comment</span>
</span>
<code class="item smarty_var">$commentform_name</code>: String, 
<code class="item smarty_var">$commentform_url</code>: String, 
<code class="item smarty_var">$commentform_email</code>: String, 
<code class="item smarty_var">$commentform_comment</code>: String<!-- codeitem -->
<span class="desc-info">enthält die Formulareingaben des Benutzers.</span>
</p>

<p class="desc citem-desc">
<span class="tag-box invisible">
    <span class="inline-tag">Template-Variablen!\$commentform_dynamicfields</span>
</span>
<code class="item smarty_var">$commentform_dynamicfields</code>: Array<!-- codeitem -->
<span class="desc-info">enthält eine 
Liste der konfigurierten dynamischen Eingabefelder des Kontaktformulars.</span>
</p>

<article id="XU" class="subsub">

<header>
    <h4 class="subarticle" id="datenbanktabelle-2">Datenbanktabelle</h4>
</header>

<p>
<span class="tag-box invisible">
    <span class="inline-tag">Datenbank-Tabellen!serendipity_guestbook</span>
</span>
Gästebucheinträge werden in der Datenbanktabelle <code>serendipity_guestbook</code> gespeichert:
</p>

<p class="desc sql-field-group">
    <code class="item sql-field">id</code> enthält die fortlaufende ID eines Gästebucheintrags.
    <code class="item sql-field">ip</code> enthält die IP des Besuchers.
    <code class="item sql-field">name</code> enthält den Namen des Besuchers.
    <code class="item sql-field">homepage</code> enthält die Homepage des Besuchers.
    <code class="item sql-field">email</code> enthält die E-Mail-Adresse des Besuchers.
    <code class="item sql-field">body</code> enthält den Gästebucheintrag des Besuchers.
    <code class="item sql-field">timestamp</code> enthält die Uhrzeit, zu der der Gästebucheintrag erstellt wurde.
</p>

</article>

</section><!-- section.sub end -->

<section id="serendipity_event_contentrewrite" class="sub">
<span class="u-toc">6.3.8 - Wort-Ersetzer: serendipity_event_contentrewrite</span>

<h3 class="subsection" id="wort-ersetzerserendipity_event_contentrewrite">Wort-Ersetzer<br>serendipity_event_contentrewrite</h3>

<p class="tagging invisible">
<span class="tag-box invisible">
    <span class="inline-tag">Plugins!Wort-Ersetzer</span>
    <span class="inline-tag">Plugins!serendipity_event_contentrewrite</span>
</span>
</p>

<p class="tagging invisible">
<span class="tag-box invisible">
    <span class="inline-tag">Worte ersetzen</span>
    <span class="inline-tag">Glossare verwalten</span>
    <span class="inline-tag">Akronyme</span>
</span>
</p>

<p>Das Plugin <em>Wort-Ersetzer</em> ist ein sehr komplexes Plugin, das es
Ihnen ermöglicht, beliebige Wörter von Kommentaren oder Blog-Artikeln
umzuwandeln. Sehr beliebt ist das Plugin daher bei schreibfaulen
Redakteuren oder Personen, die gerne mit Akronymen um sich werfen.</p>

<p>Jedes Mal, wenn Sie in einem Artikel beispielsweise die Zeichenfolge
<code>s9y</code> verwenden, kann das Plugin dafür sorgen, dass dies
umgewandelt wird zu <code>&lt;a href="http://www.s9y.org/"
 title="s9y"&gt;s9y&lt;/a&gt;</code>. Man sieht also bereits, welches
Einsparungspotenzial das Plugin bietet, solange Sie das zu Grunde
liegende Wörterbuch gut pflegen.</p>

<p>Die Eingabemaske für diese Wörterbücher erreichen Sie über die
Konfiguration des Plugins. In dieser Oberfläche können Sie beliebig viele
Wörter erfassen, die jeweils eine <em>Quelle</em> und ein <em>Ziel</em>
darstellen, die anhand der konfigurierten <em>Umformungsmaske</em> speziell
umgeschrieben werden.</p>

<p>Jedes Mal, wenn Sie einen neuen <span class="mbold">Titel</span> und eine neue
<span class="mbold">Beschreibung</span> eintragen und das Plugin speichern, wird dem Wörterbuch
ein neues Wort hinzugefügt. Um ein Wort aus dem Wörterbuch zu entfernen,
können Sie es in der Konfigurationsmaske einfach aus dem Eingabefeld
löschen.</p>

<p>Bevor Sie jedoch eine <em>Quelle</em> und ein <em>Ziel</em> für die
Wortersetzung eintragen, müssen Sie global festlegen, wie die beiden
Eingaben behandelt werden sollen. Die <em>Quelle</em> legt das
Wort fest, das Sie selbst in einem Artikel eintragen. Das <em>Ziel</em> ist
später das Wort, das anstelle Ihrer Eingabe erscheinen oder ergänzt
werden soll.</p>

<p>Mittels der <span class="mbold">Umformungsmaske</span> legen Sie fest, wie die Wortquelle und
das Wortziel später umformatiert werden sollen. Dies ist weitaus
komfortabler, als jedes Mal den vollständigen Zieltext festzulegen.
Stellen Sie sich vor, Sie würden analog zur Umformung des Wortes
<code>s9y</code> auch das Wort <code>PHP</code> so umwandeln, dass ein Link darauf
gesetzt wird. Als Umformungsmaske würde man hier Folgendes festlegen:
<code>&lt;a href="ziel" title="quelle"&gt;quelle&lt;/a&gt;</code></p>

<p>Tragen Sie nun als <span class="mbold">Neuer Titel</span> das Wort <code>s9y</code> ein, als
<span class="mbold">Neue Beschreibung</span> geben Sie <code>http://www.s9y.org/</code> ein.
Speichern Sie das Plugin, und Sie können das nächste Wörterpaar
<code>PHP</code> und <code>http://www.php.net</code> eintragen.</p>

<p>Die Umformungsmaske wird also in Zukunft bei jedem Vorkommen der
eingetragenen <em>Quelle</em> das entsprechende <em>Ziel</em> heraussuchen und
im Inhalt einsetzen.</p>

<p>Für jedes Plugin kann nur eine Umformungsmaske eingetragen werden. Sie
können daher mehrere <em>Wort-Ersetzer</em>-Plugins installieren. So wäre
es also auch denkbar, als <span class="mbold">Umformungsmaske</span> nur <code>ziel</code>
einzutragen, damit Sie zB. das Wort <code>gh</code> (als <em>Quelle</em>) immer
einfach nur mit <code>Garvin Hicking</code> (als <em>Ziel</em>) ersetzen.</p>

<p>
<span class="tag-box invisible">
    <span class="inline-tag">Rewrite-Zeichen</span>
</span>
Das <span class="mbold">Rewrite-Zeichen</span> hat eine besondere Bedeutung. Wenn Sie im
Wörterbuch des Plugins eine <em>Quelle</em> eintragen, die in gewöhnlichem
Text vorkommen kann, dann möchten Sie nicht immer, dass das Wort ersetzt
wird. Mit dem hier konfigurierten Sonderzeichen können Sie erreichen,
dass ein Wort nur dann ersetzt wird, wenn am Ende das hinterlegte
Sonderzeichen auftaucht. Wenn Sie also <code>*</code> als <span class="mbold">Rewrite-Zeichen</span>
eintragen, würde im obigen Beispiel nur <code>PHP*</code> und
<code>s9y*</code> ersetzt werden. Eine Nennung ohne das Rewrite-Zeichen würde
das Wort unangetastet lassen.</p>

<p>Das <em>Wort-Ersetzer</em>-Plugin können Sie vom <em>Ausgabe-Wrapper</em>-Plugin
(siehe Seite <span class="pageref"><a href="#ausgabewrapper">ausgabewrapper</a></span>)
in der Seitenleiste ausgeben lassen. Es zeigt Ihnen dann das Wörterbuch der eingetragenen
<em>Quellen</em> und <em>Ziele</em>. Dieses Wörterbuch wird auch in der Konfigurationsmaske
des Plugins am Ende der Seite eingebunden.</p>

<p>
<span class="tag-box invisible">
    <span class="inline-tag">Reguläre Ausdrücke</span>
    <span class="inline-tag">URL!automatisch klickbar machen</span>
</span>
Während dieses Plugin relativ abstrakt gehandhabt wird, gibt es zwei
besondere Plugins, die die Thematik der Wortersetzung anders handhaben:
zum einen das <em>Glossary</em>-Plugin (<code>serendipity_event_glossary</code>),
mit dem Sie eine einfache Wortliste hinterlegen können, die beim
Auftauchen in einem Text hervorgehoben wird. Zum anderen das Plugin
<em>Markup: RegexpMarkup</em>, mit dem Sie komplexe reguläre Ausdrücke zum
Ersetzen von Wörtern definieren können. Letztgenanntes Plugin bietet so
die Möglichkeit, automatisch Links mit vorangestelltem <em>http://</em>
anklickbar zu machen oder auch alle Wörter mittels spezieller
Formatierung (zB. <code>[(Bismarck)]</code>) so umzuformen, dass ein Klick
darauf den entsprechenden Eintrag in der Wikipedia öffnet.</p>

</section><!-- section.sub end -->

<section id="serendipity_event_cronjob" class="sub">
<span class="u-toc">6.3.9 - Cronjob scheduler: serendipity_event_cronjob</span>

<h3 class="subsection" id="cronjob-schedulerserendipity_event_cronjob">Cronjob scheduler<br>serendipity_event_cronjob</h3>

<p class="tagging invisible">
<span class="label invisible" id="Cronjobsched">Cronjobsched</span>
<span class="tag-box invisible">
    <span class="inline-tag">Plugins!Cronjob scheduler</span>
    <span class="inline-tag">Plugins!serendipity_event_cronjob</span>
</span>
</p>

<p class="tagging invisible">
<span class="tag-box invisible">
    <span class="inline-tag">Cronjob</span>
    <span class="inline-tag">Automatische Ausführung</span>
</span>
</p>

<p>Der Begriff <em>Cronjob</em> ist die Kurzform für eine wiederkehrende
(<em>chronologische</em>) Aufgabe und stammt ursprünglich von
Unix-Betriebssystemen. Bei derartigen Betriebssystemen kann in beliebigen
Zeit-Intervallen automatisch ein Programm oder eine Aktion ausgeführt werden.</p>

<p>Solche regelmäßigen Cronjobs sind auch im Blog-Umfeld von Interesse.
Beispielsweise bietet Serendipity Plugins an, die regelmäßig RSS-Feeds
importieren (Aggregator, siehe Seite
<span class="pageref"><a href="#aggregator">aggregator</a></span>)
oder regelmäßig E-Mails als Blog-Artikel abrufen (Popfetcher, siehe Seite
<span class="pageref"><a href="#serendipity-event-popfetcher">serendipity-event-popfetcher</a></span>).</p>

<p>Eine solch regelmäßige Aktion kann Ihr PHP-Webserver üblicherweise nicht selbst
ausführen. Serendipity ist keine Anwendung, die wie ein Betriebssystem
ständig im Hintergrund läuft, sondern man muss sich das System eher wie einen Bären im
Winterschlaf vorstellen. Der Bär ist nur dann wach, wenn gerade ein Besucher
seine Höhle aufsucht und ihn mit großem Lärm aufweckt. Wenn der ungebetene Gast
vom Bären <em>versorgt</em> wurde, kehrt wieder Ruhe ein und der Bär schläft
weiter. Für unser Blog bedeutet das: Wenn kein Besucher oder Redakteur gerade das
Blog aufruft, ist Serendipity inaktiv und kann keine Aktionen ausführen.</p>

<p>Daher kann Serendipity von sich aus nicht einfach einen Vorgang
auslösen, sondern ist abhängig von Ihren Aktionen. Bei der Benutzung
der genannten Plugins müssen Sie selber dafür sorgen, dass eine spezielle URL
aufgerufen wird, die wiederum die eigentliche Funktionalität aufruft. Wenn Sie
einen eigenen Webserver administrieren, könnten Sie diese URL in die Liste der Cronjobs
(die <em>Crontab</em>) aufnehmen und automatisch aufrufen.</p>

<p>Jedoch ist diese Möglichkeit für viele Benutzer keine Option. Hier kommt
das Plugin <em>Cronjob scheduler</em> ins Spiel. Das Plugin ermöglicht es
Ihnen, unterstützte Plugins in einem gewünschten Intervall aufzurufen.</p>

<p>Dabei bedient sich das Plugin eines kleinen Tricks. Es bindet im Frontend
eine unsichtbare Datei ein, die von jedem Besucher aufgerufen
wird, ohne dass dieser das merkt. Die Datei prüft, wann der
letzte automatische Aufruf stattfand, und startet gegebenenfalls die
notwendigen Aktionen. Andernfalls tut das Plugin nichts und
wartet auf den nächsten Aufruf.</p>

<p>Dieser Aufruf durch einen Besucher hat natürlich den Nachteil, dass man
niemals exakt voraussagen kann, ob auch wirklich zum benötigten Zeitpunkt
jemand das Blog besucht. Wenn ein Job alle fünf Minuten ausgeführt
werden soll, aber statistisch nur alle zwei Stunden ein Besucher
vorbeikommt, dann wird dieser Job faktisch auch nur alle zwei Stunden
ausgeführt. In den meisten Fällen ist das kein Problem, da, wenn es früher
keine Besucher gibt, die neu importierten Daten des Jobs sowieso nicht
benötigt werden. Das Cronjob-Plugin wird zentral über die URL
<code>http://www.example.com/serendipity/index.php?serendipity[cronjob]=true</code>
aufgerufen. Dies ist die erwähnte <em>unsichtbare Datei</em>, die ein
Besucher aufruft. Natürlich können Sie diese URL auch von einer Crontab
aus alle fünf Minuten aufrufen, anstatt dies Ihren Besuchern zu überlassen.
In so einem Fall können Sie das Plugin über die Konfigurationsoptionen so
einstellen, dass die <span class="mbold">visitor-based cronjobs</span> deaktiviert werden.</p>

<p>Welche Aktionen der Cronjob ausführt, stellen Sie nicht innerhalb des
Cronjob-Plugins ein, sondern in dem jeweiligen Plugin. Bei jedem
unterstützten Plugin können Sie in den Konfigurationsoptionen
einstellen, in welchem Zeitraum (alle fünf Minuten, 30 Minuten,
stündlich, halbtäglich, täglich, wöchentlich, monatlich) die Aktion
ausgeführt wird. In der Konfiguration des Cronjob-Plugins sehen Sie eine
Liste aller eingerichteten Cronjobs, und wann diese zuletzt ausgeführt
worden sind.</p>

<p>
<span class="tag-box invisible">
    <span class="inline-tag">Datenbank-Tabellen!serendipity_cronjoblog</span>
</span>
Bei jedem Aufruf schreibt das
Plugin einen kleinen Logfile-Eintrag in die Datenbanktabelle
<code>serendipity_cronjoblog</code>. Diese können Sie jederzeit leeren (nicht löschen),
wenn Sie Speicherplatz sparen wollen. Die Spalte <code>timestamp</code> enthält das
Datum der Cronjob-Ausführung, <code>type</code> die Cronjob-Art und <code>reason</code> einen
Informationstext zur Ausführung.</p>

</section><!-- section.sub end -->

<section id="serendipity_event_custom_permalinks" class="sub">
<span class="u-toc">6.3.10 - Frei definierbare Permalinks zu Einträgen: serendipity_event_custom_permalinks</span>

<h3 class="subsection" id="frei-definierbare-permalinks-zu-einträgenserendipity_event_custo">Frei definierbare Permalinks zu Einträgen<br>serendipity_event_custom_permalinks</h3>

<p class="tagging invisible">
<span class="tag-box invisible">
    <span class="inline-tag">Plugins!frei definierbare Permalinks zu Einträgen</span>
    <span class="inline-tag">Plugins!Permalinks</span>
    <span class="inline-tag">Plugins!serendipity_event_permalinks</span>
</span>
</p>

<p class="tagging invisible">
<span class="tag-box invisible">
    <span class="inline-tag">Permalinks</span>
    <span class="inline-tag">SEO</span>
    <span class="inline-tag">Suchmaschinenoptimierung|see{SEO}</span>
    <span class="inline-tag">slug</span>
</span>
</p>

<p>Ein Blog-Artikel ist standardmäßig unter der URL
<code>http://www.example.com/serendipity/archives/1-Mein-Blogartikel.html</code>
verfügbar. Wie genau die Pfadkomponenten benannt sind und welche
zusätzlichen Komponenten (Datum des Artikels, mit oder ohne Artikeltitel
oder ID etc.) in einem solchen Detail-Link (<em>Permalink</em>)
erscheinen, können Sie in der Serendipity-Konfiguration im Bereich
<em>Permalinks</em> [*]
<span class="footnote"><i class="fa fa-info-circle"></i> Siehe Kapitel <span class="reference">permalinkconfig</span> ab Seite
<span class="pageref"><a href="#permalinkconfig">permalinkconfig</a></span>.</span><!-- footnote --> einstellen.</p>

<p>Für besonders interessante Artikel können Sie aber auch individuelle URLs
für einen Beitrag vergeben, die von dieser Konvention abweichen. Diese URL
kann dann zusätzlich zur "echten" URL benutzt werden, um zu dem
gewünschten Artikel zu führen. Diese Extra-URL bietet das Plugin
<em>Frei definierbare Permalinks zu Einträgen</em> bei der Erstellung eines
Artikels in einem Feld der <em>Erweiterten Optionen</em> an. Andere
Blogsysteme nennen einen derartigen Permalink auch <em>slug</em>.</p>

<p>Dort tragen Sie den vollständig gültigen Pfad zu einem Artikel ein.
Dieser Link wird später auch im Frontend anstelle der vordefinierten
Struktur angezeigt. Ein Standardpfad wird in dieser Box vorausgefüllt
dargestellt (zB. <code>/serendipity/permalink/Mein-Blogartikel.html</code>).
Wenn Sie den Pfad anpassen, dürfen Sie nur die Teile anpassen, die hinter
der Stamm-URL von Serendipity (in unserem Beispiel <code>/serendipity/</code>)
aufgeführt sind. Sie können beliebige gültige URL-Zeichen [*]
<span class="footnote"><i class="fa fa-info-circle"></i> Sonderzeichen und
Leerzeichen müssen entsprechend der RFC 1738
(<a href="http://www.faqs.org/rfcs/rfc1738.html" target="_blank">http://www.faqs.org/rfcs/rfc1738.html</a>)
konvertiert werden. Das URL-Sonderzeichen <code>;</code> würde daher als
<code>%3B</code> umgeschrieben werden. Da dies eher unschön aussieht,
sollten Sie auf derartige Sonderzeichen in Permalinks besser verzichten.</span><!-- footnote --><br> 
als Permalink einsetzen. Die einzige Regel dabei ist, dass der Permalink
auf <code>.htm</code> oder <code>.html</code> endet, damit Serendipity ihn korrekt
erkennen kann. Auch dürfen Sie bereits bestehende interne Permalinks
(wie <code>/serendipity/archives/1-Mein-Blogartikel.html</code>) nicht
verwenden, da Serendipity dann eine URL nicht eindeutig einem Inhalt
zuweisen könnte. Die verwendeten Verzeichnisnamen werden nur virtuell
belegt, Sie müssen also keine entsprechende Verzeichnisstruktur auf Ihrem
Server anlegen.</p>

<p>Das Plugin wird gerne dann verwendet, wenn man besonders
lange Artikeltitel benutzt, die man in der URL aber lieber auf Stichworte
eingrenzen möchte. Oder im umgekehrten Fall, wenn man aus
Gründen der Suchmaschinenoptimierung einer URL mehr Stichworte mitgeben
möchte, als der Artikeltitel enthält.</p>

</section><!-- section.sub end -->

<section id="serendipity_event_downloadmanager" class="sub">
<span class="u-toc">6.3.11 - Downloadmanager: serendipity_event_downloadmanager</span>

<h3 class="subsection" id="downloadmanagerserendipity_event_downloadmanager">Downloadmanager<br>serendipity_event_downloadmanager</h3>

<p class="tagging invisible">
<span class="tag-box invisible">
    <span class="inline-tag">Plugins!Downloadmanager</span>
    <span class="inline-tag">Plugins!serendipity_event_downloadmanager</span>
</span>
</p>

<p>Mittels der Serendipity-Mediendatenbank haben Sie als Blog-Redakteur die
Möglichkeit, Dateien in Blog-Artikel einzubinden, damit Ihre Besucher
diese herunterladen können.</p>

<p>Wenn Sie jedoch viele Dateien übersichtlich zum Download anbieten wollen,
ist diese Methode mit zu viel manueller Arbeit verbunden. Aus diesem
Grund wurde das <em>Downloadmanager</em>-Plugin entwickelt.</p>

<p>Mit diesem Plugin können Sie komfortabel einen Download-Katalog anlegen.
Auf beliebige Unterrubriken verteilt können Sie hier Ihre Dateien
sortieren und dem Besucher anbieten.</p>

<p>Sobald das Plugin installiert wurde, können Sie über den Menüpunkt
<span class="mbold">Aktivität <span class="icon arrow-right">→</span>
Downloadmanager</span> Kategorien einrichten. Um eine neue Kategorie
einzurichten, tragen Sie den Namen im Feld
<span class="mbold">Kategorie-Name</span> ein. Über das Ausklappfeld
<span class="mbold">Unter-Kategorie von</span> können Sie festlegen,
ob die neu zu erstellende Kategorie unterhalb einer bestehenden
angelegt werden soll.</p>

<p>Alle vorhandenen Kategorien werden am Ende der Verwaltungsoberfläche in
einer Baumstruktur angezeigt. Dort können Sie bestehende Kategorien
umbenennen, indem Sie einen neuen Namen eintragen und auf <span class="mbold">Los!</span>
klicken. Kategorien können Sie löschen, indem Sie auf das zugehörige Bild
mit der Mülltonne klicken. Wenn ein Warndreieck über der Mülltonne
angezeigt wird, ist dies ein Indikator, dass beim Löschen auch vorhandene
Unterkategorien entfernt würden. Um eine Kategorie nur vorübergehend zu
verstecken, können Sie auf den danebenstehenden Kreis klicken. Rechts
neben dem Namen einer Kategorie sehen Sie zur Information die Anzahl der
darin angelegten Dateien.</p>

<p>Um Dateien in eine bestehende Kategorie einzustellen, müssen Sie auf das
Ordnersymbol links neben dem jeweiligen Kategorienamen klicken.</p>

<p>In der folgenden Oberfläche haben Sie insgesamt drei Möglichkeiten,
Dateien zuzuordnen. Dabei greift das Plugin auf Unterverzeichnisse zu,
die Sie in der Konfiguration des Plugins festlegen können. Diese
Unterverzeichnisse sollten Sie mittels FTP manuell anlegen oder
alternativ das bestehende <code>uploads</code>-Unterverzeichnis verwenden.</p>

<p>Die erste Zuordnungsmöglichkeit ist das Hochladen von Dateien über die
Downloadmanager-Oberfläche. Hierfür klicken Sie auf den Link
<span class="mbold">Dateien hochladen...</span>, der sich neben dem Informationstext
<span class="mbold">Dateien in dieser Kategorie</span> befindet. Mittels dieser Oberfläche
können Sie Dateien von Ihrer Festplatte auswählen und optional eine
Beschreibung dieser Datei in der Eingabebox darunter eintragen. Sie
können maximal fünf Dateien auf einmal hochladen. Die maximale Dateigröße
richtet sich nach der PHP-Konfiguration Ihres Webservers (siehe Seite
<span class="pageref"><a href="#file-uploads">file-uploads</a></span>).</p>

<p>Die zweite Zuordnungsmöglichkeit ist die Übernahme von Dateien, die Sie
mittels FTP in das sogenannte <em>incoming-Verzeichnis</em> hochgeladen
haben. Die Oberfläche zeigt alle in diesem Verzeichnis vorhandenen
Dateien an, und Sie können durch einen Klick auf das Ordnersymbol mit
dem Pfeil darin auswählen, welche Dateien Sie in die
Downloadmanager-Kategorie übernehmen möchten. Die Datei wird daraufhin
aus dem incoming-Verzeichnis in das Zielverzeichnis verschoben.</p>

<p>Als letzte Zuordnungsmöglichkeit können Sie Dateien auswählen, die Sie bereits in
die Mediendatenbank von Serendipity hochgeladen haben. Ähnlich
wie beim incoming-Verzeichnis können Sie hier eine bestehende Datei
durch Klick auf das Ordnersymbol mit dem grünen Pfeil in die
Downloadmanager-Kategorie übernehmen. Dabei wird die Datei aber nicht
verschoben, sondern einfach kopiert.</p>

<p>Nachdem Sie über diese Mechanismen Dateien zugeordnet haben, werden diese
in der Dateiübersicht am Anfang der Seite dargestellt. Neben
Informationen zum Dateinamen, den durchgeführten Downloads von Besuchern
und der Dateigröße können Sie eine Datei über das Mülltonnen-Symbol auch
wieder löschen. Die Dateibeschreibung jeder Datei können Sie ändern,
indem Sie auf den jeweiligen Dateinamen klicken. Dort können Sie auch
eine Datei einer anderen Kategorie zuordnen, um sie zu verschieben.
Über den Link <span class="mbold">Zurück...</span> kehren Sie zur Kategorie-Übersicht zurück.</p>

<p>Den Downloadmanager können Ihre Besucher über den im Plugin
konfigurierten Permalink aufrufen, standardmäßig
<code>http://www.example.com/serendipity/index.php?serendipity[subpage]=downloadmanager</code>.</p>

<p>In dieser Oberfläche sehen die Besucher eine Verzeichnisstruktur ähnlich
Ihrer Administrationsoberfläche. Dort können die Besucher beliebig
navigieren und eingestellte Dateien herunterladen.</p>

<p>Der Zugriff auf die Datei erfolgt stets über das Downloadmanager-Plugin,
die Datei wird also nicht direkt über das Verzeichnis heruntergeladen.
Dadurch können Ihre Besucher nicht einfach beliebige Dateien
herunterladen, und der Downloadmanager ist in der Lage, die Anzahl der
Downloads zu zählen. Gleichzeitig bedeutet dieser technische Kniff jedoch
auch, dass Ihre Besucher nur Dateien herunterladen können, die das Plugin
komplett in den Speicher laden kann. Daher ist das Plugin für Dateien
größer als das festgelegte PHP-Speicherlimit (meist 8MB) nicht geeignet.</p>

<p>Folgende Konfigurationsoptionen bietet das Plugin:</p>

<p class="desc">
<span class="item mbold">Seitentitel</span><!-- menuitem -->
<span class="desc-info">Der <span class="mbold">Seitentitel</span> wird als Überschrift in der
Downloadmanager-Übersicht für die Besucher eingeblendet.</span>
</p>

<p class="desc">
<span class="item mbold">Kopfzeile</span><!-- menuitem -->
<span class="desc-info">Die <span class="mbold">Kopfzeile</span> dient als Unter-Überschrift für die
Downloadmanager-Übersicht.</span>
</p>

<p class="desc">
<span class="item mbold">Statische URL</span><!-- menuitem -->
<span class="desc-info">URL-Titel der Seite, mit dem Sie die URL
<code>http://www.example.com/serendipity/index.php?serendipity[subpage]=downloadmanager</code>
aufrufen können. Details siehe Seite
<span class="pageref"><a href="#Standardpluginkonfiguration-Pagetitle">Standardpluginkonfiguration-Pagetitle</a></span>.</span>
</p>

<p class="desc">
<span class="item mbold">Permalink</span><!-- menuitem -->
<span class="desc-info">Den alternativen Permalink zum Zugriff auf das Plugin können Sie in
diesem Konfigurationsfeld eintragen. Details siehe Seite
<span class="pageref"><a href="#Standardpluginkonfiguration-Permalink">Standardpluginkonfiguration-Permalink</a></span>.</span>
</p>

<p class="desc">
<span class="item mbold">Pfad zu "incoming"</span><!-- menuitem -->
<span class="desc-info">Das <code>incoming</code>-Verzeichnis dient der Speicherung von Dateien, die Sie
via FTP hochladen, um diese in den Downloadmanager zu importieren.
Das hier festgelegte Verzeichnis muss Schreibrechte für den Webserver
besitzen (zB. 0777).</span>
</p>

<p class="desc">
<span class="item mbold">Pfad zu "download"-Verzeichnis</span><!-- menuitem -->
<span class="desc-info">Im Gegensatz zum temporären <code>incoming</code>-Verzeichnis werden die Dateien
im <code>download</code>-Verzeichnis dauerhaft gespeichert und von
dort aus an die Besucher ausgeliefert.</span>
</p>

<p class="desc">
<span class="item mbold">HTTP-path to plugin</span><!-- menuitem -->
<span class="desc-info">Dieses Verzeichnis legt den HTTP-Pfad fest, der zu dem
Downloadmanager-Plugin-Verzeichnis führt. Aus diesem Verzeichnis werden
die Icons und Grafikdateien bezogen, die das Plugin zur Darstellung
benötigt. Normalerweise müssen Sie an der Standardeinstellung des Plugins
nichts ändern.</span>
</p>

<p class="desc">
<span class="item mbold">Icon Breite, Icon Höhe</span><!-- menuitem -->
<span class="desc-info">
    <span class="box">
        Das Plugin liefert einige Icons für bekannte Dateierweiterungen (ZIP,
        PDF, Bilddateien etc.) mit, die in der Dateiübersicht für den Besucher
        angezeigt werden. Diese Dateien sind standardmäßig 18 Pixel breit und 20
        Pixel hoch. Wenn Sie die Grafikdateien gerne gegen andere und größere
        Icons austauschen wollen, können Sie über die Optionen <span class="mbold">Icon Breite</span>
        und <span class="mbold">Icon Höhe</span> die neuen Ausmaße der Grafik festlegen.
    </span>

    <span class="box">
        Beachten Sie: Wenn Sie die Größe ändern, ohne die Grafikdateien
        auszutauschen, werden die Grafiken nur vom Browser vergrößert und
        dadurch möglicherweise grob aufgelöst dargestellt.
    </span>
</span>
</p>

<p class="desc">
<span class="item mbold">Datumsformat</span><!-- menuitem -->
<span class="desc-info">Das Feld <span class="mbold">Datumsformat</span> legt fest, wie die Datumsangabe von Dateien
dargestellt werden soll. Standardmäßig ist hier das englische Format
<code>Y/m/d, h:ia</code> voreingestellt. Das deutsche Format könnnen Sie mittels
<code>d.m.Y H:i</code> einstellen. Weitere verfügbare Variablen der PHP
<code>date()</code>-Funktion finden Sie unter <code>http://de.php.net/date</code>.</span>
</p>

<p class="desc">
<span class="item mbold">Versteckte Kategorien für registrierte User zeigen</span><!-- menuitem -->
<span class="desc-info">
    <span class="box">
        Wenn Sie eine Kategorie des Downloadmanager-Plugins verstecken, werden
        die darin befindlichen Dateien normalen Besuchern nicht angezeigt. Wenn
        Sie die Option <span class="mbold">Versteckte Kategorien für registrierte User zeigen</span>
        aktivieren, können diese Dateien allen Besuchern dargestellt werden, die
        im Blog als Redakteure angemeldet sind.
    </span>

    <span class="box">
        Über diese Option können Sie daher spezielle Downloads nur für
        ausgewählte Benutzer zulassen.
    </span>
</span>
</p>

<p class="desc">
<span class="item mbold">Dateinamen anzeigen</span><!-- menuitem -->
<span class="desc-info">Ist die Option <span class="mbold">Dateinamen anzeigen</span> aktiviert, werden die
ursprünglichen Dateinamen der hochgeladenen Dateien angezeigt.
Bei deaktivierter Option sehen die Besucher nur die Dateibeschreibung.</span>
</p>

<p class="desc">
<span class="item mbold">Anzahl der Datei-Downloads</span><!-- menuitem -->
<span class="desc-info">Haben Sie die Option <span class="mbold">Anzahl der Datei-Downloads</span> aktiviert, wird in
der Kategorie-Übersicht für Besucher die Anzahl der Downloads jeder
einzelnen Datei angezeigt. Bei deaktivierter Option können Besucher die
Anzahl der Downloads jedoch nach wie vor in der Detailansicht einer Datei
einsehen. Wollen Sie die Anzahl auch dort verstecken, müssen Sie die
Smarty-Template-Datei
<span class="tag-box invisible">
    <span class="inline-tag">Template-Dateien!dlmanager.filedetails.tpl</span>
</span>
<code>dlmanager.filedetails.tpl</code> bearbeiten.</span>
</p>

<p class="desc">
<span class="item mbold">Show filesize</span><!-- menuitem -->
<span class="desc-info">Wenn Sie die Option <span class="mbold">Show filesize</span> aktivieren, wird die Dateigröße
einer Datei in der Kategorie-Übersicht für Besucher eingeblendet.</span>
</p>

<p class="desc">
<span class="item mbold">Datei-Datum anzeigen</span><!-- menuitem -->
<span class="desc-info">Wenn Sie die Option <span class="mbold">Show filesize</span> aktivieren, wird das
Erstellungsdatum einer Datei in der Kategorie-Übersicht für Besucher
eingeblendet.</span>
</p>


<p class="desc">
<span class="item mbold">Bezeichnung der Dateinamen, Dateigröße, Dateidatum und Download-Felder</span><!-- menuitem -->
<span class="desc-info">In diesen Konfigurationsfeldern können Sie eintragen, wie die
jeweiligen Felder in der Downloadmanager-Übersicht für Besucher
benannt werden.</span>
</p>

<p>Die Ausgabe des Plugins erfolgt in der Besucheransicht teilweise mittels
dreier Smarty-Template-Dateien. Die Datei
<span class="tag-box invisible">
    <span class="inline-tag">Template-Dateien!dlmanager.catlist.tpl</span>
</span>
<code>dlmanager.catlist.tpl</code> erstellt die Kategorie-Übersicht, die Datei
<span class="tag-box invisible">
    <span class="inline-tag">Template-Dateien!dlmanager.filelist.tpl</span>
</span>
<code>dlmanager.filelist.tpl</code> die Datei-Übersicht, und die Datei
<span class="tag-box invisible">
    <span class="inline-tag">Template-Dateien!dlmanager.filedetails.tpl</span>
</span>
<code>dlmanager.filedetails.tpl</code> regelt die Ausgabe der Download-Seite einer Datei.</p>

<p>Leider sind alle drei Smarty-Dateien nur teilweise vom PHP-Code des
Plugins losgelöst. Ein Großteil der HTML-Darstellungen wird nach wie vor
über das Plugin ausgegeben und kann nicht mittels Smarty angepasst
werden. Aufgrund der hohen Vermischung von Smarty- und PHP-Variablen ist
eine Dokumentation der zur Verfügung stehenden Variablen an dieser Stelle
zu komplex - bitte schauen Sie sich die bestehenden Dateien an, um die
Verwendung der Variablen nachzuvollziehen.</p>

<p>Derzeit verfügt das Plugin über keinen aktiven Entwickler, es wäre für
die Zukunft jedoch schön, den PHP-Code des Plugins etwas zu entschlacken,
um neue Features leichter einbauen zu können. Sollten Sie sich angespornt
fühlen, dem Plugin etwas Gutes zu tun, melden Sie sich bitte im
Serendipity-Forum.</p>

<article id="XU" class="subsub">

<header>
    <h4 class="subarticle" id="datenbanktabellen-4">Datenbanktabellen</h4>
</header>

<p>
<span class="tag-box invisible">
    <span class="inline-tag">Datenbank-Tabellen!serendipity_dma_downloadmanager_files</span>
</span>
Die Datenbanktabelle <code>serendipity_dma_downloadmanager_files</code> enthält
Verweise zu den im Downloadmanager eingebundenen Dateien:
</p>

<p class="desc sql-field-group">
    <code class="item sql-field">id</code> enthält eine fortlaufende, eindeutige ID einer Datei.
    <code class="item sql-field">catid</code> enthält die einer Datei zugeordnete Kategorie.
    <code class="item sql-field">timestamp</code> enthält das Hochladedatum der Datei.
    <code class="item sql-field">systemfilename</code> enthält den Dateinamen.
    <code class="item sql-field">realfilename</code> enthält den Dateinamen mitsamt seines Pfads.
    <code class="item sql-field">description</code> enthält die Beschreibung der Datei.
    <code class="item sql-field">filesize</code> enthält die Dateigröße (in Bytes).
    <code class="item sql-field">dlcount</code> enthält die bisherige Anzahl der Downloads dieser Datei.
</p>

<p>
<span class="tag-box invisible">
    <span class="inline-tag">Datenbank-Tabellen!serendipity_dma_downloadmanager_categories</span>
</span>
In der Tabelle <code>serendipity_dma_downloadmanager_categories</code> werden die
Kategorien des Downloadmanagers (in
Nested-Set-Struktur [*]
<span class="footnote"><i class="fa fa-info-circle"></i> Siehe <a href="http://www.dbazine.com/oracle/or-articles/tropashko4" target="_blank">http://www.dbazine.com/oracle/or-articles/tropashko4</a></span><!-- footnote -->) gespeichert:</p>

<p class="desc sql-field-group">
    <code class="item sql-field">node_id</code> enthält die ID der Kategorie.
    <code class="item sql-field">root_id</code> enthält die ID einer etwaigen Oberkategorie.
    <code class="item sql-field">payload</code> enthält den Namen der Kategorie.
    <code class="item sql-field">lft</code> enthält die ID der vorigen Kategorie.
    <code class="item sql-field">rgt</code> enthält die ID der nächsten Kategorie.
    <code class="item sql-field">hidden</code> gibt an, ob die Kategorie derzeit versteckt wird.
</p>

</article>

</section><!-- section.sub end -->

<section id="serendipity_event_externalphp" class="sub">
<span class="u-toc">6.3.12 - Externe PHP-Anwendung: serendipity_event_externalphp</span>

<h3 class="subsection" id="externe-php-anwendungserendipity_event_externalphp">Externe PHP-Anwendung<br>serendipity_event_externalphp</h3>

<p class="tagging invisible">
<span class="tag-box invisible">
    <span class="inline-tag">Plugins!Externe PHP-Anwendung</span>
    <span class="inline-tag">Plugins!serendipity_event_externalphp</span>
</span>
</p>

<p class="tagging invisible">
<span class="tag-box invisible">
    <span class="inline-tag">Fremde PHP-Anwendungen einbinden</span>
    <span class="inline-tag">Code-Include</span>
    <span class="inline-tag">Include</span>
</span>
</p>

<p>Oft werden Sie sich wünschen, Ihr Blog mit anderen, externen
PHP-Anwendungen zu erweitern. Serendipity kann nicht alles, und gerade
bei der Einbindung von Bildergalerien möchten viele Blog-Betreiber gerne
ihr liebgewonnenes XYZ-Script einsetzen.</p>

<p>Serendipity versteht sich als ein Framework, das sowohl die Einbindung in
andere Systeme erleichtern, als auch andere Systeme einbinden können
soll. Viele Möglichkeiten der Einbindung eröffnen sich durch die
geschickte Anwendung von Smarty-Templating (siehe Seite
<span class="pageref"><a href="#Smarty-Templates">Smarty-Templates</a></span>)
oder von eigenen Ereignis-Plugins (siehe Seite
<span class="pageref"><a href="#pluginapi">pluginapi</a></span>).</p>

<p>Wem dies zu komplex ist, der kann mit dem kleinen Plugin
<em>Externe PHP-Anwendung</em> ein PHP-Script
<em>includen</em> [*]
<span class="footnote"><i class="fa fa-info-circle"></i> Der Fachterminus <em>include</em> bezeichnet ein
PHP-Konstrukt, das eine Datei mit PHP-Anweisungen aus einem anderen
Script heraus einlesen und interpretieren kann.</span><!-- footnote -->. Das Plugin darf nur von
Administratoren konfiguriert werden, da die Einbindung fremder
PHP-Anwendungen potenziell Sicherheitslücken öffnen kann, um beliebigen
Code von Serendipity auszuführen. Benutzen Sie es daher mit Vorsicht und
binden Sie nur vertrauenswürdige PHP-Anwendungen ein!</p>


<p>Das Ziel des Plugins ist, dass Sie bei dem Aufruf einer konfigurierbaren
URL die Inhalte eines fremden PHP-Scripts sehen können. Die Ausgabe
dieses Scripts wird im Inhaltsbereich angezeigt. PHP-Anwendungen wie
Counter-Scripte oder Dinge, die in der Seitenleiste angezeigt werden
sollen, sind daher für dieses Plugin nicht geeignet und müssen
stattdessen eher über die oben genannten Alternativen eingebunden werden.
Scripte wie eine Bildergalerie, eine Google-Maps-Unterseite oder alle
anderen Anwendungen mit eigener Ausgabe, die im Serendipity-Layout
erscheinen sollen, sind Anwendungsziel dieses Plugins.</p>

<p>Wenn Sie das Plugin installiert haben, können Sie in der Konfiguration
folgende Eigenschaften festlegen:</p>

<p class="desc">
<span class="item mbold">Permalink</span><!-- menuitem -->
<span class="desc-info">Globaler Permalink, um die Ausgabe des Plugins im Frontend sehen zu
können. Details siehe Seite
<span class="pageref"><a href="#Standardpluginkonfiguration-Permalink">Standardpluginkonfiguration-Permalink</a></span>.</span>
</p>

<p class="desc">
<span class="item mbold">URL-Titel der Seite</span><!-- menuitem -->
<span class="desc-info">Globale Variable, die einen alternativen Permalink zur Ausgabe des
Plugins im Frontend bereitstellt. Details siehe Seite
<span class="pageref"><a href="#Standardpluginkonfiguration-Pagetitle">Standardpluginkonfiguration-Pagetitle</a></span>.</span>
</p>

<p class="desc">
<span class="item mbold">Einzubindende Datei</span><!-- menuitem -->
<span class="desc-info">
    <span class="box">
        Dieses wichtige Feld darf nur von Administratoren ausgefüllt werden. Sie
        müssen hier den vollständigen Dateipfad zu der externen PHP-Anwendung
        eintragen, wie beispielsweise
        <code>/var/www/example.com/php_gallery/include.php</code>. An dieser Stelle
        dürfen Sie keine URL eintragen, da PHP-Includes aus Sicherheitsgründen
        nur aus Dateien auf demselben Server ausgeführt werden sollten. Wenn Sie den
        Inhalt einer fremden URL einbinden wollen, sollten Sie sich lieber das
        Plugin <em>WrapURL</em> (siehe Seite <span class="pageref"><a href="#wrapurl">wrapurl</a></span>) ansehen.
    </span>

    <span class="box">
        Es ist sehr wichtig, dass die fremde PHP-Anwendung sich an folgende
        Richtlinien hält: Sie sollte keine HTML Header und Footer setzen (da dies
        Serendipity bereits erledigt), sollte bestehende Datenbankverbindungen
        nicht kappen, und wenn sie spezielle Namensräume verwendet, muss sie darauf
        achten, die Variablen gegebenenfalls per <code>$GLOBALS[...]</code> anzusprechen. Das
        PHP-Include wird von Serendipity innerhalb einer Objektmethode
        ausgeführt und verfügt daher nicht über den üblichen globalen
        Namensraum.
    </span>
</span>
</p>

<p class="desc">
<span class="item mbold">Als Artikel formatieren</span><!-- menuitem -->
<span class="desc-info">Gibt an, ob die Ausgaben des Plugins wie ein Blog-Eintrag dargestellt
werden sollen. Details siehe Seite
<span class="pageref"><a href="#Standardpluginkonfiguration-Articleformat">Standardpluginkonfiguration-Articleformat</a></span>.</span>
</p>

<p>&nbsp;</p><!-- separator -->

<p>Sobald Sie das Plugin entsprechend konfiguriert haben, können Sie die
Ausgabe unter dem von Ihnen konfigurierten Permalink aufrufen und in
Ihrem Blog über einen Seitenleisten-HTML-Klotz oder Ähnliches
verlinken.</p>

</section><!-- section.sub end -->

<section id="serendipity_event_findmore" class="sub">
<span class="u-toc">6.3.13 - Show links to services like<br>Digg, Technorati, del.icio.us etc.<br>related to your entry: serendipity_event_findmore</span>

<h3 class="subsection" id="show-links-to-services-like-digg-technorati-del-icio-us-etc-rela">Show links to services like Digg, Technorati, del.icio.us etc. related to your entry<br>serendipity_event_findmore</h3>

<p class="tagging invisible">
<span class="tag-box invisible">
    <span class="inline-tag">Plugins!Show links to services like Digg, Technorati, del.icio.us etc.</span>
    <span class="inline-tag">Plugins!serendipity_event_findmore</span>
</span>
<span class="label invisible" id="findmore">findmore</span>
<span class="tag-box invisible">
    <span class="inline-tag">Social Web</span>
    <span class="inline-tag">Digg</span>
    <span class="inline-tag">Technorati</span>
    <span class="inline-tag">del.icio.us</span>
    <span class="inline-tag">Webservices</span>
    <span class="inline-tag">Community</span>
</span>
</p>

<p>Ein ganz wesentlicher Faktor von Blogs ist deren Popularität und
Vernetzung untereinander. Durch die gegenseitige Verlinkung werden Blogs
erst allgemein bekannt, und dies ist letztlich ausschlaggebend für die
hohe Relevanz von Blog-Artikeln in Suchmaschinen wie Google.</p>

<p class="tagging invisible">
<span class="tag-box invisible">
    <span class="inline-tag">Blogosphäre</span>
</span>
</p>

<p>Durch die Entstehung zahlloser Blogs wurde es im Laufe der
Zeit immer schwieriger, einen Überblick über die Themen der <em>Blogosphäre</em> zu
behalten. Welche Artikel werden gerade heiß diskutiert, welche Themen sind
in Blogs angesagt? Dieser Fragestellung nahmen sich mehrere Webservices
an, die Blogs durchsuchen und mittels Automatismen analysieren. Aber auch
durch Webservice-Communities wie <code>http://del.icio.us</code> wurde es
schnell populär, beliebte Links zentral zu verwalten. Ein Leser kann
nun einen interessanten Blog-Artikel als öffentliches Lesezeichen speichern,
auf das die Mitglieder der Community Zugriff haben. Wenn diese Mitglieder
einen Link auch informativ finden, übernehmen sie ihn ebenfalls als eigenes
Lesezeichen, markieren oder bewerten ihn. So entsteht schnell eine qualitative
und quantitative Bewertung aktueller Blog-Artikel. Übersichtsseiten der
Social-Web-Communities stellen die populärsten Blog-Artikel übersichtlich
dar und erhöhen so den Andrang auf beliebte Blogs noch weiter.</p>

<p>Die Teilnahme an so einer Community ist vergleichsweise einfach: einen
Account erstellen, Browser-Plugins installieren oder über die jeweilige
Webseite selbst die Lesezeichen mit anderen Benutzern teilen. Weitaus
schwerer ist es, in der Community seine eigenen Blog-Artikel populär zu
machen.</p>

<p>Damit das gelingt, muss man mehrere Dinge tun. Das Allerwichtigste ist,
dass Sie für die Allgemeinheit oder ein Fachpublikum interessante
Blog-Artikel verfassen, die Ihren Besuchern einen Anreiz bieten, einen
Artikel überhaupt zu "bewerten" oder zu "empfehlen". Sobald Sie
willige Besucher auf sich aufmerksam gemacht haben, müssen Sie diesen nun
eine Möglichkeit bieten, Ihren Blog-Artikel in der jeweiligen
Web-Community zu bewerten.</p>

<p>An dieser Stelle kommt das Plugin <em>Show links to services like Digg
etc.</em> zum Tragen. Dieses bietet eine Einbindung fast aller verfügbaren
Link-Services, so dass Sie unterhalb jedes Blog-Artikels einen kleinen
Button des jeweiligen Services finden, der Ihre Besucher dorthin führt
und Ihre Seite in der Community verbreitet. Grundsätzlich benutzen die
meisten aktiven Besucher zwar ihre eigenen Browser-Tools zu diesem Zweck,
aber durch Ihre Einbindung zu diesen Services motivieren Sie einen
Besucher stärker, sich in der Community zu beteiligen.</p>

<p>Da es mittlerweile eine fast unüberschaubare Anzahl an Link-Communities
gibt, bietet das Plugin für jeden Dienst einen einzelnen Button an.
Folgende Services sind dabei standardmäßig enthalten: Del.icio.us, Digg,
Bloglines, Technorati, Fark, MyWeb2, Furl, Reddit, BLinklist, Spurl,
Newsvine, Simpy, Blogmarks, Wists, ma.gnolia, Mister Wong, addthis.</p>

<p>Es ist empfehlenswert, dass Sie in dieser großen Liste eine eigene
Einschränkung bzw. Gewichtung vornehmen, um so nur die Link-Communities
einzubinden, die für Ihre Zwecke Sinn machen. Bei deutschen Blogs sind
beispielsweise Mister Wong, Digg und Del.icio.us sehr populär.
Überwältigen Sie Ihre Besucher daher nicht unbedingt mit einer riesigen Liste von
Verlinkungsmöglichkeiten, sondern überzeugen Sie durch eine sinnvolle
Einschränkung. Schauen Sie sich ruhig jeden Link-Service an, damit Sie
entscheiden können, welche Ihnen am meisten zusagen.</p>

<p>Sobald Sie das Plugin installiert haben, finden Sie die erwähnte Leiste
an Link-Services unterhalb jedes Beitrags. Ein Klick auf einen Button
ruft dabei die jeweilige Community auf und fügt dort einen Link zu Ihrem
ursprünglichen Blog-Artikel mitsamt dem Titel des Beitrags hinzu.</p>

<p>Die eingebundenen Linkservices werden in einem HTML-Container mit der
CSS-Klasse <code>.serendipity_findmore</code> ausgegeben. Der Inhalt der Leiste
richtet sich nach der Template-Datei
<span class="tag-box invisible">
    <span class="inline-tag">Template-Dateien!plugin_findmore.tpl</span>
</span>
<code>plugin_findmore.tpl</code>, die sich innerhalb des
Plugin-Verzeichnisses <code>plugins/serendipity_event_findmore/</code> befindet.</p>

<p>In dieser Template-Datei sind sämtliche Link-Services übersichtlich
untereinander aufgeführt. Jeder Linkservice lässt sich meist gleichartig
einbinden und unterscheidet sich nur in der Benennung von Variablen.
Diese Variablen werden mithilfe der Smarty-Platzhalter
<span class="tag-box invisible">
    <span class="inline-tag">Template-Variablen!\$entrydata</span>
</span>
<code class="smarty">{$entrydata.*}</code> später durch die Inhalte Ihres jeweiligen
Blog-Artikels ersetzt. Folgende Smarty-Variablen stehen zur Verfügung:</p>

<p class="desc citem-desc">
<span class="tag-box invisible">
    <span class="inline-tag">Template-Variablen!\$entrydata.url</span>
</span>
<code class="item smarty">{$entrydata.url}</code>
<span class="desc-info">Enthält die vollständige URL des Blog-Artikels. Wenn eine URL an einen
Linkservice übermittelt wird, müssen etwaige Sonderzeichen in der URL
über einen Zusatz wie <code class="smarty">{$entrydata.title|escape:url}</code> eingebunden
werden (siehe Kapitel <span class="reference">Smarty-Templates</span> ab Seite
<span class="pageref"><a href="#Smarty-Templates">Smarty-Templates</a></span>).</span>
</p>

<p class="desc citem-desc">
<span class="tag-box invisible">
    <span class="inline-tag">Template-Variablen!\$entrydata.title</span>
</span>
<code class="item smarty">{$entrydata.title}</code>
<span class="desc-info">Enthält den Titel des Blog-Artikels. Diese Variable wird im Template
meist über den Befehl <code class="smarty">{$entrydata.title|escape}</code> eingebunden. Das
zusätzliche <code>|escape</code> sorgt dafür, dass Sonderzeichen im Artikeltitel
durch HTML-Sonderzeichen ersetzt werden. <code>|escape:url</code> sorgt im
Unterschied dazu dafür, dass Sonderzeichen durch URL-Sonderzeichen ersetzt
werden.</span>
</p>

<p class="desc citem-desc">
<span class="tag-box invisible">
    <span class="inline-tag">Template-Variablen!\$entrydata.path</span>
</span>
<code class="item smarty">{$entrydata.path}</code>
<span class="desc-info">Enthält den HTTP-Pfad zu dem Bildverzeichnis des Plugins. Dort liegen für
fast alle Link-Communities die jeweiligen Logos, damit sie in der
Linkleiste grafisch eingebunden werden können.</span>
</p>

<p>Die Datei <code>plugin_findmore.tpl</code> können Sie nach Belieben anpassen,
um beispielsweise überflüssige Services zu entfernen oder auch neue
hinzuzufügen. Eine geänderte Template-Datei sollten Sie dabei möglichst
in das Verzeichnis Ihres gewählten Templates kopieren, damit Sie bei
einem Update des Plugins Ihre Anpassungen nicht verlieren.</p>

<p>Über die Konfiguration des Plugins können Sie komfortabel einstellen, welche
Links zu welchen Services Sie darstellen möchten, falls das Bearbeiten der
Template-Option für Sie zu umständlich ist.</p>

<p>Weiterhin bietet das Plugin folgende Konfigurationsoptionen:</p>

<p class="desc">
<span class="item mbold">Relative path to Findmore images</span><!-- menuitem -->
<span class="desc-info">In diesem Eingabefeld müssen Sie den vollen HTTP-Pfad eintragen, aus dem
das Plugin die Logo-Grafiken für den jeweiligen Linkservice über die
Template-Datei <code>plugin_findmore.tpl</code> bezieht. Standardmäßig sollte
dieser Pfad bereits korrekt auf Ihr Plugin-Verzeichnis zeigen.</span>
</p>

<p class="desc">
<span class="item mbold">Display DiggCount badge</span><!-- menuitem -->
<span class="desc-info">
    <span class="box">
        Der Link-Dienst <code>Digg</code> bietet ein kleines JavaScript an, mit dem Ihre
        Besucher direkt sehen können, wie oft die Links in Ihrem Blog-Artikel von
        Teilnehmern der Digg-Community positiv bewertet wurden. Diese kleine
        Anzeige mit einer Zahl für den jeweils bewerteten Link nennt sich
        <span class="tag-box invisible">
            <span class="inline-tag">DiggCount badge</span>
        </span>
        <em>DiggCount badge</em>.
    </span>

    <span class="box">
        Das Plugin analysiert bei aktivierter Option <em>DiggCount badge</em>
        sämtliche Links zu Beiträgen auf <code>digg.com</code>, die Sie in Ihrem Artikel
        platziert haben. Sollten Sie die <em>Diggs</em> zu Ihrem eigenen Artikel
        anzeigen wollen, müssen Sie manuell Ihren eigenen Blog-Artikel im
        Artikeltext verlinken, damit das Plugin diesen in die Ausgabe einbeziehen
        kann. Für jeden Link, der in Ihrem Blog-Artikel zu <code>digg.com</code> zeigt,
        stellt das Plugin eine eigenständige Zählergrafik dar.
    </span>

    <span class="box">
        Wenn Sie die Option aktivieren, werden die Digg-Grafiken und das
        JavaScript in einem eigenständigen HTML-Container mit der CSS-Klasse
        <code>.serendipity_diggcount</code> angezeigt.
    </span>
</span>
</p>

<p class="desc">
<span class="item mbold">DiggCount placement</span><!-- menuitem -->
<span class="desc-info">Wenn Sie <em>DiggCount badge</em> aktiviert haben, bestimmen Sie mit
der Option <span class="mbold">DiggCount placement</span>, wo dieser Zähler angezeigt werden
soll. <span class="mbold">Before entry</span> bindet den Zähler direkt am Anfang Ihres
Blog-Artikels ein, <span class="mbold">After entry</span> am Ende des Artikels und <span class="mbold">After
findmore links</span> nach der Linkleiste des Plugins.</span>
</p>

<p>&nbsp;</p><!-- separator -->

<p>Template-Profis haben möglicherweise bereits bemerkt, dass die Linkleiste
der <code>plugin_findmore.tpl</code>-Template-Datei recht simpel gestrickt ist
und lediglich die URL und den Titel eines Artikels enthalten muss. Diese
Informationen können Sie daher auch ganz einfach in die Template-Datei
<code>entries.tpl</code> einfügen und benötigen dieses Plugin höchstens noch
für die Einbindung der <em>DiggCount badge</em>.</p>

<p>Der Vorteil der Einbindung in die <code>entries.tpl</code>-Datei besteht in
einer höheren Ausführungsgeschwindigkeit der Templates, da nicht noch
eine eigenständige Datei analysiert werden muss. Der Einfachkeit halber
können Sie den Inhalt der <code>plugin_findmore.tpl</code>-Datei per Kopieren &amp; Einfügen
in die <code>entries.tpl</code>-Datei übernehmen und den
HTML-Container <code>&lt;div class="serendipity_findmore"&gt;</code> beliebig
innerhalb der Smarty-Foreach-Schleife platzieren, in der ein Eintrag
dargestellt wird. Sie müssen danach nur noch die Variable
<code>$entrydata.url</code> mit <code>$entry.rdf_ident</code> ersetzen,
<code>$entrydata.title</code> mit <code>$entry.title</code> und anstelle von
<code>$entry.path</code> einen gültigen HTTP-Pfad zu den Linkservice-Bildern
einsetzen.</p>

</section><!-- section.sub end -->

<section id="serendipity_event_forum" class="sub">
<span class="u-toc">6.3.14 - Diskussionsforum/phpBB-Kommentare: serendipity_event_forum</span>

<h3 class="subsection" id="diskussionsforum-phpbb-kommentareserendipity_event_forum">Diskussionsforum/phpBB-Kommentare<br>serendipity_event_forum</h3>

<p class="tagging invisible">
<span class="tag-box invisible">
    <span class="inline-tag">Foren</span>
    <span class="inline-tag">Boards</span>
    <span class="inline-tag">phpBB</span>
    <span class="inline-tag">Plugins!Diskussionsforum/phpBB-Kommentare</span>
    <span class="inline-tag">Plugins!serendipity_event_forum</span>
</span>
</p>

<p>Diskussionen in Blogs finden üblicherweise thematisch isoliert in den
jeweiligen Blog-Artikeln statt. Im Gegensatz zu einem Diskussionsforum
mit offenen Themenbereichen dient ein Blog üblicherweise der
Einzelberichterstattung. Anstatt einer Diskussion gleichberechtigter
Teilnehmer stellt ein Blog-Artikel meist die Meinung des jeweiligen
Redakteurs dar, zu der sich Besucher dann äußern können.</p>

<p>Wenn ein Besucher eines Blogs ein Thema ansprechen und zur Diskussion
bringen möchte, wäre dies in einem Blog-Artikel fehl am Platz. Daher
stellt das Plugin <em>Diskussionsforum</em> eine Plattform innerhalb des
Blogs bereit, wo sich Besucher unabhängig von den Blog-Artikeln
austauschen können.</p>

<p>Generell können Sie etwas Derartiges auch durch die Installation einer
separaten Foren-Software wie phpBB, FUDForum oder anderer auf Ihrem
Webserver anbieten und in Ihrem Blog einfach einen Link auf eine solche
separate Anwendung setzen.</p>

<p>Wenn Sie aber nur ein kleines Forum betreiben und dafür
keine zweite Anwendung installieren und warten möchten, bietet sich jedoch das
Foren-Plugin an. Dieses Plugin integriert sich in Serendipity und
kann auch die Benutzerdatenbank Serendipitys weiterverwenden, um den
Zugang gegebenenfalls nur auf registrierte Benutzer zu beschränken.</p>

<p>Das Forum lässt sich nach der Installation über
<code>http://www.example.com/serendipity/index.php?serendipity[subpage]=forum</code>
aufrufen. Im Gegensatz zu anderen Plugins bietet es keinen eigenständigen
Permalink (siehe Seite <span class="pageref"><a href="#Standardpluginkonfiguration-Permalink">Standardpluginkonfiguration-Permalink</a></span>)
an, Sie können höchstens den Wert <em>forum</em> in der URL-Variable frei
bestimmen.</p>

<p>Im Frontend des Forums können Besucher neue Themen erstellen und auf
bestehende Themen antworten. Die Bedienung erfolgt dabei wie in jeder
Foren-Software: Erst wählt der Besucher in der Themenübersicht einen
Bereich aus und kann dort die enthaltenen Beiträge ansehen. Über den
Button <span class="mbold">New Thread</span> kann der Besucher einen neuen Beitrag beginnen
und dort eine Überschrift und seinen Beitrag erstellen. Abhängig von der
Konfiguration des Foren-Plugins können Besucher oder Administratoren auch
Dateianhänge zu einem neuen Thema in das Forum einstellen.</p>

<p>Zu jedem Beitrag kann ein Besucher (sofern er einen Redakteurs-Login zum
Blog besitzt) die E-Mail-Benachrichtigung zu neuen Themen aktivieren.
Administratoren können zudem direkt im Frontend Beiträge überarbeiten,
löschen oder auch ganze Themenzweige sperren.</p>

<p>Das Backend des Plugins zur Einrichtung neuer Unterforen kann ein
Redakteur über das Serendipity-Backend erreichen. Dort befindet sich der
Menüpunkt <span class="mbold">Aktivität <span class="icon arrow-right">→</span> Diskussions-Forum/phpBB-Kommentare</span>. In
diesem Bereich werden alle bestehenden Foren aufgelistet, das neue
Unterforum kann über den Button <span class="mbold">Neues Forum hinzufügen</span>
eingerichtet werden. Bestehende Unterforen können durch einen Klick auf
den jeweiligen Namen bearbeitet werden.</p>

<p>Unabhängig von diesem eigenständigen Forum bietet das Plugin ein weiteres
Feature an, um Ihr Blog mit einer phpBB-Foreninstallation zu verbinden.
Mit Hilfe dieses Features können Sie die Kommentare zu Blog-Artikeln in
einem unabhängigen Forum verwalten und somit von Serendipity loslösen.
Dies macht besonders dann Sinn, wenn Sie über die von Serendipity
angebotenen Kommentarmöglichkeiten hinaus oft besonders lange
Diskussionen zu Artikeln führen möchten. Auch wenn Sie bereits ein
phpBB-Forum mit bestehenden Diskussionen betreiben, können Sie dank des
Plugins Serendipity als eine Art News-System einsetzen und sämtliche
Diskussionen wie früher über phpBB führen.</p>

<p>Die Konfiguration des Plugins bietet folgende Optionen:</p>

<p class="desc">
<span class="item mbold">Seitentitel</span><!-- menuitem -->
<span class="desc-info">Der <span class="mbold">Seitentitel</span> des Forums wird im Inhaltsbereich dargestellt und
kann individuell festgelegt werden.</span>
</p>

<p class="desc">
<span class="item mbold">Kopfzeile/Beschreibung</span><!-- menuitem -->
<span class="desc-info">Unterhalb des Seitentitels können Sie eine <span class="mbold">Kopfzeile/Beschreibung</span>
definieren.</span>
</p>

<p class="desc">
<span class="item mbold">Statische URL</span><!-- menuitem -->
<span class="desc-info">
    <span class="box">
        Hier können Sie ein einfaches Wort eintragen, das für die URL verwendet
        wird, über die Sie das Forum aufrufen können. Standardmäßig ist hier
        <em>forum</em> eingetragen, und die URL für das Forum lautet somit
        <code>http://www.example.com/serendipity/index.php?seren-dipity[subpage]=forum</code>.
    </span>

    <span class="box">
        Das Forum müssen Sie selbständig über einen HTML-Klotz oder das
        Bearbeiten Ihres Templates in das Blog einfügen, damit Ihre Besucher
        dorthin finden können. Achten Sie also darauf, den Link dorthin immer
        übereinstimmend mit der Konfiguration anzulegen. Das hier eingetragene
        Wort darf keine Sonder- und Leerzeichen enthalten.
    </span>
</span>
</p>

<p class="desc">
<span class="item mbold">Enable phpBB mirroring</span><!-- menuitem -->
<span class="desc-info">
    <span class="box">
        Anstatt Kommentare zu Blog-Artikeln durch Serendipity zu verwalten,
        möchten manche Blog-Betreiber lieber ein spezialisiertes Forensystem zur
        Diskussionsführung benutzen. Solche Forensysteme haben oft einfacher
        strukturierte Kommentarmöglichkeiten und sind zugänglicher für Benutzer,
        die sich mit Foren bereits auskennen, Blogs eher als redaktionelles
        System ansehen und ihre Diskussionen im "liebgewonnenen" System führen
        wollen.
    </span>

    <span class="box">
        Wenn Sie die Option <span class="mbold">Enable phpBB mirroring</span> aktivieren, wird das Plugin
        sämtliche Kommentare, die im Blog angezeigt werden, aus einer bestehenden
        phpBB 2.x- oder 3.x-Installation (je nach gewähltem Wert dieser Option) beziehen. Wenn
        Sie neue Kommentare im Blog eintragen, werden diese automatisch in die
        phpBB-Forendatenbank eingefügt. Für Ihre Besucher erscheinen alle Kommentare
        also sowohl im Forum als auch im Blog, werden aber nur an der zentralen Stelle im
        Forum tatsächlich verwaltet. Auch wenn Sie im Blog einen neuen Artikel erstellen,
        wird das Plugin Ihren Artikel automatisch im Forum einstellen, damit er dort
        diskutiert werden kann.
    </span>

    <span class="box">
        Damit das Plugin diesen Abgleich durchführen kann, muss es auf die
        Datenbank von phpBB zugreifen können. Dazu dienen die
        Konfigurationsfelder <code>database username, password, server, name</code> und
        <code>table prefix</code>. Tragen Sie hier Daten einer bestehenden
        phpBB-Konfiguration ein. Sollten Sie phpBB noch nicht auf Ihrem Webserver
        installiert haben, müssen Sie dies nachholen.[*]
        <span class="footnote"><i class="fa fa-info-circle"></i> Die
        Installationsanweisungen finden Sie unter
        <a href="http://www.phpbb.com/" target="_blank">http://www.phpbb.com/</a>.</span><!-- footnote -->
    </span>

    <span class="box">
        Ein phpBB-Forum kann Kommentare immer erst in einem Themenbereich (dem
        <span class="mbold">forum</span>) anlegen. Diese Themenbereiche legen Sie in der
        phpBB-Installation an, jedes Forum erhält eine eigene ID. Das
        offizielle Serendipity-Forum wird beispielsweise mit phpBB betrieben, und
        der deutsche Bereich hat die ID <code>10</code>
        (<code>http://board.s9y.org/viewforum.php?f=10</code>). Diese ID des Zielforums
        müssen Sie in der Konfiguration des Plugins im Feld <span class="mbold">(optional)
        phpBB target forum ID</span> eintragen.
    </span>

    <span class="box">
        Durch die Abgrenzung des Forums ist zudem gewährleistet, dass Sie in
        Ihrem phpBB-Forum auch andere, vom Blog unabhängige Bereiche anlegen
        können.
    </span>

    <span class="box">
        Wenn Sie einen Artikel im Blog erstellen, wird dieser mit der User-ID
        eingetragen, die Sie im Feld <span class="mbold">(optional) phpBB target poster ID</span>
        konfiguriert haben. Diese User-ID muss einer im Forum bestehenden ID
        entsprechen, am besten legen Sie also im Forum einen eigenständigen
        Benutzer an, der den Namen Ihres Blogs trägt. So können die Forennutzer
        einfach herausfinden, welche Artikel "das Blog" erstellt hat.
    </span>

    <span class="box">
        Sämtliche Kommentare, die vom Blog aus erstellt werden, trägt das Plugin
        als anonyme Benutzer mit dem im Blog eingetragenen Benutzernamen direkt
        in die Datenbank ein. So kann zwar ein Kommentar nicht eindeutig einem
        bestehenden Forennutzer zugeordnet werden, aber durch die Beibehaltung
        der Benutzernamen bleibt dies eindeutig. Wenn ein Benutzer direkt über
        das Forum anstatt über das Blog kommentiert, kann die korrekte
        Benutzerzuordnung selbstverständlich beibehalten werden.
    </span>
</span>
</p>

<p class="desc">
<span class="item mbold">Absoluter Server-Pfad zum uploads-Verzeichnis</span><!-- menuitem -->
<span class="desc-info">Hier tragen Sie den absoluten Server-Pfad zu dem Verzeichnis ein, in dem
über das Forum hochgeladene Dateien gespeichert werden.</span>
</p>

<p class="desc">
<span class="item mbold">Pfad zu dem Plugin</span><!-- menuitem -->
<span class="desc-info">
    <span class="box">
        Das Foren-Plugin bringt einige Grafikdateien mit, beispielsweise für
        die Buttons zur Erstellung neuer Beiträge. Damit diese Grafiken angezeigt
        werden können, muss das Plugin den vollständigen HTTP-Pfad hinter der
        Domainangabe kennen.
    </span>

    <span class="box">
        Standardmäßig ist hier der korrekte Pfad voreingetragen, er sollte daher
        nur geändert werden, wenn Sie Ihre Plugin-Verzeichnisse umbenannt haben.
    </span>
</span>
</p>

<p class="desc">
<span class="item mbold">Datumsformat</span><!-- menuitem -->
<span class="desc-info">Das <span class="mbold">Datumsformat</span> bestimmt, mit welcher Formatierung das Datum zu
Diskussionsbeiträgen dargestellt wird. Standardmäßig ist hier die
englische Syntax eingetragen, die deutsche Datumsformatierung wäre
<code>d.m.Y</code>.[*]
<span class="footnote"><i class="fa fa-info-circle"></i> Die zur Verfügung stehenden Variablen sind auf
<code>http://de.php.net/date</code> aufgeführt.</span><!-- footnote -->
</span>
</p>

<p class="desc">
<span class="item mbold">Zeitformatierung</span><!-- menuitem -->
<span class="desc-info">Analog zum Datumsformat tragen Sie hier das Format ein, mit dem eine
Uhrzeit zu Diskussionsbeiträgen angezeigt werden soll.</span>
</p>

<p class="desc">
<span class="item mbold">Einträge pro Seite</span><!-- menuitem -->
<span class="desc-info">Die <span class="mbold">Einträge pro Seite</span> bestimmen, wie viele Diskussionsbeiträge in
Übersichtsseiten angezeigt werden. Weitere Seiten sind blätterbar.</span>
</p>

<p class="desc">
<span class="item mbold">Hintergrundfarbe der Titelzeilen, 1. und 2. Hintergrundfarbe, Farbe für Schriftzüge</span><!-- menuitem -->
<span class="desc-info">Über diese Konfigurationsfelder können Sie mehrere Farbeinstellungen
vornehmen, die das Plugin zur Darstellung des Forums benutzt. Die Farben
müssen dabei im HTML-typischen RGB-Format (Hex #RRGGBB) eingetragen
werden.</span>
</p>

<p class="desc">
<span class="item mbold">Spamblock-Plugin benutzen</span><!-- menuitem -->
<span class="desc-info">Um Spam zu verhindern, können alle Diskussionsbeiträge durch das
Anti-Spam-Plugin behandelt werden. Dies führt zum Beispiel auch dazu,
dass Captchas (siehe Seite <span class="pageref"><a href="#Captcha">Captcha</a></span>) für jeden Beitrag
erforderlich sind.</span>
</p>

<p class="desc">
<span class="item mbold">Sollen die Textformatierungs-Plugins benutzt werden</span><!-- menuitem -->
<span class="desc-info">Wenn Sie diese Option aktivieren, können die Diskussionsbeiträge von
Benutzern genauso wie Kommentare zu Blog-Artikeln mit Ihren installierten
Textformatierungs-Plugins (siehe Seite <span class="pageref"><a href="#Textformatierungs-Plugins">Textformatierungs-Plugins</a></span>)
bearbeitet werden.</span>
</p>

<p class="desc">
<span class="item mbold">Textformatierungs-Plugins für unregistrierten User deaktivieren</span><!-- menuitem -->
<span class="desc-info">Das Foren-Plugin kann eingeloggte Redakteure von anonymen Besuchern
unterscheiden. Um unregistrierten Besuchern zu verbieten, zB. Links in
Diskussionsbeiträge einzufügen, können Sie gezielt diesen Besuchern das
Benutzen der Textformatierungs-Plugins verbieten. Dazu müssen Sie die
Option <span class="mbold">Textformatierungs-Plugins für unregistrierten User
deaktivieren</span> auf <em>Ja</em> stellen.</span>
</p>

<p class="desc">
<span class="item mbold">Datei-Upload für registrierte User, Datei-Upload für Gäste</span><!-- menuitem -->
<span class="desc-info">
    <span class="box">
        Bei der Erstellung eines Diskussionsbeitrags können Sie es registrierten
        Benutzern und auch Gästen erlauben, Dateien hochzuladen. Diese Dateien
        werden dem jeweiligen Beitrag angehängt und können von Besuchern des
        Forums heruntergeladen werden. Sinnvoll ist dies, um Ihre Besucher
        beispielsweise Screenshots oder Fotos anhängen zu lassen.
    </span>

    <span class="box">
        Beachten Sie hierbei, dass die Dateien auf Ihrem eigenen Webserver
        gespeichert werden; möglicherweise kann dies von Ihren Besuchern
        missbraucht werden und Ihren Speicherplatz aufbrauchen. Je nach
        Einsatzzweck Ihres Forums kann es also empfehlenswert sein, Gästen keine
        Upload-Möglichkeiten zu erlauben.
    </span>
</span>
</p>

<p class="desc">
<span class="item mbold">Anzahl gleichzeitiger Datei-Uploads, Max. Anzahl Dateien in einem Posting</span><!-- menuitem -->
<span class="desc-info">
    <span class="box">
        Standardmäßig darf ein Forenteilnehmer nur drei Dateien pro
        Diskussionsbeitrag einstellen. Über das Feld <span class="mbold">Max. Anzahl Dateien in
        einem Posting</span> können Sie aber auch mehrere Uploads zulassen.
    </span>

    <span class="box">
        Jede Datei muss dabei vom Besucher einzeln hochgeladen werden, damit Ihr
        Webserver nicht überlastet wird. Über die Option <span class="mbold">Anzahl
        gleichzeitiger Datei-Uploads</span> können Sie jedoch festlegen, dass auch mehr
        als nur eine Datei gleichzeitig hochgeladen werden kann.
    </span>
</span>
</p>

<p class="desc">
<span class="item mbold">Max. Anzahl Datei-Uploads pro User</span><!-- menuitem -->
<span class="desc-info">
    <span class="box">
        Sie können generell beschränken, wie viele Dateien ein Benutzer maximal
        hochladen darf. Nachdem ein Benutzer das Limit erreicht hat, darf er
        keine weiteren Dateien mehr einstellen.
    </span>

    <span class="box">
        Diese Option wirkt ausschließlich für registrierte Benutzer. Da ein Gast
        für das Plugin immer als ein neuer Benutzer gilt, können Uploads für
        Gäste nicht in ihrer Anzahl beschränkt werden. Im Zweifelsfall sollten
        Sie daher die Option <span class="mbold">Datei-Upload für Gäste</span> nicht aktivieren.
    </span>
</span>
</p>

<p class="desc">
<span class="item mbold">Benachrichtigungs-E-Mail: E-Mail-Adresse, Name</span><!-- menuitem -->
<span class="desc-info">
    <span class="box">
        Wenn Ihre Forenteilnehmer die E-Mail-Benachrichtigung aktiviert haben,
        werden sie bei Antworten zu ihren abonnierten Themen via E-Mail
        benachrichtigt. Tragen Sie in die beiden Konfigurationsfelder ein, von
        welcher E-Mail-Adresse diese Benachrichtigungen stammen sollen und wie
        der Absendername lauten soll.
    </span>

    <span class="box">
        Viele Webserver erlauben den E-Mail-Versand nur von den Adressen, für die
        sie freigeschaltet sind, daher können Sie möglicherweise nicht
        jede beliebige E-Mail-Adresse an dieser Stelle eintragen.
    </span>
</span>
</p>

<p class="desc">
<span class="item mbold">Admin benachrichtigen</span><!-- menuitem -->
<span class="desc-info">Wenn Sie die Option <span class="mbold">Admin benachrichtigen</span> aktivieren, erhalten
alle Administratoren des Blogs eine E-Mail, sobald neue Forenbeiträge von
Teilnehmern erstellt wurden.</span>
</p>

<p>Das Foren-Plugin benutzt zur Darstellung der Inhalte weitestgehend
Smarty-Template-Dateien. Diese befinden sich im Unterverzeichnis
<code>plugins/serendipity_event_forum/templates</code>. Die Datei
<span class="tag-box invisible">
    <span class="inline-tag">Template-Dateien!boardlist.tpl</span>
</span>
<code>boardlist.tpl</code> stellt die Forenübersichten dar,
<span class="tag-box invisible">
    <span class="inline-tag">Template-Dateien!threadlist.tpl</span>
</span>
<code>threadlist.tpl</code> die Themenübersichten und
<span class="tag-box invisible">
    <span class="inline-tag">Template-Dateien!postlist.tpl</span>
</span>
<code>postlist.tpl</code> die jeweiligen Beiträge. Die Datei
<span class="tag-box invisible">
    <span class="inline-tag">Template-Dateien!newthread.tpl</span>
</span>
<code>newthread.tpl</code> stellt das Formular zum Erzeugen eines neuen Beitrags dar,
<span class="tag-box invisible">
    <span class="inline-tag">Template-Dateien!editform.tpl</span>
</span>
<code>editform.tpl</code> das Formular zum Bearbeiten eines bestehenden Beitrags und
<span class="tag-box invisible">
    <span class="inline-tag">Template-Dateien!replyform.tpl</span>
</span>
<code>replyform.tpl</code> zum Antworten auf einen Beitrag.
<span class="tag-box invisible">
    <span class="inline-tag">Template-Dateien!deleteform.tpl</span>
</span>
<code>deleteform.tpl</code> dient der Ausgabe zum Löschen von Beiträgen durch Administratoren.</p>

<p>Einige HTML-Codes zur Darstellung von Buttons und Übersichten werden
leider auch in der Plugin-Datei <code>serendipity_event_forum.php</code>
vorgenommen. Daher würde eine Dokumentation der notwendigen Variablen den
Rahmen dieses Buches sprengen. Schauen Sie sich daher bitte zur
Bearbeitung die jeweils bestehenden Dateien an. Der
Administrationsbereich ist vollständig innerhalb des PHP-Codes des
Plugins enthalten und kann derzeit nicht durch Smarty-Template-Dateien angepasst
werden. Das Plugin unterscheidet Forenbenutzer nicht anhand ihrer
Benutzergruppen, sondern behandelt alle registrierten Benutzer
ausschließlich anhand ihres Benutzerranges (Userlevel).</p>

<p>Derzeit verfügt das Plugin über keinen aktiven Entwickler, es wäre für
die Zukunft jedoch schön, den PHP-Code des Plugins etwas zu entschlacken,
um neue Features leichter einbauen zu können. Sollten Sie sich angespornt
fühlen, dem Plugin etwas Gutes zu tun, melden Sie sich bitte im
Serendipity-Forum.</p>

<article id="XU" class="subsub">

<header>
    <h4 class="subarticle" id="datenbanktabellen-3">Datenbanktabellen</h4>
</header>

<p>
<span class="tag-box invisible">
    <span class="inline-tag">Datenbank-Tabellen!serendipity_dma_forum_boards</span>
</span>
In der Datenbanktabelle <code>serendipity_dma_forum_boards</code> werden die
jeweiligen Unterforen gespeichert:</p>

<p class="desc sql-field-group">
    <code class="item sql-field">boardid</code> enthält die ID des jeweiligen Unterforums.
    <code class="item sql-field">name</code> enthält den Namen des Unterforums.
    <code class="item sql-field">description</code> enthält die Beschreibung des Unterforums.
    <code class="item sql-field">sortorder</code> enthält einen numerischen Wert zur Sortierung der Unterforen untereinander.
    <code class="item sql-field">threads</code> enthält die Anzahl der in diesem Unterforum vorhandenen Themen (<em>Threads</em>).
    <code class="item sql-field">posts</code> enthält die Anzahl der in diesem Unterforum geschriebenen Beiträge (<em>Posts</em>).
    <code class="item sql-field">views</code> enthält die Anzahl der Lesezugriffe zu diesem Unterforum.
    <code class="item sql-field">flag</code> gibt an, ob ein Unterforum deaktiviert wurde.
    <code class="item sql-field">lastauthorid</code> enthält die ID des Redakteurs, der zuletzt einen Beitrag verfasst hat.
    <code class="item sql-field">lastauthorname</code> enthält den Namen des Redakteurs, der zuletzt einen Beitrag verfasst hat.
    <code class="item sql-field">lastthreadid</code> enthält die ID des aktuellsten Themas.
    <code class="item sql-field">lastpostid</code> enthält die ID des aktuellsten Beitrags.
    <code class="item sql-field">lastposttime</code> enthält die Uhrzeit des aktuellsten Beitrags.
</p>

<p>
<span class="tag-box invisible">
    <span class="inline-tag">Datenbank-Tabellen!serendipity_dma_forum_threads</span>
</span>
Die Tabelle <code>serendipity_dma_forum_threads</code> speichert die jeweiligen
Themen im Forum:
</p>

<p class="desc sql-field-group">
    <code class="item sql-field">boardid</code> enthält die ID des Unterforums, in dem sich das Thema befindet.
    <code class="item sql-field">threadid</code> enthält eine fortlaufende ID dieses Themas.
    <code class="item sql-field">title</code> enthält den Titel des Themas.
    <code class="item sql-field">replies</code> enthält die Anzahl an Antworten zu dem Thema.
    <code class="item sql-field">views</code> enthält die Anzahl an Lesezugriffen zu diesem Thema.
    <code class="item sql-field">flag</code> gibt an, ob dieser Thread aktiv ist.
    <code class="item sql-field">notifymails</code> enthält eine Liste aller E-Mail-Adressen, die bei Eintreffen eines neuen Beitrags benachrichtigt werden sollen.
    <code class="item sql-field">announce</code> gibt an, ob das Thema eine Ankündigung ist.
    <code class="item sql-field">lastauthorid</code> enthält die ID des Redakteurs, der zuletzt einen Beitrag zu diesem Thema geschrieben hat.
    <code class="item sql-field">lastauthorname</code> enthält den Namen des Redakteurs, der zuletzt einen Beitrag zu diesem Thema geschrieben hat.
    <code class="item sql-field">lastpostid</code> enthält die ID des letzten Beitrags zu dem Thema.
</p>

<p>
<span class="tag-box invisible">
    <span class="inline-tag">Datenbank-Tabellen!serendipity_dma_forum_posts</span>
</span>
Die Artikel werden in der Tabelle <code>serendipity_dma_forum_posts</code>
gespeichert:
</p>

<p class="desc sql-field-group">
    <code class="item sql-field">threadid</code> enthält die ID des zugeordneten Themas.
    <code class="item sql-field">postid</code> enthält die fortlaufende ID des Beitrags.
    <code class="item sql-field">postdate</code> enthält das Erstellungsdatum des Beitrags.
    <code class="item sql-field">title</code> enthält den Titel des Beitrags.
    <code class="item sql-field">message</code> enthält den Inhalt des Beitrags.
    <code class="item sql-field">flag</code> gibt an, ob dieser Beitrag aktiv ist.
    <code class="item sql-field">authorid</code> enthält die ID des erstellenden Redakteurs.
    <code class="item sql-field">authorname</code> enthält den Namen des erstellenden Redakteurs.
    <code class="item sql-field">editcount</code> enthält die Anzahl an Bearbeitungen dieser Nachricht.
</p>

<p>
<span class="tag-box invisible">
    <span class="inline-tag">Datenbank-Tabellen!serendipity_dma_forum_users</span>
</span>
Zusätzliche Foren-Benutzer werden in der Tabelle
<code>serendipity_dma_forum_users</code> gespeichert:</p>

<p class="desc sql-field-group">
    <code class="item sql-field">authorid</code> enthält die ID eines Benutzers.
    <code class="item sql-field">posts</code> enthält die Anzahl an Beiträgen des Benutzers.
    <code class="item sql-field">visits</code> enthält die Anzahl an Besuchen des Benutzers.
    <code class="item sql-field">lastvisit</code> enthält das Datum des letzten Besuchs.
    <code class="item sql-field">lastpost</code> enthält die ID des letzten Beitrags dieses Benutzers.
    <code class="item sql-field">uploadids</code> enthält die IDs der von dem Benutzer hochgeladenen Dateien.
</p>

<p>
<span class="tag-box invisible">
    <span class="inline-tag">Datenbank-Tabellen!serendipity_dma_forum_uploads</span>
</span>
Benutzer können, abhängig von der Konfiguration des Plugins, selbständig Dateien
hochladen. Diese werden in der Datenbanktabelle
<code>serendipity_dma_forum_uploads</code> gespeichert:</p>

<p class="desc sql-field-group">
    <code class="item sql-field">postid</code> enthält die ID des Beitrags, in dem eine Datei eingebunden wurde.
    <code class="item sql-field">authorid</code> enthält die ID des hochladenden Redakteurs.
    <code class="item sql-field">uploadid</code> enthält eine fortlaufende ID für die hochgeladene Datei.
    <code class="item sql-field">uploaddate</code> enthält das Datum, an dem die Datei hochgeladen wurde.
    <code class="item sql-field">filesize</code> enthält die Dateigröße.
    <code class="item sql-field">sysfilename</code> enthält den Dateinamen.
    <code class="item sql-field">realfilename</code> enthält den vollständigen Pfad zur Datei.
    <code class="item sql-field">dlcount</code> enthält die Anzahl an Downloads dieser Datei.
</p>

</article>

</section><!-- section.sub end -->

<section id="serendipity_event_google_sitemap" class="sub">
<span class="u-toc">6.3.15 - Suchmaschinen-Sitemap Generator: serendipity_event_google_sitemap</span>

<h3 class="subsection" id="suchmaschinen-sitemap-generatorserendipity_event_google_sitemap">Suchmaschinen-Sitemap Generator<br>serendipity_event_google_sitemap</h3>

<p class="tagging invisible">
<span class="tag-box invisible">
    <span class="inline-tag">Plugins!Suchmaschinen-Sitemap Generator</span>
    <span class="inline-tag">Plugins!serendipity_event_google_sitemap</span>
</span>
</p>

<p class="tagging invisible">
<span class="label invisible" id="googlesitemap">googlesitemap</span>
<span class="tag-box invisible">
    <span class="inline-tag">Sitemap</span>
    <span class="inline-tag">Google Sitemap</span>
    <span class="inline-tag">robots.txt</span>
    <span class="inline-tag">Suchmaschinenindizierung</span>
    <span class="inline-tag">SEO</span>
</span>
</p>

<p>Wenn Sie den Inhalt Ihres Blogs über eine Suchmaschine auffinden wollen,
muss die jeweilige Suchmaschine Ihr Blog <em>indizieren</em>. Bei diesem
Vorgang ruft ein Suchroboter Ihr Blog auf, als wäre er ein normaler
Besucher. Dann analysiert er Ihre Webseite, sammelt sämtliche enthaltenen
Links und folgt diesen dann. Diesen Vorgang vergleicht man oft mit
<em>crawling</em> oder <em>spidering</em>, da ein Suchroboter mit diesem
Mechanismus wie ein Insekt über die vollständige Webseite <em>kriecht</em>.</p>

<p>Dieser Vorgang kann mitunter sehr zeitaufwändig sein, da durch die
Baumstruktur einer Webseite möglicherweise besonders viele Seiten
aufgerufen werden müssen. Da der Suchroboter die Struktur einer Seite
nicht wie ein Mensch erfassen kann, muss er stur sämtliche verfügbaren
Unterseiten aufrufen und erkennt möglicherweise nicht, dass einige Seiten
denselben Inhalt besitzen.</p>

<p>Gerade bei Weblogs gibt es zahlreiche Möglichkeiten, Blog-Artikel
anzusehen: die globale Artikelübersicht, eine Übersicht pro Woche, pro
Monat, pro Jahr, pro Kategorie, pro Autor und viele weitere. So entstehen
für einige wenige Blog-Artikel bereits mehrere hundert Seitenaufrufe der
Suchroboter.</p>

<p>Dies ist nicht unbedingt ein grundlegender Nachteil: Da Blog-Artikel so
verschieden dargestellt werden, interpretiert eine Suchmaschine wie
Google dies oft als eigenständige Seite und gewichtet daher die
vorkommenden Wörter stärker, als wenn Sie nur eine einzelne
Artikelübersichtsseite besäßen.</p>

<p>Der Nachteil entsteht erst dann, wenn der Suchroboter sehr oft Ihre
Webseiten besucht und dadurch viel Traffic erzeugt - oder wenn er
nicht oft genug die Seiten besucht und daher nicht der
Aktualität Ihrer Beiträge entsprechen kann.</p>

<p>Für diese Fälle wurde von den Suchmaschinenbetreibern ein eigener
Standard ins Leben gerufen. Dieser setzt am Prinzip einer <em>Sitemap</em>
an. Eine Sitemap stellt sozusagen die Struktur Ihrer Webseite mit allen
Unterseiten dar, wie eine Verzeichnisübersicht Ihrer Festplatte im
vollständig ausgeklappten Zustand. Zusätzlich interpretieren Suchroboter
auch noch die Datei <code>robots.txt</code> im Stammverzeichnis Ihrer Webseite.
In dieser Datei können bereits Seiten von der Indizierung explizit
ausgeschlossen und einige andere Optionen eingestellt werden.
Weitere Informationen hierzu finden Sie auf
<code>https://wiki.selfhtml.org/wiki/Grundlagen/Robots</code>.</p>

<p>Eine Sitemap-Datei muss dabei im XML-Format [*]
<span class="footnote"><i class="fa fa-info-circle"></i> Die vollständige
Spezifikation des Formates können Sie auf <a href="http://www.sitemaps.org/" target="_blank">http://www.sitemaps.org/</a>
nachschlagen.</span><!-- footnote --> abgespeichert werden und alle gültigen URLs enthalten.
Jede URL kann mehrere Eigenschaften enthalten: das Datum der letzten
Änderung, eine Aktualisierungspriorität (Gewichtung) und eine Angabe,
wie häufig sich das Dokument schätzungsweise ändert.</p>

<p>Damit Sie diese Sitemap-Datei nicht manuell erstellen müssen, wurde das
Plugin <em>Suchmaschinen-Sitemap</em> entwickelt. Dieses erstellt die
notwendige XML-Datei anhand Ihrer Datenbank automatisch.</p>

<p>Sobald das Plugin installiert ist, wird es sich bei der Veröffentlichung jedes
neuen Artikels um die Aktualisierung der Sitemap-Datei kümmern. Dabei
setzt es automatisch die korrekten Werte für die letzte Änderung an einem
Artikel sowie die Gewichtung und Aktualisierungsfrequenz. Es enthält die
URLs für:</p>

<ul class="realList">
    <li>Startseite des Blogs, Gewichtung 0.6</li>
    <li>Archivübersicht des Blogs zzgl. Folgeseiten, Gewichtung 0.5</li>
    <li>Artikel-Detailseiten sowie eventueller Alternativ-Permalinks, Gewichtung 0.7--0.8</li>
    <li>Kategorie-Übersichtsseiten, Gewichtung 0.4</li>
    <li>Autor-Übersichtsseiten, Gewichtung 0.2</li>
    <li>Archivübersicht nach Monat (Gewichtung 0.3), Monatsübersicht
        (Gewichtung 0.1), Archivübersicht nach Monat pro Kategorie (Gewichtung 0.1)</li>
    <li>RSS-Feed pro Kategorie, Gewichtung 0.0 [*]
        <span class="footnote"><i class="fa fa-info-circle"></i> RSS-Feeds sollen
        nicht als Suchergebnisse bei den Suchmaschinen angezeigt, sondern
        nur als zusätzliche Alternativdarstellung eingebunden werden. Daher
        erhalten diese eine Gewichtung von 0.0.</span><!-- footnote --></li>
    <li>Globaler RSS-Feed, Gewichtung 0.0</li>
    <li>etwaige statische Seiten, Gewichtung 0.7</li>
</ul>

<p>Die XML-Datei <code>sitemap.xml</code> speichert das Plugin danach im
Stammverzeichnis des Blogs, wo es von den Suchmaschinen gefunden werden
kann. Damit die Datei erfolgreich geschrieben werden kann, müssen
entweder Schreibrechte zu dieser Datei bestehen, oder das
Stammverzeichnis muss für den PHP-Anwender beschreibbar sein
(Verzeichnisrechte 0777, siehe Kapitel <span class="reference">Zugriffsrechte</span> ab Seite
<span class="pageref"><a href="#Zugriffsrechte">Zugriffsrechte</a></span>).</p>

<p>Das Sitemap-Format wird neben Google auch durch die Suchmaschinen-Roboter
von MSN, Yahoo und Ask unterstützt.</p>

<p>In den Konfigurationsoptionen des Plugins können Sie einige Einstellungen
vornehmen:</p>

<p class="desc">
<span class="item mbold">Updates melden</span><!-- menuitem -->
<span class="desc-info">
    <span class="box">
        Wenn Sie die Option <span class="mbold">Updates melden</span> aktivieren, kann das
        Sitemap-Plugin eine Liste von Suchmaschinenbetreibern kontaktieren, um
        diesen mitzuteilen, dass sich Ihre Sitemap geändert hat. Daraufhin kann
        der jeweilige Suchroboter Ihre Seite neu indizieren.
    </span>

    <span class="box">
        Das Plugin kann nur dann Updates melden (<em>pingen</em>), wenn Ihr Server
        nicht durch eine Firewall blockiert wird und ausgehende HTTP-Verbindungen
        zu anderen Webservern erlaubt.
    </span>
</span>
</p>

<p class="desc">
<span class="item mbold">URL-Liste für Pings</span><!-- menuitem -->
<span class="desc-info">
    <span class="box">
        Wenn Sie die Option <span class="mbold">Updates melden</span> aktiviert haben, können Sie in
        diesem Feld eine Liste der URLs von Suchmaschinenbetreibern eintragen, an
        die das Plugin sich bei Aktualisierungen automatisch wenden soll.
        Voreingestellt sind im Plugin die URLs von Google und Ask.
    </span>

    <span class="box">
        Welche URL Sie beim jeweiligen Suchmaschinenbetreiber benutzen können,
        erfahren Sie auf dessen Webseite. Mehrere Betreiber-URLs können Sie mit
        dem Semikolon <code>;</code> voneinander trennen.
    </span>
</span>
</p>

<p class="desc">
<span class="item mbold">Die sitemap.xml mit gzip packen</span><!-- menuitem -->
<span class="desc-info">
    <span class="box">
        Da Ihre <code>sitemap.xml</code>-Datei bei vielen Blog-Einträgen recht groß
        werden kann, ermöglicht das Sitemap-Plugin, diese Datei mit
        ZIP-Kompression zu speichern. Diese Kompression funktioniert nur, wenn
        Ihre PHP-Version auf dem Webserver das ZIP-Modul eingebunden hat.
        Ist diese Option aktiviert, wird die Sitemap-Datei als
        <code>sitemap.xml.gz</code> gespeichert.
    </span>

    <span class="box">
        Wenn Sie Probleme bei der Erstellung einer Sitemap haben, empfiehlt es
        sich, diese Option zu deaktivieren. Dann können Sie mit einem beliebigen
        Editor die Datei <code>sitemap.xml</code> öffnen, um nach etwaigen
        Fehlermeldungen zu suchen.
    </span>
</span>
</p>

<p class="desc">
<span class="item mbold">URL-Typen</span><!-- menuitem -->
<span class="desc-info">
    <span class="box">
        In dieser Liste können Sie festlegen, welche URLs in die Sitemap eingefügt
        werden sollen: <span class="mbold">Feeds, Kategorien, Autoren, Permalinks, Archiv, Statische
        Seiten, Tag-Seiten</span>. Standardmäßig sind alle URL-Typen ausgewählt.
    </span>

    <span class="box">
        Feeds werden jedoch nur mit einer Gewichtung von 0 in die Sitemap aufgenommen, da die
        Inhalte eines RSS-Feeds derzeit nirgends als Suchergebnisse herangezogen werden
        und nur als alternative Informationsquelle zu Aktualisierungen dienen.
    </span>
</span>
</p>

<p>&nbsp;</p><!-- separator -->

<p>Je nach Suchmaschinenbetreiber müssen Sie Ihr Blog möglicherweise erst
für die Benutzung von Sitemaps freischalten. Bei Google geschieht dies
etwa über die URL <code>http://www.google.com/webmasters/tools/</code>.</p>

<p>Einige Suchmaschinen werten zudem die Datei <code>robots.txt</code> aus und suchen
dort nach der Angabe Ihrer Sitemap. Dazu müssen Sie die Zeile
<code>Sitemap: http://www.example.com/serendipity/sitemap.xml</code> in
<code>robots.txt</code> aufnehmen.</p>

</section><!-- section.sub end -->

<section id="serendipity_event_guestbook" class="sub">
<span class="u-toc">6.3.16 - Gästebuch: serendipity_event_guestbook</span>

<h3 class="subsection" id="gästebuchserendipity_event_guestbook">Gästebuch<br>serendipity_event_guestbook</h3>

<p class="tagging invisible">
<span class="tag-box invisible">
    <span class="inline-tag">Plugins!Gaestebuch@Gästebuch</span>
    <span class="inline-tag">Plugins!serendipity_event_guestbook</span>
    <span class="inline-tag">Gaestebuch@Gästebuch</span>
</span>
</p>

<p>Mit dem <em>Gästebuch</em>-Plugin können Sie in Ihrem Blog einen Bereich
einbinden, in dem Besucher sich in ein Gästebuch eintragen können. Die
Kommentarfunktionen Serendipitys beziehen sich immer auf die jeweiligen
Artikel, daher sind generelle Kommentare Ihrer Besucher besser in einem
Gästebuch aufgehoben.</p>

<p>Es gibt zahlreiche PHP-Scripts zur Einbindung von Gästebüchern und auch
zahlreiche kostenlose Webangebote, bei denen Sie Gästebücher eröffnen
können. Das Gästebuch-Plugin ist möglichst simpel gehalten und
hauptsächlich für eine nahtlose Einbindung in Serendipity vorgesehen.</p>

<p>Das Gästebuch können Sie im Frontend über einen frei von Ihnen vergebenen
Permalink aufrufen. Diesen Link binden Sie am besten entweder in einen
HTML-Klotz in der Seitenleiste ein oder fügen ihn fest in eine
Navigation Ihres Templates ein (siehe Seite <span class="pageref"><a href="#templatefiles-index">templatefiles-index</a></span> und
<span class="pageref"><a href="#bpdesc">bpdesc</a></span>).</p>

<p>Ein Besucher sieht im Gästebuch die Einträge der vorherigen Gäste und kann
dort über ein Formular seinen eigenen Eintrag hinterlassen. Wenn Sie im
Blog eingeloggt sind, können Sie als Administrator zudem bestehende
Einträge im Gästebuch direkt löschen.</p>

<p>Für das Gästebuch-Plugin stehende folgende Konfigurationsoptionen zur
Verfügung:</p>

<p class="desc">
<span class="item mbold">Permalink</span><!-- menuitem -->
<span class="desc-info">Globaler Permalink, um die Ausgabe des Plugins im Frontend sehen zu
können. Details siehe Seite
<span class="pageref"><a href="#Standardpluginkonfiguration-Permalink">Standardpluginkonfiguration-Permalink</a></span>.</span>
</p>

<p class="desc">
<span class="item mbold">Seitentitel</span><!-- menuitem -->
<span class="desc-info">Globale Variable, die einen alternativen Permalink zur Ausgabe des
Plugins im Frontend bereitstellt. Details siehe Seite
<span class="pageref"><a href="#Standardpluginkonfiguration-Pagetitle">Standardpluginkonfiguration-Pagetitle</a></span>.</span>
</p>

<p class="desc">
<span class="item mbold">Überschrift</span><!-- menuitem -->
<span class="desc-info">Tragen Sie in diesem Feld die <span class="mbold">Überschrift</span> ein, die Sie später im
Gästebuch sehen möchten.</span>
</p>

<p class="desc">
<span class="item mbold">Einführungstext</span><!-- menuitem -->
<span class="desc-info">Um Ihren Besuchern eine Einführung in Ihr Gästebuch zu geben und sie zu
einem Eintrag zu motivieren, können Sie in diesem Feld einen beliebigen
<span class="mbold">Einführungstext</span> eingeben. Dieser darf auch beliebiges HTML
enthalten und wird später oberhalb der Gästebucheinträge angezeigt.</span>
</p>

<p class="desc">
<span class="item mbold">Gästebuch-Formular</span><!-- menuitem -->
<span class="desc-info">Mit dieser Option legen Sie fest, ob das Formular für neue Einträge
oberhalb oder unterhalb der vorhandenen Gästebucheinträge eingebunden
werden soll.</span>
</p>

<p class="desc">
<span class="item mbold">Einträge pro Seite</span><!-- menuitem -->
<span class="desc-info">Tragen Sie im Feld <span class="mbold">Einträge pro Seite</span> eine Zahl ein, die festlegt,
wie viele Gästebucheinträge auf einer einzelnen Seite angezeigt werden
sollen. Weitere Einträge können dann durch eine Blätterfunktion
aufgerufen werden.</span>
</p>

<p class="desc">
<span class="item mbold">Anzahl der Zeichen pro Zeile</span><!-- menuitem -->
<span class="desc-info">Da Gästebucheinträge möglicherweise auch überlange Wörter enthalten,
können Sie mit dieser Option festlegen, nach wie vielen Zeichen ein
automatischer Zeilenumbruch erfolgen soll.</span>
</p>

<p class="desc">
<span class="item mbold">Als Artikel formatieren</span><!-- menuitem -->
<span class="desc-info">Wenn Sie diese Option aktivieren, werden etwaige Textformatierungs-Plugins
(Smilies, BBCode etc.) ausgeführt. Damit erscheint ein Gästebucheintrag
dann mit denselben Formatierungsmöglichkeiten wie ein normaler
Blog-Kommentar.</span>
</p>

<p class="desc">
<span class="item mbold">Send e-mail to admin</span><!-- menuitem -->
<span class="desc-info">Wenn Sie bei jedem neuen Gästebucheintrag einen E-Mail-Hinweis erhalten
wollen, können Sie diese Option aktivieren.</span>
</p>

<p class="desc">
<span class="item mbold">E-Mail-Adresse des Admin</span><!-- menuitem -->
<span class="desc-info">Bei aktivierter Option <span class="mbold">Send e-mail to admin</span> müssen Sie in dem
Eingabefeld hier die gewünschte E-Mail-Adresse eintragen.</span>
</p>

<p class="desc">
<span class="item mbold">E-Mail-Adresse des Users, Homepage des Users</span><!-- menuitem -->
<span class="desc-info">Das Gästebuchformular kann von einem Besucher mehrere Eingabefelder
optional abfragen. Standardmäßig muss für einen Gästebucheintrag nur ein
Text und ein Name angegeben werden. Über die Aktivierung der Optionen
<span class="mbold">E-Mail-Adresse des Users</span> und <span class="mbold">Homepage des Users</span> können Sie
zusätzlich auch weitere Felder abfragen.</span>
</p>

<p class="desc">
<span class="item mbold">Captcha-Schutz aktivieren</span><!-- menuitem -->
<span class="desc-info">Um Spam im Gästebuch zu verhindern, kann für das Gästebuch ebenfalls der
Captcha-Schutz (siehe Seite <span class="pageref"><a href="#spamblock">spamblock</a></span>) aktiviert werden.</span>
</p>

<p class="desc">
<span class="item mbold">Datumsformat</span><!-- menuitem -->
<span class="desc-info">Tragen Sie im Feld <span class="mbold">Datumsformat</span> ein, wie das Datum der
Gästebucheinträge formatiert werden soll. Zur Verfügung stehen die
Platzhalter, die in der
PHP-Dokumentation [*]
<span class="footnote"><i class="fa fa-info-circle"></i> <a href="http://de.php.net/strftime" target="_blank">http://de.php.net/strftime</a></span><!-- footnote --> beschrieben
werden.</span>
</p>

<p class="desc">
<span class="item mbold">Gästebuch-Hilfe</span><!-- menuitem -->
<span class="desc-info">Am Ende der Konfigurationsoptionen befindet sich ein kleiner
Informationstext mit einem Link zu der README-Datei des Plugins. In
dieser Datei ist eine kleine Anleitung zum Plugin enthalten, die einige
technische Informationen enthält.</span>
</p>

<p>&nbsp;</p><!-- separator -->

<p>Nachdem Sie das Plugin installiert haben, müssen Sie noch einen Link zum
Gästebuch-Plugin (der von Ihnen festgelegte <span class="mbold">Permalink</span>) in Ihrem Blog
hinzufügen. Den Link können Sie am besten über einen HTML-Klotz in der
Seitenleiste einfügen oder auch durch den Einbau in eine mögliche
Navigationsleiste Ihres Templates (siehe Kapitel <span class="reference">templatefiles</span>,
Seite <span class="pageref"><a href="#templatefiles-index">templatefiles-index</a></span>, oder auch Kapitel <span class="reference">bpdesc</span> auf Seite
<span class="pageref"><a href="#bpdesc">bpdesc</a></span>).</p>

<p>Weiterhin verfügt das Plugin über ein mitgeliefertes Seitenleisten-Plugin.
Damit können Sie die letzten Gästebucheinträge in der Seitenleiste
darstellen. Die Konfigurationsoptionen sind dabei an das Plugin <em>Letzte
Kommentare</em> (siehe Seite <span class="pageref"><a href="#Plugin-Kommentare">Plugin-Kommentare</a></span>) angelehnt.</p>

<p>Die Ausgabe des Plugins erfolgt vollständig via Smarty-Templates. Die
Datei <code>plugin_guestbook_form.tpl</code> enthält den Code zur Darstellung des Formulares
<span class="tag-box invisible">
    <span class="inline-tag">Template-Dateien!plugin_guestbook_form.tpl</span>
</span>
für Eintragungen. Die Datei
<span class="tag-box invisible">
    <span class="inline-tag">Template-Dateien!plugin_guestbook_entries.tpl</span>
</span>
<code>plugin_guestbook_entries.tpl</code> wird zur Darstellung der einzelnen Gästebucheinträge verwendet.</p>

<p>Die dort gültigen Variablen sind:</p>

<p class="desc citem-desc">
<span class="tag-box invisible">
    <span class="inline-tag">Template-Variablen!\$staticpage_headline</span>
</span>
<code class="item smarty_var">$staticpage_headline</code>: String<!-- codeitem -->
<span class="desc-info">enthält die Überschrift des Gästebuchs.</span>
</p>

<p class="desc citem-desc">
<span class="tag-box invisible">
    <span class="inline-tag">Template-Variablen!\$staticpage_pagetitle</span>
</span>
<code class="item smarty_var">$staticpage_pagetitle</code>: String<!-- codeitem -->
<span class="desc-info"> enthält den Kurztitel des Gästebuchs.</span>
</p>

<p class="desc citem-desc">
<span class="tag-box invisible">
    <span class="inline-tag">Template-Variablen!\$staticpage_formorder</span>
</span>
<code class="item smarty_var">$staticpage_formorder</code>: String<!-- codeitem -->
<span class="desc-info"> gibt an, ob das
Eintragsformular oben (<code>top</code>) oder unten (<code>bottom</code>) angezeigt
werden soll.</span>
</p>

<p class="desc citem-desc">
<span class="tag-box invisible">
    <span class="inline-tag">Template-Variablen!\$admin_delete</span>
</span>
<code class="item smarty_var">$admin_delete</code>: Bool<!-- codeitem -->
<span class="desc-info"> ist auf <code>true</code> gesetzt, wenn
ein Administrator einen Gästebucheintrag löschen möchte.</span>
</p>

<p class="desc citem-desc">
<span class="tag-box invisible">
    <span class="inline-tag">Template-Variablen!\$admin_dodelete</span>
</span>
<code class="item smarty_var">$admin_dodelete</code>: Bool<!-- codeitem -->
<span class="desc-info"> ist auf <code>true</code> gesetzt, wenn
ein Administrator eine Seite gelöscht hat.</span>
</p>

<p class="desc citem-desc">
<span class="tag-box invisible">
    <span class="inline-tag">Template-Variablen!\$admin_page</span>
</span>
<code class="item smarty_var">$admin_page</code>: Int<!-- codeitem -->
<span class="desc-info"> enthält die Nummer der Seite, auf der
ein Administrator eine Aktion ausführt.</span>
</p>

<p class="desc citem-desc">
<span class="tag-box invisible">
    <span class="inline-tag">Template-Variablen!\$admin_url</span>
</span>
<code class="item smarty_var">$admin_url</code>: String<!-- codeitem -->
<span class="desc-info"> enthält die Ziel-URL des Gästebuchs.</span>
</p>

<p class="desc citem-desc">
<span class="tag-box invisible">
    <span class="inline-tag">Template-Variablen!\$admin_target</span>
</span>
<code class="item smarty_var">$admin_target</code>: String<!-- codeitem -->
<span class="desc-info"> enthält die Ziel-URL zum Löschen eines Gästebucheintrags.</span>
</p>

<p class="desc citem-desc">
<span class="tag-box invisible">
    <span class="inline-tag">Template-Variablen!\$base_url</span>
</span>
<code class="item smarty_var">$base_url</code>: String<!-- codeitem -->
<span class="desc-info"> enthält die URL des Blogs.</span>
</p>

<p class="desc citem-desc">
<span class="tag-box invisible">
    <span class="inline-tag">Template-Variablen!\$is_guestbook_url</span>
</span>
<code class="item smarty_var">$is_guestbook_url</code>: String<!-- codeitem -->
<span class="desc-info"> enthält den Permalink zum Gästebuch-Plugin.</span>
</p>

<p class="desc citem-desc">
<span class="tag-box invisible">
    <span class="inline-tag">Template-Variablen!\$delete_sure</span>
</span>
<code class="item smarty_var">$delete_sure</code>: String<!-- codeitem -->
<span class="desc-info"> enthält einen Abfragetext, der
benutzt werden kann, wenn ein Administrator einen speziellen
Gästebucheintrag löschen möchte.</span>
</p>

<p class="desc citem-desc">
<span class="tag-box invisible">
    <span class="inline-tag">Template-Variablen!\$rip_entry</span>
</span>
<code class="item smarty_var">$rip_entry</code>: String<!-- codeitem -->
<span class="desc-info"> enthält einen Ausgabetext, wenn ein
spezieller Gästebucheintrag gelöscht wurde.</span>
</p>

<p class="desc citem-desc">
<span class="tag-box invisible">
    <span class="inline-tag">Template-Variablen!\$is_show_mail</span>
    <span class="inline-tag">Template-Variablen!\$is_show_url</span>
</span>
<code class="item smarty_var">$is_show_mail</code>, 
<code class="item smarty_var">$is_show_url</code>: Bool<!-- codeitem -->
<span class="desc-info"> sind auf
<code>true</code> gesetzt, wenn im Eingabeformular die zusätzlichen
Eingabefelder für die E-Mail-Adresse oder die Homepage eines Benutzers
abgefragt werden sollen.</span>
</p>

<p class="desc citem-desc">
<span class="tag-box invisible">
    <span class="inline-tag">Template-Variablen!\$plugin_guestbook_preface</span>
</span>
<code class="item smarty_var">$plugin_guestbook_preface</code>: String<!-- codeitem -->
<span class="desc-info"> enthält den Einleitungstext des Gästebuch-Plugins.</span>
</p>

<p class="desc citem-desc">
<span class="tag-box invisible">
    <span class="inline-tag">Template-Variablen!\$plugin_guestbook_sent</span>
</span>
<code class="item smarty_var">$plugin_guestbook_sent</code>: String<!-- codeitem -->
<span class="desc-info"> enthält den Text, der
angezeigt wird, wenn ein Benutzer einen Gästebucheintrag erstellt hat.</span>
</p>

<p class="desc citem-desc">
<span class="tag-box invisible">
    <span class="inline-tag">Template-Variablen!\$plugin_guestbook_action</span>
</span>
<code class="item smarty_var">$plugin_guestbook_action</code>: String<!-- codeitem -->
<span class="desc-info"> enthält die URL zum Abschicken eines Gästebucheintrags.</span>
</p>

<p class="desc citem-desc">
<span class="tag-box invisible">
    <span class="inline-tag">Template-Variablen!\$plugin_guestbook_sname</span>
</span>
<code class="item smarty_var">$plugin_guestbook_sname</code>: String<!-- codeitem -->
<span class="desc-info"> enthält den Seitentitel der Gästebuch-URL.</span>
</p>

<p class="desc citem-desc">
<span class="tag-box invisible">
    <span class="inline-tag">Template-Variablen!\$plugin_guestbook_name</span>
    <span class="inline-tag">Template-Variablen!\$plugin_guestbook_email</span>
    <span class="inline-tag">Template-Variablen!\$plugin_guestbook_url</span>
    <span class="inline-tag">Template-Variablen!\$plugin_guestbook_comment</span>
</span>
<code class="item smarty_var">$plugin_guestbook_name</code>, 
<code class="item smarty_var">$plugin_guestbook_email</code>, 
<code class="item smarty_var">$plugin_guestbook_url</code>, 
<code class="item smarty_var">$plugin_guestbook_comment</code>: String<!-- codeitem -->
<span class="desc-info"> enthält
die Benutzereingaben bei der Übermittlung eines Gästebuchkommentars.</span>
</p>

<p class="desc citem-desc">
<span class="tag-box invisible">
    <span class="inline-tag">Template-Variablen!\$plugin_guestbook_emailprotect</span>
</span>
<code class="item smarty_var">$plugin_guestbook_emailprotect</code>: String<!-- codeitem -->
<span class="desc-info"> enthält den
Text, der den Besucher über den Schutz der E-Mail-Adresse informiert.</span>
</p>

<p class="desc citem-desc">
<span class="tag-box invisible">
    <span class="inline-tag">Template-Variablen!\$plugin_guestbook_messagestack</span>
    <span class="inline-tag">Template-Variablen!\$is_guestbook_message</span>
    <span class="inline-tag">Template-Variablen!\$error_occured</span>
    <span class="inline-tag">Template-Variablen!\$guestbook_messages</span>
</span>
<code class="item smarty_var">$plugin_guestbook_messagestack</code>: Array, 
<code class="item smarty_var">$is_guestbook_message</code>: Bool, 
<code class="item smarty_var">$error_occured</code>: String, 
<code class="item smarty_var">$guestbook_messages:</code> string<!-- codeitem -->
<span class="desc-info"> enthält etwaige Fehlermeldungen.</span>
</p>

<p class="desc citem-desc">
<span class="tag-box invisible">
    <span class="inline-tag">Template-Variablen!\$plugin_guestbook_entry</span>
</span>
<code class="item smarty_var">$plugin_guestbook_entry</code>: Array (timestamp)<!-- codeitem -->
<span class="desc-info"> enthält
Daten, die das Plugin zur Prüfung eines Gästebuch-Kommentars
durch das Antispam-Plugin benötigt.</span>
</p>

<p class="desc citem-desc">
<span class="tag-box invisible">
    <span class="inline-tag">Template-Variablen!\$guestbook_paging</span>
</span>
<code class="item smarty_var">$guestbook_paging</code>: String<!-- codeitem -->
<span class="desc-info"> enthält HTML-Code für die Seiten-Blätterfunktion der Einträge.</span>
</p>

<p class="desc citem-desc">
<span class="tag-box invisible">
    <span class="inline-tag">Template-Variablen!\$guestbook_entry_paging</span>
</span>
<code class="item smarty_var">$guestbook_entry_paging</code>: Bool<!-- codeitem -->
<span class="desc-info"> ist auf <code>true</code>
gesetzt, wenn die Blätterungsfunktion aktiviert ist.</span>
</p>

<p class="desc citem-desc">
<span class="tag-box invisible">
    <span class="inline-tag">Template-Variablen!\$guestbook_entries</span>
</span>
<code class="item smarty_var">$guestbook_entries</code>: Array (email, name, homepage, body, imgshorttime, timestamp, page, imgdelete)<!-- codeitem -->
<span class="desc-info"> enthält das Array mit den
vorhandenen Gästebucheinträgen. <code>email, name, homepage, body</code>
enthalten dabei die Stammdaten eines Gästebuchkommentars. <code>page</code>
enthält die URL zum Löschen des jeweiligen Beitrags, <code>imgshorttime</code>
enthält eine URL zur Grafik einer Uhr, <code>imgdelete</code> die URL zur Grafik
eines Löschen-Icons. <code>timestamp</code> enthält das gemäß der
Plugin-Konfiguration formatierte Datum eines Beitrags.</span>
</p>

</section><!-- section.sub end -->

<section id="serendipity_event_xxx_nugget" class="sub">
<span class="u-toc">6.3.17 - HTML-Code für den head-Bereich<br>(HTML-Kopf-Klotz) und HTML Nugget on Page:<br>serendipity_event_head_nugget, serendipity_event_page_nugget</span>

<h3 class="subsection" id="html-code-für-den-head-bereich-html-kopf-klotz-und-html-nugget-o">HTML-Code für den head-Bereich<br>(HTML-Kopf-Klotz) und HTML Nugget on Page<br>serendipity_event_head_nugget, serendipity_event_page_nugget</h3>

<p class="tagging invisible">
<span class="tag-box invisible">
    <span class="inline-tag">Plugins!HTML-Code für den head-Bereich</span>
    <span class="inline-tag">Plugins!serendipity_event_head_nugget</span>
    <span class="inline-tag">Plugins!HTML-Nugget@HTML Nugget on Page</span>
    <span class="inline-tag">Plugins!serendipity_event_page_nugget</span>
    <span class="inline-tag">HTMLKlotz@HTML-Klotz</span>
</span>
<span class="label invisible" id="headnugget">headnugget</span>
</p>

<p>Ähnlich wie der berühmte HTML-Klotz (siehe Seite <span class="pageref"><a href="#htmlnugget">htmlnugget</a></span>)
ermöglicht es das Plugin <em>HTML-Code für den head-Bereich</em>, beliebigen HTML-Code (oder
JavaScript) in Ihr Blog einzubinden. Dieser HTML-Code wird dann im
HTML-<code>&lt;head&gt;</code>-Bereich eingebunden. In diesem Bereich findet man
üblicherweise Meta-Tags und seitenübergreifende JavaScripts. Google
Analytics beispielsweise muss in diesen Kopf-Bereich eingefügt werden.</p>

<p>Grundsätzlich können Sie derartigen Code natürlich auch in die
Template-Datei <code>index.tpl</code> einfügen. Der Nachteil dieser Methode wäre
allerdings, dass Sie ihn bei jedem neuen Template neu einfügen müssen
und nicht einfach das Template wechseln können. Auch müssen Sie zum
Einfügen extra das FTP-Programm und einen Editor bemühen, während der
HTML-Kopf-Klotz eine einfachere Eingabe über ein zentrales Plugin
ermöglicht.</p>

<p>Zugleich ist dieses Plugin wohl das kleinste existierende
Serendipity-Plugin, und daher sehr geeignet, um einmal in die
Programmierweise von Plugins hineinzuschnuppern.</p>

<p>Komplexere Möglichkeiten zum Einfügen von <em>Klötzen</em> bietet das
Plugin namens <em>HTML Nugget on Page</em> (<code>serendipity_event_page_nugget</code>).
Dort kann man einen Klotz beliebig im Kopf-Bereich oder im Inhaltsbereich
(Header, Footer, Seitenende) platzieren. Dieses Plugin ermöglicht auch
die Benutzung der verfügbaren Textformatierungs-Plugins und lässt sich
analog zum <em>HTML-Klotz</em> auch so konfigurieren, dass es nur auf
Artikel-Detailseiten oder nur auf Artikel-Übersichtsseiten angezeigt
wird.</p>

</section><!-- section.sub end -->

<section id="serendipity_event_karma" class="sub">
<span class="u-toc">6.3.18 - Karma: serendipity_event_karma</span>

<h3 class="subsection" id="karmaserendipity_event_karma">Karma<br>serendipity_event_karma</h3>

<p class="tagging invisible">
<span class="tag-box invisible">
    <span class="inline-tag">Plugins!Karma</span>
    <span class="inline-tag">Plugins!serendipity_event_karma</span>
</span>
</p>

<p class="tagging invisible">
<span class="label invisible" id="Karma">Karma</span>
<span class="tag-box invisible">
    <span class="inline-tag">Karma</span>
    <span class="inline-tag">Statistik</span>
    <span class="inline-tag">Bewertungen</span>
</span>
</p>

<p>Der Begriff <em>Karma</em> beschreibt ein spirituelles Konzept, wonach
jede gute oder schlechte Tat sich in guten oder schlechten Erfahrungen
niederschlagen wird. Gerade im Hinduismus oder bei
Religionsgemeinschaften, die an die Wiedergeburt glauben, ist diese
Vorstellung wichtig für die Handlungsweisen der Menschen.</p>

<p>Das Karma-Plugin wendet dieses Konzept auf Blog-Beiträge an: Ihre
Besucher können zu jedem Beitrag abstimmen, wie "gut" oder
"schlecht" sie diesen finden. Das kann Ihnen dann Aufschluss
darüber geben, wie gezielt Sie auf Ihre Besucher eingehen.</p>

<p>Das Plugin ermöglicht eine Bewertung in fünf Stufen: - (sehr
schlecht), - (schlecht), 0 (neutral), + (gut) und ++ (sehr gut). Die
Abstimmungen können nur bei aktiviertem JavaScript durchgeführt werden,
damit Suchmaschinen nicht auch abstimmen können.</p>

<p>Seit der neuen Version des Plugins mit Serendipity 1.3 können auch beliebige
Grafiken für die Abstimmung eingebunden werden.</p>

<p>Zusätzlich bietet das Karma-Plugin auch "statistische Fähigkeiten". Es
kann zählen, wie viele Besucher die Detailseiten eines Artikels angesehen
haben. Dafür legt das Plugin eine eigenständige Datenbanktabelle an, in
der die Abstimmungen und Statistiken gespeichert werden. Diese
Statistiken können direkt in der Artikelansicht dargestellt
werden und werden auch bei den Ausgaben des <em>Statistik</em>-Plugins
(siehe Seite <span class="pageref"><a href="#statistics">statistics</a></span>) berücksichtigt.</p>

<p>Die grafische Gestaltung der Abstimmungslinks kann via CSS und den
entsprechenden Plugin-CSS-Klassen vorgenommen werden (siehe auch Seite
<span class="pageref"><a href="#template-css">template-css</a></span>).</p>

<p>Das Plugin bietet die folgenden Konfigurationsoptionen, aufgeteilt in drei
Bereiche namens <span class="mbold">Globales</span>, <span class="mbold">Darstellung</span> und <span class="mbold">Texte</span>:</p>

<p class="desc">
<span class="item mbold">Karmavoting aktivieren</span><!-- menuitem -->
<span class="desc-info">Wenn Sie den Besuchern die Abstimmungsmöglichkeit zu einem Artikel
anbieten wollen, müssen Sie diese Option aktivieren. Sie können sie
deaktivieren, wenn Sie beispielsweise nur die Aufrufstatistik erhalten
möchten.</span>
</p>

<p class="desc">
<span class="item mbold">Nur erweiterte Artikel</span><!-- menuitem -->
<span class="desc-info">Die Abstimmungsmöglichkeit kann vom Plugin sowohl in der
Artikelübersicht als auch in der Detailansicht eines Artikels angezeigt
werden. Wenn Sie die Option <span class="mbold">Nur erweiterte Artikel</span> aktivieren,
kann ein Besucher nur in der Detailansicht eines Artikels abstimmen. Dies
kann möglicherweise hilfreich sein, um Ihre Artikelübersichten einfacher
zu strukturieren.</span>
</p>

<p class="desc">
<span class="item mbold">Maximaler Abstimmungszeitraum</span><!-- menuitem -->
<span class="desc-info">In diesem Eingabefeld legen sie fest, nach welchem Zeitraum seit der
Veröffentlichung eines Artikels keine Abstimmung mehr zugelassen
wird. Häufig interessiert Sie nur die Meinung Ihrer Besucher zu
aktuellen Beiträgen, daher ist standardmäßig die Abstimmung über
Artikel nur bis zu 7 Tage nach deren Veröffentlichung möglich.</span>
</p>

<p class="desc">
<span class="item mbold">Abstimmungszeitraum</span><!-- menuitem -->
<span class="desc-info">
    <span class="box">
        Mit der Option <span class="mbold">Abstimmungszeitraum</span> legen Sie fest, wie lange die
        "Zwangspause" eines Besuchers dauert, die er nach einer Bewertung eines
        Beitrags abwarten muss, bis er über einen weiteren Artikel abstimmen
        darf. Standardmäßig sind dies 5 Minuten.
    </span>

    <span class="box">
        Der Abstimmungszeitraum gilt nur für Artikel, die älter als das in der
        Option <span class="mbold">Abstimmungszeitraum nach Veröffentlichung eines Artikels</span>
        festgelegte Alter sind.
    </span>
</span>
</p>

<p class="desc">
<span class="item mbold">Abstimmungszeitraum nach Veröffentlichung eines Artikels</span><!-- menuitem -->
<span class="desc-info">
    <span class="box">
        Wenn Sie das Karmavoting aktiviert haben, kann ein Besucher einen Artikel
        bewerten. Nach jeder Bewertung erfolgt eine "Zwangspause" für den
        Besucher, bis er einen neuen Artikel bewerten kann.
    </span>

    <span class="box">
        Diese Zwangspause gilt jedoch nicht für gerade erst veröffentlichte
        Artikel. Stellen Sie sich vor, Sie veröffentlichen drei neue Artikel, und
        ein Besucher müsste erst mehrere Minuten warten, bevor er alle drei neuen
        Artikel nacheinander bewerten kann. Dies wäre keine besonders sinnvolle
        Einschränkung. Dennoch macht eine Zwangspause später Sinn, damit ein
        böswilliger Besucher nicht einfach alle Artikel Ihres Blogs nacheinander
        schlecht bewertet.
    </span>

    <span class="box">
        In dem Eingabefeld <span class="mbold">Abstimmungszeitraum nach Veröffentlichung eines
        Artikels</span> tragen Sie eine Zeitdauer in Minuten ein, die das Alter eines
        Eintrages festlegt, bei dem ein Benutzer ohne Zwangspause abstimmen darf.
        Standardmäßig sind dies 1440 Minuten, also ein Tag. Alle Artikel, die
        jünger als ein Tag sind, können dann ohne Pause von jedem Besucher
        nacheinander bewertet werden.
    </span>
</span>
</p>

<p class="desc">
<span class="item mbold">Minimale Anzahl an Stimmen für Darstellung</span><!-- menuitem -->
<span class="desc-info">Wenn Sie die Ergebnisse der Abstimmung erst ab einer gewissen Anzahl an Stimmen
anzeigen wollen, können Sie dies hier festlegen.</span>
</p>

<p class="desc">
<span class="item mbold">Aufrufstatistik aktivieren</span><!-- menuitem -->
<span class="desc-info">Wenn Sie möchten, dass das Plugin jeden Aufruf eines einzelnen Artikels
zählt, können Sie diese Option aktivieren. Wenn ein Artikel in einer
Übersicht dargestellt wird, zählt dies nicht als Aufruf.</span>
</p>

<p class="desc">
<span class="item mbold">Aufrufstatistik auch für eingeloggte Benutzer</span><!-- menuitem -->
<span class="desc-info">Falls diese Option deaktiviert wird, werden die Besuche eingeloggter Redakteure
in der Aufrufstatistik nicht mitgezählt.</span>
</p>

<p class="desc">
<span class="item mbold">Minimale Besucheranzahl</span><!-- menuitem -->
<span class="desc-info">Wenn Sie die Ergebnisse der Besucherzählung erst ab einer gewissen Anzahl an Besuchern
anzeigen wollen, können Sie dies hier festlegen.</span>
</p>

<p class="desc">
<span class="item mbold">Zeigt die Top-Exit-Links des Blogs</span><!-- menuitem -->
<span class="desc-info">Wenn Sie das Plugin <em>Externe Links zählen</em> installiert haben, kann
jeder Klick auf eine in Ihren Artikeln genannte Webseite gezählt werden.
Da diese Seitenaufrufe in der Datenbank gespeichert werden, können sie
nicht nur mittels des Plugins <em>Top Exits</em> in der Seitenleiste
eingebunden werden, sondern das Karma-Plugin kann auch auf diese Daten
zugreifen. Wenn Sie die Option <em>Zeigt die Top-Exit-Links des Blogs</em>
aktivieren, wird die Summe der Aufrufe aller in einem Beitrag genannten
Links am Ende des Artikels dargestellt. Sinnvoll ist diese Möglichkeit
vor allem bei Blogs, die pro Artikel immer nur einen oder zumindest
ähnliche Links aufführen, da durch die Summenbildung die Individualität
mehrerer Links verloren geht.</span>
</p>

<p class="desc">
<span class="item mbold">Protokollieren</span><!-- menuitem -->
<span class="desc-info">Jede Abstimmung über einen Beitrag kann in der Datenbanktabelle
<span class="tag-box invisible">
    <span class="inline-tag">Datenbank-Tabellen!serendipity_karmalog</span>
</span>
<code>serendipity_karmalog</code> protokolliert werden, sofern diese Option
aktiviert ist. Die Datenbanktabelle können Sie dann manuell mittels
phpMyAdmin ansehen (und von Zeit zu Zeit löschen).</span>
</p>

<p class="desc">
<span class="item mbold">Konfigurationsbereich Darstellung</span><!-- menuitem -->
<span class="desc-info">In diesem Bereich können Sie über mehrere Konfigurationsoptionen bestimmen, ob
der Abstimmungsbereich durch Text- oder Grafikdarstellung eingebunden werden
soll und welchem grafischen Stil dieser entsprechen soll.</span>
</p>

<p class="desc">
<span class="item mbold">Konfigurationsbereich Texte</span><!-- menuitem -->
<span class="desc-info">Die einzelnen Texte für die Umfrage können von Ihnen frei eingetragen werden.</span>
</p>

<article id="XU" class="subsub">

<header>
    <h4 class="subarticle" id="datenbanktabellen">Datenbanktabellen</h4>
</header>

<p>
<span class="tag-box invisible">
    <span class="inline-tag">Datenbank-Tabellen!serendipity_karma</span>
</span>
Die Datenbanktabelle <code>serendipity_karma</code> enthält die Abstimmungen zu jedem
Blog-Artikel. Zu jedem Blog-Artikel gibt es nur einen Eintrag, d.h. die Werte
der Abstimmung werden jeweils zu diesem Eintrag hinzuaddiert.</p>

<p class="desc sql-field-group">
    <code class="item sql-field">entryid</code> enthält die ID des Blog-Artikels.
    <code class="item sql-field">points</code> enthält die aktuelle Punktzahl des Artikels.
    <code class="item sql-field">votes</code> enthält die Anzahl der abstimmenden Besucher.
    <code class="item sql-field">lastvote</code> enthält das Datum der letzten Abstimmung.
    <code class="item sql-field">visits</code> enthält die Anzahl an Besuchen des Artikels.
</p>

<p>
<span class="tag-box invisible">
    <span class="inline-tag">Datenbank-Tabellen!serendipity_karmalog</span>
</span>
Damit alle Abstimmungen einzeln nachverfolgt werden können, wird bei aktivierter
Logging-Option des Plugins die Datenbanktabelle <code>serendipity_karmalog</code>
befüllt:</p>

<p class="desc sql-field-group">
    <code class="item sql-field">entryid</code> enthält die ID des Blog-Artikels.
    <code class="item sql-field">points</code> enthält die abgegebene Punktzahl.
    <code class="item sql-field">ip</code> enthält die IP-Adresse des abstimmenden Besuchers.
    <code class="item sql-field">user_agent</code> enthält den verwendeten Browser des Besuchers.
    <code class="item sql-field">votetime</code> enthält das Datum, an dem diese Punktzahl abgegeben wurde.
</p>

</article>

</section><!-- section.sub end -->

<section id="serendipity_event_livesearch" class="sub">
<span class="u-toc">6.3.19 - LiveSearch: serendipity_event_livesearch</span>

<h3 class="subsection" id="livesearchserendipity_event_livesearch">LiveSearch<br>serendipity_event_livesearch</h3>

<p class="tagging invisible">
<span class="tag-box invisible">
    <span class="inline-tag">Plugins!LiveSearch</span>
    <span class="inline-tag">Plugins!serendipity_event_livesearch</span>
</span>
</p>

<p class="tagging invisible">
<span class="tag-box invisible">
    <span class="inline-tag">Livesuche@Live-Suche</span>
    <span class="inline-tag">AJAX!Suche</span>
</span>
</p>

<p>Das <em>LiveSearch</em>-Plugin ist eine Erweiterung des
Seitenleisten-Plugins für die Suche (siehe Seite <span class="pageref"><a href="#quicksearch">quicksearch</a></span>).</p>

<p>Sobald es installiert ist, wird ein kleines JavaScript in das
Suchformular eingebunden. Wenn Sie als Besucher einen Begriff in das
Suchformular eintragen, wird die LiveSuche alle zutreffenden Artikel in
einer Aufklappbox unter dem Suchformular anzeigen, und Sie können einfach
darauf klicken.</p>

<p>Diese Art der Suche erspart Ihnen bei aktiviertem JavaScript im
Browser also, erst eine lange Artikelübersicht durchforsten zu müssen, bevor
Sie den gewünschten Artikel finden.</p>

</section><!-- section.sub end -->

<section id="serendipity_event_podcast" class="sub">
<span class="u-toc">6.3.20 - Easy Podcast: serendipity_event_podcast</span>

<h3 class="subsection" id="easy-podcastserendipity_event_podcast">Easy Podcast<br>serendipity_event_podcast</h3>

<p class="tagging invisible">
<span class="label invisible" id="podcast">podcast</span>
<span class="tag-box invisible">
    <span class="inline-tag">Plugins!Podcast</span>
    <span class="inline-tag">Plugins!Easy Podcast</span>
    <span class="inline-tag">Plugins!serendipity_event_podcast</span>
    <span class="inline-tag">Podcast</span>
</span>
</p>

<p>Mit zunehmender Bandbreite der Internetanschlüsse sind neben
bebilderten Blog-Artikeln auch ganz andere multimediale Präsentationen
möglich.
Sehr populär sind dank der Verbreitung des Apple iPod die sogenannten
<em>Podcasts</em> geworden. Dieses Kunstwort bezeichnet die Ausstrahlung
(<em>cast</em>) von Audioaufnahmen zu den i<em>Pods</em>. Blogger können so
ihre eigenen Hörspiele oder einfach nur Sprachaufzeichnungen als
gewöhnliche MP3-Datei aufnehmen und in ihr Blog stellen. Von dort kann sie
automatisch durch die iTunes-Software (und mittlerweile auch durch viele
andere RSS-Reader) heruntergeladen und auf den mobilen MP3-Player übertragen werden.</p>

<p>Die Idee ist einfach: Ähnlich wie ein Blog-Leser regelmäßig Ihre
Blog-Artikel durch RSS-Anwendungen beziehen kann, um diese Artikel zu
lesen, soll er unterwegs Ihre Neuigkeiten auch über seinen MP3-Player
hören können.</p>

<p>Innerhalb kurzer Zeit hat sich dank der gelangweilten Berufspendler so ein
großer Absatzmarkt für persönliche Hörspiel-Blogs gebildet. Da iTunes und
iPods leicht bedienbar sind, ist diese Verbreitungsweise auch für
kommerzielle Betreiber recht interessant geworden. Sogar Tageszeitungen
und TV-Magazine geben mittlerweile regelmäßig Podcasts heraus, und große
Portale wie <code>http://www.podcast.de</code> führen Übersichten über
Audio-Blogs.</p>

<p>Durch den Erfolg von YouTube ist auch Video-Blogging populärer geworden,
wenngleich aufgrund der geringen Verbreitung von portablen Videoplayern
deren Durchbruch im Blog-Sektor noch auf sich warten lässt.</p>

<p>Technisch gesehen ist der Vorgang des Podcastings relativ simpel: Sie
müssen lediglich eine MP3-Audiodatei erstellen, diese in den RSS-Feed
einbinden, und schon können Ihre Leser die Dateien automatisch beziehen.
Das Serendipity-Plugin <span class="mbold">Easy Podcast</span> macht diesen Vorgang für Sie
recht einfach, da es die Einbindung in den RSS-Feed selbständig
übernimmt.</p>

<p>Sobald Sie das Plugin installiert haben, können Sie eine MP3-Audiodatei
einfach in die Serendipity-Mediendatenbank hochladen und in einen
Blog-Artikel einbinden. Wenn Sie einen derartigen Blog-Artikel nun
speichern, erkennt das Plugin automatisch angehängte MP3-Dateien, bindet
einen Audioplayer in die Darstellung ein und fügt die MP3-Datei als
Podcast in den RSS-Feed ein (sogenannte <em>Enclosure</em>).</p>

<p>
<span class="tag-box invisible">
    <span class="inline-tag">QuickTime</span>
    <span class="inline-tag">Video</span>
    <span class="inline-tag">Flash</span>
    <span class="inline-tag">Audio</span>
</span>
Ihre Besucher können nun über Ihr Blog die MP3-Datei anhören. Abgesehen
von Audiodateien unterstützt das Plugin auch noch weitere Formate, die
jeweils abhängig vom Dateityp mit unterschiedlichen Browser-Applets
eingebunden werden können: QuickTime (<code>3gp, mov, mp3, mqv, qt</code>),
Windows Media Player (<code>avi, mpg, mpeg, wmv</code>), Flash (<code>swf</code>), Audio
(<code>mp3, ogg, m3u, pls, m4b</code>).</p>

<p>Grundsätzlich funktioniert das Podcast-Plugin dabei so, dass es Ihren
Blog-Artikel nach Links zu allen unterstützten Dateiformaten durchgeht
und abhängig von der Konfiguration des Plugins den benötigten Player
einbindet. Zu jedem unterstützten Dateiformat wird zudem auch das
notwendige Enclosure-Element in dem RSS-Feed hinzugefügt.</p>

<p>Das Podcast-Plugin bietet mehrere Konfigurationsoptionen an:</p>

<p class="desc">
<span class="item mbold">Player anzeigen</span><!-- menuitem -->
<span class="desc-info">Nur wenn Sie die Option <span class="mbold">Player anzeigen</span> aktivieren, wird das
Plugin automatisch Hyperlinks zu unterstützten Dateitypen so abändern,
dass der entsprechende Audio-/Video-Player anstelle des Links eingebunden
wird.</span>
</p>

<p class="desc">
<span class="item mbold">Player Größe anpassen, Breite, Höhe</span><!-- menuitem -->
<span class="desc-info">
    <span class="box">
        Wenn Sie diese Option aktivieren, versucht das Plugin die Bildgröße einer
        Videodatei herauszufinden. Die Breite und Höhe des eingebetteten Players
        wird dann an diese automatisch ermittelte Bildgröße angepasst.
        Ohne diese Größenanpassung wird der Player stets in der festgelegten Höhe
        und Breite (standardmäßig 200 x 200 Pixel) angezeigt.
    </span>

    <span class="box">
        Um die Bildgröße eines Videos herauszufinden, muss die
        <code>getid3</code>-Bibliothek installiert sein.[*]
        <span class="footnote"><i class="fa fa-info-circle"></i> Diese können Sie von
        <a href="http://www.getid3.org" target="_blank">http://www.getid3.org</a> herunterladen und in ein Unterverzeichnis
        namens <code>getid3</code> in das Serendipity-Verzeichnis <code>bundled-libs</code>
        entpacken.</span><!-- footnote --> Dieser Automatismus kann möglicherweise die Geschwindigkeit
        des Plugins spürbar verlangsamen, daher ist eine feste Player-Größe
        unter Umständen die bessere Wahl.
    </span>
</span>
</p>

<p class="desc">
<span class="item mbold">Ausrichtung</span><!-- menuitem -->
<span class="desc-info">Über das Ausklappfeld <span class="mbold">Ausrichtung</span> legen Sie fest, wie der Player
mit der Video- oder Audiodatei ausgerichtet werden soll (<span class="mbold">links,
rechts, zentriert, ohne Ausrichtung</span>).</span>
</p>

<p class="desc">
<span class="item mbold">Nur die erste Mediendatei an den Feed Eintrag hängen</span><!-- menuitem -->
<span class="desc-info">Laut Spezifikation unterstützt ein RSS-Feed nur eine einzelne Mediendatei pro
Artikel. Daher können Sie diese Option aktivieren, um auch beim Anhängen mehrerer
Mediendateien nur die erste davon in den Feed einzubinden.</span>
</p>

<p class="desc">
<span class="item mbold">Erweiterte Artikel-Attribute</span><!-- menuitem -->
<span class="desc-info">Hier tragen Sie eine Liste der <em>freien Artikeleigenschaften</em> ein,
falls Sie das Plugin <em>Erweiterte Eigenschaften für Artikel</em>
verwenden, um zusätzliche Podcasts oder Videocasts einzubinden (siehe
unten).</span>
</p>

<p class="desc">
<span class="item mbold">Einbettung der Medien aus erweiterten Artikel Attributen</span><!-- menuitem -->
<span class="desc-info">
    <span class="box">
        In dem Ausklappfeld <span class="mbold">Einbettung der Medien aus erweiterten Artikel
        Attributen</span> können Sie festlegen, ob ein Player mit der entsprechenden
        Datei oberhalb oder unterhalb des (erweiterten) Artikels angezeigt werden
        soll.
    </span>

    <span class="box">
        Wenn Sie die Platzierung über die Template-Datei <code>entries.tpl</code>
        (siehe unten) vornehmen möchten, können Sie die Option <span class="mbold">Nicht
        in den Artikel einfügen</span> beibehalten.
    </span>
</span>
</p>

<p class="desc">
<span class="item mbold">Quicktime, WindowsMediaPlayer, Flash, Audio Erweiterungen</span><!-- menuitem -->
<span class="desc-info">
    <span class="box">
        In diesen Feldern können Sie eintragen, welche Dateiendungen für welchen
        Player benutzt werden sollen.
    </span>

    <span class="box">
        Der HTML OBJECT/EMBED-Code für die jeweiligen Player befindet sich in der
        Datei <code>serendipity_event_podcast.php</code> in den Konstanten
        <code>PLUGIN_PODCAST_QUICKTIMEPLAYER</code>, <code>PLUGIN_PODCAST_WMPLAYER</code>,
        <code>PLUGIN_PODCAST_FLASHPLAYER</code> und <code>PLUGIN_PODCAST_MP3PLAYER</code>.
    </span>

    <span class="box">
        Wenn Sie einen eigenen HTML-Player (zB. für FLV-Dateien) einbinden
        wollen, können Sie diese Konstanten in der PHP-Datei anpassen.
    </span>
</span>
</p>

<p class="desc">
<span class="item mbold">Caching</span><!-- menuitem -->
<span class="desc-info">
    <span class="box">
        Wenn Sie die Option <span class="mbold">Caching</span> aktivieren, wird das Plugin zur
        automatischen Player-Erstellung die jeweiligen Audio-/Videodateien nur
        einmalig überprüfen und deren Metadaten zwischenspeichern.
    </span>

    <span class="box">
        Bei deaktiviertem Caching wird die Geschwindigkeit möglicherweise stark
        eingeschränkt, da die großen Videodateien jedesmal erneut geprüft werden.
    </span>
</span>
</p>

<p>Abgesehen von der automatischen Player-Einbindung bietet das Plugin
eine Integration mit dem Plugin <em>Erweiterte Eigenschaften für
Artikel</em> an. Mit Hilfe der <em>Freien Eigenschaften</em> können Sie einem
Artikel ein Feld namens <code>Podcast</code> hinzufügen, das Sie später in dem
Smarty-Template <code>entries.tpl</code> an gewünschter Stelle im Layout anzeigen
können. So wird eine Audio- oder Videodatei immer an einer festen Stelle
eingebunden, und ein Redakteur muss diese nicht innerhalb des Artikeltextes
platzieren. Konkret funktioniert dies so:</p>

<ul class="numList">
    <li>Über die Konfiguration des Plugins <em>Erweiterte
        Eigenschaften für Artikel</em> fügen Sie den Feldnamen <code>Podcast</code>
        ein.</li>
    <li>Wenn Sie nun einen neuen Artikel erstellen, sehen Sie in dem
        Abschnitt <span class="mbold">Erweiterte Optionen</span> ein neues Eingabefeld namens
    <span class="mbold">Podcast</span>. Dort können Sie entweder eine URL zu der
        MP3-Datei eingeben oder mittels des Buttons <span class="mbold">Mediendatenbank</span> eine
        Datei aus der Mediendatenbank auswählen.</li>
    <li>Nach dem Speichern eines Artikels ist nun ein Datenbankfeld mit
        der URL zu der Podcast-Datei angelegt worden. Diese Variable
        möchten Sie nun an einer festen Stelle des Artikel-Layouts
        ausgeben, beispielsweise immer am Ende des Artikels.</li>
    <li>Dazu bearbeiten Sie die Datei <code>entries.tpl</code> Ihres Templates
        und fügen beispielsweise unterhalb von <code class="smarty">{$entry.body}</code>
        Folgendes ein:
        <span id="pre-style"><code id="snippet-podcast" class="tpl">&lt;div&nbsp;class="serendipity_entry_body"&gt;<br>
&nbsp;&nbsp;{$entry.body}<br>
<br>
&nbsp;&nbsp;{if&nbsp;$entry.properties.ep_Podcast}<br>
&nbsp;&nbsp;&lt;p&gt;MP3-Podcast:<br>
&nbsp;&nbsp;&nbsp;&nbsp;&lt;object&nbsp;width="300"&nbsp;height="42"&gt;<br>
&nbsp;&nbsp;&nbsp;&nbsp;&lt;param&nbsp;name="src"&nbsp;value="{$entry.properties.ep_Podcast}"&gt;<br>
&nbsp;&nbsp;&nbsp;&nbsp;&lt;param&nbsp;name="autoplay"&nbsp;value="true"&gt;<br>
&nbsp;&nbsp;&nbsp;&nbsp;&lt;param&nbsp;name="controller"&nbsp;value="true"&gt;<br>
&nbsp;&nbsp;&nbsp;&nbsp;&lt;embed&nbsp;src="{$entry.properties.ep_Podcast}"&nbsp;autostart="true"&nbsp;<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;loop="false"&nbsp;&nbsp;width="300"&nbsp;height="42"&nbsp;controller="true"&gt;<br>
&nbsp;&nbsp;&nbsp;&nbsp;&lt;/embed&gt;<br>
&nbsp;&nbsp;&nbsp;&nbsp;&lt;/object&gt;&nbsp;&nbsp;<br>
&nbsp;&nbsp;&lt;/p&gt;<br>
&nbsp;&nbsp;{/if}<br>
&lt;/div&gt;</code></span><!-- snippet -->
    </li>
    <li>Dieser HTML-Code sorgt dafür, dass die von Ihnen eingetragene
        Audiodatei mittels Browser-Applets abspielbar wird. Zusätzliche
        Attribute wie <code>width="300"</code> geben die Breite der
        Zeitleiste für die Audiowiedergabe an.</li>
</ul>

<p>Diese Variante der Einbindung erfordert zwar mehr Anpassung, garantiert
dafür aber auch ein einheitliches Layout. So können Sie auch eigene
Videoplayer anstelle der QuickTime/WindowsMedia und anderen Player
einbinden.</p>

</section><!-- section.sub end -->

<section id="serendipity_event_popfetcher" class="sub">
<span class="u-toc">6.3.21 - POPfetcher: serendipity_event_popfetcher</span>

<h3 class="subsection" id="popfetcherserendipity_event_popfetcher">POPfetcher<br>serendipity_event_popfetcher</h3>

<p class="tagging invisible">
<span class="tag-box invisible">
    <span class="inline-tag">Moblog</span>
    <span class="inline-tag">Mobiles Bloggen</span>
    <span class="inline-tag">Popfetcher</span>
    <span class="inline-tag">E-Mail!abrufen</span>
</span>
<span class="label invisible" id="serendipity-event-popfetcher">serendipity-event-popfetcher</span>
<span class="tag-box invisible">
    <span class="inline-tag">Plugins!POPfetcher</span>
    <span class="inline-tag">Plugins!serendipity_event_popfetcher</span>
</span>
</p>

<p>Ähnlich wie das <em>RSS Aggregator</em>-Plugin dient der <em>POPfetcher</em>
dem Import von Artikeln in Ihr Blog.</p>

<p>Der <em>POPfetcher</em> kann automatisch einen E-Mail-Account mittels
POP-Server abfragen und E-Mails zu dieser Adresse als Blog-Eintrag
übernehmen. So können Sie unterwegs Artikel schreiben (<em>Moblogging</em>)
oder auch bequem vom Handy/PDA ohne Zugriff auf das Serendipity-Backend
das Blog mit Inhalten füllen.</p>

<p>
<span class="tag-box invisible">
    <span class="inline-tag">Cronjob</span>
</span>
Ähnlich wie das Aggregator-Plugin kann der POPfetcher sich systembedingt
nicht selber aufrufen. Daher müssen Sie den E-Mail-Abruf entweder manuell
ausführen oder über einen zentralen Cronjob. Auch das Serendipity
Cronjob-Plugin (siehe Seite <span class="pageref"><a href="#Cronjobsched">Cronjobsched</a></span>) unterstützt den
POPfetcher zum regelmäßigen Abruf von E-Mail-Konten.</p>

<p>Der POPfetcher kann einen gezielten E-Mail-Account abrufen, der dem
Plugin als <em>Empfängeradresse</em> dient. Obwohl das Plugin sich so
konfigurieren lässt, dass es nur die E-Mails bestimmter Absender
akzeptiert, sollten Sie die Empfängeradresse des Plugins streng
geheim halten. Ansonsten könnte es möglicherweise fremden Personen
gelingen, Artikel in Ihr Blog zu schleusen.</p>

<p>E-Mails können zudem Dateianhänge enthalten, die das Plugin automatisch
in Artikeln und der Mediendatenbank einträgt.</p>

<p>Da der Importvorgang des POPfetchers automatisiert abläuft, lassen sich
sämtliche Einstellungen ausschließlich über die Plugin-Konfiguration
vornehmen:</p>

<p class="desc">
<span class="item mbold">Plugin-Methode, Name für externen Aufruf</span><!-- menuitem -->
<span class="desc-info">
    <span class="box">
        Der POPfetcher kann auf zwei Arten dazu angewiesen werden, Ihr Postfach
        abzurufen: Zum einen die <span class="mbold">interne</span> Methode. Hierbei müssen Sie als
        eingeloggter Redakteur auf den Menüpunkt <span class="mbold">Aktivität <span class="icon arrow-right">→</span> POPfetcher</span>
        klicken, um den Abruf zu starten.
    </span>

    <span class="box">
        Wesentlich komfortabler ist jedoch die <span class="mbold">externe</span> Methode. Hierbei
        rufen Sie eine URL auf, die Sie über die Option <span class="mbold">Name für externen
        Aufruf</span> festgelegt haben. Standardmäßig wäre dies
        <code>http://www.example.com/serendipity/index.php?/plugin/popfetcher</code>.
        Die URL sollten Sie aus einer möglichst nicht zu ratenden
        Buchstabenfolge zusammensetzen, damit Ihre Blog-Besucher den Aufruf des
        POPfetchers nicht (böswillig) ausführen können. Das wäre zwar nicht
        weiter tragisch, da ein derart gestarteter Aufruf nur das von Ihnen
        festgelegte Postfach abruft, aber es könnte durchaus zu
        Performance-Problemen bei häufigem Aufruf kommen.
    </span>

    <span class="box">
        Die derart konfigurierte externe URL können Sie beispielsweise in einem
        Cronjob Ihres Servers automatisiert alle X Stunden aufrufen,
        beispielsweise mittels <code>wget 'http://www.example.com/serendipity/index.php?/plugin/popfetcher'</code>.
    </span>

    <span class="box">
        Wenn Sie das Plugin über das Serendipity-Cronjob-Plugin ausführen, ist
        diese Einstellung irrelevant.
    </span>
</span>
</p>

<p class="desc">
<span class="item mbold">Autor</span><!-- menuitem -->
<span class="desc-info">
    <span class="box">
        Die via E-Mail geschriebenen Artikel können vom Plugin nicht automatisch
        bestehenden Blog-Redakteuren zugeordnet werden. Daher müssen Sie über die
        Option <span class="mbold">Autor</span> festlegen, welchem Blog-Redakteur die Artikel
        zugewiesen werden sollen.
        Das bedeutet, dass sämtliche via E-Mail eingelieferten Artikel immer
        demselben Autor gehören werden, egal von welcher E-Mail-Adresse diese
        stammen.
    </span>

    <span class="box">
        Andernfalls können Sie in dem Auswahlfeld den Wert <span class="mbold">Lookup by email</span>
        wählen. Dann wird der Autor anhand seiner Absenderadresse zugewiesen, falls
        eine übereinstimmende Redakteursadresse in der Redakteursdatenbank vorliegt.
    </span>
</span>
</p>

<p class="desc">
<span class="item mbold">Mail Server, POP3 User, Passwort, POP3 port, APOP</span><!-- menuitem -->
<span class="desc-info">
    <span class="box">
        Tragen Sie in diese Felder die Zugangsdaten zu Ihrem E-Mail-Postfach ein.
        Wenn Sie einen Server mit POP3 über SSL benutzen wollen, müssen Sie den
        POP3-Port 995 eintragen, und die PHP-Installation des Webservers muss das
        <em>openssl</em>-Modul aktiviert haben.
    </span>

    <span class="box">
        Wenn Ihr Mailserver APOP unterstützt, kann das Passwort bei aktivierter
        <span class="mbold">APOP</span>-Option speziell verschlüsselt übertragen werden. Ohne
        APOP-Unterstützung wird ein E-Mail-Passwort im Klartext an den Server
        übertragen, was ein gewisses Sicherheitsrisiko darstellt.
    </span>
</span>
</p>

<p class="desc">
<span class="item mbold">E-Mail-Absender</span><!-- menuitem -->
<span class="desc-info">Wenn der POPfetcher nur E-Mails von einem bestimmten Absender akzeptieren
darf, können Sie diesen Absender im Feld <span class="mbold">E-Mail Absender</span>
eintragen. Hier müssen Sie die vollständige E-Mail-Adresse eintragen, wie
sie im <em>From-Header</em> der E-Mail erscheint. Die meisten E-Mail-Programme
geben solche Adressen in der Form <code>"{Garvin Hicking"
&lt;mail@example.com&gt;}</code> ein; die Adresse muss daher auch in exakt dieser
Notation im Eingabefeld eingetragen werden.</span>
</p>

<p class="desc">
<span class="item mbold">Kategorie</span><!-- menuitem -->
<span class="desc-info">
    <span class="box">
        Die via E-Mail abgeholten Einträge können Sie einer festen Blog-Kategorie
        zuordnen. Dazu tragen Sie im Feld <span class="mbold">Kategorie</span> die Kategorie-ID ein
        (siehe Seite <span class="pageref"><a href="#Kategorie-ID ermitteln">Kategorie-ID ermitteln</a></span>).
    </span>

    <span class="box">
        Sie können auch pro E-Mail eine eigene Kategorie festlegen, indem Sie im
        Betreff der E-Mail den Namen (nicht die ID!) der gewünschten Kategorie in
        eckigen Klammern voranstellen. Mehrere Kategorienamen können Sie mittels
        Semikolon (<code>;</code>) voneinander trennen, um den Eintrag jeder
        aufgeführten Kategorie zuzuordnen.
    </span>

    <span class="box">
        Eine E-Mail mit dem Betreff <code>[Sport] FC Köln in Regionalliga
        abgestiegen</code> würde einen Blog-Artikel mit dem Betreff <em>FC Köln in
        Regionalliga abgestiegen</em> in der Kategorie <em>Sport</em> veröffentlichen.
    </span>
</span>
</p>

<p class="desc">
<span class="item mbold">Upload-Verzeichnis</span><!-- menuitem -->
<span class="desc-info">
    <span class="box">
        Dateianhänge einer E-Mail können vom POPfetcher automatisch ausgegliedert
        und in einem Verzeichnis auf dem Webserver gespeichert werden. So können
        Sie beispielsweise Handyfotos leicht mittels E-Mail-Versand in Ihr Blog
        hochladen.
    </span>

    <span class="box">
        Das Zielverzeichnis für diese Dateien legen Sie mit
        <span class="mbold">Upload Verzeichnis</span> fest. Als Stammverzeichnis dient hierbei das in
        der zentralen Serendipity-Konfiguration festgelegte Upload-Verzeichnis
        (<code>uploads</code>). Wenn Sie hier ein Unterverzeichnis vorgeben
        (<code>Urlaubsbilder/</code>), müssen Sie sicherstellen, dass das gewünschte
        Verzeichnis bereits existiert. Das Verzeichnis können Sie über den
        Menüpunkt <span class="mbold">Mediendatenbank <span class="icon arrow-right">→</span> Verzeichnisse verwalten</span> oder mittels
        FTP anlegen.
    </span>
</span>
</p>

<p class="desc">
<span class="item mbold">Blog</span><!-- menuitem -->
<span class="desc-info">
    <span class="box">
        Nur wenn Sie die Option <span class="mbold">Blog</span> aktivieren, wird der Inhaltstext
        einer E-Mail als Blog-Artikel angelegt.
        Wenn Sie die Option deaktivieren, werden nur Dateianhänge der E-Mail in
        der Mediendatenbank gespeichert.
    </span>

    <span class="box">
        Diese Option ist besonders dann sinnvoll, wenn Sie den POPfetcher nur
        dazu verwenden wollen, um Bilder mittels Ihres Handys automatisch in das
        Blog hochzuladen und sie erst später in einen Blog-Artikel einzufügen.
    </span>
</span>
</p>

<p class="desc">
<span class="item mbold">Use plaintext attachments as entry body</span><!-- menuitem -->
<span class="desc-info">
    <span class="box">
        Einige E-Mail-Programme oder Handys verschicken die Texte einer E-Mail
        als Dateianhang. Damit diese Anhänge dekodiert und als
        Inhaltstext Ihrer Blog-Artikel verwendet werden können, müssen Sie die
        Option <span class="mbold">Use plaintext attachments as entry body</span> aktivieren.
    </span>

    <span class="box">
        Bei deaktivierter Option wird ein derartiger Dateianhang genauso wie eine
        PDF- oder Bilddatei behandelt und nur ein Link zu der Mediendatenbank
        für diese Datei in den Blog-Artikel eingebunden.
    </span>
</span>
</p>

<p class="desc">
<span class="item mbold">First text attachment is entry body, the rest extended</span><!-- menuitem -->
<span class="desc-info">
    <span class="box">
        Standardmäßig wird der POPfetcher alle Texte der E-Mail zusammenfassen
        und als Artikeltext für den Blog-Eintrag verwenden. Somit ist sämtlicher
        Text der E-Mail für den Besucher in der Blog-Übersichtsseite lesbar.
    </span>

    <span class="box">
        Wenn Sie jedoch längere E-Mails in den dafür vorgesehenen
        <em>erweiterten Eintrag</em> (siehe Seite <span class="pageref"><a href="#erweiterter-eintrag">erweiterter-eintrag</a></span>)
        aufteilen wollen, können Sie die Option <span class="mbold">First text attachment is
        entry body, the rest extended</span> aktivieren. Diese Option sorgt dafür, dass
        nur der erste Text-Dateianhang als Grundtext verwendet und alles
        Weitere im erweiterten Eintrag gespeichert wird.
    </span>

    <span class="box">
        Abgesehen von dieser Trennung durch Dateianhänge können Sie E-Mail-Texte
        auch mit einem manuellen Trennzeichen aufteilen, siehe die Option
        <span class="mbold">Spezieller Text, der Text und erweiterten Eintrag einer E-Mail
        aufteilt</span></span>
</span>
</p>

<p class="desc">
<span class="item mbold">Werbung entfernen</span><!-- menuitem -->
<span class="desc-info">
    <span class="box">
        Der Versand von E-Mails über das Handy führt oft dazu, dass
        Mobilfunkbetreiber wie O², E-Plus und die Telekom Werbung in die E-Mail
        einfügen. Solche Werbung ist in Blog-Artikeln unerwünscht.
    </span>

    <span class="box">
        Die Option <span class="mbold">Werbung entfernen</span> kann automatisch die Werbung aus
        Mails von T-Mobile und O2 entfernen. Da die Art der Werbeeinbindung jedoch in
        Zukunft variieren könnte, ist diese Option möglicherweise nicht immer
        einsatzfähig.
    </span>
</span>
</p>

<p class="desc">
<span class="item mbold">Text nach speziellen Buchstaben abschneiden</span><!-- menuitem -->
<span class="desc-info">
    <span class="box">
        Etwas wirksamer im Umgang mit zu entfernender Werbung ist die Option
        <span class="mbold">Text nach speziellen Buchstaben abschneiden</span>. Tragen Sie hier eine
        beliebige Zeichenkette ein, die Sie auch später in Ihren E-Mails
        verwenden, und der POPfetcher wird alle Texte nach der konfigurierten
        Zeichenkette löschen.
    </span>

    <span class="box">
        Wenn Sie hier beispielsweise den Text <em>overandout</em> eintragen und
        Ihre Handy-E-Mail später ebenfalls mit <em>overandout</em> beenden, kann
        sämtliche Werbung, die der Mobilfunkbetreiber dahinter einfügt, einfach
        ignoriert werden.
    </span>

    <span class="box">
        Sie sollten hier nur Text eintragen, der sonst in Ihrer E-Mail nicht
        vorkommt, um Textverlust zu vermeiden.
    </span>
</span>
</p>

<p class="desc">
<span class="item mbold">Entferne alle HTML-Tags aus den Mails</span><!-- menuitem -->
<span class="desc-info">Grundsätzlich können Sie auch HTML-E-Mails an den POPfetcher verschicken,
der diese Formatierung auch ins Blog übernimmt. Da dies jedoch auch zu
potenziellen Sicherheitslöchern durch JavaScript führen kann, sollten Sie
die HTML-Tags mit dieser Option entfernen, wenn Sie die Inhalte einer
E-Mail nicht völlig kontrollieren können.</span>
</p>

<p class="desc">
<span class="item mbold">Spezieller Text, der Text und erweiterten Eintrag einer E-Mail aufteilt</span><!-- menuitem -->
<span class="desc-info">
    <span class="box">
        Wenn Sie eine längere E-Mail in Artikeltext und erweiterten Eintrag
        aufteilen wollen, können Sie ein beliebiges Trennzeichen formulieren.
        Sobald dieses im Text Ihrer E-Mail auftaucht, wird sämtlicher Folgetext in
        den <em>erweiterten Eintrag</em> des Blog-Artikels übernommen.
    </span>

    <span class="box">
        Achten Sie darauf, dass das hier festgelegte Wort einmalig in der E-Mail
        vorkommen sollte. Wenn Sie hier beispielsweise <em>xxx-TRENNER-xxx</em>
        festlegen, könnten Sie eine E-Mail wie diese schreiben:
    </span>

    <span class="box">
        <span id="pre-style"><code class="html">
            Liebe Blog-Leser,<br>
            <br>
            hier meldet sich eure Uschi vom Hauskatzenzüchterverein. Gerade<br>
            bin ich auf der Showbühne und schaue begeistert dem Auftritt der<br>
            Pussy Cat Dolls zu. Meinen ausführlichen Messebericht findet ihr,<br>
            wenn ihr auf "Weiterlesen" klickt!<br>
            <br>
            xxx-TRENNER-xxx<br>
            <br>
            Die schönste Katze der diesjährigen Züchtung, wenn nicht die<br>
            schönste Katze seit Bestehen unserer Hausmesse, war diesmal der<br>
            Kater "Giesbert" aus NRW ...
        </code></span>
    </span>
</span>
</p>

<p class="desc">
<span class="item mbold">Define a string which indicates the text to capture</span><!-- menuitem -->
<span class="desc-info">
    <span class="box">
        Wenn Ihre E-Mails besonders viel Werbung oder HTML-Dateianhänge enthalten,
        könnte der POPfetcher möglicherweise überfordert damit sein, alle Inhalte
        korrekt zu erkennen.
    </span>

    <span class="box">
        Als letzten Ausweg können Sie daher eine besondere Zeichenkette im
        Eingabefeld <span class="mbold">Define a string which indicates the text to capture</span>
        festlegen. In Ihrer E-Mail können Sie dann diese Zeichenkette <em>vor</em>
        und <em>hinter</em> den zu bloggenden Text schreiben. Alles dazwischen
        wird vom POPfetcher als Text für den Blog-Artikel verwendet.
    </span>

    <span class="box">
        Auch hier sollten Sie sicherstellen, dass die Zeichenkette in Ihrer
        E-Mail einmalig ist.
    </span>
</span>
</p>

<p class="desc">
<span class="item mbold">Publizieren</span><!-- menuitem -->
<span class="desc-info">
    <span class="box">
        Mit der Option <span class="mbold">Publizieren</span> legen Sie fest, ob ein via POPfetcher
        eingestellter Artikel direkt veröffentlicht oder nur als Entwurf
        gespeichert wird.
    </span>

    <span class="box">
        Da aufgrund der vielen unterschiedlichen E-Mail-Formate nie
        sichergestellt werden kann, ob die spätere E-Mail exakt Ihren
        Vorstellungen entspricht, kann es unter Umständen besser sein, einen
        Artikel vor der Veröffentlichung im Blog durch einen Redakteur prüfen zu
        lassen.
    </span>

    <span class="box">
        Zwar verlieren Sie so die Möglichkeit, spontan unterwegs eine E-Mail
        online ins Blog zu stellen, aber Sie gewinnen so die absolute Kontrolle über
        die Inhalte Ihres Blogs.
    </span>
</span>
</p>

<p class="desc">
<span class="item mbold">Kommentare und Trackbacks dieses Eintrags werden moderiert,</span><!-- menuitem -->
<span class="item mbold">Kommentare für diesen Eintrag zulassen</span><!-- menuitem -->
<span class="desc-info">Mit diesen beiden Optionen legen Sie fest, ob ein via POPfetcher
veröffentlichter Artikel von Besuchern kommentiert werden darf und ob
diese Kommentare standardmäßig moderiert werden sollen (siehe Kapitel
<span class="reference">personal-commentnotifications</span> ab Seite
<span class="pageref"><a href="#personal-commentnotifications">personal-commentnotifications</a></span>).</span>
</p>

<p class="desc">
<span class="item mbold">Mail löschen</span><!-- menuitem -->
<span class="desc-info">
    <span class="box">
        Wenn der POPfetcher eine E-Mail abgeholt hat, wird sie standardmäßig vom
        Server gelöscht, damit sie beim nächsten Importvorgang nicht erneut
        gelesen wird.
    </span>

    <span class="box">
        Zu Testzwecken ist es jedoch praktisch, unterschiedliche
        Plugin-Einstellungen mit derselben E-Mail auszuprobieren, um die optimalen
        Einstellungen zu finden. Während dieser Testphase sollten Sie E-Mails
        nicht vom Server löschen.
    </span>
</span>
</p>

<p class="desc">
<span class="item mbold">Timeout</span><!-- menuitem -->
<span class="desc-info">Mit der Option <span class="mbold">Timeout</span> legen Sie eine Zeitspanne in Sekunden fest,
nach deren Ablauf der POPfetcher eine fehlgeschlagene Verbindung zum
Mailserver abbrechen soll.</span>
</p>

<p>&nbsp;</p><!-- separator -->

<p>Das Plugin ist speziell auf die Verarbeitung von E-Mails der Provider O²,
T-Mobile, Sprint PCS, Cingular und Verizon optimiert. Dateianhänge mit
den Endungen <code>pif, vbs, scr, bat, com, exe</code> werden vom POPfetcher
ignoriert, da es sich dabei meist um E-Mail-Viren handelt. Diese Dateiliste ist
in der Variable <code>$list_virus</code> in der Datei
<code>serendipity_event_popfetcher.php</code> manuell erweiterbar.</p>

<p>Als Bilder erkennt das Plugin die Dateiendungen <code>gif, jpg, png, jpeg</code>
(Variable <code>$list_imageext</code>) an, als Content-Type von Dateianhängen
wird <code>jpg, jpeg, gif, png, x-png, jpeg</code> (Variable
<code>$list_imagetype</code>) akzeptiert. Dateien mit der Endung <code>smil</code>
(Variable <code>$list_ignore</code>) ignoriert das Plugin.</p>

<p>Um gegen neue Arten von E-Mail-Werbung oder problematische E-Mail-Formate
vorzugehen, können Entwickler über die Variable <code>$debug_file</code> testweise
eine E-Mail-Dumpdatei einlesen und deren Import implementieren. Sie können gerne
im Serendipity-Forum nachfragen, wenn Sie Probleme mit dem Format Ihrer
E-Mails haben.</p>

</section><!-- section.sub end -->

<section id="serendipity_event_searchhighlight" class="sub">
<span class="u-toc">6.3.22 - Hebe Suchwörter hervor: serendipity_event_searchhighlight</span>

<h3 class="subsection" id="hebe-suchwörter-hervorserendipity_event_searchhighlight">Hebe Suchwörter hervor<br>serendipity_event_searchhighlight</h3>

<p class="tagging invisible">
<span class="tag-box invisible">
    <span class="inline-tag">Plugins!Hebe Suchwörter hervor</span>
    <span class="inline-tag">Plugins!serendipity_event_searchhighlight</span>
</span>
</p>

<p class="tagging invisible">
<span class="tag-box invisible">
    <span class="inline-tag">Suchwörter</span>
    <span class="inline-tag">Suchmaschinen</span>
</span>
</p>

<p>Wenn ein Besucher Ihr Blog mittels einer Suchmaschine gefunden hat und
aufruft, wird von den Suchmaschinen der Suchbegriff übermittelt. Diesen
Suchbegriff kann das Plugin ermitteln und in Ihren Beiträgen hervorheben.
So kann ein Besucher dann komfortabel sehen, wo der ursprünglich
benutzte Suchbegriff in Ihrem Artikel auftaucht.</p>

<p>Das Plugin kann Suchwörter folgender Suchmaschinen ermitteln und
hervorheben: Google, Yahoo, Lycos, MSN, Altavista, AOL.de und AOL.com.
Die Art der Hervorhebung können Sie mittels der CSS-Klasse
<code>.serendipity_searchQuery</code> beeinflussen (siehe Kapitel <span class="reference">template-css</span>
ab Seite <span class="pageref"><a href="#template-css">template-css</a></span>).</p>

<p>Das Plugin setzt die Smarty-Sondervariable
<span class="tag-box invisible">
    <span class="inline-tag">Template-Variablen!\$smarty.SESSION.search_referer</span>
</span>
<code class="item smarty">{$smarty.SESSION.search_referer}</code>
auf die URL der Suchmaschine, von welcher der aktuelle Besucher kam. Wenn der
Besucher über eine Suchmaschine auf das Blog gelangte, ist weiterhin die Variable
<span class="tag-box invisible">
    <span class="inline-tag">Template-Variablen!\$smarty.SESSION.is_searchengine_visitor</span>
</span>
<code class="item smarty">{$smarty.SESSION.is_searchengine_visitor}</code> auf <code>true</code> gesetzt. So
können Sie innerhalb Ihrer Template-Dateien individuelle Ausgaben darstellen,
falls der Besucher über eine Suchmaschine auf Ihre Seite gelangte. Für solche
Besucher sind zB. einleitende Worte zu Ihrem Blog und weiteren interessanten
Artikeln sehr hilfreich.</p>

</section><!-- section.sub end -->

<section id="serendipity_event_sidebarhider" class="sub">
<span class="u-toc">6.3.23 - Seitenleisten ein-/ausklappbar machen: serendipity_event_sidebarhider</span>

<h3 class="subsection" id="seitenleisten-ein-ausklappbar-machenserendipity_event_sidebarhid">Seitenleisten ein-/ausklappbar machen<br>serendipity_event_sidebarhider</h3>

<p class="tagging invisible">
<span class="tag-box invisible">
    <span class="inline-tag">Plugins!Seitenleisten!ein-/ausklappbar machen</span>
    <span class="inline-tag">Plugins!Sidebarhider</span>
    <span class="inline-tag">Plugins!serendipity_event_sidebarhider</span>
    <span class="inline-tag">Seitenleisten!verstecken</span>
    <span class="inline-tag">Seitenleisten-Plugins!verändern</span>
</span>
</p>

<p class="tagging invisible">
<span class="label invisible" id="sidebarhider">sidebarhider</span>
<span class="tag-box invisible">
    <span class="inline-tag">Seitenleisten</span>
    <span class="inline-tag">Verstecken!Seitenleisten-Plugins</span>
</span>
</p>

<p>Als <em>Seitenleiste</em> gelten in Serendipity die Bereiche des Frontends,
in denen Ihre Seitenleisten-Plugins dargestellt werden. Meist sind sie
links und/oder rechts neben den Artikeln eingebunden.</p>

<p>Mit dem Plugin <em>Seitenleisten ein-/ausklappbar machen</em> können Sie
zwei Dinge für jedes Element der Seitenleiste anpassen. Zum einen können
Sie Inhalte der jeweiligen Seitenleisten-Plugin-Container ausblenden, so
dass sie der Benutzer durch einen Klick auf einen Button wieder
einblenden kann. Dadurch sparen Sie einiges an Bildschirmplatz, jedoch müssen
die Besucher dann gezielt Seitenleisten-Container ausklappen, um deren Inhalt
zu sehen.</p>

<p>Zum anderen können Sie bestimmte Elemente in gewissen Fällen vollständig
ausblenden.</p>

<p>Sobald das Plugin installiert wurde, bietet es einen neuen Menüpunkt im
Backend-Bereich <span class="mbold">Aktivität
<span class="icon arrow-right">→</span> Seitenleisten verwalten</span> an.
Zugleich ändert es etwas in der Darstellungsart der Seitenleisten in Ihrem
Frontend -- dort ist für jedes Seitenleisten-Plugin ein kleiner Link
<span class="mbold">-</span> bzw. <span class="mbold">+</span> hinzugekommen.
Dank eines JavaScripts kann ein Besucher nun auf diesen Link klicken, und das
entsprechende Plugin wird ein- bzw. ausgeblendet, um weniger Platz zu belegen.
Beachten Sie, dass diese Icons/Links nur dann verfügbar sind, wenn Ihr
gewähltes Template die CSS-Klassen des Standard-Templates benutzt. Ohne diese
übereinstimmende Benennung kann das JavaScript nicht aktiv werden (Details siehe Seite
<span class="pageref"><a href="#sidebar-css">sidebar-css</a></span>).</p>

<p>Über das neue Menü <span class="mbold">Aktivität
<span class="icon arrow-right">→</span> Seitenleisten verwalten</span>
im Backend können Sie nun detailliert einstellen, wie die Seitenleisten-Plugins
versteckt werden sollen. Wenn Sie diesen Bereich betreten, sehen Sie eine
Oberfläche, die an die <span class="mbold">Pluginverwaltung</span> angelehnt ist. Für jede
Seitenleiste des Templates werden die dort eingerichteten
Seitenleisten-Plugins in der eingestellten Reihenfolge angezeigt.</p>

<p>Standardmäßig sind alle Seitenleistenelemente ausgeklappt, das heißt,
der Besucher muss sie von sich aus verstecken. Mithilfe der Oberfläche
können Sie jedoch auch auswählen, welche Seitenleisten-Plugins
standardmäßig versteckt sein sollen, indem Sie für jedes gewünschte
Plugin die Auswahlbox <span class="mbold">Versteckt</span> aktivieren.</p>

<p>Unterhalb dieser Auswahlbox befinden sich weitere Einstellungsmöglichkeiten
für die Sichtbarkeit des jeweiligen Seitenleistenelements. So können Sie auch
festlegen, ob ein Plugin nur für spezielle Benutzer angezeigt werden soll. Wenn Sie
die Option <span class="mbold">Jeder Besucher</span> auswählen, kann jeder Besucher das
jeweilige Element sehen. Bei Aktivierung der Option <span class="mbold">Nur Mitglieder</span>
wird das Seitenleisten-Plugin nur Redakteuren angezeigt, die sich vorher
im Backend eingeloggt haben. Die Option <span class="mbold">Nur ich</span> legt fest, dass
ein Seitenleisten-Plugin nur für den Redakteur angezeigt wird, der gerade
im Backend die Änderungen vornimmt (also Sie selbst). Jeder Redakteur, der
Rechte zum Erstellen von Einträgen hat, darf standardmäßig die Elemente der
Seitenleisten verwalten. Wollen Sie dies nur einigen Redakteuren
genehmigen, müssen Sie in der Gruppenverwaltung das Plugin über
den Event-Hook <code>backend_sidebar_entries_event_display_sidebarhider</code>
für andere Benutzergruppen als die gewünschten verbieten (siehe Seite
<span class="pageref"><a href="#verboteneereignisse">verboteneereignisse</a></span>).</p>

<p>Ein Seitenleisten-Element kann so konfiguriert werden, dass es nur
für Mitglieder einer gewählten Benutzergruppe dargestellt wird. In der
Mehrfach-Auswahlbox zum Konfigurationspunkt <span class="mbold">Gruppe</span> müssen Sie
daher alle Benutzergruppen wählen, für die ein Seitenleisten-Plugin
angezeigt werden soll. Wählen Sie keine Gruppe aus, wird ein Plugin
für alle Benutzergruppen angezeigt. Sobald Sie hier eine Gruppe
auswählen, entspricht dies automatisch der Einstellung <span class="mbold">Nur
Mitglieder</span>, da nicht eingeloggte Benutzer keiner Gruppe angehören und
somit ein Plugins niemals sehen.</p>

<p>Abgesehen vom Verstecken eines Plugins in Abhängigkeit vom Status eines
Besuchers können Sie ein Seitenleisten-Plugin auch dann verstecken, wenn
ein Besucher eine spezielle Kategorie des Blogs ansieht. Auch hier gilt
wieder, dass Sie bei der Benutzung der <span class="mbold">Nur Kategorien</span>-Option
alle Kategorien auswählen müssen, bei denen ein Seitenleistenelement angezeigt
werden soll. Die Sonderoption <span class="mbold">Alle Kategorien</span> ist
standardmäßig vorausgewählt, so dass ein Seitenleisten-Plugin immer angezeigt
wird. <span class="mbold">&lt;Front Page&gt;</span> bezieht sich auf die
Standard-Artikelübersicht von Serendipity, in der ein Besucher noch keine
besondere Einschränkung zu einer gewählten Kategorie getroffen hat.</p>

<p>Sobald ein Plugin über die Optionen <span class="mbold">Nur Mitglieder/Nur
ich/Gruppe/Nur Kategorien</span> ausgeblendet wird, kann ein Besucher im
Frontend das Plugin (abhängig von seinem Status) nicht mehr sehen. Es
wird also nicht einfach nur standardmäßig eingeklappt, sondern es wird
vollständig aus der Ausgabe entfernt.</p>

<p>Diese Möglichkeit können Sie gezielt benutzen, um gewisse
HTML-Klötze oder andere Seitenleistenelemente kategoriebezogen
anzuzeigen oder bestimmte Informationen nur Redakteuren zugänglich zu
machen.</p>

<p>Nachdem Sie Änderungen an der Sichtbarkeit der Plugins vorgenommen haben,
müssen Sie diese über den Button <span class="mbold">Änderungen am Layout speichern</span>
aktivieren. Wenn Sie später einmal die Reihenfolge der Plugins über die
übliche Plugin-Verwaltung ändern, müssen Sie das Layout der eingeklappten
Seitenleisten-Plugins erneut anpassen. Die Seitenleistenelemente werden anhand
ihrer Positionsindizes versteckt. Wenn Sie die Position des ersten und
zweiten Plugins vertauschen, würde nach wie vor das erste Seitenleistenelement
versteckt werden, anstelle des eigentlich logischen zweiten Plugins. Nur
durch eine entsprechende Einstellung über die Layout-Verwaltung des
<em>Seitenleisten-verstecken</em>-Plugins kann dies korrigiert werden.</p>

<p>Die Funktionalität des Ein- und Ausklappens eines Seitenleisten-Plugins
kann über die globale Konfiguration des Plugins beinflusst werden. Wenn
Sie diese JavaScript-Funktionalität nicht benötigen, sondern nur das
Anzeigen/Verstecken von Seitenleisten-Plugins nutzen möchten, können Sie
dies gezielt über die Option <span class="mbold">Seitenleisten ein-/ausklappbar machen</span>
einstellen.</p>

<p class="tagging invisible">
<span class="tag-box invisible">
    <span class="inline-tag">Template-Dateien!sidebar.tpl</span>
</span>
</p>

<p>Die weiteren Konfigurationsoptionen können Sie benutzen, um die Gestaltung
des Ein- und Ausklappens an Ihr Template anzupassen. Damit dies überhaupt
klappen kann, muss die Smarty-Template-Datei <code>sidebar.tpl</code> Ihres Templates
von dem Standard-Template abgeleitet sein. Das JavaScript benötigt einen
HTML-Container mit der CSS-Klasse <code>.serendipitySideBarItem</code>, in dem
die jeweiligen Seitenleistenelemente eingebunden sein müssen. Jedes
Seitenleistenelement muss den Titel des Plugins in einem HTML-Container
mit der CSS-Klasse <code>.serendipitySideBarTitle</code> einbinden, und den
Inhalt mit der CSS-Klasse <code>.serendipitySideBarContent</code>. Schauen Sie
sich die Datei <code>templates/default/sidebar.tpl</code> für ein Beispiel
dieser Gestaltung an. Das JavaScript kann ebenfalls standardmäßig nur mit einer
linken und einer rechten Seitenleiste umgehen, die jeweils in einem
HTML-Container mit der ID <code>#serendipityLeftSideBar</code> und
<code>#serendipityRightSideBar</code> eingebunden sind. Wenn Ihr Template
andere Seitenleisten einbindet, müssen Sie gegebenenfalls die Datei
<code>sidebarhider.js</code> des Plugins anpassen und die Funktion
<code>sideBarHideRun()</code> mit Ihren eigenen Seitenleisten-Containernamen
erweitern.</p>

<p>Sobald durch das JavaScript ein Seitenleisten-Element versteckt wird,
weist es einen speziellen CSS-Stil zu, den Sie über die
Konfigurationsoptionen des Plugins manuell beeinflussen können.</p>

<p>Anstelle der HTML-Links <span class="mbold">+</span> und
<span class="mbold">-</span> können Sie auch beliebigen
anderen HTML-Code einbinden, zum Beispiel eine Grafik oder einen
ausführlichen Text wie <code>Verstecken</code> und <code>Anzeigen</code>.</p>

<p>Sollten Ihnen die Optionen dieses Plugins nicht ausreichen, um ein
Seitenleisten-Plugin abhängig vom umgebenden Inhalt zu verstecken, müssen
Sie dies manuell mittels Smarty-Syntax in der <code>sidebar.tpl</code> lösen.
Dort können Sie auch beispielsweise Abfragen einfügen, so dass bestimmte
Seitenleistenelemente für statische Seiten nicht angezeigt werden.
Generelle Informationen zu diesen Anpassungsmöglichkeiten finden Sie ab Seite
<span class="pageref"><a href="#Smarty-Templates">Smarty-Templates</a></span>.</p>

</section><!-- section.sub end -->

<section id="serendipity_event_spamblock_bayes" class="sub">
<span class="u-toc">6.3.24 - Spamschutz Bayes: serendipity_event_spamblock_bayes</span>

<h3 class="subsection" id="spamschutz-bayesserendipity_event_spamblock_bayes">Spamschutz Bayes<br>serendipity_event_spamblock_bayes</h3>

<p class="tagging invisible">
<span class="tag-box invisible">
    <span class="inline-tag">Plugins!Spamschutz Bayes</span>
    <span class="inline-tag">Plugins!serendipity_event_spamblock_bayes</span>
</span>
<span class="label invisible" id="spamschutz-bayes-plugin">spamschutz-bayes-plugin</span>
<span class="tag-box invisible">
    <span class="inline-tag">spamblock-bayes</span>
    <span class="inline-tag">Plugins!spamschutz-bayes</span>
</span>
</p>

<p>Filtert Kommentare mittels eines lernenden Algorithmus. Es ist sinnvoll dieses Plugin nach der
Spamschutz Biene und dem default Spamblock Plugin, als drittes der Spam-Abwehr-Schutz-Plugins in der
Plugin-Liste zu setzen, da es wertvolle Ressourcen bindet und einen sensiblen Lernfaktor hat.
Würde es etwa auf die über 90 Prozent tumben Spambots losgelassen, wären viele Worte später als Spam markiert,
die für valide Kommentare gebräuchlich sind.</p>

<p>
    <span class="box">
        Das Spamblock-Bayes-Plugin versucht über statistische Analyse der in
        Kommentaren vorkommenden Wörtern festzustellen, ob ein neuer Kommentar
        Spam oder ein valider Kommentar (Ham) ist.
    </span>

    <span class="box">
        Dafür wird lokal eine Datenbank aufgebaut, das Plugin lernt aus den
        Bewertungen vorhandener Kommentare.
    </span>

    <span class="box">
        <span class="item mbold">Spamfaktor</span>
        <span class="sub-box">
            Zentraler Gedanke ist die Zuweisung eines Spamfaktors zu Kommentaren.
            Dieser Faktor geht von 0% (kein Spam) bis 100% (definitiv Spam). Er
            sinkt bzw. steigt durch das Bewerten ähnlicher Kommentare. 
        </span>
    </span>

    <span class="box">
        <span class="item mbold">Benutzung</span>
        <span class="sub-box">
            Auf der "Kommentare"-Seite werden durch die Installation des Plugins
            zwei Buttons zu jedem Kommentar hinzugefügt (Spam, Ham) und eine
            Prozentanzeige. Mit den Buttons werden Kommentare bewertet, als Spam
            markierte Kommentare werden in den Papierkorb geschoben (oder direkt
            gelöscht, wenn dieser deaktiviert ist). Die Prozentanzeige zeigt den
            Spamfaktor des Kommentars an. 
        </span>
    </span>

    <span class="box">
        <span class="item mbold">Erweitertes Menü</span>
        <span class="sub-box">
            In der Seitenleiste des Adminbereiches wird ein Menü namens
            "Spamschutz (Bayes)" angelegt. Dieses ist ein erweitertes Menü, das nicht
            für die Grundfunktionen des Plugins notwendig ist.
        </span>
    </span>

    <span class="box">
        <span class="sub-box">
            Im Folgenden wird die Funktion der Untermenüs erklärt:

            <span class="box mda-box">

                <span class="box"><span class="mbold">Lernen</span>
                    <span class="sub-box">
                        Das Formular beinhaltet alle Felder, die ein Kommentar beinhalten kann,
                        so wie den Kommentartext oder eine URL. Hier können zielgerichtet Wörter
                        eingegeben und gelernt werden. Dies dient der Feinjustierung des Filters,
                        sollte aber selten nötig sein.
                    </span>
                </span>

                <span class="box"><span class="mbold">Datenbank</span>
                    <span class="sub-box">
                        In den beiden Tabellen wird nur eine Übersicht über den Datenbankinhalt
                        vermittelt. Das Menü an der Seite bietet dagegen wichtige Funktionen.
                        <span class="box">
                            <span class="mbold">Datenbank erstellen</span>
                            <span class="sub-box">
                                Erstellt die Datenbank, falls sie gelöscht wurde oder bei der
                                Installation nicht richtig angelegt wurde
                            </span>
                            <span class="mbold">Altes einlernen</span>
                            <span class="sub-box">
                                Lernt die vorhandenen Kommentare als Ham und den Inhalt der Spamlogs als Spam.
                            </span>
                            <span class="mbold">Datenbank löschen</span>
                            <span class="sub-box">
                                Löscht die gesamte Datenbank. Dies kann sinnvoll sein, wenn z.B. im
                                Blog die Sprache gewechselt wurde oder mehrmals Begriffe falsch
                                eingelernt wurden.
                            </span>
                        </span>
                    </span>
                </span>

                <span class="box"><span class="mbold">Papierkorb</span>
                    <span class="sub-box">
                        Gelöschte oder gar nicht erst angenommene Kommentare können hier
                        endgültig gelöscht oder wiederhergestellt werden.
                    </span>
                </span>

                <span class="box"><span class="mbold">Analyse</span>
                    <span class="sub-box">
                        Spamblock-Bayes bewertet jeden Bestandteil eines Kommentars separat.
                        Dies wird durch die Prozentanzeige in der Kommentarübersicht nicht
                        dargestellt, hier jedoch können die Einzelbewertungen angesehen werden.
                    </span>
                </span>

            </span><!-- box mda-box end -->

        </span><!-- sub-box end -->
    </span><!-- box end -->

</p>

<p>Das SPAM-Bayes-Plugin bietet folgende Konfigurationsoptionen an:</p>

<p class="desc">
<span class="item mbold">Spambehandlung</span><!-- menuitem -->
<span class="desc-info">
    <span class="box">
        Der Bayes Spamfilter ist ein statistischer Filter zur Klassifizierung
        unerwünschter E-Mail-Nachrichten (Spam) durch den naiven Bayes-Klassifikator.
        Er filtert Kommentare mittels eines lernenden Algorithmus und ist daher
        zu den ressourcenintensiven Plugins zu rechnen. Das Feld Spambehandlung
        wählt, was mit den zu untersuchenden Kommentaren geschehen soll.
    </span>

    <span class="box">
        Mögliche Auswahl ist: Moderieren, Abweisen, Manuelle Grenzen
    </span>
</span>
</p>

<p class="desc">
<span class="item mbold">Manuelle Moderationsgrenze</span><!-- menuitem -->
<span class="desc-info">
    <span class="box">
        Wenn die Option "Spambehandlung" auf "Manuelle Grenzen" gesetzt wird:
        Ab welchem Spamfaktor soll moderiert werden? (in %)
    </span>

    <span class="box">
        Default Wert: 70
    </span>
</span>
</p>

<p class="desc">
<span class="item mbold">Manuelle Abweisungsgrenze</span><!-- menuitem -->
<span class="desc-info">
    <span class="box">
        Wenn die Option "Spambehandlung" auf "Manuelle Grenzen" gesetzt wird:
        Ab welchem Spamfaktor soll abgewiesen werden? (in %)
    </span>

    <span class="box">
        Default Wert: 90
    </span>
</span>
</p>

<p class="desc">
<span class="item mbold">Lernen</span><!-- menuitem -->
<span class="desc-info">
    <span class="box">
        (boolean) Ja Nein
    </span>

    <span class="box">
        Sehr eindeutige Spam-Kommentare werden direkt als Spam gelernt.
        So können schleichend stattfindende Modifikationen am Spam automatisch erfasst werden.
    </span>
</span>
</p>

<p class="desc">
<span class="item mbold">Ignorieren</span><!-- menuitem -->
<span class="desc-info">
    <span class="box">
        Gibt Kommentarfelder an, die ignoriert werden sollen.
    </span>

    <span class="box">
        Mögliche Felder sind: ip, referer, author, body, email, url. Beispiel: "ip, referer".
    </span>
</span>
</p>

<p class="desc">
<span class="item mbold">Menü</span><!-- menuitem -->
<span class="desc-info">
    <span class="box">
        (boolean) Ja Nein
    </span>

    <span class="box">
        Verlinkt das erweiterte Menü im Adminbereich.
    </span>
</span>
</p>

<p class="desc">
<span class="item mbold">Papierkorb</span><!-- menuitem -->
<span class="desc-info">
    <span class="box">
        (boolean) Ja Nein
    </span>

    <span class="box">
        Sollen abgewiesene Kommentare im Papierkorb gespeichert werden?
    </span>
</span>
</p>

<p class="desc">
<span class="item mbold">Papierkorbgrenze</span><!-- menuitem -->
<span class="desc-info">
    <span class="box">
        Ab welcher Bewertung soll ein Kommentar direkt gelöscht statt in den Papierkorb geschoben werden?
    </span>

    <span class="box">
        Beispiel: 98
    </span>
</span>
</p>

<p class="desc">
<span class="item mbold">Papierkorb komplett leeren</span><!-- menuitem -->
<span class="desc-info">
    <span class="box">
        (boolean) Ja Nein
    </span>

    <span class="box">
        Lösche alle Kommentare im Papierkorb, nicht nur die auf der momentanen Seite.
    </span>
</span>
</p>

<p class="desc">
<span class="item mbold">Plugin-Pfad</span><!-- menuitem -->
<span class="desc-info">
    <span class="box">
        Wird hier der Pluginpfad angegeben wird dieser nicht mehr dynamisch ermittelt,
        was einen deutlichen Leistungsgewinn einbringt.
        Beispiel: http://www.example.com/plugins/serendipity_event_spamblock_bayes/ (das / am Ende ist wichtig).
    </span>

    <span class="box">

    </span>
</span>
</p>

<p class="desc">
<span class="item mbold">Protokollierung von fehlgeschlagenen Kommentaren</span><!-- menuitem -->
<span class="desc-info">
    <span class="box">
        Die Protokollierung von fehlgeschlagenen Kommentaren und deren Gründen kann auf mehrere Arten durchgeführt werden.
    </span>

    <span class="box">
        Mögliche Auswahl ist: Einfache Datei (siehe Option "Logfile"), Datenbank, Keine Protokollierung.
    </span>
</span>
</p>

<p class="desc">
<span class="item mbold">Speicherplatz für das Logfile</span><!-- menuitem -->
<span class="desc-info">
    <span class="box">
        Einige Informationen über die Abweisung/Moderation von Kommentaren kann
        in ein Logfile geschrieben werden. Wenn diese Option auf einen leeren Wert
        gesetzt wird, findet keine Protokollierung statt.
    </span>
</span>
</p>

</section><!-- section.sub end -->

<section id="serendipity_event_spamblock_bee" class="sub">
<span class="u-toc">6.3.25 - Spamschutz Biene: serendipity_event_spamblock_bee</span>

<h3 class="subsection" id="spamschutz-bieneserendipity_event_spamblock_bee">Spamschutz Biene<br>serendipity_event_spamblock_bee</h3>

<p class="tagging invisible">
<span class="tag-box invisible">
    <span class="inline-tag">Plugins!Spamschutz Biene</span>
    <span class="inline-tag">Plugins!serendipity_event_spamblock_bee</span>
</span>
<span class="label invisible" id="spamschutz-biene-plugin">spamschutz-biene-plugin</span>
<span class="tag-box invisible">
    <span class="inline-tag">spamblock-bee</span>
    <span class="inline-tag">Plugins!spamschutz-biene</span>
</span>
</p>

<p>Dieses interessante Plugin hat sich als äußerst erfolgreiches
Spaminstrument an <span class="mbold">vorderster Linie</span> bewährt.
Es nutzt Javascript, um dumme Spambots schon vor dem ersten POST ins
Leere laufen zu lassen und stellt weitere gute Optionen (Honeypot,
Verstecktes Captcha) zur Spamabwehr bereit. Es sollte deshalb immer an
<span class="mbold">erster</span> Stelle in Ihrer Plugin Liste stehen,
weil es dort am effektivsten arbeiten kann. Mit diesem intelligent
einfachen Instrument kann man erheblich dazu beitragen, die Belastung
des Servers durch das Webrauschen der Spambots und die eigene Pflicht
zur ständigen Kommentarbeobachtung und -pflege deutlich zu reduzieren.</p>

<p>Das SPAM-Biene-Plugin bietet folgende Konfigurationsoptionen an:</p>

<p class="desc">
<span class="item mbold">Spam Log Typ</span><!-- menuitem -->
<span class="desc-info">
    <span class="box">
        Wohin sollen Kommentare, die von der Spamschutz Biene gefunden wurden, geloggt werden?
    </span>

    <span class="box">
        Mögliche Werte sind: Kein Log, Textdatei, Datenbank.
    </span>
</span>
</p>

<p class="desc">
<span class="item mbold">Logdatei</span><!-- menuitem -->
<span class="desc-info">
    <span class="box">
        Wohin soll das Textfile für die Logs gespeichert werden?
    </span>
</span>
</p>

<p class="desc">
<span class="item mbold">Plugin Pfad</span><!-- menuitem -->
<span class="desc-info">
    <span class="box">
        In normalen Installationen ist der Default die korrekte Einstellung.
    </span>

    <span class="box">
        Diese ist: <code>/plugins/serendipity_event_spamblock_bee/</code>.
    </span>
</span>
</p>

<p class="desc">
<span class="item mbold">Fortgeschrittene Konfigurationsoptionen für das verstecke Captcha</span><!-- menuitem -->
<span class="desc-info">
    <span class="box">
        Wenn dieses nicht aktiviert ist, kann der folgende Abschnitt getrost übersprungen werden.
    </span>
</span>
</p>

<p class="desc">
<span class="item mbold">Methode für Abfrage der Antwort</span><!-- menuitem -->
<span class="desc-info">
    <span class="box">
        Wähle Sie aus, wie die korrekte Antwort abgefragt werden soll.
        Bei Auswahl von "JSON" kann ein Ajax-Request an <code>index.php/plugin/spamblockbeecaptcha</code>
        abgesetzt werden, um die richtige Antwort zu erhalten.
        Die Auswahl "Smarty" wird die Antwort über die Smarty-Variable <code class="tem smarty">{$beeCaptchaAnswer}</code>
        bereitstellen, während "Standard" den Wert in der Seite hartkodiert.
        ACHTUNG: ist "Smarty" ausgewählt, wird keinerlei zusätzliches CSS oder JavaScript
        eingebunden. Das Captcha-Feld muss also selbst befüllt und versteckt werden.
        "Smarty + Verschlüsselung" ist dasselbe wie "Smarty" mit dem Unterschied, dass die
        <code class="tem smarty">{$beeCaptchaAnswer}</code> mit einer simplen XOR-Verschlüsselung verschleiert wurde.
        Der Entschlüsselungs-Key steht in der Variablen <code class="tem smarty">{$beeCaptchaScrambleKey}</code>.
    </span>
</span>
</p>

<p class="desc">
<span class="item mbold">Art der Frage</span><!-- menuitem -->
<span class="desc-info">
    <span class="box">
        Spamschutz Biene kann automatisch simple Rechenaufgaben generieren.
        Es können aber auch eigene Fragen und Antworten angegeben werden. Wähle Sie aus, was Sie bevorzugen.
    </span>
</span>
</p>

<p class="desc">
<span class="item mbold">Eigene Fragen</span><!-- menuitem -->
<span class="desc-info">
    <span class="box">
        Wenn Sie eigene Fragen verwenden möchten, können Sie diese hier einstellen.
        Schreiben Sie dabei eine Frage pro Zeile. Bevor der Benutzer das Formular absenden kann,
        muss er eine zufällig aus der Liste gewählte Frage beantworten.
    </span>

    <span class="box">
        Mögliche Werte sind: Frage1, Frage2, etc.
    </span>
</span>
</p>

<p class="desc">
<span class="item mbold">Antworten auf die Fragen</span><!-- menuitem -->
<span class="desc-info">
    <span class="box">
        Dieses Feld enthält die korrekten Antworten auf die oben angegebenen Fragen.
        Geben Sie pro Zeile eine Antwort an in derselben Reihenfolge, die auch die Fragen haben.
        Fragen, für die es keine Antworten gibt, werden ignoriert.
        Groß- und Kleinschreibung spielen keine Rolle (d.h. "Antwort" ist dasselbe wie "antwort".
    </span>

    <span class="box">
        Mögliche Werte sind: Antwort1, Antwort2, etc.
    </span>
</span>
</p>

<p class="desc">
<span class="item mbold">Reguläre Ausdrücke benutzen</span><!-- menuitem -->
<span class="desc-info">
    <span class="box">
        (boolean) Ja Nein
    </span>

    <span class="box">
        Gibt an, ob Perl-kompatible reguläre Ausdrücke (PCREs) für die Antworten
        verwendet werden sollen. Diese können dazu benutzt werden, mehrere Varianten
        einer Antwort zuzulassen. Jeder Antwortzeile sollte dabei dem Muster <code>/pattern/:Antwort</code>
        entsprechen. <span class="mbold">ACHTUNG</span>: Aktivieren Sie diese Option nur, wenn Sie wissen, was Sie tun. Ein
        ungültiger regulärer Ausdruck wird Validitäts-Prüfungen fehlschlagen lassen und könnte
        das Blog in wenigen Fällen einer sogenannten Denial-of-Service-Attacke aussetzen.
        Antworten länger als 1000 Zeichen werden abgewiesen, wenn reguläre Ausdrücke eingeschaltet sind.
    </span>
</span>
</p>

<p class="desc">
<span class="item mbold">Honeypot einsetzen</span><!-- menuitem -->
<span class="desc-info">
    <span class="box">
        (boolean) Ja Nein
    </span>

    <span class="box">
        Ein "Honeypot" ist ein verstecktes Kommentar Feld, das leer gelasen werden soll.
        Da Bots aber dazu tendieren, alle vorgefundenen Felder auszufüllen, ist dies ein
        einfacher und unkritischer Weg, viele der Bots auszusperren. Um den Honeypot besonders
        effektiv zu machen, setzen Sie die Spamschutz Biene als erstes AntiSpam Plugin in Ihrer Plugin-Liste ein.
    </span>
</span>
</p>

<p class="desc">
<span class="item mbold">Versteckte Captchas</span><!-- menuitem -->
<span class="desc-info">
    <span class="box">
        Hiermit wird ein Captcha erzeugt, das für Menschen sehr einfach zu lösen ist,
        aber nicht für Bots. Wenn der Kommentator Javascript angeschaltet hat, wird das
        Captcha sogar automatisch gelöst und versteckt. Da Bots kein Javascript unterstützen,
        ist dies eine weitere Falle für Bots, die für normale Benutzer unsichtbar ist.
    </span>

    <span class="box">
        Mögliche Werte sind: Ausgeschaltet, Kommentare moderieren, Kommentare abweisen.
    </span>
</span>
</p>

</section><!-- section.sub end -->

<section id="serendipity_event_startcat" class="sub">
<span class="u-toc">6.3.26 - Kategorie als Startseite: serendipity_event_startcat</span>

<h3 class="subsection" id="kategorie-als-startseiteserendipity_event_startcat">Kategorie als Startseite<br>serendipity_event_startcat</h3>

<p class="tagging invisible">
<span class="tag-box invisible">
    <span class="inline-tag">Plugins!Kategorie als Startseite</span>
    <span class="inline-tag">Plugins!serendipity_event_startcat</span>
    <span class="inline-tag">Startseiten</span>
    <span class="inline-tag">Frontend!Startseite</span>
</span>
</p>

<p>Die Einstiegsseite des Frontends Ihres Blogs zeigt üblicherweise die
aktuellsten Artikel aller verfügbaren Kategorien an, sofern diese nicht
durch Leserechte zugriffsbeschränkt sind.</p>

<p class="tagging invisible">
<span class="tag-box invisible">
    <span class="inline-tag">CMS</span>
</span>
</p>

<p>Während dies bei üblich geführten Blogs genau das ist, was Ihre
Leser erwarten, kann es zu Verwirrungen kommen, wenn Sie Serendipity eher als
Content-Management-Software einsetzen.</p>

<p>In solchen Fällen ist es oft üblicher, auf der Startseite nur
Artikel einer bestimmten Kategorie anzuzeigen. Wenn Ihre Besucher andere
Artikel/Inhalte sehen wollen, müssen sie vorher aktiv die gewünschte
Kategorie auswählen.</p>

<p>Genau dieses Verhalten einer besonderen <em>Startkategorie</em> können Sie
mit dem Plugin <em>Kategorie als Startseite</em> erreichen. Das Plugin
macht letztlich etwas ganz Einfaches: Es beschränkt die Ansicht der
Startseite auf eine konfigurierte Kategorie. Dies entspricht dann
der Ansicht, die ein Besucher erhält, wenn er im Frontend die
konfigurierte Kategorie ausgewählt hätte.</p>

<p>Abseits von dieser Startkategorie bietet das Plugin jedoch auch noch
weitere Möglichkeiten, die Sie über seine Konfigurationsoptionen
festlegen können:</p>

<p class="desc">
<span class="item mbold">Ursprungskategorie</span><!-- menuitem -->
<span class="desc-info">In diesem Auswahlfeld können Sie festlegen, welche Kategorie Ihres Blogs
für die Artikelübersicht herangezogen wird.</span>
</p>

<p class="desc">
<span class="item mbold">Versteckte Kategorie</span><!-- menuitem -->
<span class="desc-info">Anstatt in der Artikelübersicht nur die Artikel einer gewissen Kategorie
anzuzeigen, können Sie die Logik auch umdrehen und gewisse Kategorien von
der Artikelübersicht <em>ausschließen</em>. Darin enthaltene Artikel kann ein
Besucher erst dann lesen, wenn er explizit die Kategorie-Übersicht der
ausgeschlossenen Kategorie aufruft. Im Vergleich zum Fixieren einer
Kategorie hat dies den Vorteil, dass Serendipity nicht stets eine
Kategorie vorgibt.</span>
</p>

<p class="desc">
<span class="item mbold">Mehrere Ursprungskategorien</span><!-- menuitem -->
<span class="desc-info">Anstatt nur eine einzelne Kategorie als Startkategorie festzulegen,
können Sie auch mehrere Kategorie-IDs mit einem <code>;</code> getrennt
voneinander eintragen. Die Kategorie-IDs können Sie der Kategorieverwaltung
(siehe Seite <span class="pageref"><a href="#Kategorie-ID ermitteln">Kategorie-ID ermitteln</a></span>)
entnehmen.</span>
</p>

<p class="desc">
<span class="item mbold">Mehrere versteckte Kategorien</span><!-- menuitem -->
<span class="desc-info">Analog zum Fixieren mehrerer Kategorien für die Startseite können Sie
auch mehr als eine Kategorie auf der Startseite ausblenden. Tragen Sie
auch hier die IDs mit einem <code>;</code> voneinander getrennt ein.</span>
</p>

<p class="desc">
<span class="item mbold">Gewählte Kategorie besucherseitig merken</span><!-- menuitem -->
<span class="desc-info">
    <span class="box">
        Abgesehen vom Anzeigen/Verstecken von Kategorien bietet dieses Plugin
        auch eine unabhängige Funktionalität, mit der ein Besucher die zuletzt
        gewählte(n) Kategorie(n) dauerhaft speichern kann. Beim nächsten Besuch
        des Blogs wird für ihn dann automatisch die zuletzt besuchte
        Kategorieansicht wiederhergestellt.
    </span>

    <span class="box">
        Diese Funktionalität kann für Ihre Besucher möglicherweise verwirrend
        sein. Wenn man ein Blog neu im Browser öffnet, erwartet man nicht
        unbedingt, dass die zuletzt angesehene Kategorie reaktiviert ist, sondern
        rechnet damit, dass man die Startseite des Blogs sieht, um neue Artikel
        auch von anderen Kategorien lesen zu können. Stellen Sie also sicher,
        dass dieses Feature im Kontext Ihres Blogs wirklich Sinn macht, und
        weisen Sie Ihre Besucher möglichst gezielt mittels eines HTML-Klotzes
        oder Ähnlichem auf das Feature hin.
    </span>
</span>
</p>

<p>&nbsp;</p><!-- separator -->

<p>Sobald das Plugin eine Einschränkung der Kategorie vornimmt, hat dies
auch Auswirkung auf den Standard-RSS-Feed. Dieser enthält dieselben
Artikel wie die Artikelübersicht, versteckt also gegebenenfalls auch
Artikel der nicht gewählten Kategorien. Um einen RSS-Feed aller gewählten
Kategorien anzuzeigen, müssen Sie diesen über
<code>http://www.example.com/serendipity/rss.php?serendipity[category]=all</code>
aufrufen. Damit Ihre Besucher darüber auch Bescheid wissen, müssen Sie
gegebenenfalls gesondert darauf hinweisen (in einem HTML-Klotz oder durch
Anpassung des <em>Blog abonnieren</em>-Plugins).</p>

<p>Die Wahl einer Standardkategorie hat auch Auswirkungen auf die
Anzeige des Kalender-Plugins in der Seitenleiste und auch möglicherweise
auf das Kategorien-Seitenleisten-Plugin. Abhängig von ihrer Konfiguration
beziehen beide Plugins die gewählte Kategorie mit ein und zeigen nicht
wie gewohnt die Daten aller Kategorien.</p>

</section><!-- section.sub end -->

<section id="serendipity_event_textile" class="sub">
<span class="u-toc">6.3.27 - Textformatierung: Textile: serendipity_event_textile</span>

<h3 class="subsection" id="textformatierung-textileserendipity_event_textile">Textformatierung: Textile<br>serendipity_event_textile</h3>

<p class="tagging invisible">
<span class="tag-box invisible">
    <span class="inline-tag">Plugins!Textformatierung: Textile</span>
    <span class="inline-tag">Plugins!serendipity_event_textile</span>
</span>
</p>

<p class="tagging invisible">
<span class="tag-box invisible">
    <span class="inline-tag">Textile</span>
</span>
</p>

<p>Textile ist in Grundzügen ähnlich zu BBCode, benutzt jedoch eine leicht
andersartige (Wiki-ähnliche) Syntax, die manche Personen bevorzugen. Auf
eckige Klammern wird zugunsten von Formatierungen wie
<code>"Mein Blog":{http://www.example.com/serendipity/}</code> verzichtet.
Darüber hinaus bietet Textile eine weitaus höhere Abstraktion als BBCode. Während
BBCode so einfach wie möglich gehalten ist, bietet Textile eine
Flexibilität, mit der man fast ganz auf HTML verzichten kann.[*]
<span class="footnote"><i class="fa fa-info-circle"></i> Unter
<a href="http://thresholdstate.com/articles/4312/the-textile-reference-manual" target="_blank">http://thresholdstate.com/articles/4312/the-textile-reference-manual</a> finden Sie die vollständige Textile-Syntax.</span><!-- footnote -->
</p>

<p>Textile ist eine relativ komplexe Bibliothek, die auch mehr Ressourcen
verbraucht als das BBCode-Plugin. Daher wird sie meist eher von
Redakteuren benutzt als von Kommentatoren.</p>

<p>Da Textile auch weitaus mehr Formatierungsmöglichkeiten für beliebiges
HTML enthält, sollten Sie sich gut überlegen, ob Sie diese Flexibilität
auch den Kommentatoren anbieten wollen, die so möglicherweise das Layout
innerhalb der Kommentare durcheinanderbringen könnten.</p>

<p>In den Konfigurationsoptionen des Plugins können Sie einstellen, ob die
Textile-Bibliothek in Version 1.0 oder 2.0 oder 3.0 genutzt werden soll.</p>

</section><!-- section.sub end -->

<section id="serendipity_event_textwiki" class="sub">
<span class="u-toc">6.3.28 - Textformatierung: Wiki: serendipity_event_textwiki</span>

<h3 class="subsection" id="textformatierung-wikiserendipity_event_textwiki">Textformatierung: Wiki<br>serendipity_event_textwiki</h3>

<p class="tagging invisible">
<span class="tag-box invisible">
    <span class="inline-tag">Plugins!Textformatierung: Wiki</span>
    <span class="inline-tag">Plugins!serendipity_event_textwiki</span>
    <span class="inline-tag">Wiki</span>
</span>
</p>

<p class="revision">[<em>...Hoffnungslos veraltet, unmaintained und nicht zu empfehlen...! (Sig)</em>]
Dieses Plugin wurde nach Spartacus verschoben und aus dem Release Zip entfernt.</p>

<p>Eine sehr verbreitete und beliebte Form der Textauszeichnung stellt das
sogenannte <em>Wiki markup</em> dar. Diese Formatierungsart hat aufgrund
des Wikipedia-Booms hohe Verbreitung gefunden. Da Wikis erschaffen wurden,
um auch Leuten ohne HTML-Kenntnisse die Möglichkeit zu bieten,
gemeinsam formatierte Texte zu erfassen, ist die Syntax dieses Plugins
ebenfalls einfach gehalten.</p>

<p>
<span class="tag-box invisible">
    <span class="inline-tag">PEAR</span>
</span>
Serendipity benutzt hierfür das mitgelieferte PEAR Text::Wiki-Paket,
um die Wiki-Syntax in HTML umzuformen. Dieses PEAR-Paket hat eine gewaltige
Anzahl an Konfigurationsoptionen, mit denen Sie die möglichen Eingaben und
Ausgaben des Plugins kontrollieren können. Alle Optionen entsprechen
dabei den Optionen, die das PEAR-Paket bereitstellt.</p>

<p>Die vollständige Dokumentation der Syntax und der verfügbaren Optionen
befindet sich auf
<code>http://web.archive.org/web/20070208170023/wiki.ciaweb.net/yawiki/index.php?area=Text_Wiki</code>.</p>

<p>
<span class="tag-box invisible">
    <span class="inline-tag">HTML!in Einträgen nicht dargestellt</span>
    <span class="inline-tag">Eintrag!kein HTML dargestellt</span>
</span>
Bei der Verwendung des Wiki-Plugins gilt es zu beachten, dass dieses Plugin
sämtliche HTML-Formatierungen eines Artikels umwandelt. So können Sie als
Redakteur keinerlei manuelles HTML mehr einfügen. Dieses Verhalten können
Sie jedoch in der Konfiguration des Plugins abstellen (<em>Html: Ja</em>).
Weiterhin können Sie über die Plugin-Optionen auch alle anderen
Umwandlungsvarianten flexibel ein- oder ausschalten.</p>

</section><!-- section.sub end -->

<section id="serendipity_event_tinymce" class="sub">
<span class="u-toc">6.3.29 - Uses TinyMCE as WYSIWYG editor: serendipity_event_tinymce</span>

<h3 class="subsection" id="uses-tinymce-as-wysiwyg-editorserendipity_event_tinymce">Uses TinyMCE as WYSIWYG editor<br>serendipity_event_tinymce</h3>

<p class="tagging invisible">
<span class="tag-box invisible">
    <span class="inline-tag">Plugins!TinyMCE</span>
    <span class="inline-tag">Plugins!serendipity_event_tinymce</span>
    <span class="inline-tag">TinyMCE</span>
    <span class="inline-tag">WYSIWYG-Editoren!alternative</span>
    <span class="inline-tag">HTMLArea</span>
</span>
</p>

<p class="text">Serendipity wird seit <em>Serendipity 2.0+</em>
standardmäßig mit dem WYSIWYG-Editor <em>CKEditor</em> [*]
<span class="footnote"><i class="fa fa-info-circle"></i>
<a href="http://ckeditor.com/" target="_blank">http://ckeditor.com/</a></span><!-- footnote -->,
dem überaus erfolgreichen Nachfolger des <em>FCKeditor</em> ausgeliefert.
Dieser Editor läuft problemlos mit allen aktuellen Browsern (Chrome,
Firefox, Internet Explorer, Firefox, Safari, etc) und wird professionell
und aktiv weiterentwickelt. Er hat sich mittlerweile zum quasi-Standard
der HTML Editoren am Markt entwickelt. In Serendipity ist er als Core-Editor
aus Kompatibilitätsgründen ebenfalls im <code class="dir">/htmlarea</code>
Ordner angesiedelt. Außerdem existiert noch das <code>CKEditor Plus</code>-Plugin,
das immer die neueste Version mit leichter Zeitverzögerung mitbringt und so zB.
auch über ein eingebautes Codesnippet Tool verfügt, mit dem sehr leicht und
einfach Code Beispiele in den Eintrags Text gegossen und schon gleich farblich
herausgehoben dargestellt werden können. Im Grunde ist es damit unnötig geworden
irgendein anderes <em>WYSIWYG</em>-Editor-Plugin einzusetzen, wenn nicht absolut
wichtige persönliche Präferenzen dafür sprechen.
(Siehe <span class="pageref"><a href="#WYSIWYG">WYSIWYG</a></span>)</p>

<p>An der Qualität verschiedener WYSIWYG-Editoren scheiden sich
die Geister - grundsätzlich ist es ein beinahe unmögliches Ziel,
vollständige WYSIWYG-Fähigkeiten browserübergreifend zu verwirklichen.
Gerade zwischen Internet Explorer und Firefox unterscheiden sich die
technischen Implementationen fast grundlegend, so dass ein überall
gleich arbeitender WYSIWYG-Editor wohl noch lange ein Zukunftstraum
bleiben wird. Dies gilt nicht mehr für den heute benutzten Editor. Ja,
die Dinge sich und manche werden besser!</p>

<p>Dennoch arbeiten viele Entwickler unbeirrt an diesem hehren Ziel und
bringen häufige Updates ihrer Editoren heraus, die stetig stabiler
werden. Das Kernproblem bei WYSIWYG-Editoren ist, dass diese häufig
ungültigen HTML-Code produzieren, Sonderzeichen schlucken oder beim
Verschieben von Bildern Abstürze hervorrufen. Davon bleibt auch der interne
Serendipity-Editor leider nicht verschont.</p>

<p>Serendipity geht daher grundsätzlich den Weg, dass alternative
WYSIWYG-Editoren eingebunden werden können. Dazu zählen
TinyMCE [*]
<span class="footnote"><i class="fa fa-info-circle"></i> <a href="http://tinymce.moxiecode.com/" target="_blank">http://tinymce.moxiecode.com/</a></span><!-- footnote --> und
CKEditor [*]
<span class="footnote"><i class="fa fa-info-circle"></i> <a href="http://www.ckeditor.net/" target="_blank">http://www.ckeditor.net/</a></span><!-- footnote -->.
Für alle Editoren sind externe Plugins verfügbar. Aufgrund der weiteren Entwicklungen in den Jahren können aber nur das
<code>CKEditor</code>-Plugin und vielleicht noch das <code>TinyMCE</code>-Plugin empfohlen werden.</p>

<p>Das schwierigste Unterfangen bei der Verwendung externer
WYSIWYG-Editor-Plugins bei Serendipity ist, dass einigen die Unterstützung
der Mediendatenbank fehlt oder die Integration in weitere Plugins (wie
den HTML-Klotz oder Statische Seiten) nicht vorhanden ist. TinyMCE ist
hier am weitesten fortgeschritten und wird daher an dieser Stelle exemplarisch
beschrieben. Die Verwendung der anderen WYSIWYG-Editor-Plugins ist jedoch
im Grundsatz gleich.</p>

<p>Um einen externen WYSIWYG-Editor wie TinyMCE verwenden zu können, müssen
Sie drei Dinge durchführen: Erstens müssen Sie in Ihren persönlichen
Einstellungen die Verwendung des WYSIWYG-Editors aktivieren und zweitens
das Serendipity-Plugin installieren. Als Letztes müssen Sie den jeweiligen
WYSIWYG-Editor manuell herunterladen und in das Plugin-Verzeichnis kopieren.
Die WYSIWYG-Editoren selbst sind <em>nicht</em> Bestandteil des Serendipity-Plugins,
da sie sich zum einen zu häufig ändern und zum anderen aufgrund ihrer Dateigröße den
Rahmen eines Serendipity-Plugins sprengen würden.</p>

<p>Sobald Sie das TinyMCE-Plugin heruntergeladen haben, ist dieses im
Verzeichnis <code>/plugins/serendipity_event_tinymce/</code> vorhanden.
Besuchen Sie nun die TinyMCE-Downloadseite.[*]
<span class="footnote"><i class="fa fa-info-circle"></i> <a href="http://tinymce.moxiecode.com/download.php" target="_blank">http://tinymce.moxiecode.com/download.php</a></span><!-- footnote --> Laden Sie dort die
aktuelle Version von TinyMCE herunter. Entpacken Sie danach die ZIP-Datei
und laden Sie das entstandene Verzeichnis <code>tinymce</code> in Ihr
Plugin-Verzeichnis auf dem Serendipity-Server.</p>

<p>Danach sollten Sie eine Datei wie
<code>/plugins/serendipity_event_tinymce/tinymce/jscripts/tiny_mce/tiny_mce.js</code>
besitzen. Lassen Sie sich von der leider tief verschachtelten
Verzeichnisstruktur nicht irritieren.</p>

<p>Abgesehen von dem Basispaket benötigen Sie noch den TinyMCE compressor
PHP. Dieser befindet sich ebenfalls auf der TinyMCE-Downloadseite. Auch
diesen müssen Sie herunterladen und entpacken. Die beiden Dateien
<code>tiny_mce_gzip.js</code> und <code>tiny_mce_gzip.php</code> laden Sie nun auf
Ihren Serendipity-Server in das Verzeichnis
<code>/plugins/serendipity_event_tinymce/tinymce/jscripts/tiny_mce</code>
hoch.</p>

<p>Je nachdem, welche TinyMCE-Sprachversion Sie benutzen wollen, müssen Sie
eventuell noch weitere Dateien herunterladen. Optional können Sie das
TinyMCE-Tool namens <em>iManager</em> installieren, das eine eigenständige
Mediendatenbank (inklusive Bildbearbeitung) ermöglicht. Die hierfür
notwendigen Schritte werden in der Konfigurationsoberfläche des
Serendipity-TinyMCE-Plugins aufgeführt.</p>

<p>Nachdem nun alle notwendigen Dateien erfolgreich hochgeladen wurden,
können Sie TinyMCE das erste Mal benutzen. Rufen Sie dazu die bekannte
Oberfläche zum Erstellen eines Eintrages auf.</p>

<p>Das TinyMCE-Plugin ist seinerseits stark modular aufgebaut. Alle
Bestandteile des Editors können nach Belieben zusammengewürfelt werden.
Viele der Einstellungsmöglichkeiten werden Ihnen über die
Konfigurationsoptionen des Plugins angeboten:</p>

<p class="desc">
<span class="item mbold">iManager Tool benutzen</span><!-- menuitem -->
<span class="desc-info">Wenn Sie den iManager benutzen wollen, müssen Sie diesen nach der
eigenständigen Installation über den Menüpunkt <span class="mbold">iManager Tool
benutzen</span> aktivieren.</span>
</p>

<p class="desc">
<span class="item mbold">Zusätzliche TinyMCE Plugins, Knopfleiste 1, 2 und 3</span><!-- menuitem -->
<span class="desc-info">
    <span class="box">
        In dieser Eingabebox können Sie die TinyMCE-Plugins eintragen, die Sie
        verwenden wollen. Auch die Reihenfolge der Buttons im TinyMCE-Plugin
        richtet sich nach dieser Eingabe.
    </span>

    <span class="box">
        Wenn Sie beispielsweise mit dem TinyMCE-Plugin keine Änderung der
        Textrichtung vornehmen wollen, können Sie das Plugin
        <span class="mbold">directionality</span> einfach aus der Liste entfernen. Eine vollständige
        Liste, welches Plugin welcher Funktionalität dient, finden Sie auf der
        Homepage von TinyMCE.
    </span>

    <span class="box">
        Das Pipe-Sonderzeichen (<code>|</code>) können Sie in der Definition der
        Knopfleisten dazu benutzen, um einen Zeilenumbruch zu erreichen.
    </span>
</span>
</p>

<p class="desc">
<span class="item mbold">Relative URLs erzeugen</span><!-- menuitem -->
<span class="desc-info">
    <span class="box">
        TinyMCE versucht standardmäßig alle von Ihnen eingegebenen Hyperlinks in
        relative URLs umzuwandeln. Aus
        <code>http://www.example.com/serendipity/index.php</code> wird so
        <code>/serendipity/index.php</code>. Grundsätzlich hat dies den Vorteil, dass
        relative URLs beim Umzug Ihres Blogs auf einen anderen Server nicht
        geändert werden müssen.
    </span>

    <span class="box">
        Bei der Benutzung der Mediendatenbank von Serendipity sind solche
        relativen URLs jedoch eher problematisch. Daher ist es eher zu empfehlen,
        die Option <span class="mbold">Relative URLs erzeugen</span> zu deaktivieren,
        um potenziellen Problemen bei der Einbindung von Podcasts, RSS-Feeds und
        Ähnlichem zu entgehen.
    </span>
</span>
</p>

<p class="desc">
<span class="item mbold">HTML verifizieren/korrigieren</span><!-- menuitem -->
<span class="desc-info">
    <span class="box">
        TinyMCE kann ungültigen HTML-Code Ihrer Artikel automatisch korrigieren.
        Theoretisch ist dies eine tolle Funktionalität, praktisch scheitert
        die Korrektur jedoch oft an dem, was TinyMCE als gültig und ungültig
        erkennt. HTML-Tags, die TinyMCE nicht anerkennt, werden so kurzerhand
        entfernt.
    </span>

    <span class="box">
        Gerade bei der Einbindung von YouTube-Links oder OBJECT/EMBED-HTML-Tags
        kann dies dazu führen, dass gültiger HTML-Code von TinyMCE einfach
        stillschweigend entfernt wird. Noch problematischer wird das Vorgehen
        dadurch, dass abhängig von Ihrem Browser (Microsoft Internet Explorer
        oder Firefox) unterschiedliche HTML-Tags entfernt werden.
    </span>

    <span class="box">
        Auch hier empfehlen wir daher, die Option <span class="mbold">HTML verifizieren/korrigieren</span>
        zu deaktivieren, wenn Sie stellenweise selbst HTML-Code eingeben.
    </span>
</span>
</p>

<p class="desc">
<span class="item mbold">Code säubern</span><!-- menuitem -->
<span class="desc-info">
    <span class="box">
        Im Gegensatz zur Option <span class="mbold">HTML verifizieren</span>, die sich nur um das
        Entfernen ungültiger HTML-Tags kümmert, kann die Option <span class="mbold">Code
        säubern</span> TinyMCE dazu anweisen, eventuell ungültige HTML-Konstrukte zu
        beheben. Darunter fallen beispielsweise falsche Sonderzeichen, fehlende
        schließende Tags oder anderweitige ungültige Verschachtelung.
    </span>

    <span class="box">
        Dieser Säuberung kann man normalerweise getrost vertrauen, da sie
        tatsächlich der Gültigkeit Ihrer Artikel dienlich ist. Lediglich wenn Sie
        selber absolute Kontrolle über den HTML-Code haben wollen, sollten Sie
        diese Option deaktivieren. Dann jedoch wäre es generell eher zu
        empfehlen, vollständig auf WYSIWYG zu verzichten, um die größtmögliche
        Flexibilität zu erlangen.
    </span>
</span>
</p>

<p class="desc">
<span class="item mbold">Mozilla Rechtschreibhilfe</span><!-- menuitem -->
<span class="desc-info">Seit einigen Versionen ermöglicht der Mozilla Firefox Browser die
Rechtschreibprüfung Ihrer Eingaben in beliebigen Textfeldern.
Da TinyMCE über eine eigene (optionale) Rechtschreibprüfung verfügt,
deaktiviert TinyMCE standardmäßig die Prüfung der Mozilla
Rechtschreibhilfe. Wenn Sie diese jedoch gerne verwenden möchten, können
Sie die Option <span class="mbold">Mozilla Rechtschreibhilfe</span> aktivieren.</span>
</p>

<p class="desc">
<span class="item mbold">Relativer HTTP Pfad des Plugins</span><!-- menuitem -->
<span class="desc-info">
    <span class="box">
        Damit das Serendipity-Plugin den Quellcode des TinyMCE-Editors korrekt
        einbinden kann, benötigt es den relativen Pfad zum TinyMCE-Verzeichnis ab
        dem Serendipity-Stammverzeichnis.
    </span>

    <span class="box">
        Bei normalen Installationen können Sie hier stets den Standardwert
        <code>plugins/serendipity_event_tinymce/</code> beibehalten. Nur wenn Sie
        symbolische Links oder Ähnliches verwenden, ist eine Anpassung dieser
        Konfigurationsoption angebracht.
    </span>
</span>
</p>

</section><!-- section.sub end -->

<section id="serendipity_event_trackback" class="sub">
<span class="u-toc">6.3.30 - Trackbacks kontrollieren: serendipity_event_trackback</span>

<h3 class="subsection" id="trackbacks-kontrollierenserendipity_event_trackback">Trackbacks kontrollieren<br>serendipity_event_trackback</h3>

<p class="tagging invisible">
<span class="tag-box invisible">
    <span class="inline-tag">Plugins!Trackbacks kontrollieren</span>
    <span class="inline-tag">Plugins!serendipity_event_trackback</span>
</span>
<span class="label invisible" id="trackbacks">trackbacks</span>
<span class="tag-box invisible">
    <span class="inline-tag">Trackbacks</span>
    <span class="inline-tag">Fehler!Trackbacks</span>
    <span class="inline-tag">Fehler!Firewall</span>
    <span class="inline-tag">Proxy</span>
    <span class="inline-tag">Fehler!Proxy</span>
</span>
</p>

<p>Wenn Serendipity Ihren Artikel speichert, durchsucht es den Eintrag nach
allen Links. Dabei werden Trackbacks an automatisch erkannte Blogs
verschickt (siehe Seite <span class="pageref"><a href="#trackback">trackback</a></span>).</p>

<p>Manche Blogs binden jedoch leider ihre Trackback-URL in einem
Artikel nicht standardkonform so ein, dass Serendipity sich dorthin automatisch
verbinden kann. In einem solchen Fall benötigen Sie das Plugin <em>Trackbacks
kontrollieren</em>, denn dieses Plugin ermöglicht es Ihnen, manuelle
Trackback-URLs zu einem Eintrag hinzuzufügen.</p>

<p>Zusätzlich bietet das Plugin Ihnen die Möglichkeit, ausgehende Trackbacks
global in Ihrem Blog zu deaktivieren. Dann sendet Serendipity beim Speichern
Ihrer Artikel keinerlei Trackbacks, dies empfiehlt sich also besonders bei
versteckten Blogs oder Intranet-Blogs, die mit der Außenwelt nicht in Kontakt
treten sollen. Abgesehen von diesem Plugin regelt auch die Variable
<code>$serendipity['noautodiscovery']</code> der Datei
<code>serendipity_config_local.inc.php</code> die globale Deaktivierung von
Trackbacks, wie auf Seite <span class="pageref"><a href="#noautodiscovery">noautodiscovery</a></span>
beschrieben.</p>

<p>Ein weiteres praktisches Feature des Plugins ist, dass Sie in der Konfiguration
einen Web-Proxy eintragen können. Ein Proxy ist ein Server, der als Bindeglied
zwischen Webserver und dem Internet steht. Oft ist es einem Webserver aus
Sicherheitsgründen nicht erlaubt, direkt auf andere Server zuzugreifen. Dies ist
auch der häufigste Grund dafür, dass das Spartacus-Plugin (siehe Seite
<span class="pageref"><a href="#Spartacus">Spartacus</a></span>) nicht funktioniert.
Wenn der Webserver jedoch auf einen Proxy-Server zugreifen darf, können die
Zugriffe auf fremde Server über den Proxy geleitet werden.</p>

<p>Auch wenn Serendipity Trackbacks verschickt, muss es direkt auf einen
Server zugreifen können. Damit Sie einen Proxy dazwischensetzen können,
bietet das Trackback-Plugin die Möglichkeit, einen solchen Server
einzutragen. Serendipity wird dann nicht nur beim Senden von Trackbacks,
sondern schon beim Zugriff auf Spartacus diesen Proxy-Server
benutzen, da fast alle URL-Aufrufe von Serendipity über denselben
Mechanismus (die PEAR <code>HTTP::Request</code>-Bibliothek) ausgeführt werden.</p>

<p>Abgesehen von der Proxy-Konfiguration bietet das Plugin die Option
<span class="mbold">Disable the global use of trackbacks</span>, die bei Aktivierung dafür
sorgt, dass keine Trackbacks verschickt werden. Da Serendipity
üblicherweise auch Trackbacks zu Ihren eigenen Artikeln schickt, können
Sie dies ebenfalls im Plugin über die Option <span class="mbold">Send trackbacks to
your own blog</span> deaktivieren.</p>

<p>Wenn Sie das Trackback-Plugin installiert haben und Trackbacks nicht
global deaktiviert sind, sehen Sie in den <em>Erweiterten Optionen</em> beim
Erstellen eines Artikels eine neue Eingabemaske. Dort werden bereits im
Eintrag erkannte Links aufgeführt, und zusätzlich können Sie hier weitere
URLs eintragen, zu denen Serendipity ein Trackback schicken soll. Mehrere
Links werden durch ein Leerzeichen oder einen Zeilenumbruch getrennt.</p>

<p>Mitttels dreier Optionsfelder können Sie bestimmen, wie Trackbacks für den
jeweiligen Eintrag gesendet werden sollen:</p>

<p class="desc">
<span class="item mbold">Trackbacks an erkannte Links im Eintrag senden</span><!-- menuitem -->
<span class="desc-info">Diese Option bewirkt, dass Serendipity automatisch alle im Eintrag eingetragenen
URLs auf Trackbacks prüft. Etwaige weitere, manuell eingefügte Links in der Box
<span class="mbold">Weitere Links für Trackbacks</span> werden zusätzlich geprüft.</span>
</p>

<p class="desc">
<span class="item mbold">Ausgehende Trackbacks deaktivieren</span><!-- menuitem -->
<span class="desc-info">Ist diese Option ausgewählt, prüft Serendipity weder automatisch die Links
innerhalb Ihres Beitrags, noch sendet es Trackbacks an die Liste weiterer,
manuell eingefügter URLs.</span>
</p>

<p class="desc">
<span class="item mbold">Trackbacks nur an unten aufgeführte URLs schicken</span><!-- menuitem -->
<span class="desc-info">Wenn Sie Trackbacks ausschließlich an die manuell eingetragenen Trackback-URLs
senden wollen, wählen Sie diese Option. Dadurch wird die automatische Erkennung
von Links in Ihrem Artikel deaktiviert.</span>
</p>

<p>&nbsp;</p><!-- separator -->

<p>Bitte achten Sie darauf, dass Serendipity bei jedem Speichern eines
veröffentlichten Eintrags Trackbacks prüft. Wenn Sie also später mal
einen Artikel überarbeiten, bei dem Sie ursprünglich die Option zum
Versenden von Trackbacks deaktiviert hatten, müssen Sie daran denken,
auch beim neuen Speichern diese Option zu deaktivieren.</p>

<p>Stellen wir uns also konkret folgendes Beispiel vor: Sie schreiben einen
Artikel zu einem fremden Blog-Beitrag auf <code>http://example.com/wp/?p=15</code>.
Dafür würden Sie folgenden HTML-Code in Ihrem Beitrag verwenden:</p>

<pre><code class="html">
    Hanni und Nanni &lt;a href="http://example.com/wp/?p=15"&gt;berichten in ihrem
    Blog&lt;/a&gt; darüber, wie man von WordPress auf Serendipity umsteigen kann
    und damit höchste Glückseligkeit erreicht. Sehr spannender Artikel, ich
    habe es direkt ausprobiert und lasse gerade mein Shakra richtig entspannt
    herumbaumeln.
</code></pre>

<p>Wenn Sie diesen Artikel speichern, greift Serendipity auf die genannte
URL <code>http://example.com/wp/?p=15</code> zu. Wäre in dem Beitrag die
Trackback-URL korrekt enthalten, würde Serendipity das Trackback direkt
abschicken. In unserem Beispiel gehen wir aber davon aus, dass die
automatische Erkennung fehlschlägt, da Hanni und Nanni leider ein
Blog-Template benutzen, das die Trackback-URL nicht korrekt über
RDF-Metadaten einbindet (siehe Trackback-Kapitel ab Seite
<span class="pageref"><a href="#trackback">trackback</a></span>).</p>

<p>Daher müssen wir uns nun auf die Jagd nach der Trackback-URL machen. Dazu
rufen wir das Blog selber im Browser auf, und meist stößt man auf eine Angabe
des Blogs zu einer manuellen Trackback-URL. Auch Serendipity gibt eine derartige URL
auf den Artikel-Detailseiten für fremde Blogsysteme an. In unserem Fall
wäre die gewünschte URL
<code>http://example.com/wp/wp-trackback.php?id=15</code>. Diese URL notieren
Sie sich und fügen sie in die Eingabebox <span class="mbold">Weitere Links für
Trackbacks</span> ein, speichern den Artikel dann erneut ab - und Serendipity
wird nun das Trackback an diese genannte URL schicken, da es die
automatische Erkennung nicht mehr benötigt.</p>

<p>Bei dem Beispiel ist es extrem wichtig, dass Sie die manuelle
Trackback-URL <em>nicht</em> im Artikel erwähnen! Wenn Sie dies machen,
würde Serendipity weiterhin denken, es müsste bei dieser URL einen
automatischen Trackback erkennen, der zwangsweise scheitern wird. Wie
man in so einem Fall Trackbacks erneut vollständig ausführen kann,
entnehmen Sie ebenfalls Kapitel <span class="reference">trackback</span> ab Seite <span class="pageref"><a href="#trackbacks-resend">trackbacks-resend</a></span>.</p>

</section><!-- section.sub end -->

<section id="serendipity_event_trackexits" class="sub">
<span class="u-toc">6.3.31 - Textformatierung: Externe Links zählen: serendipity_event_trackexits</span>

<h3 class="subsection" id="textformatierung-externe-links-zählenserendipity_event_trackexit">Textformatierung: Externe Links zählen<br>serendipity_event_trackexits</h3>

<p class="tagging invisible">
<span class="tag-box invisible">
    <span class="inline-tag">Plugins!Textformatierung: Externe Links zählen</span>
    <span class="inline-tag">Exit-Tracking</span>
    <span class="inline-tag">Plugins!serendipity_event_trackexits</span>
</span>
<span class="label invisible" id="trackexits">trackexits</span>
</p>

<p>Serendipity kann für Statistiken zählen, wie oft Ihre Besucher auf
externe Links in Ihrem Blog geklickt haben. So ist es für Sie als
Betreiber möglich, herauszufinden, welche von Ihnen genannten URLs für
Ihre Besucher besonders interessant sind.</p>

<p>Sobald ein Besucher eine externe URL klickt, verlässt er Ihr Blog.
Das bedeutet, dass Serendipity üblicherweise gar nicht herausfinden kann,
wenn ein Besucher Ihr Blog verlässt, denn dann findet kein Aufruf der
Seiten auf Ihrem Server mehr statt.</p>

<p>
<span class="tag-box invisible">
    <span class="inline-tag">Link Tracking</span>
</span>
Um dies zu umgehen, müssen also fremde URLs so verändert werden, dass ein
Klick darauf erst Ihrem Blog die angeklickte Seite mitteilt und dann
erst die gewünschte Seite aufgerufen wird. So ein Mechanismus nennt sich
<em>Link Tracking</em>. Eine externe URL wie <code>http://www.google.de/</code>
wird dazu speziell aufbereitet, so dass in Ihrem Artikel ein Link wie
<code>http://www.example.com/serendipity/exit.php?entry_id=1&amp;url_id=1</code>
erscheint.</p>

<p>Die Datei <code>exit.php</code> erkennt aufgrund der URL-Variablen, welche Seite
angefordert wurde. So kann in einer Datenbanktabelle die Anzahl der
Klicks zu der gewünschten URL mitgezählt und dann der Browser des
Besuchers zu der gewünschten Seite weitergeleitet werden.</p>

<p>Diese Methode ist die einzige Möglichkeit, externe Links
nachzuverfolgen. Die automatische Umformung von Links in das notwendige
Format nimmt das Plugin <em>Externe Links zählen</em> vor. Ist dieses
aktiviert, wird jeder HTML-Code wie <code>&lt;a
href='http://www.example.com'&gt;Google&lt;/a&gt;</code> erfasst und umgeschrieben.</p>

<p>Dieses Umschreiben hat für Sie Vorteile in der Statistik, für den Benutzer
jedoch mehrere Nachteile. Zum einen kann ein Besucher so eine URL nicht
mehr eindeutig identifizieren. Ob er nach einem Klick darauf wirklich auf
der Seite von Google landet, weiß er vorher noch nicht. Daher werden
viele Besucher (zu Recht) misstrauisch, wenn sie auf derart merkwürdig
formatierte Links stoßen. Den Besuchern wird dadurch auch sofort klar,
dass sie statistisch "ausgespäht" werden - und letztlich kann ein
Besucher auch nicht einfach per Kopieren und Einfügen den Link
übernehmen, sondern er muss ihn erst aufrufen, um herauszufinden, auf welcher
URL er landet.</p>

<p>Überlegen Sie sich also beim Einsatz dieses Plugins gut, ob der
statistische Nutzen für Sie ausschlaggebend ist. In älteren Versionen
Serendipitys war dieses Plugin noch ein Standard-Plugin, wurde aber
aufgrund der Kritik von Blog-Besuchern aus der Standardinstallation
entfernt.</p>

<p>Wenn ein Besucher bei einem Kommentar seine Homepage angibt, kann auch diese
Homepage umgeformt und in der Statistik nachverfolgt werden. Dies hat den
Vorteil, dass potenzielle Spammer die angegebene Homepage nicht mit dem
Suchmaschinenrang Ihres Blogs aufwerten können. In der Konfiguration des Plugins
können Sie dieses Verhalten einstellen: Sie können die Nachverfolgung von
Kommentatoren-Homepages entweder ausstellen (<span class="mbold">keine</span>), Sie können das
angebotene Link Tracking aktivieren (<span class="mbold">Serendipity Exit-Tracking Routine</span>)
oder auch auf eine Maskierung von Google (<span class="mbold">Google PageRank Deflector</span>)
zurückgreifen. Diese Methode ist ein ähnliches Vorgehen, wie von der
<span class="tag-box invisible">
    <span class="inline-tag">NoFollow-Initiative</span>
</span>
NoFollow-Initiative [*]
<span class="footnote"><i class="fa fa-info-circle"></i> <a href="http://de.wikipedia.org/wiki/Nofollow" target="_blank">http://de.wikipedia.org/wiki/Nofollow</a></span><!-- footnote --> gefordert --
man verbietet so den Kommentatoren, vom Suchmaschinen-Wert (dem <em>Google PageRank</em>)
zu profitieren. Die berechtigte Kritik an diesem Vorgehen ist jedoch, dass man
aufrichtige Kommentatoren ruhig durch die Verlinkung auf ihre Seiten belohnen
soll. Ohne derartige Verlinkungen, die von Suchmaschinen berücksichtigt werden,
wären die Blogs von heute bei weitem nicht so verbreitet und weniger relevant bei
Suchergebnissen.</p>

</section><!-- section.sub end -->

<section id="serendipity_event_typesetbuttons" class="sub">
<span class="u-toc">6.3.32 - Sonderzeichen/Erweiterte Buttons für Non-WYSIWYG: serendipity_event_typesetbuttons</span>

<h3 class="subsection" id="sonderzeichen-erweiterte-buttons-für-non-wysiwygserendipity_even">Sonderzeichen/Erweiterte Buttons für Non-WYSIWYG<br>serendipity_event_typesetbuttons</h3>

<p class="tagging invisible">
<span class="tag-box invisible">
    <span class="inline-tag">Plugins!Sonderzeichen/Erweiterte Buttons für Non-WYSIWYG</span>
    <span class="inline-tag">Plugins!serendipity_event_typesetbuttons</span>
</span>
</p>

<p>Wenn Sie als Redakteur nicht den WYSIWYG-Editor beim Verfassen von
Artikeln einsetzen, sind Sie gezwungen (oder eher in der glücklichen
Lage), HTML-Code selbständig einzugeben. Serendipity bietet zwar zum
Einfügen von Bildern/Links und für gängige Textformatierung (fett,
unterstrichen, kursiv) eigenständige Buttons an, aber dies ist Ihnen
möglicherweise noch nicht komfortabel genug.</p>

<p>Glücklicherweise erlaubt die Serendipity-Plugin-API, dass
Ereignis-Plugins eigenständig Buttons oberhalb der Artikelmaske einbinden
können. Das Plugin <em>Sonderzeichen/Erweiterte Buttons für
Non-WYSIWYG</em> tut genau dies.</p>

<p>In der Plugin-Konfiguration können Sie einstellen, welche Buttons das
Plugin darstellen soll. Damit die Artikelmaske nicht überfrachtet wird,
sollten Sie hier nur die Buttons aktivieren, die Sie wirklich gerne (und
häufig) nutzen möchten.</p>

<p>Eine sehr wichtige Konfigurationsoption des Plugins ist, ob Sie für die
Sonderzeichen HTML oder XHTML benutzen wollen. Je nachdem, welchen dieser beiden
Standards Sie für Ihre Webseite benutzen wollen, müssen die Sonderzeichen
unterschiedlich eingebunden werden. Wenn Ihr Blog-Template das XHTML-Format
benutzt (was bei fast allen Serendipity-Templates der Fall ist), würde ein
HTML-Sonderzeichen unter Umständen dazu führen, dass Ihre Seite ungültigen Code
enthält, der bei manchen Browsern zu Fehldarstellungen der Seite führen könnte.</p>

<p>Da sich XHTML bereits etabliert hat und von allen Browsern unterstützt wird,
sollten Sie möglichst XHTML-Sonderzeichen einsetzen. Lediglich <em>alte
Hasen</em>, die sich von ihren liebgewonnenen HTML-Tags einfach nicht trennen
können, interessieren sich womöglich für die HTML-Variante der Sonderzeichen.</p>

<p>Die einzelnen Konfigurationsoptionen des Plugins sind:</p>

<p class="desc">
<span class="item mbold">Center Button aktivieren</span><!-- menuitem -->
<span class="desc-info">Bindet einen Button ein, mit dem Sie ausgewählten Text im Artikel
zentrieren können. Dies geschicht mittels <code>&lt;center&gt;</code>-HTML-Tag oder
<code>&lt;div class="s9y_typeset_center"&gt;</code>-XHTML-Tag.</span>
</p>


<p class="desc">
<span class="item mbold">Strike-through Button aktivieren</span><!-- menuitem -->
<span class="desc-info">Hiermit können Sie Texte als durchgestrichen auszeichnen, um zB. eine
Änderung in Ihren Artikeln hervorzuheben (<code>&lt;del&gt;</code> für HTML, <code>&lt;s&gt;</code>
für XHTML).</span>
</p>

<p class="desc">
<span class="tag-box invisible">
    <span class="inline-tag">Geschützte Leerzeichen</span>
</span><!-- tagbox -->
<span class="item mbold">Leerzeichen-Button aktivieren</span><!-- menuitem -->
<span class="desc-info">Bei (X)HTML werden mehrere Leerzeichen immer zu einem einzelnen
Leerzeichen zusammengefasst. Um mehrere Leerzeichen hintereinander in
einem Artikel einzubinden, müssen Sie sogenannte <em>geschützte</em>
Leerzeichen verwenden. Dieses wird durch das HTML-Sonderzeichen
<code>&amp;#160;</code> repräsentiert.</span>
</p>

<p class="desc">
<span class="item mbold">Kaufmännisches-Und-Button aktivieren</span><!-- menuitem -->
<span class="desc-info">Das Kaufmännische Und (<code>&amp;</code>) ist bei HTML ein Zeichen, das eine
Formatierung für ein Sonderzeichen einleitet. Daher kann man ein
<code>&amp;</code>-Zeichen nicht einfach alleinstehend einsetzen, sondern muss es
speziell maskieren. Der Button bindet dafür das Sonderzeichen
<code>&amp;#38;</code> ein.</span>
</p>

<p class="desc">
<span class="item mbold">Gedankenstrich-Button aktivieren</span><!-- menuitem -->
<span class="desc-info">Der lange Gedankenstrich wird durch das Sonderzeichen <code>&amp;#8212;</code>
repräsentiert. Wenn Sie die Option <span class="mbold">Use Named Entities</span> aktivieren,
wird stattdessen das (gleichwertige) Sonderzeichen <code>&amp;mdash;</code>
eingebunden, das man sich zugegebenermaßen für eine manuelle Eingabe
besser merken kann.</span>
</p>

<p class="desc">
<span class="item mbold">Kurzer Gedankenstrich-Button aktivieren</span><!-- menuitem -->
<span class="desc-info">Analog zum langen Gedankenstrich gibt es auch einen kurzen
Gedankenstrich, der <code>&amp;#8211;</code> bzw. <code>&amp;ndash;</code> entspricht.</span>
</p>

<p class="desc">
<span class="item mbold">Aufzählungszeichen-Button aktivieren</span><!-- menuitem -->
<span class="desc-info">Das Aufzählungszeichen (ein mittig ausgerichteter Kreis) wird durch das
Sonderzeichen <code>&amp;#8226;</code> bzw. <code>&amp;bull;</code> eingebunden.</span>
</p>

<p class="desc">
<span class="item mbold">Doppelte Anführungszeichen-Button aktivieren</span><!-- menuitem -->
<span class="desc-info">Ein Wort kann in typografischen Anführungszeichen eingebunden werden,
wenn Sie diesen Button aktivieren. Welche Anführungszeichen Sie verwenden
möchten, können Sie mit der darunterstehenden Option festlegen. Abhängig
von der Option <span class="mbold">Use Named Entities</span> werden später auch für diese
Anführungszeichen entweder numerische Codes oder die Namen der
Sonderzeichen (<code>&amp;laquo;, &amp;raquo;</code> etc.) eingefügt.</span>
</p>

<p class="desc">
<span class="item mbold">Choose the type of double quote to use</span><!-- menuitem -->
<span class="desc-info">Hier können Sie einen gewünschten Anführungszeichen-Typ (1 bis 8)
auswählen. Welche Anführungszeichen möglich sind, wird anhand von
Beispielen dargestellt.</span>
</p>

<p class="desc">
<span class="item mbold">Einfache Anführungszeichen-Botton aktivieren</span><!-- menuitem -->
<span class="desc-info">Analog zu doppelten Anführungszeichen können Sie ein Wort auch in
einfachen Anführungszeichen einschließen.</span>
</p>

<p class="desc">
<span class="item mbold">Choose the type of single quote to use</span><!-- menuitem -->
<span class="desc-info">Wie bei den doppelten Anführungszeichen wählen Sie mit dieser Option den
gewünschten Typ (1 bis 8) aus.</span>
</p>

<p class="desc">
<span class="tag-box invisible">
    <span class="inline-tag">Apostroph</span>
</span><!-- tagbox -->
<span class="item mbold">Apostroph-Button aktivieren, Use real apostrophe</span>
<span class="desc-info">
    <span class="box">
        Der Apostroph (<code>'</code>) ist wohl das im deutschen Sprachraum am häufigsten
        falsch eingesetzte Sonderzeichen. Oft sieht man stattdessen die
        gedrehte Variante (<code>`</code>). Auch im HTML-Standard gibt es mehrere
        Möglichkeiten.
    </span>

    <span class="box">
        Das Plugin verwendet entweder <code>&amp;#39;</code>, <code>&amp;#8217;</code> oder
        <code>&amp;rsquo;</code>.
    </span>

    <span class="box">
        <code>&amp;#39;</code> wird benutzt, wenn Sie die Option <span class="mbold">Use real
        apostrophe</span> aktivieren. Dies ist der "einzig wahre" Apostroph.
    </span>

    <span class="box">
        <code>&amp;#8217;</code> wird eingesetzt, wenn Sie die beiden Optionen <span class="mbold">Use
        real apostrophe</span> und <span class="mbold">Use Named Entities</span> nicht aktiviert haben. Das
        daraus resultierende Sonderzeichen ist eigentlich ein einfaches
        Anführungszeichen, das wie ein hochgestelltes Komma aussieht.
    </span>

    <span class="box">
        <code>&amp;rsquo;</code> wird bei deaktiviertem <span class="mbold">Use real apostrophe</span> und
        aktiviertem <span class="mbold">Use Named Entities</span> angezeigt und sieht
        genauso wie <code>&amp;#8217;</code> aus.
    </span>
</span>
</p>

<p class="desc">
<span class="item mbold">Akzent-Button aktivieren</span><!-- menuitem -->
<span class="desc-info">Das häufig als Apostroph missbrauchte Zeichen kann über diesen Button
eingebunden werden (<code>&amp;#x0301;</code>).</span>
</p>

<p class="desc">
<span class="item mbold">Schräger-Akzent-Button aktivieren</span><!-- menuitem -->
<span class="desc-info">Der umgekehrte Akzent wird über diesen Button als <code>&amp;#x0300;</code>
eingebunden.</span>
</p>

<p class="desc">
<span class="item mbold">XHTML-1.1-Standard verwenden</span><!-- menuitem -->
<span class="desc-info">Mit dieser Option bestimmen Sie, ob die Tags für Center und
Strike-Through anhand des HTML- oder des XHTML-Standards eingefügt werden
sollen.</span>
</p>

<p class="desc">
<span class="item mbold">Use Named Entities</span><!-- menuitem -->
<span class="desc-info">Wenn Sie diese Option aktivieren, werden anstelle der Namen einiger
Sonderzeichen die Zahlencodes verwendet. Wenn Sie sich die Sonderzeichen
nicht einprägen wollen, ist es empfehlenswert, diese Option zu
deaktivieren. Die Zahlenwerte (wie <code>&amp;#8211;</code>) können
systemübergreifend besser von Browsern interpretiert werden als die
benannten Sonderzeichen (wie <code>&amp;ndash;</code>).</span>
</p>

<p class="desc">
<span class="tag-box invisible">
    <span class="inline-tag">Eigene Buttons</span>
</span><!-- tagbox -->
<span class="item mbold">Custom HTML-Tags</span><!-- menuitem -->
<span class="desc-info">
    <span class="box">
        Eine sehr flexible Option zum Hinzufügen von beliebigen Buttons in Ihre
        Eintragsmaske stellt die Option <span class="mbold">Custom HTML-Tags</span> dar. Dort können
        Sie eine Liste von HTML-Codes einfügen, die durch Klick auf den
        entsprechenden Button einen gewählten Text mit dem gewünschten HTML-Code
        umgeben.
    </span>

    <span class="box">
        Ein klassisches Einsatzgebiet hierfür ist die Bereitstellung eigener
        Formatierungsvorlagen. Wenn Sie Ihren Redakteuren spezielle
        HTML-DIV-Container in der zentralen Stylesheet-Datei (siehe Kapitel
        <span class="reference">template-css</span> ab <span class="pageref"><a href="#template-css">template-css</a></span>)
        angelegt haben, den Redakteuren aber nicht zumuten wollen, eigenes
        HTML zu schreiben, können Sie für die vorhandenen Container jeweils einen
        eigenen Button hinzufügen. Wenn Sie beispielsweise Zitate durch den
        HTML-Code
    </span>

    <span class="box">
        <span id="pre-style"><code class="html">
            &lt;div class="MyQuote"&gt;<br>
            &nbsp;Errare humanum est<br>
            &lt;/div&gt;
        </code></span>
    </span>

    <span class="box">
        auszeichnen wollen, können Sie dieses <code>&lt;div&gt;</code>-Konstrukt als
        Button oberhalb der Texteingabemaske einbinden. Der Redakteur muss sein
        Zitat dann nur markieren, klickt auf den Button, und daraufhin wird der
        gewählte Text in das aufgeführte HTML-Konstrukt überführt.
    </span>

    <span class="box">
        Welche HTML-Tags Sie einbinden, ist völlig Ihren Wünschen
        überlassen. So könnten Sie dort auch einen Button für das Einfügen von
        JavaScript einbinden.
    </span>

    <span class="box">
        Die Liste der HTML-Tags tragen Sie in dem Konfigurationsfeld <span class="mbold">Custom
        HTML-Tags</span> ein. Diese Liste muss in einem ganz speziellen Format
        vorliegen
    </span>

    <span class="box">
        Zum einen werden mehrere Buttons mit dem Zeichen <code>|</code> (das
        <em>Pipe</em>-Symbol) voneinander getrennt. Der Übersichtlichkeit halber
        können Sie nach jedem <code>|</code> auch gerne einen Zeilenumbruch einfügen.
    </span>

    <span class="box">
        Jeder einzelne Button muss daraufhin drei Attribute besitzen: Wie der
        Button benannt wird, welches HTML-Tag bei einem Klick vor einem
        ausgewählten Text eingefügt wird und welches HTML-Tag nach der
        Textauswahl eingefügt wird. Diese drei Attribute werden von dem
        <code>@</code>-Zeichen voneinander getrennt.
    </span>

    <span class="box">Demnach wäre obiges Beispiel durch folgende Syntax umzusetzen:</span>

    <span class="box">
        <span id="pre-style"><code class="html">
            Zitat@&lt;div class="MyQuote"&gt;@&lt;/div&gt;
        </code></span>
    </span>

    <span class="box">
        Der Button wird also mit dem Text <em>Zitat</em> in der Symbolleiste
        oberhalb des Eintrags eingebunden. Bei einem Klick auf diesen Button wird
        dem Text, den Sie ausgewählt haben, ein <code>&lt;div...&gt;</code>
        vorangestellt und ein <code>&lt;/div&gt;</code> angefügt.
    </span>
</span>
</p>

</section><!-- section.sub end -->

<section id="serendipity_event_userprofiles" class="sub">
<span class="u-toc">6.3.33 - Benutzerprofile: serendipity_event_userprofiles</span>

<h3 class="subsection" id="benutzerprofileserendipity_event_userprofiles">Benutzerprofile<br>serendipity_event_userprofiles</h3>

<p class="tagging invisible">
<span class="tag-box invisible">
    <span class="inline-tag">Plugins!Benutzerprofile</span>
    <span class="inline-tag">Plugins!serendipity_event_userprofiles</span>
    <span class="inline-tag">Benutzerprofile</span>
</span>
</p>

<p>Bei Blogs, in denen mehrere Redakteure schreiben, ist es für den Besucher
oft interessant, Details über einzelne Redakteure zu erfahren. Redakteure
wiederum möchten möglicherweise gerne auch etwas mehr Informationen über
sich preisgeben.</p>

<p>Viele Blogs regeln dies durch Einführungsartikel, in denen sich ein
Redakteur vorstellt. Solche Artikel sind aber später möglicherweise
nicht immer im Blickfeld eines Besuchers.</p>

<p>Deshalb bietet das Plugin <em>Benutzerprofile</em> eine Möglichkeit,
mit der jeder Redakteur Details zu seiner Person in vorausgefüllte Felder
(wie Wohnort, Land, Hobbies, Homepage etc.) eintragen kann. Diese Felder
können Besucher des Blogs dann einsehen, wenn sie im Frontend auf den
Namen eines Redakteurs klicken. Oberhalb der Übersicht der von dem jeweiligen
Redakteur geschriebenen Artikel sehen sie dann eine Box mit den
eingetragenen Profildaten.</p>

<p class="tagging invisible">
<span class="tag-box invisible">
    <span class="inlinetag">Timestamps</span>
    <span class="inline-tag">Unix-Zeitstempel</span>
    <span class="inline-tag">Terminologie!Timestamps</span>
</span>
</p>

<p>Die Benutzerprofile verwaltet das Plugin, indem es sich in den
Admin-Bereich <span class="mbold">Eigene Einstellungen</span> einklinkt.
Unterhalb der bekannten Einstellungen sehen Sie einen neuen Bereich,
in dem die verfügbaren Redakteure aufgelistet sind, wobei Ihr Name
standardmäßig hervorgehoben ist. Direkt darunter befinden sich die
jeweiligen Profilfelder wie <em>Voller Name</em>, <em>Homepage</em>,
<em>Hobbies</em> und so weiter. Dort kann der jeweilige Redakteur
sämtliche Felder seiner Datei ausfüllen und auf
<span class="mbold">Speichern</span> klicken. Bitte beachten Sie,
dass aus technischen Gründen Geburtstage vor dem 01.01.1970 [*]
<span class="footnote"><i class="fa fa-info-circle"></i>
Dieses Datum markiert Sekunde 1 der Unix-Zeitrechnung. Alle
Unix-Server arbeiten intern mit sogenannten Timestamps, daher werden auch
in vielen Datenbanken Timestamps zur Formatierung von Zeitpunkten
verwendet, da damit leichter zu rechnen ist und sie sich einfacher in
beliebige Zeitzonen umrechnen lassen.</span><!-- footnote --> von dem
Plugin leider nicht korrekt ausgewertet werden können.</p>

<p>Zusätzlich bindet das Plugin dieselbe Oberfläche auch unter dem
eigenständigen Menüpunkt <span class="mbold">Administration
<span class="icon arrow-right">→</span> Benutzerprofile</span> ein.</p>

<p>In dem Ausklappfeld der Benutzerprofile können Sie auch die Daten anderer
Redakteure bequem einsehen. Als höherrangiger Chefredakteur oder
Administrator können Sie außerdem alle Profildaten der niederrangigeren
Redakteure bearbeiten. Profildaten von Redakteuren des gleichen
Benutzerranges können Sie nur ansehen, aber nicht bearbeiten.</p>

<p>Wenn Sie auf den Button <span class="mbold">Erweiterte Optionen</span> klicken, können Sie
dort einstellen, welche Ihrer eingetragenen Profildaten für Besucher des
Blogs angezeigt werden sollen. Alle anderen Daten sind nur für
eingeloggte Redakteure über die Benutzerprofilauswahl im Backend zu
sehen. So können Sie bestimmte Daten, wie Ihre Telefonnummer, nur den
Redakteuren zugänglich machen. Auch werden im Frontend nur dann wirklich
aktivierte Datensätze angezeigt, wenn Sie sie auch ausgefüllt haben. Wenn
Sie also keine Hobbies eingetragen haben, wird das leere Feld einfach
übersprungen. Standardmäßig sind alle Profilfelder deaktiviert, damit ein
Redakteur nur auf seinen ausdrücklichen Wunsch seine Informationen
veröffentlichen kann.</p>

<p class="tagging invisible">
<span class="tag-box invisible">
    <span class="inlinetag">vCard</span>
</span>
</p>

<p>Bearbeiten Sie einen Datensatz, erscheint neben dem Ausklappfeld der
Benutzerprofile ein weiterer Button <span class="mbold">VCard-Datei erstellen</span>. Wenn
Sie darauf klicken, wird eine VCard-Datei in der Mediendatenbank erstellt
(<code>uploads/Benutzername.vcf</code>). Diese Datei können Sie dann
herunterladen
(<code>http://www.example.com/serendipity/uploads/Benutzername.vcf</code>)
bzw. später in Blog-Einträgen einbinden. Eine VCard-Datei ist ein
standardisiertes Format für eine Visitenkarte und enthält die
Profildaten des Redakteurs. VCards können zum Beispiel in E-Mail-Programme
eingebunden werden.</p>

<p>Abgesehen von den Benutzerprofilen bietet das Plugin auch noch weitere
Funktionalität an. Zum einen ist dies, dass für jeden Redakteur ein
eigenes Bild für dessen Einträge eingebunden werden kann. Ein Besucher
muss so nicht erst nach einem Autorennamen suchen, sondern kann anhand des
Bildes leichter unterschiedliche Redakteure zuordnen.</p>

<p>Das jeweilige Bild muss dazu zuerst in der
Konfiguration des Plugins mit der Option <span class="mbold">Bild des Autoren im
Eintrag zeigen</span> aktiviert werden. Die Bilder, die das Plugin einbindet,
müssen sich in einem Unterverzeichnis <code>img</code> Ihres jeweiligen
Template-Verzeichnisses befinden. Der Dateiname richtet sich nach dem
vollständigen Namen des Redakteurs sowie der im Plugin konfigurierten
<span class="mbold">Dateiendung</span> (standardmäßig jpg). Damit der Redakteursname in einen
gültigen Dateinamen umgewandelt werden kann, müssen Sie für den
Dateinamen alle Sonderzeichen, Umlaute und Leerzeichen mit einem
Unterstrich (<code>_</code>) ersetzen. Für den Redakteur <em>John Doe</em>
müssen Sie also eine Datei wie <code>templates/default/img/John_Doe.jpg</code>
erstellen. Beachten Sie dabei die Groß- und Kleinschreibung des
Redakteursnamens!</p>

<p class="tagging invisible">
<span class="tag-box invisible">
    <span class="inline-tag">Gravatar</span>
</span>
</p>

<p>Da diese Art der Bildereinbindung relativ komplex ist und ein Redakteur
ohne FTP-Zugriff zum Blog keine Bilder einstellen kann, bietet das Plugin
auch eine andere Möglichkeit für individuelle Redakteursbilder. Diese
können nämlich alternativ über den Webservice
<code>http://www.gravatar.com</code> eingebunden werden. Der Gravatar-Dienst
ermöglicht es Ihnen, eine beliebige Grafikdatei hochzuladen, die mit
einer E-Mail-Adresse verbunden wird. Die E-Mail-Adresse eines Redakteurs
wird bei der Darstellung seiner Artikel ausgewertet und somit das Bild
vom Gravatar-Server eingebunden. Das heißt, jeder Redakteur kann für
seine E-Mail-Adresse einen Gravatar registrieren, und dieser wird dann
ohne weiteres Zutun dargestellt. Damit dies klappt, muss in der
Plugin-Konfiguration die Option <span class="mbold">Gravatar-Bild bevorzugen</span> aktiviert
werden. Einige weitere Optionen regeln zudem, welche Standard-Bilddatei
bei Redakteuren angezeigt wird, die keinen Gravatar besitzen, und welche
Größe die Bilder haben sollen.</p>

<p>Für weitere Möglichkeiten der Gravatar-Unterstützung bietet sich das Plugin
<span class="mbold">Avatar Plugin</span> an, das über Spartacus erhältlich ist. Dies bindet
Gravatare auch für Besucher des Blogs ein.</p>

<p>Die Option <span class="mbold">Anzahl der Kommentare zeigen</span> des Plugins stellt eine
besondere Möglichkeit dar, mit der bei jedem Kommentar eines Benutzers
angezeigt wird, wie viele Kommentare dieser insgesamt bereits im Blog
hinterlassen hat. Diese Option ist besonders dann interessant, wenn Sie
ein geschlossenes Blog führen, in dem Kommentare nur für registrierte
Benutzer möglich sind. Solche Benutzer besitzen meist keine
Redakteursrechte, sondern kommentieren lediglich Artikel. Mit der
Aktivierung der genannten Option kann man als Besucher des Blogs so
leicht nachverfolgen, welche Benutzer oft kommentieren. In dem
Auswahlfeld dieser Option haben Sie die Wahl zwischen mehreren
Optionen.</p>

<p class="desc">
<span class="item mbold">keine</span><!-- menuitem -->
<span class="desc-info">Diese Option deaktiviert die Einbindung von Kommentarzählern.</span>
</p>

<p class="desc">
<span class="item mbold">An Kommentartext anhängen</span><!-- menuitem -->
<span class="desc-info">Bei dieser Option wird die Anzahl der Kommentare in Klammern hinter dem
jeweiligen Kommentar angezeigt. Wenn ein Benutzer also den Kommentar
"<em>Das war sehr interessant!</em>" schreibt, dann wird dahinter
"<em>Kommentare (42)</em>" eingefügt. Der Kommentartext wird innerhalb
eines HTML-Containers mit der Klasse <code>.serendipity_commentcount</code>
eingebunden, den Sie in der CSS-Datei Ihres Templates beliebig
formatieren können. Standardmäßig ist dieser Kommentarblock rechtsbündig
gesetzt.</span>
</p>

<p class="desc">
<span class="item mbold">Vor Kommentartext setzen</span><!-- menuitem -->
<span class="desc-info">Diese Option ist identisch zur vorangehenden, setzt den Kommentarzähler
aber an den Anfang.</span>
</p>

<p class="desc">
<span class="item mbold">Eigenes Smarty Template</span><!-- menuitem -->
<span class="desc-info">Statt den Kommentartext zu modifizieren, können Sie die Anzahl der
Kommentare auch an einer speziellen Position innerhalb der
Kommentardarstellung einbinden. Kommentare werden mit der
Smarty-Template-Datei <code>comments.tpl</code> dargestellt, dort können Sie die
Variable
<span class="tag-box invisible">
    <span class="inline-tag">Template-Variablen!\$comment.plugin_commentcount</span>
</span>
<code>$comment.plugin_commentcount</code> an beliebiger Stelle setzen.</span>
</p>

<p>&nbsp;</p><!-- separator -->

<p>Das <em>Benutzerprofile</em>-Plugin ermöglicht es Besuchern des Blogs, eine
Übersicht aller Benutzergruppen des Blogs einzusehen. Gerade bei
Gruppenblogs ist die Aufteilung in Benutzergruppen von großem Interesse,
wie man es auch von Foren her kennt.
Über
<code>http://www.example.com/serendipity/index.php?serendipity[subpage]=userprofiles</code>
kann der Besucher diese Liste einsehen. Er kann über ein Auswahlfeld die
jeweilige Benutzergruppe aussuchen und mit einem Klick auf <span class="mbold">Los</span>
alle Mitglieder der Gruppe anzeigen lassen. Standardmäßig werden der
Benutzername, die Anzahl der Artikel des Redakteurs, der echte Name des
Redakteurs und seine E-Mail-Adresse angezeigt.</p>

<p>Zusätzlich bietet das Benutzerprofile-Plugin zwei kleine
Seitenleisten-Plugins an. Zum einen das gleichnamige Plugin
<em>Benutzerprofile</em>, welches eine Liste aller verfügbaren Benutzer und
Benutzergruppen anzeigen kann, und zum anderen das Plugin namens
<em>Geburtstage von Redakteuren</em>, mit dem Sie die zukünftigen
Geburtstage darstellen können.</p>

<p>Das Layout und die dargestellten Datensätze der Benutzerliste können Sie
über die Smarty-Template-Datei
<span class="tag-box invisible">
    <span class="inline-tag">Template-Dateien!plugin_groupmembers.tpl</span>
</span>
<code>plugin_groupmembers.tpl</code> anpassen. Es gibt dort folgende Variablen,
die für Smarty-Kenner wichtig sind:</p>

<p class="desc citem-desc">
<span class="tag-box invisible">
    <span class="inline-tag">Template-Variablen!\$userprofile_groups</span>
</span>
<code class="item smarty">{$userprofile_groups}</code>: Array (id, name)
<span class="desc-info">
    <span class="box">Enthält eine Liste aller verfügbaren Gruppen.</span>

    <span class="box">
        <code>$userprofile_groups.X.id</code> enthält die ID einer jeweiligen Gruppe,
        <code>$userprofile_groups.X.name</code> den Namen.
    </span>
</span>
</p>

<p class="tagging invisible">
<span class="tag-box invisible">
    <span class="inline-tag">Template-Variablen!\$selected_group</span>
</span>
</p>

<p class="desc citem-desc">
<code class="item smarty">{$selected_group}</code>: Int
<span class="desc-info">Enthält die ID der vom Besucher ausgewählten Gruppe. Falls nicht gesetzt,
ist noch keine Gruppe gewählt.</span>
</p>

<p class="tagging invisible">
<span class="tag-box invisible">
    <span class="inline-tag">Template-Variablen!\$selected_group_data</span>
</span>
</p>

<p class="desc citem-desc">
<code class="item smarty">{$selected_group_data}</code>: Array (id, name)
<span class="desc-info">Enthält die ID und den Namen der vom Besucher ausgewählten Gruppe.</span>
</p>

<p class="tagging invisible">
<span class="tag-box invisible">
    <span class="inline-tag">Template-Variablen!\$selected_members</span>
</span>
</p>

<p class="desc citem-desc">
<code class="item smarty">{$selected_members}</code>: Array (realname, username, authorid, email, userlevel, posts ...)
<span class="desc-info">In diesem Array werden die Mitglieder der vom Besucher gewählten Gruppe
gespeichert. Als Schlüssel des Arrays sind alle Tabellenfelder der
<code>serendipity_authors</code>-Tabelle verfügbar sowie zusätzlich der
Schlüssel <code>$selected_membmers.X.posts</code> für die Anzahl der vom
Redakteur geschriebenen Artikel.</span>
</p>

<p>&nbsp;</p><!-- separator -->

<p>Die Darstellung der jeweiligen Benutzerprofile wird über die Template-Datei
<span class="tag-box invisible">
    <span class="inline-tag">Template-Dateien!plugin_userprofile.tpl</span>
</span>
<code>plugin_userprofile.tpl</code> gesteuert. In dieser Datei sind die
nötigen IF-Abfragen enthalten, die bestimmen, welche Datensätze angezeigt
werden. Folgende Variablen sind verfügbar:</p>

<p class="desc citem-desc">
<span class="tag-box invisible">
    <span class="inline-tag">Template-Variablen!\$userProfile</span>
</span>
<code class="item smarty">{$userProfile}</code>: Array
<span class="desc-info">
    <span class="box">
        In diesem Array speichert das Plugin alle Angaben eines Benutzerprofils.
        Für jede Profilangabe besteht ein Schlüssel, dessen Wert die Eingabe des
        Benutzers enthält:
    </span>

    <span class="box">
        <span id="pre-style"><code class="smarty">
            $userProfile.(city, street, country, url, occupation, hobbies, yahoo, aim, jabber, icq, msn, skype, birthday)
        </code></span>
    </span>
</span>
</p>

<p class="tagging invisible">
<span class="tag-box invisible">
    <span class="inline-tag">Template-Variablen!\$userProfileProperties</span>
</span>
</p>

<p class="desc citem-desc">
<code class="item smarty">{$userProfileProperties}</code>: Array
<span class="desc-info">
    <span class="box">
        Dieses Array enthält eine Liste aller möglichen Konfigurationsoptionen
        eines Datensatzes:
    </span>

    <span class="box">
        <span id="pre-style"><code class="smarty">
            $userProfileProperties.(show_city, show_street, show_country, show_url, show_occupation, show_hobbies,
            show_yahoo, show_aim, show_jabber, show_icq, show_msn, show_skype, show_birthday, city, street,
            country, url, occupation, hobbies, yahoo, aim, jabber, icq, msn, skype, birthday)
        </code></span>
    </span>

    <span class="box">
        Zu jedem Schlüssel gibt es
        ein weiteres Array, in dem der Typ der Eigenschaft und dessen
        Beschreibung enthalten ist. <code>$userProfileProperties.show_city.type</code>
        enthält "boolean",
        <code>$userProfileProperties.show_city.desc</code> enthält "Stadt anzeigen".
    </span>
</span>
</p>

<p class="tagging invisible">
<span class="tag-box invisible">
    <span class="inline-tag">Template-Variablen!\$userProfileLocalProperties</span>
</span>
</p>

<p class="desc citem-desc">
<code class="item smarty">{$userProfileLocalProperties}</code>: Array
<span class="desc-info">
    <span class="box">
        Analog zum Array <code>$userProfileProperties</code> enthält dieses Array alle
        lokalen Benutzerdaten. Diese werden nicht im Benutzerprofil gespeichert,
        sondern stammen aus der Datenbanktabelle <code>serendipity_authors</code> und
        sind gleich benannt:
    </span>

    <span class="box">
        <span id="pre-style"><code class="smarty">
            $userProfileLocalProperties.(realname, username, email)
        </code></span>
    </span>

    <span class="box">
        Auch hier enthält der Array-Unterschlüssel <code>.desc</code>
        die Beschreibung einer Konfigurationsoption und <code>.type</code> den Typen.
    </span>
</span>
</p>

<p class="desc citem-desc">
<span class="tag-box invisible">
    <span class="inline-tag">Template-Variablen!\$userProfileTitle</span>
</span>
<code class="item smarty">{$userProfileTitle}</code>: String
<span class="desc-info">Diese Variable enthält den Namen des Benutzerprofil-Plugins.</span>
</p>

<p>&nbsp;</p><!-- separator -->

<p>Die Standardausgabe des Plugins lässt sich weiterhin über die CSS-Klasse
<code>.serendipityAuthorProfile</code> optisch anpassen.</p>

<p>Wenn Sie mehr als die festgelegten Profilfelder anzeigen wollen,
können Sie das Plugin relativ leicht anpassen. Dazu müssen Sie
<code>plugins/serendipity_event_userprofiles/serendipity_event_userprofiles.php</code>
editieren und die Variablen <code>$properties</code> und
<code>$option_properties</code> ergänzen. Sie können dazu das bestehende
Format mittels Kopieren &amp; Einfügen übernehmen und lediglich die
Benennung der Felder anpassen. Die neuen Variablen können daraufhin
automatisch in der Profilverwaltung eingetragen werden; damit diese
angezeigt werden können, müssen Sie noch die jeweiligen Variablen in der
Template-Datei <code>plugin_userprofile.tpl</code> ergänzen.</p>

<p>Wenn Sie beispielsweise eine neue Profiloption namens "Lieblingsfarbe"
einbauen möchten, fügen Sie Folgendes dem Array <code>$properties</code> in der
PHP-Datei des Plugins am Ende hinzu:</p>

<pre><code class="php">
    , 'farbe' =&gt; array('desc' =&gt; 'Lieblingsfarbe',<br>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 'type' =&gt; 'string')
</code></pre>

<p>Wenn Sie die Farbe als letztes Element einfügen (hinter
<code>'birthday'</code>), müssen Sie darauf achten, dass hinter der Klammer nach
<code>'date')</code> ein neues Komma eingefügt werden muss, damit PHP weiß,
dass dies nicht das letzte Element einer Liste war. Daher ist in obigem
Code-Beispiel das notwendige Komma enthalten. Wenn Sie die Liste
fehlerhaft (ohne Komma oder mit doppelten Kommas) eintragen, wird das
Plugin nicht mehr funktionieren. Sie müssen den Fehler dann erst
aufspüren und korrigieren.</p>

<p>Nun können Sie bereits das neue Profilfeld <code>farbe</code> ausfüllen, aber
noch nicht bestimmen, ob es angezeigt werden soll. Dazu müssen Sie noch
das Array <code>$option_properties</code> anpassen und genauso wie vorher
eine neue Zeile einfügen:</p>

<pre><code class="php">
    , 'show_farbe' =&gt; array('desc' =&gt; 'Lieblingsfarbe anzeigen',<br>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 'type' =&gt; 'boolean')
</code></pre>

<p>Der Redakteur kann jetzt auch bestimmen, dass seine Lieblingsfarbe
angezeigt wird. Damit sie auch erscheint, fehlt nur noch eine neue
Zeile in der <code>plugin_userprofile.tpl</code>-Datei, die Sie ebenfalls
hinter der bereits bestehenden Ausgabe an IF-Abfragen einsetzen:</p>

<pre><code class="smarty">
    {if $userProfile.farbe and $userProfile.show_farbe == "true"}<br>
    &nbsp;&nbsp;&nbsp; &lt;dt&gt;{$userProfileProperties.farbe.desc}&lt;/dt&gt;<br>
    &nbsp;&nbsp;&nbsp; &lt;dd&gt;{$userProfile.farbe}&lt;/dd&gt;<br>
    {/if}
</code></pre>

<p>Dieser Codeschnipsel prüft, ob ein Redakteur die Lieblingsfarbe
ausgefüllt hat und ob er diese auch darstellen möchte. Im folgenden HTML-Tag
<code>&lt;dt&gt;</code> wird dann die oben eingetragene Beschreibung namens
<code>Lieblingsfarbe</code> eingefügt, und im HTML-Tag <code>&lt;dd&gt;</code> erscheint die
Lieblingsfarbe des Redakteurs.</p>

<article id="XU" class="subsub">

<header>
    <h4 class="subarticle" id="datenbanktabellen-2">Datenbanktabellen</h4>
</header>

<p class="tagging invisible">
<span class="tag-box invisible">
    <span class="inline-tag">Datenbank-Tabellen!serendipity_profiles</span>
</span>
</p>

<p>Das Plugin erstellt die Datenbanktabelle <code>serendipity_profiles</code>, in der die
jeweiligen Profileigenschaften zu jedem Autor gespeichert werden.</p>

<p>Jeder Datenbankeintrag steht dabei für eine Profileigenschaft, so dass beliebig
viele und verschiedene Eigenschaften für einen Autor vergeben werden können.
Das Feld <code>authorid</code> enthält dabei die ID des Redakteurs, <code>property</code>
enthält den Namen der Profileigenschaft und <code>value</code> den jeweils zugeordneten
Wert.</p>

</article>

</section><!-- section.sub end -->

<section id="serendipity_event_versioning" class="sub">
<span class="u-toc">6.3.34 - Versioning of entries: serendipity_event_versioning</span>

<h3 class="subsection" id="versioning-of-entriesserendipity_event_versioning">Versioning of entries<br>serendipity_event_versioning</h3>

<p class="tagging invisible">
<span class="tag-box invisible">
    <span class="inline-tag">Plugins!Versioning of entries</span>
    <span class="inline-tag">Plugins!serendipity_event_versioning</span>
</span>
</p>

<p class="tagging invisible">
<span class="tag-box invisible">
    <span class="inline-tag">Versionierung</span>
    <span class="inline-tag">Backup</span>
    <span class="inline-tag">Sicherheitsmaßnahmen</span>
</span>
</p>

<p>Jedesmal wenn Sie einen Blog-Artikel neu speichern, wird die vorige
Version überschrieben. Wenn Sie einen Beitrag versehentlich durch ein
einziges Wort ersetzen und speichern, ist also sämtlicher voriger Text
unwiderruflich verloren.[*]
<span class="footnote"><i class="fa fa-info-circle"></i> Es sei denn, Sie haben vorausschauend
regelmäßig Backups angelegt.</span><!-- footnote -->
</p>

<p>Um dieses Problem zu umgehen, gibt es das Plugin <em>Versioning of
entries</em>. Wie der englische Titel suggeriert, kümmert sich das Plugin um
eine Versionskontrolle von Artikeln. Jedes Speichern eines Artikels mit
unterschiedlichem Text führt dazu, dass das Plugin den Artikeltext
(<em>Eintrag</em> und <em>Erweiterter Eintrag</em>) in einer zweiten
Datenbanktabelle (<code>serendipity_versioning</code>) speichert. Diese
Datensatzkopie wird mit dem aktuellen Datum und Autor verknüpft.</p>

<p>In der Konfiguration des Plugins können Sie einstellen, ob mehrere
Versionen eines Artikels auch für Ihre Besucher im Frontend dargestellt
werden sollen. Ein Besucher kann dann eine beliebige vorige Version
aufrufen und so nachlesen, was sich zwischen den einzelnen
Bearbeitungszuständen verändert hat.</p>

<p>Ein Redakteur hat im Abschnitt <em>Erweiterte Optionen</em> beim Erstellen
oder Bearbeiten eines Artikels die Möglichkeit, eine beliebige
vorhergehende Version wiederherzustellen und neu abzuspeichern. Die
Zwischenversionen bleiben dabei intakt, da die Übernahme einer alten
Version lediglich eine neue, aktuelle Version einführt.</p>

<p>Bitte beachten Sie, dass das Plugin außer dem Artikeltext keine anderen
Veränderungen [*]
<span class="footnote"><i class="fa fa-info-circle"></i> Beispielsweise an <em>Erweiterten Optionen</em>, der
Kategoriezuweisung oder auch dem Artikeltitel.</span><!-- footnote --> speichern und auch
in der jetzigen Version keinen Vergleich innerhalb der Versionen
durchführen kann.</p>

<article id="XU" class="subsub">

<header>
    <h4 class="subarticle" id="datenbanktabelle">Datenbanktabelle</h4>
</header>

<p>
<span class="tag-box invisible">
    <span class="inline-tag">Datenbank-Tabellen!serendipity_versioning</span>
</span>
Die Datenbanktabelle <code>serendipity_versioning</code> enthält alle gespeicherten
Versionen eines Artikels:</p>

<p class="desc sql-field-group">
    <code class="item sql-field">id</code> enthält die fortlaufende Versionsnummer.
    <code class="item sql-field">entry_id</code> enthält die Artikel-ID der jeweiligen Version.
    <code class="item sql-field">version</code> enthält eine numerisch erhöhte Versionsnummer.
    <code class="item sql-field">body</code> enthält den Artikeltext dieser Version.
    <code class="item sql-field">extended</code> enthält den erweiterten Artikeltext dieser Version.
    <code class="item sql-field">version_date</code> enthält das Datum, an dem diese Revision angelegt wurde.
    <code class="item sql-field">version_author</code> enthält die ID des Redakteurs, der diese Revision erstellt hat.
</p>

</article>

</section><!-- section.sub end -->

<section id="serendipity_event_weblogping" class="sub">
<span class="u-toc">6.3.35 - Einträge ankündigen: serendipity_event_weblogping</span>

<h3 class="subsection" id="einträge-ankündigenserendipity_event_weblogping">Einträge ankündigen<br>serendipity_event_weblogping</h3>

<p class="tagging invisible">
<span class="tag-box invisible">
    <span class="inline-tag">Plugins!Einträge ankündigen</span>
    <span class="inline-tag">Plugins!serendipity_event_weblogping</span>
</span>
<span class="label invisible" id="weblogping">weblogping</span>
</p>

<p>Nach der Veröffentlichung eines Artikels möchten
Sie natürlich auch, dass Ihre Besucher diesen lesen. Damit
Internet-Surfer auf neue Blog-Einträge aufmerksam werden (und auch
Suchmaschinen neue Beiträge direkt aufnehmen), kann das Plugin
<em>Einträge ankündigen</em> Verbindung zu Webservices aufnehmen.</p>

<p>Zur Benachrichtigung für neue Einträge existiert eine Standard-API, die
sich "Ping" nennt. Die API (<code>weblogUpdates.ping</code> und
<code>weblogUpdates.extendedPing</code>) wird mittels XML-RPC-Schnittstelle
aufgerufen. Damit Serendipity einen Artikel bei einem Webservice
ankündigen kann, muss der Webservice diese Schnittstelle auch
bereitstellen. Weiterhin muss Ihr Webserver in der Lage sein, ausgehende
HTTP-Verbindungen zu anderen Internet-Servern herzustellen. Eine Firewall
muss also entsprechend konfiguriert werden.</p>

<p>Sobald das Plugin installiert ist, sehen Sie in dem Abschnitt
<em>Erweiterte Optionen</em> beim Erstellen eines Artikels ein Feld, in dem
Sie auswählen können, zu welchen Webservices ein Ping gesendet werden
soll. Jeden gewünschten Webservice können Sie dort ankreuzen, die
Voreinstellungen können Sie über die Konfiguration des Plugins
beeinflussen.</p>

<p>Abhängig von der Sprache des Blogs werden unterschiedliche Webservices
angeboten. Für deutsche Blogs sind dies: Ping-o-matic, blo.gs,
blogrolling.com, technorati.com, weblogs.com, ge.bloggt.org, Yahoo! und
Google.</p>

<p>
<span class="tag-box invisible">
    <span class="inline-tag">Fehler!langsames Speichern von Artikeln</span>
    <span class="inline-tag">Fehler!Abbruch beim Speichern von Artikeln</span>
</span>
Jeder Dienst, den Sie über einen neuen Artikel informieren, wird beim
Veröffentlichen des Artikels etwas Zeit in Anspruch nehmen. Wenn das
Speichern eines Artikels sehr lange dauert oder zu Fehlern führt, kann
dies also am Plugin <em>Einträge ankündigen</em> liegen. In diesem Fall
sollten Sie die Anzahl der gepingten Services reduzieren oder das Plugin
vollständig deaktivieren. Einige Webservices dienen als "Weiterleitung"
von Pings, zB. der Dienst Ping-o-matic. Wenn Sie diesen benutzen, können
Sie sich das Pingen anderer Dienstleister sparen, allerdings ist
Ping-o-matic nicht immer vollständig funktionstüchtig [*]
<span class="footnote"><i class="fa fa-info-circle"></i> Siehe
<a href="http://pingomatic.com/" target="_blank">http://pingomatic.com/</a></span><!-- footnote -->. Das Plugin wird automatisch die
Webservices in der Liste abwählen, die bereits von einem solchen Meta-Service
verwaltet werden.</p>

<p>In der Konfiguration des Plugins können Sie zusätzlich eigene Webservices
eintragen, zu denen Sie Pings setzen wollen. Tragen Sie diese mit einem
Komma voneinander getrennt in <span class="mbold">Selbstdefinierte
Ping-Services</span> ein. Da jeder Webservice unter einer speziellen URL
aufrufbar ist, müssen Sie diese im Format <code>host.domain/pfad</code> (also
zB. <code>rpc.blogrolling.com/pinger/</code> für den Webservice von
BlogRolling.com) im Eingabefeld eintragen. Die XML-RPC-Spezifikation
ermöglicht entweder einen <em>einfachen</em> oder einen <em>erweiterten</em>
Ping. Beim erweiterten Ping wird die URL Ihres RSS-Feeds an den
Webservice übermittelt, der anhand des Feeds weitere Daten Ihres Blogs
einlesen kann. Wenn ein selbst definierter Webservice diese Option
unterstützt, können Sie ein <code>*</code> vor den Hostnamen setzen.</p>

</section><!-- section.sub end -->

<section id="serendipity_event_wrapurl" class="sub">
<span class="u-toc">6.3.36 - WrapURL: serendipity_event_wrapurl</span>

<h3 class="subsection" id="wrapurlserendipity_event_wrapurl">WrapURL<br>serendipity_event_wrapurl</h3>

<p class="tagging invisible">
<span class="tag-box invisible">
    <span class="inline-tag">Plugins!WrapURL</span>
    <span class="inline-tag">Plugins!serendipity_event_wrapurl</span>
</span>
<span class="label invisible" id="wrapurl">wrapurl</span>
<span class="tag-box invisible">
    <span class="inline-tag">iframe</span>
    <span class="inline-tag">Fremdinhalte einbinden</span>
</span>
</p>

<p>Ähnlich wie das vorausgehende Plugin kümmert sich das
<em>WrapURL</em>-Plugin darum, einen fremden Inhalt in Ihrem Blog
einzubinden.</p>

<p>Dabei nutzt dieses Plugin einen kleinen Trick namens <em>iframe</em>.
Iframes werden von Browsern so genutzt, dass die Inhalte einer
anderen Seite verschachtelt innerhalb einer Oberseite eingebunden werden.
Der technische Vorteil dabei ist, dass man beliebige fremde (und
auch eigene) Inhalte so auf einer Seite ohne <em>Layoutnarben</em>
einbinden kann. Die Darstellung wirkt im Browser wie aus einem Guss,
obwohl in Wirklichkeit zwei unabhängige Seiten geladen werden.</p>

<p>Der Vorteil besteht darin, dass man zwei unabhängige
Anwendungen ohne viel technischen Aufwand miteinander verbinden kann. Die
fremde Anwendung kann also eigene Kopf-/Fußzeilen und HTML-Konstrukte
ausgeben und muss sich nicht um die Umgebung kümmern, in der die
Anwendung eingebettet ist.</p>

<p>Das einzige layout-technische Problem des Plugins ist, dass der
unsichtbare <em>Frame</em> der fremden Anwendung eine Mindesthöhe in Pixeln
enthalten muss, da sich die Höhe des Frames in der Wirtsumgebung leider
nicht dynamisch an die Seitenhöhe der Anwendung anpassen kann.</p>

<p>Folgende Optionen können für das Plugin eingestellt werden:</p>

<p class="desc">
<span class="item mbold">Headline</span><!-- menuitem -->
<span class="desc-info">Oberhalb der eingebundenen Zielseite kann Serendipity eine Überschrift im
Layout des Blogs einbinden. Welche Überschrift benutzt wird, können Sie
im Feld <span class="mbold">Headline</span> einstellen.</span>
</p>

<p class="desc">
<span class="item mbold">Permalink</span><!-- menuitem -->
<span class="desc-info">Globaler Permalink, um die Ausgabe des Plugins im Frontend sehen zu
können. Details siehe Seite
<span class="pageref"><a href="#Standardpluginkonfiguration-Permalink">Standardpluginkonfiguration-Permalink</a></span>.</span>
</p>

<p class="desc">
<span class="item mbold">URL shorthand name</span><!-- menuitem -->
<span class="desc-info">Globale Variable, die einen alternativen Permalink zur Ausgabe des
Plugins im Frontend bereitstellt. Details siehe Seite
<span class="pageref"><a href="#Standardpluginkonfiguration-Pagetitle">Standardpluginkonfiguration-Pagetitle</a></span>.</span>
</p>

<p class="desc">
<span class="item mbold">The URL</span><!-- menuitem -->
<span class="desc-info">Im Feld <span class="mbold">The URL</span> tragen Sie das Ziel des iframes ein. Diese URL
entspricht der externen Webseite, die Sie einbinden wollen, und muss
vollständig (also zB. <code>http://www.example.com/googlemap.html</code>) eingetragen
werden. Sie können auch vollständige URLs mit GET-Parametern einbinden:
<code>http://www.example.com/users?id=15&amp;output=html</code></span>
</p>


<p class="desc">
<span class="item mbold">Height in Pixels</span><!-- menuitem -->
<span class="desc-info">Ein iframe benötigt eine Höhenangabe innerhalb der Einbindung einer
Webseite. Damit die fremde Webseite in Ihrem Blog-Layout möglichst
vollständig eingebunden werden kann, müssen Sie eine maximale Höhe in
Pixeln für den iframe eintragen. Der iframe wird dabei in eine Tabelle
eingebunden, in der die Höhe der Tabellenzelle der von Ihnen festgelegten
Pixelzahl entspricht. Der iframe selbst wird innerhalb dieser Zelle mit
100-prozentiger Höhe eingebunden, da man durch diese Technik die spätere
Höhe relativ genau festlegen kann.</span>
</p>

<p class="desc">
<span class="item mbold">Append GET-Variables</span><!-- menuitem -->
<span class="desc-info">
    <span class="box">
        Wenn Sie eine fremde Webanwendung über einen iframe einbinden, müssen Sie
        oft spezielle Parameter in der URL übergeben, beispielsweise für die
        Einbindung einer Bildergalerie:
        <code>http://www.example.com/galerie/index.php?album=Albumname</code>. Diese
        Variable müssten Sie jedoch eigentlich im Eingabefeld <span class="mbold">The URL</span>
        festlegen und danach für jedes Album einer Galerie ein
        eigenes WrapURL-Plugin installieren. Das wäre ein gewaltiger
        Verwaltungsaufwand; besser wäre es, wenn Sie einfach die benötigte
        Variable <code>album</code> an das Wrap-URL Plugin übergeben, und dies
        leitet die Variable an den iframe weiter.
    </span>

    <span class="box">
        Dies erreichen Sie durch Aktivierung von <span class="mbold">Append
        GET-Variables</span>. In diesem Fall können Sie Ihren
        WrapURL-Permalink per
        <code>http://www.example.com/serendipity/wpages/pagetitle.html?album=Albumname</code>
        bzw.
        <code>http://www.example.com/serendipity/index.php?serendipity[subpage]=alternativurl&amp;album=Albumname</code>
        aufrufen und so die Variable <code>album</code> an den iframe weiterreichen.
    </span>
</span>
</p>

<p class="desc">
<span class="item mbold">Hide sidebars</span><!-- menuitem -->
<span class="desc-info">
    <span class="box">
        Standardmäßig wird der Inhalt eines iframes innerhalb Ihres gewöhnlichen
        Blog-Templates eingebunden, daher bleiben auch die Seitenleisten-Plugins
        erhalten. Gerade dies macht Ihr Blog-Layout meistens aus, und so ist
        es durchaus gewünscht, das vollständige Layout zu sehen.
    </span>

    <span class="box">
        Wenn Sie die Option <span class="mbold">Hide sidebars</span> aktivieren, können Sie die
        Anzeige der Seitenleisten-Plugins unterbinden.
    </span>
</span>
</p>

</section><!-- section.sub end -->

<section id="serendipity_event_xmlrpc" class="sub">
<span class="u-toc">6.3.37 - Einträge via XML-RPC erstellen: serendipity_event_xmlrpc</span>

<h3 class="subsection" id="einträge-via-xml-rpc-erstellenserendipity_event_xmlrpc">Einträge via XML-RPC erstellen<br>serendipity_event_xmlrpc</h3>

<p class="tagging invisible">
<span class="label invisible" id="xmlrpc">xmlrpc</span>
<span class="tag-box invisible">
    <span class="inline-tag">Plugins!Einträge via XML-RPC erstellen</span>
    <span class="inline-tag">Plugins!serendipity_event_xmlrpc</span>
</span>
</p>

<p>Inzwischen haben Sie bereits gelernt, Artikel in Serendipity über das
Backend, eine E-Mail und das POPfetcher-Plugin und auch über den Import
von RSS-Feeds zu erstellen.</p>

<p>
<span class="tag-box invisible">
    <span class="inline-tag">XML-RPC!API</span>
</span>
Wem das noch nicht genug ist, der kann sich einer weiteren beliebten Methode
bedienen: der XML-RPC API.</p>

<p>Was dank Akronymen erstmal kryptisch klingt, ist recht simpel: Über eine
technische Spezifikation kann eine beliebige Software auf Ihrem Computer
(dem Client) mit Serendipity (dem Server) interagieren.</p>

<p>So können Sie einen Artikel mit der Software (dem sogenannten <em>Blog
Client</em>) erstellen und dann an das Serendipity-Blog übermitteln. Durch
derartige Software müssen Sie keinen Internet-Browser mehr benutzen.</p>

<p>Die Vorteile sind: Sie können Artikel auch offline erstellen und
formatieren, können diese lokal (wie ein Office-Dokument) speichern und
oft mit leistungsfähigeren WYSIWYG-Editoren, als es im Browser möglich ist,
ein komplexeres Layout umsetzen. Blog-Editoren sind häufig optisch sehr
simpel gehalten und sind somit für manche Zielgruppen zugänglicher als
die Bedienung der browserbasierten Oberfläche Serendipitys.</p>

<p>
<span class="tag-box invisible">
    <span class="inline-tag">Blogdesk</span>
    <span class="inline-tag">LiveWrite</span>
    <span class="inline-tag">BlogJet</span>
    <span class="inline-tag">Ecto</span>
    <span class="inline-tag">w.bloggar</span>
</span>
Abhängig von Ihrem Betriebssystem gibt es mehrere Editoren:
Blogdesk [*]
<span class="footnote"><i class="fa fa-info-circle"></i> <a href="http://www.blogdesk.org/" target="_blank">http://www.blogdesk.org/</a></span><!-- footnote -->,
BlogJet [*]
<span class="footnote"><i class="fa fa-info-circle"></i> <a href="http://www.codingrobots.com/blogjet/" target="_blank">http://www.codingrobots.com/blogjet/</a></span><!-- footnote -->,
Ecto [*]
<span class="footnote"><i class="fa fa-info-circle"></i> <a href="http://ecto.kung-foo.tv" target="_blank">http://ecto.kung-foo.tv</a></span><!-- footnote --> oder auch
w.bloggar [*]
<span class="footnote"><i class="fa fa-info-circle"></i> <a href="http://wbloggar.com" target="_blank">http://wbloggar.com</a></span><!-- footnote -->.</p>

<p>Als technische Spezifikation (die API) unterstützen viele der erwähnten
Clients unterschiedliche Methoden. Auch wenn Serendipity nicht in jeder
Software aufgeführt wird, können Sie es fast immer mit der manuellen
Konfiguration der jeweiligen Software ans Laufen kriegen.</p>

<p>Das Serendipity-Plugin unterstützt sowohl die MoveableType-API
(MT/metaWeblog) als auch die ältere Blogger API. Bei der manuellen
Konfiguration zum Betrieb Ihres gewählten Blog-Clients müssen Sie
meist folgende Werte angeben: Servername (zB.
<code>www.example.com</code>), Port (meistens 80) und letztlich die URL oder
auch etwas wie <em>Page</em> oder <em>API-Endpoint</em>. Dort tragen Sie
den HTTP-Pfad zu der Serendipity-Datei <code>serendipity_xmlrpc.php</code>
ein - also zB. <code>/serendipity/serendipity_xmlrpc.php</code>. Diese
PHP-Datei dient der Kommunikation Ihres Blog-Client mit dem
Serendipity-Plugin.</p>

<p>Oft können Blog-Clients auch automatisch anhand Ihrer Blog-URL erkennen,
welche Zugangsparameter notwendig sind. Damit Sie sich im jeweiligen
Blog-Client in Ihr Blog einloggen können, müssen Sie zudem Ihren
Benutzernamen und das Passwort eingeben, mit dem Sie sich auch im
Serendipity-Backend einloggen.</p>

<p>Im Blog-Client können Sie nun Einträge veröffentlichen, Kategorien
verwalten und auch Bilder anhängen. Leider können wir aufgrund der
Vielfalt an Blog-Clients hier keine gezielteren Beschreibungen geben. Aber
dies ist meist auch nicht notwendig, da die Hilfen zu den Blog-Clients
oft sehr ausführlich sind und man Ihnen in deren Support-Foren gerne
weiterhilft.</p>

<p>
<span class="tag-box invisible">
    <span class="inline-tag">Fehler!XML-RPC</span>
</span>
Bei etwaigen Problemen in der Kommunikation zwischen Client und Server
können Sie über die Datei
<code>plugins/serendipity_event_xmlrpc/serendipity_xmlrpc.inc.php</code> die
Variable <code>$debug_xmlrpc</code> auf den Wert <code>2</code> setzen, um ein
Debugging-Protokoll zu schreiben. In dieser Protokolldatei können Sie
gegebenenfalls bereits selbständig Fehlermeldungen entdecken. Ansonsten hilft man
Ihnen gerne im Serendipity-Forum.</p>

<p>Zuletzt seien jedoch auch die Nachteile von Blog-Clients erwähnt. Der
größte Nachteil liegt darin, dass die universelle Schnittstelle darauf
verzichten muss, erweiterte Optionen von Blogs anzubieten. Viele
Serendipity-Plugins (beispielsweise das Tagging-Plugin oder die Freien
Eigenschaften von Einträgen) können Zusatzfelder für einen Eintrag
verwalten, die Sie aber über einen Blog-Client nicht eintragen können.
Sie verlieren also einen Großteil an Flexibilität und müssen so
möglicherweise nach wie vor das Serendipity-Backend aufsuchen.</p>

<p>Ein weiterer Nachteil ist die große Vielfalt an APIs und der
Interpretationsspielraum der zahlreichen Blog-Clients, die
unterschiedliche Funktionsaufrufe teilweise ganz unterschiedlich
ansprechen.</p>

<p>Sie sollten sich daher bereits im Voraus überlegen, ob möglicherweise
der Blog-Client nur für spezielle Redakteure eingesetzt werden soll.
Natürlich hindert Sie nichts daran, den Blog-Client und das
Serendipity-Backend fallweise einzusetzen. Ausführliche Artikel können
Sie beispielsweise im Blog-Client vorschreiben und dann später erweiterte
Optionen über das Serendipity-Backend vornehmen.</p>

</section><!-- section.sub end -->

</section><!-- section.index end -->

<section id="S640" class="index">
<span class="s-toc">6.4 - Ereignis-Plugins für Bilder</span>

<h3 class="section" id="ereignis-plugins-für-bilder">Ereignis-Plugins für Bilder</h3>

<p class="tagging invisible">
<span class="tag-box invisible">
    <span class="inline-tag">Bilderplugins@Bilder-Plugins</span>
    <span class="inline-tag">Plugins!Bilder</span>
</span>
</p>

<section id="serendipity_event_imageselectorplus" class="sub">
<span class="u-toc">6.4.1 - Erweiterte Optionen für Bildauswahl: serendipity_event_imageselectorplus</span>

<h3 class="subsection" id="erweiterte-optionen-für-bildauswahlserendipity_event_imageselect">Erweiterte Optionen für Bildauswahl<br>serendipity_event_imageselectorplus</h3>

<p class="tagging invisible">
<span class="tag-box invisible">
    <span class="inline-tag">Plugins!Erweiterte Optionen für Bildauswahl</span>
    <span class="inline-tag">Plugins!serendipity_event_imageselectorplus</span>
</span>
</p>

<p>Das Plugin <em>Erweiterte Optionen für Bildauswahl</em> dient mehreren Zwecken
rund um die Bildverwaltung Serendipitys.</p>

<p class="tagging invisible">
<span class="tag-box invisible">
    <span class="inline-tag">QuickBlog</span>
    <span class="inline-tag">Fotoblogs</span>
</span>
</p>

<p>Zum einen ermöglicht es über eine sogenannte
<em>QuickBlog</em>-Funktion, mit einem einfachen Klick ein hochgeladenes Bild direkt
als neuen Blog-Artikel einzustellen. Dies ist besonders für
Fotoblogs sehr praktisch, um etwas Klickarbeit zu sparen.</p>

<p>Weiterhin bietet das Plugin eine Möglichkeit, kleine Bilderserien in einen
Blog-Eintrag einzufügen. Dies geschieht mittels einfachem XML-Code.</p>

<p>Das Plugin erweitert das Formular zum Hochladen eines Eintrags (falls Ihre
PHP-Version dies unterstützt) um die Möglichkeit, auch ZIP-Archive mit
Bildern/Dateien hochzuladen.</p>

<p>Zuletzt dient das Plugin dazu, die Optionen beim Einfügen einer Datei aus
der Mediendatenbank in einen Blog-Eintrag zu erweitern. Seit Serendipity
1.1 sind diese Optionen jedoch bereits Bestandteil der offiziellen Version und
werden somit innerhalb des Plugins nicht weiterverwendet. In Zukunft könnte das Plugin
jedoch möglicherweise wieder eigenständige Optionen einbinden.</p>

<article id="XU" class="subsub">

<header>
    <h4 class="subarticle" id="quickblog">QuickBlog</h4>
</header>

<p>Wenn Sie auf den Menüpunkt <span class="mbold">Mediendatenbank <span class="icon arrow-right">→</span> Mediendaten hinzufügen</span>
klicken, bindet das Plugin dort einen neuen Bereich mit der Überschrift
<span class="mbold">QuickBlog</span> ein. Dort finden Sie mehrere Eingabefelder vor. Sobald Sie
das Feld <span class="mbold">Titel</span> ausfüllen, wird die hochgeladene Mediendatei automatisch
in einen neuen Blog-Artikel eingebunden. Als Titel des Blog-Artikels wird der in
dem Feld <span class="mbold">Titel</span> eingegebene Inhalt verwendet.</p>

<p>Der so entstandene Blog-Artikel ist später wie ein ganz regulärer Artikel zu
bearbeiten. Er enthält jedoch bereits sämtlichen HTML-Code, der für die
Darstellung des Bildes notwendig ist.</p>

<p>Die Eingabefelder im <span class="mbold">QuickBlog</span>-Bereich legen einen Titel für das Bild
fest, einen zusätzlichen beschreibenden Text und die Zuordnung zur Blog-Kategorie.</p>

<p>Das Feld <span class="mbold">Bildgröße</span> enthält eine Zahl (in Pixeln), die bestimmt, in welcher
Größe das Bild in dem Quickblog-Artikel eingestellt wird.</p>

<p>Technisch gesehen wird ein via Quickblog hochgeladenes Bild mit speziellem Code
in Ihren Eintrag eingebunden. Dieser Code enthält die ID zu einem Bild der
Mediendatenbank und wird im normalen Eintragstext des Artikels hinterlegt:</p>

<pre><code class="html">
    &lt;!--quickblog:4711 --&gt;
</code></pre>

<p>Wenn ein solcher Blog-Artikel angezeigt wird, sucht das Plugin automatisch
nach dem Vorkommen derartiger Zeichenketten. Daraufhin liest es die
Mediendatenbank aus und erstellt eine formatierte Darstellung für das Bild. Die
Formatierung richtet sich nach der Template-Datei
<span class="tag-box invisible">
    <span class="inline-tag">Template-Dateien!quickblog.tpl</span>
</span>
<span class="mbold">quickblog.tpl</span> des Plugins. Der dort hinterlegte HTML-Code stellt das
Bild, einen Link zum Bild sowie etwaige EXIF-Daten ein. Diese Template-Datei
können Sie Ihren eigenen Wünschen anpassen und in Ihr jeweiliges
Template-Verzeichnis kopieren.</p>

<p>Folgende Variablen stehen dort zur Verfügung:</p>

<p class="desc citem-desc">
<span class="tag-box invisible">
    <span class="inline-tag">Template-Variablen!\$quickblog.image</span>
</span>
<code class="item smarty">{$quickblog.image}</code>
<span class="desc-info">Enthält die URL zu dem Vorschaubild.</span>
</p>

<p class="desc citem-desc">
<span class="tag-box invisible">
    <span class="inline-tag">Template-Variablen!\$quickblog.fullimage</span>
</span>
<code class="item smarty">{$quickblog.fullimage}</code>
<span class="desc-info">Enthält die URL zu dem Bild in Originalgröße.</span>
</p>

<p class="desc citem-desc">
<span class="tag-box invisible">
    <span class="inline-tag">Template-Variablen!\$quickblog.body</span>
</span>
<code class="item smarty">{$quickblog.body}</code>
<span class="desc-info">Enthält den etwaigen zusätzlichen Eintragstext des Blog-Artikels.</span>
</p>

<p class="desc citem-desc">
<span class="tag-box invisible">
    <span class="inline-tag">Template-Variablen!\$quickblog.exif</span>
</span>
<code class="item smarty">{$quickblog.exif}</code>
<span class="desc-info">Enthält ein Array mit allen EXIF-Metadaten des Bildes. Der Array-Index richtet
sich nach dem jeweiligen EXIF-Feldnamen, zB. <code>Focal_length</code> oder
<code>COMMENT.0</code>.</span>
</p>

<p class="desc citem-desc">
<span class="tag-box invisible">
    <span class="inline-tag">jhead</span>
    <span class="inline-tag">EXIF</span>
    <span class="inline-tag">Template-Variablen!\$quickblog.exif_mode</span>
</span>
<code class="item smarty">{$quickblog.exif_mode}</code>
<span class="desc-info">
    <span class="box">
        Falls auf Ihrem Server das Programm <span class="mbold">jhead</span> installiert ist, kann das Plugin
        dieses verwenden, um die EXIF-Daten eines Bildes zu lesen. In
        diesem Fall ist die Variable <code class="item smarty">{$quickblog.exif_mode}</code> auf den Wert
        <code>jhead</code> gesetzt.
    </span>

    <span class="box">
        Ohne dieses Programm versucht das Plugin die PHP-Funktion <code>exif_read_data</code>
        zu verwenden. Dann ist <code class="item smarty">{$quickblog.exif_mode}</code> auf <code>internal</code> gesetzt.
    </span>

    <span class="box">Wenn keine Datei gelesen werden konnte, enthält die Variable den Wert <code>none</code>.</span>
</span>
</p>

<p>&nbsp;</p><!-- separator -->

<p>Sie können die <code>&lt;!--quickblog:xxx --&gt;</code>-Anweisungen praktisch auch
eigenständig in Artikel einfügen und in einen normalen Artikeltext einbetten.
Bei der Darstellung wird dann lediglich die <code>quickblog</code>-Anweisung
ausgetauscht, Ihr restlicher Text erscheint wie gewohnt.</p>

</article>

<article id="XU" class="subsub">

<header>
    <h4 class="subarticle" id="xml-bilderserien">XML-Bilderserien</h4>
</header>

<p class="tagging invisible">
<span class="tag-box invisible">
    <span class="inline-tag">Bilderserien</span>
</span>
</p>

<p>Wenn Sie viele Bilder in einen Artikel einbinden wollen, kann das in mühsame
Klickorgien ausarten. Das Plugin bietet Ihnen hier einen angenehmeren,
wenn auch technischeren Weg, dasselbe Ziel zu erreichen.</p>

<p>Sie können eigenen (aber einfachen!) Code in Ihren Blog-Artikel einfügen, der
an eine XML-Syntax angelegt ist. Diesen wertet das Plugin später automatisch
aus, und bindet die gewünschten Bilder ein. Die Einbindung erfolgt anhand einer
eigenständigen Template-Datei
<span class="tag-box invisible">
    <span class="inline-tag">Template-Dateien!plugin_mediainsert.tpl</span>
</span>
(<code>plugin_mediainsert.tpl</code>), so dass Sie hier die Formatierung beliebig anpassen können.</p>

<p>Der XML-Code sieht dabei wie folgt aus:</p>

<pre><code class="html">
    &lt;mediainsert&gt;
    &nbsp;&lt;gallery name='Verzeichnisname' /&gt;<br>
    &nbsp;&lt;media type='single' name='bildname1' /&gt;<br>
    &nbsp;&lt;media type='single' name='bildname2' /&gt;<br>
    &lt;/mediainsert&gt;
</code></pre>

<p>Sie können so viele <code>&lt;mediainsert&gt;</code>-Blöcke in Ihrem Eintrag einfügen, wie
Sie wünschen. Innerhalb dieses Blocks müssen Sie das <code>&lt;gallery&gt;</code>-Element
angeben. In dessen Attribut <code>name</code> tragen Sie den Namen des Verzeichnisses ein, aus
dem Sie ein Bild darstellen wollen. Als Verzeichnisname muss hier nur der
tatsächliche Verzeichnisname unterhalb Ihres <code>uploads</code>-Serververzeichnisses
eingetragen werden. Wenn Sie also Ihre Bilder in
<code>/var/www/example.com/serendipity/uploads/Urlaub/Mallorca2006</code> hochgeladen
haben, tragen Sie <code>&lt;gallery name='Urlaub/Mallorca2006/' /&gt;</code> ein. Der
abschließende Schrägstrich ist erforderlich. Wenn Sie Bilder des
Stammverzeichnisses darstellen wollen, können Sie <code>&lt;gallery name='/' /&gt;</code>
verwenden.</p>

<p>Daraufhin folgt eine beliebige Anzahl von <code>&lt;media&gt;</code>-Elementen. Als
<code>type</code>-Attribut können Sie entweder <code>single</code> (ein einzelnes Bild),
<code>gallery</code> (das komplette Verzeichnis) oder <code>range</code> (durchnummerierte Bilderreihe)
eintragen.</p>

<p>Bei Bildern vom Typ <code>single</code> müssen Sie im Attribut <code>name</code> den
Dateinamen (ohne Dateiendung) eintragen. Um also
<code>uploads/Urlaub/Mallorca2006/dscf_001.jpg</code> darzustellen, können Sie
<code>&lt;media type='single' name='dscf_001' /&gt;</code> verwenden. Für jede Datei, die
Sie anzeigen wollen, verwenden Sie eine solche XML-Zeile. Dabei
entspricht die Reihenfolge Ihrer Eingabe der Reihenfolge, in der die Bilder
später dargestellt werden.</p>

<p>Bildern des Typs <code>range</code> müssen Sie die Start- und Endnummer mitgeben. Wenn
Sie die Dateien <code>dscf_1.jpg</code> bis <code>dscf_10.jpg</code> darstellen wollen,
benutzen Sie <code>&lt;media type='single' prefix='dscf_' start='1' stop='10'</code>.
Achten Sie daher auch darauf, dass Ihre Dateien keine führenden Nullen bei der
Durchnummerierung enthalten, da das Plugin andernfalls auf nicht existierende
Dateinamen verweisen könnte.</p>

<p>Wenn Sie ein vollständiges Verzeichnis auslesen wollen, reicht die Zeile
<code>&lt;media type='gallery' /&gt;</code> aus. Es werden dann alle Dateien eingebunden, die
im durch <code>&lt;gallery name='Urlaub/Mallorca2006/' /&gt;</code> festgelegten Verzeichnis
in die Mediendatenbank geladen wurden.</p>

<p>Der Code muss sich strikt an XML-Syntax halten. <code>&lt;media type='gallery'&gt;</code>
wäre beispielsweise ungültig, da das Anführungszeichen nicht übereinstimmt und
der abschließende Schrägstrich des XML-Elements fehlt. Wenn Sie diese Regeln
nicht beachten, kann dies dazu führen, dass das Plugin eine Fehlermeldung darstellt.</p>

<p>Innerhalb der Template-Datei <code>plugin_mediainsert.tpl</code>, die zur Darstellung
Ihrer Bilderliste verwendet wird, stehen folgende Variablen zur Verfügung:</p>

<p class="desc citem-desc">
<span class="tag-box invisible">
    <span class="inline-tag">Template-Variablen!\$plugin_mediainsertmedia@plugin_mediainsert_media</span>
</span>
<code class="item smarty">{$plugin_mediainsert_media}</code>
<span class="desc-info">
    <span class="box">
        Enthält ein Array mit allen Bilddateien. Als Array-Schlüssel stehen folgende
        Werte zur Verfügung:
    </span>

    <span class="box mda-box">

        <span class="box">
            <span class="box"><code class="item smarty">{$plugin_mediainsert_media.X.name}</code></span>
            <span class="sub-box">
                Enthält den Dateinamen (ohne Datei-Endung) der Bilddatei.
            </span>
        </span>

        <span class="box">
            <span class="box"><code class="item smarty">{$plugin_mediainsert_media.X.extension}</code></span>
            <span class="sub-box">
                Enthält die Datei-Endung der Bilddatei.
            </span>
        </span>

        <span class="box">
            <span class="box"><code class="item smarty">{$plugin_mediainsert_media.X.thumbnail_name}</code></span>
            <span class="sub-box">
                Enthält den Namen (Suffix) der Vorschaudatei.
            </span>
        </span>

        <span class="box">
            <span class="box"><code class="item smarty">{$plugin_mediainsert_media.X.realname}</code></span>
            <span class="sub-box">
                Enthält den vollständigen Dateinamen.
            </span>
        </span>

        <span class="box">
            <span class="box"><code class="item smarty">{$plugin_mediainsert_media.X.path}</code></span>
            <span class="sub-box">
                Enthält den URL-Pfad zu der Bilddatei.
            </span>
        </span>

        <span class="box">
            <span class="box"><code class="item smarty">{$plugin_mediainsert_media.X.comment1}</code></span>
            <span class="sub-box">
                Kommentar zu einem Bild, wie in der Mediendatenbank festgelegt. Hierfür wird
                davon ausgegangen, dass Sie die Beschreibung im Datensatz <code>COMMENT1</code>
                gespeichert haben (siehe Konfigurationsoptionen der Mediendatenbank auf
                Seite <span class="pageref"><a href="#Medien-Eigenschaften">Medien-Eigenschaften</a></span>).
                Falls kein Kommentar eingetragen wurde, wird der Dateiname verwendet.
            </span>
        </span>

        <span class="box">
            <span class="box"><code class="item smarty">{$plugin_mediainsert_media.X.width}</code>
            <code class="item smarty">{$plugin_mediainsert_media.X.height}</code></span>
            <span class="sub-box">
                Größe des Originalbildes (Breite, Höhe).
            </span>
        </span>

        <span class="box">
            <span class="box"><code class="item smarty">{$plugin_mediainsert_media.X.thumbwidth}</code>
            <code class="item smarty">{$plugin_mediainsert_media.X.thumbheight}</code></span>
            <span class="sub-box">
                Größe des Vorschaubildes (Breite, Höhe).
            </span>
        </span>

    </span>
</span>
</p>

</article>

<article id="XU" class="subsub">

<header>
    <h4 class="subarticle" id="zip-archive">ZIP-Archive</h4>
</header>

<p>Wenn Sie die Konfigurationsoption <span class="mbold">ZIP archives unzipping</span> des Plugins
aktiviert haben und Ihr Server mindestens PHP 5.1.0 einsetzt, könnnen Sie ein
ZIP-Archiv mit mehreren Bildern in die Mediendatenbank hochladen.
Die ZIP-Datei wird automatisch auf dem Server entpackt, und alle darin
enthaltenen Dateien werden so hochgeladen, als hätten Sie diese einzeln eingestellt.</p>

<p>Bitte beachten Sie, dass das Entpacken großer ZIP-Dateien viele Ressourcen auf
dem Server bindet und eventuell zu Timeouts oder anderen Performanceproblemen
führen könnte. In diesem Fall müssen Sie die Dateien einzeln hochladen.</p>

</article>

<article id="XU" class="subsub">

<header>
    <h4 class="subarticle" id="konfigurationsoptionen">Konfigurationsoptionen</h4>
</header>

<p>Die Konfigurationsoptionen des Plugins beinhalten lediglich die Möglichkeit,
eine von der normalen Serendipity-Konfiguration abweichende Größe der
Vorschaubilder einzutragen. Bei den üblichen Vorschaubildern in Serendipity
wird die größte Seite (Höhe oder Breite) eines Bildes für die Verkleinerung
herangezogen. Mittels der beiden Konfigurationsoptionen jedoch können Sie ganz
gezielt ein Format für die Vorschaubilder festlegen, falls Sie zB. die
Proportionen eines Bildes nur horizontal statt vertikal beschränken wollen.</p>

<p>Weiterhin gibt Ihnen das Plugin die Möglichkeit, festzulegen, ob die Erkennung
der XML-Bilderserien innerhalb des <em>Eintrags</em> oder <em>Erweiterten
Eintrags</em> zugelassen werden soll. So können Sie kontrollieren, dass Bilderserien
von Ihren Redakteuren zB. nicht auf der normalen Übersichtsseite des Blogs
eingesetzt werden.</p>

</article>

</section><!-- section.sub end -->

<section id="serendipity_event_lightbox" class="sub">
<span class="u-toc">6.4.2 - Lightbox: serendipity_event_lightbox</span>

<h3 class="subsection" id="lightboxserendipity_event_lightbox">Lightbox<br>serendipity_event_lightbox</h3>

<p class="tagging invisible">
<span class="tag-box invisible">
    <span class="inline-tag">Lightbox</span>
    <span class="inline-tag">Thickbox</span>
    <span class="inline-tag">Graybox</span>
</span>
<span class="label invisible" id="lightbox">lightbox</span>
<span class="tag-box invisible">
    <span class="inline-tag">Plugins!Lightbox</span>
    <span class="inline-tag">Plugins!serendipity_event_lightbox</span>
    <span class="inline-tag">Bildergalerie</span>
    <span class="inline-tag">Vorschaubilder</span>
</span>
</p>

<p>In Blog-Artikeln von Serendipity können Sie dank der Mediendatenbank
relativ einfach ein Bild einfügen (siehe Seite
<span class="pageref"><a href="#Mediendatenbank-Popup">Mediendatenbank-Popup</a></span>). Ein solches Bild wird
entweder in der vollen Größe oder als kleines Vorschaubild eingebettet,
und ein Klick auf das Bild öffnet es meist in einem neuen Browserfenster.</p>

<p>Diese Art der Einbindung ist relativ unspektakulär. Daher wurden in
letzter Zeit zahlreiche JavaScripts entwickelt, die Bildervorschauen und
-galerien mit hübschen Überblendungseffekten einbinden lassen. Ein Klick
auf ein Bild dunkelt dann den Hintergrund ab, das Bild öffnet sich in einem
eigenständigen Bereich und passt sich in der Größe automatisch an.
Auch ein Hin- und Herblättern zwischen mehreren zusammengehörigen Bildern ist
so komfortabel möglich.</p>

<p>Mittlerweile gibt es viele JavaScripts, die diese Technik einsetzen:
Lightbox [*]
<span class="footnote"><i class="fa fa-info-circle"></i> <a href="http://www.huddletogether.com/projects/lightbox2/" target="_blank">http://www.huddletogether.com/projects/lightbox2/</a></span><!-- footnote -->,
Lightbox plus [*]
<span class="footnote"><i class="fa fa-info-circle"></i> <a href="http://serennz.sakura.ne.jp/toybox/lightbox/" target="_blank">http://serennz.sakura.ne.jp/toybox/lightbox/</a></span><!-- footnote -->,
Thickbox [*]
<span class="footnote"><i class="fa fa-info-circle"></i> <a href="http://jquery.com/demo/thickbox/" target="_blank">http://jquery.com/demo/thickbox/</a></span><!-- footnote --> und
Greybox [*]
<span class="footnote"><i class="fa fa-info-circle"></i> <a href="http://orangoo.com/labs/GreyBox/" target="_blank">http://orangoo.com/labs/GreyBox/</a></span><!-- footnote -->. Alle diese
Bibliotheken bieten unterschiedliche Features und eine unterschiedliche
Syntax. Sie sollten sich daher alle Varianten und Demos ansehen, um sich
auf die für Sie beste zu beschränken. Da dies großteils Geschmackssache
ist, kann man leider keines der Scripts pauschal empfehlen.</p>

<p>Mit der grundlegenden Überarbeitung des Plugins im Oktober 2014, ab Version 2.0+,
wurden einige der verwendeten Bibliotheken ausgetauscht und durch solche ersetzt, die sich,
auch in ihrer Entwicklung, am Markt bisher durchgesetzt hatten.
ColorBox [*]
<span class="footnote"><i class="fa fa-info-circle"></i> <a href="https://github.com/jackmoore/colorbox" target="_blank">https://github.com/jackmoore/colorbox</a></span><!-- footnote -->,
LightBox2 [*] jQuery based
<span class="footnote"><i class="fa fa-info-circle"></i> <a href="http://lokeshdhakar.com/projects/lightbox2/" target="_blank">http://lokeshdhakar.com/projects/lightbox2/</a></span><!-- footnote -->,
Magnific-Popup [*]
<span class="footnote"><i class="fa fa-info-circle"></i> <a href="https://github.com/dimsemenov/Magnific-Popup" target="_blank">https://github.com/dimsemenov/Magnific-Popup</a></span><!-- footnote -->,
PrettyPhoto [*]
<span class="footnote"><i class="fa fa-info-circle"></i> <a href="http://www.no-margin-for-errors.com/projects/prettyPhoto" target="_blank">http://www.no-margin-for-errors.com/projects/prettyPhoto</a></span><!-- footnote -->.
Das <code>serendipity_plugin_imagessidebar</code> Plugin und das nachfolgend beschriebene <code>serendipity_event_usergallery</code> Ereignis-Plugin
unterstützen das <em>lightbox</em> Plugin per Option oder sogar nativ.</p>

<p>Welche der Bibliotheken Sie einsetzen, ist erst einmal nicht weiter
wichtig. Das Serendipity-Plugin <em>Lightbox</em>
unterstützt alle aufgeführten Bibliotheken und liefert alle
benötigten Dateien mit. Sie können sich also auch später für den Einsatz
eines anderen Scripts entscheiden. Jedoch können Sie immer nur eine der
Bibliotheken benutzen, das Plugin lässt sich nicht mehrfach installieren.</p>

<p>In der Plugin-Konfiguration müssen Sie daher lediglich die Bibliothek
auswählen und dann den HTTP-Pfad zu dem Plugin-Verzeichnis Ihres Blogs
eintragen. Standardmäßig entspricht dies dem Serendipity-Stammpfad zzgl.
<code>/plugins</code>. Im Beispiel des Buches wäre es also
<code>/serendipity/plugins/</code>. Den voreingestellten Pfad können Sie daher in den
meisten Fällen beibehalten.</p>

<p>Sobald das Plugin aktiviert ist, wird es sich automatisch um die Links zu
Ihren Bildern kümmern. Jedesmal, wenn ein Blog-Artikel dargestellt wird, sucht
das Plugin nach vorhandenen <code>&lt;a href...&gt;</code>-Hyperlinks und fügt dort
den Code ein, den die jeweilige Bibliothek benötigt, um beim Klick auf den
Link direkt ein Bild anzuzeigen. Bei Lightbox (und dessen Varianten) wird
einem Link das Attribut <code>&lt;a rel="lightbox" href...&gt;</code>
eingesetzt, für Thickbox ist dies <code>&lt;a rel="thickbox" href...&gt;</code>,
und Graybox benutzt die Syntax <code>&lt;a rel="gb_image[]" href...&gt;</code>, etc..
Natürlich können Sie auch manuell in den HTML-Code Ihrer
Blog-Artikel die entsprechenden weiteren Möglichkeiten der
Box-Bibliotheken einsetzen - lesen Sie dazu bitte die Dokumentation der
jeweiligen Bibliothek.</p>

<p>
<span class="tag-box invisible">
    <span class="inline-tag">Fehler!Lightbox</span>
</span>
Die Darstellung von großen Bildern in einem eingebetteten Popup kann nur
funktionieren, wenn Sie in Ihrem Beitrag einen Link zu einem Bild
eingebunden haben. Wenn Sie ein Bild aus der Mediendatenbank einfügen und
davon nur das Vorschaubild ohne weitere Verlinkung auswählen, können die
Bibliotheken nicht aktiv werden, da ihnen die notwendigen HTML-Daten
fehlen.</p>

</section><!-- section.sub end -->

<section id="serendipity_event_usergallery" class="sub">
<span class="u-toc">6.4.3 - Bildergalerie: serendipity_event_usergallery</span>

<h3 class="subsection" id="bildergalerieserendipity_event_usergallery">Bildergalerie<br>serendipity_event_usergallery</h3>

<p class="tagging invisible">
<span class="label invisible" id="usergallery">usergallery</span>
<span class="tag-box invisible">
    <span class="inline-tag">Plugins!Bildergalerie</span>
    <span class="inline-tag">Plugins!serendipity_event_usergallery</span>
</span>
</p>

<p>Mit dem Plugin <em>Bildergalerie</em> können Sie Bilder und Dateien
aus Ihrer Mediendatenbank präsentieren. Dabei kann das Plugin so
konfiguriert werden, dass nur spezielle Unterordner
Ihrer Mediendatenbank eingesehen werden können. Die Darstellung der Galerie
kann über Templates gesteuert werden, zahlreiche Konfigurationsoptionen
ermöglichen eine individuelle Anpassung der Galerie.</p>

<p>
<span class="tag-box invisible">
    <span class="inline-tag">RSS-Feeds!mit Bildern</span>
</span>
Abgesehen von der Galerie-Übersicht bietet das Plugin auch einen eigenen
RSS-Feed an, der Ihre aktuellsten Bilder (als Vorschaubild) enthält. Diesen
können Sie über</p>

<pre><code class="html">
    http://www.example.com/rss.php?version=2.0&amp;gallery=true&amp;limit=A&amp;picdir=B&amp;feed_width=C&amp;head_title=D
</code></pre>

<p>Die einzelnen URL-Variablen sind:</p>

<p class="desc">
<code class="item uri_param">version</code><!-- codeitem -->
<span class="desc-info">Legt die RSS-Feed-Version fest (siehe auch Seite <span class="pageref"><a href="#rss-urlvariablen">rss-urlvariablen</a></span>).</span>
</p>

<p class="desc">
<code class="item uri_param">gallery</code><!-- codeitem -->
<span class="desc-info">Wird benötigt, damit das Plugin seine Ausgaben einbinden kann.</span>
</p>

<p class="desc">
<code class="item uri_param">limit</code><!-- code item --> (A, optional)
<span class="desc-info">Legt fest, wie viele Bilder im RSS-Feed enthalten sein sollen (standardmäßig 15).</span>
</p>

<p class="desc">
<code class="item uri_param">picdir</code><!-- code item --> (B, optional)
<span class="desc-info">Legt den Pfad fest, aus dem die Bilder ausgelesen werden sollen. Standardmäßig
werden alle Bilder aus allen Unterverzeichnissen herangezogen.</span>
</p>

<p class="desc">
<code class="item uri_param">feed_width</code><!-- code item --> (C, optional)
<span class="desc-info">Gibt die gewünschte Größe der Vorschaubilder an. Standardmäßig wird die in den
Konfigurationsoptionen festgelegte Zahl verwendet. Falls die URL-Option
angegeben wird, hat diese jedoch Vorrang.</span>
</p>

<p class="desc">
<code class="item uri_param">hide_title</code><!-- code item --> (D, optional)
<span class="desc-info">Wenn dieser Parameter angegeben wird, enthält der RSS-Feed keine Dateinamen oder
Titel der Bilder, sondern lediglich die Bilddatei.</span>
</p>

<p>Um also die aktuellsten zehn Bilder des Verzeichnisses <code>Messe</code> in einer Größe
von maximal 110 Pixeln Breite darzustellen, würden Sie folgende URL verwenden:</p>

<pre><code class="html">
    http://www.example.com/rss.php?version=2.0&amp;gallery=true&amp;limit=10&amp;picdir=Messe&amp;feed_width=110
</code></pre>

<p>Die Darstellung dieses Feeds erfolgt über die üblichen Serendipity
<code>feed*.tpl</code>-Dateien. Mit der auf Seite <span class="pageref"><a href="#customfeeds">customfeeds</a></span>
vorgestellten Methodik können Sie daher auch ein ganz eigenes Feed-Template für
den Galerie-Feed anlegen, indem Sie
<code>http://www.example.com/rss.php?version=gallery...</code> verwenden und eine
Template-Datei <code>feed_gallery.tpl</code> anlegen.
<span class="tag-box invisible">
    <span class="inline-tag">Template-Dateien!feed_gallery.tpl</span>
</span>
Folgende Konfigurationsoptionen bietet das Plugin:</p>

<p class="desc">
<span class="item mbold">Display name</span><!-- menuitem -->
<span class="desc-info">Legt den Titel der Galerie fest.</span>
</p>

<p class="desc">
<span class="item mbold">Anzahl der Spalten</span><!-- menuitem -->
<span class="desc-info">Legt die Anzahl der Spalten für die Bildübersicht fest.</span>
</p>

<p class="desc">
<span class="item mbold">Subpage name for gallery view</span><!-- menuitem -->
<span class="desc-info">Legt den <em>URL-Titel der Seite</em> (siehe Seite
<span class="pageref"><a href="#Standardpluginkonfiguration-Pagetitle">Standardpluginkonfiguration-Pagetitle</a></span>) fest, der benötigt wird, um die
Galerie mittels einer speziellen URL aufrufen zu können.</span>
</p>

<p class="desc">
<span class="item mbold">Mache diese Seite zur Startseite für Serendipity</span><!-- menuitem -->
<span class="desc-info">Mit Aktivierung dieser Option wird die Bildergalerie als Startseite Ihres Blogs dienen. In
diesem Fall sollten Sie dafür sorgen, dass das Galerie-Ereignis-Plugin als eines
der ersten Ereignis-Plugins positioniert wird, da andernfalls Konflikte
mit anderen Plugins bei der Darstellung der Startseite auftreten können.</span>
</p>

<p class="desc">
<span class="item mbold">Permalink für die Anzeige der Galerie</span><!-- menuitem -->
<span class="desc-info">Legt den <em>Permalink</em> fest, mit dem Sie die Galerie aufrufen können (siehe
auch Seite <span class="pageref"><a href="#Standardpluginkonfiguration-Permalink">Standardpluginkonfiguration-Permalink</a></span>).</span>
</p>

<p class="desc">
<span class="item mbold">Choose the gallery style</span><!-- menuitem -->
<span class="desc-info">Mit diesem Ausklappfeld legen Sie fest, ob das Plugin zur Darstellung der
Galerie eigene Template-Dateien mit eigener Formatierung (Wert <code>Thumbnail
page</code>) oder die Standard-Mediendatenbankansicht von Serendipity (Wert
<code>Media library</code>) verwenden soll. Nur bei der Option <code>Thumbnail page</code>
sind die meisten der folgenden Konfigurationsoptionen verfügbar.</span>
</p>

<p class="desc">
<span class="item mbold">Pick a default directory</span><!-- menuitem -->
<span class="desc-info">Hier können Sie ein Stammverzeichnis auswählen, das für die Galerie
herangezogen wird. Besucher können nur auf Unterverzeichnisse des
gewählten Verzeichnisses zugreifen.</span>
</p>

<p class="desc">
<span class="item mbold">Show a directory listing</span><!-- menuitem -->
<span class="desc-info">Legt fest, ob eine Liste aller verfügbaren Verzeichnisse in der Galerie
angezeigt werden soll.</span>
</p>

<p class="desc">
<span class="item mbold">Bilder pro Seite</span><!-- menuitem -->
<span class="desc-info">Legt die Anzahl der Bilder pro Seite fest. Wenn Sie hier <code>0</code> eingeben, zeigt
das Plugin alle verfügbaren Bilder auf einer einzigen Seite an. Andernfalls wird
eine Möglichkeit zum Vor- und Zurückblättern für weitere Bilder eingebunden.</span>
</p>

<p class="desc">
<span class="item mbold">Reihenfolge der Bilder</span><!-- menuitem -->
<span class="desc-info">Legt fest, in welcher Sortierungsreihenfolge (nach Dateiname oder
Einstellungsdatum) die Bilder dargestellt werden.</span>
</p>

<p class="desc">
<span class="item mbold">Einleitungstext</span><!-- menuitem -->
<span class="desc-info">Hier können Sie einen beliebigen (HTML)-Text eintragen, der auf jeder Seite der
Galerie für Ihre Besucher angezeigt wird.</span>
</p>

<p class="desc">
<span class="item mbold">Display Single Image</span><!-- menuitem -->
<span class="desc-info">Mit dieser Option bestimmen Sie, ob beim Klick auf ein einzelnes Bild dieses als
<span class="mbold">Adaptive pop-up</span> (eigenes, korrekt skaliertes Fenster) oder innerhalb des
Blog-Layouts (<span class="mbold">Scaled to fit</span>) dargestellt wird.</span>
</p>

<p class="desc">
<span class="item mbold">Output images strictly</span><!-- menuitem -->
<span class="desc-info">Falls diese Option aktiviert wird, zeigt die Galerie ausschließlich Bilder des
aktuellen Verzeichnisses an und ignoriert alle etwaigen Unterverzeichnisse.</span>
</p>

<p class="desc">
<span class="item mbold">Feste Bildgröße</span><!-- menuitem -->
<span class="desc-info">Legt die Standardbreite eines Bildes bei der Darstellung der Galerie fest.
Standardmäßig wird die Voransichtsgröße der globalen Serendipity-Konfiguration übernommen.</span>
</p>

<p class="desc">
<span class="item mbold">Max. image width in page</span><!-- menuitem -->
<span class="desc-info">Legt die maximale Bildbreite fest, die ein Bild bei der Darstellungsart
<span class="mbold">Scaled to fit</span> einnehmen darf.</span>
</p>

<p class="desc">
<span class="item mbold">RSS-Feed image dimensions</span><!-- menuitem -->
<span class="desc-info">Legt fest, wie groß ein Vorschaubild bei der Einbindung innerhalb des RSS-Feeds
sein soll. Diese Größe kann durch den URL-Parameter <code>feed_width</code> vom Benutzer
übergangen werden.</span>
</p>

<p class="desc">
<span class="item mbold">Nur verlinkte Bilder im RSS-Feed</span><!-- menuitem -->
<span class="desc-info">Falls Sie diese Option aktivieren, enthält der RSS-Feed nur die Bilder, die Sie
innerhalb Ihrer Blog-Beiträge auch tatsächlich verlinkt haben. Andernfalls wird
stur das Verzeichnis der Mediendatenbank ausgelesen, und alle darin enthaltenen
Bilder werden eingebunden.</span>
</p>

<p class="desc">
<span class="item mbold">Zeige exif-Tags</span><!-- menuitem -->
<span class="desc-info">Falls aktiviert, werden die EXIF-Metadaten einer Datei der Mediendatenbank
dargestellt.</span>
</p>

<p class="desc">
<span class="item mbold">Exif data</span><!-- menuitem -->
<span class="desc-info">Wenn Sie die Darstellung der EXIF-Metadaten aktiviert haben, können Sie im
Bereich <span class="mbold">Exif data</span> festlegen, welche dieser EXIF-Daten tatsächlich
angezeigt werden sollen. Sie können jeden der verfügbaren Werte gezielt
aktivieren oder deaktivieren.</span>
</p>

<p class="desc">
<span class="item mbold">Show Media Properties</span><!-- menuitem -->
<span class="desc-info">Bei aktivierter Option können die vom Redakteur eingetragenen Metadaten
(Copyright, Bildtitel ...) zu den einzelnen Mediendateien angezeigt werden.</span>
</p>

<p class="desc">
<span class="item mbold">Media properties list</span><!-- menuitem -->
<span class="desc-info">Wenn Sie die Option <span class="mbold">Show Media Properties</span> aktivieren, können Sie in
diesem Eingabefeld festlegen, welche Metadaten Sie anzeigen wollen. Die hier
verfügbaren Feldnamen richten sich nach dem, was Sie in der globalen
Serendipity-Konfiguration eingetragen haben (siehe Seite <span class="pageref"><a href="#Medien-Eigenschaften">Medien-Eigenschaften</a></span>).</span>
</p>

<p class="desc">
<span class="item mbold">Zeige einen Link zu den Einträgen/statischen Seiten, die auf das Bild verlinken</span><!-- menuitem -->
<span class="desc-info">Wenn Sie diese Option aktivieren, wird in der Ansicht eines Bildes in der
Galerie eine Liste angezeigt, die alle URL-Verweise auf dieses Objekt enthält. So
können Sie sehen, von welchen Seiten aus ein Bild oder eine Datei eingebunden
wurde. Dies kann nur ausgewertet werden, wenn Sie die Bilder mittels
Serendipity-Wrapper ausgeben (siehe Seite <span class="pageref"><a href="#mdb-by-id">mdb-by-id</a></span>).</span>
</p>

<p>&nbsp;</p><!-- separator -->

<p>
<span class="tag-box invisible">
    <span class="inline-tag">Template-Dateien!plugin_usergallery.tpl</span>
    <span class="inline-tag">Template-Dateien!plugin_usergallery_imagedisplay.tpl</span>
</span>
Falls die Darstellung des Plugins mittels Template-Datei erfolgt
(<span class="mbold">Choose the gallery style <span class="icon arrow-right">→</span> Media Library</span>), können Sie in den Dateien
<code>plugin_usergallery.tpl</code> (Übersicht)
und <code>plugin_usergallery_imagedisplay.tpl</code> (Einzelseite) auf
folgende Smarty-Variablen zugreifen:</p>

<p class="tagging invisible">
<span class="tag-box invisible">
    <span class="inline-tag">Template-Variablen!\$Bildergalerie@Bildergalerie</span>
</span>
</p>

<p class="desc citem-desc">
<code class="item smarty">{$staticpage_pagetitle}</code> (Zeichenkette)
<span class="desc-info">Enthält den Kurztitel der Galerieseite. Dies wird zB. dazu benutzt, bestimmte
HTML-Klassen mit einem eindeutigen Namen zu belegen, um sie individuell per
CSS-Anweisungen formatieren zu können.</span>
</p>

<p class="desc citem-desc">
<code class="item smarty">{$const}</code> (Array)
<span class="desc-info">Enthält ein Array mit zusätzlichen Sprachvariablen der Galerie.</span>
</p>

<p class="desc citem-desc">
<span class="tag-box invisible">
    <span class="inline-tag">Template-Variablen!\$plugin_usergallery_httppath</span>
</span>
<code class="item smarty">{$plugin_usergallery_httppath}</code> (Zeichenkette)
<span class="desc-info">Enthält den URL-Pfad zur aktuellen Seite der Galerie.</span>
</p>

<p class="desc citem-desc">
<span class="tag-box invisible">
    <span class="inline-tag">Template-Variablen!\$plugin_usergallery_httppath_extend</span>
</span>
<code class="item smarty">{$plugin_usergalleryhttppath_extend}</code> (Zeichenkette)
<span class="desc-info">Enthält den URL-Pfad zur aktuellen Seite der Galerie. Diese Variable kann zum
Anhängen von weiteren URL-GET-Variablen verwendet werden, da sie mit einem
<code>?</code> oder <code>&amp;</code> endet (je nach konfigurierter URL-Umformungsoption des
Blogs, siehe Seite <span class="pageref"><a href="#urlformung">urlformung</a></span>).</span>
</p>

<p class="desc citem-desc">
<span class="tag-box invisible">
    <span class="inline-tag">Template-Variablen!\$plugin_usergallery_currentgal</span>
</span>
<code class="item smarty">{$plugin_usergallery_currentgal}</code> (Zeichenkette)
<span class="desc-info">Enthält den Namen des aktuellen Pfades der Mediendatenbank.</span>
</p>

<p class="desc citem-desc">
<span class="tag-box invisible">
    <span class="inline-tag">Template-Variablen!\$plugin_usergallery_uppath</span>
</span>
<code class="item smarty">{$plugin_usergallery_uppath}</code> (Zeichenkette)
<span class="desc-info">Enthält den Namen des übergeordneten Pfades des aktuell dargestellten
Verzeichnisses der Mediendatenbank.</span>
</p>

<p class="desc citem-desc">
<span class="tag-box invisible">
    <span class="inline-tag">Template-Variablen!\$plugin_usergallery_toplevel</span>
</span>
<code class="item smarty">{$plugin_usergallery_toplevel}</code> (Zeichenkette)
<span class="desc-info">Enthält den Wert <code>yes</code>, falls der Besucher das Stammverzeichnis der
Mediendatenbank ansieht. Falls der Besucher ein Unterverzeichnis ansieht,
enthält diese Variable den Wert <code>no</code>.</span>
</p>

<p class="desc citem-desc">
<span class="tag-box invisible">
    <span class="inline-tag">Template-Variablen!\$plugin_usergallery_maindir_filecount</span>
</span>
<code class="item smarty">{$plugin_usergallery_maindir_filecount}</code> (Zahl)
<span class="desc-info">Enthält die Anzahl an dargestellten Dateien des aktuellen Verzeichnisses.</span>
</p>

<p class="desc citem-desc">
<span class="tag-box invisible">
    <span class="inline-tag">Template-Variablen!\$plugin_usergallery_subdirectories</span>
</span>
<code class="item smarty">{$plugin_usergallery_subdirectories}</code> (Array)
<span class="desc-info">Enthält ein Array mit allen Unterverzeichnissen der Mediendatenbank. Jeder
Array-Index enthält den Namen des jeweiligen Verzeichnisses, der Array-Wert
enthält in einem Unter-Array mit dem Array-Schlüssel <code>filecount</code> die
jeweilige Anzahl der Objekte in diesem Verzeichnis. Alle weiteren
Array-Schlüssel richten sich nach der Liste auf Seite <span class="pageref"><a href="#mediafolders">mediafolders</a></span>.</span>
</p>

<p class="desc citem-desc">
<span class="tag-box invisible">
    <span class="inline-tag">Template-Variablen!\$plugin_usergallery_pagination</span>
</span>
<code class="item smarty">{$plugin_usergallery_pagination}</code> (Boolean)
<span class="desc-info">Enthält den Wert <code>true</code>, wenn die Navigation zum Vor- und Zurückblättern der
Galerieansicht dargestellt werden muss.</span>
</p>

<p class="desc citem-desc">
<span class="tag-box invisible">
    <span class="inline-tag">Template-Variablen!\$plugin_usergallery_total_count</span>
</span>
<code class="item smarty">{$plugin_usergallery_total_count}</code> (Zahl)
<span class="desc-info">Enthält die Gesamtzahl an Objekten in der Mediendatenbank.</span>
</p>

<p class="desc citem-desc">
<span class="tag-box invisible">
    <span class="inline-tag">Template-Variablen!\$plugin_usergallery_total_pages</span>
</span>
<code class="item smarty">{$plugin_usergallery_total_pages}</code> (Zahl)
<span class="desc-info">Enthält die Gesamtzahl an Seiten, falls die Darstellung einer Galerie auf
mehrere Seite aufgebrochen werden muss.</span>
</p>

<p class="desc citem-desc">
<span class="tag-box invisible">
    <span class="inline-tag">Template-Variablen!\$plugin_usergallery_current_page</span>
</span>
<code class="item smarty">{$plugin_usergallery_current_page}</code> (Zahl)
<span class="desc-info">Enthält die aktuelle Seitennummer, falls die Darstellung einer Galerie auf
mehrere Seiten umbrochen werden muss.</span>
</p>

<p class="desc citem-desc">
<span class="tag-box invisible">
    <span class="inline-tag">Template-Variablen!\$plugin_usergallery_next_page</span>
    <span class="inline-tag">Template-Variablen!\$plugin_usergallery_previous_page</span>
</span>
<code class="item smarty">{$plugin_usergallery_next_page</code>, 
<code class="item smarty">{$plugin_usergallery_previous_page}</code> (Zahl)
<span class="desc-info">Enthält die jeweils nächste und vorherige Seitennummer.</span>
</p>

<p class="desc citem-desc">
<span class="tag-box invisible">
    <span class="inline-tag">Template-Variablen!\$plugin_usergallery_title</span>
</span>
<code class="item smarty">{$plugin_usergallery_title</code> (Zeichenkette)
<span class="desc-info">Enthält den Seitentitel der Galerie.</span>
</p>

<p class="desc citem-desc">
<span class="tag-box invisible">
    <span class="inline-tag">Template-Variablen!\$plugin_usergallery_cols</span>
</span>
<code class="item smarty">{$plugin_usergallery_cols</code> (Zahl)
<span class="desc-info">Enthält die gewünschte Anzahl an Spalten pro Galerieseite.</span>
</p>

<p class="desc citem-desc">
<span class="tag-box invisible">
    <span class="inline-tag">Template-Variablen!\$plugin_usergallery_preface</span>
</span>
<code class="item smarty">{$plugin_usergallery_preface</code> (Zeichenkette)
<span class="desc-info">Enthält die in den Konfigurationsoptionen hinterlegte Einführung (Text) zur
Mediendatenbank.</span>
</p>

<p class="desc citem-desc">
<span class="tag-box invisible">
    <span class="inline-tag">Template-Variablen!\$plugin_usergallery_fixed_width</span>
</span>
<code class="item smarty">{$plugin_usergallery_fixed_width</code> (Zahl)
<span class="desc-info">Enthält die maximale Breite eines Bildes.</span>
</p>

<p class="desc citem-desc">
<span class="tag-box invisible">
    <span class="inline-tag">Template-Variablen!\$plugin_usergallery_image_display</span>
</span>
<code class="item smarty">{$plugin_usergallery_image_display</code> (Zeichenkette)
<span class="desc-info">Enthält den in den Konfigurationsoptionen festgelegten Wert, ob ein Bild bei
Klick als Popup oder innerhalb derselben Seite angezeigt werden soll.</span>
</p>

<p class="desc citem-desc">
<span class="tag-box invisible">
    <span class="inline-tag">Template-Variablen!\$plugin_usergallery_gallery_breadcrumb</span>
</span>
<code class="item smarty">{$plugin_usergallery_gallery_breadcrumb</code> (Array)
<span class="desc-info">Enthält ein Array mit allen übergeordneten Pfaden des aktuellen Verzeichnisses
der Mediendatenbank, so dass diese gezielt angesprungen werden können. Pro
Array-Schlüssel enthält der Array-Wert den jeweiligen Verzeichnisnamen.</span>
</p>

<p class="desc citem-desc">
<span class="tag-box invisible">
    <span class="inline-tag">Template-Variablen!\$plugin_usergallery_dir_list</span>
</span>
<code class="item smarty">{$plugin_usergallery_dir_list</code> (Zeichenkette)
<span class="desc-info">Enthält den in den Konfigurationsoptionen festgelegten Wert, ob eine
Verzeichnisliste eingeblendet werden soll.</span>
</p>

<p class="desc citem-desc">
<span class="tag-box invisible">
    <span class="inline-tag">Template-Variablen!\$plugin_usergallery_display_dir_tree</span>
</span>
<code class="item smarty">{$plugin_usergallery_display_dir_tree</code> (Zeichenkette)
<span class="desc-info">Enthält den in den Konfigurationsoptionen festgelegten Wert, ob eine
Verzeichnisnavigation eingeblendet werden soll.</span>
</p>

<p class="desc citem-desc">
<span class="tag-box invisible">
    <span class="inline-tag">Template-Variablen!\$plugin_usergallery_colwidth</span>
</span>
<code class="item smarty">{$plugin_usergallery_colwidth</code> (Zahl)
<span class="desc-info">Enthält einen gerundeten Wert, der abhängig von der konfigurierten Anzahl der
Bilder pro Zeile die Spaltenbreite bei der Darstellung festlegt.</span>
</p>

<p class="desc citem-desc">
<span class="tag-box invisible">
    <span class="inline-tag">Template-Variablen!\$plugin_usergallery_limit_directory</span>
</span>
<code class="item smarty">{$plugin_usergallery_limit_directory</code> (Zeichenkette)
<span class="desc-info">Enthält den Namen des aktuellen Verzeichnisses, von dem sämtliche Sonderzeichen
entfernt wurden.</span>
</p>

<p class="desc citem-desc">
<span class="tag-box invisible">
    <span class="inline-tag">Template-Variablen!\$plugin_usergallery_images</span>
</span>
<code class="item smarty">{$plugin_usergallery_images</code> (Array)
<span class="desc-info">Enthält ein Array mit allen Bildern der aktuellen Seite. Die Inhalte des Arrays
richten sich nach den festgelegten Array-Schlüsseln (siehe Seite <span class="pageref"><a href="#mediafile">mediafile</a></span>).</span>
</p>

<p class="desc citem-desc">
<span class="tag-box invisible">
    <span class="inline-tag">Template-Variablen!\$plugin_usergallery_nextid</span>
    <span class="inline-tag">Template-Variablen!\$plugin_usergallery_previousid</span>
</span>
<code class="item smarty">{$plugin_usergallery_nextid}</code>, 
<code class="item smarty">{$plugin_usergallery_previousid}</code> (Zahl)
<span class="desc-info">Enthält die ID des jeweils vorherigen und nächsten Bildes.</span>
</p>

<p class="desc citem-desc">
<span class="tag-box invisible">
    <span class="inline-tag">Template-Variablen!\$plugin_usergallery_xtra_info</span>
</span>
<code class="item smarty">{$plugin_usergallery_xtra_info}</code> (Zeichenkette)
<span class="desc-info">Enthält eine HTML-Ausgabe mit den EXIF-Metadaten des Bildes.</span>
</p>

<p class="desc citem-desc">
<span class="tag-box invisible">
    <span class="inline-tag">Template-Variablen!\$plugin_usergallery_extended_info</span>
</span>
<code class="item smarty">{$plugin_usergallery_extended_info</code> (Zeichenkette)
<span class="desc-info">Enthält die HTML-Ausgabe mit in der Mediendatenbank festgelegten
Medieneigenschaften einer Datei (zB. Titel, Copyright etc.)</span>
</p>

<p class="desc citem-desc">
<span class="tag-box invisible">
    <span class="inline-tag">Template-Variablen!\$plugin_usergallery_file</span>
</span>
<code class="item smarty">{$plugin_usergallery_file}</code> (Array)
<span class="desc-info">Enthält das Array mit Bildinformationen, falls die Einzeldarstellung erfolgt.
Die Inhalte des Arrays richten sich nach den Array-Schlüsseln
(siehe Seite <span class="pageref"><a href="#mediafile">mediafile</a></span>).</span>
</p>

<p>&nbsp;</p><!-- separator -->

<p>Bei der Darstellung mittels <span class="mbold">Choose the gallery style <span class="icon arrow-right">→</span> Media</span> greift das
Plugin auf die Standard-Template-Dateien wie <code>media_choose.tpl</code> zurück
(siehe Seite <span class="pageref"><a href="#media-choose.tpl">media-choose.tpl</a></span>).</p>

</section><!-- section.sub end -->

</section><!-- section.index end -->

<section id="S650" class="index">
<span class="s-toc">6.5 - Auswahl an Profi-Plugins</span>

<h3 class="section" id="auswahl-an-profi-plugins">Auswahl an Profi-Plugins</h3>

<p>Serendipity bietet besonders für Entwickler eine größere Zahl an
komplexen und flexiblen Plugins. Eine kleine Auswahl wird auf den
folgenden Seiten vorgestellt. Auch für Einsteiger in die Weblog-Szene
könnte es interessant sein, einmal über den Tellerand zu
blicken, um zu sehen, welche Möglichkeiten sich eröffnen, wenn Sie
sich tiefer in Serendipity einarbeiten.</p>

<p>&nbsp;</p>

<section id="serendipity_event_backend" class="sub">
<span class="u-toc">6.5.1 - Show entries via JavaScript: serendipity_event_backend</span>

<h3 class="subsection" id="show-entries-via-javascriptserendipity_event_backend">Show entries via JavaScript<br>serendipity_event_backend</h3>

<p class="tagging invisible">
<span class="tag-box invisible">
    <span class="inline-tag">Plugins!Show entries via JavaScript</span>
    <span class="inline-tag">Plugins!serendipity_event_backend</span>
    <span class="inline-tag">Eintrag!auf fremden Seiten einbinden</span>
</span>
</p>

<p>Dieses Plugin bietet eine JavaScript-basierte Schnittstelle an, um
Blog-Einträge auf unabhängigen Seiten über einen Hintergrundaufruf
einzubinden.</p>

<p>Sobald das Plugin installiert ist, kann man eine spezielle URL aufrufen,
die abhängig von bestimmten URL-Parametern Blog-Einträge mittels JavaScript
ausgibt. Diese Art der Einbindung arbeitet ähnlich wie die Benutzung von
GoogleAds oder anderen JavaScript-<em>Widgets</em>.</p>

<p>Anwendung findet dieses Plugin dann, wenn Sie die Inhalte Ihrer
Blog-Artikel auf Webseiten einbinden wollen, auf denen Serendipity
nicht installiert ist.
Zwar könnten Sie dies auch durch die Einbindung des RSS-Feeds
erledigen, aber dies ist oft mit Programmieraufwand verbunden. Auch das
Einbinden des Serendipity-PHP-Frameworks (falls die einbindenden
Webseiten auf demselben Server wie das Blog liegen) wäre eine
mit zusätzlichem Aufwand verbundene Methode.</p>

<p>Standardmäßig können Sie nach der Installation des Plugins eine URL wie
<code>http://www.example.com/serendipity/index.php?/plugin/backend</code>
aufrufen. Diese URL gibt JavaScript-Befehle aus, die die Inhalte der
letzten Blog-Einträge enthalten. Daher ist diese URL nicht zum Aufruf im
Browser gedacht, sondern Sie sollten sie wie folgt in Ihre HTML-Seite
einbauen:</p>

<pre class="snippet"><code id="backend" class="php">&lt;html&gt;<br>
&nbsp;&lt;body&gt;<br>
&nbsp;Hier&nbsp;eine&nbsp;Liste&nbsp;meiner&nbsp;aktuellen&nbsp;Beiträge:<br>
&nbsp;&lt;div&nbsp;id="backend"&gt;<br>
&nbsp;&nbsp;&nbsp;&lt;script&nbsp;scr="http://www.example.com/serendipity/index.php?/plugin/backend"&gt;&lt;/script&gt;<br>
&nbsp;&lt;/div&gt;<br>
&nbsp;&lt;/body&gt;<br>
&lt;/html&gt;</code></pre><!-- snippet -->

<p>Wenn Sie diese HTML-Datei als <code>test.html</code> auf einem beliebigen Server
speichern und aufrufen, sollten Sie auf dieser Seite die mittels
JavaScript eingebundenen Blog-Einträge sehen können.</p>

<p>Dies können Sie beispielsweise benutzen, wenn Sie Webseiten betreiben,
die nicht mit Serendipity betrieben werden (Werbeportale, Firmenseiten,
private Seiten ihrer Mitarbeiter), und auf denen Sie gerne Blog-Artikel
ausgeben möchten.</p>

<p>Um gezielt bestimmte Artikel auszulesen, bietet das Plugin mehrere
URL-Parameter an. Standardmäßig werden nur Links zu den Blog-Einträgen
sowie deren Titel angezeigt. Eine Ausgabe des Plugins sähe im
JavaScript-Code so aus:</p>

<pre><code class="html js">
    document.write('&lt;a href="http://www.example.com/serendipity/archives/1-isotopp-rock0rz.html"&gt;Blog-Huldigung&lt;/a&gt;&lt;br/&gt;');
</code></pre>

<p>Um diese Ausgabe zu beeinflussen, können Sie die folgenden URL-Parameter
mittels
<code>http://www.example.com/serendipity/index.php?/plugin/backend&amp;variable1=wert1&amp;variable2=wert2...</code>
aufrufen - Variablen sind mit <code>&amp;</code> voneinander getrennt:</p>

<p class="desc">
<code class="item uri_param">&amp;category=X</code>
<span class="desc-info">Beschränkt die Ausgabe der Artikel auf eine spezielle Kategorie.
X entspricht dabei dem Namen einer Kategorie.</span>
</p>

<p class="desc">
<code class="item uri_param">&amp;categoryid=X</code>
<span class="desc-info">Beschränkt die Ausgabe der Artikel auf eine (oder mehrere) spezielle
Kategorie(n). X entspricht dabei der ID einer Kategorie. Mehrere
Kategorie-IDs können durch ein Semikolon (<code>;</code>) voneinander getrennt
werden.</span>
</p>

<p class="desc">
<code class="item uri_param">&amp;authorid=X</code>
<span class="desc-info">Beschränkt die Ausgabe der Artikel auf einen speziellen Autor.
X enthält die ID des gewünschten Autors. Um mehrere Autoren
einzubeziehen, können Sie deren IDs durch ein Semikolon (<code>;</code>)
voneinander trennen.</span>
</p>

<p class="desc">
<code class="item uri_param">&amp;num=X</code>
<span class="desc-info">Beschränkt die Anzahl der Artikel auf X Stück.</span>
</p>

<p class="desc">
<code class="item uri_param">&amp;order=X</code>
<span class="desc-info">Gibt die Reihenfolge der Artikel an. X kann entweder <code>asc</code>
(aufsteigend) oder <code>desc</code> (absteigend) enthalten.</span>
</p>

<p class="desc">
<code class="item uri_param">&amp;showdate=X</code>
<span class="desc-info">Wenn der Wert <code>showdate=1</code> übermittelt wird, gibt das JavaScript das
Datum eines Beitrages mit aus.</span>
</p>

<p class="desc">
<code class="item uri_param">&amp;dateformat=X</code>
<span class="desc-info">Bei gesetztem <code>showdate</code>-Parameter bestimmt die Variable
die Formatierung des Datums. Standardmäßig wird das
Format <code>Y-m-d</code> (Jahr-Monat-Tag) benutzt. Gültige Platzhalter finden
Sie in der PHP-Dokumentation zum
<code>date()</code>-Befehl [*]
<span class="footnote"><i class="fa fa-info-circle"></i> <a href="http://www.php.net/date" target="_blank">http://www.php.net/date</a></span><!-- footnote -->.
</span>
</p>

<p class="desc">
<code class="item uri_param">&amp;showtime=john</code>
<span class="desc-info">Wenn der Wert <code>showtime=1</code> übermittelt wird, gibt das JavaScript die
Uhrzeit eines Beitrages mit aus.</span>
</p>

<p class="desc">
<code class="item uri_param">&amp;timeformat=X</code>
<span class="desc-info">Bei gesetztem <code>showtime</code>-Parameter bestimmt die Variable
die Formatierung der Uhrzeit eines Eintrags.
Standardmäßig wird das Format <code>g:ia</code> (Stunde:Minute am/pm) benutzt.
Gültige Platzhalter finden Sie in der PHP-Dokumentation zum
<code>date()</code>-Befehl. Sie können die Platzhalter zur Uhrzeit-Formatierung
jedoch auch über die Variable <code>dateformat</code> mitbestimmen. Wenn Sie
sowohl <code>dateformat</code> als auch <code>timeformat</code> übermitteln,
werden in der Datumsausgabe des Plugins beide Platzhalter benutzt.</span>
</p>

<p class="desc">
<code class="item uri_param">&amp;point=X</code>
<span class="desc-info">Die URL-Variable kann eine beliebige Zeichenkette (ohne
HTML!) enthalten, die zur Trennung der einzelnen Artikel benutzt wird.
So können Sie beispielsweise <code>point=*</code> benutzen, um vor jedem Artikel
einen Stern auszugeben.</span>
</p>

<p class="desc">
<code class="item uri_param">&amp;details=X</code>
<span class="desc-info">Wenn Sie die Variable <code>details=1</code> benutzen, bindet das Plugin nicht
nur den Link des Artikels ein, sondern auch den vollständigen
Blog-Artikeltext (ohne den erweiterten Eintrag).</span>
</p>

<p>&nbsp;</p><!-- separator -->

<p>Etwaige Sonderzeichen für die Werte der Variablen (beispielsweise
Kategorienamen) müssen mit URL-Sonderzeichen ersetzt werden. Aus dem
Kategorienamen <em>Thundercats und Mäuse</em> würde daher der Wert
<code>Thundercats+und+M%E4use</code>. Die PHP-Funktion <code>urlencode</code>
kann Variablen entsprechend kodieren, siehe
<code>http://php.net/manual/de/function.urlencode.php</code>.</p>

<p>Wenn Sie also beispielsweise fünf Artikel der ersten Kategorie, aufsteigend
sortiert, inklusive Artikeltext mit deutschem Datumsformat anzeigen
wollen, müssen Sie folgende URL einbinden:</p>

<pre><code class="html">
    http://www.example.com/serendipity/index.php?/plugin/backend&amp;categoryid=1&amp;details=1&amp;num=5&amp;order=asc&amp;showdate=1&amp;dateformat=d.m.Y+H:i
</code></pre>

<p>Wenn das JavaScript erfolgreich in Ihrer Webseite eingebunden ist, können
Sie mittels der CSS-Klassen <code>.blog_body</code> (Artikelinhalt),
<code>.blog_hr</code> (Artikeltrenner), <code>.blog_author</code> (Autorname),
<code>.blog_date</code> (Artikeldatum), <code>.blog_title</code> (Artikeltitel),
<code>.blog_point</code> (Artikeltrenner) und <code>.blog_link</code>
(Hyperlink) die Formatierung der Ausgabe individuell beeinflussen.</p>

<p>Wollen Sie die Ausgabeformatierung generell ändern, können Sie die
Datei
<code>plugins/serendipity_event_backend/serendipity_event_backend.php</code>
bearbeiten und am Ende der Datei die JavaScript
<code>document.writeln</code>-Zeilen anpassen.</p>

<p>In den Konfigurationsoptionen des Plugins können Sie einstellen, über
welchen Plugin-Pfad (<code>index.php?/plugin/backend</code>) das
JavaScript aufgerufen wird. Anstelle von <code>backend</code> können Sie
auch einen beliebigen anderen Pfad konfigurieren. Dieser Pfad sollte
jedoch lediglich die Buchstaben A bis Z und Zahlen enthalten --
Sonderzeichen, Unterstriche, Schrägstriche und andere könnten Probleme
verursachen.</p>

</section><!-- section.sub end -->

<section id="serendipity_event_cachesimple" class="sub">
<span class="u-toc">6.5.2 - Einfache Cached/Pregenerated Seiten: serendipity_event_cachesimple</span>

<h3 class="subsection" id="einfache-cached-pregenerated-seitenserendipity_event_cachesimple">Einfache Cached/Pregenerated Seiten<br>serendipity_event_cachesimple</h3>

<p class="tagging invisible">
<span class="tag-box invisible">
    <span class="inline-tag">Plugins!Einfache Cached/Pregenerated Seiten</span>
    <span class="inline-tag">Plugins!serendipity_event_cachesimple</span>
</span>
<span class="label invisible" id="cachesimple">cachesimple</span>
<span class="tag-box invisible">
    <span class="inline-tag">Cache</span>
</span>
</p>

<p>Serendipity ist aufgrund seiner hohen Flexibilität und Dynamik leider
wenig ressourcenschonend. An vielen Stellen des Systems können Plugins
eingreifen und abhängig vom eingeloggten Benutzer unterschiedliche
Inhalte anzeigen.
Das Plugin <em>Erweiterte Eigenschaften für Artikel</em> (siehe Seite
<span class="pageref"><a href="#entryproperties">entryproperties</a></span>)
kann zwar die Ausführung der Textformatierungs-Plugins
beschleunigen, gilt aber nicht für den kompletten Seitenaufruf.</p>

<p>Das Plugin <em>Einfache Cached/Pregenerated Seiten</em> ist daher ein recht
einfaches Plugin, das in den generellen Seitenaufbau eines
Serendipity-Blogs eingreift. Ein Seitenaufruf sieht folgende
Reihenfolge [*]
<span class="footnote"><i class="fa fa-info-circle"></i> Dies ist eine verkürzte Darstellung. Die
technischen Details finden Sie im Kapitel <span class="reference">workflow</span> ab Seite
<span class="pageref"><a href="#workflow">workflow</a></span>.</span><!-- footnote --> vor:</p>

<ul class="realList">
    <li>Aufruf der Webseite durch den Besucher.</li>
    <li>Laden der Funktionsdateien von Serendipity (Dateien im <code>include</code>-Verzeichnis).</li>
    <li>Herstellung einer Datenbankverbindung.</li>
    <li>Laden der globalen Serendipity-Konfiguration aus der Datenbank.</li>
    <li>Laden der Plugin API und installierter Ereignis-Plugins.</li>
    <li>Laden der persönlichen Konfigurationsdaten bei eingeloggten Benutzern.</li>
    <li>Analyse der aufgerufenen URL.</li>
    <li>Zusammenstellung der Artikel/Daten aus Datenbanktabellen für
        die aufgerufene URL, parallel Ausführung etwaiger Plugins bei den
        jeweiligen Schritten.</li>
    <li>Aufruf des Smarty-Template-Frameworks.</li>
    <li>Laden und Kompilieren des eingestellten Templates.</li>
    <li>Darstellung des Templates.</li>
</ul>

<p>Obwohl dies relativ komplex aussieht, kann Serendipity einen derartigen
Workflow typischerweise in weitaus weniger als einer Sekunde ausführen,
so dass man pro Sekunde durchaus mehrere Besucher bedienen kann.</p>

<p>Das Caching-Plugin setzt nun bei Schritt 7 an und versucht für eine
aufgerufene URLs alle Folgeschritte zu sparen. Dabei geht das Plugin
davon aus, dass, wenn ein Besucher eine identische URL bereits vorher
aufgerufen hat, dieselbe Seite auch für den aktuellen Besucher gilt, und
gibt denselben Inhalt aus.</p>

<p>Daher speichert das Plugin bei jedem Seitenaufruf die ausgegebene Seite
im Verzeichnis <code>templates_c</code> zwischen und gibt sie später aus. Erst
nach Ablauf einer Stunde oder beim Veröffentlichen eines neuen Artikels
wird der Zwischenspeicher erneut erzeugt.
Das Plugin bietet zwei Konfigurationsoptionen: <span class="mbold">Use separate
IE/Mozilla caches?</span> und <span class="mbold">Force clients to maintain fresh copy</span>.</p>

<p>Die erste Option bewirkt, dass das Plugin für Internet Explorer
und Mozilla-Browser unterschiedliche Zwischenspeicher erstellt. Das ist
dann hilfreich, wenn Sie möglicherweise in Ihrem Template oder einem
PHP-Code eine Browser-Erkennung durchführen. Da das Plugin in den
Zwischenspeicher immer das übernimmt, was der erste Besucher durch seinen
Aufruf sieht, würde im Zwischenspeicher sonst, unabhängig vom Browser dieses
Besuchers, möglicherweise eine falsche Kopie landen.</p>

<p>Wenn Sie die Option <span class="mbold">Force clients to maintain fresh copy</span>
aktivieren, übermittelt das Plugin an den Browser des Besuchers eine
Uhrzeit, zu der die aktuell zwischengespeicherte Ausgabe nicht mehr
gültig ist und ersetzt wird (der sog. HTTP-<em>Expires</em>-Header).
Dies hat den Vorteil, dass ein Browser dann selbständig entscheiden kann,
ob er eine Webseite aus dem Browser-Cache anzeigt oder vollständig aus
dem Blog abruft, und kann daher die Seitendarstellungsgeschwindigkeit bei
den Besuchern noch weiter beschleunigen.</p>

<p>Ist das Caching-Plugin aktiviert, gibt es weitere HTTP-Header aus, die
dafür sorgen, dass es einem Browser generell erlaubt ist, die Blog-Seiten
zwischenzuspeichern. In gut besuchten Blogs könnte das dazu führen, dass
neue Kommentare einem Besucher nicht direkt angezeigt werden, da dieser
immer noch eine alte Version der Seite von seinem Browser bezieht. Daher
gibt Serendipity ohne dieses Plugin immer der Aktualität den höchsten
Stellenwert und erlaubt solches Caching standardmäßig nicht.</p>

<p>Obwohl das Plugin mit der Abkürzung einer Seitenerzeugung einiges an
Arbeit sparen kann, gibt es dennoch zentrale Probleme:</p>

<ul class="realList">

    <li>Eine Browser-Anfrage mit HTTP-POST-Formulardaten kann nicht
    zwischengespeichert werden. Die meisten Spammer verwenden
    jedoch diese Daten, und daher wird für fast keinen Blog-Aufruf
    durch einen Spammer das Caching-Plugin aktiv. Daher wird also
    nach wie vor viel an Ressourcen an Spammer verschwendet.</li>

    <li>Die Caching-Funktionalität wird von einem Plugin eingebunden.
    Damit ein Plugin überhaupt aktiv werden kann, muss Serendipity
    schon zahlreiche Aktionen ausführen, die bereits viele
    Ressourcen verschlingen.</li>

    <li>Durch das Caching einer vollständigen Seite verliert das Blog
    zahlreiche Features für viele dynamische Plugins.
    Beispielsweise können Artikel, die nur von eingeloggten
    Besuchern gelesen werden können, nicht mehr dargestellt werden
    - denn für Serendipity gibt es nun nur noch einen einzigen
    Besucher, dessen Login-Status nicht mehr abgefragt werden kann.</li>

</ul>

<p>Ein technisch sinnvolles Caching, das dennoch die Flexibilität von
Serendipity beibehält, ist wohl nach heutigem Stand kaum möglich. Sollten
Sie Interesse an der Ausarbeitung anderer Caching-Konzepte haben, werden
Sie bei den Serendipity-Entwicklern sicher auf ein offenes Ohr stoßen,
denn Mitarbeit in diesem Bereich wird stark benötigt.</p>

</section><!-- section.sub end -->

<section id="serendipity_event_communityrating" class="sub">
<span class="u-toc">6.5.3 - Community Rating: serendipity_event_communityrating</span>

<h3 class="subsection" id="community-ratingserendipity_event_communityrating">Community Rating<br>serendipity_event_communityrating</h3>

<p class="tagging invisible">
<span class="tag-box invisible">
    <span class="inline-tag">Plugins!Community Rating</span>
    <span class="inline-tag">Plugins!serendipity_event_communityrating</span>
</span>
</p>

<p class="tagging invisible">
<span class="tag-box invisible">
    <span class="inline-tag">Bewertungen</span>
    <span class="inline-tag">Meinungsberichte</span>
    <span class="inline-tag">Community</span>
    <span class="inline-tag">Webservices</span>
</span>
</p>

<p>Das <em>Community Rating</em>-Plugin bietet die Möglichkeit, einen
Blog-Artikel zu einem Meinungsbericht aufzuwerten. Wenn Sie einen Artikel
über einen Film, ein Produkt oder über bekannte Personen schreiben, können Sie den
Artikel gezielt über ein eigenes Feld bewerten und diese Wertung an
zentraler Stelle anzeigen.</p>

<p>Außerdem können die eigenen Bewertungen auch anderen Blogs zur Verfügung
gestellt werden, indem auf Meinungsbeiträge anderer Blogger zum selben
Produkt hingewiesen wird.</p>

<p>Das Plugin agiert daher auf mehreren Ebenen und ist mitunter komplex
einzurichten. Die folgenden Anweisungen sind daher eher für fortgeschrittene
Anwender konzipiert, Anfänger sollten vorher das Kapitel <span class="reference">Smarty-Templates</span>
ab Seite <span class="pageref"><a href="#Smarty-Templates">Smarty-Templates</a></span> über das Smarty-Templating lesen.</p>

<p>In der Konfiguration des Plugins vergeben Sie eine (frei wählbare)
Namensliste von Wertungsmöglichkeiten. Dabei ist es notwendig, ein
Produkt später eindeutig zu identifizieren, um eine in der Community
einheitliche Zuordnung herzustellen. Das Plugin schlägt daher
standardmäßig die Wertungsmöglichkeiten bei der IMDb [*]
<span class="footnote"><i class="fa fa-info-circle"></i> Internet
Movie Database, <a href="http://imdb.com/" target="_blank">http://imdb.com/</a></span><!-- footnote --> und von Produkten bei
Amazon [*]
<span class="footnote"><i class="fa fa-info-circle"></i> <a href="http://www.amazon.de/" target="_blank">http://www.amazon.de/</a></span><!-- footnote --> vor. Sie können hier
grundsätzlich jeden Bewertungstyp eintragen, benötigen aber später eine
zugehörige Webseite mit einer eindeutigen ID des bewerteten Produkts. Ein
Bewertungstyp darf keine Sonderzeichen (Umlaute oder Leerzeichen) enthalten.</p>

<p>Sobald Sie freie Namen für gewünschte Produktanbieter gewählt
haben, können Sie einen Blog-Artikel erstellen. Im Abschnitt
<em>Erweiterte Optionen</em> sehen Sie für jeden konfigurierten
Produktanbieter ein Eingabefeld <span class="mbold">ID</span> und ein Eingabefeld
<span class="mbold">Rating</span>. In das ID-Eingabefeld tragen Sie die eindeutige ID
ein, die das bewertete Produkt bei dem Anbieter identifiziert. Im Feld
<span class="mbold">Rating</span> bestimmern Sie ein Bewertungskriterium (Schulnoten von 1
bis 6, Punkte von 1 bis 10 oder sogar Sternchen von * bis ***). Sinnvoll ist die Vergabe von Zahlen, da diese
mathematisch verarbeitet werden können.</p>

<p>
<span class="tag-box invisible">
    <span class="inline-tag">Template-Funktionen!\$communityratingshow@communityrating_show</span>
</span>
Sobald der Artikel gespeichert wurde, ist das Produkt in der Datenbank mit
seiner ID zu dem jeweiligen Produktanbieter mit einer Punktzahl verbunden. Sie
können mittels Anpassung der eigenen Template-Dateien (siehe Kapitel
<span class="reference">Smarty-Templates</span> ab Seite <span class="pageref"><a href="#Smarty-Templates">Smarty-Templates</a></span>) folglich an
gewünschter Stelle (also auch in RSS-Feed-Template-Dateien!) eine Smarty-Funktion namens
<code class="smarty">{communityrating_show}</code> einbinden. Diese Funktion kann auch
dafür sorgen, dass Punktzahlen in grafische Icons umgewandelt werden.
Diesem Funktionsaufruf kann man folgende Parameter mitgeben:</p>

<p class="desc">
<code class="item param">type</code>
<span class="desc-info">
    <span class="box">
        Der Parameter bestimmt den Produktanbieter, den Sie anzeigen
        wollen. Für jeden Produktanbieter (wie <code>IMDB</code> und <code>Amazon</code>)
        müssen Sie <code>communityrating_show type="IMDB"</code> und
        <code>communityrating_show type="Amazon"</code> einzeln einbinden.
    </span>

    <span class="tag-box invisible">
    <span class="inline-tag">Template-Dateien!communityrating_....tpl</span>
    </span>
    <span class="box">
        Für jeden verwendeten <em>type</em> muss es in Ihrem Template-Verzeichnis
        oder dem Verzeichnis des Community-Rating-Plugins eine Datei namens
        <code>communityrating_type.tpl</code> geben, die bestimmt, wie der
        jeweilige Block eines Produktanbieters formatiert wird.
    </span>
</span>
</p>

<p class="desc">
<code class="item param">data</code>
<span class="desc-info">Der Parameter <code>data</code> muss das Array der freien
Artikeleigenschaften (<em>Entry-Properties</em>) enthalten. Diese Variable
wird von Serendipity bereitgestellt, daher können Sie einfach darauf zugreifen.
Falls Sie den Aufruf der Produktbewertung unterhalb von
<code class="smarty">{$entry.body}</code> in der Datei <code>entries.tpl</code> einbinden,
können Sie <code class="smarty">{communityrating_show data=$entry.properties}</code>
einfügen.</span>
</p>

<p class="desc">
<code class="item param">url</code>
<span class="desc-info">
    <span class="box">
        Mit dieser Variable können Sie die URL eines fremden Blogs übergeben, bei
        dem das Community-Rating-Plugin ebenfalls zum Einsatz kommt. So können
        Sie von fest definierten Blogs deren Produktbewertung einbinden. Das
        Plugin kann nicht automatisch erkennen, welche fremden Meinungen Sie
        einblenden möchten, daher müssen Sie für jedes fremde Blog einen eigenen
        Aufruf der Smarty-Funktion benutzen:
    </span>

    <span class="box">
        <span id="pre-style"><code class="smarty">
            {communityrating_show<br>
            &nbsp; url="http://example.com/serendipity/plugin/communityrating"<br>
            &nbsp; data=$entry.properties<br>
            &nbsp; who="garvin"<br>
            &nbsp; type="IMDB"}
        </code></span>
    </span>

    <span class="box">
        Die URL entspricht dabei immer der Serendipity-Plugin-URL plus
        <code>/plugin/communityrating</code>. Bei Serendipity-Blogs ohne URL-Umformung
        wäre dies <code>index.php?/plugin/communityrating</code>.
    </span>

    <span class="box">
        Der Aufruf dieser URL mit den Parametern für den gewünschten Typ und die
        Produkt-ID wird dann bei dem jeweiligen Blog die XML-Daten ausliefern,
        die das Plugin benötigt, um die fremde Bewertung einzubinden.
    </span>
</span>
</p>

<p class="desc">
<code class="item param">who</code>
<span class="desc-info">Dieser Parameter wird in Zusammenhang mit dem Parameter <em>url</em>
benötigt. Wenn ein fremder Produktbericht angezeigt wird, soll dieser
üblicherweise mit einem anderen Inhalt oder einem anderen Layout
angezeigt werden als der eigene Produktbericht. Daher benutzt das Plugin
in so einem Fall nicht mehr nur die Template-Datei
<code>communityrating_IMDB.tpl</code>, sondern
<code>communityrating_IMDB_who.tpl</code>, in der man gezielt auf das
jeweilige fremde Blog Formatierungen vornehmen kann.</span>
</p>

<p class="desc">
<code class="item param">path</code>
<span class="desc-info">
    <span class="box">
        Dieser Parameter enthält den Pfad, in dem die Bewertungsbilder
        gespeichert werden. Die Bewertungsbilder müssen in einem Unterverzeichnis
        <code>img</code> liegen und der Benennung
        <code>star_Typ_Zustand.png</code> entsprechen. Für den
        Produktanbieter <em>IMDB</em> müssen die Dateien
        <code>img/star_IMDB_full.png</code>, <code>img/star_IMDB_half.png</code> und
        <code>img/star_IMDB_zero.png</code> existieren. Die <em>full</em>-Grafikdatei
        enthält ein Symbol, das einen vollen Bewertungspunkt repräsentiert.
        <em>half</em> gibt einen halben Bewertungspunkt aus und <em>zero</em> einen
        leeren.
    </span>

    <span class="box">
        Das Standard-Bewertungssystem ist darauf ausgelegt, dass Sie im
        <em>Rating</em>-Feld für jeden Artikel eine Zahl von 0 bis 10 vergeben.
        Jeweils zwei volle Punkte ergeben einen Stern, ein einzelner Punkt
        entspricht einem halben Stern, und fehlende Punkte werden mit leeren
        Sternen dargestellt. Es werden daher immer fünf Sterne angezeigt, die
        entsprechend des vergebenen Ratings gefüllt sind. Sie können innerhalb
        der Template-Dateien selbständig für die grafische Formatierung von
        Bildern sorgen, wenn Sie ein eigenes System benutzen möchten.
    </span>
</span>
</p>

<p class="desc">
<span class="label invisible" id="communityrating-escaped">communityrating-escaped</span>
<code class="item param">escaped</code>
<span class="desc-info">Wenn Sie den Parameter <code>escaped=true</code> setzen, wird die
Smarty-Funktion die Rückgabe der Template-Datei im UTF-8-Format mit
escapten HTML-Sonderzeichen anleiten. Setzen Sie diesen Parameter, wenn
Sie die Smarty-Funktion innerhalb eines RSS-Feeds aufrufen.</span>
</p>

<p>&nbsp;</p><!-- separator -->

<p>Somit dient die zentrale Smarty-Funktion dazu, sowohl fremde als auch
eigene Produktbewertungen einzubinden. Pro Aufruf kann immer nur eine
Bewertung zu einem Produktanbieter von einem Benutzer eingebunden werden,
daher sind mehrere Aufrufe der Smarty-Funktion üblich. Wenn fremde
Meinungen eingebunden werden, speichert das Plugin diese Daten für eine
Woche im Verzeichnis <code>templates_c</code> zwischen, damit die fremde URL
nicht zu häufig aufgerufen wird und dort Serverlast erzeugt.</p>

<p>Jeder Aufruf der Funktion wertet die zugehörige Template-Datei
<code>communityrating_XXX.tpl</code> aus. Innerhalb dieser Datei können Sie
beliebige Smarty- und HTML-Syntax einsetzen. Es stehen folgende
Smarty-Variablen zur Verfügung, die sich jeweils auf das betreffende
Produkt des jeweiligen Produktanbieters beziehen:</p>

<p class="desc citem-desc">
<span class="tag-box invisible">
    <span class="inline-tag">Template-Variablen!\$communityrating_images</span>
</span>
<code class="item smarty">{$communityrating_images}</code>
<span class="desc-info">Diese Variable enthält den HTML-Code für die zusammengesetzte
Sternchen-Grafik mit fünf Sternen, die anhand des Ratings gefüllt oder leer
sind.</span>
</p>

<p class="desc citem-desc">
<span class="tag-box invisible">
    <span class="inline-tag">Template-Variablen!\$communityrating_rating</span>
</span>
<code class="item smarty">{$communityrating_rating}</code>
<span class="desc-info">In dieser Variable ist das <em>Rating</em> des Produktes gespeichert. Hier
kann Ihre individuelle Produktbewertung stehen, falls Sie statt der
Punktzahl von 0 bis 10 lieber Noten von 1 bis 6 vergeben.</span>
</p>

<p class="desc citem-desc">
<span class="tag-box invisible">
    <span class="inline-tag">Template-Variablen!\$communityrating_type</span>
</span>
<code class="item smarty">{$communityrating_type}</code>
<span class="desc-info">Diese Variable enthält den angeforderten Produktanbieter (bspw.
<code>IMDB</code> oder <code>Amazon</code>).</span>
</p>

<p class="desc citem-desc">
<span class="tag-box invisible">
    <span class="inline-tag">Template-Variablen!\$communityrating_id</span>
</span>
<code class="item smarty">{$communityrating_id}</code>
<span class="desc-info">Die ID des bewerteten Produkts wird in dieser Variable gespeichert.</span>
</p>

<p class="desc citem-desc">
<span class="tag-box invisible">
    <span class="inline-tag">Template-Variablen!\$communityrating_foreign_url</span>
</span>
<code class="item smarty">{$communityrating_foreign_url}</code>
<span class="desc-info">Wenn ein fremder Produktbericht angezeigt wird, enthält diese Variable
die URL des fremden Blogs, wo Sie den bewerteten Artikel finden.</span>
</p>

<p>Sehen Sie sich die dem Plugin beiliegenden
<code>communityrating_.*</code>-Dateien an, um zu sehen, wie die Ausgaben
üblicherweise formatiert werden.</p>

</section><!-- section.sub end -->

<section id="serendipity_event_includeentry" class="sub">
<span class="u-toc">6.5.4 - Textformatierung: Eintragsdaten einfügen: serendipity_event_includeentry</span>

<h3 class="subsection" id="textformatierung-eintragsdaten-einfügenserendipity_event_include">Textformatierung: Eintragsdaten einfügen<br>serendipity_event_includeentry</h3>

<p class="tagging invisible">
<span class="tag-box invisible">
    <span class="inline-tag">Plugins!Textformatierung: Eintragsdaten einfügen</span>
    <span class="inline-tag">Plugins!serendipity_event_includeentry</span>
    <span class="inline-tag">Blog-Artikel!verknüpfen</span>
    <span class="inline-tag">Include Entry</span>
    <span class="inline-tag">Artikelpool</span>
</span>
<span class="label invisible" id="includeentry">includeentry</span>
</p>

<p>Das Plugin <em>Textformatierung: Eintragsdaten einfügen</em> bietet trotz
Klassifizierung als <em>Textformatierungs-Plugin</em>
zahlreiche und flexible Funktionen. Mithilfe dieses Plugins können Sie
Daten bestehender Blog-Einträge in anderen Einträgen einbinden, einen
Artikelpool (sog. <em>Template-Blocks</em>) zum Anhängen an einen Eintrag
verwalten und auch Vorlagen für neue Beiträge erfassen. Alle drei
Möglichkeiten sind voneinander unabhängig einsetzbar.</p>

<p>Nach der Installation des Plugins finden Sie einen neuen Menüpunkt
<span class="mbold">Inhalt <span class="icon arrow-right">→</span> Template-Blocks</span> im Backend. In diesem Bereich sehen
Sie eine zweigeteilte Seite: Links können Sie Vorlagen für neue
Blog-Einträge (<em>Templates</em>) verwalten, in rechten Teil können Sie den
Artikelpool (<em>Blocks</em>) bearbeiten.</p>

<p>Um eine neue Artikelvorlage zu erstellen, müssen Sie im linken Bereich
unter <span class="mbold">Select Template</span> das Auswahlfeld auf <span class="mbold">Neuer Eintrag</span>
stellen und auf den Button <span class="mbold">Los!</span> klicken. Danach können Sie in der
Folgeseite einen Titel, einen Eintrag und den erweiterten Eintrag
festlegen, den Sie als Artikelvorlage speichern wollen. Diese Vorlage
können Sie beispielsweise benutzen, um immer einheitliche Blog-Artikel zu
erstellen. So können Sie für Blog-Artikel zu Filmberichten bereits ausfüllbare
HTML-Tags vorsehen, die die Links zu der Film-Homepage enthalten und eine
grobe Gliederung von Überschriften (<em>Der Inhalt</em>, <em>Die
Schauspieler</em>, <em>Mein Fazit</em>) vorbereiten. Auch wenn Sie spezielle
HTML-Konstrukte für Ihre Blog-Artikel vorsehen, könnten Sie diese als
Vorlage speichern, um denselben HTML-Code nicht manuell für jeden neuen
Eintrag erstellen zu müssen.</p>

<p>Um einen neuen Blog-Artikel auf Basis einer Vorlage zu erstellen, stellen
Sie unter <span class="mbold">Inhalt <span class="icon arrow-right">→</span> Template-Blocks</span> das
Auswahlfeld unter <span class="mbold">Select Template</span> auf die gewünschte Vorlage
und klicken dann <span class="mbold">Use Template</span>. Sie gelangen auf die bekannte Oberfläche zum Erstellen eines
Blog-Eintrages; die Felder <em>Titel, Eintrag</em> und <em>Erweiterter Eintrag</em>
sind korrekt vorausgefüllt.</p>

<p>Über die Template-Blocks-Oberfläche können Sie Vorlagen auch
bearbeiten oder löschen, indem Sie das Auswahlfeld auf die gewünschte
Vorlage setzen und den Button <span class="mbold">Los!</span> oder <span class="mbold">Löschen</span> anklicken.</p>

<p>
<span class="tag-box invisible">
    <span class="inline-tag">Blocks</span>
</span>
Ähnlich wie die Verwaltung der Vorlagen können Sie sogenannte
<em>Blocks</em> erstellen (und auch nachträglich bearbeiten und löschen).
Ein Block stellt dabei einen Datensatz dar, den Sie (wie auch Vorlagen)
mit <em>Titel, Eintrag</em> und <em>Erweitertem Eintrag</em> ausfüllen
können. Im Gegensatz zu einer Vorlage ist ein Block jedoch ein
eigenständiger Datensatz, der in einen Blog-Artikel eingebunden werden
kann.</p>

<p>Blöcke können Sie dazu verwenden, häufig wiederkehrende Elemente
nahtlos an einen Artikel anzubinden. Wiederkehrende Elemente sind
beispielsweise Werbeblöcke, Kontaktformulare, Disclaimer und andere
rechtliche Hinweise. Grundsätzlich ist hier alles denkbar, was Sie mehr
als einmal in einen Artikel einfügen wollen.</p>

<p>Die Einbindung solcher Blöcke erfolgt über die gewohnte Oberfläche zur
Erstellung eines neuen Blog-Artikels. Dort finden Sie im Bereich
<span class="mbold">Erweiterte Optionen</span> einen Abschnitt namens <span class="mbold">Attach a static
Block</span>. Darunter wird ein Auswahlfeld dargestellt, aus dem Sie einen
vorhandenen Block auswählen können.</p>

<p>Der Inhalt eines Blocks wird dabei im Frontend unterhalb des
Eintragstextes (mittels der Smarty-Variable
<code>$entry.display_dat</code>) eingebunden. Über die Template-Datei
<code>entries.tpl</code> können Sie die Positionierung dieser Smarty-Variable
jedoch auch frei beeinflussen. Für flexiblere Seitengestaltungen können Sie
zusätzlich den eingebundenen Block über die Variable
<span class="tag-box invisible">
    <span class="inline-tag">Template-Variablen!\$entry.entryblock</span>
</span>
<code class="smarty">{$entry.entryblock}</code>) umpositionieren.</p>

<p>
<span class="tag-box invisible">
    <span class="inline-tag">Template-Dateien!plugin_staticblock.tpl</span>
</span>
Bei der Bearbeitung eines Blocks können Sie zwei Sonderoptionen festlegen. Zum
einen bestimmt die Option <span class="mbold">Template (Smarty)</span>, welche Template-Datei zur
Darstellung eines Template-Blocks benutzt wird. Diese Datei legt fest, wie der
von Ihnen angelegte Template-Block innerhalb Ihres Blog-Artikels formatiert wird.
Die Standarddatei <code>plugin_staticblock.tpl</code>
ist recht einfach gehalten und gibt lediglich den Titel und Text mit
HTML-Div-Containern aus. Pro Block können Sie eine eigene Template-Datei
bestimmen, um so unterschiedliche Formatierungen für unterschiedliche Blöcke zu
erreichen. Damit können Sie rechtliche Hinweise grafisch anders darstellen als
beispielsweise Google-Ad-Werbungen.</p>

<p>Die zweite Sonderoption <span class="mbold">Textformatierung auf Block anwenden</span> gibt
an, ob der Text des jeweiligen Blocks durch andere
Textformatierungs-Plugins (beispielsweise Smiley-Konvertierung)
ausgewertet werden soll.</p>

<p>Wie eingangs erwähnt, ermöglicht das Plugin auch eine eigene
Textformatierung, mit der Sie in Blog-Artikeln beliebige Inhalte von
bestehenden anderen Artikeln einbinden können. Dies können Sie auslösen,
indem Sie in einem Artikel die Zeichenkette
<code>[s9y-include-entry:X:Y]</code> an gewünschter Stelle
einfügen. Ersetzen Sie dabei X durch die ID des bestehenden
Blog-Artikels und Y mit dem gewünschten Datenbankfeld, das Sie
auslesen wollen.</p>

<p>Als Beispiel hierfür folgender Blog-Artikel:</p>

<pre><code class="html">
    In meinem Blog-Artikel namens "[s9y-include-entry:1:title]" schrieb ich damals: [s9y-include-entry:1:body]
</code></pre>

<p>Der Vorteil einer derartigen Einbindung ist, dass Sie einen älteren
Blog-Artikel ändern können und sich dieser automatisch auch in dem
referenzierenden Artikel ändert. Das einzig Umständliche an dieser
Einbindungsart ist, dass Sie die ID eines Artikels von vornherein wissen
müssen (diese ist meist Bestandteil des Permalinks Ihres Eintrags).</p>

<p>Um auf die <em>Erweiterten Eigenschaften</em> eines Artikels zuzugreifen, können
Sie die Syntax <code>[s9y-include-entry:1:prop=ep_Video]</code> verwenden, um
beispielsweise ein angehängtes Video (siehe Podcast-Plugin, Seite
<span class="pageref"><a href="#podcast">podcast</a></span>) einzubinden. Sämtliche Feldnamen (wie <code>body</code>) entsprechen
hierbei den Datenbank-Spaltennamen der Tabelle <code>serendipity_entries</code> bzw.
<code>serendipity_entryproperties</code>.</p>

<p>Auch Template-Blocks können Sie in einem Blog-Artikel mit einer ähnlichen
Syntax einbinden. Dies funktioniert unabhängig von dem vorher
beschriebenen Anhängen eines Template-Blocks an einen Artikel:</p>

<pre><code class="html">
    And now over to something completely different: Werbung!<br>
    [s9y-include-block:1:body]
</code></pre>

<p>Dies würde den Text des ersten Template-Blocks in den Artikel einfügen.
Meist ist jedoch gewünscht, die vollständig geparste Template-Datei
(standardmäßig <code>plugin_staticblock.tpl</code>) des Template-Blocks
auszugeben. Dies erreichen Sie mittels:</p>

<pre><code class="html">
    [s9y-include-block:1:template]
</code></pre>

<p>Der besondere Feld-Bezeichner <code>template</code> löst also die Rückgabe des
geparsten Templates aus. Andernfalls stehen die Feldnamen <code>title,
body, extended, author, authorid, last_modified</code> und <code>timestamp</code> zur
Verfügung.</p>

<p>Abgesehen von diesen zahlreichen Einbindungsarten bietet das Plugin auch
noch eine Fülle von globalen Konfigurationsoptionen an:</p>

<p class="desc">
<span class="item mbold">Show random blocks, Kategorien</span><!-- menuitem -->
<span class="desc-info">
    <span class="box">
        Das Plugin ermöglicht es, zufällig einen beliebigen Block unterhalb eines
        Artikels einzufügen (unabhängig von möglicherweise manuell eingefügten
        Template-Blocks).
    </span>

    <span class="box">
        Solche zufälligen Blöcke können Sie verwenden, wenn Sie beispielsweise
        einen großen Pool an Werbebannern und Ähnlichem angelegt haben.
        Aktivieren Sie die Option <span class="mbold">Show random blocks</span>, wenn Sie diesen
        Zufallsblock verwenden wollen.
    </span>

    <span class="box">
        Die Auswahl der Kategorien bezieht sich bei aktivierter Option darauf,
        dass Zufallsblöcke nur dann gezeigt werden, wenn der Besucher sich gerade
        im Frontend in einer speziellen Kategorie aufhält.
    </span>

    <span class="box">
        Mithilfe dieser Einschränkung könnten Sie daher die Werbeblöcke nur in
        gewünschten Kategorien einblenden. Standardmäßig sind alle Kategorien
        aktiviert, daher werden Zufallsblöcke überall angezeigt. Der Eintrag
        <span class="mbold">[Keine Kategorie]</span> im Auswahlfeld entspricht dabei der
        Übersichtsseite. Wenn Sie keine Zufallsblöcke in der Übersichtsseite
        anzeigen wollen, heben Sie die Auswahl dieser Option einfach auf. Mehrere
        Kategorien können Sie in dem Mehrfach-Auswahlfeld mit gedrückter
        <em>(Strg/Apfel)</em>-Taste und einem Mausklick aktivieren.
    </span>
</span>
</p>

<p class="desc">
<span class="item mbold">First entry, Skip entries</span><!-- menuitem -->
<span class="desc-info">
    <span class="box">
        Wenn Sie die Option <span class="mbold">Show random blocks</span> aktiviert haben, können Sie
        mit der Option <span class="mbold">First entry</span> festlegen, nach dem wievielten Artikel
        die Anzeige eines Zufallblocks beginnen soll.
    </span>

    <span class="box">
        Wenn Sie hier die Zahl <code>2</code> eintragen, wird erst nach dem zweiten Artikel in
        der Übersicht eine Werbung angezeigt. Mit der Option <span class="mbold">Skip entries</span>
        legen Sie fest, nach jedem wievielten Artikel ein zufälliger Block
        eingebunden werden soll. Die Zahl <code>2</code> würde bewirken, dass nur nach
        jedem zweiten Eintrag ein Block eingebunden wird.
    </span>
</span>
</p>

<p class="desc">
<span class="item mbold">Allow multiple blocks</span><!-- menuitem -->
<span class="desc-info">
    <span class="box">
        Bei aktivierter Zufallsfunktion kann es durchaus vorkommen, dass ein
        zufälliger Block unter einem Artikel eingebunden wird, dem Sie
        bereits manuell einen Template-Block zugewiesen haben.
    </span>

    <span class="box">
        Wenn Sie die Option <span class="mbold">Allow multiple blocks</span> aktivieren, wird ein
        Zufallsblock jederzeit angehängt. Bei deaktivierter Option wird der
        Zufallsblock ignoriert und nicht dargestellt.
    </span>
</span>
</p>

<p class="desc">
<span class="item mbold">Eintrag, Erweiterter Eintrag, Kommentar, HTML-Klotz</span><!-- menuitem -->
<span class="desc-info">Über diese Felder legen Sie fest, in welchen Eingabemöglichkeiten das
Plugin die Syntax <code>[s9y-include-entry]</code> anbieten soll. Grundsätzlich
kann es ein Sicherheitsrisiko sein, wenn Sie die Syntax in Kommentaren
von Besuchern zulassen.</span>
</p>

<article id="XU" class="subsub">

<header>
    <h4 class="subarticle" id="datenbanktabelle-4">Datenbanktabelle</h4>
</header>

<p>
<span class="tag-box invisible">
    <span class="inline-tag">Datenbank-Tabellen!serendipity_staticblocks</span>
</span>
Das Plugin erstellt die Datenbanktabelle <code>serendipity_staticblocks</code>. Darin
werden die <span class="mbold">Template-Blöcke</span> gespeichert:</p>

<p class="desc sql-field-group">
    <code class="item sql-field">id</code> enthält eine fortlaufende ID, die jeden Template-Block identifiziert.
    <code class="item sql-field">title</code> enthält den Betreff eines Template-Blocks bzw. einer Artikelvorlage.
    <code class="item sql-field">type</code> gibt an, ob der Eintrag der Datenbank einen Template-Block (<code>block</code>) oder eine Artikelvorlage (<code>template</code>) darstellt.
    <code class="item sql-field">body</code> }enthält den Eintragstext.
    <code class="item sql-field">extended</code> enthält den erweiterten Eintrag.
    <code class="item sql-field">template</code> enthält den Namen der Template-Datei zur Darstellung des Blocks.
    <code class="item sql-field">apply_markup</code> legt fest, ob Textformatierungs-Plugins angewendet werden sollen.
    <code class="item sql-field">author</code> enthält den Namen des erstellenden Redakteurs.
    <code class="item sql-field">authorid</code> enthält die ID des erstellenden Redakteurs.
    <code class="item sql-field">last_modified</code> enthält das Datum der letzten Änderung an der Vorlage bzw. am Template-Block.
    <code class="item sql-field">timestamp</code> enthält das Erstellungsdatum der Vorlage bzw. des Template-Blocks.
</p>

</article>

</section><!-- section.sub end -->

<section id="serendipity_event_microformats" class="sub">
<span class="u-toc">6.5.5 - Microformats: serendipity_event_microformats</span>

<h3 class="subsection" id="microformatsserendipity_event_microformats">Microformats<br>serendipity_event_microformats</h3>

<p class="tagging invisible">
<span class="tag-box invisible">
    <span class="inline-tag">Plugins!Microformats</span>
    <span class="inline-tag">Plugins!serendipity_event_microformats</span>
</span>
</p>

<p class="tagging invisible">
<span class="tag-box invisible">
    <span class="inline-tag">Mikroformate</span>
    <span class="inline-tag">Community</span>
    <span class="inline-tag">Structured Blogging</span>
</span>
</p>

<p>Ähnlich wie das Community-Rating-Plugin ist <em>Microformats</em> eher
ein Spielzeug für fortgeschrittene Benutzer.
<em>Microformats</em> sind eine moderne Möglichkeit, um Metadaten zu
bestimmten Objekten in einer HTML-Seite einzubinden. Objekte können
Produkte, Termine, Events, Geburtstage, Filme und alles andere
darstellen. Die Metadaten zu diesen Objekten ergeben sich daraus - sie
können eine Produktmeinung, eine Bewertung, weiterführende Infos, kleine
Bilder und vieles mehr enthalten. Auf der Webseite
<code>http://microformats.org/</code> sind viele dieser Formate aufgeführt.</p>

<p>Das Serendipity-Plugin namens <em>Microformats</em> bindet zwei
Microformats an: <em>hCalendar</em> und <em>hReview</em>. Für beide Formate
gibt es Browser-Plugins, die die eingegebenen Metadaten auswerten und
speziell darstellen können.</p>

<p>
<span class="tag-box invisible">
    <span class="inline-tag">hCalendar</span>
</span>
<em>hCalendar</em> ermöglicht die Darstellung von Terminen und
bietet als Metadaten die Felder: Titel (<em>summary/title</em>), Ort
(<em>Location</em>), URL, den Anfangs- und Endzeitpunkt des Termins und
eine Beschreibung (<em>Description</em>).</p>

<p>
<span class="tag-box invisible">
    <span class="inline-tag">hReview</span>
</span>
<em>hReview</em> erlaubt die Bewertung beliebiger Produkte. Als
Metadaten dafür stehen zur Verfügung: Produktname, Produkttyp (Auswahlfeld für
<em>Produkt, Geschäft (Business), Event (Veranstaltung), Person, Ort,
Webseite, URL</em>), URL des bewerteten Gegenstandes, eine Bewertung in
Punkten, eine Zusammenfassung, eine vollständige Bewertung, der
Zeitpunkt der Bewertung und der Name des Bewerters.</p>

<p>Darüber hinaus kann man das Plugin mit weiteren Microformats später
relativ einfach aufrüsten. Der Vorteil von solchen Microformats liegt
darin, dass die Metadaten von Programmen (auch Suchmaschinen) gelesen
werden können und man so leicht eine universelle Produktdatenbank
erstellen kann. Je mehr Benutzer solche Metadaten angeben, desto
einfacher kann man in Zukunft zB. alle Meinungsberichte zum Apple iPhone
suchen und eine Durchschnittsbewertung bilden. Für Ihre Leser hat es den
Vorteil, dass sie mittels Browser-Plugins schnell Termine in ihre eigene
Termindatenbank aufnehmen könnten. Die Möglichkeiten der Microformats
stecken noch in den Kinderschuhen, und die Zukunft bringt hier womöglich
noch viel mehr Flexibilität. Eine Initiative, dieses Format bei Bloggern
populär zu machen, ist das <em>StructuredBlogging</em>-Projekt auf
<code>http://structuredblogging.org/</code>.</p>

<p>Alle Microformats können die Metadaten im Frontend beliebig formatiert
darstellen. Dies kann man mittels der Smarty-Template-Dateien
beeinflussen, die das Plugin in einem Standardformat mitliefert.</p>

<p>Das Microformats-Plugin bindet die Erfassung der Metadaten in die
Erstellungsmaske für einen Blog-Artikel im Bereich <em>Erweiterte
Optionen</em> ein. Dort können Sie zwei Auswahlboxen aktivieren, die einem
Artikel jeweils ein <em>hCalendar</em>- oder <em>hReview</em>-Objekt (oder
beides) zuordnen. Wenn Sie eine solche Box aktivieren, werden die
Eingabeboxen darunter eingeblendet.</p>

<p>Damit die Metadaten, die Sie eingetragen haben, später im Frontend
dargestellt werden können, müssen Sie eine Smarty-Funktion an der
gewünschten Stelle einfügen. Dies geschieht üblicherweise über die
Template-Datei <code>entries.tpl</code> in der Nähe von <code>$entry.body</code>. Dort
müssen Sie für jedes Microformat die Smarty-Funktion
<code class="smarty">{microformats_show}</code> aufrufen:
<span class="tag-box invisible">
    <span class="inline-tag">Template-Funktionen!\$microformats@microformats_show</span>
</span>
</p>

<pre><code class="smarty">
    &nbsp; {microformats_show data=$entry.properties type="hReview"}<br>
    &nbsp; {microformats_show data=$entry.properties type="hCalendar"}
</code></pre>

<p>
<span class="tag-box invisible">
    <span class="inline-tag">Template-Dateien!hCalendar.tpl</span>
    <span class="inline-tag">Template-Dateien!hReview.tpl</span>
</span>
Der Aufruf dieser Funktion sorgt dafür, dass das Array mit den Eintrags-Metadaten
(<code>$entry.properties</code>) an die Template-Datei des jeweiligen Microformats
(<code>hCalendar.tpl</code> oder <code>hReview.tpl</code>) weitergereicht wird. Die
jeweilige Template-Datei stellt dann die Metadaten in beliebiger Formatierung dar,
die jeweils verfügbaren Variablen können Sie am einfachsten dieser Datei
entnehmen.</p>

<p>Analog zum Community-Rating-Plugin lassen sich die Microformats in
RSS-Feed-Template-Dateien einbinden, indem Sie dem
Smarty-Funktionsaufruf den Parameter <code>escaped=true</code> hinzufügen (siehe
Seite <span class="pageref"><a href="#communityrating-escaped">communityrating-escaped</a></span>).</p>

<p>In den Konfigurationsoptionen des Microformat-Plugins können Sie
Folgendes festlegen:</p>

<p class="desc">
<span class="item mbold">Subnode hinzufügen</span><!-- menuitem -->
<span class="desc-info">Nur wenn Sie diese Option aktivieren, bindet das Microformats-Plugin die
XML-Metadaten ein, die Browser-Plugins benötigen, um Ihre
eingegebenen Metadaten anzuzeigen. Die Einbindung erfolgt <em>inline</em>,
was bedeutet, das XML wird direkt innerhalb der HTML-Seite eingebunden.
Je nach Struktur Ihrer Webseite kann das jedoch dazu führen, dass die
Webseite nicht mehr XHTML-konform ist.
Die Struktur der XML-Metadaten wird ebenfalls über die Template-Dateien
<code>hCalendar.tpl</code> bzw. <code>hReview.tpl</code> bestimmt. Wenn sich diese
Microformats also in Zukunft kompatibler einbinden lassen, kann man die
Art der Einbindung so überarbeiten.</span>
</p>

<p class="desc">
<span class="item mbold">Zeitzone</span><!-- menuitem -->
<span class="desc-info">Für <em>hCalendar</em>-Einträge ist die Zeitzone, auf die sie sich beziehen,
sehr wichtig, damit internationale Benutzer einen Termin in ihre Zeitzone
umrechnen können. Stellen Sie daher im Auswahlfeld <span class="mbold">Zeitzone</span> die
korrekte Zone ein, in der Sie leben. Für Deutschland ist dies <span class="mbold">+1
(CET)</span>.</span>
</p>

<p class="desc">
<span class="item mbold">Maximale Punktzahl</span><!-- menuitem -->
<span class="desc-info"><em>hReview</em>-Einträgen können Sie bewerten. Die
maximal von Ihnen vergebene Punktzahl müssen Sie hier eintragen. Beachten
Sie dabei, dass die Punktzahl mit Dezimalstellen angegeben werden sollte
(damit auch 2.5 Punkte möglich sind).</span>
</p>

<p class="desc">
<span class="item mbold">Punktabstände</span><!-- menuitem -->
<span class="desc-info">Die Abstände Ihrer Bewertungen müssen Sie hier eintragen. Wenn Sie also
nur ganze Punkte vergeben, tragen Sie 1.0 ein, andernfalls können auch
Werte wie 0.5 für Halb-Punktsprünge eingetragen werden.</span>
</p>

<p>&nbsp;</p><!-- separator -->

<p>Zusammen mit dem Microformat-Plugin wird auch ein Seitenleisten-Plugin
namens <em>Kommende Termine</em> mitgeliefert. Mit diesem können Sie von
Ihnen eingetragene <em>hCalendar</em>-Termine in der Seitenleiste
darstellen und auch manuell zusätzliche Termine (zB. von
<code>http://upcoming.org</code>) eintragen.
<span class="tag-box invisible">
    <span class="inline-tag">upcoming.org</span>
</span>
</p>

<p>Wenn Sie eigene Microformats einbinden wollen, müssen Sie dazu folgende
Veränderungen vornehmen:</p>

<ul class="realList">

    <li>Eigene <code>hMicroformat.tpl</code> erstellen.</li>

    <li>Die Plugin-Datei <code>microformatsBackend.inc.php</code> anpassen und
        dort einen Eingabe-Abschnitt für das neue Microformat einbinden.</li>

    <li>In der Plugin-Datei <code>serendipity_event_microformats.php</code>
        an einigen Stellen die Besonderheiten des Formats festlegen.
        Folgende Methoden müssen dazu angepasst werden:
        <code>getSupportedProperties()</code> (<code>$supported_properties</code>),
        <code>addProperties()</code> (<code>$supported_formats</code>), <code>case
        'backend_preview'</code> (<code>$supported_formats</code>), <code>case
        'backend_display'</code> (<code>$mf_exist, $itemtypes</code>).</li>

    <li>In der Smarty-Funktionsdatei des Plugins (<code>smarty.inc.php</code>)
        muss bei <code>microformats_serendipity_show()</code> für das neue Format die Variable
        <code>$params['mf_type']</code> abgefragt werden.</li>

</ul>

</section><!-- section.sub end -->

<section id="serendipity_event_smartymarkup" class="sub">
<span class="u-toc">6.5.6 - Textformatierung: Smarty Markup: serendipity_event_smartymarkup</span>

<h3 class="subsection" id="textformatierung-smarty-markupserendipity_event_smartymarkup">Textformatierung: Smarty Markup<br>serendipity_event_smartymarkup</h3>

<p class="tagging invisible">
<span class="tag-box invisible">
    <span class="inline-tag">Plugins!Textformatierung: Smarty Markup</span>
    <span class="inline-tag">Plugins!serendipity_event_smartymarkup</span>
</span>
<span class="label invisible" id="smartymarkup">smartymarkup</span>
<span class="tag-box invisible">
    <span class="inline-tag">PHPCode@PHP-Code!in Artikeln</span>
    <span class="inline-tag">Smarty-Code!in Artikeln</span>
</span>
</p>

<p>Serendipity erlaubt aus Sicherheitsgründen nur HTML und Klartext in
Beiträgen und Seitenleisten-HTML-Klötzen.
Bei freier Verwendung von PHP-Code könnten Redakteure beliebigen Code
einschleusen, der sogar dazu führen könnte, dass die vollständige
Serendipity-Datenbank gelöscht wird.</p>

<p>Dennoch reizt die Flexibilität, die man mit eigenem
Programmiercode in einem Blog-Artikel erreichen könnte. Dank JavaScript
und HTML kann man zwar bereits einiges umsetzen, aber nun mal nicht das,
was man mittels PHP programmieren könnte: Einbindung von Umfragen in
einen Artikel, Einlesen von Dateien auf dem Server, uhrzeitabhängige
Einbindung unterschiedlicher Inhalte - grundsätzlich alles, soweit Ihre
Vorstellungskraft reicht.</p>

<p>
<span class="tag-box invisible">
    <span class="inline-tag">PHPCode@PHP-Code!in Artikeln</span>
</span>
Das Plugin <em>Textformatierung: Smarty Markup</em>
kann diesem Problem etwas Abhilfe schaffen. Es erlaubt zwar nicht, rohen PHP-Scriptcode in
Ihre Einträge einzufügen, aber dafür können Sie damit Smarty-Funktionen benutzen.</p>

<p>Sobald Sie das Plugin installiert haben, können Sie beliebige
Smarty-Syntax in Ihren Einträgen verwenden (siehe Smarty-Dokumentation ab
Seite <span class="pageref"><a href="#Smarty-Templates">Smarty-Templates</a></span>). Die Templates-Variablen des eigenen Artikels
können über das Array
<span class="tag-box invisible">
    <span class="inline-tag">Template-Variablen!\$smartymarkup_eventData</span>
</span>
<code class="smarty">{$smartymarkup_eventData</code> (zB.
<code class="smarty">{$smartymarkup_eventData.id}</code>) aufgerufen werden.</p>

<p>Mittels der Smarty-Syntax können Sie auch Ihren eigenen PHP-Code als
Smarty-Funktion schreiben und diesen dann in Artikeln aufrufen. Diese
zusätzliche Hürde erfordert, dass Sie als Administrator via FTP Dateien
auf dem Server anpassen können (konkret sind die eigenen
Smarty-Funktionen in der Datei <code>config.inc.php</code> Ihres Templates
einzufügen). Sobald ein Administrator PHP-Dateien anpassen kann, kann man
auch davon ausgehen, dass er verantwortungsvoll mit eigenem PHP-Code
umgehen kann.</p>

<p>Mit der Smarty-Syntax können Sie zusätzlich alle von Serendipity
bereitgestellten Smarty-Funktionen ansprechen.</p>

<p>Ein großer Vorteil des Smarty-Markups ist, dass Sie diesen auch gezielt
für statische Seiten (siehe Seite <span class="pageref"><a href="#staticpage">staticpage</a></span>)
freischalten können. Denn gerade in statischen Seiten könnten
Zusatzfunktionen, die nur mittels PHP umzusetzen sind, sehr hilfreich
sein.</p>

<p>In vielen Fällen reicht die Benutzung von Smarty-Funktionen bereits aus,
so dass Sie kein eigenes Serendipity-Plugin entwickeln müssen. Nutzen Sie
diese Flexibilität gezielt, um beispielsweise in HTML-Klötzen der
Seitenleiste eigene PHP-Funktionen aufzurufen oder Ihr eigenes
PHP-Framework in Serendipity zu integrieren.</p>

<p>In den Konfigurationsoptionen des Plugins können Sie gezielt einstellen,
für welche Eingabemöglichkeiten (Eintrag, erweiterter Eintrag,
Kommentare, HTML-Klotz, statische Seiten) die Smarty-Syntax zugelassen
wird. Nur in besonderen Fällen sollten Sie Smarty-Funktionen auch für
Benutzerkommentare freischalten - auch die Smarty-Syntax birgt
Sicherheitsrisiken, die böswillige Besucher über Kommentare ausnutzen
könnten.</p>

</section><!-- section.sub end -->

</section><!-- section.index end -->
