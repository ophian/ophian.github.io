
<h2 id="chapter-III">Kapitel 3: Frontend / Übersicht</h2>

<p>Nach der Installation können Sie unter
<code>http://www.example.com/serendipity/</code> das Frontend aufrufen.
Hier spielt sich alles ab, was jeder Besucher sehen kann:
Man kann Einträge lesen und kommentieren, in älteren
Archiven stöbern, eine Suche durchführen und auch etliche
Plugin-Funktionalitäten (Umfrage, Flickr-Fotos ...) ansehen.</p>

<p>Im Folgenden gehen wir von dem standardmäßig genutzten Theme (siehe
Seite <span class="pageref"><a href="#theme">theme</a></span>) <em>2k11</em> aus. Die
meisten anderen Themes richten sich in der Darstellung der Seitenelemente nach
demselben Schema, können aber in Details davon abweichen. Wie man die
Darstellung anpassen kann, werden Sie in späteren Kapiteln ab Seite
<span class="pageref"><a href="#Anpassungen">Anpassungen</a></span> lernen.</p>

<p>&nbsp;</p>

<section id="S310" class="index">
<span class="s-toc">3.1 - Übersicht</span>

<h3 class="section" id="uebersicht">Übersicht</h3>

<p class="tagging invisible">
<span class="tag-box invisible">
    <span class="inline-tag">Frontend!Startseite</span>
</span>
</p>

<p>Die Startseite eines Serendipity-Blogs zeigt üblicherweise die
chronologisch letzten 15 Artikel in allen Kategorien untereinander an,
wobei der erste Artikel der aktuellste ist. Je nach Template ist dieser
Inhaltsbereich von ein bis zwei sogenannten Seitenleisten umgeben. In den
Seitenleisten können sich Seitenleisten-Plugins ansiedeln, die beliebige
Inhalte darstellen können. Ebenfalls abhängig vom Template sehen Sie
meist eine zentrale Seitenüberschrift (Kopf- oder auch Banner-Bereich
genannt) und eine weitere Überschrift vor der Artikelübersicht.</p>

<figure id="fig-startpage_empty">
    <img src="img/startpage_empty.png">
    <figcaption>Abbildung 3.1: Frontend nach der Installation</figcaption>
</figure>

<p>Die Standard-Installation von Serendipity richtet eine rechte
Seitenleiste ein, in der folgende Elemente dargestellt werden:</p>

<p class="tagging invisible">
<span class="tag-box invisible">
    <span class="inline-tag">Frontend!vorinstallierte Seitenleisten-Plugins</span>
</span>
</p>

<p>
<span class="item mbold">Kalender</span><!-- menuitem -->
<span class="desc-info">Frühere Serendipity Versionen installierten
hier zuallererst den Kalender. Inzwischen ist die Meinung gewachsen auf
diese Art der Navigation und Darstellung per default verzichten zu können.
Der Kalender stellt den aktuellen Monat in einer graphischen Übersicht dar.
Der aktuelle Tag wird hervorgehoben, und jeder Tag, an dem ein Artikel
verfasst wurde, ist ebenfalls hervorgehoben. Bei einem Klick auf einen Tag
oder auf die Navigationspfeile in der Kopfzeile des Kalenders kann man
sich die Artikel anzeigen lassen, die im gewählten Zeitraum verfasst
wurden.</span>
</p>

<p class="desc">
<span class="item mbold">Suche</span><!-- menuitem -->
<span class="desc-info">
    <span class="box">
        In die Eingabebox der Schnellsuche kann man einen Suchbegriff eingeben und den
        Suchvorgang mittels <em>(Enter)</em>-Taste ausführen. Die Suche umfasst dabei
        sowohl Artikelüberschrift als auch den Artikelinhalt und zeigt in der
        Ergebnisseite die gefundenen Artikel genauso an wie in einer normalen
        Artikelübersicht eines Zeitraumes.
    </span>

    <span class="box">
        Details zur Suche sind am Ende des Kapitels (Seite <span class="pageref"><a href="#Suche">Suche</a></span>)
        erwähnt.
    </span>
</span>
</p>

<p class="desc">
<span class="item mbold">Archive</span><!-- menuitem -->
<span class="desc-info">
    <span class="box">
        Die Links dieses Plugins zeigen unterschiedliche chronologische
        Abschnitte der Blogeinträge an. Standardmäßig werden die letzten drei Monate
        mit Link angezeigt, und ein Klick darauf ruft die übliche Artikelansicht
        auf, bei der jedoch nur der gewünschte Zeitraum berücksichtigt wird.
    </span>

    <span class="box">
        Der Link <span class="mbold">Das neueste</span> führt zur üblichen Startseite und der Link
        <span class="mbold">Älteres</span> zu einer besonderen Übersichtsseite (siehe Abschnitt
        <em>Archive</em> auf Seite <span class="pageref"><a href="#Permalinks-Frontend">Permalinks-Frontend</a></span>).
    </span>
</span>
</p>

<p class="desc">
<span class="item mbold">Kategorien</span><!-- menuitem -->
<span class="desc-info">
    <span class="box">
        In dem Seitenleisten-Block <em>Kategorien</em> wird eine Liste aller
        eingerichteten Kategorien des Blogs dargestellt. Ein Klick auf eine
        Kategorie wird daraufhin ausschließlich Artikel anzeigen, die dieser
        Kategorie zugeordnet sind. Neben jedem Kategorienamen befindet sich zudem
        ein kleines Symbol, das auf den RSS-Feed dieser Kategorie zeigt.
    </span>

    <span class="box">
        Außerdem besteht für den Besucher die Möglichkeit, mehrere Kategorien
        zur Ansicht zu kombinieren. So könnte man sich alle Beiträge mehrerer
        Kategorien anzeigen lassen, indem man die Auswahlboxen neben mehreren
        Kategorien ankreuzt und danach auf den Button <span class="mbold">Los!</span> darunter klickt.
    </span>

    <span class="box">
        <span class="mbold">Alle Kategorien</span> führt zurück auf die Übersichtsseite des
        Blogs, in der wieder alle Beiträge aller Kategorien gezeigt werden.
    </span>
</span>
</p>

<p class="desc">
<span class="item mbold">Blog abonnieren</span><!-- menuitem -->
<span class="desc-info">Alle Feed-Formate (siehe Terminologie, Seite <span class="pageref"><a href="#RSS">RSS</a></span>), die das Blog
anbietet, werden in dieser Box dargestellt. Die
unterstützten Formate sind <em>RSS 0.91, RSS 2.0, Atom 0.3</em> und <em>Atom
1.0</em>. Zusätzlich gibt es noch einen speziellen RSS 2.0-Feed, der alle
Kommentare zu den Beiträgen enthält. Mit diesem Feed können Besucher des Blogs
auch auf dem Laufenden über neue Kommentare bleiben.</span>
</p>

<p class="desc">
<span class="item mbold">Verwaltung des Blogs</span><!-- menuitem -->
<span class="desc-info">Damit ein Redakteur sich leicht in das Backend des Blogs einloggen kann, wird
ein Link dorthin angeboten. Je nachdem, ob der Benutzer bereits eingeloggt ist,
steht hier entweder <span class="mbold">Zum Login</span> oder <span class="mbold">Administrationsbereich</span>.</span>
</p>

<p class="desc">
<span class="item mbold">Powered by</span><!-- menuitem -->
<span class="tag-box invisible">
    <span class="inline-tag">Werbung!für Serendipity</span>
</span>
<span class="desc-info">Zuletzt befindet sich in diesem Block eine kleine Werbung für Serendipity.
Besucher Ihres Blogs finden die Technik dahinter womöglich faszinierend,
so dass sie dieser Hinweis über das eingesetzte System interessiert.
Da ein Open-Source-System von seinen Benutzern und seiner Verbreitung lebt,
freuen sich die Entwickler immer sehr, wenn dieser Hinweis nicht entfernt wird.</span>
</p>

</section><!-- section.index end -->

<section id="S320" class="index">
<span class="s-toc">3.2 - Beiträge</span>

<h3 class="section" id="beitraege">Beiträge</h3>

<p class="tagging invisible">
<span class="tag-box invisible">
    <span class="inline-tag">Frontend!Beiträge</span>
</span>
</p>

<p>Da nach der Installation noch keine Einträge verfasst wurden, wird im
Inhaltsbereich nur die Meldung "Keine Einträge vorhanden" angezeigt.</p>

<p>
<span class="tag-box invisible">
    <span class="inline-tag">Fußbereich</span>
    <span class="inline-tag">Frontend!Fußbereich</span>
</span>
Unterhalb des Inhaltsbereichs befindet sich der Fußbereich, in dem man
je nach dargestellter Seite vor- und zurückblättern kann. Viele
Archivansichten können so chronologisch von vorne nach hinten
durchblättert werden.</p>

<p>Sobald sich in dem Blog ein Artikel befindet, wird dessen Titel und der
einfache Eintragstext angezeigt. Zusätzlich werden Meta-Angaben über
einen Artikel eingeblendet: die Erstellungszeit, die Kategorie, in der
sich ein Artikel befindet, der Name des Autors und die Anzahl der
Kommentare zu diesem Artikel.</p>

<figure id="fig-startpage">
    <img src="img/startpage.png">
    <figcaption>Abbildung 3.2: Frontend mit einem eingetragenen Artikel</figcaption>
</figure>

<p>
<span class="tag-box invisible">
    <span class="inline-tag">Detailseite</span>
    <span class="inline-tag">Erweiterter Eintrag</span>
</span>
Jeder Beitrag kann zudem einen sogenannten <em>Erweiterten Eintrag</em>
aufweisen. Dieser Zusatztext wird in der Übersichtsseite nicht angezeigt,
sondern erst bei der Detailansicht eines Artikels. Sobald ein Artikel
solchen Zusatztext enthält, führt der Link <span class="mbold">"Artikeltitel"
vollständig lesen</span> oder ein Klick auf den Titel des Beitrags zu dieser
Detailseite.</p>

<p>Auf dieser Detailseite befinden sich außerdem alle Kommentare und
Trackbacks zu einem Artikel. Auch in der Seitenüberschrift verändert sich
der Kopfbereich und stellt durch die Aufnahme des Artikeltitels dar, dass
man sich auf einer einzelnen Artikelseite befindet.</p>

<p>Sollte man sich bereits in das Backend eingeloggt haben, erscheint bei
den Meta-Angaben zu einem Artikel auch ein Link <span class="mbold">Eintrag bearbeiten</span>,
mittels dessen man den entsprechenden Artikel direkt bearbeiten kann.</p>

<p>&nbsp;</p>

</section><!-- section.index end -->

<section id="S330" class="index">
<span class="s-toc">3.3 - Archive</span>
<span class="label invisible" id="Permalinks-Frontend">Permalinks-Frontend</span>

<h3 class="section" id="archive">Archive</h3>

<p class="tagging invisible">
<span class="tag-box invisible">
    <span class="inline-tag">Frontend!Archive</span>
    <span class="inline-tag">Permalinks!Archive</span>
</span>
</p>

<p>Wie bereits erwähnt, verfügt Serendipity über einige besondere
chronologische Artikelübersichten, abhängig von der gewählten Kategorie,
dem Zeitraum (nach Jahr, Monat, Woche oder Tag), einem Autor und einer
Seitenzahl.</p>

<p>Diese Seiten sind alle vom Inhalt her gleich aufgebaut, da alle Ansichten
die Artikel gleichartig auflisten. Lediglich die dargestellten Inhalte
sind nach dem gewünschten Kriterium gefiltert, und der Kopfbereich sowie
der Fußbereich geben die Art der Übersichtsseite an.</p>

<p>Alle Seiten haben zudem einen Stamm-Permalink (siehe Kapitel <span class="reference">Terminologie</span>
auf Seite <span class="pageref"><a href="#terminologie-permalinks">terminologie-permalinks</a></span>) gemeinsam:
<code>http://www.example.com/serendipity/archives/XXX</code>. Alle
Archivseiten sind so einem virtuellen Verzeichnis zugeordnet, die
Darstellung richtet sich nach dem dahinterstehenden <code>XXX</code>.
Unterschiedliche Pfadkomponenten legen dabei fest, was genau
angezeigt wird:</p>

<p class="desc">
<code class="item">/archives/2007.html</code>
<span class="desc-info">stellt alle Artikel des Jahres 2007 dar.</span>
</p>

<p class="desc">
<code class="item">/archives/2007/12.html</code>
<span class="desc-info">stellt alle Artikel aus Dezember 2007 dar.</span>
</p>

<p class="desc">
<code class="item">/archives/2007/12/01.html</code>
<span class="desc-info">stellt alle Artikel vom ersten Dezember 2007 dar.</span>
</p>

<p class="desc">
<code class="item">/archives/1-Beispiel.html</code>
<span class="desc-info">stellt eine einzelne Artikelseite dar.</span>
</p>

<p class="desc">
<code class="item">/archives/C1.html</code>
<span class="desc-info">stellt alle Artikel der Kategorie mit der Nummer 1 dar.
Die Pfadkomponente <code>C</code> (für <em>Category</em>) wird dabei gefolgt von einer Zahl.</span>
</p>

<p class="desc">
<code class="item">/archives/P2.html</code>
<span class="desc-info">stellt die zweite Seite einer Übersicht dar.
Die Pfadkomponente <code>P</code> (für <em>Page</em>) wird gefolgt von einer Seitennummer.</span>
</p>

<p class="desc">
<code class="item">/archives/A1.html</code>
<span class="desc-info">stellt alle Artikel des Autors mit der Nummer 1 dar.
Die Pfadkomponente <code>A</code> (für <em>Author</em>) wird gefolgt von einer Zahl, die den Autor angibt.</span>
</p>

<p class="desc">
<code class="item">/archives/W52.html</code>
<span class="desc-info">stellt alle Artikel der Kalenderwoche 52 dar.
Die Pfadkomponente <code>W</code> (für <em>Week</em>) wird gefolgt von der Wochennummer.</span>
</p>

<p class="desc">
<code class="item">/archives/summary.html</code>
<span class="desc-info">legt fest, dass die Artikelübersicht ausschließlich
Datum und Artikeltitel (also ohne jeglichen Inhalt) darstellt. Diese Ansicht - wie
fast alle weiteren summary Seiten - hat eine festeingestellte, optionslose und spezifische Limitierung
von 25 Artikeln pro Seite (bzw. 24, wenn die normale fetchLimit Selektion schon auf
diese Zahl eingestellt ist), kann aber über eine manuell gesetzte
<code class="nobreak">$serendipity['summaryFetchLimit']</code> Variable zB. in der
serendipity_config_local.inc von Hand überschrieben werden.</span>
</p>

<p>Wichtig ist dabei, dass die Pfadkomponenten (bis auf die für eine
einzelne Artikelseite) hierbei beliebig miteinander kombinierbar sind.
Dabei ist nur zu beachten, dass die Angabe des Datums (Jahr, Monat, Tag)
immer direkt am Anfang des Permalinks stehen muss. Hier einige
Beispiele für die Kombinationsmöglichkeiten:</p>

<p class="desc">
<code class="item">/archives/2007/C1/A2.html</code>
<span class="desc-info">stellt alle Artikel des Jahres 2007 dar, die in Kategorie 1 vom Autor 2 geschrieben wurden.</span>
</p>

<p class="desc">
<code class="item">/archives/2007/12/summary.html</code>
<span class="desc-info">stellt die Seite der Artikelübersicht (nur Datum und Titel) aller Artikel im Dezember 2007 dar.</span>
</p>

<p class="desc">
<code class="item">/archives/2007/12/P2.html</code>
<span class="desc-info">stellt die zweite Seite der offenen Artikelübersicht aller Artikel im Dezember 2007 dar.</span>
</p>

<p class="desc">
<code class="item">/archives/W52/A1.html</code>
<span class="desc-info">stellt alle Artikel des ersten Autors der 52. Kalenderwoche des aktuellen Jahres dar.</span>
</p>

<p class="desc">
<code class="item">/archives/2018/W52.html</code>
<span class="desc-info">stellt alle Artikel der 52. Kalenderwoche im Jahr 2018 dar.</span>
</p>

<p>Die URL muss immer auf <code>.html</code> enden, die letzte
Pfadkomponente darf somit keinen abschließenden <em>/</em> enthalten.</p>

<p>Da für die Ansicht der Artikel nach Autoren oder nach Kategorie
eigenständige Permalinks wünschenswert sind, bietet Serendipity dieselben
Artikelübersichten auch bei Aufruf folgender URLs (ohne <code class="item">.html</code>) an:</p>

<p class="tagging invisible">
<span class="tag-box invisible">
    <span class="inline-tag">Permalinks!Autoren</span>
</span>
</p>

<p class="desc">
<code class="item">/authors/1-AutorName</code>
<span class="desc-info">stellt die
Artikelübersicht nach Autor dar, wobei in diesem Fall der Name des
Autors zu Suchmaschinenzwecken in
der URL stehen kann. Mehrere Autoren können hierbei mittels <code>;</code> nach
der Nummer des Autors kombiniert werden:
<code>authors/1;2;3-AutorName</code>. Der Parameter <em>P</em> für die
gewünschte Seite kann angehängt werden.</span>
</p>

<p class="desc">
<span class="label invisible" id="Permalinks-Kategorien">Permalinks-Kategorien</span>
<span class="tag-box invisible">
    <span class="inline-tag">Permalinks!Kategorien</span>
</span>
<code class="item">/categories/1-KategorieName</code>
<span class="desc-info">stellt die
Artikelübersicht nach Kategorie dar, wobei in diesem Fall der Name der
Kategorie zu Suchmaschinenzwecken in der URL stehen kann. Mehrere
Kategorien können hierbei mittels <code>;</code> nach der Nummer der
Kategorie kombiniert werden:
<code>categories/1;2;3-KategorieName</code>. Die Parameter
<em>P</em> für die gewünschte Seite sowie <em>A</em> für die
Einschränkung nach Autoren können zusätzlich angehängt werden.</span>
</p>

<p>Über <code>http://www.example.com/serendipity/archive/</code> gelangt
man zu einer Übersichtsseite mit einer speziellen chronologischen Übersicht.</p>

<figure id="fig-startpage_archiv">
    <img src="img/startpage_archiv.png">
    <figcaption>Abbildung 3.3: Archiv-Übersicht</figcaption>
</figure>

<p>Dort werden für alle Jahre, in denen Artikel verfasst wurden, die Monate
dargestellt. Die Links im default 2k11 Theme <span class="mbold">Monat</span> (ganz anzeigen) und <span class="mbold">Anzahl der Einträge</span> (Überschriften anzeigen) führen hierbei
wieder zu den eingangs erwähnten Archiv-Übersichtsseiten. Das frühere default Theme bulletproof, visualisiert hier für die Menge der
Artikel, die in dem jeweiligen Zeitraum verfasst wurden eine Balkengrafik.</p>

<p>Auch die URL für die spezielle chronologische Übersicht kann mit
speziellen Pfadkomponenten eingeschränkt werden - eine Einschränkung
nach Zeitraum erfolgt dabei jedoch nicht, da die Übersicht immer den
ganzen Zeitraum berücksichtigt. (Das <code class="item">.html</code> ist hier optional.)</p>

<p class="desc">
<code class="item">/archive/C1.html</code>
<span class="desc-info">stellt die Übersicht aller Artikel der Kategorie mit der Nummer 1 dar. 
Die Pfadkomponente <code>C</code> (für <em>Category</em>) wird dabei gefolgt von einer Zahl.</span>
</p>

<p class="desc">
<code class="item">/archive/A1.html</code>
<span class="desc-info">stellt die Übersicht aller Artikel des Autors mit der Nummer 1 dar. 
Die Pfadkomponente <code>A</code> (für <em>Author</em>) wird gefolgt von einer Zahl, die den Autor angibt.</span>
</p>

<p>&nbsp;</p>

</section><!-- section.index end -->

<section id="S340" class="index">
<span class="s-toc">3.4 - Kommentare und Trackbacks</span>

<h3 class="section" id="kommentare-und-trackbacks">Kommentare und Trackbacks</h3>

<p class="tagging invisible">
<span class="tag-box invisible">
    <span class="inline-tag">Frontend!Kommentare</span>
    <span class="inline-tag">Frontend!Trackbacks</span>
    <span class="inline-tag">Kommentare</span>
    <span class="inline-tag">Trackbacks</span>
</span>
</p>

<p>Artikel des Blogs können von Besuchern kommentiert oder referenziert
werden. Diese Kommentare werden von Serendipity auf unterschiedliche
Weise im Frontend eingebunden und können in weiteren Übersichtsseiten
speziell gefiltert werden.</p>

<section id="U341" class="sub">
<span class="u-toc">3.4.1 - Kommentare zu einzelnen Artikeln</span>

<h3 class="subsection" id="kommentare-zu-einzelnen-artikeln">Kommentare zu einzelnen Artikeln</h3>

<p>Die Ansicht der Kommentare (und Trackbacks) zu einem Beitrag erreicht man
entweder durch einen Klick auf die Detailseite eines Beitrags oder
indem man auf den Link <span class="mbold">Kommentare (x)</span> klickt. Je nach Einstellung
des Blogs (siehe Seite <span class="pageref"><a href="#config-popups">config-popups</a></span>) öffnet sich dann ebenfalls die
Detailseite des Beitrags oder ein Popup-Fenster mit den Kommentaren.</p>

<p>Trackbacks zu einem Artikel werden unterhalb eines Beitrags vor den
Kommentaren chronologisch geordnet angezeigt. Ein Trackback ist ein
Artikel eines fremden Blogs, der sich auf Ihren geschriebenen Beitrag
bezieht. Dabei führt der Link des Trackbacks zu diesem fremden Beitrag,
und zur Orientierung werden die ersten Absätze des fremden Beitrags mit
angezeigt. Damit ein fremdes Blog sich auf Ihren Artikel beziehen konnte,
war der Link <span class="mbold">Trackback für spezifische URI dieses Eintrags</span>
vorgesehen. Ein Klick darauf, oder das Überfahren mit der Maus verriet,
dass dieser Link nicht für die Ansicht im Browser gedacht war, sondern für
fremde Blogsysteme übernommen werden sollte. Besucher mussten diesen Link verwenden,
um ein Trackback zu Ihnen zu senden. Heutzutage ist dies aber viel einfacher gelöst,
denn sollte ihr Theme bereits über einen "link rel" tag im Seitenkopf verfügen
<code>&lt;link rel="trackback" type="application/x-www-form-urlencoded"
href="https://ihrBlog.de/styx/comment.php?type=trackback&entry_id=28"&gt;</code>
(als beispielhaften Eintrag), was heutzutage die Regel ist, ist die genannte URL
für alte Systeme obsolet, denn ihr System "lauscht" bereits automatisch
auf eventuell gesetzte Trackbacks, wenn jemand die eigentliche URL ihres
Artikels <code>https://ihrBlog.de/styx/archives/28-titel.html</code> im
eigenen Blog verlinkt.</p>

<p>Nach den Trackbacks folgt die Auflistung der Kommentare. Standardmäßig
werden diese <em>thread-basiert</em> aufgelistet. Dabei startet die
Auflistung mit dem chronologisch ersten Kommentar, und mögliche andere
Kommentare, die sich auf diesen beziehen, werden eingerückt darunter
dargestellt. Daher nennt sich diese Ansicht <em>Verschachtelt</em>. Falls
Sie eine chronologisch sortierte Ansicht bevorzugen, kann man diese über
den Link <span class="mbold">Linear</span> aufrufen.</p>

<p>
<span class="tag-box invisible">
    <span class="inline-tag">Kommentare!sperren</span>
    <span class="inline-tag">Trackbacks!sperren</span>
</span>
Als Redakteur des Blogs sehen Sie zudem noch den Link <span class="mbold">Kommentare
für diesen Eintrag nicht mehr zulassen</span>, mit dem Sie die
Kommentarfunktionalität eines Beitrags (auch übergangsweise) sperren
können. An derselben Stelle erscheint danach auch wieder ein Link zum
Entsperren.</p>

<figure id="fig-articlepage">
    <img src="img/articlepage.png">
    <figcaption>Abbildung 3.4: Artikel-Ansicht mit Kommentardarstellung</figcaption>
</figure>

<p>Zu jedem Kommentar wird der Name des Kommentatoren dargestellt, sowie
(falls von ihm angegeben) seine E-Mail-Adresse und Homepage.</p>

<p>Nach der Auflistung der vorhandenen Kommentare kann ein eigener, neuer
Kommentar eingefügt werden. In das Eingabeformular trägt man dazu seine
Daten (Name, E-Mail, Homepage, Bezug) sowie den gewünschten Kommentartext
ein. Unterhalb der Eingabebox befindet sich ein Hinweis, welche
Textformatierungsmöglichkeiten es gibt, um gewisse Dinge hervorzuheben.</p>

<p>Die Auswahlbox <span class="mbold">Daten merken?</span> kann genutzt werden, damit der
eingetragene Name in Zukunft vom Browser vorausgefüllt wird. Die Box
<span class="mbold">Bei Aktualisierung dieser Kommentare benachrichtigen</span> bestimmt, ob
man bei einem neuen Kommentar zu dem Beitrag per E-Mail informiert
werden soll.</p>

<p>Um einen Kommentar vor Übermittlung zu überprüfen, kann man den Button
<span class="mbold">Vorschau</span> benutzen. Die Folgeseite zeigt den eigenen Kommentar dann
so innerhalb der Webseite, wie er danach für alle Besucher erscheinen
sollte. Gerade wenn Sie Sonderzeichen oder HTML-Code in Ihrem
Kommentartext benutzen, dient die Vorschau der Kontrolle, ob später auch
wirklich alles angezeigt werden kann.</p>

<p>Nach Abschicken eines Kommentars kann es je nach Einstellung des
Artikels zu einer Moderation kommen - in diesem Fall muss ein Redakteur
einen Kommentar erst autorisieren, bevor er angezeigt wird (siehe Seite
<span class="pageref"><a href="#Kommentare">Kommentare</a></span>).</p>

</section><!-- section.sub end -->

<section id="U342" class="sub">
<span class="u-toc">3.4.2 - Kommentarübersichten</span>

<h3 class="subsection" id="kommentarübersichten">Kommentarübersichten</h3>

<p class="tagging invisible">
<span class="label invisible" id="Kommentarübersicht">Kommentarübersicht</span>
<span class="tag-box invisible">
    <span class="inline-tag">Frontend!Kommentarübersicht</span>
</span>
</p>

<p>Neben der gezielten Ansicht von Kommentaren zu einem Artikel gibt es auch
eine Übersichtsseite, auf der alle Kommentare unabhängig vom Artikel
dargestellt werden.</p>

<figure id="fig-startpage_comments">
    <img src="img/startpage_comments.png">
    <figcaption>Abbildung 3.5: Kommentarübersicht</figcaption>
</figure>

<p>Dies eignet sich besonders, um zu sehen, zu welchen Einträgen bestimmte
Personen kommentiert haben. Die Seite zeigt dabei wie üblich seitenweise
blätterbar die Überschrift eines Artikels an, und darunter die getätigten
Kommentare.</p>

<p>Diese Übersichtsseite ist bisher in wenigen Templates eingebaut und wird
daher von Besuchern auch seltener genutzt.</p>

<p>Das Permalink-Schema sieht dabei wie folgt aus:
<span class="tag-box invisible">
    <span class="inline-tag">Permalinks!Kommentare</span>
</span>
</p>

<p class="desc">
<code class="item">/comments/kommentator/</code>
<span class="desc-info">stellt die Übersicht aller Kommentare dar, die vom Benutzer <code>kommentator</code> stammen.
Die Kommentatoren werden dabei in der Datenbank nach exakter Übereinstimmung mit dem Namen in der URL herausgesucht.
Ohne Angabe eines solchen Wertes werden die Kommentare aller Benutzer angezeigt. Sollten Sie nach Namen mit Leerzeichen
suchen, müssen Sie ein + anstelle des Leerzeichens einfügen, zB. <code>/comments/John+Doe/</code>. </span>
</p>

<p class="desc">
<code class="item">/comments/last_5/</code>
<span class="desc-info">stellt die Übersicht der Kommentare der letzten fünf Tage zu allen Artikeln des aktuellen Monats ab Uhrzeit dar.
Ohne Angabe eines solchen Wertes werden alle Kommentare angezeigt.</span>
</p>

<p class="desc">
<code class="item">/comments/from_2007-12-01/</code>
<span class="desc-info">stellt alle Kommentare seit dem 01.12.2007 dar. Das Datum muss hierbei der
<em>GNU DATE</em>-Syntax entsprechen, siehe
<code>http://www.gnu.org/software/tar/manual/html_node/tar_109.html</code>.
Ohne Angabe dieses Wertes wird keine minimale Zeitbeschränkung gesetzt.</span>
</p>

<p class="desc">
<code class="item">/comments/to_2007-12-31/</code>
<span class="desc-info">stellt alle Kommentare dar,
die bis zum 31.12.2007 gemacht wurden. Das Datum muss ebenfalls der
<em>GNU DATE</em>-Syntax entsprechen. Ohne Angabe dieses Wertes wird
keine maximale Zeitbeschränkung gesetzt.</span>
</p>

<p class="desc">
<code class="item">/comments/trackbacks/</code>
<span class="desc-info">stellt anstelle einer Übersicht zu Kommentaren die Übersicht der Trackbacks dar.</span>
</p>

<p class="desc">
<code class="item">/comments/comments_and_trackbacks/</code>
<span class="desc-info">stellt sowohl Kommentare als auch Trackbacks dar.</span>
</p>

<p class="desc">
<code class="item">/comments/comments/</code>
<span class="desc-info">stellt nur Kommentare dar. Da die Variable dem Standard entspricht, kann man sie üblicherweise weglassen.</span>
</p>

<p class="desc">
<code class="item">/comments/P2.html</code>
<span class="desc-info">stellt die zweite Seite einer Übersicht dar.
Die Pfadkomponente <code>P</code> (für <em>Page</em>) wird gefolgt von einer Seitennummer.</span>
</p>

<p>Auch bei diesem Schema lassen sich die Pfadkomponenten miteinander
kombinieren, um besondere Ansichten zu erhalten:</p>

<p class="desc">
<code class="item">/comments/garvin/last_5</code>
<span class="desc-info">stellt die Übersicht der Kommentare der letzten fünf Tage des Benutzers <code>garvin</code> dar.</span>
</p>

<p class="desc">
<code class="item">/comments/from_2007-01-01/to_2007-12-31/</code>
<span class="desc-info">stellt die Übersicht aller Kommentare vom 01.01. bis zu 31.12.2007 dar.</span>
</p>

<p class="desc">
<code class="item">/comments/comments_and_trackbacks/from_2007-01-01/P2/</code>
<span class="desc-info">stellt die zweite Übersichtsseite aller Kommentare und Trackbacks seit dem 01.01.2007 dar.</span>
</p>

</section><!-- section.sub end -->

</section><!-- section.index end -->

<section id="S350" class="index">
<span class="s-toc">3.5 - Seite nicht gefunden (404)</span>
<span class="label invisible" id="Seite nicht gefunden">Seite nicht gefunden</span>

<h3 class="section" id="seite-nicht-gefunden-404">Seite nicht gefunden (404)</h3>

<p class="tagging invisible">
<span class="tag-box invisible">
    <span class="inline-tag">Fehler!Seite nicht gefunden</span>
</span>
</p>

<p>Immer wenn man eine URL des Serendipity-Blogs aufruft, die zu einer
ungültigen Seite führt, wird statt einer Fehlerseite die Standard-Übersicht
angezeigt. Selbstverständlich wird für Suchroboter und Ähnliches dennoch eine
HTTP-404-Statusmeldung ausgegeben, um die Ungültigkeit der angeforderten Seite
herauszustellen.</p>

<p>Die Standard-Übersicht wird dargestellt, damit Besucher des Blogs dazu
motiviert werden, sich über die restlichen Inhalte des Blogs schnell
einen Überblick zu verschaffen, anstatt nur eine leere, nichtssagende
Fehlermeldung zu sehen.</p>

<p>Neuere Versionen zeigen zusätzlich aber wieder eine Fehlermeldung,
da das fehlerlose Fallback sich als zu verwirend für manche User herausstellte.
Damit die Meldung in bestimmten Situationen unterdrückt wird,
muss in den Template Dateien auf die {if $view == '404'} Variable zurückgegriffen werden,
um eine bestimmte Reaktion auszulösen.</p>

<p>&nbsp;</p>

</section><!-- section.index end -->

<section id="S360" class="index">
<span class="s-toc">3.6 - RSS-Feeds</span>

<h3 class="section" id="rss-feeds">RSS-Feeds</h3>

<p class="tagging invisible">
<span class="tag-box invisible">
    <span class="inline-tag">Frontend!RSS-Feeds</span>
</span>
</p>

<p>Streng genommen zählen RSS-Feeds nicht zum eigentlichen Frontend, da ein
RSS-Feed außerhalb von Serendipity angezeigt wird. Ein RSS-Feed enthält,
wie eingangs im Zusammenhang der Terminologie erwähnt (siehe Seite <span class="pageref"><a href="#RSS">RSS</a></span>),
einige XML-Elemente, die die aktuellsten Einträge des Blogs mit einigen
zusätzlichen Metadaten aufführen. RSS steht für <em>Really Simple Syndication</em>.</p>

<p>Folgende RSS-Versionen sind verfügbar:</p>

<p class="tagging invisible">
<span class="tag-box invisible">
    <span class="inline-tag">Permalinks!RSS-Feeds</span>
</span>
</p>

<p class="desc">
<code class="item">/feeds/index.rss2</code> Aktuelle Beiträge in RSS-Version 2.0.
<span class="desc-info">
    Diese Version wird aufgrund ihrer Vollständigheit bevorzugt, da sie die meisten Möglichkeiten bietet und den höchsten Verbreitungsgrad besitzt.
</span>
</p>

<p class="desc"><code class="item">/feeds/index.rss</code> Aktuelle Beiträge in RSS-Version 0.91 (veraltet).</p>

<p class="desc"><code class="item">/feeds/index.rss1</code> Aktuelle Beiträge in RSS-Version 1.0 (veraltet).</p>

<p class="desc"><code class="item">/feeds/atom03.xml</code> Aktuelle Beiträge in Atom-Version 0.3 (veraltet).</p>

<p class="desc">
<code class="item">/feeds/atom10.xml</code> Aktuelle Beiträge in Atom-Version 1.0.
<span class="desc-info">
    Diese Version liegt in ihren Möglichkeiten ungefähr gleichauf mit RSS 2.0 und wird in Zukunft
    sicherlich noch an Bedeutung gewinnen, da dieser Atom-Standard vom
    <span class="tag-box invisible">
        <span class="inline-tag">W3C</span>
    </span>
    W3C-Gremium [*]
    <span class="footnote"><i class="fa fa-info-circle"></i> Das W3C-Gremium entscheidet in einer großen Arbeitsgruppe
    über die Standardisierung von Internet-Formaten wie HTML und andere.</span><!-- footnote --> empfohlen wird.
    Das hat sich aber bis zum laufenden Jahr noch nicht wirklich bewahrheitet [*]
    <span class="footnote"><i class="fa fa-info-circle"></i> <a href="http://meiert.com/de/publications/translations/intertwingly.net/rss-2.0-and-atom-1.0/" target="_blank" rel="noopener">http://meiert.com/de/publications/translations/intertwingly.net/rss-2.0-and-atom-1.0/</a></span><!-- footnote -->.
    </span>
</p>

<p class="desc">
<code class="item">/feeds/index.opml</code> Aktuelle Beiträge im OPML-Format.
<span class="desc-info">
    Dies beinhaltet nur Artikelübersichten und dient mehr der Übersicht als einem tatsächlichen Feed-Format.
</span>
</p>

<p>Es gilt zu beachten, dass die URLs für die RSS-Feeds von Besuchern immer
aufgerufen werden können, selbst wenn Sie das Seitenleisten-Plugin nicht
aktiviert haben. Daher ist es auch grundsätzlich irrelevant, welche
Versionen Sie persönlich bevorzugen, da Ihre Besucher die notwendige
Version eigenständig beziehen können.</p>

<p>Neben den Einträgen können auch aktuelle Kommentare und
Trackbacks zu einem Blog bezogen werden:</p>

<p class="desc"><code class="item">/feeds/comments.rss2</code> Kommentare im RSS-2.0-Format.</p>

<p class="desc"><code class="item">/feeds/trackbacks.rss2</code> Trackbacks im RSS-2.0-Format.</p>

<p class="desc"><code class="item">/feeds/comments_and_trackbacks.rss2</code> Kommentare und Trackbacks im RSS-2.0-Format.</p>

<p>Diese Feeds können auch durch Änderung der Dateiendung in einem anderen
Format ausgegeben werden: <code>.rss2</code> für RSS 2.0, <code>.rss1</code> für RSS
1.0, <code>.rss</code> für RSS 0.91 und <code>.atom</code> für Atom 1.0.</p>

<p>Um nur einen Feed von einer speziellen Kategorie oder einem Autor
abzurufen, sind folgende URLs möglich (jeweils auch mit oben genannten
Dateiendungen):</p>

<p class="desc"><code class="item">/feeds/categories/Kategoriename.rss2</code> Aktuelle Beiträge der Kategorie <code>Kategoriename</code>.</p>

<p class="desc"><code class="item">/feeds/authors/Autorname.rss2</code> Aktuelle Beiträge des Autors <code>Autorname</code>.</p>

<p>
<span class="tag-box invisible">
    <span class="inline-tag">rss-php@rss.php</span>
</span>
RSS-Feeds liegen von Serendipity in mehreren Versionen vor und werden allesamt
auf die Ausgabedatei <code>rss.php</code> umgeleitet. Diese Datei stellt den Feed dar
und kann einige optionale Parameter aufnehmen. Ein kleiner Teil dieser Optionen
wird durch Einstellungen des Seitenleisten-Plugins "Blog abonnieren"
beeinflusst, die ab Seite <span class="pageref"><a href="#syndication">syndication</a></span> aufgeführt sind.</p>

<p><code>rss.php</code> kann somit auch direkt von einem Browser
aufgerufen werden, da sie übersichtlichere Paramter ermöglicht. Diese
Parameter können jeweils miteinander verbunden werden. Um mehrere
Parameter anzugeben, ruft man die URL mittels
<code>rss.php?parameter1=wert1&amp;parameter2=parameter3&amp;...</code> auf. Bitte
beachten Sie, dass Sie aus technischen Gründen die folgenden Parameter
ausschließlich beim Aufruf der <code>rss.php</code>-Datei anhängen können, nicht
aber beim Aufruf der sprechenden Feed-URLs wie <code>/feeds/index.rss2</code>.</p>

<p class="tagging invisible">
<span class="tag-box invisible">
    <span class="inline-tag">Frontend!RSSFeedVariablen@RSS-Feed-Variablen</span>
</span>
<span class="label invisible" id="rss-urlvariablen">rss-urlvariablen</span>
</p>

<p class="desc">
<code class="item">rss.php?version=version</code> wobei <em>version</em>
<span class="desc-info">
    folgende Werte haben kann: <em>0.91</em>, <em>1.0</em>, <em>2.0</em>,
    <em>atom0.3</em>, <em>atom1.0</em> und <em>opml1.0</em>. Individuelle Feeds,
    die von Ihnen erstellt werden können (siehe Seite <span class="pageref"><a href="#customfeeds">customfeeds</a></span>),
    werden ebenfalls einer eindeutigen Version zugeteilt und können durch diesen Parameter später
    aufgerufen werden. Ohne Angabe der Version wird das RSS-2.0-Format gewählt.
</span>
</p>

<p class="desc">
<code class="item">rss.php?category=1</code> wobei die Zahl der
<span class="desc-info">
    jeweiligen Nummer einer Kategorie des Blogs entspricht. Um einen RSS-Feed für Einträge
    mehrerer Kategorien zu bündeln, können die Kategorie-Nummern mittels Semikolon (<em>;</em>)
    hintereinander aufgeführt werden. Ohne Angabe werden Artikel aller Kategorien dargestellt.
</span>
</p>

<p class="desc">
<code class="item">rss.php?viewAuthor=1</code> wobei die Zahl der
<span class="desc-info">
    jeweiligen Nummer eines Autors des Blogs entspricht. Um einen RSS-Feed für Einträge mehrerer
    Autoren zu bündeln, können die Autor-Nummern mittels Semikolon (<em>;</em>) hintereinander
    aufgeführt werden. Ohne Angabe werden Artikel aller Autoren dargestellt.
</span>
</p>

<p class="desc">
<code class="item">rss.php?type=typ</code> Anstelle von <em>typ</em> kann
<span class="desc-info">
    <em>comments</em> (Kommentare), <em>content</em> (Beiträge), <em>trackbacks</em> (Trackbacks)
    und <em>comments_and_trackbacks</em> (Kommentare und Trackbacks) eingetragen werden, was dafür sorgt,
    dass nur Artikel des gewünschten Typs im RSS-Feed eingebunden werden. Ohne Angabe werden nur Artikel angezeigt.
</span>
</p>

<p class="tagging invisible">
<span class="label invisible" id="syndication-nocache">syndication-nocache</span>
<span class="tag-box invisible">
    <span class="inline-tag">Conditional GET</span>
</span>
</p>

<p class="desc">
<code class="item">rss.php?nocache=true</code> Diese Variable sorgt
<span class="desc-info">
    dafür, dass <em>Conditional GET</em> für RSS-Feeds deaktiviert wird (siehe
    <span class="reference">Caching von RSS-Feeds</span> auf Seite <span class="pageref"><a href="#Caching von RSS-Feeds">Caching von RSS-Feeds</a></span>).
</span>
</p> 

<p class="desc">
<code class="item">rss.php?cid=Artikel-ID</code> Falls als Inhaltstyp eines
<span class="desc-info">
    RSS-Feeds ein anderer als <em>content</em> gewählt wurde, kann man die Anzeige
    der Kommentare und Trackbacks auf einen bestimmten Artikel einschränken. Die Nummer
    (<em>ID</em>) dieses Artikels wird als Wert des Parameters angegeben. Solche RSS-Feeds
    werden oft verwendet, damit Besucher die Kommentare zu einem Artikel verfolgen können,
    an dessen Diskussion sie teilgenommen haben.
</span>
</p>

<p class="desc">
<code class="item">rss.php?all=true</code> Falls dieser Parameter gesetzt wird,
<span class="desc-info">
    enthält der RSS-Feed nicht nur die letzten 15 aktuellen Artikel, sondern alle verfügbaren.
    Der RSS-Feed kann dadurch sehr groß werden, daher ist die Verwendung dieses Parameters nur
    für den Export der Artikeldatenbank gedacht.
</span>
</p>

<p class="tagging invisible">
<span class="tag-box invisible">
    <span class="inline-tag">FullFeed</span>
</span>
<span class="label invisible" id="FullFeed">FullFeed</span>
</p>

<p class="desc">
<code class="item">rss.php?fullFeed=true</code> Falls dieser Parameter gesetzt ist,
<span class="desc-info">
    enthält der RSS-Feed den vollständigen Artikel (anstelle nur des Teasers). Diese Option muss
    vom Betreiber des Blogs jedoch gezielt aktiviert werden, da durch die Aktivierung der "Diebstahl"
    von Artikeln stark vereinfacht wird (siehe Seite <span class="pageref"><a href="#syndication-fullfeed">syndication-fullfeed</a></span>).
</span>
</p>

<p class="desc">
<code class="item">rss.php?forceLocal=true</code> Das Plugin "Blog abonnieren"
<span class="desc-info">
    unterstützt die Möglichkeit, dass RSS-Feeds zu einem Dienstleister namens <em>Feedburner</em>
    weitergeleitet werden. In so einem Fall würde der Aufruf der eigenen RSS-URLs immer direkt zu der Seite
    des Dienstleisters führen und man hätte keine Möglichkeit mehr, den <em>echten</em> RSS-Feed aufzurufen.
    Sollte diese Umleitungsoption also gesetzt sein, können Sie mittels des Parameters <em>forceLocal</em> dafür
    sorgen, dass Sie <em>nicht</em> umgeleitet werden. Der Parameter zeigt jedoch nur Wirkung, wenn Sie als
    Redakteur am Blog angemeldet sind.
</span>
</p>

<p>&nbsp;</p>

<section id="U361" class="sub">
<span class="u-toc">3.6.1 - Caching von RSS-Feeds</span>

<h3 class="subsection" id="caching-von-rss-feeds">Caching von RSS-Feeds</h3>

<p class="tagging invisible">
<span class="label invisible" id="Caching von RSS-Feeds">Caching von RSS-Feeds</span>
<span class="tag-box invisible">
    <span class="inline-tag">Caching</span>
    <span class="inline-tag">Conditional GET</span>
    <span class="inline-tag">Fehler!RSS-Feeds</span>
</span>
</p>

<p>Da RSS-Feeds von den RSS-Readern Ihrer Besucher relativ häufig aufgerufen
werden (meist halbstündlich), ist es wichtig, dort so wenig wie möglich
Redundanz für die Datenübertragung zu verursachen.</p>

<p>Bei 200 Abonnenten Ihres RSS-Feeds und einem größeren Artikelbestand
kommt es durchaus vor, dass die XML-Datei des Feeds 100kb und größer ist.
Bei dieser Benutzerzahl würden Sie pro Stunde 4MB (das sind im Monat gut
3GB!) an Daten übertragen. Wenn Sie durchschnittlich nur alle drei Tage
einen neuen Artikel schreiben, wäre ein Großteil dieser Datenmenge
unnötig übertragen worden.</p>

<p>Um dieses Problem zu lösen, wurde im HTTP-Standard ein Caching [*]
<span class="footnote"><i class="fa fa-info-circle"></i> Ein
Cache ist ein Zwischenspeicher oder Puffer, der einmal erstellte Daten erneut
ausgeben kann, anstatt sie neu zusammenzustellen.</span><!-- footnote --> -Mechanismus vorgesehen.
Dabei überträgt der RSS-Reader (und auch jeder Webbrowser) den Zeitpunkt des
letzten Abrufs an den Server. Der Server vergleicht, ob sich seit diesem
Zeitpunkt etwas am RSS-Feed geändert hat. Falls das nicht der Fall ist, wird
eine leere Antwort an die Software zurückgeschickt, und es werden keine Daten übertragen.</p>

<p>Wenn sich etwas verändert hat, kann der Server lediglich die seit dem
letzten Aufruf erneuerten Daten übermitteln und spart so nochmals an
Übertragungszeit (und damit auch Server-Performance).</p>

<p>Dieser Vorgang wird als <em>Conditional GET</em> bezeichnet und ist in Form einer verbindlichen
<span class="tag-box invisible">
    <span class="inline-tag">RFC 2616</span>
</span>
<em>RFC 2616</em> (Richtlinie des HTT-Protokolls)
festgehalten. Dennoch gibt es leider einige Clients, die das Caching nicht
vollständig implementieren und mit derartig ausgelieferten RSS-Feeds Probleme
haben. Solche Probleme können sich darin äußern, dass ein RSS-Reader ständig
bereits bekannte Einträge des RSS-Feeds als neu ansieht oder womöglich gar
keine neuen Artikel empfangen kann.</p>

<p>Um bei solchen <em>kaputten</em> Clients dennoch einen Serendipity-Feed
korrekt abrufen zu können, ist der eingangs erwähnte Parameter
<code>nocache=true</code> an den Aufruf der <code>rss.php</code>-URL anzuhängen.</p>

<p>Im Zusammenhang mit dem globalen Caching unterstützt Serendipity die
Auslieferung von Artikeln ab einem bestimmten Datum. Da üblicherweise
RSS-Feeds nur die letzten 15 Artikel [*]
<span class="footnote"><i class="fa fa-info-circle"></i> Siehe: Konfiguration: Design und Optionen: Anzahl der Artikel auf der Startseite</span><!-- footnote -->,
enthalten und man möglicherweise einmal für eine Weile den RSS-Feed nicht empfangen kann [*]
<span class="footnote"><i class="fa fa-info-circle"></i> Vielleicht hat man ja einmal sein Notebook oder die
UMTS-Karte im Urlaub vergessen ... ;-)</span><!-- footnote -->, könnte es also passieren, dass
man Artikel schlichtweg verpasst. Bei der Übermittlung einer Angabe des
zuletzt gesehenen Artikels wird dies vermieden, und Serendipity würde in
so einem Fall auch alle weiteren Artikel über dem 15. ausliefern.</p>

<p>Diese Auslegung des RFC-Standards verursacht in manchen RSS-Readern und
vor allem Aggregatoren wie der Software <em>Planet</em> jedoch Probleme. In
der Konfiguration des Blogs wird daher die Option angeboten, das
<em>strikte RFC2616</em> zu veranlassen (siehe Seite <span class="pageref"><a href="#rfc2616">rfc2616</a></span>). Zwei
weitere Variablen (siehe Seite <span class="pageref"><a href="#Caching-Variablen">Caching-Variablen</a></span>) dienen darüber hinaus der
Feineinstellung von Caching-Inhalten.</p>

<p>Sobald diese Option aktiviert ist, wird Serendipity, wie andere Software
auch, stur nur die letzten 15 Artikel ausliefern und somit das Feature
der <em>Urlaubsschaltung</em> deaktivieren.</p>

</section><!-- section.sub end -->

</section><!-- section.index end -->

<section id="S370" class="index">
<span class="s-toc">3.7 - Suche</span>
<span class="label invisible" id="Suche">Suche</span>

<h3 class="section" id="suche">Suche</h3>

<p class="tagging invisible">
<span class="tag-box invisible">
    <span class="inline-tag">Suche</span>
    <span class="inline-tag">Volltextsuche|see{Suche}</span>
    <span class="inline-tag">Frontend!Suche</span>
    <span class="inline-tag">Fehler!Suche</span>
    <span class="inline-tag">Permalinks!Suche</span>
</span>
</p>

<p>Der Permalink für die Suche folgt dem Schema
<code>http://www.example.com/serendipity/search/Suchbegriff1/Suchbegriff2</code>.
Mehrere Begriffe werden dabei durch den Pfadtrenner <code>/</code>
getrennt. Die Pfadkomponente <code>P</code> für die gewünschte Seite der
Übersicht kann angehängt werden.</p>

<p>
<span class="tag-box invisible">
    <span class="inline-tag">MySQL!Fulltext</span>
    <span class="inline-tag">Fulltext-Index</span>
</span>
Volltextsuche wird bei Einsatz der MySQL-Datenbank mit dem
"Fulltext"-Suchmechanismus ausgeführt. Dieser Mechanismus funktioniert
nur bei MySQL-Versionen ab 4.0, und es ist erforderlich, dass ein
<code>FULLTEXT INDEX</code> auf die Spalten <code>title,body,extended</code> der
Tabelle <code>serendipity_entries</code> erstellt wurde. Dies erledigt die
Serendipity-Installationsroutine üblicherweise. Bei manchen Providern
(besonders beim Einsatz von Confixx) kann es jedoch passieren, dass Ihr
Datenbankbenutzer keine <code>INDEX</code>-Rechte hat. In einem solchen Fall
würden Sie bei der Suche nach Artikeln eine Fehlermeldung erhalten, die
Sie dazu anleitet, den Index korrekt zu erstellen. Notfalls müssen Sie
Ihren Provider bitten, Ihnen die notwendigen Rechte dafür einzuräumen.</p>

<p>
<span class="tag-box invisible">
    <span class="inline-tag">Boolean</span>
</span>
MySQL unterstützt die Suche mittels <em>BOOLEAN</em>-Operatoren. Hier
können Sie Wörter mit einem Anführungszeichen einschließen und ein
<em>+</em> oder <em>-</em> vorstellen, um Teilwörter ein- oder
auszuschließen. Auch kann das Zeichen <em>*</em> als Platzhalter für
beliebige Zeichen verwendet werden. Details zu der MySQL-Volltextsuche
schlagen Sie bitte in der MySQL-Dokumentation nach.</p>

<figure id="fig-search">
    <img src="img/search.png">
    <figcaption>Abbildung 3.6: Volltextsuche</figcaption>
</figure>

<p>
<span class="tag-box invisible">
    <span class="inline-tag">Fehler!falsche Suchergebnisse</span>
</span>
Zwei wichtige Besonderheiten beim Einsatz von MySQL gibt es noch zu
beachten: Die Suche funktioniert nur, wenn die Suchergebnisse nicht einen
Großteil aller vorhandenen Einträge ausgeben. Damit verhindert MySQL, dass
eine nutzlose Suche alle Einträge zurückliefern würde. Gerade wenn Sie
also erst zwei Artikel geschrieben haben und nach einem Begriff suchen,
wundern Sie sich nicht, wenn Sie keine Ergebnisse erhalten. Sobald die
Datenbank eine vernünftige Datenbasis enthält, wird die Suche wie
gewünscht funktionieren.</p>

<p>
<span class="tag-box invisible">
    <span class="inline-tag">Stoppwort</span>
</span>
Die zweite Besonderheit ist, dass MySQL nur Wörter mit
standardmäßig mindestens drei Buchstaben findet und dass ein Wort kein
<em>Stoppwort</em> wie <em>und</em> enthält. Eine Suche nach <em>DB</em> würde also
nicht funktionieren. Dies wird durch die MySQL-Option <code>ft_max_word_len</code>
(siehe MySQL-Dokumentation) definiert.</p>

<p>Beim Einsatz von SQLite oder PostgreSQL wird die Suche mittels einer
Zeichenteilkette durchgeführt. Eine Suche nach <em>risch</em> würde also
sowohl Artikel mit dem Wort <em>Frischfleisch</em> als auch
<em>betrügerisch</em> finden. Diese ist zwar langsamer als die erwähnten
MySQL-Möglichkeiten, benötigt dafür aber weniger Rahmenbedingungen, um zu
funktionieren.</p>

</section><!-- section.index end -->
