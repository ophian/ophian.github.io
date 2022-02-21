<span class="label invisible" id="Plugins">Plugins</span>

<h2 id="chapter-V">Kapitel 5: Seitenleisten-Plugins</h2>

<p>Serendipity bietet eine große Menge von Plugins an. Einige davon werden
direkt bei Serendipity mitgeliefert, andere sind im externen
Spartacus-Archiv (siehe Seite <span class="pageref"><a href="#Spartacus">Spartacus</a></span>)
verfügbar.</p>

<p>
<span class="tag-box invisible">
    <span class="inline-tag">Seitenleisten-Plugins</span>
    <span class="inline-tag">Ereignis-Plugins</span>
</span>
Plugins sind bei Serendipity in <em>Seitenleisten-</em> und
<em>Ereignis-Plugins</em> unterteilt. Wie im Kapitel zur Plugin-Verwaltung
(siehe Seite <span class="pageref"><a href="#Plugins verwalten">Plugins verwalten</a></span>)
erwähnt, binden sich Seitenleisten-Plugins zur Ausgabe in den
Rahmenbereich Ihres Blogs ein. Ereignis-Plugins hingegen dienen der
funktionellen Erweiterung Ihres Blogs.</p>

<p>Auf den folgenden Seiten finden Sie eine Übersicht der am häufigsten
genutzten Plugins und aller mitgelieferten Plugins. Aus Platzmangel können
wir leider nicht auf jedes Plugin eingehen, verzeihen Sie also bitte,
falls Ihr Lieblings-Plugin nicht beschrieben wird.
Die meisten Plugins sind trotz kurzer Beschreibung leicht zu benutzen
und zu konfigurieren. Sollte es darüber hinaus Fragen zu der Benutzung
eines Plugins geben, wird man Ihnen in den Serendipity-Styx-Discussions [*]
<span class="footnote"><i class="fa fa-info-circle"></i> <a href="https://github.com/ophian/styx/discussions" target="_blank" rel="noopener">https://github.com/ophian/styx/discussions</a></span><!-- footnote -->
sicherlich helfen.</p>

<p>
<span class="tag-box invisible">
    <span class="inline-tag">Gekoppelte Plugins</span>
</span>
Einige Plugins bestehen aus einer Kombination von Seitenleisten-
und Ereignis-Plugins. Sie werden als <em>Gekoppelte Plugins</em> bezeichnet
und in einem eigenen Kapitel (ab Seite <span class="pageref"><a href="#Gekoppelte Plugins">Gekoppelte Plugins</a></span>) behandelt.</p>

<p>
<span class="tag-box invisible">
    <span class="inline-tag">Plugins!mehrfach installieren</span>
</span>
Plugins können häufig mehr als einmal installiert werden. Gerade bei
Seitenleisten-Plugins wie dem HTML-Klotz macht dies Sinn, damit man
beliebig viele Inhalte im Blog anzeigen kann. Wenn ein Plugin nicht
mehrfach installiert werden kann, erscheint es in der Plugin-Liste mit dem
Hinweis "bereits installiert". Bei Ereignis-Plugins ist es
hingegen seltener notwendig, mehr als eine Instanz des Plugins zu
installieren. Jedes mehrfach installierte Plugin kann individuell
konfiguriert werden, da jede Instanz unabhängig agiert.</p>

<p>Die Konfigurationsoptionen der jeweiligen Plugins sind hier auf die essentiellen
Parameter beschränkt und daher nicht vollständig aufgeführt. Im Buch nicht
beschriebene Optionen sind jedoch in der Konfigurationsoberfläche eines Plugins
aufgeführt und werden dort auch grob beschrieben oder sind meistens
selbsterklärend.</p>

<p>Leider sind nicht alle Plugins bisher ins Deutsche übersetzt, daher
wird bei einigen Beschreibungen und Plugin-Namen im Folgenden auf das
englische Original zurückgegriffen.</p>

<p class="tagging invisible">
<span class="label invisible" id="Seitenleisten-Plugins">Seitenleisten-Plugins</span>
<span class="tag-box invisible">
    <span class="inline-tag">Plugins!Seitenleisten</span>
</span>
</p>

<p>Damit Sie ein Seitenleisten-Plugin innerhalb der Verzeichnisstruktur besser
finden, geben wir in der Übersicht neben dessen Namen
auch den Klassennamen der Datei an.</p>

<p>Die Plugins der folgenden Zusammenstellungen sind nach Alphabet,
im Sinne von <code>serendipity_plugin_A-Z</code> geordnet.</p>

<p>&nbsp;</p>

<section id="S510" class="index">
<span class="s-toc">5.1 - Standardmäßig aktivierte Plugins</span>

<h3 class="section" id="standardmäßig-aktivierte-plugins">Standardmäßig aktivierte Plugins</h3>

<p>Seitenleisten-Plugins werden im Frontend Ihres Blogs angezeigt und können
dort beliebige Inhalte darstellen oder einbinden. Im Gegensatz zu Ereignis-Plugins
kann ein Seitenleisten-Plugin ausschließlich Ausgaben in der Seitenleiste vornehmen
und keine weitere Kernfunktionalität zur Verfügung stellen.
Die folgenden Seitenleisten-Plugins werden bei Serendipity mitgeliefert und sind
standardmäßig aktiviert.</p>

<section id="serendipity_plugin_archives" class="sub">
<span class="u-toc">5.1.1 - Archive: serendipity_plugin_archives</span>

<h3 class="subsection" id="archiveserendipity_plugin_archives">Archive<br>serendipity_plugin_archives</h3>

<p class="tagging invisible">
<span class="tag-box invisible">
    <span class="inline-tag">Plugins!Archive</span>
    <span class="inline-tag">Plugins!serendipity_plugin_archives</span>
</span>
</p>

<p>Das Plugin <em>Archive</em> zeigt eine Übersicht der letzten Monate an. Ein
Klick auf den jeweiligen Monat öffnet die Artikelübersicht für den
gewünschten Zeitraum.</p>

<p>In der Konfiguration des Plugins können Sie neben der Überschrift des
Plugins auch angeben, ob das Plugin Monate, Wochen oder Tage gliedern
soll. Die <span class="mbold">Anzahl der Einträge im Archiv</span> gibt an, wie viele Ausgaben
im Plugin erfolgen sollen.</p>

<p>Wenn Sie die Option <span class="mbold">Anzahl der Einträge pro Kategorie anzeigen</span>
aktivieren, wird hinter jeder Ausgabe des Plugins in der Seitenleiste die
Anzahl von Einträgen eingeblendet, die Sie in diesem Zeitraum erstellt
haben. Achten Sie beim Aktivieren dieser Option darauf, dass diese die
Geschwindigkeit des Plugins stark verringert. Das Auslesen der Anzahl
aller Artikel pro Zeitraum ist eine komplexe Datenbankabfrage.</p>

<p>Wenn Sie die Option <span class="mbold">Versteckt den Archiv-Link,
wenn es keine Einträge für einen Zeitraum gab...</span> aktivieren, können in der Ausgabe der
Monatsarchive diejenigen Monate übergangen werden, in denen Sie keine
Blog-Artikel geschrieben haben. Damit dies klappt, müssen Sie die Option
<span class="mbold">Anzahl der Einträge pro Kategorie anzeigen</span> ebenfalls aktivieren.</p>

<figure id="fig-plugin-archives-config">
  <a class="lightbox" rel="lightbox" href="media/plugin_archives_config_as_stack_example_dm_de.avif" lg-uid="lg5111" data-fallback="media/plugin_archives_config_as_stack_example.webp">
    <picture>
      <source srcset="media/plugin_archives_config_as_stack_example_dm_de.avif" type="image/avif">
      <source srcset="media/plugin_archives_config_as_stack_example_dm_de.webp" type="image/webp">
      <img src="media/plugin_archives_config_as_stack_example_dm_de.png" alt="plugin_archives_config_as_stack_example_dm_de.png" loading="lazy" width="1009" height="541">
    </picture>
    <figcaption>Abbildung 5.1: Archives Plugin: Konfiguration - Beispiel für stapelbare Plugins</figcaption>
  </a>
</figure>

<p>Stapelbare Plugins wie dieses - also Plugins die Mehrfachinstallationen erlauben - werden
mit einem Icon vor dem Pluginnamen ausgezeichnet. Der Info Button öffnet die zusätzliche
Plugin Beschreibung bzw räumt dies aus dem Weg.</p>

</section><!-- section.sub end -->

<section id="serendipity_plugin_categories" class="sub">
<span class="u-toc">5.1.2 - Kategorien: serendipity_plugin_categories</span>

<h3 class="subsection" id="kategorienserendipity_plugin_categories">Kategorien<br>serendipity_plugin_categories</h3>

<p class="tagging invisible">
<span class="tag-box invisible">
    <span class="inline-tag">Plugins!Kategorien</span>
    <span class="inline-tag">Plugins!serendipity_plugin_categories</span>
</span>
<span class="label invisible" id="categoriesplugin">categoriesplugin</span>
</p>

<p>Dieses Plugin blendet die im Blog verfügbaren Kategorien ein. Wenn Sie
Ihr Blog als eine Art CMS betreiben, wird dieses Seitenleisten-Plugin daher
oft als Menü benutzt, um auf die jeweiligen Unterbereiche zu gelangen.</p>

<p>Ein Klick auf die im Plugin dargestellte Kategorie ruft dabei jeweils die
Artikelübersicht dieser Kategorie auf.</p>

<p>Konfigurationsoptionen sind:</p>

<p class="desc">
<span class="item mbold">Quelle der Kategorien</span><!-- menuitem -->
<span class="desc-info">
    <span class="box">
        Wie im Kapitel <span class="reference">kategorie-leserechte</span> auf Seite
        <span class="pageref"><a href="#kategorie-leserechte">kategorie-leserechte</a></span>
        erwähnt, können für Kategorien besondere Leserechte gelten, so dass nur eingeloggte
        Mitglieder einer Benutzergruppe Einträge dieser Kategorie lesen können.
    </span>

    <span class="box">
        Standardmäßig stellt das Kategorien-Plugin alle Kategorien dar, die im
        Blog angelegt sind - ganz gleich, ob dafür besondere Leserechte gelten,
        oder nicht. Wenn ein Besucher auf eine solche Kategorie klickt, kann es
        daher sein, dass er darin keine Artikel angezeigt bekommt. Deshalb ist es
        möglicherweise wünschenswert, wenn einem Leser auch nur die Kategorien
        angezeigt werden, zu denen er auch Leserechte besitzt.
    </span>

    <span class="box">
        Dafür ist das Auswahlfeld <span class="mbold">Quelle der Kategorien</span> vorgesehen. Dort
        wählen Sie eine Benutzergruppe aus, so dass nur Kategorien angezeigt
        werden, die für die gewählte Benutzergruppe sichtbar sind. Standardmäßig
        steht diese Option auf <span class="mbold">Alle Autoren</span>. Sie müssen die Sonderoption
        <span class="mbold">Derzeitiger Autor</span> wählen, wenn die Kategorieliste sich nach den
        Rechten des aktuell eingeloggten Besuchers richten soll.
    </span>
</span>
</p>

<p class="desc">
<span class="item mbold">Zeige nur Kategorien unterhalb...
    </span><!-- menuitem -->
<span class="desc-info">Da Kategorien in Serendipity schachtelbar sind, kann es recht komplexe
Kategorie- bzw. Menüstrukturen abbilden. Möglicherweise soll in der
Seitenleiste aber nur ein Teil dieser Struktur angezeigt werden. Daher
können Sie im Auswahlfeld <span class="mbold">Zeige nur Kategorien unterhalb...</span>
festlegen, ab welcher Oberkategorie die Unterrubriken angezeigt werden.</span>
</p>


<p class="desc">
<span class="item mbold">Die gewählte Oberkategorie verstecken</span><!-- menuitem -->
<span class="desc-info">Wenn Sie im obigen Konfigurationsfeld eine Kategorie ausgewählt haben,
bestimmt die Option <span class="mbold">Die gewählte Oberkategorie verstecken</span>, ob der
Name dieser Oberkategorie angezeigt (<span class="mbold">Nein</span>) oder versteckt
(<span class="mbold">Ja</span>) wird.</span>
</p>

<p class="desc">
<span class="item mbold">XML-Button</span><!-- menuitem -->
<span class="desc-info">
    <span class="box">
        Für die Artikel jeder einzelnen Kategorie kann ein RSS-Feed abonniert
        werden. Dazu wird neben jedem Kategorienamen ein kleines Bild
        eingeblendet, auf das ein Benutzer klicken kann, um den RSS-Feed der
        Kategorie zu abonnieren.
    </span>

    <span class="box">
        Dieses Bild stellt üblicherweise ein universelles RSS-Icon dar, das von
        zahlreichen Blogsystemen und Browsern einheitlich benutzt wird. Sie
        können aber gerne in dem Konfigurationsfeld <span class="mbold">XML-Button</span> ein
        abweichendes Bild eintragen. Dazu müssen Sie den vollständigen HTTP-Pfad
        (alles hinter <code>http://www.example.com/</code>) eingeben.
    </span>

    <span class="box">
        Wenn Sie kein Bild einbinden wollen, tragen Sie hier <code>none</code> ein.
    </span>
</span>
</p>

<p class="desc">
<span class="tag-box invisible">
    <span class="inline-tag">Sortierung!Kategorien</span>
</span><!-- tagbox -->
<span class="item mbold">Sortierung</span><!-- menuitem -->
<span class="desc-info">
    <span class="box">
        Zwei Auswahlfelder untereinander werden bei der Konfigurationsoption
        <span class="mbold">Sortierung</span> dargestellt. Das obere Auswahlfeld bestimmt, nach
        welchem Kriterium die Liste der Kategorien sortiert werden soll.
    </span>

    <span class="box">
        Da Kategorien innerhalb Serendipity noch nicht beliebig sortiert werden
        können, entscheidet also ausschließlich diese Sortierungsreihenfolge die
        Reihenfolge der Darstellung in der Seitenleiste. Standardmäßig werden die
        Kategorien nach dem Namen der Kategorie alphabetisch sortiert. Weitere
        Möglichkeiten sind eine Sortierung nach Beschreibung oder der ID einer
        Kategorie. Auch kann eine Sortierung nach <em>keinem</em> Kriterium
        ausgewählt werden, in diesem Fall werden die Kategorien so wie sie in
        der Datenbank abgelegt sind geordert.
    </span>

    <span class="box">
        Das zweite Auswahlfeld gibt dabei an, ob die Kategorien absteigend (also
        von A bis Z oder 0 bis 9) oder aufsteigend (von Z bis A bzw. 9 bis 0)
        sortiert werden sollen.
    </span>

    <span class="box">
        Wenn Sie eine ganz individuelle Auflistung von Kategorien haben möchten,
        gibt es zwei Möglichkeiten. Die erste Möglichkeit wäre, einfach eine
        manuelle HTML-Liste der Kategorien zu erstellen und als <em>HTML-Klotz
        Seitenleisten-Plugin</em> (Seite <span class="pageref"><a href="#htmlnugget">htmlnugget</a></span>) einzufügen. Dadurch
        verlieren Sie natürlich die anderen dynamischen Möglichkeiten des Plugins.
    </span>

    <span class="box">
        Die zweite Möglichkeit wäre, das Feld <span class="mbold">Beschreibung</span> einer
        Kategorie zu missbrauchen, indem Sie nicht einen Text, sondern eine Zahl darin
        aufschreiben. Durch die Eingabe einer Zahl für die Reihenfolge der
        Kategorien können Sie in der Sortierung die Reihenfolge beeinflussen. Das
        bedeutet jedoch auch, dass Sie dann keine normale textliche Beschreibung
        der Kategorie mehr nutzen können. Da diese Beschreibung sonst aber nur
        für Redakteure gilt, ist dies möglicherweise zu verkraften.
    </span>
</span>
</p>

<p class="desc">
<span class="tag-box invisible">
    <span class="inline-tag">Mehrere Kategorien!darstellen</span>
</span><!-- tagbox -->
<span class="item mbold">Besuchern erlauben, mehrere Kategorien gleichzeitig darzustellen?</span><!-- menuitem -->
<span class="desc-info">
    <span class="box">
        Wenn ein Besucher in der Darstellung des Plugins auf eine einzelne
        Kategorie klickt, sieht er alle Einträge dieser Kategorie. In manchen
        Fällen möchte ein Besucher aber gerne Inhalte mehrerer Kategorien auf
        einmal ansehen.
    </span>

    <span class="box">
        Wenn Sie die Option <span class="mbold">Besuchern erlauben, mehrere Kategorien
        gleichzeitig darzustellen</span> aktivieren, wird neben jeder Kategorie ein
        Ankreuzfeld angezeigt. Der Besucher kann alle gewünschten Kategorien
        markieren und danach auf den Button <span class="mbold">Los</span> klicken, um die Auswahl zu
        setzen.
    </span>

    <span class="box">
        Ist die Option deaktiviert, wird diese Auswahlbox nicht mehr angezeigt. Dennoch
        kann ein Besucher spezielle URLs aufrufen, in denen er mehrere Kategorien auf
        einmal ansehen kann (siehe Seite <span class="pageref"><a href="#Permalinks-Kategorien">Permalinks-Kategorien</a></span>). Die
        Deaktivierung der Option nimmt dem Benutzer also höchstens die komfortable
        Möglichkeit zu einer solchen Übersicht und beeinflusst die Darstellungsweise des
        Plugins.
    </span>
</span>
</p>

<p class="desc">
<span class="item mbold">Kategorien verstecken, die nicht Teil des vom Besucher gewählten Kategoriebaums sind</span><!-- menuitem -->
<span class="desc-info">
    <span class="box">
        Wenn Sie eine verschachtelte Kategoriestruktur eingerichtet haben, stellt
        diese eine Baumstruktur dar. Dabei sind jeweils einer Oberkategorie eine
        oder mehrere Unterkategorien zugeordnet.
    </span>

    <span class="box">
        Wenn Sie Serendipity als eine Art CMS einsetzen, bei dem die Kategorien
        Menüpunkten entsprechen, wünschen Sie sich möglicherweise, dass bei einem
        Klick auf eine Unterkategorie die anderen "parallelen" Menüpunkte nicht
        mehr angezeigt werden.
    </span>

    <span class="box">
        Stellen Sie sich folgenden Kategorienbaum vor: Oberkategorien A, B und C.
        Jede Kategorie besitzt zwei Unterkategorien: A1 und A2, B1 und B2 sowie
        C1 und C2. Wenn der Besucher nun auf die Unterkategorie A1 klickt, würden
        Sie gerne nur die Kategorien A und A2 anzeigen. Die Kategorien und
        Unterkategorien von B und C sollen verschwinden. Genau zu diesem Zweck
        dient die Option <span class="mbold">Kategorien verstecken...</span> Wenn diese Option
        aktiviert ist, werden die nicht zum gewählten Kategoriebaum passenden
        restlichen Kategorien nicht mehr in der Ausgabe des Plugins angezeigt.
        Sie müssten dann zuerst wieder auf die Startseite zurück (oder auf andere
        Menüpunkte klicken), um die ausgeblendeten Kategorien wieder zu sehen.
    </span>
</span>
</p>

<p class="desc">
<span class="item mbold">Anzahl der Einträge pro Kategorie anzeigen</span><!-- menuitem -->
<span class="desc-info">
    <span class="box">
        Wenn Sie möchten, dass die Anzahl der Artikel in einer Kategorie in der
        Ausgabe des Plugins neben dem Kategorienamen angezeigt wird, können Sie
        die Option <span class="mbold">Anzahl der Einträge pro Kategorie anzeigen</span> aktivieren.
    </span>

    <span class="tag-box invisible">
        <span class="inline-tag">Performance</span>
    </span>
    <span class="box">
        Beachten Sie auch hier, dass die Aktivierung die Geschwindigkeit des
        Plugins stark beeinflusst, da das Zählen aller Artikel der Datenbank
        einige Zeit beansprucht.
    </span>

    <span class="box">
        Wenn Sie Einträge zu mehr als einer Kategorie zuweisen, wird dieses
        Plugin (leider) für jede zugewiesene Kategorie den Artikel erneut zählen.
        Daher kann es passieren, dass die angezeigte Artikelzahl höher ist als
        die in Wirklichkeit vorhandenen Artikel.
    </span>
</span>
</p>

<p class="desc">
<span class="item mbold">Smarty-Templating aktivieren</span><!-- menuitem -->
<span class="desc-info">
    <span class="box">
        Damit Sie dieses Plugin möglichst komfortabel anpassen können, gibt es
        die Template-Datei
        <span class="tag-box invisible">
            <span class="inline-tag">Template-Dateien!plugin_categories.tpl</span>
        </span>
        <code>plugin_categories.tpl</code>. Nur wenige Seitenleisten-Plugins verfügen
        über ein eigenes Smarty-Template, da meistens Änderungen per CSS bereits
        vollkommen ausreichen. Aus Performancegründen wird diese Template-Datei
        daher auch standardmäßig nicht benutzt. Wenn Sie also ein eigenes Template
        für das Aussehen der Kategorie-Auflistung benutzen wollen, müssen Sie die
        Konfigurationsoption <span class="mbold">Smarty-Templating aktivieren</span> auf <code>Ja</code> setzen.
    </span>

    <span class="box">
        Die eingesetzten Variablen dieser Datei werden auf Seite
        <span class="pageref"><a href="#plugin-categories-tpl">plugin-categories-tpl</a></span> erklärt.
    </span>
</span>
</p>

</section><!-- section.sub end -->

<section id="serendipity_plugin_plug" class="sub">
<span class="u-toc">5.1.3 - Powered by: serendipity_plugin_plug</span>

<h3 class="subsection" id="powered-byserendipity_plugin_plug">Powered by<br>serendipity_plugin_plug</h3>

<p class="tagging invisible">
<span class="tag-box invisible">
    <span class="inline-tag">Plugins!Powered by</span>
    <span class="inline-tag">Plugins!serendipity_plugin_plug</span>
</span>
<span class="label invisible" id="plugplugin">plugplugin</span>
</p>

<p>Ein ebenfalls recht simples Plugin ist <em>Powered by</em>. Es gibt das
Logo von Serendipity mit einem Link zur Webseite
<code>http://www.s9y.org/</code> aus und erlaubt es Ihren Besuchern, zu sehen,
welche großartige Software hinter Ihrem Blog steckt.</p>

<p>Die Konfigurationsoptionen des Plugins ermöglichen eine Feineinstellung,
ob man nur das Logo oder nur den Text anzeigen möchte.</p>

</section><!-- section.sub end -->

<section id="serendipity_plugin_superuser" class="sub">
<span class="u-toc">5.1.4 - Verwaltung des Blogs: serendipity_plugin_superuser</span>

<h3 class="subsection" id="verwaltung-des-blogsserendipity_plugin_superuser">Verwaltung des Blogs<br>serendipity_plugin_superuser</h3>

<p class="tagging invisible">
<span class="tag-box invisible">
    <span class="inline-tag">Plugins!Verwaltung des Blogs</span>
    <span class="inline-tag">Plugins!serendipity_plugin_superuser</span>
</span>
</p>

<p>Mit dem Plugin <em>Verwaltung des Blogs</em> binden Sie einen einfachen
Link im Frontend ein, auf den Sie als Redakteur klicken können, um ins
Backend zu gelangen. Das Plugin erkennt dabei automatisch, ob Sie schon
eingeloggt sind, und gibt dementsprechend entweder einen Link zum Login oder direkt
zum Backend aus.</p>

<p>
<span class="tag-box invisible">
    <span class="inline-tag">HTTPS</span>
</span><!-- tagbox -->
Die einzige Konfigurationsoption des Plugins gibt an, ob Sie
das <span class="mbold">HTTPS</span> zum Login benutzen möchten. Ihr Server muss HTTPS (siehe
Terminologie auf Seite <span class="pageref"><a href="#https">https</a></span>) unterstützen und ein gültiges Zertifikat
für den Server besitzen, auf dem Serendipity installiert ist. Nur bei der
Benutzung von HTTPS ist gewährleistet, dass Ihr Benutzername und Passwort
nicht im Klartext (sondern verschlüsselt) an den Server übertragen werden
und niemand Ihre Logindaten abfangen kann.</p>

</section><!-- section.sub end -->

<section id="serendipity_plugin_syndication" class="sub">
<span class="u-toc">5.1.5 - Blog abonnieren: serendipity_plugin_syndication</span>

<h3 class="subsection" id="blog-abonnierenserendipity_plugin_syndication">Blog abonnieren<br>serendipity_plugin_syndication</h3>

<p class="tagging invisible">
<span class="tag-box invisible">
    <span class="inline-tag">Plugins!Blog abonnieren</span>
    <span class="inline-tag">Plugins!serendipity_plugin_syndication</span>
</span>
<span class="label invisible" id="syndication">syndication</span>
</p>

<p>Das Plugin stellt die verschiedenen Optionen zum Abonnieren Ihres
Blogs mittels RSS-Feed dar. Dabei wird in der Seitenleiste für jedes
gewünschte Format ein Link eingebunden, den Ihre Besucher in ihr
RSS-Programm übernehmen können.</p>

<p>Neben dem Titel des Plugins in der Seitenleiste sowie der Aktivierung der
zahlreichen Feed-Formate bietet das Plugin folgende
Konfigurationsoptionen:</p>

<p class="desc">
<span class="tag-box invisible">
    <span class="inline-tag">FullFeed</span>
</span>
<span class="label invisible" id="syndication-fullfeed">syndication-fullfeed</span>
<span class="tag-box invisible">
    <span class="inline-tag">Vollständige RSS-Feeds</span>
</span><!-- tagbox -->
<span class="item mbold">Volle Einträge mit erweitertem Text im RSS-Feed einbinden</span><!-- menuitem -->
<span class="desc-info">
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
<span class="label invisible" id="syndication-feedburner">syndication-feedburner</span>
<span class="tag-box invisible">
    <span class="inline-tag">FeedBurner</span>
</span><!-- tagbox -->
<span class="item mbold">FeedBurner Feed</span><!-- menuitem -->
<span class="desc-info">
    <span class="box">
        Der Webservice <code>http://www.feedburner.com/</code> ist ein Angebot von
        Google, das Statistiken über die Auslieferung Ihres
        RSS-Feeds und einige weitere Möglichkeiten
        der Einbettung bietet. Bei einem FeedBurner-Feed kann der Aufruf des
        RSS-Feeds im Browser direkt hübsch formatiert sein, statt
        als für den Besucher merkwürdiger XML-Datensatz zu erscheinen. FeedBurner
        ermöglicht auch die Einbindung von Werbung und verwandten Tags.
    </span>

    <span class="box">
        Bei FeedBurner müssen Sie sich separat anmelden und dem Service die URL
        Ihres RSS-Feeds mitteilen. FeedBurner wird dann regelmäßig diese URL
        aufrufen, Ihren RSS-Feed einlesen, ihn konvertieren und danach unter
        einer eigenen FeedBurner-URL (die Sie konfigurieren können) anbieten.
    </span>

    <span class="box">
        Damit die Statistikzählung aktiviert wird, müssen Ihre Besucher künftig
        diesen FeedBurner-Feed abonnieren und nicht den üblichen
        Serendipity-Feed. Dazu dient die Einstellung <span class="mbold">Feedburner Feed</span> im
        Plugin. Wenn diese Variable auf <span class="mbold">Ja</span> steht, wird der Link zum
        Feedburner-Feed in Ihrer Seitenleiste angezeigt. In diesem Fall sollten
        Sie alle anderen Feed-Formate deaktivieren, da die Besucher ja nur noch
        den FeedBurner-Feed aufrufen sollen.
    </span>

    <span class="box">
        Wenn Sie die FeedBurner-Option lediglich auf <span class="mbold">Ja</span> gestellt haben,
        bleiben die URLs zu Ihren alten RSS-Feeds weiterhin intakt, sie werden
        lediglich versteckt. Wenn Sie Ihre Besucher aber in Zukunft auch von
        diesen verstecken URLs fernhalten wollen, stellen Sie die
        FeedBurner-Option auf <span class="mbold">Erzwingen</span>. Dadurch wird jeder Aufruf des
        Serendipity-RSS-Feeds automatisch auf die FeedBurner-Feeds umgeleitet.
    </span>

    <span class="box">
        Zu welchem FeedBurner-Feed Serendipity verweist, stellen Sie am Ende der
        Konfigurationsoptionen ein.
    </span>
</span>
</p>

<p class="desc">
<span class="item mbold">E-Mail-Adresse einbinden?</span><!-- menuitem -->
<span class="desc-info">
    <span class="box">
        Standardmäßig muss ein RSS-Feed zu jedem Autor eine E-Mail-Adresse
        anzeigen. Dies wird leider gegenwärtig häufig von SPAM-Robotern
        missbraucht, um E-Mail-Adressen im Internet zu sammeln. Daher können Sie
        über die Option <span class="mbold">E-Mail-Adresse einbinden</span> einstellen, ob Ihre
        echte E-Mail-Adresse oder eine vorgetäuschte E-Mail-Adresse (<code>nospam@example.com</code>)
        eingebunden wird.
    </span>

    <span class="box">
        Beachten Sie, dass, wenn Sie im Anti-Spam-Plugin (Seite <span class="pageref"><a href="#spamblock">spamblock</a></span>)
        die gleichnamige Option aktiviert haben, diese ebenfalls die Darstellung der
        E-Mail-Adressen beeinflusst.
    </span>

    <span class="box">
        In abgegrenzten Blogs (im Intranet zum Beispiel) macht die Aktivierung
        dieser Option noch Sinn, beim Einsatz im Internet ist es jedoch
        empfehlenswert, die Option auf <span class="mbold">Nein</span> zu setzen.
    </span>
</span>
</p>

<p class="desc">
<span class="item mbold">Feld "managingEditor"</span><!-- menuitem -->
<span class="desc-info">Der RSS 2.0-Feed ermöglicht die Einbindung eines optionalen Feldes, das
die E-Mail-Adresse des leitenden Redakteurs eines Blogs enthalten kann.
Abonnenten des RSS-Feeds können sich so leicht an den inhaltlich
Verantwortlichen wenden. Auch hier gelten die obigen Bedenken,
dass enthaltene E-Mail-Adressen oft Spammern zum Opfer fallen könnten.</span>
</p>

<p class="desc">
<span class="item mbold">Feld "webMaster"</span><!-- menuitem -->
<span class="desc-info">Analog zu einem inhaltlich Verantwortlichen kann diese Option eine
E-Mail-Adresse des technisch Verantwortlichen enthalten.</span>
</p>

<p class="desc">
<span class="item mbold">Feld "ttl" (time-to-live)</span><!-- menuitem -->
<span class="desc-info">
    <span class="box">
        RSS-Feeds müssen von RSS-Readern regelmäßig abgerufen werden, damit neue
        Artikel gefunden werden können. Üblicherweise wird ein solcher RSS-Reader
        alle 30 oder 60 Minuten (je nach Einstellung Ihrer Besucher) Ihre
        RSS-Feeds abrufen. Sie können über das Feld <span class="mbold">ttl</span> (<em>Gültigkeitsdauer</em>) innerhalb des RSS-Feeds für RSS-Reader vorschlagen,
        wie lange Ihr Feed üblicherweise gültig ist. Diesen eingestellten Wert
        können RSS-Programme dann als Richtlinie für die
        Aktualisierungshäufigkeit benutzen.
    </span>

    <span class="tag-box invisible">
        <span class="inline-tag">Traffic</span>
    </span><!-- tagbox -->
    <span class="box">
        Der <span class="mbold">ttl</span>-Wert wird in Minuten angegeben, wenn Sie also
        üblicherweise nur einen Artikel pro Tag online stellen, können Sie ihn auf 1440
        stellen (entspricht 24 Stunden). Damit können Sie dann möglicherweise einiges an
        Traffic auf Ihrem Webserver sparen, wenn sich die RSS-Reader daran halten.
    </span>
</span>
</p>

<p class="desc">
<span class="item mbold">Feld "pubDate"</span><!-- menuitem -->
<span class="desc-info">Ein RSS-Feed kann ein optionales <span class="mbold">pubDate</span>-Feld enthalten, das
Auskunft über den Erstellungszeitpunkt des letzten Artikels gibt. Dieser
Wert wird von vielen RSS-Readern benutzt, um Aktualisierungen
festzustellen, daher raten wir von der Deaktivierung dieser Option ab.</span>
</p>

<p class="desc">
<span class="item mbold">XML-Button</span><!-- menuitem -->
<span class="desc-info">Neben jedem RSS-Feed wird in der Seitenleiste eine kleine Grafik
angezeigt, die standardmäßig dem Standardsymbol für RSS-Feeds
entspricht. Wenn Sie eine eigene Grafik benutzen wollen, können Sie den
Pfad zu der Grafik in dem Feld <span class="mbold">XML-Button</span> eintragen. Die Grafik
muss sich dabei in Ihrem Template-Verzeichnis befinden, und der hier
eingetragene Pfad muss relativ zu Ihrem Template-Verzeichnis sein. Wenn
die Datei also in
<code>/var/www/example.com/serendipity/templates/meinTemplate/bilder/MeinRSS.gif</code>
liegt, tragen Sie im Konfigurationsfeld <code>bilder/MeinRSS.gif</code> ein.</span>
</p>

<p class="desc">
<span class="item mbold">Bild für den RSS-Feed</span><!-- menuitem -->
<span class="desc-info">
    <span class="box">
        Das RSS 2.0-Format ermöglicht es, ein eigenes Logo für den Feed
        einzutragen. Diese Grafik kann dann von RSS-Readern in der Titelzeile
        oder an anderen Stellen angezeigt werden. Wenn Sie hier nichts eintragen,
        wird standardmäßig das Serendipity-Logo eingebunden.
    </span>

    <span class="box">
        Tragen Sie in diesem Feld die vollständige URL zu einem Bild ein, also
        etwa <code>http://www.example.com/MeinLogo.jpg</code>. Diese Grafikdatei darf
        maximal 144 Pixel breit und 400 Pixel hoch sein. Die genauen Maße
        des Bildes müssen Sie in den beiden darunterliegenden Feldern
        <span class="mbold">Breite des Bildes</span> und <span class="mbold">Höhe des Bildes</span> eintragen.
    </span>
</span>
</p>

<p class="desc">
<span class="item mbold">FeedBurner-ID, Titel, Bildunterschrift und Bild</span><!-- menuitem -->
<span class="desc-info">
    <span class="box">
        Die letzten vier Konfigurationsoptionen betreffen Sie nur, wenn Sie den
        oben erwähnten FeedBurner-Service benutzen. Als <span class="mbold">ID</span> müssen Sie die
        im FeedBurner dargestellte ID Ihres Feeds eintragen, sie entspricht dem
        Namen, den Sie in der URL <code>https://feeds.feedburner.com/ID</code>
        sehen.
    </span>

    <span class="box">
        Wenn Sie den Feedburner-Feed aktiviert haben, wird ein Link dorthin im
        Seitenleisten-Plugin angezeigt. Dieser Link wird begleitet von einem Bild
        und einem Linktitel. Im Feld <span class="mbold">FeedBurner Titel</span> können Sie
        diesen Titel vergeben, der neben der Grafik dargestellt wird. Die Grafikdatei
        müssen Sie mit einer vollständigen URL wie
        <code>https://www.example.com/feedburner.jpg</code> eintragen. Wenn Sie dieses
        Feld leer lassen, sehen Sie eine Standardgrafik, die den Besucherzähler
        darstellt. Im Feld <span class="mbold">FeedBurner Bild-Unterschrift</span> können Sie einen
        Text hinterlegen, der angezeigt wird, wenn Sie mit der Maus über die
        FeedBurner-Grafik fahren. Dort können Sie beispielsweise eine kurze
        Beschreibung eintragen, warum Sie FeedBurner benutzen.
    </span>
</span>
</p>

</section><!-- section.sub end -->

</section><!-- section.index end -->

<section id="S520" class="index">
<span class="s-toc">5.2 - Weitere mitgelieferte Plugins</span>

<h3 class="section" id="weitere-mitgelieferte-plugins">Weitere mitgelieferte Plugins</h3>

<p>Neben den standardmäßig aktivierten Plugins können Sie natürlich auch
weitere Seitenleisten-Plugins installieren. Es folgt eine Liste der
Seitenleisten-Plugins, die bei Serendipity standardmäßig mitgeliefert
werden.</p>

<p>&nbsp;</p>

<section id="serendipity_plugin_authors" class="sub">
<span class="u-toc">5.2.1 - Autoren: serendipity_plugin_authors</span>

<h3 class="subsection" id="autorenserendipity_plugin_authors">Autoren<br>serendipity_plugin_authors</h3>

<p class="tagging invisible">
<span class="tag-box invisible">
    <span class="inline-tag">Plugins!Autoren</span>
    <span class="inline-tag">Plugins!serendipity_plugin_authors</span>
</span>
</p>

<p>Das Plugin <em>Autoren</em> stellt in der Seitenleiste eine Liste aller im
Blog eingetragenen Redakteure dar. Ein Klick auf einen Autor führt dann
zu der Übersicht der von ihm geschriebenen Artikel.</p>

<p>Die Konfigurationsoptionen des Plugins sind:</p>

<p class="desc">
<span class="item mbold">XML-Button</span><!-- menuitem -->
<span class="desc-info">Für jeden Autor steht ein eigener RSS-Feed-Link zur Verfügung, über den
Einträge dieses Autors abonniert werden können. Die Grafik muss sich
dabei in Ihrem Template-Verzeichnis befinden, und der hier eingetragene
Pfad muss relativ zu Ihrem Template-Verzeichnis sein. Wenn die Datei also
in <code>/var/www/example.com/serendipity/templates/meinTemplate/bilder/MeinRSS.gif</code>
liegt, tragen Sie im Konfigurationsfeld <code>bilder/MeinRSS.gif</code> ein.</span>
</p>

<p class="desc">
<span class="item mbold">Ermöglicht Besuchern, Einträge mehrerer Autoren gleichzeitig darzustellen</span><!-- menuitem -->
<span class="desc-info">
    <span class="box">
        Ähnlich wie bei der Liste aller Kategorien, kann in der Liste aller
        Autoren vom Besucher eine Auswahl getroffen werden, welche Artikel er
        dargestellt sehen will. Üblicherweise kann er mit dem Klick auf den Link
        eines Redakteurs nur die Einträge eines einzelnen Redakteurs sehen.
    </span>

    <span class="box">
        Ist die Option <span class="mbold">Ermöglicht Besuchern, Einträge mehrerer Autoren
        gleichzeitig darzustellen</span> aktiviert, wird neben jedem Redakteur ein
        Ankreuzfeld angezeigt, das der Besucher für alle gewünschten Redakteure
        markieren kann, um so die Übersicht der Artikel dieser Redakteursgruppe
        lesen zu können.
    </span>
</span>
</p>

<p class="desc">
<span class="item mbold">Anzahl der Artikel neben dem Autor-Namen anzeigen</span><!-- menuitem -->
<span class="desc-info">Wenn Sie diese Option aktivieren, wird in Klammern hinter dem
Redakteursnamen die Anzahl der von ihm verfassten Artikel angezeigt.
Bitte beachten Sie, dass die Aktivierung dieser Zählung relativ
datenbankintensive Abfragen durchführen muss und daher möglicherweise zu
Geschwindigkeitseinbußen führen kann.</span>
</p>

<p class="desc">
<span class="item mbold">Nur Autoren mit mindestens X Beiträgen anzeigen</span><!-- menuitem -->
<span class="desc-info">Möglicherweise möchten Sie nur aktive Redakteure des Blogs aufführen.
Daher können Sie in dem Eingabefeld eine Mindestzahl an Beiträgen eintragen, die ein
Redakteur geschrieben haben muss, um in der Seitenleiste angezeigt zu
werden. Für diese Option gelten dieselben Performance-Bedenken wie bei
der vorherigen. Sollten Sie eine von beiden aktivieren, wird die
Aktivierung der anderen Option jedoch darüber hinaus keine
weiteren Einbußen zur Folge haben.</span>
</p>

</section><!-- section.sub end -->

<section id="serendipity_plugin_calendar" class="sub">
<span class="u-toc">5.2.2 - Kalender: serendipity_plugin_calendar</span>

<h3 class="subsection" id="kalenderserendipity_plugin_calendar">Kalender<br>serendipity_plugin_calendar</h3>

<p class="tagging invisible">
<span class="tag-box invisible">
    <span class="inline-tag">Plugins!Kalender</span>
    <span class="inline-tag">Plugins!serendipity_plugin_calendar</span>
</span>
</p>

<p>Dieses Plugin wurde mit Serendipity 2.0+ aus der Liste aktiver Plugins gestrichen,
da der Kalender als Artikelnavigation heutzutage kaum noch genutzt wird und als mehr oder weniger nicht mehr zeitgemäß betrachtet wird.</p>

<p>Der Kalender zeigt einen blätterbaren Kalender eines Monats in der
Seitenleiste an. Einzelne Tage des Kalenders können dabei hervorgehoben
werden und zeigen dem Besucher an, dass an diesem Tag ein Blog-Artikel
verfasst wurde. Der aktuelle Tag wird ebenfalls hervorgehoben.</p>

<p>In den Konfigurationsoptionen können Sie den Tag des Wochenanfangs
festlegen und die Anzeige von Artikeln zu einem Tag auf eine spezielle
Kategorie beschränken.</p>

<p>Die Option <span class="mbold">Plugin-Schnittstelle aktivieren</span> können Sie aktivieren,
wenn Sie anderen Plugins erlauben wollen, Tage im Kalender
hervorzuheben. Das Plugin <em>Mein Kalender</em> kann diese Option
beispielsweise benutzen, um Ihre persönlichen Termine anzufügen.</p>

<p>Zuletzt können Sie einstellen, welche Kategorie als Ausgangspunkt
der im Kalender angezeigten Blog-Artikel verwendet wird. Standardmäßig werden
alle Kategorien dafür benutzt, Sie können aber auch eine spezielle Kategorie
auswählen. Wenn der Besucher die Blog-Artikel selbständig auf eine
spezielle Kategorie eingrenzt und das Plugin als Ausgangspunkt <span class="mbold">Alle
Kategorien</span> verwendet, so wird automatisch die aktuelle Kategorie als
Datenquelle zur Kalenderdarstellung eingesetzt.</p>

<p>Die Darstellung erfolgt mittels der Template-Datei
<span class="tag-box invisible">
    <span class="inline-tag">Template-Dateien!plugin_calendar.tpl</span>
</span>
<code>plugin_calendar.tpl</code>, deren
Variablen auf Seite <span class="pageref"><a href="#plugin-calendar-tpl">plugin-calendar-tpl</a></span> erklärt werden.</p>

</section><!-- section.sub end -->

<section id="serendipity_plugin_comments" class="sub">
<span class="u-toc">5.2.3 - Kommentare: serendipity_plugin_comments</span>

<h3 class="subsection" id="kommentareserendipity_plugin_comments">Kommentare<br>serendipity_plugin_comments</h3>

<p class="tagging invisible">
<span class="tag-box invisible">
    <span class="inline-tag">Plugins!Kommentare</span>
    <span class="inline-tag">Plugins!serendipity_plugin_comments</span>
</span>
<span class="label invisible" id="Plugin-Kommentare">Plugin-Kommentare</span>
</p>

<p>Wenn Ihre Besucher Kommentare zu einem Beitrag hinterlassen, können Sie
als Redakteur diese relativ leicht über den Backend-Menüpunkt
<span class="mbold">Kommentare</span> einsehen oder werden sogar per E-Mail darüber
benachrichtigt. Normale Besucher haben diese Möglichkeit nicht und
können daher entweder den RSS-Feed der letzten Kommentare abonnieren oder
müssten jeden Blog-Artikel individuell aufrufen, um sich über neue
Kommentare zu informieren.</p>

<p>Daher bietet das Seitenleisten-Plugin <em>Kommentare</em> eine einfache
Möglichkeit, die letzten Kommentare aller Artikel anzuzeigen und so für
den Besucher übersichtlich einzubinden.</p>

<p>Folgende Konfigurationsoptionen bietet das Plugin, abgesehen vom
Seitenleisten-typischen Titel:</p>

<p class="desc">
<span class="item mbold">Zeilenumbruch</span><!-- menuitem -->
<span class="desc-info">
    <span class="box">
        In der Seitenleiste steht meist nur begrenzt Platz zur Darstellung von
        Text zur Verfügung. Gerade Kommentare können jedoch die zur Verfügung
        stehende Breite übermäßig strapazieren. Daher bietet die Option
        <span class="mbold">Zeilenumbruch</span> die Möglichkeit, den Platzbedarf einzuschränken,
        indem nach einer festgelegten Anzahl von Buchstaben ein harter Zeilenumbruch
        eingefügt wird.
    </span>

    <span class="box">
        Der Zeilenumbruch wird dabei auch Wörter mittendrin trennen, um das Limit
        nicht zu überschreiten. Dies ist notwendig, damit überlange Wörter
        Ihrer Besucher (wie zB. "Coooooooooooooooooooool!") nicht das
        Layout Ihrer Seite sprengen.
    </span>

    <span class="box">
        Leider bereitet der Zeilenumbruch gerade dann Probleme, wenn Besucher
        lange Links posten, die dann auseinandergebrochen werden. Sollte dies bei
        Ihnen häufig vorkommen, können Sie die Buchstabenanzahl des Zeilenumbruchs
        auf eine hohe Zahl wie 999 setzen und dann den Zeilenumbruch dem Browser
        überlassen. Dabei empfiehlt es sich dann, mittels CSS mögliche
        Layoutprobleme zu verhindern. Fügen Sie dazu die Zeile</span>

    <span class="box">
        <span id="pre-style"><code class="php">
            .plugin_comment_body { overflow: scroll }
        </code></span>
    </span>

    <span class="box">
        am Ende der Datei <code>style.css</code> Ihres gewählten Templates hinzu (siehe Kapitel
        <span class="pageref"><a href="#template-css">template-css</a></span>). Dies wird den Browser dazu anweisen, überlange Wörter
        durch Scrollbalken innerhalb der Seitenleiste anzuzeigen und nicht die ganze
        Seitenleiste an die Wortbreite anzupassen.
    </span>
</span>
</p>

<p class="desc">
<span class="item mbold">Zeichen pro Kommentar</span><!-- menuitem -->
<span class="desc-info">Um nicht zu viel Platz zu beanspruchen, werden immer nur die ersten 120
Zeichen eines Kommentars in der Seitenleiste angezeigt. Dies reicht
meistens, um sich als Besucher einen Überblick zu verschaffen und bei
Interesse den vollständigen Kommentar in der Artikel-Detailseite zu
lesen. Im Eingabefeld <span class="mbold">Zeichen pro Kommentar</span> können Sie diese
Zeichenanzahl vorgeben.</span>
</p>

<p class="desc">
<span class="item mbold">Anzahl an Kommentaren</span><!-- menuitem -->
<span class="desc-info">Üblicherweise zeigt das Plugin die letzten 15 Kommentare. Diese Anzahl
können Sie mit dem Eingabefeld <span class="mbold">Anzahl an Kommentaren</span> verändern.</span>
</p>

<p class="desc">
<span class="item mbold">Datumsformat</span><!-- menuitem -->
<span class="desc-info">Zu jedem Kommentar wird das Erstellungsdatum mit angezeigt. Wie dieses
formatiert wird, tragen Sie im Feld <span class="mbold">Datumsformat</span> ein. Die zur
Verfügung stehenden Variablen finden Sie auf
<code>http://php.net/manual/de/function.strftime.php</code>.</span>
</p>

<p class="desc">
<span class="item mbold">Typ</span><!-- menuitem -->
<span class="desc-info">Das Seitenleisten-Plugin kann sowohl Kommentare als auch Trackbacks
anzeigen. Über das Auswahlfeld <span class="mbold">Typ</span> bestimmen Sie diese Art der
Anzeige. So können Sie beispielsweise auch zwei
Kommentar-Seitenleisten-Plugins installieren: eines, das die Trackbacks
anzeigt, und eines, das die Kommentare anzeigt.</span>
</p>

<p class="desc">
<span class="item mbold">Kommentatoren URL anzeigen bei...</span><!-- menuitem -->
<span class="desc-info">Über dieses Auswahlfeld können Sie bestimmen, ob die Homepage der Person, die
den Kommentar hinterlassen hat, in der Seitenleiste angezeigt werden soll. Sie
können wählen, ob die Homepage niemals, nur bei Kommentaren, nur bei Trackbacks
oder bei beidem angezeigt wird.</span>
</p>

</section><!-- section.sub end -->

<section id="serendipity_plugin_entrylinks" class="sub">
<span class="u-toc">5.2.4 - Links des Artikels: serendipity_plugin_entrylinks</span>

<h3 class="subsection" id="links-des-artikelsserendipity_plugin_entrylinks">Links des Artikels<br>serendipity_plugin_entrylinks</h3>

<p class="tagging invisible">
<span class="tag-box invisible">
    <span class="inline-tag">Plugins!Links des Artikels</span>
    <span class="inline-tag">Plugins!serendipity_plugin_entrylinks</span>
</span>
</p>

<p>Das Plugin <em>Links des Artikels</em> wird nur auf Artikel-Detailseiten
angezeigt und bleibt in der Übersichtsseite unsichtbar. Ruft man eine
Detailseite auf, wird in dieser Box eine Übersicht aller im Artikel
enthaltenen Links angezeigt.</p>

<p>Die relevanten Konfigurationsoptionen sind:</p>

<p class="desc">
<span class="item mbold">Top Exits</span><!-- menuitem -->
<span class="desc-info">Ist diese Option aktiviert, werden in dem Seitenleisten-Plugin alle Links
des Beitrags angezeigt.</span>
</p>

<p class="desc">
<span class="item mbold">Top Referrer</span><!-- menuitem -->
<span class="desc-info">Wenn Sie diese Option aktivieren, werden alle auf die Artikel-Detailseite
verweisenden Webseiten aufgeführt.</span>
</p>

<p class="desc">
<span class="item mbold">Anzahl eingehender Links</span><!-- menuitem -->
<span class="desc-info">Mit dieser Option bestimmen Sie, wie viele Links der beiden
Darstellungsmöglichkeiten (Exits, Referrer) jeweils angezeigt werden sollen.</span>
</p>

<p class="desc">
<span class="item mbold">Reihenfolge eingehender Links</span><!-- menuitem -->
<span class="desc-info">Die verwendeten Links (Exits, Referrer) können entweder nach
<span class="mbold">Häufigkeit</span> oder <span class="mbold">Datum</span> sortiert werden. Dies zeigt also
entweder die neuesten oder die populärsten Links am Anfang.</span>
</p>

</section><!-- section.sub end -->

<section id="serendipity_plugin_eventwrapper" class="sub">
<span class="u-toc">5.2.5 - Event-Ausgabe Wrapper: serendipity_plugin_eventwrapper</span>

<h3 class="subsection" id="event-ausgabe-wrapperserendipity_plugin_eventwrapper">Event-Ausgabe Wrapper<br>serendipity_plugin_eventwrapper</h3>

<p class="tagging invisible">
<span class="label invisible" id="ausgabewrapper">ausgabewrapper</span>
<span class="tag-box invisible">
    <span class="inline-tag">Plugins!Event-Ausgabe Wrapper</span>
    <span class="inline-tag">Plugins!serendipity_plugin_eventwrapper</span>
    <span class="inline-tag">Plugins!Unterschied Seitenleisten- und Ereignis-Plugins</span>
</span>
</p>

<p>Das Plugin <span class="mbold">Event-Ausgabe Wrapper</span> ist ein recht spezielles Plugin,
da es die Grenze zwischen Seitenleisten-Plugin und Ereignis-Plugin etwas
aufweicht.</p>

<p>Eigentlich ist es ausschließlich Seitenleisten-Plugins möglich, eine
Ausgabe in der Seitenleiste vorzunehmen. Ereignis-Plugins können nur auf
andere Bereiche und Funktionalitäten von Serendipity Einfluss nehmen, was
wiederum Seitenleisten-Plugins nicht erlaubt ist.</p>

<p>
<span class="tag-box invisible">
    <span class="inline-tag">Plugins!gekoppelt</span>
    <span class="inline-tag">Gekoppelte Plugins</span>
</span><!-- tagbox -->
Seltene Fälle von Ereignis-Plugins bieten jedoch auch die Möglichkeit an,
eine spezielle Ausgabe in der Seitenleiste vorzunehmen. Diese Möglichkeit
wurde eher in frühen Versionen von Serendipity benutzt (zB. vom Plugin
"Link List" oder "Worte ersetzen"). Inzwischen nutzen fast alle Plugins
die einfachere Möglichkeit, ein zugehöriges Seitenleisten-Plugin
(siehe <span class="reference">Gekoppelte Plugins</span> ab Seite
<span class="pageref"><a href="#Gekoppelte Plugins">Gekoppelte Plugins</a></span>)
zu bestimmen und dieses konzeptionelle Problem für Sie als Benutzer
einfacher zu lösen.</p>

<p>Wenn dieses Ausgabe-Wrapper-Plugin von einem anderen benötigt wird, finden Sie
einen Hinweis dazu in dem jeweiligen Plugin.</p>

<p>In der Konfiguration dieses Plugins können Sie das
<span class="mbold">Quell-Ereignis-Plugin</span>, das eingebunden werden soll, über ein
Auswahlfeld bestimmen. Den Titel des Plugins in der Seitenleiste können
Sie ebenfalls in einem Eingabefeld eintragen.</p>

<p>Wenn Sie im Frontend keine Ausgaben zu dem gewählten Ereignis-Plugin
auffinden, bedeutet das lediglich, dass das gewählte Plugin keine
Ausgaben anbietet. Sie können also zB. zwar das Plugin
<em>Textformatierung: Smilies</em> auswählen, da dieses aber den
<em>Event-Ausgabe Wrapper</em> nicht unterstützt, werden Sie keine Ausgabe
sehen.</p>

<p>Für Techniker ist erwähnenswert, dass alles, was dieses Plugin tut, darin
besteht, die <code>generate_content()</code>-Methode eines Ereignis-Plugins
aufzurufen und die Ausgaben dieser Funktion an die für
Seitenleisten-Plugins übliche (gleichbenannte) Methode
<code>generate_content()</code> weiterzureichen. Aus Performance-Gründen (und
Separierungsgründen) gibt es keinen Event-Hook, um ein
Seitenleisten-Plugin zu <em>emulieren</em>.</p>

</section><!-- section.sub end -->

<section id="serendipity_plugin_history" class="sub">
<span class="u-toc">5.2.6 - Geschichte: serendipity_plugin_history</span>

<h3 class="subsection" id="geschichteserendipity_plugin_history">Geschichte<br>serendipity_plugin_history</h3>

<p class="tagging invisible">
<span class="tag-box invisible">
    <span class="inline-tag">Plugins!Geschichte</span>
    <span class="inline-tag">Plugins!serendipity_plugin_history</span>
</span>
<span class="label invisible" id="serendipity-plugin-history">serendipity-plugin-history</span>
</p>

<p>Mit dem Seitenleisten-Plugin <em>Geschichte</em> können Sie im Frontend auf
ältere Artikel Ihres Blogs hinweisen, indem Sie eine (von mehreren
Optionen abhängige) Liste darstellen.</p>

<p class="desc">
<span class="item mbold">Titel</span><!-- menuitem -->
<span class="desc-info">Titel des Seitenleisten Blocks.</span>
</p>

<p class="desc">
<span class="item mbold">Intro, Outro</span><!-- menuitem -->
<span class="desc-info">Sie können vor (<em>Intro</em>, Einführung) und nach (<em>Outro</em>,
Nachwort) der Auflistung der älteren Artikel einen beliebigen Text in die
Ausgabe des Seitenleisten-Plugins aufnehmen, um Ihren Besuchern zu
erklären, warum Sie eine Liste älterer Einträge aufführen. So könnten Sie
als Intro zB. den Text <em>"In einer Galaxie, weit weit entfernt ..."</em>
den Artikeln voranstellen. Obwohl hierfür nur eine kleine
Eingabezeile vorgesehen ist, können Sie hier beliebig langen Text (auch
mit HTML-Formatierung) eintragen.</span>
</p>

<p class="desc">
<span class="item mbold">Überschriftenlänge</span><!-- menuitem -->
<span class="desc-info">Wenn Ihre Artikel öfter besonders lange Überschriften enthalten, würden diese
den Rahmen möglicherweise sprengen. Für diesen Fall können Sie die
Zeichenlänge eines Artikeltitels einschränken.</span>
</p>

<p class="desc">
<span class="item mbold">Vorgefertigter Zeitrahmen</span><!-- menuitem -->
<span class="desc-info">
    <span class="box">
        Standardmäßig zeigt das Plugin Einträge an, die genau vor einem Jahr
        geschrieben wurden. Ist kein solcher Artikel vorhanden, zeigt das Plugin
        keinen Artikel an.</span>

    <span class="box">
        Wenn Sie einen anderen Zeitraum wünschen, können Sie das Auswahlfeld
        <span class="mbold">Vorgefertigter Zeitrahmen</span> auf <span class="mbold">Anderer</span> stellen und die
        darunterliegenden Optionsfelder anpassen.
    </span>
</span>
</p>

<p class="desc">
<span class="item mbold">Mindestalter</span><!-- menuitem -->
<span class="desc-info">Wenn Sie einen eigenen vorgefertigten Zeitrahmen eingestellt haben,
tragen Sie in dieses Feld ein, wie alt ein Artikel mindestens sein muss
(in Tagen gemessen), um in der Ausgabe des Plugins berücksichtigt zu
werden.</span>
</p>

<p class="desc">
<span class="item mbold">Höchstalter</span><!-- menuitem -->
<span class="desc-info">
    <span class="box">
        Analog zu dem Mindestalter eines Artikels können Sie hier das maximale
        Alter eines Eintrages angeben.
    </span>

    <span class="box">
        Wenn Sie als Mindestalter beispielsweise <code>12</code> eintragen und als
        Höchstalter <code>20</code>, würden Sie am 30.06.2007 alle Artikel sehen, die
        zwischen dem 18.06.2007 und dem 10.06.2007 verfasst wurden.
    </span>
</span>
</p>

<p class="desc">
<span class="item mbold">Anzahl der durchlaufenden Jahre</span><!-- menuitem -->
<span class="desc-info">
    <span class="box">
        Setzen Sie die Anzahl der Jahre, die insgesamt durchlaufen werden sollen,
        wenn Sie "Heute vor einem Jahr" als Zeitrahmen ausgewählt haben.
        Standard ist 1 (das aktuelle Jahr).
    </span>

    <span class="box">
        Setzen Sie dafür die voranstehenden "Mindestalter" und "Höchstalter"
        Einträge auf exakt 365 Tage. Bei Auswahl von mehreren Jahren wird die
        ausgegebene History Sidebar Box mitsamt möglichen Intro und Outro aus
        Performancegründen für diesen Tag in der "templates_c/history_daylist.dat"
        Datei gecached.
    </span>
</span>
</p>

<p class="desc">
<span class="item mbold">Maximale Anzahl der Einträge</span><!-- menuitem -->
<span class="desc-info">Beschränkt die Anzahl der Einträge, die in der Seitenleiste angegeben
werden. Wenn Sie mehr als die hier festgelegte Anzahl an Einträgen im
definierten Zeitraum erstellt haben, werden also nur die ersten Artikel
davon angezeigt.</span>
</p>

<p class="desc">
<span class="item mbold">Optionaler Text, für Eintrags Cache von leeren Jahren</span><!-- menuitem -->
<span class="desc-info">Als Platzhalter für Jahre ohne Einträge mit der "Option Anzahl der durchlaufenden Jahre". Beispiel: "Schade! Heute gibt es nichts. Vielleicht Morgen..."</span>
</p>

<p class="desc">
<span class="item mbold">Ganze Einträge</span><!-- menuitem -->
<span class="desc-info">Standardmäßig zeigt das Plugin nur die Überschriften der Artikel des
gewählten Zeitraums an. Wenn Sie diese Option auf <span class="mbold">true</span> stellen,
wird auch der Beitragstext mit angezeigt.</span>
</p>

<p class="desc">
<span class="item mbold">Datum anzeigen</span><!-- menuitem -->
<span class="desc-info">Wenn Sie diese Option auf <span class="mbold">true</span> stellen, wird auch das Datum eines
Artikels angezeigt.</span>
</p>

<p class="desc">
<span class="item mbold">Zeige den Namen des Authors</span><!-- menuitem -->
<span class="desc-info">Den Autorennamen eines Artikels können Sie anzeigen, indem Sie die
Option <span class="mbold">Show author's name</span> auf <span class="mbold">true</span> stellen.</span>
</p>

<p class="desc">
<span class="item mbold">Datumsformat</span><!-- menuitem -->
<span class="desc-info">Sofern Sie die Option <span class="mbold">Datum anzeigen</span> aktiviert haben, können Sie
hier das Datumsformat einstellen. Die zur Verfügung stehenden <span class="mbold">Variablen</span>
finden Sie auf <code>https://www.php.net/manual/de/function.strftime.php</code>,
auch wenn die Funktion an sich inzwischen als <em>Deprecated</em> markiert ist.</span>
</p>

</section><!-- section.sub end -->

<section id="serendipity_plugin_html_nugget" class="sub">
<span class="u-toc">5.2.7 - HTML-Klotz: serendipity_plugin_html_nugget</span>

<h3 class="subsection" id="html-klotzserendipity_plugin_html_nugget">HTML-Klotz<br>serendipity_plugin_html_nugget</h3>

<p class="tagging invisible">
<span class="tag-box invisible">
    <span class="inline-tag">HTMLKlotz@HTML-Klotz</span>
    <span class="inline-tag">Plugins!HTML-Klotz</span>
    <span class="inline-tag">Plugins!serendipity_plugin_html_nugget</span>
</span>
<span class="label invisible" id="htmlnugget">htmlnugget</span>
</p>

<p>Das Plugin namens <em>HTML-Klotz</em> ist wohl das meistunterschätzte
Plugin - sobald man es einmal einzusetzen weiß, ist es aus einem
Blog nicht mehr wegzudenken. Denn mit diesem Plugin können Sie
beliebiges HTML und beliebiges JavaScript in Ihre Seitenleiste einfügen.</p>

<p>Dieses Plugin lässt sich beliebig oft installieren und kann daher
flexibel positioniert werden. Der Einsatz eines HTML-Klotzes macht zudem
Dateiänderungen auf dem Server unnötig, denn alles kann über die
Plugin-Verwaltung eingestellt werden.</p>

<p>Pro HTML-Klotz gelten folgende Konfigurationsoptionen:</p>

<p class="desc">
<span class="item mbold">Titel</span><!-- menuitem -->
<span class="desc-info">Die Überschrift des HTML-Klotzes, die in der Seitenleiste angezeigt wird.
Wenn Sie den Titel leer lassen, wird kein Titel angezeigt. Dies ist
besonders dann hilfreich, wenn Sie ein JavaScript einfügen wollen, das
keine Ausgabe besitzt und sonst nur zur Anzeige eines leeren Klotzes
führen würde.
Der Titel eines Plugins wird zusätzlich in der Plugin-Verwaltung mit
ausgegeben, damit Sie mehrere HTML-Klötze voneinander unterscheiden
können.</span>
</p>

<p class="desc">
<span class="item mbold">Zusätzlicher Informationstext, der auf der Plugin-Oberfläche dargestellt wird</span><!-- menuitem -->
<span class="desc-info">In diesem Eingabefeld können Sie eine kleine Beschreibung angeben, die in
der Plugin-Verwaltung neben jedem HTML-Klotz angezeigt wird. Dies ist
besonders hilfreich in Fällen, bei denen ein HTML-Klotz ohne Titel
angelegt wurde.</span>
</p>

<p class="desc">
<span class="tag-box invisible">
    <span class="inline-tag">JavaScript!in der Seitenleiste</span>
    <span class="inline-tag">HTML!in der Seitenleiste</span>
</span><!-- tagbox -->
<span class="item mbold">Inhalt</span>
<span class="desc-info">
    <span class="box">
        In diesem großen Eingabefeld tragen Sie den HTML-Code oder das JavaScript
        ein, das Sie in der Seitenleiste darstellen wollen. Wenn Sie den
        WYSIWYG-Editor in den <span class="mbold">Eigenen Einstellungen</span> aktiviert haben, wird
        hier die vom Eintrags-Editor bekannte Oberfläche angezeigt.
    </span>

    <span class="box">
        Beachten Sie, dass der WYSIWYG-Editor intern bereits HTML-Code speichert.
        Würden Sie in ein WYSIWYG-Editor-Fenster HTML-Code eintragen, würde dies
        später im Frontend "gedoppelt" angezeigt werden. Für eigenes HTML oder
        JavaScript gilt daher, entweder den WYSIWYG-Editor vorübergehend zu
        deaktivieren oder im Quelltext-Modus des Editors zu arbeiten.
    </span>
</span>
</p>

<p class="desc">
<span class="tag-box invisible">
    <span class="inline-tag">Fehler!falsche Darstellung in HTML-Klötzen</span>
</span><!-- tagbox -->
<span class="item mbold">Textformatierung(en) durchführen</span>
<span class="desc-info">
    <span class="box">
        Die Ausgabe des Seitenleisten-Plugins wird auch stark von der Option
        <span class="mbold">Textformatierung(en) durchführen</span> beeinflusst. Ist diese Option
        aktiviert, wird alles, was Sie im HTML-Klotz eingetragen haben, mit
        denselben Textformatierungs-Plugins (siehe Seite
        <span class="pageref"><a href="#Textformatierungs-Plugins">Textformatierungs-Plugins</a></span>) verarbeitet, wie Sie es von ihren Artikeln kennen.
    </span>

    <span class="box">
        Besonders wenn Sie JavaScript oder eigenen HTML-Code in einem HTML-Klotz
        einbinden wollen, müssen Sie unbedingt darauf achten, diese Option auf
        <code>Nein</code> zu setzen. Andernfalls könnten destruktive Textformatierungen
        auf Ihren Code angewendet werden, was dann zu einer Fehldarstellung
        führen würde.
    </span>
</span>
</p>

<p class="desc">
<span class="item mbold">Wo soll dieses Plugin angezeigt werden</span><!-- menuitem -->
<span class="desc-info">
    <span class="box">
        Mit diesem Auswahlfeld legen Sie fest, an welcher Stelle ein HTML-Klotz
        angezeigt werden soll: <span class="mbold">Überall</span>, <span class="mbold">Nur Artikelübersicht</span> oder
        <span class="mbold">Nur Artikel-Detailansicht</span>.
    </span>

    <span class="box">
        Speziellere Möglichkeiten, ein Seitenleisten-Plugin vor bestimmten
        Benutzern zu verstecken, bietet das Plugin <em>Seitenleisten
        verstecken</em> (siehe Seite <span class="pageref"><a href="#sidebarhider">sidebarhider</a></span>).
    </span>
</span>
</p>

</section><!-- section.sub end -->

<section id="serendipity_plugin_quicksearch" class="sub">
<span class="u-toc">5.2.8 - Suche: serendipity_plugin_quicksearch</span>

<h3 class="subsection" id="sucheserendipity_plugin_quicksearch">Suche<br>serendipity_plugin_quicksearch</h3>

<p class="tagging invisible">
<span class="label invisible" id="quicksearch">quicksearch</span>
<span class="tag-box invisible">
    <span class="inline-tag">Plugins!Suche</span>
    <span class="inline-tag">Plugins!serendipity_plugin_quicksearch</span>
</span>
</p>

<p>Das Plugin <em>Suche</em> ist ein simples Seitenleisten-Plugin, das eine
Sucheingabe-Box anzeigt. Dort können Besucher Suchwörter eintragen, um
Artikel zu durchsuchen. Weitere Hinweise zur Volltextsuche finden Sie auf
Seite <span class="pageref"><a href="#Suche">Suche</a></span>.</p>

<p>Dieses Plugin bietet keine Konfigurationsmöglichkeiten an.
Es unterscheidet sich nicht vom Suchformular das einige themes
per se schon selbst eingebaut haben.</p>

</section><!-- section.sub end -->

<section id="serendipity_plugin_recententries" class="sub">
<span class="u-toc">5.2.9 - Aktuelle Einträge: serendipity_plugin_recententries</span>

<h3 class="subsection" id="aktuelle-einträgeserendipity_plugin_recententries">Aktuelle Einträge<br>serendipity_plugin_recententries</h3>

<p class="tagging invisible">
<span class="tag-box invisible">
    <span class="inline-tag">Plugins!aktuelle Einträge</span>
    <span class="inline-tag">Plugins!serendipity_plugin_recententries</span>
</span>
<span class="label invisible" id="recententries">serendipity-plugin-recententries</span>
</p>

<p>Das Plugin <em>Aktuelle Einträge</em> zeigt in der Seitenleiste eine kurze
Übersicht der neuesten Artikel in Ihrem Blog an. Dies ermöglicht eine
konzentrierte Übersicht der Artikel an zentraler Stelle, die ein Besucher
auch dann sieht, wenn er gerade die Detailseite eines Artikels anschaut.</p>

<p>Neben dem üblichen Seitenleisten-Titel und der Anzahl
an Artikeln, die eingebettet werden sollen, bietet das Plugin folgende besonderen
Optionen:</p>

<p class="desc">
<span class="item mbold">Angezeigte Einträge überspringen</span><!-- menuitem -->
<span class="desc-info">
    <span class="box">
        Wenn Sie die Option <span class="mbold">Angezeigte Einträge überspringen</span> auf
        <span class="mbold">Alle Anzeigen</span> stellen, zeigt die Seitenleiste stets die letzten
        aktuellen Einträge. Dies kann jedoch zu einer Dopplung führen, da Sie ja
        auf der Startseite des Frontends bereits die letzten 15 Artikel anzeigen.
    </span>

    <span class="box">
        Wenn Sie also nur die aktuellsten Artikel anzeigen wollen und dabei die
        auf der Startseite bereits angezeigten Einträge überspringen wollen,
        wählen Sie die Option <span class="mbold">Einträge auf der Hauptseite überspringen</span>.
    </span>
</span>
</p>

<p class="desc">
<span class="item mbold">Datumsformat</span><!-- menuitem -->
<span class="desc-info">Zu jedem Artikel wird das Erstellungsdatum angezeigt. Wie dieses
formatiert wird, tragen Sie im Feld <span class="mbold">Datumsformat</span> ein. Die zur
Verfügung stehenden <span class="mbold">Variablen</span> finden Sie auf
<code>https://www.php.net/manual/de/function.strftime.php</code>,
auch wenn die Funktion an sich inzwischen als <em>Deprecated</em> markiert ist.</span>
</p>

<p class="desc">
<span class="item mbold">Kategorie</span><!-- menuitem -->
<span class="desc-info">
    <span class="box">
        Standardmäßig zeigt das Plugin die Artikel aller Kategorien chronologisch
        sortiert an. Wenn Sie jedoch in der Seitenleiste nur die letzten Einträge
        in einer speziellen Kategorie darstellen wollen, können Sie diese
        spezielle Kategorie in dem Mehrfach-Auswahlfeld angeben. Mehrere
        Kategorien können Sie hier auch wählen, indem Sie mit gedrückter
        <em>(Strg/Apfel)</em>-Taste auf die Kategorien klicken.
    </span>

    <span class="box">
        Die Sonderoption <span class="mbold">Übergeordnete Kategorie</span> bedeutet, dass als Quelle für
        die Liste der aktuellen Einträge die Kategorie verwendet wird, die der Besucher
        im Blog gerade aufgerufen hat.
    </span>
</span>
</p>

<p class="desc">
<span class="item mbold">Zeige zufälligen Artikel</span><!-- menuitem -->
<span class="desc-info">Wenn Sie eine zufällige Auswahl von Artikeln darstellen wollen, können Sie
die Option <span class="mbold">Show Random Articles</span> aktivieren. Bei jedem Seitenaufruf
werden dann zufällig andere Artikel in der Seitenleiste angezeigt.</span>
</p>

<p class="desc">
<span class="item mbold">Wo soll dieses Plugin angezeigt werden?</span><!-- menuitem -->
<span class="desc-info">Hier können Sie auswählen, ob die Plugin Ausgabe
nur in der Artikelübersicht, nur in der Artikel-Detailansicht oder Immer (Überall),
gezeigt werden soll.</span>
</p>

</section><!-- section.sub end -->

<section id="serendipity_plugin_remoterss" class="sub">
<span class="u-toc">5.2.10 - Fremder RSS/OPML-Blogroll Feed: serendipity_plugin_remoterss</span>

<h3 class="subsection" id="fremder-rss-opml-blogroll-feedserendipity_plugin_remoterss">Fremder RSS/OPML-Blogroll Feed<br>serendipity_plugin_remoterss</h3>

<p class="tagging invisible">
<span class="tag-box invisible">
    <span class="inline-tag">Plugins!Fremder RSS/OPML-Blogroll Feed</span>
    <span class="inline-tag">Plugins!serendipity_plugin_remoterss</span>
    <span class="inline-tag">Syndication</span>
</span>
<span class="label invisible" id="remoterss">remoterss</span>
</p>

<p>Dieses leicht kryptisch klingende Plugin bietet eine recht einfache
Möglichkeit, die RSS-Feeds fremder Seiten einzubinden.</p>

<p>So können Sie in Ihrer Seitenleiste beispielsweise RSS-Feeds von
Newstickern einbinden oder auch die RSS-Feeds von diversen Webservices
wie del.icio.us oder last.fm einbinden, die Daten von diesem Webserver
anzeigen können.</p>

<p>Das Plugin lässt sich auch mehrfach installieren, so dass Sie beliebig
viele RSS-Feeds einbinden können.</p>

<p>
<span class="tag-box invisible">
    <span class="inline-tag">OPML</span>
    <span class="inline-tag">Blogroll</span>
</span><!-- tagbox -->
Abgesehen von RSS-Feeds sind auch sogenannte OPML-Blogrolls möglich.
OPML-Dateien werden von vielen RSS-Readern erstellt und können Linklisten
enthalten, welche Blogs Sie lesen. Wenn diese OPML-Datei dann in Ihrer
Seitenleiste eingebunden wird, können Sie so relativ leicht automatisch
Ihre Lieblingsblogs auflisten.</p>

<p>Das RSS-Seitenleisten-Plugin agiert grundsätzlich wie ein eigenständiger
RSS-Reader: Ihr Blog wird in einem definierten Zeitraum die RSS-Feeds
selbständig abholen, einbinden und für einen gewissen Zeitraum
zwischenspeichern, um Bandbreite zu sparen. Damit das Plugin
funktionieren kann, gelten dieselben Rahmenbedingungen wie für Spartacus
(siehe Seite <span class="pageref"><a href="#Spartacus">Spartacus</a></span>):
Ihr Server darf nicht von einer Firewall für ausgehende Verbindungen
blockiert werden.</p>

<p>Pro installiertem RSS-Feed-Plugin kann eine Vielzahl an Optionen
eingestellt werden:</p>

<p class="desc">
<span class="item mbold">Feed-Titel</span><!-- menuitem -->
<span class="desc-info">Im Feld <span class="mbold">Feed-Titel</span> stellen Sie ein, wie die Überschrift des
RSS-Feeds innerhalb der Seitenleiste lauten soll.</span>
</p>

<p class="desc">
<span class="item mbold">Typ des Feeds</span><!-- menuitem -->
<span class="desc-info">In diesem Auswahlfeld legen Sie das Format des fremden Feeds fest. Sie
können zwischen RSS und OPML wählen, wobei für RSS-Feeds alle Versionen
von 0.91 bis 2.0 unterstützt werden, und von OPML die (einzig
existierende) Version 1.0.</span>
</p>

<p class="desc">
<span class="item mbold">RSS/OPML-URI</span><!-- menuitem -->
<span class="desc-info">Die Quell-URL des RSS-Feeds (oder des OPML-Feeds) müssen Sie in das Feld
<span class="mbold">RSS-OPML-URI</span> eintragen. Geben Sie dort eine vollständige URL an,
also beispielsweise <code>http://www.example.com/serendipity/rss.php?version=2.0</code>.</span>
</p>

<p class="desc">
<span class="item mbold">RSS-Zielelement</span><!-- menuitem -->
<span class="desc-info">
    <span class="box">
        In einem RSS-Feed stehen mehrere Felder zur Verfügung, die das
        Seitenleisten-Plugin darstellen kann. Im Feld <code>title</code> wird
        beispielsweise der Titel eingebunden, das Feld <code>content</code> enthält den
        Artikelinhalt. Manchmal kann es jedoch sein, dass die Felder für den
        Inhalt <code>content:encoded</code> oder <code>body</code> lauten.
    </span>

    <span class="box">
        Damit das Seitenleisten-Plugin flexibel eingesetzt werden kann, müssen Sie den
        Namen des Feldes angeben, das Serendipity in der Seitenleiste darstellen
        soll. Die Liste der verfügbaren Felder können Sie in der Spezifikation
        des jeweiligen RSS-Formats nachlesen [*]
        <span class="footnote"><i class="fa fa-info-circle"></i> <a href="http://www.rssboard.org/rss-2-0" target="_blank" rel="noopener">http://www.rssboard.org/rss-2-0</a> für RSS 2.0; weitere Links finden
        Sie auf <code>http://de.wikipedia.org/wiki/RSS</code></span><!-- footnote -->. Sie können beliebig
        viele Feldinhalte anzeigen lassen, indem Sie mehrere Felder mittels
        <code>,</code> voneinander trennen.
    </span>

    <span class="box">
        Damit nicht zu viel Platz verschwendet wird, gibt Serendipity
        üblicherweise nur den Titel (<code>title</code>) eines RSS-Feeds an.
    </span>
</span>
</p>

<p class="desc">
<span class="item mbold">Smarty-Templating aktivieren</span><!-- menuitem -->
<span class="desc-info">
    <span class="box">
        Die Darstellung des Feeds in der Seitenleiste kann über die
        Smarty-Template-Datei
        <span class="tag-box invisible">
            <span class="inline-tag">Template-Dateien!plugin_remoterss.tpl</span>
        </span>
        <code>plugin_remoterss.tpl</code> gesteuert werden, wenn die Option
        <span class="mbold">Smarty-Templating aktivieren</span> gewählt wurde. Andernfalls
        benutzt das Plugin für seine Ausgaben die integrierte HTML-Darstellung.
    </span>

    <span class="box">
        Ein Beispiel für eine Template-Datei liegt im Verzeichnis
        <code>plugins/serendipity_plugin_remoterss/plugin_remoterss.tpl</code>. Die dort
        verfügbaren Variablen sind auf Seite <span class="pageref"><a href="#plugin-remoterss.tpl">plugin-remoterss.tpl</a></span>
        dokumentiert.
    </span>

    <span class="box">
        Grundsätzlich sollten Sie die Templating-Option nur dann benutzen, wenn Sie an
        der Standardausgabe Anpassungen vornehmen wollen, die Sie nicht bereits mittels
        CSS-Anpassung oder Konfiguration des Plugins beeinflussen können.
    </span>
</span>
</p>

<p class="desc">
<span class="item mbold">Anzahl der Einträge</span><!-- menuitem -->
<span class="desc-info">Standardmäßig zeigt das Seitenleisten-Plugin alle Einträge/Artikel eines
RSS-Feeds. Wenn Sie aber die Anzahl auf eine gewisse Zahl begrenzen
möchten, können Sie diese hier eintragen.</span>
</p>

<p class="desc">
<span class="item mbold">RSS-Link verwenden</span><!-- menuitem -->
<span class="desc-info">Jeder Artikel eines RSS-Feeds besitzt üblicherweise einen Link, der zu
der Quellseite des Artikels im Original-Blog (oder Webservice) führt.
Falls die Option <span class="mbold">RSS-Link verwenden</span> aktiviert ist, wird dieser
Link in der Ausgabe des Plugins dargestellt.</span>
</p>

<p class="desc">
<span class="tag-box invisible">
    <span class="inline-tag">Sicherheit!fremde RSS-Feeds</span>
    <span class="inline-tag">Sicherheit!XSS</span>
</span><!-- tagbox -->
<span class="item mbold">HTML-Ausgabe escapen</span>
<span class="desc-info">
    <span class="box">
        Es ist möglich (und erlaubt), dass ein Artikel eines (fremden) RSS-Feeds
        HTML-Code enthält. Dies ermöglicht zB. Fettungen und eigene HTML-Links
        in den dargestellten Artikeln.
    </span>

    <span class="box">
        Bei der Darstellung fremder RSS-Feeds könnte dies jedoch zu
        Sicherheitsproblemen führen, denn immerhin kann so auch möglicherweise
        bösartiges JavaScript in Ihrem Blog ausgeführt werden, das bei Ihren
        Besuchern Logindaten oder anderes ausspäht (dies nennt man
        <em>XSS-Angriff</em>).
    </span>

    <span class="box">
        Bei RSS-Feeds, deren Quelle Sie nicht absolut vertrauen, sollten Sie die
        Option <span class="mbold">HTML-Ausgabe escapen</span> unbedingt aktivieren. Wenn Sie jedoch
        RSS-Feeds von vertrauenswürdigen Webservices einbinden (wie etwa Ihre
        Bilderliste von Flickr), dann werden Sie diese Option deaktivieren
        müssen, weil sonst keine Bilder angezeigt würden.
    </span>
</span>
</p>

<p class="desc">
<span class="item mbold">Display Date, Datumsformat</span><!-- menuitem -->
<span class="desc-info">
    <span class="box">
        Jeder Artikel eines RSS-Feeds besitzt üblicherweise ein
        Veröffentlichungsdatum. Wenn Sie dieses zusätzlich unterhalb des
        RSS-Artikels anzeigen wollen, stellen Sie die Option <span class="mbold">Display Date</span>
        auf <span class="mbold">Ja</span>.
    </span>

    <span class="box">
        Die Option <span class="mbold">Datumsformat</span> bezieht sich auf die Formatierung des
        Veröffentlichungsdatums. Die Variablen, die Sie hier benutzen können,
        sind auf <code>http://php.net/manual/de/function.strftime.php</code> zusammengefasst.
    </span>
</span>
</p>

<p class="desc">
<span class="item mbold">Zeichensatz</span><!-- menuitem -->
<span class="desc-info">
    <span class="box">
        Jeder RSS-Feed enthält Artikel in einem speziellen Zeichensatz. Ein
        Großteil der RSS-Feeds ist im <span class="mbold">UTF-8</span>-Zeichensatz verfasst, aber
        einige Feeds (gerade deutsche) enthalten die Artikel im
        <span class="mbold">ISO-8859-1</span>-Zeichensatz.
    </span>

    <span class="box">
        Damit Serendipity fremde Artikel später im Blog mit korrekten
        Sonderzeichen darstellen kann, müssen Sie Serendipity über die Option
        <span class="mbold">Zeichensatz</span> mitteilen, welchen Zeichensatz der RSS/OPML-Feed
        benutzt. Sie können dies manuell relativ leicht herausfinden, indem Sie die fremde
        URL aufrufen und in der XML-Ausgabe nach einer Angabe mit dem Titel
        <span class="mbold">charset</span> in der ersten Zeile der Datei suchen.
    </span>

    <span class="box">
        Leider benutzt Serendipity eine ältere RSS-Bibliothek zum Einlesen der
        RSS-Feeds, daher wird Ihnen diese Aufgabe derzeit noch nicht vom System
        abgenommen.
    </span>
</span>
</p>

<p class="desc">
<span class="label invisible" id="remoterss-linktarget">remoterss-linktarget</span>
<span class="item mbold">Link-Target</span><!-- menuitem -->
<span class="desc-info">
    <span class="box">
        Wenn Sie bei einem Artikel Hyperlinks zulassen (Option <span class="mbold">RSS-Link
        verwenden</span>), wird ein Link standardmäßig im selben Browser-Fenster wie
        Ihr Blog geöffnet. Über das HTML-Attribut namens <code>target</code> kann man
        jedoch auch ein neues Browser-Fenster öffnen, wenn man bei der Option
        <span class="mbold">Link-Target</span> ein <code>_blank</code> einträgt.
    </span>

    <span class="tag-box invisible">
        <span class="inline-tag">Popups</span>
    </span><!-- tagbox -->
    <span class="box">
        Bitte beachten Sie, dass ein solches <code>target=_blank</code> dazu
        führt, dass ein Besucher einen Link nicht so einfach <em>nicht</em> in einem neuen
        Fenster öffnen kann und dass ihn dies möglicherweise stört. Neue
        XHTML-Standards empfehlen daher, auf die Benutzung von <code>target</code> im
        Optimalfall zu verzichten und dem Besucher die volle Kontrolle zu
        überlassen, wie er einen Link in seinem Browser öffnen möchte.
    </span>
</span>
</p>

<p class="desc">
<span class="item mbold">Wann wird der Feed aktualisiert</span><!-- menuitem -->
<span class="desc-info">
    <span class="box">
        Theoretisch würde bei jedem Besuch Ihres Blogs der fremde RSS-Feed neu
        aufgerufen und angezeigt. Da dies viel Bandbreite und auch viel Zeit
        kosten würde, speichert das Plugin die Ausgaben des fremden Feeds für
        einen gewissen Zeitraum. Diesen Zeitraum können Sie über die
        Option <span class="mbold">Wann wird der Feed aktualisiert</span> selber vorgeben, indem Sie
        hier eine Dauer (in Sekunden) eintragen. Standardmäßig wird ein Feed für
        drei Stunden gecached, bevor ein neuer Besucher Ihrer Webseite ihn neu
        erzeugt.
    </span>

    <span class="box">
        Bei besonders häufig aktualisierenden RSS-Feeds können Sie dieses Limit
        natürlich heruntersetzen.
    </span>
</span>
</p>

<p class="desc">
<span class="item mbold">Bullet Image</span><!-- menuitem -->
<span class="desc-info">Falls Sie gerne die einzelnen Artikel eines fremden RSS-Feeds voneinander
trennen wollen, können Sie in dem Feld <span class="mbold">Bullet Image</span> eine beliebige
vollständige URL einer Grafikdatei eintragen. Diese Grafik wird dann nach
jedem Artikel angezeigt.</span>
</p>

<p class="desc">
<span class="item mbold">Textformatierung(en) durchführen</span><!-- menuitem -->
<span class="desc-info">Wenn die Option <span class="mbold">Textformatierung(en) durchführen</span>
aktiviert ist, wird die Ausgabe des RSS-Feeds an alle bei Ihnen installierten
Textformatierungs-Plugins weitergereicht (siehe Seite
<span class="pageref"><a href="#Textformatierungs-Plugins">Textformatierungs-Plugins</a></span>).
Diese können beliebige Umwandlungen vornehmen, die dann auch die Darstellung des
RSS-Feeds beeinflussen.</span>
</p>

</section><!-- section.sub end -->

</section><!-- section.index end -->

<section id="S530" class="index">
<span class="s-toc">5.3 - Auswahl externer Plugins</span>

<h3 class="section" id="auswahl-externer-plugins">Auswahl externer Plugins</h3>

<p>Über die mitgelieferten Plugins hinaus finden Sie auch eine große Auswahl
an Plugins über <code>https://ophian.github.io/plugins/</code>. Eine Auswahl an häufig
genutzten Seitenleisten-Plugins finden Sie auf den folgenden Seiten.</p>

<p>&nbsp;</p>

<section id="serendipity_plugin_category_dhtml_menu" class="sub">
<span class="u-toc">5.3.1 - Category Tree Menu: serendipity_plugin_category_dhtml_menu</span>

<h3 class="subsection" id="category-tree-menuserendipity_plugin_category_dhtml_menu">Category Tree Menu<br>serendipity_plugin_category_dhtml_menu</h3>

<p class="tagging invisible">
<span class="tag-box invisible">
    <span class="inline-tag">Plugins!Category Tree Menu</span>
    <span class="inline-tag">Kategoriebaum darstellen</span>
    <span class="inline-tag">Plugins!serendipity_plugin_category_dhtml_menu</span>
</span>
</p>

<p>Das Standard-Seitenleisten-Plugin zur Darstellung von Kategorien zeigt
diese einfach untereinander aufgelistet an.
Da vielfach die Kategorie-Übersicht als eine Art Menüstruktur des Blogs
benutzt wird, ist diese Darstellung möglicherweise nicht immer die beste.</p>

<p>Das Plugin <em>Category Tree Menu</em> bietet daher eine dynamische
Kategorieansicht an. Auf oberster Ebene werden nur alle Hauptkategorien
angezeigt, alle Unterkategorien werden ausgeblendet und nur durch Klick
auf eine Hauptkategorie wieder angezeigt. So kann man, wie von
Dateimanagern gewohnt, Kategorien platzsparend ein- und ausklappen.</p>

<p>Dieses Plugin benötigt die externe <em>PEAR::HTML_TreeMenu</em>-Bibliothek.
Diese müssen Sie entweder als zentrale PEAR-Bibliothek über
den Server-Provider installieren oder manuell installieren. Dazu
müssen Sie das PEAR-Paket herunterladen [*]
<span class="footnote"><i class="fa fa-info-circle"></i> <a href="http://pear.php.net/package/HTML_TreeMenu" target="_blank" rel="noopener">http://pear.php.net/package/HTML_TreeMenu</a></span><!-- footnote --> und
entpacken. Laden Sie die Datei <code>HTML_TreeMenu-1.2.0/TreeMenu.php</code>
anschließend ins Serendipity-Verzeichnis <code>bundled-libs/HTML/</code> hoch.
Kopieren Sie dann noch die Datei <code>TreeMenu.js</code> und das ganze
Verzeichnis <code>images</code> in Ihr Plugin-Verzeichnis
<code>plugins/serendipity_plugin_category_dhtml_menu</code>.</p>

<p>In den Konfigurationsoptionen des Plugins müssen Sie nun den
vollständigen Pfad zu <code>TreeMenu.js</code> wie auch zum
<code>images</code>-Unterverzeichnis eintragen. Bei der Standardkonfiguration im Beispiel
dieses Buches wäre das also</p>

<pre><code class="txt">
    /serendipity/plugins/serendipity_plugin_dategory_dhtml_menu/images/
</code></pre>

<p>und</p>

<pre><code class="txt">
    /serendipity/plugins/serendipity_plugin_dategory_dhtml_menu/TreeMenu.js
</code></pre>

<p>Nur wenn diese beiden Pfade korrekt eingetragen sind, werden Sie später
im Frontend eine Darstellung der Kategorien sehen. Bei einer
Fehlkonfiguration ist das Seitenleisten-Plugin leer, und Ihr Browser zeigt
möglicherweise eine JavaScript-Fehlermeldung an.</p>

<p>Die Verwendung des <em>Category Tree Menu</em> hat einen großen Nachteil
gegenüber dem vorhandenen <em>Kategorien</em>-Plugin: Es zeigt immer pauschal alle
Kategorien und Unterkategorien an und kann auch keine Leserechte zu
einer Kategorie auswerten. Auch die Darstellung mehrerer Kategorien ist
mit dem Plugin nicht möglich. Daher müssen Sie sich entscheiden, ob diese
Möglichkeiten für Sie kritisch sind. Vielleicht findet sich in zukünftigen
Versionen dieses Plugins ein Entwickler, der beide Plugins miteinander kombiniert?</p>

</section><!-- section.sub end -->

<section id="serendipity_plugin_externalphp" class="sub">
<span class="u-toc">5.3.2 - Externe PHP-Anwendung: serendipity_plugin_externalphp</span>

<h3 class="subsection" id="externe-php-anwendungserendipity_plugin_externalphp">Externe PHP-Anwendung<br>serendipity_plugin_externalphp</h3>

<p class="tagging invisible">
<span class="tag-box invisible">
    <span class="inline-tag">Plugins!Externe PHP-Anwendung</span>
    <span class="inline-tag">Sicherheitsrisiko</span>
    <span class="inline-tag">Include</span>
    <span class="inline-tag">Plugins!serendipity_plugin_externalphp</span>
    <span class="inline-tag">Eigenen PHP-Code darstellen</span>
    <span class="inline-tag">PHPCode@PHP-Code!in der Seitenleiste</span>
</span>
</p>

<p>Oft kann es vorkommen, dass Sie eine bestehende kleine PHP-Anwendung in
Ihrer Seitenleiste einbinden wollen, also beispielsweise einen
Shoutbox-Ersatz, ein Zufallszitat oder auch eigenen Counter-Code.</p>

<p>Grundsätzlich ist es empfehlenswert, solche Anwendungen mit einem eigenen
Seitenleisten-Plugin einzubinden (siehe Seite <span class="pageref"><a href="#pluginapi">pluginapi</a></span> ff.).</p>

<p>Für Fälle, in denen Ihnen das zu kompliziert erscheint, können Sie das
Plugin <em>Externe PHP-Anwendung</em> installieren. Dieses ermöglicht
Ihnen, mit einem PHP-<code>include</code>-Befehl ein anderes PHP-Script auf
Ihrem Server aufzurufen.</p>

<p>Bitte beachten Sie, dass dieses Plugin ein großes Sicherheitsrisiko
darstellt. Daher dürfen nur Administratoren (entsprechend dem
Benutzerrang eines Redakteurs) ein derartiges Plugin einbinden und
konfigurieren.</p>

<p>Eine Einbindung mittels dieses Plugins muss nicht unbedingt bei jedem
beliebigen PHP-Script funktionieren. Wenn das fremde PHP-Script zB.
Datenbankverbindungen kappt, globale Namensräume überschreibt oder mit
von Serendipity genutzten Funktionsnamen kollidiert, kann es zu Problemen
kommen. In einem solchen Fall müssen Sie sich leider an den Autor des
fremden Scripts wenden.</p>

<p>Für Programmierer gilt: Das Plugin setzt den <code>include</code>-Befehl
innerhalb einer Klassenmethode (<code>generate_content()</code>) ein. Globale
Variablen können daher nicht auf die übliche Weise angesprochen werden,
sondern müssen entweder vorher mittels <code>global $variable</code> in den
Namensraum importiert oder zentral via <code>$GLOBALS['variable']</code>
angesprochen werden.</p>

<p>In der Konfiguration des Plugins tragen Sie den vollständigen Pfad zu
einer Datei ein. Benutzen Sie dafür die Verzeichnisstruktur der Datei auf
dem Server, also beispielsweise
<code>/var/www/example.com/andereScripts/meinScript.php</code>. Wenn Ihr Server
die PHP-Option <code>allow_url_fopen</code> aktiviert hat, können Sie anstelle
eines Dateisystem-Pfades auch eine URL eintragen. Wenn Sie eine
URL einbinden, wird lediglich die Ausgabe dieser URL im Plugin
dargestellt - das Script muss also für eine derartige Verwendung
vorgesehen sein.</p>

<p>Die Konfigurationsoption <span class="mbold">Textformatierung(en) durchführen</span> gibt an,
ob die Ausgabe des fremden PHP-Scripts an Textformatierungs-Plugins von
Serendipity weitergereicht werden soll, um die Ausgabe genauso zu
formatieren wie einen redaktionellen Artikel. Die Textformatierungen
richten sich dabei nach den von Ihnen installierten Plugins, also zB.
der Umwandlung von Smiley-Zeichen in echte Grafiken und weitere (siehe
Seite <span class="pageref"><a href="#Textformatierungs-Plugins">Textformatierungs-Plugins</a></span>).</p>

</section><!-- section.sub end -->

<section id="serendipity_plugin_flickr" class="sub">
<span class="u-toc">5.3.3 - Flickr badge: serendipity_plugin_flickrbadge,<br>FLICKR Sidebar-Plugin: serendipity_plugin_flickr</span>

<h3 class="subsection" id="flickr-badge-flickr-sidebar-pluginserendipity_plugin_flickrbadge">Flickr badge, FLICKR Sidebar-Plugin<br>serendipity_plugin_flickrbadge, serendipity_plugin_flickr</h3>

<p class="tagging invisible">
<span class="tag-box invisible">
    <span class="inline-tag">Flickr</span>
    <span class="inline-tag">Plugins!Flickr badge</span>
    <span class="inline-tag">Plugins!serendipity_plugin_flickrbadge</span>
    <span class="inline-tag">Plugins!Flickr Sidebar-Plugin</span>
    <span class="inline-tag">Plugins!serendipity_plugin_flickr</span>
</span>
</p>

<p>Der Webservice <code>http://www.flickr.com/</code> ermöglicht es seinen
Benutzern, eigene Bildergalerien komfortabel zu verwalten. Zudem bietet
Flickr dabei zahlreiche Einbindungsmöglichkeiten über eine Schnittstelle
an.</p>

<p>Serendipity besitzt zwei Seitenleisten-Plugins, mit denen man seine
eigenen Bilder bei Flickr in der Seitenleiste anzeigen kann. Dafür muss
Ihr Webserver natürlich ausgehende Verbindungen zum Flickr-Webserver
erlauben, darf also nicht durch eine Firewall blockiert werden.</p>

<p><em>Flickr badge</em> ist ein aktuelleres Plugin, das PHP5 auf Ihrem
Webserver benötigt und sonst keine weiteren Voraussetzungen besitzt.</p>

<p>Das <em>FLICKR Sidebar-Plugin</em> ist auch auf PHP4-Webservern benutzbar,
dafür müssen Sie aber selbständig eine fremde Bibliothek herunterladen.
Diese Bibliothek nennt sich <code>PEAR::Flickr_API</code> [*]
<span class="footnote"><i class="fa fa-info-circle"></i> <a href="http://code.iamcal.com/php/flickr/readme.htm" target="_blank" rel="noopener">http://code.iamcal.com/php/flickr/readme.htm</a></span><!-- footnote -->. Laden
Sie sich das ZIP-Paket der Bibliothek herunter, entpacken Sie die Datei
<code>API.php</code> aus dem Unterverzeichnis <code>pear/Flickr/</code> und laden Sie sie in
Ihr Serendipity-Verzeichnis <code>bundled-libs</code> hoch. Danach muss sich
also auf Ihrem Server eine Datei <code>bundled-libs/Flickr/API.php</code> in
Ihrem Serendipity-Stammverzeichnis befinden. Diese wird dann von Ihrem
Plugin später eingebunden und verwendet, um mit Flickr zusammenzuarbeiten.
Wenn Ihnen diese Datei fehlt oder Sie sie in ein falsches Verzeichnis
hochgeladen haben, erhalten Sie eine Fehlermeldung in der Seitenleiste,
und das Plugin wird nicht funktionieren.</p>

<p>
<span class="tag-box invisible">
    <span class="inline-tag">Flickr!API-Schlüssel</span>
</span><!-- tagbox -->
In den Konfigurationsoptionen beider Plugins müssen Sie den
Flickr-API-Schlüssel eintragen. Wenn Sie bei Flickr eingeloggt sind,
können Sie diesen unter <code>http://www.flickr.com/services/api/keys/</code>
einfach beantragen und später in der Konfigurationsoberfläche eintragen.</p>

<p>Das <em>Flickr badge</em>-Plugin ermöglicht weiterhin, die Anzahl der
Bilder insgesamt und die Anzahl der dargestellten Bilder pro Zeile
festzulegen.
Dabei werden die chronologisch aktuellsten Bilder
ausgewählt. Das Plugin erstellt selbständig einen Zwischenspeicher
(<em>Cache</em>) der letzten Bilder, der stündlich aktualisiert wird.</p>

<p>Im <em>FLICKR Sidebar</em>-Plugin können Sie einige weiterreichende
Optionen einstellen, die die Größe und das Format der Vorschaubilder
regeln sowie die Möglichkeit geben, die Dauer der Zwischenspeicherung selbst zu
bestimmen.</p>

<p>Welches Plugin Sie wählen, ist hauptsächlich von den Rahmenbedingungen
Ihres Webservers abhängig: Wer über PHP5 verfügt und keine externen
Bibliotheken herunterladen möchte, sollte das <em>Flickr badge</em>-Plugin
verwenden. Wer etwas mehr Flexibilität bei der Bildgröße benötigt, über
kein PHP5 verfügt oder den höheren Installationsaufwand nicht scheut, dem
sei das <em>FLICKR Sidebar</em>-Plugin ans Herz gelegt.</p>

<p>Zuletzt bietet Flickr aber auch noch einen RSS-Feed oder einen
JavaScript-Schnipsel an, die Sie auch mittels des Plugins <em>Fremder
RSS/OPML-Blogroll Feed</em> (Seite <span class="pageref"><a href="#remoterss">remoterss</a></span>)
oder des HTML-Klotzes (Seite <span class="pageref"><a href="#htmlnugget">htmlnugget</a></span>)
anzeigen können. Weitere Hinweise zu den Einbindungsmöglichkeiten
finden Sie auf der Flickr-Seite unter
<code>http://www.flickr.com/services/feeds/</code>.</p>

</section><!-- section.sub end -->

<section id="serendipity_plugin_google_adsense" class="sub">
<span class="u-toc">5.3.4 - AdSense: serendipity_plugin_google_adsense</span>

<h3 class="subsection" id="adsenseserendipity_plugin_google_adsense">AdSense<br>serendipity_plugin_google_adsense</h3>

<p class="tagging invisible">
<span class="tag-box invisible">
    <span class="inline-tag">Google AdSense</span>
    <span class="inline-tag">Plugins!AdSense</span>
    <span class="inline-tag">Geld verdienen</span>
    <span class="inline-tag">Werbung</span>
    <span class="inline-tag">Plugins!AdSense</span>
    <span class="inline-tag">Plugins!serendipity_plugin_google_adsense</span>
</span>
</p>

<p><em>Google AdSense</em> [*]
<span class="footnote"><i class="fa fa-info-circle"></i> <a href="http://www.google.com/adsense" target="_blank" rel="noopener">http://www.google.com/adsense</a></span><!-- footnote --> ist ein
Angebot von Google, mit dem Sie Werbeanzeigen von Googles Werbepartnern
auf Ihrer eigenen Seite einbinden können.</p>

<p>Dabei ruft der Besucher (also NICHT Ihr Server selbst!) ein JavaScript
auf, das eine Liste von Werbeanzeigen (meist abhängig vom Inhalt Ihres
Blogs) darstellt.</p>

<p>Für jeden Klick Ihrer Besucher auf eine solche Werbung erhalten Sie von
Google etwas Geld, das Ihnen ab Erreichen eines Mindestbetrags
überwiesen wird.</p>

<p>Google wählt dabei die Anzeigen der Werbepartner nach meist seriösen
Kriterien aus. Sie sollten sich jedoch gut überlegen, ob Sie auf Ihrem
Blog tatsächlich Werbung einbinden wollen. Bei deutschen Blogs führt dies
zum einen oft dazu, dass Ihr Blog dadurch als <em>kommerzielles
Angebot</em> eingestuft wird und Sie unter diesem Gesichtspunkt für die
Inhalte Ihres Blogs verantwortlich sind. Etwaige Verstöße gegen das
Urheberrecht werden bei kommerziellen Angeboten weitaus härter geahndet,
als es bei privaten Blogs der Fall ist.</p>

<p>Wenn Ihr Blog tatsächlich kommerzieller Natur ist, ist auch hier der
Einsatz von Werbung mit Vorsicht zu genießen. Da Sie nur eingeschränkte Kontrolle
über die angezeigte Werbung haben, könnte es leicht passieren, dass
Werbung der Konkurrenz auf Ihren Seiten eingebunden wird.</p>

<p>Für die Einbindung von Werbung spricht natürlich die finanzielle
Verdienstmöglichkeit - wägen Sie jedoch stets die Nachteile ab und
informieren Sie sich am besten vorher ausführlich über Google AdSense.</p>

<p>Um das JavaScript von Google AdSense einzubinden, bietet Google selbst
bereits ein Tool zur Erzeugung des Codes an. Diesen Code könnten Sie dann
per Kopieren &amp; Einfügen in einen HTML-Klotz (siehe Seite
<span class="pageref"><a href="#htmlnugget">htmlnugget</a></span>) übernehmen.
Der Vorteil des Google-Tools ist, dass Sie dort die Farbe und andere Optionen
zum Aussehen der Werbung einstellen können.</p>

<p>Das <em>Google AdSense</em>-Seitenleisten-Plugin vereinfacht die Einbindung
etwas, indem Sie keinen Code selbst einfügen müssen. Stattdessen tragen
Sie bei der Konfiguration des Plugins lediglich Ihre AdSense-ID ein und
wählen das grobe Anzeigenformat sowie die Anzahl der gewünschten
Werbeanzeigen. Leider ist es aufgrund der Lizenzbedingungen von Google
nicht erlaubt, dass das Plugin Ihnen dieselben Formatierungsmöglichkeiten
wie das Google-Tool anbietet.</p>

<p>Auch vom <em>Google AdSense</em>-Plugin können Sie mehrere verschiedenartig
konfigurierte Plugins installieren und frei in der Seitenleiste
verteilen. Bei der Verwendung mehrerer Werbeblöcke können Sie die
Konfigurationsoption <span class="mbold">Kanal (Channel)</span> dafür benutzen,
unterschiedlich bei Google konfigurierte Werbe-Themenkanäle anzuzeigen.
So könnten Sie in der linken Seitenleiste nur Werbung zu
Lifestyle-Produkten anzeigen und in der rechten Seitenleiste ein anders
konfiguriertes Plugin nur mit Technikprodukten. Gehen Sie jedoch sparsam
mit Werbeblöcken um, da Sie sonst Ihre Besucher vergraulen.</p>

</section><!-- section.sub end -->

<section id="serendipity_plugin_imagesidebar" class="sub">
<span class="u-toc">5.3.5 - Unified Sidebar Image Display: serendipity_plugin_imagesidebar</span>

<h3 class="subsection" id="unified-sidebar-image-displayserendipity_plugin_imagesidebar">Unified Sidebar Image Display<br>serendipity_plugin_imagesidebar</h3>

<p class="tagging invisible">
<span class="tag-box invisible">
    <span class="inline-tag">Gallery</span>
    <span class="inline-tag">Mediathek</span>
    <span class="inline-tag">Plugins!Unified Sidebar Image Display</span>
    <span class="inline-tag">Plugins!serendipity_plugin_imagesidebar</span>
</span>
</p>

<p>Zahlreiche Plugins im Serendipity-Plugin-Archiv ermöglichen die Einbindung
von Bildern in der Seitenleiste.</p>

<p>Das Plugin <em>Unified Sidebar Image Display</em> versucht diese
verschiedenen Plugins unter einem Dach zu vereinen. Anstatt für jede
einzelne Galerie-Software ein eigenständiges Plugin zu installieren,
können Sie mit diesem Plugin direkt mehrere mögliche Bildquellen
auswählen. Davon verblieben ist nur noch die integrierte
<em>Serendipity-Mediathek</em>.</p>

<p><span class="mbold">Inzwischen hat die Realität</span> dieses Plugin in weiten
Teilen überholt. Die einst hervorragende Menalto Galerie zum Beispiel wird schon seit
längerem nicht mehr weiterentwickelt und bei den anderen (Coppermine, ...) genannten Galerien
müsste wahrscheinlich auch ein Plugin Maintainer oder interessierter User erst einmal schauen
wie es damit wirklich heutzutage steht. Trotzdem lassen wir die Pluginbeschreibung erst einmal
wie sie ist, damit sie zum Vorbild für weitere Additionen werden kann.</p>

<p><span class="mbold">So gilt</span>, dass nur noch die Serendipity Mediathek wirklich unterstützt wird.</p>

<p>Nachdem das Plugin installiert wurde, müssen Sie in der Konfiguration
erst festlegen, welche Software als Quelle für Ihre Bilder herangezogen
werden soll. Abhängig von der gewählten Option werden dann weitere
Konfigurationsmöglichkeiten angezeigt, sobald Sie auf den Button
<span class="mbold">Speichern</span> klicken.</p>

<article id="XU" class="subsub">

<header>
    <h4 class="subarticle" id="menalto-gallery-url">Menalto Gallery Url</h4>
</header>

<p>Die <em>Menalto Gallery</em> bietet in ihrer Installation bereits ein
kleines PHP-Script namens <code>block-random.php</code> an, mit dem Sie ein Bild
der Galerie anzeigen können. Je nach Version der Menalto Gallery (1.x
oder 2.x) heißt dieses Script anders, daher müssen Sie vor allem darauf
achten, dem Serendipity-Plugin die richtige Gallery-Version mitzuteilen.</p>

<p>Wenn Sie die Menalto Gallery in ein Unterverzeichnis von Serendipity
installiert haben, kann es möglicherweise zu Problemen mit der
URL-Umformung von Serendipity kommen. Wenn Sie die Option
<code>mod_rewrite</code> in der Serendipity-Konfiguration gewählt haben,
sollten Sie eine <code>.htaccess</code>-Datei im Gallery-Unterverzeichnis
erstellen. Diese sollte den Inhalt</p>

<pre><code class="conf">
    RewriteEngine Off
</code></pre>

<p>haben. Mit
einer solchen Datei können Sie Serendipity dazu bringen, seine eigene
URL-Formung im Gallery-Unterverzeichnis nicht anzuwenden. Sicherlich
sinnvoller ist in den meisten Fällen jedoch, wenn Sie Gallery in ein
eigenständiges Verzeichnis oberhalb des Serendipity-Verzeichnisses
installieren.</p>

<p class="desc">
<span class="item mbold">URL oder Pfad zur Gallery-Installation</span><!-- menuitem -->
<span class="desc-info">Hier müssen Sie die vollständige URL eintragen, die zu Ihrer
Gallery-Installation führt. Das Plugin fügt hier standardmäßig eine URL
zum Blog ein, die Ihnen aber nur als Anhaltspunkt dienen soll.</span>
</p>

<p class="desc">
<span class="item mbold">Anzahl der Zufallsfotos</span><!-- menuitem -->
<span class="desc-info">Mit der Option <span class="mbold">Anzahl der Zufallsfotos</span> legen Sie fest, wie viele
Bilder Ihrer Galerie angezeigt werden sollen. Die Bilder werden dabei vom
Gallery-Script zufällig ausgewählt.</span>
</p>

<p class="desc">
<span class="item mbold">Rotate image time</span><!-- menuitem -->
<span class="desc-info">Jede Darstellung eines Zufallsbildes aus der Galerie wird für einen
gewissen Zeitraum zwischengespeichert, damit in diesem Zeitraum alle
Besucher dasselbe Zufallsbild angezeigt bekommen. Wie lange dieser
Zeitraum (in Minuten) ist, stellen Sie über die Option <span class="mbold">Rotate
image time</span> ein. Die Zahl <code>30</code> würde also bewirken, dass jeweils eine
halbe Stunde lang dasselbe Zufallsbild angezeigt wird.</span>
</p>

<p class="desc">
<span class="item mbold">Welche Version der Gallery-Software benutzen Sie?</span><!-- menuitem -->
<span class="desc-info">
    <span class="box">
        In diesem Auswahlfeld müssen Sie die Versionsnummer der installierten
        Gallery-Anwendung eintragen, da sich die Art der Einbindung danach
        richtet.
    </span>

    <span class="box">
        Wenn Sie über eine Version höher als 2.0 verfügen, können Sie die
        folgenden Konfigurationsoptionen nutzen:
    </span>
</span>
</p>

<p class="desc">
<span class="item mbold">Picture to display</span><!-- menuitem -->
<span class="desc-info">Gallery 2.x ermöglicht es Ihnen, nicht nur ein Zufallsbild anzuzeigen,
sondern auch ein Bild der zuletzt hochgeladenen Dateien (<span class="mbold">Recent</span>),
der meistangesehenen Bilder (<span class="mbold">Most viewed</span>) oder auch eines
gezielten Bildes (<span class="mbold">Specific</span>).</span>
</p>

<p class="desc">
<span class="item mbold">Album ID to show</span><!-- menuitem -->
<span class="desc-info">Standardmäßig zeigt das Plugin die Bilder egal welcher Unteralben an.
Wenn Sie in dieses Eingabefeld die ID eines Albums eintragen, wird nur
dieses Unteralbum berücksichtigt. Die ID eines Albums können Sie in der
Gallery-Oberfläche herausfinden.</span>
</p>

<p class="desc">
<span class="item mbold">Maximum Width of Image</span><!-- menuitem -->
<span class="desc-info">
    <span class="box">
        Das Plugin zeigt das gewünschte Bild als Vorschaugrafik direkt so an, wie
        es die Gallery-Software ausgibt. Wenn Sie eine andere Bildgröße
        benötigen, können Sie die maximale Breite dieses Bildes im Feld
        <span class="mbold">Maximum Width of Image</span> eintragen. Dies bewirkt, dass das jeweilige
        Bild von Ihrem Browser auf diese Größe umgerechnet wird. Der Browser lädt
        dabei das große Bild herunter, daher kann diese Option dazu führen, dass
        das Bild zum einen vom Browser qualitativ minderwertig verkleinert wird
        und zum anderen auch mehr Bandbreite verbraucht.
    </span>

    <span class="box">
        Kurzum: Sie sollten lieber mit der Standardgröße der
        Gallery-Vorschaubilder vorlieb nehmen.
    </span>
</span>
</p>

<p class="desc">
<span class="item mbold">Link Target</span><!-- menuitem -->
<span class="desc-info">Ein Klick auf das dargestellte Bild führt direkt in die Gallery-Anwendung
und öffnet sie im gleichen Browser-Fenster wie Ihr Blog. Wenn Sie dafür
gerne ein neues Browser-Fenster öffnen wollen, können Sie im Feld
<span class="mbold">Link Target</span> das Schlüsselwort <code>_blank</code> eintragen.</span>
</p>

<p class="desc">
<span class="item mbold">Which details should be displayed</span><!-- menuitem -->
<span class="desc-info">Zu jedem dargestellten Bild kann Gallery von sich aus Meta-Informationen
anzeigen. Welche dieser Felder dargestellt werden, können Sie über das
Eingabefeld <span class="mbold">Which details should be displayed</span> regeln. Tragen Sie
dort eine Liste aller gewünschten Schlüsselwörter ein, mit einem Komma
voneinander getrennt. Alle verfügbaren Felder werden neben dem
Eingabefeld erwähnt: <code>title</code> (Bildtitel), <code>date</code>
(Veröffentlichungsdatum), <code>views</code> (Anzahl der Besucher des Bildes),
<code>owner</code> (Eigentümer des Bildes), <code>heading</code> (Bildüberschrift).</span>
</p>

</article>

<article id="XU" class="subsub">

<header>
    <h4 class="subarticle" id="coppermine-database">Coppermine Database</h4>
</header>

<p>Wenn Sie als <span class="mbold">Image Source</span> die Quelle <span class="mbold">Coppermine Database</span>
auswählen, kann das Plugin direkt auf die MySQL-Datenbank der
Coppermine-Gallery zugreifen und deren Bilder anzeigen.</p>

<p>Die Konfigurationsoptionen sind:</p>

<p class="desc">
<span class="item mbold">Server, Prefix, Database, Username, Password</span><!-- menuitem -->
<span class="desc-info">Diese Optionen müssen die Datenbank-Zugangsdaten zu der
Coppermine-Datenbank enthalten.</span>
</p>

<p class="desc">
<span class="item mbold">URL</span><!-- menuitem -->
<span class="desc-info">In der Variable <span class="mbold">URL</span> müssen Sie die volle URL zu Ihrer
Coppermine-Installation eintragen.</span>
</p>

<p class="desc">
<span class="item mbold">Gallery Name</span><!-- menuitem -->
<span class="desc-info">Das Seitenleisten-Plugin bindet einen Link zu Ihrer
Coppermine-Installation ein. Die Beschreibung dieses Links geben Sie über
die Option <span class="mbold">Gallery Name</span> ein.</span>
</p>

<p class="desc">
<span class="item mbold">Usergroup</span><!-- menuitem -->
<span class="desc-info">
    <span class="box">
        Die Coppermine-Galerie kann Zugriffsrechte zu Bildern abhängig von
        Benutzergruppen setzen. So können Sie private und öffentliche Bilder
        voneinander abgrenzen.
    </span>

    <span class="box">
        Das Coppermine-Plugin muss sich also einer bestehenden
        Coppermine-Benutzergruppe zuordnen, damit es weiß, welche Bilder es
        darstellen darf. Wenn Sie im Feld <span class="mbold">Usergroup</span> den Namen einer
        Gruppe eintragen, die Sie bei Coppermine für Mitglieder Ihrer Familie
        vergeben haben, dann könnte das Plugin auch solche Bilder anzeigen. Wenn
        Sie dem Plugin den Namen einer Gastgruppe mitgeben, würden diese Bilder
        fehlen.
    </span>

    <span class="box">
        Standardmäßig gibt das Plugin einfach alle Bilder aus, daher ist die
        Benutzergruppe <span class="mbold">Everybody</span> voreingestellt.
    </span>
</span>
</p>

<p class="desc">
<span class="item mbold">Size</span><!-- menuitem -->
<span class="desc-info">Die Konfigurationsoption <span class="mbold">Size</span> legt fest, wie groß das Vorschaubild
(in Pixel, egal ob Höhe oder Breite) sein soll, das vom Plugin in der
Seitenleiste angezeigt wird.</span>
</p>

<p class="desc">
<span class="item mbold">Thumbnails</span><!-- menuitem -->
<span class="desc-info">Diese Option gibt an, wie viele Bilder angezeigt werden sollen.</span>
</p>

<p class="desc">
<span class="item mbold">Type</span><!-- menuitem -->
<span class="desc-info">Standardmäßig zeigt das Plugin die aktuellsten Bilder (<span class="mbold">Most
Recent</span>). Über die Auswahlfelder der Konfigurationsoption <span class="mbold">Type</span>
können Sie jedoch auch die beliebtesten Bilder (<span class="mbold">Most Viewed</span>) oder
zufällige Bilder (<span class="mbold">Random Images</span>) anzeigen.</span>
</p>

<p class="desc">
<span class="item mbold">Album Link</span><!-- menuitem -->
<span class="desc-info">Wenn Sie diese Option aktivieren, wird unter jedem Bild ein Link zur
Coppermine-Galerie eingebunden.</span>
</p>

<p class="desc">
<span class="item mbold">Gallery Link URL</span><!-- menuitem -->
<span class="desc-info">Am Ende der Bilderübersicht können Sie einen Link einfügen, den Sie mit
diesem Parameter angeben. Der Link zeigt üblicherweise direkt zu Ihrer
Galerie, jedoch können Sie auch zu anderen Stellen verweisen.</span>
</p>

<p class="desc">
<span class="item mbold">Resolve Non-Images</span><!-- menuitem -->
<span class="desc-info">Coppermine ermöglicht es Ihnen, auch Videos oder andere Dateien anstelle
von Bildern zu verwalten. Wenn Sie die Option <span class="mbold">Resolve Non-Images</span>
aktiviert haben, versucht das Plugin solche Dateien ebenfalls in der
Seitenleiste anzuzeigen.</span>
</p>

</article>

<article id="XU" class="subsub">

<header>
    <h4 class="subarticle" id="zooomr-plugin">Zooomr Plugin</h4>
</header>

<p>Im Gegensatz zu den beiden eingangs erwähnten Mediatheken werden
die Bilder bei dieser Datenquelle nicht von Ihrem eigenen Server bezogen,
sondern vom zentralen Zooomr-Server aus eingebunden.</p>

<p>Zooomr stellt dabei einen RSS-Feed zur Verfügung, der Ihre aktuellen
Bilder enthält. Diesem RSS-Feed können Sie eine Reihe von Optionen
mitgeben, die Sie auf der Zooomr-Homepage erfahren können.</p>

<p>In den Konfigurationsoptionen dieses Plugin-Bereichs können Sie ebenfalls
die Größe der Vorschaubilder, die Anzahl der gezeigten Bilder und die
Verlinkungs-Art verändern.</p>

</article>

<article id="XU" class="subsub">

<header>
    <h4 class="subarticle" id="mediathek-serendipity">Mediathek (Serendipity)</h4>
</header>

<p>Natürlich ist es auch möglich, Bilder Ihrer
Serendipity-Mediathek in der Seitenleiste anzuzeigen. Hierfür dient
die Option <span class="mbold">Media Library</span> in den Einstellungen des Plugins.
Folgende Konfigurationsoptionen sind dabei möglich:</p>

<figure id="fig-mediasidebar">
  <a class="lightbox" rel="lightbox" href="media/mediasidebar_dm_de.avif" lg-uid="lg5351" data-fallback="media/mediasidebar_dm_de.webp">
    <picture>
      <source srcset="media/mediasidebar_dm_de.avif" type="image/avif">
      <source srcset="media/mediasidebar_dm_de.webp" type="image/webp">
      <img src="media/mediasidebar_dm_de.png" alt="mediasidebar_dm_de.png" loading="lazy" width="1377" height="1778">
    </picture>
    <figcaption>Abbildung 5.3: Einstellungen für Mediathek</figcaption>
  </a>
</figure>

<p class="desc">
<span class="item mbold">Limit output to only hotlinked images</span><!-- menuitem -->
<span class="desc-info">
    <span class="box">
        Wenn Sie diese Option aktivieren, werden nur die Bilder der
        Mediathek angezeigt, die von fremden Servern stammen.
    </span>

    <span class="box">
        Zur Erinnerung: Serendipity kann Dateien auf Ihren Server
        hochladen, aber auch auf Dateien fremder Server verweisen und diese
        Grafiken oder Dateien trotzdem in der Datenbank vorhalten (<em>Hotlinking</em>).
    </span>
</span>
</p>

<p class="desc">
<span class="item mbold">Hotlink limiting keyword</span><!-- menuitem -->
<span class="desc-info">
    <span class="box">
        Wenn Sie die Option <span class="mbold">Limit output to only hotlinked images</span>
        aktivieren, können Sie über das Eingabefeld <span class="mbold">Hotlink limiting
        keyword</span> ein spezielles Schlüsselwort vergeben. Daraufhin zeigt das
        Plugin nur die Bilder, bei denen das Schlüsselwort in der URL der
        Datei vorkommt.
    </span>

    <span class="box">
        Wenn Sie also einen Hotlink auf die Dateien
        <code>http://google.com/logo.jpg</code> und <code>http://yahoo.com/logo.jpg</code> in
        der Mediathek gespeichert haben und als Schlüsselwort
        <span class="mbold">google.com</span> eintragen, werden nur Bilder vom Google.com-Server
        angezeigt. Würden Sie stattdessen <code>logo.jpg</code> eintragen, könnten Sie beide
        Bilder sehen.
    </span>
</span>
</p>

<p class="desc">
<span class="item mbold">Pick a default directory</span><!-- menuitem -->
<span class="desc-info">Mit diesem Auswahlfeld können Sie ein Stammverzeichnis der
Mediathek auswählen, von dem Sie Bilder darstellen wollen.</span>
</p>

<p class="desc">
<span class="item mbold">Output images strictly</span><!-- menuitem -->
<span class="desc-info">Wenn Sie diese Option aktivieren, zeigt das Plugin nur die Bilder an, die
in dem oben konfigurierten Verzeichnis abgespeichert worden sind. Nur
wenn Sie die Option <span class="mbold">Output images strictly</span> deaktiviert haben, werden
auch die Bilder in möglichen Unterverzeichnissen des gewählten
Verzeichnisses dargestellt.</span>
</p>

<p class="desc">
<span class="item mbold">Rotate image time</span><!-- menuitem -->
<span class="desc-info">Jede Darstellung eines Zufallsbildes aus der Mediendatenkbank wird für
einen gewissen Zeitraum zwischengespeichert, damit in diesem Zeitraum
alle Besucher dasselbe Zufallsbild angezeigt bekommen. Über die Option
<span class="mbold">Rotate image time</span> stellen Sie diesen Zeitraum (in Minuten) ein.
Die Zahl <code>30</code> würde also bewirken, dass jeweils eine halbe Stunde
lang dasselbe Zufallsbild angezeigt wird.</span>
</p>

<p class="desc">
<span class="item mbold">Number of images to display</span><!-- menuitem -->
<span class="desc-info">Hiermit steuern Sie die Anzahl der angezeigten Bilder.</span>
</p>

<p class="desc">
<span class="item mbold">Image width</span><!-- menuitem -->
<span class="desc-info">
    <span class="box">
        Serendipity erzeugt Vorschaubilder in der konfigurierten Breite/Höhe
        (siehe Serendipity-Konfiguration auf Seite <span class="pageref"><a href="#vorschaubildgroesse">Vorschaubildgröße</a></span>). Daher
        zeigt auch das Seitenleisten-Plugin standardmäßig die Bilder in genau dieser Breite an.
    </span>

    <span class="box">
        Wenn Sie größere Vorschaubilder in der Seitenleiste sehen wollen, können
        Sie den Browser anweisen, die Bilder selbständig zu vergrößern (oder zu
        verkleinern). Dies führt jedoch immer zu einem Qualitätsverlust, da die
        Datei nicht aufgrund der Originalgröße reduziert wird, sondern immer nur
        das Vorschaubild gestaucht oder gestreckt werden kann. Wenn Sie hier die
        Zahl <code>0</code> eintragen, zeigt das Plugin ein Bild mit der vollen zur
        Verfügung stehenden Breite in der Seitenleiste an.
    </span>
</span>
</p>

<p class="desc">
<span class="item mbold">Behavior of image link</span><!-- menuitem -->
<span class="desc-info">
    <span class="box">
        Mit der Option <span class="mbold">Behavior of image link</span> können Sie einstellen, was
        bei einem Klick des Besuchers auf ein Bild passieren soll. Entweder kann
        dann das große Bild auf derselben Seite angezeigt werden (<span class="mbold">In Page</span>),
        oder das Bild kann in einem Popup-Fenster erscheinen (<span class="mbold">Pop Up</span>).
    </span>

    <span class="box">
        Eine weitere Möglichkeit ist, bei einem Klick auf ein Bild eine fest
        vorgegebene URL aufzurufen (die beispielsweise zu einer statischen Seite
        oder anderem führt). Wenn Sie die Option <span class="mbold">URL</span> auswählen, müssen Sie
        erst die Plugin-Konfiguration speichern (über den Button <span class="mbold">Speichern</span>)
        und können dann im Eingabefeld unter diesem Auswahlfeld die URL
        eintragen.
    </span>

    <span class="box">
        Eine besondere Option stellt die Variante <span class="mbold">Try to link to related
        entry</span> dar. Wenn Sie diese Variante wählen, versucht das Plugin, zu jedem
        Bild einen Blog-Artikel zu finden, in dem das Bild eingesetzt wurde. Wenn
        ein Blog-Artikel gefunden wird, führt der Link dann zu diesem Beitrag.
    </span>

    <span class="box">
        Eine weitere Option namens <span class="mbold">User-Galerie</span> steht hier zur Verfügung,
        wenn Sie das Serendipity-Plugin <em>serendipity_event_usergallery</em> (siehe
        Seite <span class="pageref"><a href="#usergallery">usergallery</a></span>) installiert haben. Bei der Auswahl dieser Variante
        können Sie nach dem Speichern des Plugins den Permalink der User-Galerie eintragen.
    </span>
</span>
</p>

<p class="desc">
<span class="item mbold">Use with installed Lightbox plugin</span><!-- menuitem -->
<span class="desc-info">
    <span class="box">
        Wenn Sie hier ein HTML-Attribut eintragen, z.B. <code>&lt;rel="lightbox"&gt;</code> für einzelne,
        oder <code>&lt;rel="lightbox[]"&gt;</code> für gruppierte Lightbox-Ansichten (beide ohne &lt;&gt;)
        für die Lightbox-Nutzung mit dem Lightbox-Event-Plugin, werden auch die Bilder
        der Seitenleiste über jene Lightbox gesteuert, bzw bei Klick angezeigt.
    </span>

    <span class="box">
        Dieses Attribut wird in den Bildanker aufgenommen. Es funktioniert nur für die
        "Mediathek" mit der Option <span class="mbold">"Behavior of image link" : "In Page"</span>.
    </span>
</span>
</p>

<p class="desc">
<span class="item mbold">Enter any text (or html) you would like placed before/after the picture</span><!-- menuitem -->
<span class="desc-info">Am Ende der Konfigurationsoptionen finden Sie zwei große
Texteingabebereiche. Hier können Sie einen Text eintragen, der vor und
nach der Bilderübersicht in der Seitenleiste angezeigt wird.</span>
</p>

</article>

</section><!-- section.sub end -->

<section id="serendipity_plugin_shoutbox" class="sub">
<span class="u-toc">5.3.6 - Shoutbox: serendipity_plugin_shoutbox</span>

<h3 class="subsection" id="shoutboxserendipity_plugin_shoutbox">Shoutbox<br>serendipity_plugin_shoutbox</h3>

<p class="tagging invisible">
<span class="tag-box invisible">
    <span class="inline-tag">Plugins!Shoutbox</span>
    <span class="inline-tag">Plugins!serendipity_plugin_shoutbox</span>
</span>
</p>

<p>Besucher können zu Artikeln Ihres Blogs relativ leicht kommentieren. Wenn
sie aber eher abstrakt und Artikel-ungebunden ihre Meinung über Ihr Blog
äußern wollen, ist dies meist nur über ein Kontaktformular oder
Gästebuch möglich.</p>

<p>
<span class="tag-box invisible">
    <span class="inline-tag">Shoutbox</span>
    <span class="inline-tag">Chat</span>
</span><!-- tagbox -->
Eine einfache Alternative dazu bietet das
<em>Shoutbox</em> [*]
<span class="footnote"><i class="fa fa-info-circle"></i> Eine Shoutbox ist die
sprichwörtliche Seifenkiste, auf die man sich gerne einmal stellt, wenn man seine Meinung in die
Welt hinausposaunen möchte.</span><!-- footnote -->-Seitenleisten-Plugin. Es zeigt in der Seitenleiste
eine Eingabebox an, in der Besucher direkt Text eingeben können, der danach
unterhalb der Shoutbox für alle Besucher angezeigt wird.</p>

<p>Als Administrator können Sie direkt im Frontend unpassende Kommentare
löschen. Die Shoutbox zeigt kein Archiv von vergangenen Einträgen an,
sondern immer nur eine konfigurierbare Anzahl von Kommentaren Ihrer
Benutzer. Daher kann dies auch oft als eine Art Echtzeit-Chatbox
zweckentfremdet werden.</p>

<p>Beachten Sie, dass dieses Plugin keinen besonderen Schutz gegen Spam
bietet.</p>

<p>Für die Konfigurationsoptionen gelten dieselben Möglichkeiten wie bei
dem <em>Kommentar</em>-Plugin (Seite <span class="pageref"><a href="#Plugin-Kommentare">Plugin-Kommentare</a></span>).</p>

<p>Das Plugin erstellt die Datenbanktabelle <code>serendipity_shoutbox</code> mit den
Feldern <code>id</code> (fortlaufender Primärschlüssel), <code>timestamp</code> (Datum des
Kommentars), <code>ip</code> (IP des Kommentators) und <code>body</code> (Text).</p>

</section><!-- section.sub end -->

<section id="serendipity_plugin_showentries" class="sub">
<span class="u-toc">5.3.7 - Show Entries in sidebar: serendipity_plugin_showentries</span>

<h3 class="subsection" id="show-entries-in-sidebarserendipity_plugin_showentries">Show Entries in sidebar<br>serendipity_plugin_showentries</h3>

<p class="tagging invisible">
<span class="tag-box invisible">
    <span class="inline-tag">Plugins!Show entries in sidebar</span>
    <span class="inline-tag">Plugins!serendipity_plugin_showentries</span>
    <span class="inline-tag">Blog-Artikel!in der Seitenleiste einbinden</span>
</span>
<span class="label invisible" id="showentries">showentries</span>
</p>

<p>Bereits mittels der Plugins <em>Geschichte</em> (Seite
<span class="pageref"><a href="#serendipity_plugin_history">serendipity_plugin_history</a></span>) und <em>Aktuelle Einträge</em> (Seite
<span class="pageref"><a href="#serendipity_plugin_recententries">serendipity_plugin_recententries</a></span>) können Sie in der
Seitenleiste auf ältere Artikel verweisen.</p>

<p>Mit beiden Plugins ist es jedoch nicht möglich, individuelle
Formatierungen durchzuführen oder die Artikel komplett anzuzeigen. Hier
schafft das Plugin <em>Show Entries in sidebar</em> Abhilfe.</p>

<p>Es ist besonders dann sinnvoll, wenn Sie eine Artikelliste nach eigenen
Vorgaben gestalten wollen oder wenn Sie kurze Einträge einer speziellen
Kategorie anzeigen wollen. Stellen Sie sich vor, Sie schreiben Artikel in
der Kategorie <em>Meine Einkäufe</em> und fassen dort in kurzen Sätzen
zusammen, welche Lebensmittel Sie heute gekauft haben. In der normalen
Artikelübersicht würden solche Einträge womöglich ziemlich leicht
übersehen werden, daher möchten Sie diese Einkäufe in der Seitenleiste
einbinden.</p>

<p>
<span class="tag-box invisible">
    <span class="inline-tag">Moblogging</span>
</span><!-- tagbox -->
Ein weiterer Einsatzzweck des Plugins wird in der Plugin-Beschreibung
erwähnt: <em>Good for Sidebar Moblogging</em>. Moblogging bezeichnet dabei
die Möglichkeit, einen Blog-Artikel via E-Mail zu verfassen und
unterwegs an das eigene Blog zu schicken. Das Blog kann dann mittels
Popfetcher-Plugin (siehe Seite <span class="pageref"><a href="#serendipity_event_popfetcher">serendipity_event_popfetcher</a></span>) die E-Mails von
einem Server abrufen und automatisch importieren und erspart es Ihnen dadurch,
einen Artikel mittels eines Browsers erstellen zu müssen. Derart erstellte
Artikel könnten Sie mit dem hier beschriebenen Plugin <span class="mbold">Show Entries in sidebar</span>
komfortabel und abgesetzt in der Seitenleiste anzeigen.</p>

<p>Auch dieses Plugin ist beliebig oft installierbar und kann daher
für mehrere Seitenleisten-Positionen eingebunden werden.</p>

<p>Das Plugin formatiert die Ausgabe mittels Smarty-Template-Datei <code>plugin_showentries.tpl</code>.
<span class="tag-box invisible">
    <span class="inline-tag">Template-Dateien!plugin_showentries.tpl</span>
</span>
In dieser Datei können Sie auf alle Eintrags-Variablen
(<code>array $entries</code> <span class="icon arrow-right">→</span> <code>array $entry.*</code>) zugreifen und so mit
HTML beliebige Layouts umsetzen. Details zu Smarty-Templates finden Sie
ab Seite <span class="pageref"><a href="#Smarty-Templates">Smarty-Templates</a></span>.</p>

<p>Das Plugin bietet folgende Konfigurationsoptionen:</p>

<p class="desc">
<span class="item mbold">Show how many entries</span><!-- menuitem -->
<span class="desc-info">Diese Einstellung legt fest, wie viele Artikel in der Seitenleiste
angezeigt werden sollen.</span>
</p>

<p class="desc">
<span class="item mbold">Hide entries already displayed on frontpage</span><!-- menuitem -->
<span class="desc-info">
    <span class="box">
        Je nachdem, welche Einträge das Plugin darstellt, kann es passieren, dass
        diese Einträge auch bereits in der Artikel-Übersichtsseite aufgeführt
        sind.
    </span>

    <span class="box">
        Wenn Sie die Option <span class="mbold">Hide entries already displayed on frontpage</span>
        aktivieren, werden solche Einträge nicht nochmal in der Seitenleiste
        angezeigt.
    </span>
</span>
</p>

<p class="desc">
<span class="item mbold">Enter category ID to show</span><!-- menuitem -->
<span class="desc-info">
    <span class="box">
        Im Gegensatz zu vielen anderen Plugins können Sie die Quellkategorie für
        die darzustellenden Einträge nicht aus einem Auswahlfeld wählen, sondern
        müssen die ID/Nummer einer Kategorie manuell in ein Feld eingeben. Für
        das Plugin ist diese Eingabemethode um einiges flexibler, da Sie mehrere
        Kategorie-IDs einfach mittels Semikolon trennen können, um so die
        Einträge mehrerer Kategorien einzubinden.
    </span>

    <span class="box">
        Die ID einer Kategorie können Sie über die Administrationsoberfläche
        <span class="mbold">Kategorien</span> ermitteln (siehe Seite
        <span class="pageref"><a href="#Kategorie-ID ermitteln">Kategorie-ID ermitteln</a></span>).
    </span>
</span>
</p>

<p class="desc">
<span class="item mbold">Show entry title, Show extended entry</span><!-- menuitem -->
<span class="desc-info">Mit diesen beiden Optionen stellen Sie ein, ob der Titel und/oder der
erweiterte Eintrag eines Artikels in der Seitenleiste angezeigt werden
sollen. Das Smarty-Template <code>plugin_showentries.tpl</code> wertet diese
Optionen (<code>bool $showext</code>, <code>bool $showtitle</code>) aus, daher können
Sie eine Einstellung auch direkt in der Smarty-Template-Datei vornehmen.</span>
</p>

</section><!-- section.sub end -->

<section id="serendipity_plugin_topexits" class="sub">
<span class="u-toc">5.3.8 - Top Exits: serendipity_plugin_topexits</span>

<h3 class="subsection" id="top-exitsserendipity_plugin_topexits">Top Exits<br>serendipity_plugin_topexits</h3>

<p class="tagging invisible">
<span class="tag-box invisible">
    <span class="inline-tag">Plugins!Top Exits</span>
    <span class="inline-tag">Plugins!serendipity_plugin_topexits</span>
</span>
</p>

<p>Mittels des Ereignis-Plugins <em>Links verfolgen</em> (siehe Seite
<span class="pageref"><a href="#trackexits">trackexits</a></span>) können Sie dafür sorgen, dass alle Links in Beiträgen
speziell maskiert werden. Wenn ein Besucher dann auf einen solchen Link klickt,
kann Serendipity dies statistisch erfassen.</p>

<p>
<span class="tag-box invisible">
    <span class="inline-tag">Exit-Link</span>
</span><!-- tagbox -->
Einen Link, der auf eine fremde Seite führt und damit das Blog verlässt,
nennt man <em>Exit-Link</em>. Diese formatiert
Serendipity dann wie
<code>http://www.example.com/serendipity/exit.php?url_id=17&amp;entry_id=18</code>.</p>

<p>
<span class="tag-box invisible">
    <span class="inline-tag">Statistik</span>
</span><!-- tagbox -->
Anhand der Statistik können Sie also leicht herausfinden,
welche Links besonders beliebt bei Ihren Besuchern sind. Eben diese Statistik der
beliebtesten Links kann das Seitenleisten-Plugin <em>Top Exits</em>
anzeigen.</p>

<p>Bitte beachten Sie, dass, falls Sie das oben genannte Ereignis-Plugin
nicht installiert haben, Serendipity keine Statistik führt und
daher das Plugin auch keine Daten anzeigen kann.</p>

<p>Die Konfigurationsoptionen sind:</p>

<p class="desc">
<span class="item mbold">Wie viele Elemente sollen angezeigt werden</span><!-- menuitem -->
<span class="desc-info">Üblicherweise werden nur die zehn beliebtesten Links in der Seitenleiste
angezeigt. Mit dieser Option können Sie die Vorgabe verändern.</span>
</p>

<p class="desc">
<span class="item mbold">Top Exits/Referrers als Link anzeigen</span><!-- menuitem -->
<span class="desc-info">
    <span class="box">
        Wenn Sie diese Option auf <span class="mbold">Ja</span> setzen, werden die beliebtesten Links
        in der Seitenleiste so angezeigt, dass die Besucher direkt darauf klicken
        können, um zu der jeweiligen genannten Seite zu gelangen. Ist die Option
        auf <span class="mbold">Nein</span> gestellt, werden die Seiten nur textlich aufgeführt, und
        ein Besucher müsste die URL manuell eingeben.
    </span>

    <span class="box">
        Auch in der globalen Serendipity-Konfiguration (siehe Seite
        <span class="pageref"><a href="#trackreferrer">trackreferrer</a></span>) können Sie dieses Verhalten beeinflussen - wenn diese
        Vorauswahl genutzt werden soll, müssen Sie <span class="mbold">Standard</span> als Option einstellen.
    </span>

    <span class="box">
        Diese Option ist sehr hilfreich, weil Top-Exits seltener von
        Spammern genutzt werden können - denn schließlich sind die hinterlegten
        Links meist nur von Redakteuren in das System eingetragen. Trickreiche
        Spammer können jedoch die Statistik-Routine von Serendipity
        missbrauchen, so dass ihre Seiten auch in die Statistik aufgenommen werden, ohne dass Sie in einem Ihrer Artikel darauf verweisen.
    </span>
</span>
</p>

<p class="desc">
<span class="item mbold">Kalenderintervall</span><!-- menuitem -->
<span class="desc-info">Meist macht die Statistik der beliebtesten Links nur Sinn, wenn sie sich
auf einen gewissen Zeitraum beschränkt. Besucher interessiert womöglich
nicht, welche Seiten seit Eröffnung Ihres Blogs am häufigsten besucht
wurden, sondern eher, welche Links der letzten Zeit interessant waren.
Dafür dient die Option <span class="mbold">Kalenderintervall</span>. Hier tragen Sie den
Zeitraum (in Tagen) ein, der vom aktuellen Besuchsdatum aus gerechnet für
die Datenbasis der Links herangezogen wird.</span>
</p>

</section><!-- section.sub end -->

<section id="serendipity_plugin_topreferrers" class="sub">
<span class="u-toc">5.3.9 - Top Referrer: serendipity_plugin_topreferrers</span>

<h3 class="subsection" id="top-referrerserendipity_plugin_topreferrers">Top Referrer<br>serendipity_plugin_topreferrers</h3>

<p class="tagging invisible">
<span class="tag-box invisible">
    <span class="inline-tag">Plugins!Top Referrer</span>
    <span class="inline-tag">Plugins!serendipity_plugin_topreferrers</span>
</span>
</p>

<p>Ähnlich wie das <em>Top Exits</em>-Plugin zeigt Ihnen das <em>Top
Referrer</em>-Plugin eine Liste an URLs an. Diesmal sind es jedoch nicht die
Links, die Ihre Besucher angeklickt haben, sondern die Webseiten, von
denen aus Besucher zu Ihrem Blog gekommen sind.</p>

<p>
<span class="tag-box invisible">
    <span class="inline-tag">Referrer</span>
</span><!-- tagbox -->
Um dies auszuwerten, bietet jeder Browser die Möglichkeit, die
zuletzt besuchte Seite im Webseitenaufruf mit zu übertragen. Manche Browser oder
auch Proxies Ihrer Besucher verschleiern oder entfernen diese Angabe aus
Datenschutzgründen. Genauso ist es für Spammer möglich, beliebige URLs
als Quellseite vorzutäuschen, daher hat in heutigen Zeiten diese
Statistik oft nur noch ideellen Wert.</p>

<p>Für die Darstellung der Referrer gelten dieselben Optionen wie für das
Top-Exits-Plugin, beziehen sich dabei jedoch auf die Ausgabe der
verweisenden URLs und nicht der beliebtesten Links.</p>

</section><!-- section.sub end -->

</section><!-- section.index end -->
