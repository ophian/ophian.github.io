
<h2 id="chapter-IX">Kapitel 9: Anpassungen / Wartung</h2>
<span class="label invisible" id="Anpassungen">Anpassungen</span>

<p>Früher oder später wird jeder Benutzer von Serendipity zu dem Punkt kommen,
an dem individuelle Anpassungen des Blogs gewünscht sind. Übliche Anpassungen
reichen dabei von der Wahl der Grundfarbe und des Grundlayouts, eigenen
Kopfgrafiken bis hin zu eigenständigen Unterseiten und Funktionalitäten.</p>

<p>Glücklicherweise bietet Serendipity für solche Anpassungen oft mehrere
Möglichkeiten an, und Sie können über unterschiedliche technische Wege Einfluss
nehmen. In den folgenden Abschnitten werden die einzelnen Möglichkeiten dargestellt, die
meist aufeinander aufbauen und zum Ende hin komplexer werden.</p>

<p>&nbsp;</p>

<section id="S910" class="index">
<span class="s-toc">9.1 - Eingebaute Anpassungsmöglichkeiten</span>

<h3 class="section" id="eingebaute-anpassungsmöglichkeiten">Eingebaute Anpassungsmöglichkeiten</h3>

<p>In den vorhergehenden Kapiteln haben Sie bereits gelernt, wie Sie das Aussehen
Ihres Blogs durch die Wahl eines Templates verändern können.</p>

<p>
<span class="tag-box invisible">
    <span class="inline-tag">Template-Optionen</span>
</span>
Seit Serendipity Version 1.1 besitzen Templates die Möglichkeit, Template-abhängige
Optionen festzulegen. Diese Optionen können Sie als Administrator bzw. Redakteur
des Blogs mittels der Template-Verwaltung (siehe Kapitel <span class="reference">Themes verwalten</span>
ab Seite <span class="pageref"><a href="#Themes verwalten">Themes verwalten</a></span>) beliebig anpassen.</p>

<p>
<span class="tag-box invisible">
    <span class="inline-tag">Bulletproof</span>
    <span class="inline-tag">Template-S@Templates!Bulletproof</span>
</span>
<span class="label invisible" id="bpdesc">bpdesc</span> Ab Serendipity 1.2
wurde standardmäßig ein neues Template namens <em>Bulletproof</em> mitgeliefert.
Dieses Template unterscheidet sich in seiner Zielsetzung wesentlich von früheren
Serendipity-Templates. Üblicherweise ist ein Template auf ein spezielles Design
ausgelegt. Dabei legt der Designer des Templates für Sie fest, wie Artikel
dargestellt werden, welche Farben das Template benutzt und vor allem, wie das
Grundlayout ausgelegt ist. Wenn Sie etwas an den Farben ändern möchten, müssen
Sie meist selbst Hand an der Template-Programmierung anlegen, was ohne
Detailkenntnisse vielen Benutzern schwerfällt.</p>

<p>An genau diese Benutzer richtete sich <em>Bulletproof</em>. Es stellte ein
Template-Grundgerüst zur Verfügung, das sich zu jener Zeit an bestmöglicher
Browser-Kompatibilität orientierte. Dieses Grundgerüst können Sie mittels der
Template-Optionen vielfältig gestalten: Sie können Farbschemas auswählen,
bestimmen, wie viele Spalten das Layout besitzt, welche Navigationsleisten Sie
einbinden wollen und auch wie die Blog-Artikel selbst gestaltet sind.</p>

<p>
<span class="tag-box invisible">
    <span class="inline-tag">Framework</span>
    <span class="inline-tag">Kopfgrafiken</span>
    <span class="inline-tag">Headerbild</span>
</span>
Über ein derartiges Baukasten-Prinzip (<em>Framework</em>) können Sie als
Blog-Eigentümer zB. leicht andere Kopfgrafiken einsetzen und sich vor allem
darauf verlassen, dass die Basis des Frameworks browser-übergreifend annähernd gleich aussieht.</p>

<p>Auch das Bulletproof-Template können Sie später über eigene
Programmierung/Anpassungen verändern, wie Abschnitt <span class="reference">templateoptionen</span> ab
Seite <span class="pageref"><a href="#templateoptionen">templateoptionen</a></span> zeigen wird.</p>

<p>Spätere Zeiten fanden das Bulletproof-Template dann mit seinen Unmengen an Konfigurationsmöglichkeiten
als viel zu viel und daher zu unübersichtlich.</p>

<p>
<span class="tag-box invisible">
    <span class="inline-tag">2k11</span>
    <span class="inline-tag">Template-S@Templates!2k11</span>
</span>
Nachdem Bulletproof über viele Jahre daher treu seinen Dienst versehen hatte,
wurde ab Serendipity 1.7 ein neues Standard Theme/Template namens
<span class="mbold"><em>2k11</em></span> ausgeliefert,
welches von nun an bis zum heutigen Tag als <em>“Referenz”</em> und <em>“Fallback”</em>,
sprich <span class="mbold"><em>Standard</em></span>-Theme
per default eingestellt und ausgeliefert wurde.</p>

<p>Dieser eben noch <em>heutige Tag</em> ist <span class="mbold">heute</span> natürlich auch schon wieder längst vorüber. Inzwischen hat
mit <span class="mbold">Serendipity Styx 3.0</span> ein neues Standard Theme namens <span class="mbold">pure</span> Einzug gehalten.
Allerdings zeigt die lange Zeit der Verwendung von 2k11, wie gut diese Theme zur
damaligen Zeit designed war, so dass viele ältere Serendipity Versionen heute noch
Derivate oder es gar selbst einsetzen.</p>

<p><span class="mbold">Serendipity Styx</span> legt Wert auf die Feststellung,
dass das <em>default</em> Theme (Template) maßgeblich für die interne <em>“Fallback”</em>
Kaskade ist. Ein Standard Theme kann alle relevanten Daten natürlich vorhalten,
ganz ersetzen kann es das <em>default</em> Theme aber nicht. Dies ist eine der wichtigen
Unterscheidungen, die die Styx Edition und aktuelle Original S9y Installationen
voneinander unterscheiden. Denn durch die unsaubere, inwischen schleichende Ersetzung des
Default-Themes durch das Standard-Theme fällt dem originalen Serendipity dies bis Heute
immer wieder vor die Füße, war es doch ehemals brilliant vom Kern bis hin zu den einzelnen
Themes und Plugins durchdesignt, so dass man sich auf diese Grundwerte wie bestimmte
serendipity_* CSS styles oder eben Fallback-Prinzipien verlassen konnte.</p>

<p>Abgesehen von den Template-Optionen bietet auch die
Serendipity-Grundkonfiguration (siehe Seite <span class="pageref"><a href="#Konfiguration">Konfiguration</a></span>)
einige Möglichkeiten zur Anpassung der Darstellung Ihres Blogs (beispielsweise
dem Blog-Titel und ob Popup-Fenster verwendet werden sollen).</p>

<p>Über die verfügbaren Plugins zu Serendipity können Sie bereits zahlreiche
Funktionalitäten nachrüsten. Universale Plugins, wie die Einbindung
beliebiger HTML-Texte, JavaScript oder PHP-Dateien (ab Seite <span class="pageref"><a href="#Plugins">Plugins</a></span>),
ermöglichen es Ihnen, leicht Änderungen vorzunehmen, ohne Dateien bearbeiten zu müssen.</p>

<p>&nbsp;</p>

</section><!-- section.index end -->

<section id="S920" class="index">
<span class="s-toc">9.2 - Cascading Style Sheets</span>

<h3 class="section" id="cascading-style-sheets">Cascading Style Sheets</h3>

<p class="tagging invisible">
<span class="label invisible" id="template-css">template-css</span>
<span class="tag-box invisible">
    <span class="inline-tag">CSS</span>
    <span class="inline-tag">Style Sheets</span>
</span>
</p>

<p>Alle Anpassungen des Layouts nimmt man heutzutage mittels der
Formatierungssprache <em>CSS</em> (<em>Cascading Stylesheets</em>) vor.</p>

<p>Ein Stylesheet ist eine Datei, in der eine oder mehrere Anweisungen regeln
können, wie ein HTML-Element dargestellt werden soll. Ein Stylesheet ist
sozusagen eine Ergänzung der HTML-Datei: Die HTML-Datei legt die Struktur eines
Dokumentes fest, und das Stylesheet regelt die Darstellung der Struktur.</p>

<p>Eine derartige Trennung von Inhalt und Aussehen hat zahlreiche Vorteile. Zum
einen entschlackt dies die HTML-Datei, da in dieser nur noch der eigentliche
Inhalt gespeichert wird. Dank dieser Trennung kann dasselbe Dokument abhängig
von der Umgebung, in der es dargestellt wird, unterschiedlich formatiert sein.
Klassisches Beispiel ist die Darstellung des Dokumentes auf dem Bildschirm und
die Ausgabe auf dem Drucker. In der Druckversion kann zB. ein Kommentarformular
versteckt werden, da man es ja ausgedruckt sowieso nicht ausfüllen kann. Auch
kann die Textbreite beim Ausdruck besser auf das Papierformat abgestimmt werden.</p>

<p>Gerade für sehbehinderte Menschen hat diese Trennung des Inhalts und der
Präsentation enorme Vorteile: Sie können selbständig die Schriftgröße
beeinflussen oder sich Texte von einem Lesegerät vorlesen lassen, ohne dass
lästige Navigationselemente den Vorlesevorgang unterbrechen.</p>

<p>Vor allem machen es Stylesheets aber sehr einfach, schnell grafische Änderungen
auszuprobieren. Um die Schriftart der ganzen Seite zu verändern, reicht es,
eine einzige Anweisung einzufügen. In frühen Zeiten des Internets mussten dafür
zahlreiche <code>&lt;font&gt;</code>-Tags einer Datei einzeln überarbeitet werden. Somit sind
Stylesheets also gerade für Designer ein wahrer Segen.</p>

<p>
<span class="tag-box invisible">
    <span class="inline-tag">HTML</span>
</span>
Eine HTML-Datei besteht aus einer Menge von beliebig verschachtelten Elementen,
den sogenannten Tags. Jedes Tag kann eine Reihe von Attributen und einen Inhalt
besitzen. Ein Textabsatz wird beispielsweise so beschrieben:</p>

<pre><code class="html">
    &lt;p&gt;Dies ist ein Absatz.&lt;/p&gt;<br>
    &lt;p&gt;Der zweite Absatz folgt <em>meistens</em> auf den ersten Absatz.&lt;/p&gt;<br>
    &lt;p&gt;&lt;img src="bild.jpg" /&gt;&lt;/p&gt;
</code></pre>

<p>Das Tag für einen Absatz lautet <code>p</code>, und der Absatztext selbst muss von
einem öffnenden <code>&lt;p&gt;</code>-Tag und einem schließenden <code>&lt;/p&gt;</code>-Tag umgeben sein.
Im zweiten Absatz wurde ein weiteres Tag eingesetzt, das eine Zeichenkette
<em>hervorhebt</em>. Auch hier ist jeweils ein öffnendes und ein schließendes Tag
vonnöten.</p>

<p>Es gibt jedoch auch HTML-Tags, die keinen öffnenden/schließenden Teil benötigen,
sondern alleine stehen können. Ein Beispiel für ein solches Tag ist die
Einbindung eines Bildes mittels <code>img</code>. Die XHTML-Syntax erfordert für solche
alleinstehenden Tags, dass diese mit einem <code>/&gt;</code> enden. Anhand des
<code>&lt;img/&gt;</code>-Tags lässt sich auch der Einsatz von HTML-Attributen erläutern. Das Attribut
<code>src</code> enthält den Namen der Bilddatei, die angezeigt werden soll.
Jedes Attribut muss immer durch ein Gleichheitszeichen einen Wert zugewiesen
bekommen, der in einfachen oder doppelten Anführungszeichen zu stehen hat.</p>

<p>Nach diesen Grundprinzipien richten sich alle HTML-Dokumente, wobei es jedoch
wesentlich mehr HTML-Tags als die hier aufgeführten gibt. Mittels einer
Stylesheet-Datei kann man nun das Aussehen der Tags beeinflussen:</p>

<pre><code class="css">
    p {<br>
    &nbsp; font-size: 1.2em;<br>
    }<br>
    <br>
    p em {<br>
    &nbsp;&nbsp; font-weight: bold;<br>
    }
</code></pre>

<p>Diese Syntax unterscheidet sich augenscheinlich von der Art und Weise, wie HTML
programmiert wird. Dennoch haben beide Dateien einen gemeinsamen Nenner,
nämlich die Namen der HTML-Tags sowie deren Verschachtelung.</p>

<p>Obiges Stylesheet würde dafür sorgen, dass unser HTML-Beispiel so ausgegeben
wird, dass die Schriftgröße beider Absätze auf 120% der vom Benutzer
eingestellten Schriftgröße gestellt wird. Das Wort <em>meistens</em> innerhalb
unseres HTML-Beispiels wird dabei fett ausgezeichnet.</p>

<p>Grundsätzlich enthält ein Stylesheet also eine beliebige Anzahl von
Formatierungsanweisungen. Jede Anweisung besteht aus einem Block: Erst folgt die
Angabe, auf welche Elemente eine Formatierung angewandt werden soll
(beispielsweise das <code>p</code>-Tag). Es folgt eine geschweifte Klammer (<code></code>)
und danach eine Auflistung von Formatierungsanweisungen. Der Übersichtlichkeit halber
sollte man jede Formatierungsanweisung in eine eigene Zeile schreiben. Als
Erstes kommt der Name der Formatierungsanweisung (<code>font-size</code>), danach ein
Doppelpunkt und danach ein Wert (<code>1.2em</code>). Das Ende der Zeile wird durch
ein Semikolon (<code>;</code>) markiert. Nach einer beliebigen Anzahl von
Formatierungsanweisungen wird der Block durch eine weitere geschweifte Klammer
(<code class="smarty">}</code>) wieder geschlossen, und es kann ein weiterer Block folgen.</p>

<p>
<span class="tag-box invisible">
    <span class="inline-tag">Cascading</span>
</span>
Der Begriff <code>Cascading</code> bezeichnet eine wichtige Fähigkeit der Stylesheets:
Die jeweiligen Formatierungsausdrücke können <em>vererbt</em> werden. Dazu muss man wissen,
dass die Struktur einer HTML-Seite einer Baumstruktur ähnelt: Die Verschachtelung
einzelner Elemente könnte man grafisch ähnlich darstellen, wie ein Dateimanager
die Verzeichnisstruktur anzeigt.</p>

<p>Es kann also sein, dass ein Absatz im HTML-Dokument sowohl auf oberster Ebene
vorkommt als auch innerhalb eines Unterabschnitts oder eines bestimmten
Containers:</p>


<pre><code class="html">
    &lt;div id="Seite"&gt;<br>
    &nbsp; &lt;div class="abschnitt"&gt;<br>
    &nbsp;&nbsp;&nbsp; &lt;p&gt;Mein erster Abschnitt.&lt;/p&gt;<br>
    &nbsp; &lt;/div&gt;<br>
    &nbsp;<br>
    &nbsp; &lt;div class="abschnitt"&gt;<br>
    &nbsp;&nbsp;&nbsp; &lt;p&gt;Mein zweiter Abschnitt.&lt;/p&gt;<br>
    &nbsp; &lt;/div&gt;<br>
    &nbsp;<br>
    &nbsp; &lt;div class="fusszeile"&gt;<br>
    &nbsp;&nbsp;&nbsp; &lt;p&gt;Seitenende.&lt;/p&gt;<br>
    &nbsp; &lt;/div&gt;<br>
    &lt;/div&gt;
</code></pre>

<p>Anhand dieser Struktur sieht man, dass die Absätze (<code>p</code>-Tags) zwar in
derselben Tiefe (immer als dritte Ebene) verwendet werden, aber jeweils einen
unterschiedlichen Kontext besitzen: Einmal ist der Absatz Teil eines Abschnitts,
aber am Ende ist ein Absatz innerhalb einer Fußzeile gesetzt.</p>

<p>Erst die grafische Umsetzung der HTML-Struktur über ein Stylesheet kann diesen
strukturellen Unterschied sichtbar machen. Denn jeder Formatierungsblock, der
das zu formatierende Element vor der geschweiften Klammer angibt, kann die
hierarchische Einordnung des HTML-Elements wiedergeben:</p>

<pre><code class="css">
    #Seite {<br>
    &nbsp; background-color: white;<br>
    }<br>
    <br>
    .abschnitt {<br>
    &nbsp; border: 1px solid black;<br>
    }<br>
    <br>
    p {<br>
    &nbsp; font-size: 0.8em;<br>
    }<br>
    <br>
    .fusszeile p {<br>
    &nbsp; font-weight: bold;<br>
    }
</code></pre>

<p>&nbsp;</p><!-- separator -->

<p>Wenn man sich jeden Block dieser Formatierungen einzeln ansieht, kann man
die gewünschte Formatierung ablesen:</p>

<p>Der erste Block sorgt dafür, dass der <code>&lt;div
id="Seite"&gt;...&lt;/div&gt;</code> Container der HTML-Struktur mit einer weißen
Hintergrundfarbe gestaltet werden soll. Jeder Stylesheet-Formatierungsblock kann
über das Symbol <code>#</code> eine Formatierung direkt auf einen beliebigen Container
anwenden, der in der HTML-Datei über das Attribut <code>id="..."</code> benannt
wurde, in unserem Fall also <code>Seite</code>. Der zweite Block zeigt eine
Formatierung, die auf einen Container angewendet werden soll, der über das
Attribut <code>class="abschnitt"</code> benannt wurde.</p>

<p>Eine CSS-Datei kann eine Formatierung auf ein HTML-Element also auf dreierlei
Weise festlegen:</p>

<ul class="realList">

    <li><code>p { ... }</code> formatiert ein HTML-Tag anhand des Tag-Namens.</li>

    <li><code>.klasse { ... }</code> formatiert ein HTML-Tag anhand des
    <code>class</code>-Attributes (<code>&lt;div class="klasse"&gt;</code>).</li>

    <li><code>#bezeichner { ... }</code> formatiert ein HTML-Tag anhand des
    <code>id</code>-Attributes (<code>&lt;div id="bezeichner"&gt;</code>).</li>

</ul>

<p>Der Unterschied zwischen <code>id</code> und <code>class</code> liegt lediglich darin, dass
eine ID nur einmalig vergeben werden darf, eine Klasse aber beliebig häufig
Verwendung finden darf.</p>

<p>Das <code>id</code>- und <code>class</code>-Attribut lassen sich innerhalb der HTML-Struktur
nicht nur einem <code>&lt;div&gt;</code>-Container zuweisen, sondern auch direkt einem
<code>&lt;p&gt;</code> oder auch <code>&lt;img&gt;</code>-Element. Man kann es also immer dann verwenden,
wenn man ein beliebiges HTML-Element eindeutig auszeichnen möchte.</p>

<p>Diese eindeutige Auszeichnung ist innerhalb des Stylesheets wichtig, damit man
Formatierungen gezielt auf ein Element zuweisen kann. Dabei ist es nicht
unbedingt erforderlich, dass man jedes zu formatierende Element mit einer
speziellen Klasse benennt, da die Stylesheets wie angesprochen die
<em>Vererbung</em> bzw. <em>Verschachtelung</em> einer Struktur berücksichtigen
können. Dies verdeutlicht das obige Beispiel im vierten Formatierungsblock:</p>

<pre><code class="css">
    .fusszeile p {<br>
    &nbsp; font-weight: bold;<br>
    }
</code></pre>

<p>Diese Formatierung sagt dem Browser: "Mache die Schriftart eines Absatzes
fett, wenn der Absatz innerhalb einer Fußzeile eingesetzt wird".</p>

<p>Jeder Formatierungsblock kann einzelne HTML-Elemente (entweder über deren
Tag-Namen, die Klasse oder die ID) mit einem Leerzeichen voneinander getrennt
angeben und entspricht dabei der Verschachtelung, wie sie später im Dokument
vorzufinden ist.</p>

<p>Wenn also folgende HTML-Struktur gegeben ist:</p>

<pre><code class="html">
    &lt;div class="seite"&gt;<br>
    &nbsp; &lt;div class="abschnitt"&gt;<br>
    &nbsp;&nbsp;&nbsp;&nbsp; &lt;p class="absatz"&gt;<br>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Mein <em>Einsatz</em>.<br>
    &nbsp;&nbsp;&nbsp;&nbsp; &lt;/p&gt;<br>
    &nbsp; &lt;/div&gt;<br>
    &lt;/div&gt;
</code></pre>

<p>dann könnte man gezielt das Wort <em>Einsatz</em> über folgende CSS-Anweisung
formatieren:</p>

<pre><code class="css">
    .seite .abschnitt .absatz em {<br>
    &nbsp; font-weight: bold;<br>
    }
</code></pre>

<p>&nbsp;</p><!-- separator -->

<p>Anhand dieses Beispiels kann man auch gut verdeutlichen, dass eine
derart komplexe Formatierungskette gar nicht unbedingt notwendig wäre.
Denn die CSS-Anweisung:</p>

<pre><code class="css">
    em {<br>
    &nbsp; font-weight: bold;<br>
    }
</code></pre>

<p>würde das obige Beispiel exakt gleich formatieren. Achten Sie also später beim
Einsatz von CSS immer darauf, es nicht unnötig kompliziert zu machen. Überlegen
Sie sich, anhand welcher Struktur Sie das zu formatierende Element bereits
gezielt <em>herauspicken</em> können.</p>

<p>Mittels CSS-Anweisungen können Sie Elemente auch beliebig oft formatieren, da
der Browser ein Element anhand aller zutreffenden Formatierungsanweisungen
darstellt. Gegeben sei folgender HTML-Code:</p>

<pre><code class="html">
    &lt;div class="Seite"&gt;<br>
    &nbsp; &lt;p&gt;Mein Absatz.&lt;/p&gt;<br>
    &lt;/div&gt;
</code></pre>

<p>sowie folgende CSS-Anweisungen:</p>

<pre><code class="css">
    .Seite {<br>
    &nbsp; color: red;<br>
    }<br>
    <br>
    p {<br>
    &nbsp; font-size: 1.2em;<br>
    }
</code></pre>

<p>Obwohl Sie die Farbe Rot nur dem Container <code>.Seite</code> zugewiesen haben,
wird diese Farbe auch auf den Absatz angewendet, da dieser Teil des
Seiten-Containers ist. Sie müssen also die Farbe nicht extra der
Formatierungsanweisung für den Absatz zuweisen.</p>

<p>Abgesehen von diesen grundsätzlichen Strukturen bietet CSS noch einige spezielle
Möglichkeiten an, die den Rahmen dieses Buches deutlich sprengen würden.[*]
<span class="footnote"><i class="fa fa-info-circle"></i> Wenn
Sie diese Thematik interessiert, sollten Sie sich mit Büchern wie
<em>Webdesign mit CSS</em> von Vladimir Simovic und Jan Heinicke
oder Online-Werken wie SelfHTML (<code>https://wiki.selfhtml.org/wiki/CSS</code>) vertraut
machen.</span><!-- footnote -->
</p>

<section id="U921" class="sub">
<span class="u-toc">9.2.1 - CSS-Anweisungen in Serendipity-Templates</span>

<h3 class="subsection" id="css-anweisungen-in-serendipity-templates">CSS-Anweisungen in Serendipity-Templates</h3>

<p>CSS-Formatierungen sind auch bei Serendipity ein integraler Bestandteil von
Templates. In der Datei <code>style.css</code> eines jeden Template-Verzeichnisses
liegen alle notwendigen CSS-Anweisungen, die auf die HTML-Ausgabe des Blogs
angewendet werden. Diese CSS-Datei können Sie natürlich bearbeiten, um
individuelle Formatierungen zu erreichen.</p>

<p>Die meisten Serendipity-Templates sind von einem Standard-Template abgeleitet,
so dass die meisten Klassennamen der HTML-Elemente trotz unterschiedlicher
Templates gleich benannt sind. Die meisten dieser Klassennamen sind über das
Präfix <code>serendipity_</code> eindeutig benannt, so dass Sie über CSS-Anweisungen
gezielt die Ausgabe eines Templates oder Plugins beeinflussen können.</p>

<p>Jedes Plugin der Seitenleiste ist üblicherweise in einen selbständig benannten
HTML-Container eingebunden, damit Sie jedes Seitenleisten-Plugin individuell
formatieren können:</p>

<pre><code class="html">
    &lt;div id="serendipityLeftSideBar"&gt;<br>
    &nbsp; &lt;div class="serendipitySideBarItem &nbsp;<br>
    &nbsp;&nbsp; container_serendipity_plugin_categories"&gt;<br>
    &nbsp;&nbsp;&nbsp; &lt;h3 class="serendipitySideBarTitel<br>
    &nbsp;&nbsp;&nbsp;&nbsp; serendipity_plugin_categories"&gt;Titel&lt;/h3&gt;<br>
    &nbsp;&nbsp;&nbsp; &lt;div class="serendipitySideBarContent"&gt;...&lt;/div&gt;<br>
    &nbsp; &lt;/div&gt;<br>
    &lt;/div&gt;
</code></pre>

<p>
<span class="tag-box invisible">
    <span class="inline-tag">Seitenleisten-Plugins!Layout anpassen</span>
</span>
Wenn Sie beispielsweise alle Links der Kategorien-Ausgabe in der Seitenleiste
grün einfärben wollen, könnten Sie dies mit der folgenden CSS-Regel erreichen:</p>

<pre><code class="css">
    .container_serendipity_plugin_categories a {<br>
    &nbsp; color: green;<br>
    }
</code></pre>

<p>Eine Auflistung aller CSS-Klassen ist an dieser Stelle leider nicht möglich,
da diese Klassen abhängig vom eingesetzten Template und dessen HTML-Ausgabe sind.
Wenn Sie also eine Anpassung vornehmen wollen, müssen Sie die entsprechenden
eingesetzten HTML-Klassen im Quelltext des jeweiligen Templates nachschlagen.</p>

<p>Auch wenn hier nicht alle CSS-Klassen aufgeführt werden können, haben sich mit
der neuen Referenz des <em>2k11</em>-Standard-Themes doch auch einige Elemente geändert.
(zB. wurde mit Serendipity 2.0 das ehemalige Schema <em>“serendipity_klassenname”</em>
für solche Klassen nicht immer konsequent durchgehalten, zB mit den neuen
<code>msg_*</code>-Klassen. Leider muss dies auch für die überaus wichtigen Schemas
<code>content</code>, <code>serendipityRightSideBar</code>, <code>serendipityLeftSideBar</code>
gesagt werden, die zB. in sidebarhider teils direkte Bezugnahmen in Plugins haben. )
</p>

<p>Vergleichsbeispiel - Auszug aus der "default/index.tpl" Datei:</p>

<pre><code class="smarty">{if $is_raw_mode != true}<br>
&lt;div id="serendipity_banner"&gt;<br>
&nbsp;&nbsp;&nbsp;&nbsp;&lt;h1&gt;&lt;a class="homelink1" href="{$serendipityBaseURL}"&gt;{$head_title|default:$blogTitle}&lt;/a&gt;&lt;/h1&gt;<br>
&nbsp;&nbsp;&nbsp;&nbsp;&lt;h2&gt;&lt;a class="homelink2" href="{$serendipityBaseURL}"&gt;{if $view == 'plugin'}{$blogDescription}{else}{$head_subtitle|default:$blogDescription}{/if}&lt;/a&gt;&lt;/h2&gt;<br>
&lt;/div&gt;<br>
<br>
&lt;div id="mainpane"&gt;<br>
&nbsp;&nbsp;&nbsp;&nbsp;&lt;div id="content" valign="top"&gt;{$CONTENT}&lt;/div&gt;<br>
{if $leftSidebarElements &gt; 0}<br>
&nbsp;&nbsp;&nbsp;&nbsp;&lt;div id="serendipityLeftSideBar" valign="top"&gt;{serendipity_printSidebar side="left"}&lt;/div&gt;<br>
{/if}<br>
{if $rightSidebarElements &gt; 0}<br>
&nbsp;&nbsp;&nbsp;&nbsp;&lt;div id="serendipityRightSideBar" valign="top"&gt;{serendipity_printSidebar side="right"}&lt;/div&gt;<br>
{/if}<br>
&lt;/div&gt;<br>
{/if}</code></pre>

<p>In der Entwicklung von Serendipity wurde diese Schema Vorgabe aus Gründen der
Vereinfachung und Modernisierung zum Teil verändert. Damit kann sich aber ein Plugin
(wie schon erwähnt zb. "sidebarhider") auf dieses Schema nicht mehr verlassen, was die
durchgängig strukturellen Möglichkeiten etwas beschränkt. Siehe zum Vergleich das
Serendipity Standard Template "2k11" (vereinfacht) in seiner "index.tpl" Datei:</p>

<pre><code class="smarty">&lt;div id="page" class="clearfix"&gt;<br>
&nbsp;&nbsp;&nbsp;&nbsp;&lt;header id="banner" class="clearfix{if ...} col3{elseif ...} col2l{else} col2r{/if}{if ...} no-nav{/if}"&gt;<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&lt;div id="identity"&gt;<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&lt;a href="{$serendipityBaseURL}"&gt;<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&lt;h1&gt;{$blogTitle}&lt;/h1&gt;<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{if $blogDescription}&lt;p&gt;{$blogDescription}&lt;/p&gt;{/if}<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&lt;/a&gt;<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&lt;/div&gt;<br>
&nbsp;&nbsp;&nbsp;&nbsp;   [ ... ]<br>
&nbsp;&nbsp;&nbsp;&nbsp;&lt;/header&gt;<br>
&nbsp;&nbsp;&nbsp;&nbsp;[ ... ]<br>
&nbsp;&nbsp;&nbsp;&nbsp;&lt;div class="clearfix{if ...} col3{elseif ...} col2l{else} col2r{/if}"&gt;<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&lt;main id="content"{if $template_option.imgstyle != 'none'} class="{$template_option.imgstyle}"{/if}&gt;<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{$CONTENT}<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&lt;/main&gt;<br>
&nbsp;&nbsp;&nbsp;&nbsp;{if $leftSidebarElements &gt; 0}<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&lt;aside id="sidebar_left"&gt;<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&lt;h2 class="visuallyhidden"&gt;{$CONST.TWOK11_SIDEBAR}&lt;/h2&gt;<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{serendipity_printSidebar side="left"}<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&lt;/aside&gt;<br>
&nbsp;&nbsp;&nbsp;&nbsp;{/if}<br>
&nbsp;&nbsp;&nbsp;&nbsp;{if $rightSidebarElements &gt; 0}<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&lt;aside id="sidebar_right"&gt;<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&lt;h2 class="visuallyhidden"&gt;{$CONST.TWOK11_SIDEBAR}&lt;/h2&gt;<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{serendipity_printSidebar side="right"}<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&lt;/aside&gt;<br>
&nbsp;&nbsp;&nbsp;&nbsp;{/if}<br>
&nbsp;&nbsp;&nbsp;&nbsp;&lt;/div&gt;<br>
<br>
&nbsp;&nbsp;&nbsp;&nbsp;&lt;footer id="colophon"&gt;<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&lt;p&gt;2k11&lt;/p&gt;<br>
&nbsp;&nbsp;&nbsp;&nbsp;&lt;/footer&gt;<br>
&lt;/div&gt;</code></pre>

<p>
<span class="tag-box invisible">
    <span class="inline-tag">Developer-Tools</span>
</span>
Dabei helfen die Browser eigenen Developer-Tools enorm, da Sie per Cursor die HTML-Elemente einer Seite auswählen und
direkt alle CSS-Anweisungen zu diesem Element sehen können.
Siehe Anmerkungen zu den Developer-Tools der heutigen Browser unter <span class="pageref"><a href="#Developer-Tools">Developer-Tools</a></span>.</p>

<p>Dennoch hier eine kleine Übersicht über CSS-Klassen, die in vielen Templates
Verwendung finden:</p>

<p class="tagging invisible">
<span class="tag-box invisible">
    <span class="inline-tag">CSS-Variablen</span>
</span>
</p>

<p class="desc citem-desc">
<span class="tag-box invisible">
    <span class="inline-tag">CSS-Variablen!.mainpane@\#mainpane</span>
    <span class="inline-tag">CSS-Variablen!.content@\#content</span>
    <span class="inline-tag">CSS-Variablen!#page</span>
    <span class="inline-tag">CSS-Variablen!#colophon</span>
</span>
<code class="item css">#mainpane</code>, <code class="item css">#content</code>
<span class="desc-info">Enthält in den meisten Templates das Grundgerüst der Seite.</span>
</p>

<p class="desc citem-desc">
<span class="tag-box invisible">
    <span class="inline-tag">CSS-Variablen!.serendipity_banner@\#serendipity_banner</span>
    <span class="inline-tag">CSS-Variablen!#banner</span>
    <span class="inline-tag">CSS-Variablen!#identity</span>
</span>
<code class="item css">#serendipity_banner</code>
<span class="desc-info">Enthält den Seitenkopfbereich, meist mit einem Hintergrundbild. (Siehe Vergleich)</span>
</p>

<p class="desc citem-desc">
<span class="tag-box invisible">
    <span class="inline-tag">CSS-Variablen!.homelink1</span>
    <span class="inline-tag">CSS-Variablen!.homelink2</span>
</span>
<code class="item css">.homelink1</code>, <code class="item css">.homelink2</code>
<span class="desc-info">Enthält innerhalb des Seitenkopfbereichs die Links zu der aktuellen Blog-Seite
bzw. Blog-Übersicht. (Siehe Vergleich)</span>
</p>

<p class="desc citem-desc">
<span class="tag-box invisible">
    <span class="inline-tag">CSS-Variablen!.serendipity_LeftSideBar@\#serendipityLeftSideBar</span>
    <span class="inline-tag">CSS-Variablen!.serendipity_RightSideBar@\#serendipityRightSideBar</span>
    <span class="inline-tag">CSS-Variablen!#sidebar_left</span>
    <span class="inline-tag">CSS-Variablen!#sidebar_right</span>
</span>
<code class="item css">#serendipityLeftSideBar</code>, <code class="item css">#serendipityRightSideBar</code>
<span class="desc-info">
    <span class="box">
        Bezeichnet den Container, der jeweils die Elemente der Seitenleiste(n) enthält. (Siehe Vergleich)
    </span>

    <span class="box">
        In der Entwicklung von Serendipity wurde diese Vorgabe aus Gründen der Vereinfachung
        leider nicht eingehalten, so dass ein Plugin diese Vorgabe nicht mehr ohne Weiteres
        als verlässlich nutzen und setzen kann. (Siehe das Standard Template "2k11" (mit
        <code class="item css">#sidebar_left</code> und
        <code class="item css">#sidebar_right</code>) sowie potentielle Nachfolgetemplates.)
    </span>
</span>
</p>

<p class="desc citem-desc">
<span class="label invisible" id="sidebar-css">sidebar-css</span>
<span class="tag-box invisible">
    <span class="inline-tag">CSS-Variablen!.serendipity_SideBarItem@.serendipitySideBarItem</span>
</span>
<code class="item css">.serendipitySideBarItem</code>
<span class="desc-info">Für jedes Element der Seitenleiste kapselt die Klasse
den jeweiligen Inhalt des Plugins mitsamt dem Titel.</span>
</p>

<p class="desc citem-desc">
<span class="tag-box invisible">
    <span class="inline-tag">CSS-Variablen!.serendipity_SideBarTitle@.serendipitySideBarTitle</span>
</span>
<code class="item css">.serendipitySideBarTitle</code>
<span class="desc-info">Enthält den Titel des jeweiligen Seitenleisten-Plugins.</span>
</p>

<p class="desc citem-desc">
<span class="tag-box invisible">
    <span class="inline-tag">CSS-Variablen!.serendipity_SideBarContent@.serendipitySideBarContent</span>
</span>
<code class="item css">.serendipitySideBarContent</code>
<span class="desc-info">Enthält den Inhalt des jeweiligen Seitenleisten-Plugins.</span>
</p>

<p class="desc citem-desc">
<span class="tag-box invisible">
    <span class="inline-tag">CSS-Variablen!.serendipity_Entry_Date</span>
</span>
<code class="item css">.serendipity_Entry_Date</code>
<span class="desc-info">Alle Blog-Einträge sind nach Veröffentlichungsdatum gruppiert, so dass
mehrere Einträge eines Tages unter derselben Überschrift zusammengefasst werden
und nicht jedesmal das Datum wiederholt wird. Der Container
<code>.serendipity_Entry_Date</code> umfasst dabei jeweils einen Veröffentlichungstag.</span>
</p>

<p class="desc citem-desc">
<span class="tag-box invisible">
    <span class="inline-tag">CSS-Variablen!.serendipity_date</span>
</span>
<code class="item css">.serendipity_date</code>
<span class="desc-info">Das jeweilige Datum der Gruppe <code>.serendipity_Entry_Date</code> wird in der
HTML-Klasse <code>serendipity_date</code> ausgegeben (meist ein <code>h3</code>-HTML-Tag).</span>
</p>

<p class="desc citem-desc">
<span class="tag-box invisible">
    <span class="inline-tag">CSS-Variablen!.serendipity_title</span>
    <span class="inline-tag">CSS-Variablen!.serendipity_entry</span>
</span>
<code class="item css">.serendipity_title, .serendipity_entry</code>
<span class="desc-info">Jeder einzelne Blog-Artikel der Klasse
<code>.serendipity_Entry_Date</code> wird innerhalb dieses Containers noch weiter
separiert. Der Titel wird jeweils über die Klasse <code>.serendipity_title</code>
ausgegeben, der Inhalt des jeweiligen Artikels (mitsamt seiner
Meta-Informationen wie Autorname, Kategoriezuordnung und Plugin-Ausgabe) wird
innerhalb der Klasse <code>.serendipity_entry</code> ausgegeben.</span>
</p>

<p class="desc citem-desc">
<span class="tag-box invisible">
    <span class="inline-tag">CSS-Variablen!.serendipity_entry_body</span>
    <span class="inline-tag">CSS-Variablen!.serendipity_entry_extended</span>
</span>
<code class="item css">serendipity_entry_body</code>, <code class="item css">.serendipity_entry_extended</code>
<span class="desc-info">Enthält den Text der jeweiligen Blog-Einträge.</span>
</p>

<p class="desc citem-desc">
<span class="tag-box invisible">
    <span class="inline-tag">CSS-Variablen!.serendipity_imageComment_left</span>
    <span class="inline-tag">CSS-Variablen!.serendipity_imageComment_center</span>
    <span class="inline-tag">CSS-Variablen!.serendipity_imageComment_right</span>
    <span class="inline-tag">CSS-Variablen!.serendipity_image_link</span>
</span>
<code class="item">.serendipity_imageComment_left</code>,
<code class="item css">.serendipity_imageComment_center</code>,
<code class="item css">.serendipity_imageComment_right</code>, 
<code class="item css">.serendipity_image_link</code>
<span class="desc-info">Falls Bilder mit Bildunterschriften in einen Blog-Artikel eingebunden worden
sind, werden diese Klassen eingesetzt.</span>
</p>

<p class="desc citem-desc">
<span class="tag-box invisible">
    <span class="inline-tag">CSS-Variablen!.serendipity_entryFooter</span>
</span>
<code class="item css">.serendipity_entryFooter</code>
<span class="desc-info">Enthält die jeweiligen Meta-Informationen eines Blog-Artikels.</span>
</p>

<p class="desc citem-desc">
<span class="tag-box invisible">
    <span class="inline-tag">CSS-Variablen!.serendipity_entries_footer</span>
</span>
<code class="item css">.serendipity_entries_footer</code>
<span class="desc-info">Enthält die Blätter-Anzeige für die Eintragsseiten sowie der Archivseiten des Blogs.</span>
</p>

<p class="desc citem-desc">
<span class="tag-box invisible">
    <span class="inline-tag">CSS-Variablen!.serendipity_entry_author_self</span>
</span>
<code class="item css">.serendipity_entry_author_self</code>
<span class="desc-info">Diese Klasse wird bei allen Blog-Einträgen vergeben, die vom aktuell eingeloggten
Besucher geschrieben wurden.</span>
</p>

<p class="desc citem-desc">
<span class="tag-box invisible">
    <span class="inline-tag">CSS-Variablen!.serendipity_entryIcon</span>
</span>
<code class="item css">.serendipity_entryIcon</code>
<span class="desc-info">Etwaige Kategorie- oder Autorenbilder werden innerhalb dieser Klasse ausgegeben.</span>
</p>

<p class="desc citem-desc">
<span class="tag-box invisible">
    <span class="inline-tag">CSS-Variablen!.serendipity_comments</span>
</span>
<code class="item css">.serendipity_comments</code>
<span class="desc-info">Enthält den Container für Kommentare und Trackbacks zu einem Blog-Artikel.</span>
</p>

<p class="desc citem-desc">
<span class="tag-box invisible">
    <span class="inline-tag">CSS-Variablen!.serendipity_comment_author_self</span>
</span>
<code class="item css">.serendipity_comment_author_self</code>
<span class="desc-info">Falls vom Autor des Blog-Artikels ein Kommentar geschrieben wurde, wird
diese CSS-Klasse eingebunden.</span>
</p>

<p class="desc citem-desc">
<span class="tag-box invisible">
    <span class="inline-tag">CSS-Variablen!.serendipity_commentsTitle</span>
</span>
<code class="item css">.serendipity_commentsTitle</code>
<span class="desc-info">Enthält den Titel für den jeweiligen Kommentarabschnitt ("Kommentare" oder
"Trackbacks").</span>
</p>

<p class="desc citem-desc">
<span class="tag-box invisible">
    <span class="inline-tag">CSS-Variablen!.serendipity_comment</span>
</span>
<code class="item css">.serendipity_comment</code>
<span class="desc-info">Kapselt jeden einzelnen Kommentar zu einem Blog-Artikel.</span>
</p>

<p class="desc citem-desc">
<span class="tag-box invisible">
    <span class="inline-tag">CSS-Variablen!.serendipity_commentForm</span>
</span>
<code class="item css">.serendipity_commentForm</code>
<span class="desc-info">Enthält das Kommentarformular.</span>
</p>

<p class="desc citem-desc">
<span class="tag-box invisible">
    <span class="inline-tag">CSS-Variablen!.serendipity_commentsLabel</span>
</span>
<code class="item css">.serendipity_commentsLabel</code>
<span class="desc-info">Enthält die Überschriften zu den jeweiligen Eingabebereichen des Kommentarformulars.</span>
</p>

<p class="desc citem-desc">
<span class="tag-box invisible">
    <span class="inline-tag">CSS-Variablen!.serendipity_commentsValue</span>
</span>
<code class="item css">.serendipity_commentsValue</code>
<span class="desc-info">Enthält die Eingabeboxen der jeweiligen Eingabebereiche des Kommentarformulars.</span>
</p>

<p class="desc citem-desc">
<span class="tag-box invisible">
    <span class="inline-tag">CSS-Variablen!.serendipity_center</span>
</span>
<code class="item css">.serendipity_center</code>
<span class="desc-info">Etwaige Bildschirmmeldungen von Serendipity (zB. bei Kommentarübermittlung oder
Fehlern) werden mit dieser Klasse ausgezeichnet.</span>
</p>

<p class="desc citem-desc">
<span class="tag-box invisible">
    <span class="inline-tag">CSS-Variablen!.serendipity_msg_important</span>
    <span class="inline-tag">CSS-Variablen!.serendipity_msg_notice</span>
    <span class="inline-tag">CSS-Variablen!.serendipity_content_message</span>
    <span class="inline-tag">CSS-Variablen!.msg_error</span>
    <span class="inline-tag">CSS-Variablen!.msg_success</span>
    <span class="inline-tag">CSS-Variablen!.msg_notice</span>
    <span class="inline-tag">CSS-Variablen!.msg_hint</span>
</span>
<code class="item css">.serendipity_msg_important</code>, 
<code class="item css">.serendipity_msg_notice</code>, 
<code class="item css">.serendipity_content_message</code>
<span class="desc-info">
    <span class="box">
        Die jeweiligen Bildschirmmeldungen werden entsprechend ihrer Gewichtung
        (<code>notice</code> = Hinweis, <code>important</code> = Wichtige Information)
        mit den entsprechenden Klassen ausgezeichnet.
    </span>

    <span class="box">
        In der Entwicklung von Serendipity wurde diese Vorgabe aus Gründen der Vereinfachung
        leider nicht immer eingehalten, so dass ein Plugin diese Vorgabe nicht mehr ohne Weiteres
        als verlässlich nutzen und setzen kann. Siehe im Frontend zB. mit "Next" (mit
        <code class="item css">.msg-warning</code>, <code class="item css">.msg-success</code>,
        <code class="item css">.msg-notice</code>, <code class="item css">.msg-question</code>
        und im Backend sogar mit dem Serendipity Admin Standard Template "2k11" mit
        <code class="item css">.msg_error</code>, <code class="item css">.msg_success</code>,
        <code class="item css">.msg_notice</code>, <code class="item css">.msg_hint</code>.
    </span>
</span>
</p>

<p class="desc citem-desc">
<span class="tag-box invisible">
    <span class="inline-tag">CSS-Variablen!.serendipity_search</span>
</span>
<code class="item css">.serendipity_search</code>
<span class="desc-info">Wenn der Besucher eine Volltextsuche ausgeführt hat, werden die Suchergebnisse
innerhalb dieser Klasse ausgegeben.</span>
</p>

</section><!-- section.sub end -->

<section id="U922" class="sub">
<span class="u-toc">9.2.2 - CSS-Anweisungen von Serendipity-Plugins</span>

<h3 class="subsection" id="css-anweisungen-von-serendipity-plugins">CSS-Anweisungen von Serendipity-Plugins</h3>

<p class="tagging invisible">
<span class="tag-box invisible">
    <span class="inline-tag">CSS-Anweisungen!von Serendipity-Plugins</span>
    <span class="inline-tag">Plugins!CSS-Anweisungen</span>
</span>
</p>

<p>Einige Plugins (wie <em>Freie Artikel-Tags</em>) beinhalten eigenständige
CSS-Anweisungen. Diese Anweisungen werden nicht in die zentrale
<code>style.css</code>-Datei Ihres Templates aufgenommen, sondern durch das Plugin
dynamisch ausgegeben.</p>

<p>Dies hat den Vorteil, dass Sie Ihre CSS-Datei nicht manuell anpassen müssen,
wenn Sie ein beliebiges Serendipity-Plugin installieren. Auch wird so die
Notwendigkeit umgangen, dass alle Templates für die Benutzung mit Plugins
speziell erweitert werden müssen.</p>

<p>Alle Serendipity-Plugins sind so programmiert, dass Sie die CSS-Anweisungen der
Plugins <em>überschreiben</em> können. Dazu müssen Sie die Plugin-Datei nicht
anfassen, sondern nur die Stylesheet-Datei Ihres Templates mit der CSS-Regel
erweitern, die die Vorgaben des Plugins überschreibt.</p>

<p>Konkret heißt das, wenn das Plugin <em>Freie Artikel-Tags</em> eine CSS-Regel wie</p>

<pre><code class="css">
    .serendipity_freeTag {<br>
    &nbsp; ...<br>
    }
</code></pre>

<p>ausgibt, müssen Sie diesen CSS-Code einfach in die eigene <code>style.css</code>-Datei
überführen und dort beliebig anpassen. Das Plugin findet daraufhin den Code in Ihrer
eigenen Datei und weiß, dass es selbst keine CSS-Anweisungen mehr ausgeben soll.</p>

<p>Sollte dies einmal nicht verlässlich klappen (wenn zB. die HTML-Elementnamen
nicht übereinstimmen), können Sie in Ihrer <code>style.css</code>-Datei die
CSS-Regeln eines Plugins immer noch überschreiben, indem Sie eine Regel wie:</p>

<pre><code class="css">
    .serendipity_freeTag {<br>
    &nbsp; color: red !important;<br>
    }
</code></pre>

<p>in Ihr Stylesheet übernehmen. Die Anweisung <code>!important</code> sorgt dafür, dass
diese Zeile immer Vorrang vor anderen Anweisungen haben wird. Dies sollte aber nur im absoluten Notfall benutzt werden.</p>

</section><!-- section.sub end -->

<section id="U923" class="sub">
<span class="u-toc">9.2.3 - CSS-Hilfen</span>

<h3 class="subsection" id="css-hilfen">CSS-Hilfen</h3>

<p class="tagging invisible">
<span class="tag-box invisible">
    <span class="inline-tag">CSS!Tools</span>
    <span class="inline-tag">Tools!CSS</span>
</span>
</p>

<p>Beim Bearbeiten von CSS-Dateien brauchen Sie in der Regel immer zwei Dinge: Zum
einen müssen Sie das zu formatierende HTML-Element innerhalb des Quelltextes
ausfindig machen. Als Zweites müssen Sie dann den benötigten Element-Pfad
bzw. Klassennamen mit einer entsprechenden Formatierungsanweisung in Ihre
Stylesheet-Datei einfügen.</p>

<p>Dieser Prozess kann ziemlich müßig werden. Daher haben findige Köpfe die Browser
eigenen Developer-Tools entwickelt. Dieses interne "Programm" ermöglicht es,
mit einem einfachen Mausklick das benötigte Element ausfindig zu machen und
direkt zu sehen, welche CSS-Anweisungen für dieses Element bereits belegt sind.
Siehe Anmerkungen zu den Developer-Tools der heutigen Browser unter
<span class="pageref"><a href="#Developer-Tools">Developer-Tools</a></span>.</p>

</section><!-- section.sub end -->

</section><!-- section.index end -->

<section id="S930" class="index">
<span class="s-toc">9.3 - Smarty-Templates</span>

<h3 class="section" id="smarty-templates">Smarty-Templates</h3>

<p class="tagging invisible">
<span class="tag-box invisible">
    <span class="inline-tag">Smarty</span>
    <span class="inline-tag">Template-S@Templates!Smarty</span>
</span>
<span class="label invisible" id="Smarty-Templates">Smarty-Templates</span>
</p>

<p>Nachdem Sie nun gelernt haben, wie Sie CSS-Anweisungen überarbeiten können,
wundern Sie sich möglicherweise bereits, wo Sie denn Einfluss auf die
HTML-Ausgabe von Serendipity nehmen können.</p>

<p>Da Serendipity ein dynamisches System ist, das auf verschiedenen Seiten
unterschiedliche Inhalte, Plugins und Artikellisten darstellen kann, muss auch
die Ausgabe des HTML-Codes dynamisch erfolgen.</p>

<p>
<span class="tag-box invisible">
    <span class="inline-tag">Template-Framework</span>
</span>
Dazu bedient sich Serendipity eines sogenannten Template-Frameworks. Die
Hauptaufgabe eines Template-Frameworks ist es, Variablen zu interpretieren,
abzufragen und auszugeben.</p>

<p>Einfach gesprochen, wollen Sie Serendipity gerne sagen, wo es einen Blog-Titel
ausgeben soll, wo der Artikeltext hinkommt und wo die Seitenleisten platziert
werden. Alle diese Inhalte werden durch Platzhalter (<em>Variablen</em>) markiert,
über diese Platzhalter im Template eingebunden und später bei der Ausgabe automatisch
durch die echten Inhalte ersetzt.</p>

<p>Außerdem soll ein Serendipity-Template erkennen können, ob der Besucher
gerade die Detailansicht eines Artikels betrachtet oder die Liste aller
Blog-Artikel zu einem gewissen Zeitpunkt. Abhängig von diesen Variablen muss Ihr
Template unterschiedliche Dinge tun, dies nennt man <em>Darstellungslogik</em>.</p>

<p>Beides könnte man mit HTML alleine nicht erreichen, da HTML eine
<em>statische</em> Beschreibungssprache ist, keine Programmiersprache. Mit
PHP-Programmieranweisungen könnte man eine derartige Darstellungslogik
ausdrücken, jedoch ist dies für viele Anwender viel zu kompliziert. Daher
vertraut Serendipity auf eine Software-Bibliothek namens Smarty [*]
<span class="footnote"><i class="fa fa-info-circle"></i>
<a href="https://www.smarty.net/" target="_blank" rel="noopener">https://www.smarty.net/</a></span><!-- footnote -->.</p>

<p>Smarty ist das Bindeglied zwischen Serendipity und Ihnen als Template-Developer.
Eine Smarty-Datei ist eine einfache Ansammlung von HTML-Elementen, Variablen und
Darstellungslogik. Dabei greift Smarty auf übliche Programmiermuster zurück,
eine Variablenabfrage erfolgt beispielsweise mit:</p>

<pre><code class="smarty">
    &lt;div class="Absatz"&gt;<br>
    {if $is_single_entry}<br>
    &nbsp;...<br>
    {/if}<br>
    &lt;/div&gt;
</code></pre>

<p>Smarty-spezifischer Code wird dabei immer in geschweiften Klammern eingebunden.
Folgt in einer geschweiften Klammer ein Dollar-Zeichen, gefolgt von einem Namen,
so bezieht sich dies auf eine Variable. In obigem Beispiel wird geprüft, ob die
Variable <code>$is_single_entry</code> gesetzt ist. Serendipity setzt diese
Variable, und innerhalb eines Smarty-Templates können Sie diese Variable
entweder ausgeben oder abfragen.</p>

<p>Das ist bis auf einige Sonderfälle bereits die ganze Magie: Smarty versteckt die
Komplexität von PHP hinter einer eigenen Syntax, die von HTML-kundigen Benutzern
leichter eingesetzt werden kann. PHP-Fans können für Serendipity dennoch
PHP-Templates basteln, was ab Seite
<span class="pageref"><a href="#templateapi">templateapi</a></span> eingehender beschrieben
wird. Im Hintergrund arbeitet Smarty eine Template-Datei ab und wandelt sie in
maschinenlesbaren PHP-Code um. Diesen Vorgang nennt man <code>kompilieren</code>,
das Ergebnis des Kompilierens landet als temporäre Datei im Verzeichnis <code>templates_c</code>.
<span class="tag-box invisible">
    <span class="inline-tag">Kompilieren</span>
    <span class="inline-tag">Template-Sc@templates_c</span>
</span>
</p>

<p>Smarty verfügt über eine große Anzahl an eigenen Funktionen, die in der
offiziellen Dokumentation auf <code>https://www.smarty.net/</code> ausführlich
beschrieben sind. Der folgende kurze Einblick in die Smarty-Syntax soll daher
nur als Einstiegspunkt in die Materie dienen. Tiefergehende Möglichkeiten durch
Erweiterung von Smarty finden Sie ab Seite <span class="pageref"><a href="#Templates bearbeiten">Templates bearbeiten</a></span>.</p>

<section id="U931" class="sub">
<span class="u-toc">9.3.1 - Variablen und Modifiers</span>

<h3 class="subsection" id="variablen-und-modifiers">Variablen und Modifiers</h3>

<p class="tagging invisible">
<span class="tag-box invisible">
    <span class="inline-tag">Smarty!Variablen</span>
    <span class="inline-tag">Smarty!Modifier</span>
</span>
</p>

<p>Eine Variable kann in einem Smarty-Template einfach über <code class="item smarty">{$variable}</code>
ausgegeben werden. Der Inhalt der Variable erscheint dann später bei der
HTML-Ausgabe anstelle des Platzhalters.</p>

<p>Häufig möchte man den Inhalt einer Variablen jedoch weiterverarbeiten. Wenn
beispielsweise der Inhalt eines Blog-Artikels in der Variable <code class="item smarty">{$entry}</code>
gespeichert wird, möchte man davon nur die ersten 20 Zeichen ausgeben.</p>

<p>Für diesen Zweck kennt Smarty das Konzept der <code>Variable Modifiers</code>. Ein
Modifier ist eine Funktion, die auf eine Variable angewendet wird und deren
Inhalt modifiziert zurückliefert. In obigem Beispiel würde man die Kürzung auf 20
Zeichen wie folgt erreichen:</p>

<pre><code class="smarty">
    {$entry|truncate:20}
</code></pre>

<p>
<span class="tag-box invisible">
    <span class="inline-tag">Pipe</span>
</span>
Einen Modifier wendet man an, indem man das Pipe-Symbol (<code>|</code>) hinter
die Variable schreibt, und danach den Namen des Variable
Modifiers, in diesem Fall <code>truncate</code> zum Beschneiden. Ein Variable Modifier
kann Parameter entgegennehmen, in diesem Fall die Zahl <code>20</code> zur Angabe der
Menge von Zeichen, die ausgegeben werden sollen. Mehrere Parameter können
mit <code>:</code> voneinander getrennt werden. Die vollständige Dokumentation der
verfügbaren Parameter einer Funktion können Sie in der Smarty-Dokumentation
unter <code>https://www.smarty.net/</code> nachschlagen. <code>truncate</code> verfügt
zB. über eine zweite Option, mit der man die Kürzung eines Textes
durch das Anhängen einer Zeichenkette wie <code>...</code> verdeutlichen kann:</p>

<pre><code class="smarty">
    {$entry|truncate:20:'...'}
</code></pre>

<p>Des Weiteren sind Variable Modifiers schachtelbar, man kann also mehrere
Modifier nacheinander (in der gewünschten Reihenfolge) ausführen. Wenn Sie
beispielsweise den gekürzten Text noch so umwandeln wollen, dass
jeder erste Buchstabe eines Wortes großgeschrieben wird, erreichen Sie dies
mittels:</p>

<pre><code class="smarty">
    {$entry|truncate:20:'...'|capitalize}
</code></pre>

<p>Anstelle eines Parameters wie <code>:20</code> kann man an dieser Stelle auch immer auf
im Template gesetzte Variablen zugreifen.</p>

</section><!-- section.sub end -->

<section id="U932" class="sub">
<span class="u-toc">9.3.2 - Arrays</span>

<h3 class="subsection" id="arrays">Arrays</h3>

<p class="tagging invisible">
<span class="tag-box invisible">
    <span class="inline-tag">Array</span>
</span>
<span class="label invisible" id="Arrays">Arrays</span>
</p>

<p>Arrays sind eine besondere Form von Variablen, die in beinahe jeder
Programmiersprache existieren. Während eine Variable wie
<code class="item smarty">{$entry}</code> nur einen einzelnen Artikeltext enthalten kann, ist es manchmal
wichtig, eine Variable zu besitzen, die mehrere Inhalte speichern kann.</p>

<p>Serendipity weist beispielsweise die Liste aller Blog-Artikel einer
Smarty-Variable namens <code class="smarty">{$entries}</code> zu. Diese Variable stellt eine
Gruppierung von einzelnen Artikeln dar, wobei jeder einzelne Artikel Attribute
wie <code>title</code>, <code>body</code>, <code>author</code> und Weiteres enthält. Solche Gruppierungen nennt
man <em>Array</em>, sie können beliebig verschachtelt sein.</p>

<p>Ein Array ist so aufgebaut, dass es immer einen Schlüssel (<em>Key</em>) und
einen Wert (<em>Value</em>) geben muss. Um den abstrakten Begriff eines Arrays
besser zu verstehen, stellen Sie sich einen großen Schrank vor.
Der Name des Schranks entspricht dem Namen des Arrays. In unserem Fall stellen
wir uns die Beschriftung <code class="smarty">{$entries}</code> auf dem Schrank vor.
Dieser soll unsere Einträge beinhalten. In jede einzelne Schublade haben wir einen
Eintrag hineingelegt. Jede Schublade besitzt eine eindeutige Beschriftung, wie
<em>Artikel1</em>, <em>Artikel2</em> und so weiter. Einen Tick komplexer wird es,
wenn wir nun in jeder einzelnen Schublade nochmal eine Fächerunterteilung haben.
In einem Fach liegt die Beschreibung des Artikels, in einem anderen Fach der
Name des Autors und in noch einem weiteren Fach der Titel des Artikels. Jedes
einzelne Fach beschreibt eindeutig, was darin liegt: <em>author</em>, <em>title</em>
und <em>body</em>.</p>

<p>Anhand dieser Beschriftungen kann nun der Inhalt jeder Schublade präzise
adressiert werden. Wenn wir den Titel des zweiten Artikels herausholen wollen,
würden wir sagen: Ich öffne den Schrank <code class="smarty">{$entries}</code>, ziehe die Schublade
<code>Artikel2</code> heraus und gucke dort in das Fach <code>title</code>. Diesen Vorgang
kann man mittels Smarty-Syntax wie folgt ausdrücken:</p>

<pre><code class="smarty">
    {$entries.Artikel2.title}
</code></pre>

<p>Diese Syntax trennt mittels Punkten die unterschiedlichen Ebenen des Arrays
untereinander auf. Von links nach rechts gelesen steht zuerst der <em>gröbste</em>
Name des Arrays, dann geht es mit immer detaillierteren Fächerbezeichnungen in die
Tiefe.</p>

<p>Das Beispiel mit dem Schrank mag zunächst trivial klingen, gewinnt aber an
Komplexität, wenn man sich vorstellt, dass jede Schublade entweder einen
endgültigen Wert besitzen kann oder sich darin ein weiteres Fach (ein weiterer
Schrank, im Endeffekt) befindet. So kann man unendliche Verschachtelungen
erreichen, die man später anhand der Schlüssel-Bezeichnungen (<em>keys</em>)
adressieren kann.</p>

<p>Während bei JavaScript solche Arrays ebenfalls der <em>Punkt-Notation</em> folgen
und so angesprochen werden können, formatiert man den Zugriff auf ein Array
innerhalb von PHP-Code leicht unterschiedlich. Dort schreibt man
anstelle von <code class="item smarty">{$entries.Artikel2.title}</code> die Syntax
<code class="smarty">{$entries['Artikel2']['title']}</code>, setzt also jeden einzelnen
Array-Schlüssel in eckige Klammern. Bei Smarty können Sie diese
Notation meist nicht einsetzen, lediglich in einigen Sonderfällen
(IF-Abfragen) wird dies von Smarty akzeptiert.</p>

</section><!-- section.sub end -->

<section id="U933" class="sub">
<span class="u-toc">9.3.3 - Schleifen, IF-Abfragen</span>

<h3 class="subsection" id="schleifen-if-abfragen">Schleifen, IF-Abfragen</h3>

<p class="tagging invisible">
<span class="tag-box invisible">
    <span class="inline-tag">Schleifen</span>
    <span class="inline-tag">foreach</span>
</span>
</p>

<p>Natürlich möchte man später eine Liste von Artikeln dynamisch ausgeben können.
Die Abarbeitung eines Arrays, in der man dynamisch alle Inhalte ausgibt, nennt
man <em>Schleife</em>.
Schleifen werden in Smarty mittels der Funktionen <code class="smarty">{foreach ...}</code> und
<code class="smarty">{/foreach}</code> erzeugt. Alles zwischen diesen beiden Aufrufen stellt den
eigentlichen Inhalt der Schleife dar und bestimmt, was mit jedem Element eines
Arrays passiert.</p>

<p>Greifen wir dazu erneut auf obiges Beispiel des Artikel-Schranks zurück. Um die
Inhalte dynamisch auzulesen, müssten wir dies einem Roboter wie folgt erklären:</p>

<p><em>Öffne den Schrank mit dem Titel</em> <code>entries</code>. <em>Gehe nacheinander alle
Schubladen durch, und pro geöffneter Schublade machst Du Folgendes: ...</em></p>

<p>In Smarty-Syntax formuliert sieht dies wie folgt aus:</p>

<pre><code class="smarty">
    {foreach from=$entries item="schublade"}<br>
    &nbsp; &lt;p&gt;In dieser Schublade liegt der Artikel mit Titel &lt;strong&gt;{$schublade.title}&lt;/strong&gt;.&lt;/p&gt;<br>
    {/foreach}
</code></pre>

<p>Mit der seit Serendipity 1.7 verwendeten Smarty 3 Syntax [*]
<span class="footnote"><i class="fa fa-info-circle"></i> <a href="https://www.smarty.net/docs/en/" target="_blank" rel="noopener">https://www.smarty.net/docs/en/</a></span><!-- footnote -->
schriebe man solch eine <code>foreach</code>-Schleife [*]
<span class="footnote"><i class="fa fa-info-circle"></i> <a href="https://www.smarty.net/docs/en/language.function.foreach.tpl" target="_blank" rel="noopener">https://www.smarty.net/docs/en/language.function.foreach.tpl</a></span><!-- footnote -->
analog zu der PHP-Syntax folgendermaßen: (Die alte Smarty 2 Syntax wird aber bis auf Weiteres aus Kompatibilitätsgründen unterstützt.)
Alle Styx Release Templates wurden an die jeweils aktuellste Syntax angepasst.</p>

<pre><code class="smarty">
    {foreach $entries AS $schublade}<br>
    &nbsp; &lt;p&gt;In dieser Schublade liegt der Artikel mit Titel &lt;strong&gt;{$schublade.title}&lt;/strong&gt;.&lt;/p&gt;<br>
    {/foreach}
</code></pre>

<p>Wenn dieses Smarty-Template nun später kompiliert und ausgeführt wird, würde man
folgende HTML-Ausgabe erhalten:</p>

<pre><code class="html">
    &lt;p&gt;In dieser Schublade liegt der Artikel mit Titel &lt;strong&gt;Artikel 1 Titel&lt;/strong&gt;.&lt;/p&gt;<br>
    &lt;p&gt;In dieser Schublade liegt der Artikel mit Titel &lt;strong&gt;Artikel 2 Titel&lt;/strong&gt;.&lt;/p&gt;<br>
    &lt;p&gt;In dieser Schublade liegt der Artikel mit Titel &lt;strong&gt;Artikel 3 Titel&lt;/strong&gt;.&lt;/p&gt;
</code></pre>

<p>Für jeden im Schrank enthaltenen Artikel wurde die Schleife also einmal
durchwandert, und die Inhalte wurden der Variable zugewiesen.</p>

<p>
<span class="tag-box invisible">
    <span class="inline-tag">Iteration</span>
    <span class="inline-tag">Array!Schlüssel</span>
    <span class="inline-tag">Array!Value</span>
</span>
Ein besonders wichtiges Merkmal von Schleifen ist, dass bei jedem Durchgang
(<em>Iteration</em>) einer Schleife durch ein Array das jeweilige Element immer
einem Schlüssel (<code>key</code>) und einem Wert (<code>value</code>) zugewiesen wird. Ein
Schlüssel ist dabei <em>immer</em> entweder ein numerischer Index oder eine
Zeichenkette, er kann niemals ein weiteres Array enthalten. Jedoch kann der
<em>Wert</em> entweder ein Array oder eine einfache Zeichenkette enthalten.</p>

<p>Beim Durchwandern eines Arrays muss Smarty (bzw. jede Programmiersprache) eine
temporäre Variable benennen, mit der man auf das "aktuelle Element" zugreifen
kann. In obigem Beispiel ist dies die Variable <code>schublade</code>. Diese
Bezeichnung haben wir nirgendwo auf dem Schrank angebracht, sie ist also ein
komplett frei wählbares Konstrukt innerhalb der Programmierung. Sie könnten der
Foreach-Schleife auch den Elementnamen <code>pusemuckel</code> zuweisen.</p>

<p>Wenn später der Zugriff auf <code class="item smarty">{$schublade.title}</code> erfolgt, ist der
Unter-Array-Schlüssel (<code>title</code>) nicht frei wählbar. Denn dieser entspricht
der Bezeichnung, die wir vorher auf dem Schrank fest angebracht haben. Der
Begriff ist essentiell wichtig, damit auf den richtigen Wert zugegriffen werden
kann.</p>

<p>Obige Foreach-Schleife ist leicht vereinfacht angewendet. Wie Sie vielleicht
festgestellt haben, wird nur der <code>Wert</code> eines Array-Elementes
weiterverwendet (als <code class="item smarty">{$schublade}</code>). Der Array-Schlüssel scheint irrelevant
und wird nicht weiter benutzt. Manchmal wird für Sie aber der Schlüssel von
Interesse sein, und in diesem Fall müssen Sie den Inhalt ebenfalls einer
Übergangsvariable zuweisen:</p>

<pre><code class="smarty">
    {foreach from=$entries key="schluessel" item="schublade"}<br>
    &nbsp; &lt;p&gt;In dieser Schublade liegt der Artikel mit Titel &lt;strong&gt;{$schublade.title}&lt;/strong&gt;.&lt;/p&gt;<br>
    {/foreach}
</code></pre>

<p>Oder in der neuen analogen PHP-Syntax:</p>

<pre><code class="smarty">
    {foreach $entries AS $schluessel =&gt; $schublade}<br>
    &nbsp; &lt;p&gt;In dieser Schublade liegt der Artikel mit Titel &lt;strong&gt;{$schublade.title}&lt;/strong&gt;.&lt;/p&gt;<br>
    {/foreach}
</code></pre>

<p>Neu hinzugekommen ist das Attribut <code>key='...'</code>, das den Titel der Variable
enthält. Beachten Sie hier, niemals Sonderzeichen wie Umlaute zu benutzen.
Innerhalb der Foreach-Schleife können Sie nun <code class="item smarty">{$schluessel}</code> an
beliebiger Stelle ausgeben. In unserem Beispiel würde dann
<em>Artikel1</em> und <em>Artikel2</em> als Inhalt der Variable ausgegeben.</p>

<p>Nicht zu verwechseln mit einer Schleife ist eine <code>IF-Abfrage</code>. Mit dieser
prüft man, ob eine Variable einen bestimmten Wert hat - nur wenn diese Abfrage
nicht scheitert, wird ein dahinterliegender Code-Teil ausgeführt:</p>

<pre><code class="smarty">
    &lt;div class="Absatz"&gt;<br>
    {if $is_single_entry}<br>
    &nbsp;...<br>
    {/if}<br>
    &lt;/div&gt;
</code></pre>

<p>Nur wenn man sich beim Betrachten eines Artikels in der Detailansicht befindet,
würde man die Ausgabe</p>

<pre><code class="html">
    &lt;div class="Absatz"&gt;<br>
    &nbsp;...<br>
    &lt;/div&gt;
</code></pre>

<p>erhalten, andernfalls würde man nur</p>

<pre><code class="html">
    &lt;div class="Absatz"&gt;<br>
    &lt;/div&gt;
</code></pre>

<p>sehen.</p>

</section><!-- section.sub end -->

<section id="U934" class="sub">
<span class="u-toc">9.3.4 - Funktionsaufrufe</span>

<h3 class="subsection" id="funktionsaufrufe">Funktionsaufrufe</h3>

<p class="tagging invisible">
<span class="tag-box invisible">
    <span class="inline-tag">Smarty!Funktionen</span>
    <span class="inline-tag">Template-Funktionen</span>
</span>
</p>

<p>Während Variablen durch Serendipity fest zugewiesen und an Ihre Smarty-Templates
weitergereicht werden, können Funktionen einen beliebigen Algorithmus
durchführen und dessen Rückgabewert darstellen.</p>

<p>Ein Beispiel für einen Funktionsaufruf wäre die Addition zweier Variablen. Wenn
Sie die Anzahl von Kommentaren und Trackbacks für einen Blog-Artikel addieren
wollen, können Sie nicht einfach Folgendes schreiben:</p>

<pre><code class="smarty">
    Gesamt: {$entry.comments}+{$entry.trackbacks}
</code></pre>

<p>denn dadurch würden Sie lediglich eine Ausgabe wie</p>

<pre><code class="html">
    Gesamt: 2+3
</code></pre>

<p>erhalten. Stattdessen müssen Sie folgenden Smarty-Funktionsaufruf bemühen:</p>

<pre><code class="smarty">
    Gesamt: {math equation="x+y" x=$entry.comments y=$entry.trackbacks}
</code></pre>

<p>Man muss also erst eine mathematische Formel mit Platzhaltern aufbauen und dann
die substituierenden Werte als Attribute der Funktion übermitteln.
Weitere gängige Smarty-Funktionen sind zB. der Einsatz eines Zählers
(<code class="smarty">{counter}</code>) oder das beliebige Zuweisen von Variablen mittels
<code class="smarty">{assign}</code>.</p>

<p>Darüber hinaus werden von Serendipity zahlreiche Smarty-Funktionen zur Verfügung
gestellt, diese sind ab Seite <span class="pageref"><a href="#smartyfunctions">smartyfunctions</a></span> erläutert.</p>

<p>
<span class="tag-box invisible">
    <span class="inline-tag">Sicherheitsmodus</span>
</span>
Smarty-Templates werden bei Serendipity grundsätzlich im <span class="mbold">Sicherheits-Modus</span>
ausgeführt. Dieser verhindert, dass man innerhalb einer Smarty-Datei beliebige
PHP-Funktionen aufrufen kann. Dies macht Templates weitaus sicherer im Einsatz,
und wenn dies nicht gewollt ist, kann man es über die Template-Datei
<code>config.inc.php</code> auch gezielt übergehen (siehe Seite <span class="pageref"><a href="#smartysecurity">smartysecurity</a></span>).</p>

</section><!-- section.sub end -->

<section id="U935" class="sub">
<span class="u-toc">9.3.5 - Kommentare, Escaping, JavaScript</span>

<h3 class="subsection" id="kommentare-escaping-javascript">Kommentare, Escaping, JavaScript</h3>

<p class="tagging invisible">
<span class="tag-box invisible">
    <span class="inline-tag">Fehler!Smarty</span>
    <span class="inline-tag">Fehler!Escaping</span>
    <span class="inline-tag">Fehler!JavaScript</span>
</span>
</p>

<p>Grundsätzlich können Sie innerhalb einer Smarty-Template-Datei beliebigen
HTML-Code und auch beliebiges JavaScript einfügen.</p>

<p>Da Smarty jedoch auf die Zeichen <code class="smarty">{</code> und <code class="smarty">}</code> speziell reagiert, können
Sie diese Sonderzeichen nicht einfach innerhalb eines JavaScripts einsetzen, wo
diese Zeichen häufig vorkommen.
Stattdessen müssen Sie diese Zeichen als <code class="smarty">{ldelim}</code> und <code class="smarty">{rdelim}</code>
platzieren. Alternativ können Sie einen Block mit JavaScript aber auch in einen
<code class="smarty">{literal} ... {/literal}</code>-Funktionsblock setzen.</p>

<p>Mit Serendipity 1.7+ und Smarty 3+ kam außerdem noch die Möglichkeit hinzu,
durch ein Leerzeichen hinter der öffnenden Klammer und einem beliebiges Zeichen hinter der schließenden
Klammer, den gleichen Effekt für solche Javascripts Partien in Smarty Template Dateien zu erzielen.</p>

<p>Kommentare, die später in der HTML-Ausgabe nicht sichtbar sein sollen, können Sie
mittels <code class="smarty">{* ... Kommentar ... *}</code> in der Smarty-Template-Datei
einfügen.</p>

</section><!-- section.sub end -->

<section id="U936" class="sub">
<span class="u-toc">9.3.6 - Einbindung von Dateien</span>

<h3 class="subsection" id="einbindung-von-dateien">Einbindung von Dateien</h3>

<p class="tagging invisible">
<span class="tag-box invisible">
    <span class="inline-tag">Smarty!Include</span>
</span>
</p>

<p>Smarty ermöglicht es mittels der Funktionen <code>include</code>, <code>include_php</code>,
<code>insert</code> und <code>capture</code>, externe HTML-Dateien oder
PHP-Dateien einzubinden. Dies ist jedoch bereits durch andere
Serendipity-Plugins abgedeckt und auch aufgrund der aktivierten
Smarty-Sicherheitsfunktionen standardmäßig nicht nutzbar. Ab Seite <span class="pageref"><a href="#embedding">embedding</a></span> wird
genauer beschrieben, wie man externe Inhalte mit Serendipity am besten
einbindet.</p>

</section><!-- section.sub end -->

</section><!-- section.index end -->

<section id="S940" class="index">
<span class="s-toc">9.4 - Template-Dateien</span>

<h3 class="section" id="template-dateien">Template-Dateien</h3>

<p class="tagging invisible">
<span class="tag-box invisible">
    <span class="inline-tag">Template-Dateien</span>
</span>
</p>

<p>Ein Serendipity-Template besteht aus zahlreichen Dateien: Stylesheet,
Info-Datei, Grafiken und Smarty-Templates.
Damit Sie diese bearbeiten können, müssen Sie zunächst Ihr eigenes
Template-Verzeichnis ausfindig machen.</p>

<p>Den Namen Ihres Template-Verzeichnisses finden Sie, indem Sie mit einem
FTP-Programm (oder Ähnlichem) einen Blick in das Verzeichnis <code>templates</code>
werfen. Dort sehen Sie Unterverzeichnisse, deren Namen meist einen Rückschluss
auf das jeweilige Template zulassen. Der Verzeichnisname muss jedoch nicht
zwingend dem entsprechen, den Sie im Backend im Menüpunkt <code>Styles
verwalten</code> sehen. Daher müssen Sie ggf. die Datei <code>info.txt</code> im jeweiligen
Template-Verzeichnis öffnen, darin ist der angezeigte Name des Templates enthalten.</p>

<p>
<span class="tag-box invisible">
    <span class="inline-tag">Template-Dateien!info.txt</span>
</span>
Ein Serendipity-Template besteht also mindestens aus einem Verzeichnis,
der angesprochenen <code>info.txt</code>-Datei und einer beliebigen Anzahl weiterer
Dateien. Findet Serendipity eine Datei nicht in Ihrem Template-Verzeichnis,
benutzt es automatisch die Standarddatei.</p>

<p>Um ein eigenes Template zu erstellen, benötigen Sie als Erstes ein neues
Verzeichnis für Ihre Dateien. Nehmen wir an, Sie wollen Ihr Template
<code>nirvana</code> nennen. Erstellen Sie dazu ein neues Verzeichnis
<code>templates/nirvana/</code>. In diesem Verzeichnis müssen Sie nun eine
<code>info.txt</code>-Datei erstellen, beispielsweise mit folgendem Inhalt:</p>

<pre><code class="txt">
    Name: Nirvana<br>
    Author: Ich<br>
    Date: 2007
</code></pre>

<p>Die jeweiligen Bezeichner <code>Name, Author, Date</code> müssen Sie exakt so
übernehmen. Alles was hinter dem Doppelpunkt steht, bleibt Ihrer Kreativität
überlassen.</p>

<p>Nachdem diese Datei erstellt wurde, können Sie Ihr Template im Backend über den
Menüpunkt <code>Themes</code> bereits auswählen. Da ansonsten noch keine
Dateien vorhanden sind, bezieht Serendipity diese automatisch aus dem
Standard-Template, <code>/templates/default</code> und <code>/templates/2k11/</code>.</p>

<p>Das <code>2k11</code>-Verzeichnis wurde mit Veröffentlichung von Serendipity
1.7 zum Standardverzeichnis, während <code>default</code> noch
einige ältere Standarddateien enthält. Somit ergänzen sich beide Verzeichnisse,
was für Template-Anpassungen manchmal verwirrend scheinen mag.</p>

<p>Wenn Serendipity in Ihrem Template-Verzeichnis eine angeforderte Datei wie
<code>index.tpl</code> nicht findet, sucht es erst im <code>2k11</code>-Verzeichnis
und danach im <code>default</code>-Verzeichnis. Wenn Sie eine Datei wie
<code>index.tpl</code>, <code>style.css</code> oder <code>entries.tpl</code> anpassen wollen, müssen Sie
diese Datei erst in Ihr eigenes Template-Verzeichnis kopieren und dort anpassen.</p>

<p>Niemals sollten Sie Dateien außerhalb eines eigenen
Template-Verzeichnisses bearbeiten. Obwohl es verlockend scheinen mag, einfach
die Datei <code>templates/default/style.css</code> direkt zu ändern, sollten Sie darauf
unbedingt verzichten. Andernfalls würden Ihre Änderungen an solchen Dateien bei
einem Serendipity-Update unweigerlich überschrieben werden, und Ihre Änderungen
wären verloren.</p>

<p>Damit Sie später bei Serendipity-Aktualisierungen etwaige Verbesserungen der
Standard-Templates automatisch auch in Ihrem Template sehen können, ist es sehr
empfehlenswert, wirklich nur die Dateien in Ihr Template-Verzeichnis zu
kopieren, die Sie anpassen wollen. Wenn Sie <code>index.tpl</code> niemals
verändern, sollten Sie sie der besseren Übersichtlichkeit und Kompatibilität
wegen aus Ihrem eigenen Template-Verzeichnis löschen.</p>

<p>Grundsätzlich können Sie in einem Template-Verzeichnis beliebige Dateien
speichern, also auch Bilddateien, JavaScripts, Flash-Videos oder eigene PHP-Codeschnipsel. Einige
Serendipity-Plugins können ebenfalls über angepasste Template-Dateien ausgegeben
werden, diese Template-Dateien (zB. <code>plugin_staticpage.tpl</code>) können Sie
auch in Ihr eigenes Template-Verzeichnis übernehmen - dieses Verzeichnis hat
immer Vorrang vor dem Standard-Plugin-Verzeichnis.</p>

<p>Es folgt eine Liste aller Dateien, die Serendipity in einem
Template-Verzeichnis ansprechen kann.</p>

<section id="U941" class="sub">
<span class="u-toc">9.4.1 - CSS-Dateien</span>

<h3 class="subsection" id="css-dateien">CSS-Dateien</h3>

<p>Die aufgeführten Cascading-Stylesheet-Dateien enthalten Anweisungen zur
Formatierung. Innerhalb der Datei <code>style.css</code> kann der Platzhalter
<code class="item">{TEMPLATE_PATH}</code> eingesetzt werden, der später durch den vollständigen
Pfad zum gewählten Template ersetzt wird. Da das Stylesheet vom Stammordner und
nicht vom jeweiligen Template-Ordner aus vom Browser aufgerufen wird, müssen die
Pfadverweise jeweils mit absoluter Angabe erfolgen. Eine relative Angabe müsste
sich stets auf den Stammpfad beziehen. Eine Anweisung wie</p>

<pre><code class="css">
    .banner {<br>
    &nbsp; background-image: url(pic.jpg);<br>
    }
</code></pre>

<p>würde nach der Datei <code>http://www.example.com/serendipity/pic.jpg</code> suchen, da
das Stylesheet über <code>http://www.example.com/serendipity/serendipity.css</code>
virtuell aufgerufen wird. Um aber auf die Template-Datei
<code>http://www.example.com/serendipity/templates/nirvana/pic.jpg</code> zuzugreifen,
wäre folgende CSS-Anweisung korrekt:</p>

<pre><code class="css">
    .banner {<br>
    &nbsp; background-image: url('{TEMPLATE_PATH}pic.jpg');<br>
}
</code></pre>

<p class="desc citem-desc">
<span class="tag-box invisible">
    <span class="inline-tag">Template-Dateien!style.css</span>
</span>
<code class="item file">style.css</code>
<span class="desc-info">Enthält die zentralen CSS-Regeln für den gesamten Frontend-Bereich eines
Templates.</span>
</p>

<p class="desc citem-desc">
<span class="tag-box invisible">
    <span class="inline-tag">Template-Dateien!admin/style.css</span>
</span>
<code class="item file">admin/style.css</code>
<span class="desc-info">Enthält die CSS-Regeln für den Backend-Bereich
"eines Templates". Seit Serendipity 2.0 liegt sie im Standard-Theme <em>2k11</em>,
da hier auch die anderen Smarty-Backend-Dateien liegen. Nichts desto trotz ist es
natürlich möglich, sich ein ganz eigenes Backend zu schaffen, wenn man sich mit der
zugegebenermaßen komplizierten Materie auskennt.</span>
</p>

<p class="desc citem-desc">
<span class="tag-box invisible">
    <span class="inline-tag">Template-Dateien!style_fallback.css</span>
</span>
<code class="item file">style_fallback.css</code>
<span class="desc-info">Die <code>templates/default/style_fallback.css</code>
Datei enthält einige wenige zentrale CSS-Regeln über die jedes Theme verfügen muss.
Inbesondere die Regeln für das Markup welches aus der Mediathek eingefügt wird,
werden hier ausgezeichnet. Diese Datei wird <span class="mbold">vor</span> der Theme
eigenen <code>style.css</code> Datei einfügt, so dass die Regeln vom Theme, oder
später von der <code>user.css</code> Datei überschrieben werden können. Es ist <span class="mbold">nicht</span>
ratsam sich eine eigene <code>style_fallback.css</code> Datei zu erstellen.</span>
</p>

<p class="desc citem-desc">
<span class="tag-box invisible">
    <span class="inline-tag">Template-Dateien!atom.css</span>
</span>
<code class="item file">atom.css</code>
<span class="desc-info">Enthält CSS-Regeln, die bei der Darstellung eines Atom-Feeds angewandt werden
können. Üblicherweise wird ein Atom-Feed nur innerhalb eines Feedreaders
eingebunden, das Stylesheet wird nur dann angewendet, wenn ein Besucher den
Atom-Feed innerhalb eines normalen Browsers anzeigt.</span>
</p>

<p class="desc citem-desc">
<span class="tag-box invisible">
    <span class="inline-tag">Template-Dateien!user.css</span>
    <span class="inline-tag">Template-Dateien!admin/user.css</span>
</span>
<code class="item file">user.css</code> und
<code class="item file">admin/user.css</code> <em>(beide Optional)</em>
<span class="desc-info">Eine eigene und selbsterstellte <code>user.css</code>
Datei, macht individuelle Änderungen / Überschreibungen der Frontend / Backend
Styles im eigenen Theme möglich, ohne die eigentliche Datei <code>style.css</code>
bearbeiten zu müssen. Ist eine solche Datei nun vorhanden, wird sie automatisch
in die generierte <code>serendipity.css</code> bzw. <code>serendipity_admin.css</code>
Datei eingebunden. Zu finden sind die eigenen Regeln am <span class="mbold">Ende</span>
dieser virtuellen Datei. Die <code>user.css</code> Datei macht es also möglich,
vorhandenes Design zu überschreiben, zu ergänzen und ist unabhängig gegenüber
jedem Serendipity Upgrade.</span>
</p>

<p class="desc citem-desc">
<span class="tag-box invisible">
    <span class="inline-tag">Template-Dateien!wysiwyg-style.css</span>
</span>
<code class="item file">wysiwyg-style.css</code>
<span class="desc-info">Enthält CSS-Regeln für den integrierten WYSIWYG-Editor von Serendipity.
Diese liegt normalerweise in dem <code class="item dir">/htmlarea</code> Ordner, kann aber
in das Template/Theme kopiert werden (siehe Regeln für ein eigenes Ckeditor-Wysiwyg-Widget).</span>
</p>

</section><!-- section.sub end -->

<section id="U942" class="sub">
<span class="u-toc">9.4.2 - TPL-Dateien (Frontend)</span>

<h3 class="subsection" id="tpl-dateien-frontend">TPL-Dateien (Frontend)</h3>

<p class="tagging invisible">
<span class="tag-box invisible">
    <span class="inline-tag">Template-Dateien!Smarty-Templates</span>
</span>
<span class="label invisible" id="frontend-tpl">frontend-tpl</span>
</p>

<p>Die Dateien mit der Endung <code>.tpl</code> stellen Smarty-Templates dar. Sie
enthalten die jeweiligen Anweisungen, um die von Serendipity gelieferten
Variablen korrekt in eine HTML-Ausgabe einzubinden.</p>

<p>Innerhalb jeder Datei sind spezielle Smarty-Variablen verfügbar (siehe Seite
<span class="pageref"><a href="#smartyvariablen">smartyvariablen</a></span>).
Für einen vollständigen Seitenaufruf können mehrere einzelne Template-Dateien
involviert sein, die am Ende von Serendipity vor der Ausgabe automatisch
miteinander verbunden werden.</p>

<p class="label invisible">
    <span class="label invisible" id="templatefiles">templatefiles</span>
</p>

<p class="desc citem-desc">
<span class="tag-box invisible">
    <span class="inline-tag">Template-Dateien!Uebersicht@Übersicht</span>
    <span class="inline-tag">Template-Dateien!index.tpl</span>
</span>
<span class="label invisible" id="templatefiles-index">templatefiles-index</span>
<code class="item file">index.tpl</code>
<span class="desc-info">Enthält das Grundgerüst (HTML-Kopf, -Fuß und Seitenleisten-Einbindung) jeder
Serendipity-Seite. Hier können Sie sämtliche statischen Inhalte einbinden, wie
zum Beispiel eigene Navigationsleisten, JavaScripts oder Banner und Footer.</span>
</p>

<p class="desc citem-desc">
<span class="tag-box invisible">
    <span class="inline-tag">Template-Dateien!content.tpl</span>
</span>
<code class="item file">content.tpl</code>
<span class="desc-info">Enthält den grundsätzlichen Inhaltsbereich, der in der <code>index.tpl</code>-Datei
über die Variable <code class="smarty">{$CONTENT}</code> eingebunden wird. Der Inhaltsbereich
entscheidet, ob etwaige Meldungen an den Besucher weitergereicht werden und ob
zB. eine Volltextsuche ausgeführt wurde.</span>
</p>

<p class="desc citem-desc">
<span class="tag-box invisible">
    <span class="inline-tag">Template-Dateien!entries.tpl</span>
</span>
<code class="item file">entries.tpl</code>
<span class="desc-info">Stellt einen oder mehrere Blog-Artikel dar. Innerhalb dieser Datei können die
Blog-Artikel (<code class="smarty">{$entries}</code>) in einer Schleife abgearbeitet werden.
Abhängig von weiteren Variablen wird entschieden, ob eine Übersicht oder eine
Einzel-Artikel-Darstellung gewünscht ist.</span>
</p>

<p class="desc citem-desc">
<span class="tag-box invisible">
    <span class="inline-tag">Template-Dateien!sidebar.tpl</span>
</span>
<code class="item file">sidebar.tpl</code>
<span class="desc-info">Enthält die Ausgaben für die Elemente einer Seitenleiste. Diese Datei wird über
den Smarty-Funktionsaufruf <code>serendipity_printSidebar</code> innerhalb des
<code>index.tpl</code>-Templates ausgegeben und jeweils einzeln für die linke,
rechte und etwaige weitere Seitenleisten durchlaufen.</span>
</p>

<p class="desc citem-desc">
<span class="tag-box invisible">
    <span class="inline-tag">Template-Dateien!commentform.tpl</span>
</span>
<code class="item file">commentform.tpl</code>
<span class="desc-info">Enthält das Kommentarformular, mit dem Besucher Kommentare zu einem Blog-Artikel
hinterlassen können.</span>
</p>

<p class="desc citem-desc">
<span class="tag-box invisible">
    <span class="inline-tag">Template-Dateien!commentpopup.tpl</span>
</span>
<code class="item file">commentpopup.tpl</code>
<span class="desc-info">Falls Kommentare in einem Popup-Fenster dargestellt werden sollen, wird diese
Template-Datei verwendet, um das HTML-Grundgerüst für dieses Popup-Fenster
auszugeben.</span>
</p>

<p class="desc citem-desc">
<span class="tag-box invisible">
    <span class="inline-tag">Template-Dateien!comments.tpl</span>
    <span class="inline-tag">Template-Dateien!trackbacks.tpl</span>
    <span class="inline-tag">Template-Dateien!pcomments.inc.tpl</span>
</span>
<code class="item file">comments.tpl</code>, <code class="item file">trackbacks.tpl</code>, <code class="item file">pcomments.tpl</code>
<span class="desc-info">Stellt eine Liste von Kommentaren oder Trackbacks in Einträgen dar, während die <code>pcomments.tpl</code> Datei
für die etwas unterschiedliche Listung der folgenden comments_by_authors Kommentar summary Seiten zuständig ist.</span>
</p>

<p class="desc citem-desc">
<span class="tag-box invisible">
    <span class="inline-tag">Template-Dateien!comments_by_author.tpl</span>
</span>
<code class="item file">comments_by_author.tpl</code>
<span class="desc-info">Stellt eine Liste aller Kommentare eines gewünschten Blog-Kommentators im
Inhaltsbereich dar.</span>
</p>

<p class="desc citem-desc">
<span class="tag-box invisible">
    <span class="inline-tag">Template-Dateien!entries_archives.tpl</span>
</span>
<code class="item file">entries_archives.tpl</code>
<span class="desc-info">Stellt eine Archiv-Übersicht der Blog-Artikel (im Inhaltsbereich) dar.</span>
</p>

<p class="desc citem-desc">
<span class="tag-box invisible">
    <span class="inline-tag">Template-Dateien!entries_summary.tpl</span>
</span>
<code class="item file">entries_summary.tpl</code>
<span class="desc-info">Stellt eine zusammengefasste Archiv-Übersicht der Blog-Artikel im Inhaltsbereich
dar.</span>
</p>

<p class="desc citem-desc">
<span class="label invisible" id="customfeeds">customfeeds</span>
<span class="tag-box invisible">
    <span class="inline-tag">Template-Dateien!feed_1.0.tpl</span>
    <span class="inline-tag">Template-Dateien!feed_2.0.tpl</span>
    <span class="inline-tag">Template-Dateien!feed_atom1.0.tpl</span>
    <span class="inline-tag">Template-Dateien!feed_opml1.0.tpl</span>
</span>
<code class="item file">feed_1.0.tpl</code>,
<code class="item file">feed_2.0.tpl</code>, 
<code class="item file">feed_atom1.0.tpl</code>, 
<code class="item file">feed_opml1.0.tpl</code>
<span class="desc-info">
    <span class="box">
        Für jeden RSS-Feed bestimmt eine nach dem jeweiligen Feed-Typen benannte
        Template-Datei die Darstellung. So können gewünschte Änderungen am Layout
        und den eingesetzten Elementen der RSS-Feeds template-basiert durchgeführt
        werden.
    </span>

    <span class="box">
        Eigene RSS-Typen können ebenfalls hinzugefügt werden. Diese werden nach dem
        Schema <code>http://www.example.com/serendipity/rss.php?version=nirvana</code>
        aufgerufen und sprechen die Template-Datei nach dem Schema
        <code>feed_nirvana.tpl</code> an.
    </span>
</span>
</p>

<p class="desc citem-desc">
<span class="tag-box invisible">
    <span class="inline-tag">Template-Dateien!plugin_calendar.tpl</span>
</span>
<code class="item file">plugin_calendar.tpl</code>
<span class="desc-info">Die Ausgabe des Kalenders in der Seitenleiste wird über die Datei
<code>plugin_calendar.tpl</code> kontrolliert. Diese Template-Datei enthält mehrere
Schleifen zur Darstellung des jeweiligen Monats bzw. Jahres.</span>
</p>

<p class="desc citem-desc">
<span class="tag-box invisible">
    <span class="inline-tag">Template-Dateien!plugin_remoterss.tpl</span>
</span>
<code class="item file">plugin_remoterss.tpl</code>
<span class="desc-info">Das Seitenleisten-Plugin <em>Fremder RSS/OPML-Blogroll Feed</em> (siehe Seite
<span class="pageref"><a href="#remoterss">remoterss</a></span>) macht seine Ausgaben via Smarty-Template-Datei
<code>plugin_remoterss.tpl</code>, wenn es entsprechend konfiguriert wurde.
Andernfalls nutzt das Plugin die fest einprogrammierte HTML-Ausgabe, um die
Performance zu steigern.</span>
</p>

<p class="desc citem-desc">
<span class="tag-box invisible">
    <span class="inline-tag">Template-Dateien!plugin_categories.tpl</span>
</span>
<code class="item file">plugin_categories.tpl</code>
<span class="desc-info">
    <span class="box">
        Das Seitenleisten-Plugin <em>Kategorien</em> kann so konfiguriert werden, dass
        es die Smarty-Template-Datei <code>plugin_categories.tpl</code> zur Ausgabe
        anspricht. Andernfalls nutzt das Plugin die fest einprogrammierte HTML-Ausgabe,
        um die Performance zu steigern.
    </span>

    <span class="box">
        Innerhalb dieser Template-Datei können Dinge wie die Darstellung der RSS-Symbole
        pro Kategorie wie auch die Verschachtelung von Unterkategorien individualisiert
        werden.
    </span>
</span>
</p>

<p class="desc citem-desc">
<span class="tag-box invisible">
    <span class="inline-tag">Template-Dateien!preview_iframe.tpl</span>
</span>
<code class="item file">preview_iframe.tpl</code>
<span class="tag-box invisible">
    <span class="inline-tag">iframe</span>
</span>
<span class="desc-info">
    <span class="box">
        Wird im Backend die Vorschau für einen Blog-Artikel ausgeführt, stellt der
        Browser diese Vorschau in einem eigenen <em>iframe</em> dar. Dieser <em>iframe</em>
        simuliert die Darstellung des Artikels im Frontend, indem die dafür benötigten
        Stylesheets eingebunden werden.
    </span>

    <span class="box">
        Die Art und Weise der Darstellung des iframe wird über die Template-Datei
        <code>preview_iframe.tpl</code> kontrolliert. In dieser Datei sind
        JavaScript-Anweisungen vorhanden, die dynamisch die korrekte Höhe der
        Darstellung des Blog-Artikels ermitteln. Falls das gewählte Template den
        zentralen Blog-Inhaltsbereich individuell formatiert, kann es notwendig sein,
        diese <code>preview_iframe.tpl</code>-Datei an die HTML-Struktur des Frontends
        anzugleichen.
    </span>
</span>
</p>

</section><!-- section.sub end -->

<section id="U943" class="sub">
<span class="u-toc">9.4.3 - TPL-Dateien (Backend)</span>

<h3 class="subsection" id="tpl-dateien-backend">TPL-Dateien (Backend)</h3>

<p class="tagging invisible">
<span class="tag-box invisible">
    <span class="inline-tag">Template-Dateien!Backend</span>
</span>
</p>

<p>Der HTML-Code des Serendipity-Backends war früher größtenteils fest im Quellcode von
Serendipity verdrahtet. Dies geschah, damit neue Serendipity-Versionen
problemlos neue Features einbauen konnten, für die andernfalls jedes Mal eine
Anpassung Ihres Templates notwendig gewesen wäre.
Zudem war die Darstellung mit Verzicht auf Smarty etwas schneller, und da der
Backend-Bereich selten von Benutzern angepasst wurde, war dieser Kompromiss ein gangbarer Weg.</p>

<p>Mit Serendipity 2.0 wurde nach zweijähriger Entwicklungszeit
das Serendipity Backend dann doch vollständig auf Smarty umgeschrieben, so dass es nun vollständig per Theme
bearbeitet werden kann. Dazu wurde das 2k11 (Standard) Theme um einen eigenen Backend Bereich erweitert,
in dem auch einige der alten, hier genannten *.tpl Dateien des Backends zu finden sind.
Eine genaue Auflistung der neueren Backend Dateien und ihrer Variablen erfolgt innerhalb dieser Unter-Sektionen (9.4.3, 9.4.6, 9.4.7) jeweils am Ende.</p>

<p>Dies stellte sich aber als Sackgasse heraus, denn damit übernahm das <code>2k11</code>-theme vollständig die Kontrolle,
beraubte Serendipity aber seiner Flexibilität und Modularität für die Fallback Kaskade und für ein einfach austauschbares Standardtheme.
Styx wechselte deshalb schon 2018 zurück auf die ehemalige Implementation, die das <code>default</code>-theme als Endpunkt
der Fallback Kaskade und als originären Platz für das Backend ansah. Damit war die Modularität wieder hergestellt
und das Standard (Auslieferungs) Theme konnte mit den Jahren gewechselt werden, so wie es mit Styx 3.0 und dem <code>pure</code>-theme geschah.
Mit der Zeit wurde sogar das Backend modular und das neue <code>styx</code> backend theme übernahm mehr und mehr
die Ausgestaltung der Ansicht, die sich bis zum heutigen Tag weiter fortentwickelt, zb. durch den vorzüglichen Dark Mode.</p>

<p>Damit Sie jedoch dennoch Teile des Backends zu eigenen Zwecken und für eigene
Templates anpassen können, sind das grundlegende Seitenlayout, die Oberfläche der
Mediathek sowie der Artikel-Editor von Serendipity über Template-Dateien
zugänglich. Zusammen mit der Stylesheet-Datei des Backends können so beinahe
alle Aspekte des Backends verändert werden.</p>

<p class="desc citem-desc">
<span class="tag-box invisible">
    <span class="inline-tag">Template-Dateien!admin/index.tpl</span>
</span>
<code class="item file">admin/index.tpl</code>
<span class="desc-info">Enthält die Grundstruktur des Serendipity-Backends, mit Positionierung des
Inhaltsbereichs, der Überschrift und der Menüpunkte.</span>
</p>

<p class="desc citem-desc">
<span class="tag-box invisible">
    <span class="inline-tag">Template-Dateien!admin/entries.tpl</span>
</span>
<code class="item file">admin/entries.tpl</code>
<span class="desc-info">Enthält die Oberfläche zum Bearbeiten bzw. Erstellen eines Blog-Artikels. In
dieser Datei können die Eingabefelder für den Titel des Beitrags, das Datum, die
Kategorieauswahl, die erweiterten Optionen und alle weiteren Felder beliebig platziert werden.</span>
</p>

<p class="desc citem-desc">
<span class="label invisible" id="mediatemplates">mediatemplates</span>
<span class="tag-box invisible">
    <span class="inline-tag">Template-Dateien!admin/media_choose.tpl</span>
</span>
<code class="item file">admin/media_choose.tpl</code>
<span class="desc-info">Enthält das Grundgerüst der Mediathek-Oberfläche, die über ein Popup-Fenster
ausgegeben wird. Innerhalb dieser Datei werden mehrere Framesets verwaltet und
die Inhalte des Verzeichnis-Frames ausgegeben. Somit dient die Datei als eine
Art zentrale Anlaufstelle für alle Aktionen, die in der Mediathek
ausgeführt werden können (Verzeichnisverwaltung, Rechteverwaltung, Darstellung
der Übersicht, Darstellung einer einzelnen Datei, Auswahl einer Datei).</span>
</p>

<p class="desc citem-desc">
<span class="tag-box invisible">
    <span class="inline-tag">Template-Dateien!admin/media_gallery.tpl</span>
</span>
<code class="item file">admin/media_gallery.tpl</code>
<span class="desc-info">
    <span class="box">
        Dieses Template gibt das Gerüst für die Galerie-Ansicht der Mediathek aus.
    </span>
</span>
</p>

<p class="desc citem-desc">
<span class="tag-box invisible">
    <span class="inline-tag">Template-Dateien!admin/media_galleryinsert.tpl</span>
</span>
<code class="item file">admin/media_galleryinsert.tpl</code>
<span class="desc-info">
    <span class="box">
        Dieses Template kümmert sich um die Fehlerdarstellung und fungiert
        als Javascript Redirector für die Einordnung der gewählten Galerie
        Dateien in das Editor Fenster.
    </span>
</span>
</p>

<p class="desc citem-desc">
<span class="tag-box invisible">
    <span class="inline-tag">Template-Dateien!admin/media_galleryitems.tpl</span>
</span>
<code class="item file">admin/media_galleryitems.tpl</code>
<span class="desc-info">
    <span class="box">
        Diese Datei regelt die Darstellung der Galerie-Liste von Dateien in der Mediathek.
        Sowohl die Übersicht als auch die Darstellung einer einzelnen Datei wird
        innerhalb dieses Templates ausgegeben.
    </span>
</span>
</p>

<p class="desc citem-desc">
<span class="tag-box invisible">
    <span class="inline-tag">Template-Dateien!admin/media_pane.tpl</span>
</span>
<code class="item file">admin/media_pane.tpl</code>
<span class="desc-info">
    <span class="box">
        Dieses Template gibt das Gerüst für die Ansicht der Mediathek aus und
        stellt den Kopf- und Fußbereich für die Verzeichnisinhalte dar (Filter,
        Blättern, Suche ...).
    </span>

    <span class="box">
        Der Inhaltsbereich wird über die Variable <code class="smarty">{$MEDIA_ITEMS}</code> aus der Datei
        <code>media_items.tpl</code> bezogen.
    </span>
</span>
</p>

<p class="desc citem-desc">
<span class="tag-box invisible">
    <span class="inline-tag">Template-Dateien!admin/media_items.tpl</span>
</span>
<code class="item file">admin/media_items.tpl</code>
<span class="desc-info">
    <span class="box">
        Diese Datei regelt die Darstellung der Liste von Dateien in der Mediathek.
        Sowohl die Übersicht als auch die Darstellung einer einzelnen Datei wird
        innerhalb dieses Templates ausgegeben.
    </span>

    <span class="box">
        Die Liste wird mittels der Variable <code class="smarty">{$MEDIA_ITEMS}</code> in der Datei
        <code>media_pane.tpl</code> oder <code>media_properties.tpl</code> eingebunden und
        ausgegeben.
    </span>
</span>
</p>

<p class="desc citem-desc">
<span class="tag-box invisible">
    <span class="inline-tag">Template-Dateien!admin/media_properties.tpl</span>
</span>
<code class="item file">admin/media_properties.tpl</code>
<span class="desc-info">Stellt die Eigenschaften einer gewählten Datei der Mediathek dar. Die
Datei <code>media_properties.tpl</code> regelt dabei den umgebenden Rahmen, die
eigentlichen Detailinformationen werden über die Variable
<code class="smarty">{$MEDIA_ITEMS}</code> aus der Datei <code>media_items.tpl</code> bezogen.</span>
</p>

<p class="desc citem-desc">
<span class="tag-box invisible">
    <span class="inline-tag">Template-Dateien!admin/media_upload.tpl</span>
</span>
<code class="item file">admin/media_upload.tpl</code>
<span class="desc-info">Dieses Template enthält das Formular zum Hochladen einer neuen Datei in die Mediathek.</span>
</p>

<p class="desc citem-desc">
<span class="tag-box invisible">
    <span class="inline-tag">Template-Dateien!admin/media_showitem.tpl</span>
</span>
<code class="item file">admin/media_showitem.tpl</code>
<span class="desc-info">Falls die Mediathek benutzt wird, um im Frontend eine einzelne Datei
darzustellen, dient das Template <code>media_showitem.tpl</code> dazu, das Grundgerüst
zu den Informationen der Datei zu formatieren. Diese Datei kann somit unabhängig
von der Backend-Darstellung der Mediathek angepasst werden.</span>
</p>

<p class="desc citem-desc">
<span class="tag-box invisible">
    <span class="inline-tag">Template-Dateien!admin/style.css</span>
</span>
<code class="item file">admin/style.css</code>
<span class="desc-info">Analog zu den Frontend Styles, werden hier die generellen
Backend Styles definiert und über die dynamisch erstellte (virtuelle) <code class="item css">serendipity_admin.css</code> Datei ausgegeben.</span>
</p>

<p class="desc citem-desc">
<span class="tag-box invisible">
    <span class="inline-tag">Template-Dateien!admin/oldie.css</span>
</span>
<code class="item file">admin/oldie.css</code>
<span class="desc-info">Helfer-Style Definitionen für ältere Browser.</span>
</p>

<p class="desc citem-desc">
<span class="tag-box invisible">
    <span class="inline-tag">Template-Dateien!admin/user.css</span>
</span>
<code class="item file">admin/user.css</code>
<span class="desc-info">Mögliche <code class="item css">user.css</code> Datei, die individuelle Änderungen
/ Überschreibungen der Backend Styles ermöglicht, ohne in den eigentlichen Dateien zu arbeiten.
Dies bringt die Möglichkeit ein eigenes Backend mit nur einer einzigen Datei zu gestalten,
da alle anderen Dateien über den Fallback Scope erreicht werden.</span>
</p>

<p class="desc citem-desc">
<span class="tag-box invisible">
    <span class="inline-tag">Template-Dateien!admin/category.inc.tpl</span>
</span>
<code class="item file">admin/category.inc.tpl</code>
<span class="desc-info">Smarty Pendant zu <code>/include/admin/category.inc.php</code>.
Diese Datei definiert und erhält alles Nötige um den Content der "Backend Inhalt Seitenleiste: Kategorien" darzustellen.
Dies sind der Aktionen der Kategorien Anzeige.</span>
</p>

<p class="desc citem-desc">
<span class="tag-box invisible">
    <span class="inline-tag">Template-Dateien!admin/comments.inc.tpl</span>
</span>
<code class="item file">admin/comments.inc.tpl</code>
<span class="desc-info">Smarty Pendant zu <code>/include/admin/comments.inc.php</code>.
Diese Datei definiert und erhält alles Nötige, um den Content der "Backend Aktivität Seitenleiste: Kommentare" darzustellen.
Dies sind Paginationen, Kommentar Listen und ihre Bearbeitungsoptionen, Filtermöglichkeiten, etc. .</span>
</p>

<p class="desc citem-desc">
<span class="tag-box invisible">
    <span class="inline-tag">Template-Dateien!admin/config_template.tpl</span>
</span>
<code class="item file">admin/config_template.tpl</code>
<span class="desc-info">Smarty Pendant zu <code>/include/functions_installer.inc.php</code>.
Durchläuft das Konfigurations Array and stellt den Konfiguration Screen über die Funktion
<code class="item function">serendipity_printConfigTemplate()</code> dar.</span>
</p>

<p class="desc citem-desc">
<span class="tag-box invisible">
    <span class="inline-tag">Template-Dateien!admin/configuration.inc.tpl</span>
</span>
<code class="item file">admin/configuration.inc.tpl</code>
<span class="desc-info">Smarty Pendant zu <code>/include/admin/configuration.inc.php</code>.
Diese Datei definiert und erhält alles Nötige um den Content der "Backend Inhalt Seitenleiste: Einträge bearbeiten" darzustellen.
Dies sind der Aktionen Paginationen, Entries Listen, Filtermöglichkeiten, etc. .</span>
</p>

<p class="desc citem-desc">
<span class="tag-box invisible">
    <span class="inline-tag">Template-Dateien!admin/entries.inc.tpl</span>
</span>
<code class="item file">admin/entries.inc.tpl</code>
<span class="desc-info">Smarty Pendant zu <code>/include/admin/entries.inc.php</code>.
Diese Datei definiert und erhält alles Nötige um den Content der "Backend Inhalt Seitenleiste: Einträge bearbeiten" darzustellen.
Dies sind der Aktionen der Backend Einträge Anzeige.</span>
</p>

<p class="desc citem-desc">
<span class="tag-box invisible">
    <span class="inline-tag">Template-Dateien!admin/groups.inc.tpl</span>
</span>
<code class="item file">admin/groups.inc.tpl</code>
<span class="desc-info">Smarty Pendant zu <code>/include/admin/groups.inc.php</code>.
Diese Datei definiert und erhält alles Nötige, um die Benutzergruppenliste im Backend darzustellen.</span>
</p>

<p class="desc citem-desc">
<span class="tag-box invisible">
    <span class="inline-tag">Template-Dateien!admin/guess_input.tpl</span>
</span>
<code class="item file">admin/guess_input.tpl</code>
<span class="desc-info">Smarty Pendant zu <code>/include/functions_installer.inc.php</code>.
Diese Datei bereitet die Konfiguration Inhalte über die Funktion <code class="item function">serendipity_guessInput()</code>auf
und setzt sie in ein HTML output Feld (radio, password, text, select, ...).</span>
</p>

<p class="desc citem-desc">
<span class="tag-box invisible">
    <span class="inline-tag">Template-Dateien!admin/images.inc.tpl</span>
</span>
<code class="item file">admin/images.inc.tpl</code>
<span class="desc-info">Smarty Pendant zu <code>/include/admin/images.inc.php</code>, <code>serendipity_admin_image_selector.php</code>.
Diese Datei definiert und erhält alles Nötige, um den Content der "Backend Mediathek Seitenleiste: Mediathek" darzustellen.
Sie fasst die Ausgaben verschiedender bereits erwähnter <code>media_*.tpl</code> Dateien für die Ausgabe zusammen.</span>
</p>

<p class="desc citem-desc">
<span class="tag-box invisible">
    <span class="inline-tag">Template-Dateien!admin/import.inc.tpl</span>
</span>
<code class="item file">admin/import.inc.tpl</code>
<span class="desc-info">...
Diese Datei definiert und erhält alles Nötige, um die Import-Funktion im Backend "Einstellungen Seitenleiste: Wartung: Importieren" darzustellen.</span>
</p>

<p class="desc citem-desc">
<span class="tag-box invisible">
    <span class="inline-tag">Template-Dateien!admin/installer.inc.tpl</span>
</span>
<code class="item file">admin/installer.inc.tpl</code>
<span class="desc-info">Smarty Pendant zu <code>/include/admin/installer.inc.php</code>.
Diese Datei definiert alles Nötige für den Install-Prozess von Serendipity.</span>
</p>

<p class="desc citem-desc">
<span class="tag-box invisible">
    <span class="inline-tag">Template-Dateien!admin/maintenance.inc.tpl</span>
</span>
<code class="item file">admin/maintenance.inc.tpl</code>
<span class="desc-info">Smarty Pendant zu <code>/include/admin/maintenance.inc.php</code>.
Diese Datei definiert und erhält alles Nötige, um den Content der "Backend Einstellungen Seitenleiste: Wartung" darzustellen.
Diese Seite ist sozusagen das Gegenstück der startenden Backend Startseite und aller aktiven Sequenzen ihres Blogs, da es der Pflege dient.</span>
</p>

<p class="desc citem-desc">
<span class="tag-box invisible">
    <span class="inline-tag">Template-Dateien!admin/overview.inc.tpl</span>
</span>
<code class="item file">admin/overview.inc.tpl</code>
<span class="desc-info">Das Dashboard (Content der Backend Startseite) des Backends.
Dies ersetzt komplett das Plugin <code>serendipity_event_dashboard</code> (siehe ...), was hiermit hinfällig ist.
Weitere beliebige Additionen zum Dashboard können über den <code>'backend_dashboard'</code>,
bzw. <code class="item smarty method">{serendipity_hookPlugin hook="backend_dashboard" hookAll="true"}</code> Hook
hinzugefügt werden.</span>
</p>

<p class="desc citem-desc">
<span class="tag-box invisible">
    <span class="inline-tag">Template-Dateien!admin/plugins.inc.tpl</span>
</span>
<code class="item file">admin/plugins.inc.tpl</code>
<span class="desc-info">Smarty Pendant zu <code>/include/admin/plugins.inc.php</code>.
Diese Datei definiert und erhält alles Nötige, um den Content der "Backend Einstellungen Seitenleiste: Plugins" darzustellen.
Dies sind aktive und inaktive Event- und Seitenleisten Plugins, der Zugang zu Spartacus und den Plugin Optionen.</span>
</p>

<p class="desc citem-desc">
<span class="tag-box invisible">
    <span class="inline-tag">Template-Dateien!admin/plugin_config.tpl</span>
</span>
<code class="item file">admin/plugin_config.tpl</code>
<span class="desc-info">Smarty Pendant zu <code>/include/functions_plugins_admin.inc.php</code>.
Definiert und zeigt die Plugin Konfiguration Ausgabe über die Funktion: <code class="item function">serendipity_plugin_config()</code>.</span>
</p>

<p class="desc citem-desc">
<span class="tag-box invisible">
    <span class="inline-tag">Template-Dateien!admin/plugin_config_item.tpl</span>
</span>
<code class="item file">admin/plugin_config_item.tpl</code>
<span class="desc-info">Smarty Pendant zu <code>/include/functions_plugins_admin.inc.php</code>.
Stellt die (Form)-Inhalte der Plugin Konfiguration über die Funktion <code class="item function">serendipity_plugin_config()</code> zusammen.</span>
</p>

<p class="desc citem-desc">
<span class="tag-box invisible">
    <span class="inline-tag">Template-Dateien!admin/personal.inc.tpl</span>
</span>
<code class="item file">admin/personal.inc.tpl</code>
<span class="desc-info">Smarty Pendant zu <code>/include/admin/personal.inc.php</code>.
Diese Datei definiert die Aktionen der Persönlichen Einstellungen, wie "Neues Passwort" setzen, WYSIWYG-Editor nutzen, etc. .</span>
</p>

<p class="desc citem-desc">
<span class="tag-box invisible">
    <span class="inline-tag">Template-Dateien!admin/serendipity_editor.js.tpl</span>
    <span class="inline-tag">Template-Dateien!admin/serendipity_styx.js.tpl</span>
</span>
<code class="item file">admin/serendipity_editor.js.tpl</code>, <code class="item file">admin/serendipity_styx.js.tpl</code>
<span class="desc-info">Die templatisierte ehemalige <code class="item js">serendipity_editor.js</code> Datei.</span>
</p>

<p class="desc citem-desc">
<span class="tag-box invisible">
    <span class="inline-tag">Template-Dateien!admin/show_plugins.fnc.tpl</span>
</span>
<code class="item file">admin/show_plugins.fnc.tpl</code>
<span class="desc-info">Smarty Pendant zu <code>/include/functions_plugins_admin.inc.php</code>.
Definiert und zeigt die Liste der Plugins über die Funktion: <code class="item function">show_plugins()</code>.</span>
</p>

<p class="desc citem-desc">
<span class="tag-box invisible">
    <span class="inline-tag">Template-Dateien!admin/templates.inc.tpl</span>
</span>
<code class="item file">admin/templates.inc.tpl</code>
<span class="desc-info">Smarty Pendant zu <code>/include/admin/templates.inc.php</code>.
Diese Datei definiert und erhält alles Nötige, um den Content der "Backend Einstellungen Seitenleiste: Themes" darzustellen.
Definiert und zeigt die Liste aller Themes aus dem lokalen Bestand und/oder aus dem Spartacus Repository.
Die vollständige Liste nicht immer generieren zu lassen ist eine Frage der Performance und sollte daher nur dann erfolgen, wenn unbedingt notwendig.</span>
</p>

<p class="desc citem-desc">
<span class="tag-box invisible">
    <span class="inline-tag">Template-Dateien!admin/upgrader.inc.tpl</span>
</span>
<code class="item file">admin/upgrader.inc.tpl</code>
<span class="desc-info">Smarty Pendant zu <code>/include/admin/upgrader.inc.php</code>.
Diese Datei definiert alles Nötige für den Serendipity-Upgrade-Prozess.</span>
</p>

<p class="desc citem-desc">
<span class="tag-box invisible">
    <span class="inline-tag">Template-Dateien!admin/users.inc.tpl</span>
</span>
<code class="item file">admin/users.inc.tpl</code>
<span class="desc-info">Smarty Pendant zu <code>/include/admin/users.inc.php</code>.
Diese Datei definiert und erhält alles Nötige, um den Content der "Backend Einstellungen Seitenleiste: Benutzer" darzustellen.
Die Seite erlaubt User zu erstellen und zu administrieren.</span>
</p>

<p class="desc citem-desc">
<span class="tag-box invisible">
    <span class="inline-tag">Template-Dateien!admin/wysiwyg_init.tpl</span>
</span>
<code class="item file">admin/wysiwyg_init.tpl</code>
<span class="desc-info">Diese Datei definiert Teilbereiche wie Plugin Integration der Zusammenstellungs-Skripte für den WYSIWYG-Editor des Kerns.</span>
</p>

</section><!-- section.sub end -->

<section id="U944" class="sub">
<span class="u-toc">9.4.4 - PHP-Dateien</span>

<h3 class="subsection" id="php-dateien">PHP-Dateien</h3>

<p class="tagging invisible">
<span class="tag-box invisible">
    <span class="inline-tag">Template-Dateien!config.inc.php</span>
</span>
</p>

<p class="desc citem-desc">
<code class="item file">config.inc.php</code>
<span class="desc-info">
    <span class="box">
        Jedes Template kann eine <code>config.inc.php</code>-Datei benutzen, um darin beliebige
        PHP-Befehle einzubinden.
    </span>

    <span class="tag-box invisible">
        <span class="inline-tag">Serendipity-Variablen!\$serendipity['smarty']</span>
    </span>
    <span class="box">
        Diese Datei wird stets geladen, wenn Serendipity eine Seite im Frontend
        einbindet. Kurz nach Initialisierung des Smarty-Frameworks wird die
        <code>config.inc.php</code> aufgerufen, so dass Sie innerhalb dieser Datei bereits auf
        das Objekt <code class="nobreak">$serendipity['smarty']</code> zugreifen können,
        beispielsweise um eigene Modifiers oder Functions zu registrieren.
    </span>

    <span class="box">
        Auch die Einbindung von PHP-Zugriffszählern oder Ähnlichem bietet sich in dieser
        Datei an. Die <code>config.inc.php</code> kann dabei jedoch keine Ereignis-Plugins
        ersetzen, sondern dient ergänzend dazu.
    </span>

    <span class="tag-box invisible">
        <span class="inline-tag">Smarty!Security</span>
        <span class="inline-tag">Smarty!Sicherheitsmodus</span>
        <span class="inline-tag">Fehler!Smarty Security</span>
    </span>
    <span class="label invisible" id="smartysecurity">smartysecurity</span>
    <span class="box">
        Ein häufiger Einsatzzweck für diese Datei ist es, die Smarty-Sicherheitsfunktion zu
        deaktivieren. Dazu tragen Sie in der <code>config.inc.php</code>-Datei folgenden Code
        ein:
    </span>

    <span class="box">
        <span id="pre-style"><code class="php">
            &lt;?php<br>
            $serendipity['smarty']-&gt;security = false;<br>
            ?&gt;
        </code></span>
    </span>

    <span class="box">
        Dies bewirkt, dass Sie nun auch auf die potenziell gefährlichen Smarty-Befehle
        wie <code>include</code> und <code>include_php</code> zugreifen können. Sie sollten diese
        Sicherheitsfunktion nur dann deaktivieren, wenn nur vertrauenswürdige Personen
        FTP- oder Dateizugriff zu Ihrem Server haben.
    </span>

    <span class="box">
        Abgesehen von beliebigem PHP-Code dient <code>config.inc.php</code> auch zur
        Festlegung der Optionen eines Templates, die im Backend im Menüpunkt <span class="mbold">Styles
        verwalten</span> angezeigt werden können. So macht beispielsweise das Template
        <em>Bulletproof</em> intensiven Gebrauch von solchen Optionen, um dem Benutzer
        die Wahl des Header-Bildes zu lassen, eine Farbwahl zu treffen oder
        Navigationslinks einzubinden.
    </span>

    <span class="box">
        Die Syntax zur Festlegung und Benutzung von Template-Optionen finden Sie ab
        Seite <span class="pageref"><a href="#templateoptionen">templateoptionen</a></span>.
    </span>
</span>
</p>

<p class="desc citem-desc">
<span class="tag-box invisible">
    <span class="inline-tag">Template-Dateien!lang_*.php</span>
</span>
<span class="label invisible" id="api-lang2">api-lang2</span>
<code class="item file">lang_*.php</code>, 
<code class="item file">UTF-8/lang_*.php</code>
<span class="desc-info">
    <span class="box">
        Falls das Template mittels der <code>config.inc.php</code>-Datei eigene
        Template-Optionen einbindet, sind die Beschreibungen dieser Optionen für die
        Darstellung im Backend meist in eigenständige Sprachdateien ausgelagert. Diese
        entsprechen dem Schema <code>lang_de.inc.php</code> (deutsche Sprache) und können
        anhand des Sprachkürzels später von Serendipity abhängig von der vom Benutzer
        gewählten Sprache geladen werden.
    </span>

    <span class="box">
        Diese Dateien befinden sich nochmals im Unterverzeichnis <code>UTF-8</code>, dort
        liegen sie im UTF-8-Zeichensatz gespeichert. Im Hauptverzeichnis hingegen liegen
        die Dateien immer im nativen Zeichensatz, meist <code>ISO-8859-1</code>.
    </span>
</span>
</p>

</section><!-- section.sub end -->

<section id="U945" class="sub">
<span class="u-toc">9.4.5 - Bilder, Metadaten</span>

<h3 class="subsection" id="bilder-metadaten">Bilder, Metadaten</h3>

<p>Jedes Template liefert meist auch eine Fülle an Grafikdateien. Sie können
innerhalb Ihres Templates beliebige Grafikdateien ansprechen, aber zusätzlich
greift Serendipity zur Darstellung einiger Objekte auf feste Dateinamen zurück.</p>

<p>Wenn Ihr Template eine Datei gleichen Namens besitzt, wird diese von Serendipity
anstelle der Standarddatei ausgegeben. Zur Gestaltung dieser Dateien können Sie sich
nach Vorlagen im Verzeichnis <code>templates/default/</code> bzw. des aktuellen
Standard-Themes (2k11) richten.</p>

<p class="desc citem-desc">
<span class="tag-box invisible">
    <span class="inline-tag">Template-Dateien!preview.png</span>
    <span class="inline-tag">Template-Vorschaugrafik</span>
</span>
<code class="item file">preview.png</code>
<span class="desc-info">
    <span class="box">
        Diese Datei enthält eine Vorschaugrafik des Aussehens des jeweiligen Templates.
        Den Screenshot müssen Sie manuell erstellen, damit man Ihr Template
        anhand der Vorschaugrafik identifizieren kann.
    </span>

    <span class="box">
        Die Vorschaugrafik wird in der Oberfläche <code>Themes</code> angezeigt. Die
        Grafik sollte genau 100 Pixel breit sein, die Höhe ist beliebig.
    </span>
</span>
</p>

<p class="desc citem-desc">
<span class="tag-box invisible">
    <span class="inline-tag">Template-Dateien!preview_fullsize.jpg</span>
</span>
<code class="item file">preview_fullsize.jpg</code>
<span class="desc-info">Die große Variante der Vorschaugrafik kann unter dem Namen
<code>preview_fullsize.jpg</code> gespeichert werden und einen Screenshot Ihres
Templates in voller Pracht enthalten. Die Größe der Grafik kann beliebig
gewählt werden, mindestens 800 x 600 Pixel werden empfohlen.</span>
</p>

<p class="desc citem-desc">
<span class="tag-box invisible">
    <span class="inline-tag">Template-Dateien!img/emoticons</span>
</span>
<code class="item file">img/emoticons/</code>
<span class="desc-info">Die Smilies des gleichnamigen Textformatierungs-Plugins
(siehe Seite <span class="pageref"><a href="#emoticate">emoticate</a></span>)
werden im Verzeichnis <code>img/emoticons/</code> gespeichert und
können in Ihrem eigenen Template-Verzeichnis beliebig ersetzt werden. Sie können
beispielsweise die Smilie-Grafiken Ihres Lieblingsforums in dieses Verzeichnis
einstellen, die Dateinamen der jeweiligen Smilies sind selbsterklärend.</span>
</p>

<p class="desc citem-desc">
<span class="tag-box invisible">
    <span class="inline-tag">Template-Dateien!img/back.png</span>
    <span class="inline-tag">Template-Dateien!img/forward.png</span>
    <span class="inline-tag">Template-Dateien!img/down.png</span>
    <span class="inline-tag">Template-Dateien!img/up.png</span>
</span>
<code class="item file">img/back.png</code>, 
<code class="item file">img/forward.png</code>, 
<code class="item file">img/down.png</code>, 
<code class="item file">img/up.png</code>
<span class="desc-info">Diese Grafiken stellen einen Pfeil dar und werden zum Vor- und Zurückblättern des
Kalenders in der Seitenleiste eingebunden.</span>
</p>

<p class="desc citem-desc">
<span class="tag-box invisible">
    <span class="inline-tag">Template-Dateien!img/delete.png</span>
    <span class="inline-tag">Template-Dateien!img/rename.png</span>
    <span class="inline-tag">Template-Dateien!img/scale.png</span>
    <span class="inline-tag">Template-Dateien!img/zoom.png</span>
</span>
<code class="item file">img/delete.png</code>, 
<code class="item file">img/rename.png</code>, 
<code class="item file">img/scale.png</code>, 
<code class="item file">img/zoom.png</code>
<span class="desc-info">Enthält Symbole für Elemente der Mediathek (Bild löschen, Bild umbenennen,
Beschneiden, Vergrößern).</span>
</p>

<p class="desc citem-desc">
<span class="tag-box invisible">
    <span class="inline-tag">Template-Dateien!img/img_align_left.png</span>
    <span class="inline-tag">Template-Dateien!img/img_align_right.png</span>
    <span class="inline-tag">Template-Dateien!img/img_align_top.png.png</span>
</span>
<code class="item file">img/img_align_left.png</code>, 
<code class="item file">img/img_align_right.png</code>, 
<code class="item file">img/img_align_top.png</code>
<span class="desc-info">Wenn ein Redakteur in einem Blog-Artikel ein Bild aus der Mediathek einbindet,
kann er in einem Auswahldialog bestimmen, wie diese Bilder ausgerichtet sein
sollen. Dazu werden kleine Vorschaugrafiken zur Ausrichtung angezeigt, die der
jeweiligen Grafikdatei wie <code>img_align_left.png</code> entsprechen. Wenn Sie das
Aussehen dieser Ausrichtungsoption stärker an das tatsächliche Design Ihres Blogs
anpassen wollen, können Sie diese Vorschaugrafiken austauschen.</span>
</p>

<p class="desc citem-desc">
<span class="tag-box invisible">
    <span class="inline-tag">Template-Dateien!img/minus.png</span>
    <span class="inline-tag">Template-Dateien!img/plus.png</span>
</span>
<code class="item file">img/minus.png</code>, 
<code class="item file">img/plus.png</code>
<span class="desc-info">Enthält Grafiken zum Ein- und Ausklappen von Elementen, wie beispielsweise in
der Oberfläche zur Konfiguration von Serendipity.</span>
</p>

<p class="desc citem-desc">
<span class="tag-box invisible">
    <span class="inline-tag">Template-Dateien!s9y_banner_small.png</span>
</span>
<code class="item file">img/s9y_banner_small.png</code>
<span class="desc-info">
    <span class="box">
        Zeigt ein kleines Werbebanner für Serendipity, das vom Plugin <em>Powered
        by</em> (siehe Seite <span class="pageref"><a href="#plugplugin">plugplugin</a></span>)
        in der Seitenleiste dargestellt werden kann.
    </span>

    <span class="box">
        Dasselbe Logo ist aus Vereinfachungsgründen auch generell unter
        <code class="item file">/templates/s9y_banner_small.png</code> erreichbar,
        ebenso wie die systemweite <code class="item file">/templates/jquery.js</code>
        Library zur automagischen Einbindung in Themes. Siehe Javascripts 9.4.7.
    </span>
</p>

<p class="desc citem-desc">
<span class="tag-box invisible">
    <span class="inline-tag">Template-Dateien!xml.gif</span>
</span>
<code class="item file">img/xml.gif</code>
<span class="desc-info">An mehreren Stellen des Frontends stellt Serendipity eine kleine Grafik für
RSS-Feeds dar, die typischerweise einem XML-Button ähnelt. Wenn Sie diese Grafik
austauschen wollen, können Sie dies über die Datei <code>xml.gif</code> erreichen.</span>
</p>

</section><!-- section.sub end -->

<section id="U946" class="sub">
<span class="u-toc">9.4.6 - Bilder im Backend</span>

<h3 class="subsection" id="bilder-im-backend">Bilder im Backend</h3>

<p>Im Backend setzt Serendipity einige wenige Bilder und Symbole ein, die abhängig
vom gewählten Template sein können. Diese Grafiken enthalten oft spezielle Symbole,
die Sie aber problemlos durch andere bevorzugte Symbole austauschen können.
Vorzugsweise liegen sie im <code class="item file">templates/default/admin/img</code> Verzeichnis.
Andere sind nur über font Dateien erreichbar.</p>

<p class="desc citem-desc">
<span class="tag-box invisible">
    <span class="inline-tag">Template-Dateien!admin/img/activity.png</span>
</span>
<code class="item file">admin/img/activity.png</code>, 
<span class="desc-info">Stellt den Aktivititäts-Spinner dar, zB. wenn eine Aktion
geladen werden muss.</span>
</p>

<p class="desc citem-desc">
<span class="tag-box invisible">
    <span class="inline-tag">Template-Dateien!admin/img/mime_***.png</span>
</span>
<code class="item file">admin/img/mime_***.png</code>
<span class="desc-info">Stellen verschiedene Ersetzungs-Icons für unterschiedliche
Mime Typen in der Mediathek dar, zB. für PDFs oder Videos.</span>
</p>

<p class="desc citem-desc">
<span class="tag-box invisible">
    <span class="inline-tag">Template-Dateien!admin/img/mlgallery.png</span>
</span>
<code class="item file">admin/img/mlgallery.png</code>
<span class="desc-info">Symbol für den Mediathek Galerie Button in den Editor Toolbars.</span>
</p>

<p class="desc citem-desc">
<span class="tag-box invisible">
    <span class="inline-tag">Template-Dateien!admin/img/thumbnail.png</span>
</span>
<code class="item file">admin/img/thumbnail.png</code>
<span class="desc-info">Symbol für die Voransicht einer Grafikdatei und Symbol der Mediathek in den Editor Toolbars.</span>
</p>

<p class="desc citem-desc">
<span class="tag-box invisible">
    <span class="inline-tag">Template-Dateien!admin/font/fontello.eot</span>
    <span class="inline-tag">Template-Dateien!admin/font/fontello.svg</span>
    <span class="inline-tag">Template-Dateien!admin/font/fontello.ttf</span>
    <span class="inline-tag">Template-Dateien!admin/font/fontello.woff</span>
</span>
<code class="item file">admin/font/fontello.eot</code>, 
<code class="item file">admin/font/fontello.svg</code>,
<code class="item file">admin/font/fontello.ttf</code>, 
<code class="item file">admin/font/fontello.woff</code>
<span class="desc-info">Symbol-Icons für die Backend Ansicht(en) von Serendipity 2.0+
über CSS. Zu finden sind diese Dateien im Serendipity Standard (backend) Theme 2k11.</span>
</p>

<p class="desc citem-desc revision">
<span class="desc-info">(Include svg Icons here and describe them one by one) ??? [...] ??? </span>
</p>

</section><!-- section.sub end -->

<section id="U947" class="sub">
<span class="u-toc">9.4.7- JavaScripts</span>

<h3 class="subsection" id="javascripts">JavaScripts</h3>

<p>Jedes Template kann zudem eine kleine Menge von JavaScripts liefern. Diese
werden von Templates jedoch meist selten angepasst und greifen üblicherweise auf
das Standard-Template zurück. Solch mitgelieferten JavaScript-Dateien wurden im
Laufe der Zeit fast auf 0 reduziert.</p>

<p class="desc citem-desc">
<span class="tag-box invisible">
    <span class="inline-tag">Template-Dateien!jquery.js</span>
</span>
<code class="item file">jquery.js</code>
<span class="desc-info">JQuery-JavaScript Library für Theme-Funktionalitäten in Serendipity.
Dies ist die systemweite <code class="item file">/templates/jquery.js</code> Datei zur automagischen Einbindung in Themes.</span>
</p>

<p class="desc citem-desc">
<span class="tag-box invisible">
    <span class="inline-tag">Template-Dateien!admin/serendipity_editor.js</span>
    <span class="inline-tag">Template-Dateien!admin/serendipity_styx.js</span>
</span>
<code class="item file">admin/serendipity_editor.js</code>, <code class="item file">admin/serendipity_styx.js</code>
<span class="desc-info">Vorgeneriertes JavaScript Fallback für die Backend-Funktionalitäten in Serendipity, beispielsweise
bei der Plugin-Verwaltung. Dies ist ein rudimentäres Backup für die unten erwähnte (default) Smarty Template Datei.</span>
</p>

<p class="desc citem-desc">
<span class="tag-box invisible">
    <span class="inline-tag">Template-Dateien!admin/serendipity_editor.js.php</span>
    <span class="inline-tag">Template-Dateien!admin/serendipity_styx.js.php</span>
</span>
<code class="item file">admin/serendipity_editor.js.php</code>, <code class="item file">admin/serendipity_styx.js.php</code>
<span class="desc-info">JavaScript PHP-Template für die Backend-Funktionalitäten in Serendipity, siehe
das default-php Theme.</span>
</p>

<p class="desc citem-desc">
<span class="tag-box invisible">
    <span class="inline-tag">Template-Dateien!admin/serendipity_editor.js.tpl</span>
    <span class="inline-tag">Template-Dateien!admin/serendipity_styx.js.tpl</span>
</span>
<code class="item file">admin/serendipity_editor.js.tpl</code>, <code class="item file">admin/serendipity_styx.js.tpl</code>
<span class="desc-info">Das default JavaScript Smarty-Template zur Generierung der virtuellen
<code class="item file">serendipity_editor.js</code>, <code class="item file">serendipity_styx.js</code> Datei.</span>
</p>

<p class="desc citem-desc">
<span class="desc-info">Für Serendipity 2.0+ ist nur noch die bereits erwähnte,
virtuelle <code class="item file">serendipity_editor.js</code>, <code class="item file">serendipity_styx.js</code> und die ebenfalls virtualisierte
<code class="item file">serendipity_admin.js</code> relevant. Während die erste der beiden Dateien (je nach Ausgangsversion)
eine Zusammenfassung aller Javascript Funktionen für das Serendipity Backend darstellt,
sorgt Letztere dafür, dass Plugins sich in diesen Ausgabe Hook <code>'js_backend'</code>,
siehe <a href="#ereignis-hooks">Ereignis-Hooks</a>, einklinken können.</span>
</p>


</section><!-- section.sub end -->

</section><!-- section.index end -->

<section id="S950" class="index">
<span class="s-toc">9.5 - Template-Optionen und Bulletproof</span>

<h3 class="section" id="template-optionen-und-bulletproof">Template-Optionen und Bulletproof</h3>

<p class="tagging invisible">
<span class="tag-box invisible">
    <span class="inline-tag">Bulletproof</span>
    <span class="inline-tag">Template-S@Templates!Bulletproof</span>
    <span class="inline-tag">Template-Variablen!\$freie Optionen@freie Optionen</span>
    <span class="inline-tag">Template-Variablen!\$Bulletproof@Bulletproof</span>
</span>
<span class="label invisible" id="templateoptionen">templateoptionen</span>
</p>

<p>Seit Serendipity 1.2 war ein Template namens <em>Bulletproof</em> Bestandteil des
Serendipity-Pakets. Dieses ist auf Seite <span class="pageref"><a href="#bpdesc">bpdesc</a></span>
detaillierter beschrieben und zielte darauf ab, nach Art eines Baukasten-Prinzips dem
Blog-Administrator die Anpassung seines Layouts zu ermöglichen.</p>

<p>Seit Serendipity 1.7 ist ein Template namens <em>2k11</em> Bestandteil des
Serendipity-Pakets und als <span class="mbold">Standard Template</span>
festgelegt! Dieses neuere Template übernimmt daher die gleichen Aufgaben wie
das vorherige Standard-Template <em>Bulletproof</em> bezüglich des Templates-Fallback-Scopes,
ist aber etwas weniger detailliert wie das hier beschriebene <em>Bulletproof</em>-Template.
Es besitzt dafür aber alle Egenschaften die heutzutage an moderne Templates
bezüglich <em>HTML5</em> und <em>"responsive Design"</em> gestellt werden.</p>

<p>Mit Serendipity 2.0+ wurde es möglich ein eigenes Backend Template zu wählen,
dessen Default <span class="mbold">Backend Standard Template</span> sich weiterhin
an <em>2k11</em> orientiert und mit diesem ausgeliefert wird.</p>

<p>Das oben genannte Fallback-Prinzip von Serendipity baute immer darauf,
auf das <span class="mbold">Default Theme</span> zurückzufallen.
Diese Idee ging leider etwas verloren als 2k11 und das neue Backend
entwickelt wurden und wurde mit dem <span class="mbold">Standard Template</span> vermischt,
so dass es folgend zu unnötigen workarounds in der Entwicklung kam.
<span class="mbold">Serendipity Styx</span> ist diesem
<span class="mbold">Prinzip</span> wieder treu!</p>

<p>Seit Serendipity Styx 3.0 in 2020 sind das <code>pure</code>-theme als neues Standard Template/Theme
im Frontend und das <code>styx</code>-theme für das Backend gesetzt; und ständig weiterentwickelt.</p>

<p>Dieses Baukasten-Prinzip wird mittels Template-Optionen umgesetzt.
Um nicht alle paar Jahre dieses Kapitel komplett neu schreiben zu müssen,
verbleiben wir mit der Beschreibung beim alten <code>Bulletproof</code>-theme,
obwohl es ja selbst völlig aus der Zeit gefallen ist. Und doch zeigt es die
Möglichkeiten, die auch heute noch ihre vollständige Gültigkeit haben.</p>

<p>Sobald das <em>Bulletproof</em>-Template aktiviert ist, können Sie im
Backend im Menüpunkt <span class="mbold">Einstellungen
<span class="icon arrow-right">→</span> Themes</span> die einzelnen
Optionen einstellen. Diese werden ähnlich wie Konfigurationsoptionen
eines Plugins dargestellt, pro Zeile stellen Sie eine Option ein.</p>

<figure id="fig-bulletproof2">
  <a class="lightbox" rel="lightbox" href="media/bulletproof2.avif" lg-uid="lg9501" data-fallback="media/bulletproof2.webp">
    <picture>
      <source srcset="media/bulletproof2.avif" type="image/avif">
      <source srcset="media/bulletproof2.webp" type="image/webp">
      <img src="media/bulletproof2.png" alt="bulletproof2.png" loading="lazy" width="1425" height="1032">
    </picture>
    <div class="shape-separator"></div>
    <figcaption>Abbildung 9.1: Ausschnitt der Template-Optionen des Bulletproof-Themes</figcaption>
  </a>
</figure>

<p>Wie auf dem Screenshot (Abbildung 9.1) zu erkennen,
ist beinahe jeder Aspekt des Templates
einstellbar: Wie viele Spalten soll der Inhaltsbereich anbieten, welche
Header-Grafik wird eingebunden, wie werden die Datumsangaben formatiert, wo
erscheinen Artikelfußzeilen und weitere Angaben.</p>

<section id="U951" class="sub">
<span class="u-toc">9.5.1 - Farbwahl</span>

<h3 class="subsection" id="farbwahl">Farbwahl</h3>

<p>Eine Besonderheit stellt das Ausklappfeld für die Option <span class="mbold">Farbwahl</span> dar. Im
Hintergrund verwaltet das Bulletproof-Template alle globalen Layout-Optionen
über eine zentrale Stylesheet-Datei, die <code>style.css</code>. Mittels eines zweiten
Stylesheets können separat die Farben und Gestaltungen einiger Elemente
detaillierter bestimmt werden. Das <code>base.css</code>-Stylesheet wird eingesetzt,
um die grundlegende Formatierung des <em>kugelsicheren</em> Layouts jeweils
kompatibel zu allen Browsern festzulegen. Für einige Problembrowser werden
individuelle Stylesheets wie <code>ie5.css</code> und <code>ie6.css</code> mitgeliefert, die
die technischen Besonderheiten für Layout-Umsetzungen abdecken.</p>

<p>Dies hat den großen Vorteil, dass, wenn Sie dem Bulletproof-Framework Ihr eigenes
Design aufsetzen wollen, Sie sich nur um die Erstellung eines eigenen
Farb-Stylesheets kümmern müssen. In dieser Datei legen Sie Ihre eigenen Farben
(und Dinge wie Rahmenstärke und Grafiken) fest, und da Ihre Stylesheet-Datei
unabhängig vom Rest des Bulletproof-Frameworks nachgeladen werden kann, können Sie später
das komplette Bulletproof-Template aktualisieren, ohne Ihre Anpassungen zu
verlieren.</p>

<p>Ihre eigenen Stylesheet-Dateien speichern Sie einfach unter dem Namen
<code>stylename_style.css</code> im Verzeichnis
<code>templates/bulletproof/</code>. Der Teil des Dateinamens
<code>stylename</code> wird daraufhin automatisch als neue Auswahloption
in dem Ausklappfeld <span class="mbold">Farbwahl</span> der Template-Optionen angeboten.</p>

</section><!-- section.sub end -->

<section id="U952" class="sub">
<span class="u-toc">9.5.2 - Template-Optionen mittels config.inc.php</span>

<h3 class="subsection" id="template-optionen-mittels-config-inc-php">Template-Optionen mittels config.inc.php</h3>

<p class="label invisible">
<span class="label invisible" id="configinc">configinc</span>
</p>

<p>Welche Optionen des Weiteren angeboten werden, wird durch die Template-Datei
<code>config.inc.php</code> festgelegt. In dieser Datei wird eine PHP-Variable
<code>$template_config</code> definiert. Diese Variable stellt ein mehrdimensionales,
verschachteltes Array [*]
<span class="footnote"><i class="fa fa-info-circle"></i> Siehe Seite <span class="pageref"><a href="#Arrays">Arrays</a></span>.</span><!-- footnote --> dar.
Für jede Konfigurationsoption wird ein eigenes Unter-Array in der zweiten Ebene
definiert, das einige fest vorgeschriebene Array-Schlüssel mit Werten füllt.</p>

<p>Ein Beispiel:</p>

<pre><code class="php">
    &lt;?php<br>
    $template_config = array(<br>
    &nbsp; array(<br>
    &nbsp;&nbsp;&nbsp; 'var'&nbsp;&nbsp;&nbsp;&nbsp; =&gt; 'name',<br>
    &nbsp;&nbsp;&nbsp; 'name'&nbsp;&nbsp;&nbsp; =&gt; 'Ihr Name',<br>
    &nbsp;&nbsp;&nbsp; 'type'&nbsp;&nbsp;&nbsp; =&gt; 'string',<br>
    &nbsp;&nbsp;&nbsp; 'default' =&gt; 'Milla Jovovich'<br>
    &nbsp; ),<br>
    <br>
    &nbsp; array(<br>
    &nbsp;&nbsp;&nbsp; 'var'&nbsp;&nbsp;&nbsp;&nbsp; =&gt; 'ort',<br>
    &nbsp;&nbsp;&nbsp; 'name'&nbsp;&nbsp;&nbsp; =&gt; 'Ihr Wohnort',<br>
    &nbsp;&nbsp;&nbsp; 'type'&nbsp;&nbsp;&nbsp; =&gt; 'string',<br>
    &nbsp;&nbsp;&nbsp; 'default' =&gt; 'Remagen'<br>
    &nbsp; )<br>
);
</code></pre>

<p>Wenn Sie in einem eigenen Template die Konfigurationsoptionen mittels dieser
PHP-Variable festlegen, müssen Sie dringend darauf achten, dass die Datei
gültigen (<em>validen, syntaxfehlerfreien</em>) PHP-Code enthält. Wenn Sie an
einer Stelle andere Anführungszeichen verwenden oder ein Komma vergessen, kann
dies dazu führen, dass Ihr gesamtes Template nicht angezeigt wird.
Lesen Sie daher, falls nötig, die PHP-Syntax-Anweisungen unter
<code>https://www.php.net/manual/de/language.types.array.php</code> und <code>https://www.php.net/manual/de/language.basic-syntax.php</code>.</p>

<p>Das Array <code>$template_config</code> kann beliebig viele Konfigurationsoptionen
deklarieren. Auf diese können Sie später innerhalb jeder Smarty-Template-Datei
wie der <code>index.tpl</code> über die Smarty-Array-Variable
<code class="item smarty">{$template_option.optionsname}</code> zugreifen. Der
<code>optionsname</code> entspricht dabei dem Namen, den Sie der jeweiligen Option im
Array-Schlüssel <code>var</code> gegeben haben (zB. <code class="item smarty">{$template_option.name}</code>
oder <code class="item smarty">{$template_option.ort}</code>).</p>

<p>Bei der <code>config.inc.php</code>-Datei des Bulletproof-Frameworks werden für die
Beschreibungen der Konfigurationsoptionen jeweils Sprachkonstanten eingesetzt.
Diese werden in den Dateien wie <code>lang_de.inc.php</code> festgelegt. Durch deren
Verwendung kann die Template-Konfiguration später in beliebigen Übersetzungen
eingebunden werden, daher ist der Einsatz von Sprachkonstanten sehr zu
empfehlen. Es ist aber auch grundsätzlich möglich, die Beschriftungen
direkt in den jeweiligen Array-Wert einzufügen, wie es in den Beispielen dieses
Buches zur Vereinfachung auch gemacht wurde.</p>

<p>Bei der Verwendung von Sprachkonstanten sollte man darauf achten, nur
notwendige Begriffe zu abstrahieren. Häufig gibt es bereits in der zentralen
Serendipity-Sprachdatei (zB. <code>lang/serendipity_lang_de.inc.php</code>)
Konstanten mit ähnlichem Inhalt, auf die Sie auch innerhalb eines Templates
zugreifen können.</p>

</section><!-- section.sub end -->

<section id="U953" class="sub">
<span class="u-toc">9.5.3 - Aufbau des Arrays $template_config</span>

<h3 class="subsection" id="aufbau-des-arrays-template_config">Aufbau des Arrays $template_config</h3>

<p class="tagging invisible">
<span class="tag-box invisible">
    <span class="inline-tag">Template-Variablen!\$template_config</span>
</span>
</p>

<p class="label invisible">
<span class="label invisible" id="apiconfigfield2">apiconfigfield2</span>
</p>

<p>Jedes Unter-Array muss folgende Array-Schlüssel definieren: [*]
<span class="footnote"><i class="fa fa-info-circle"></i> Diese
Schlüssel entsprechen demselben Schema wie beim Einsatz von
Konfigurationsoptionen eines Plugins mittels der
<code class="item method">introspect_config_item()</code>-Methode der Plugin-API.</span><!-- footnote --></p>

<p class="desc">
<code class="item key">var</code>
<span class="desc-info">Legt den Namen einer Konfigurationsoption fest. Mit diesem Namen wird der
Konfigurationswert in der Datenbank gespeichert, und zugleich wird hier der Name der
Option festgelegt, wenn in einem Smarty-Template mittels
<code class="item smarty">{$template_option.var}</code> darauf zugegriffen wird.</span>
</p>

<p class="desc">
<code class="item key">name</code>
<span class="desc-info">Enthält die Beschriftung einer Template-Option, die in der
Konfigurationsoberfläche angezeigt wird.</span>
</p>

<p class="desc">
<code class="item key">type</code>
<span class="desc-info">
    <span class="box">Definiert den Typ einer Konfigurationsoption. Mögliche Typen sind:</span>

    <span class="box">

        <span class="box"><code class="sub-item">radio</code>
            <span class="sub-box">Stellt mehrere Radio-Buttons dar. Die möglichen Optionen werden über den
            Array-Schlüssel <code>radio</code> angegeben. Die Anzahl der Radio-Buttons pro Zeile
            wird über den Array-Schlüssel <code>radio_per_row</code> angegeben. Beispiel:</span>
        </span>

        <span class="box">
            <span class="sub-box">
                <span id="pre-style"><code class="php">
                    array(<br>
                    &nbsp; 'var'&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =&gt; 'count',<br>
                    &nbsp; 'name'&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =&gt; 'Anzahl der Grafiken',<br>
                    &nbsp; 'type'&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =&gt; 'radio',<br>
                    &nbsp; 'radio'&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =&gt; array('value' =&gt; array('5', '10'),<br>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 'desc'&nbsp; =&gt; array('Fünf', 'Zehn')),<br>
                    &nbsp; 'radio_per_row' =&gt; 2<br>
                    );
                </code></span>
            </span>
        </span>

        <span class="box"><code class="sub-item">boolean</code>
            <span class="sub-box">Ein Sonderfall der Radio-Button-Konfiguration. Hierbei werden zwei
            Standardoptionen (<code>Ja=true</code> und <code>Nein=false</code>) dargestellt. Beispiel:</span>
        </span>

        <span class="box">
            <span class="sub-box">
                <span id="pre-style"><code class="php">
                    array(<br>
                    &nbsp; 'var'&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =&gt; 'showcomments',<br>
                    &nbsp; 'name'&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =&gt; 'Kommentare anzeigen',<br>
                    &nbsp; 'type'&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =&gt; 'boolean',<br>
                    &nbsp; 'default'&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =&gt; 'true',<br>
                    );
                </code></span>
            </span>
        </span>

        <span class="box"><code class="sub-item">tristate</code>
            <span class="sub-box">Ein Sonderfall der Radio-Button-Konfiguration. Hierbei werden drei fest
            definierte Felder ausgegeben: <code>Ja</code>, <code>Nein</code> und <code>Standard verwenden</code>.
            Beispiel:</span>
        </span>

        <span class="box">
            <span class="sub-box">
                <span id="pre-style"><code class="php">
                    array(<br>
                    &nbsp; 'var'&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =&gt; 'popups',<br>
                    &nbsp; 'name'&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =&gt; 'Popups verwenden',<br>
                    &nbsp; 'type'&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =&gt; 'tristate',<br>
                    &nbsp; 'default'&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =&gt; 'default',<br>
                    );
                </code></span>
            </span>
        </span>

        <span class="box"><code class="sub-item">select</code>
            <span class="sub-box">Stellt ein Auswahlfeld dar. Die möglichen Optionen werden über den
            Array-Schlüssel <code>select_values</code> angegeben. Beispiel:</span>
        </span>

        <span class="box">
            <span class="sub-box">
                <span id="pre-style"><code class="php">
                    array(<br>
                    &nbsp; 'var'&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =&gt; 'color',<br>
                    &nbsp; 'name'&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =&gt; 'Farbauswahl',<br>
                    &nbsp; 'type'&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =&gt; 'select',<br>
                    &nbsp; 'default'&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =&gt; 'ff0000',<br>
                    &nbsp; 'select_values' =&gt; array(<br>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 'ff0000' =&gt; 'Rot',<br>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; '00ff00' =&gt; 'Grün',<br>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; '0000ff' =&gt; 'Blau'<br>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; )<br>
                    );
                </code></span>
            </span>
        </span>

        <span class="box"><code class="sub-item">multiselect</code>
            <span class="sub-box">Sonderfall des <code>select</code>-Typs. Hier wird statt eines Ausklappfelds ein
            Mehrfach-Ausklappfeld ausgegeben. Alle gewählten Menüfelder werden in der
            Datenbank als eine Zeichenkette gespeichert, wobei die jeweiligen Werte mit dem
            Sonderzeichen <code>\^{</code> voneinander getrennt sind. Wenn diese Variable später
            ausgegeben wird, muss der Inhalt eventuell vorher separiert werden, beispielsweise
            mittels PHP <code>explode()</code>-Funktion. Da dies sehr komplex werden kann, sollte
            anstelle einer Mehrfach-Auswahlbox eher der Einsatz anderer Konfigurationstypen
            in Betracht gezogen werden.</span>

            <span class="sub-box">Die Größe des Mehrfach-Ausklappfeldes wird über den Array-Schlüssel
            <code>select_size</code> bestimmt. Beispiel:</span>
        </span>

        <span class="box">
            <span class="sub-box">
                <span id="pre-style"><code class="php">
                    array(<br>
                    &nbsp; 'var'&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =&gt; 'color',<br>
                    &nbsp; 'name'&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =&gt; 'Farbauswahl',<br>
                    &nbsp; 'type'&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =&gt; 'select',<br>
                    &nbsp; 'default'&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =&gt; 'ff0000',<br>
                    &nbsp; 'select_values'&nbsp; =&gt; array(<br>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 'ff0000' =&gt; 'Rot',<br>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; '00ff00' =&gt; 'Grün',<br>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; '0000ff' =&gt; 'Blau'<br>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ),<br>
                    &nbsp; 'select_size'&nbsp;&nbsp;&nbsp; =&gt; '2'<br>
                    );
                </code></span>
            </span>
        </span>

        <span class="box"><code class="sub-item">string</code>
            <span class="sub-box">Stellt ein einfaches, einzeiliges Text-Eingabefeld dar, in das der Benutzer
            beliebige Inhalte eintragen kann. Beispiel:</span>
        </span>

        <span class="box">
            <span class="sub-box">
                <span id="pre-style"><code class="php">
                    array(<br>
                    &nbsp; 'var'&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =&gt; 'name',<br>
                    &nbsp; 'name'&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =&gt; 'Ihre große Liebe heißt...',<br>
                    &nbsp; 'type'&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =&gt; 'string',<br>
                    &nbsp; 'default'&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =&gt; 'Emba',<br>
                    );
                </code></span>
            </span>
        </span>

        <span class="box"><code class="sub-item">text</code>
            <span class="sub-box">Stellt eine große, mehrzeilige Text-Eingabebox dar, in die der Benutzer beliebige
            Inhalte eintragen kann. Beispiel:</span>
        </span>

        <span class="box">
            <span class="sub-box">
                <span id="pre-style"><code class="php">
                    array(<br>
                    &nbsp; 'var'&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =&gt; 'biographie',<br>
                    &nbsp; 'name'&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =&gt; 'Tragen Sie hier Ihren Lebenslauf ein',<br>
                    &nbsp; 'type'&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =&gt; 'string',<br>
                    &nbsp; 'default'&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =&gt; "Lorem ipsum, und davon 'ne große Menge.",<br>
                    );
                </code></span>
            </span>
        </span>

        <span class="box"><code class="sub-item">html</code>
            <span class="sub-box">Stellt eine große, mehrzeilige Text-Eingabebox dar, in die der Benutzer beliebige
            Inhalte eintragen kann. Im Gegensatz zum <code>text</code>-Typen wird für dieses
            Eingabefeld der WYSIWYG-Editor (falls vom Benutzer aktiviert) eingebunden. Beispiel:</span>
        </span>

        <span class="box">
            <span class="sub-box">
                <span id="pre-style"><code class="php">
                    array(<br>
                    &nbsp; 'var'&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =&gt; 'lovesong',<br>
                    &nbsp; 'name'&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =&gt; 'Songtext ihres Lieblingsliedes<br>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; (HTML erlaubt)',<br>
                    &nbsp; 'type'&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =&gt; 'string',<br>
                    &nbsp; 'default'&nbsp;&nbsp; =&gt; '&lt;strong&gt;Wir sind gekommen, um zu bleiben,<br>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; und bloggen hier nichts mehr weg&lt;/strong&gt;'<br>
                    );
                </code></span>
            </span>
        </span>

        <span class="box"><code class="sub-item">content</code>
            <span class="sub-box">Eine Option des Typs <code>content</code> stellt keine direkte Eingabemöglichkeit
            dar, sondern ermöglicht es, in der Konfigurationsmaske des Serendipity-Backends
            beliebigen HTML-Code auszugeben. Dies kann helfen, um beispielsweise die
            Darstellung der Template-Optionen mit eigener HTML-Formatierung anzureichern und
            optisch ansprechend darzustellen. Da diese Option später keinen vom Benutzer
            eintragbaren Inhalt enthält, entfällt die Angabe der meisten erforderlichen
            Array-Schlüssel. Beispiel:</span>
        </span>

        <span class="box">
            <span class="sub-box">
                <span id="pre-style"><code class="php">
                    array(<br>
                    &nbsp; 'type'&nbsp;&nbsp;&nbsp;&nbsp; =&gt; 'content',<br>
                    &nbsp; 'default'&nbsp; =&gt; '&lt;table&gt;&lt;tr&gt;&lt;th colspan="2"&gt;Hinweis&lt;/th&gt;&lt;/tr&gt;<br>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &lt;tr&gt;&lt;td&gt;&lt;img src="/pic.jpg" /&gt;&lt;/td&gt;&lt;td&gt;<br>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Isotopp-Sturm voraus.&lt;/td&gt;&lt;/tr&gt;&lt;/table&gt;'<br>
                    );
                </code></span>
            </span>
        </span>

        <span class="box"><code class="sub-item">custom</code>
            <span class="sub-box">Falls das Template eine eigene Darstellung der HTML-Formularelemente erreichen
            will, können Sie den Typ <code>custom</code> verwenden und das notwendige
            HTML-Konstrukt manuell über den Array-Schlüssel <code>custom</code> ausgeben.
            Serendipity trägt dabei automatisch den gespeicherten Inhalt der
            Konfigurationsoption (anhand <code>var</code>-Schlüssel benannt) in ein
            <code>hidden</code>-Formularfeld ein. Auf dieses Formularfeld kann zB. mittels
            JavaScript-Code in Ihrer individuellen Ausgabe über
            <code>document.getElementById('config_template_var</code>') zugegriffen
            werden. Beispiel:</span>
        </span>

        <span class="box">
            <span class="sub-box">
                <span id="pre-style"><code class="php">
                    array(<br>
                    &nbsp; 'type'&nbsp;&nbsp;&nbsp;&nbsp; =&gt; 'custom',<br>
                    &nbsp; 'var'&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =&gt; 'mycustom',<br>
                    &nbsp; 'custom'&nbsp;&nbsp; =&gt; '&lt;script type="text/javascript"&gt;<br>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; $ajax = new AjaxForm();<br>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; $ajax.onUpdateField =<br>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; document.getElementById("config_template_mycustom").value;<br>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; $ajax.generate();<br>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &lt;/script&gt;'<br>
                    );
                </code></span>
            </span>
        </span>

        <span class="box"><code class="sub-item">hidden</code>
            <span class="sub-box">Stellt ein verstecktes Formularfeld dar. Dieses kann der Benutzer nicht
            selbständig ändern, daher kann diese Variante gewählt werden, wenn man eine
            Variable mit fest definiertem Inhalt über Smarty aufrufen möchte. Der Wert wird
            dabei über den Array-Schlüssel <code>value</code> übergeben, im Gegensatz zum sonst
            üblichen <code>default</code>. Beispiel:</span>
        </span>

        <span class="box">
            <span class="sub-box">
                <span id="pre-style"><code class="php">
                    array(<br>
                    &nbsp; 'type'&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =&gt; 'hidden',<br>
                    &nbsp; 'var'&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =&gt; 'fixedVar',<br>
                    &nbsp; 'value'&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =&gt; $_SERVER['HTTP_HOST']<br>
                    );
                </code></span>
            </span>
        </span>

        <span class="box"><code class="sub-item">media</code>
            <span class="sub-box">Stellt ein Eingabefeld dar, das der Benutzer mit der URL einer Datei aus der
            Serendipity-Mediathek ausfüllen kann. Dies ist zB. sehr hilfreich, wenn für
            ein Template eine Header-Grafik aus dem Pool der Mediathek gewählt werden
            soll, ohne dass der Benutzer eine URL eingeben muss. Ein Klick auf einen
            zusätzlichen Button öffnet dabei die Mediathek.</span>
        </span>

        <span class="box">
            <span class="sub-box">Zusätzlich zu dem Button wird ein Vorschaubild eingebunden, das das ausgewählte
            Bild in einem kleinen Bereich darstellt. Die beiden Array-Schlüssel <code>preview_width</code>
            und <code>preview_height</code> geben dabei an, wie groß dieses Vorschaubild maximal
            sein soll (standardmäßig 400 Pixel breit und 100 Pixel hoch). Beispiel:</span>
        </span>

        <span class="box">
            <span class="sub-box">
                <span id="pre-style"><code class="php">
                    array(<br>
                    &nbsp; 'type'&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =&gt; 'media',<br>
                    &nbsp; 'var'&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =&gt; 'headerbild',<br>
                    &nbsp; 'preview_width'&nbsp; =&gt; '200px',<br>
                    &nbsp; 'preview_height' =&gt; '50px',<br>
                    &nbsp; 'default'&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =&gt; serendipity_getTemplateFile('header.jpg')<br>
                    );
                </code></span>
            </span>
        </span>

        <span class="box">
            <span class="sub-box">Hinweis: Als Standardwert wird eine Serendipity-API-Funktion aufgerufen, die
            den vollständigen Pfad zu der Datei <code>header.jpg</code> im aktuellen
            Template-Verzeichnis zurückliefert.</span>
        </span>

        <span class="box"><code class="sub-item">separator</code>
            <span class="sub-box">Gibt lediglich einen Trennbereich ohne Inhalt aus.</span>
        </span>

        <span class="box"><code class="sub-item">default</code>
            <span class="sub-box">Enthält die Standardbelegung einer Variable, wenn der Benutzer noch keinen
            eigenen Wert eingegeben hat.</span>
        </span>

        <span class="box"><code class="sub-item">sequence</code>
            <span class="sub-box">
                Kann für ein umsortierbares Widget mit mehreren Werten verwendet werden.
                Ein Beispiel dafür ist das Plugin <code>serendipity_event_entryproperties</code>,
                das dieses Konfigurationselement verwendet. Dieser Sequenztyp erlaubt zwei
                zusätzliche Variablen, die sich durch folgende Eigenschaften auszeichnen:
            </span>

            <span class="sub-box">
                <code>checkable</code>: Wenn auf true gesetzt, kann jedes verschiebbare
                Sequenz-Widget aktiviert bzw. deaktiviert werden. Wenn gesetzt, werden beim
                späteren Abrufen der Option nur diejenigen Widgets aufgelistet, die markiert
                wurden. Wenn nicht gesetzt, werden immer alle verfügbaren Werte
                zurückgegeben (in der Reihenfolge, in der der Benutzer angegeben hat).
            </span>

            <span class="sub-box">
                <code>values</code>: Definiert ein Array, das einen eindeutigen
                Schlüssel für seine Konfiguration verwendet und als Wert ein
                Unter-Array mit dem Schlüssel <span class="mbold">'display'</span>
                enthält, um die HTML-Ausgabe für jedes wiederbestellbare Widget
                bereitzustellen.
            </span>
        </span>

        <span class="box"><code class="sub-item">select_values</code>
            <span class="sub-box">Enthält ein Array mit möglichen Werten zur Befüllung einer Konfigurationsoption
            vom Typ <code>select</code> oder <code>multiselect</code>. Der Schlüssel dieses Arrays enthält
            den Wert, der für das <code>&lt;option value="..."&gt;</code>-HTML-Feld
            ausgegeben wird. Der Wert des Arrays enthält die Beschreibung des
            <code>&lt;option&gt;...&lt;/option&gt;</code>-Feldes.</span>
        </span>

        <span class="box"><code class="sub-item">select_size</code>
            <span class="sub-box">Bestimmt die Größe eines Mehrfach-Auswahlfeldes, falls <code>type=multiselect</code>.
            Standardwert: 1</span>
        </span>

        <span class="box"><code class="sub-item">radio</code>
            <span class="sub-box">Enthält ein Array mit möglichen Werten zur Befüllung einer Konfigurationsoption
            vom Typ <code>radio</code>. Abweichend von der Angabe der <code>select_values</code> werden
            hier zwei Array-Schlüssel namens <code>value</code> und <code>desc</code> vorgegeben, die
            jeweils ein Array als Wert besitzen müssen. Das Array für den Schlüssel
            <code>value</code> enthält die Werte eines Radio-Buttons, das Array <code>desc</code>
            enthält die Beschriftungen der Radio-Buttons.</span>
        </span>

        <span class="box"><code class="sub-item">radio_per_row</code>
            <span class="sub-box">Legt die Anzahl der Radio-Buttons pro Zeile fest, wenn die jeweilige
            Konfigurationsoption vom Typ <code>radio</code> ist. Standardwert: 2.</span>
        </span>

        <span class="box"><code class="sub-item">preview_width, preview_height</code>
            <span class="sub-box">Enthält die Vorschaugröße bei der Ausgabe einer Konfigurationsoption
            vom Typ <code>media</code>. Die Angabe erfolgt in einem CSS-kompatiblen Wert wie
            <code>400px</code> oder <code>1.2em</code>. Standardwert: <code>400px</code> Breite und <code>100px</code>
            Höhe.</span>
        </span>

        <span class="box">
            <span class="sub-box">&nbsp;</span>
        </span>

    </span>

    <span class="box">Wenn für den Array-Schlüssel <code>type</code> keiner der oben aufgeführten Werte
    eingetragen wurde, wird eine derartige Konfigurationsoption an die
    Plugin-Schnittstelle weitergegeben. So können eigene Plugins
    über einen eigenen Event-Hook (<code>backend_pluginconfig_typwert</code> zugreifen [*]
    <span class="footnote"><i class="fa fa-info-circle"></i> Als Werte für <code>$eventData</code> wird ein Array mit allen
    Schlüsseln des jeweiligen Konfigurations-Unter-Arrays übergeben.</span><!-- footnote --> und die Ausgabe des
    notwendigen HTML-Codes für die Konfigurationsoption übernehmen.</span>

</span>
</p>

<p>&nbsp;</p>

</section><!-- section.sub end -->

<section id="U954" class="sub">
<span class="u-toc">9.5.4 - Dynamische Template-Optionen</span>

<h3 class="subsection" id="dynamische-template-optionen">Dynamische Template-Optionen</h3>

<p>Am Ende der <code>config.inc.php</code> benutzt das Bulletproof-Template einen kleinen
Trick, um abhängig von den vorher getätigten Konfigurationsoptionen weitere
Optionen einzufügen. Konkret werden dabei abhängig von der Option <span class="mbold">Anzahl
der Links in der Navigationsleiste</span> jeweils Eingabeboxen für die Beschreibung
und URL des jeweiligen Links als Template-Option dargestellt.</p>

<p>Der Trick besteht darin, dass mittels PHP-Code die bisherige Konfiguration des
Benutzers eingelesen wird:</p>

<pre><code class="php">
    $template_loaded_config = serendipity_loadThemeOptions($template_config, $serendipity['smarty_vars']['template_option']);
</code></pre>

<p>Seit Serendipity 1.6+ Versionen wird hier ein neuer dritter Parameter
(boolean) <code>true</code> übergeben, um Rückwärts-Kompatibilität zu gewährleisten.
Dieser Parameter übergibt <code>template_config</code> (boolean) Variablen (interpretiert als Strings) als echte booleans für die Ausgabe.</p>

<pre><code class="php">
    $template_loaded_config = serendipity_loadThemeOptions($template_config, $serendipity['smarty_vars']['template_option'], true);
</code></pre>

<p>Diese Zeile liest die aktuellen Konfigurationswerte in das PHP-Array
<code>$template_loaded_config</code> ein. Kurz darauf werden mittels einer
<code>for</code>-Schleife abhängig von der Anzahl der Navigationslinks pro Link zwei
weitere Konfigurationsoptionen in das Array <code>template_config</code> eingefügt:</p>

<pre><code class="php">
    $navlinks = array();<br>
    for ($i = 0; $i &lt; $template_loaded_config['amount']; $i++) {<br>
    &nbsp;&nbsp;&nbsp; $navlinks[] = array(<br>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 'title' =&gt; $template_loaded_config['navlink' . $i . 'text'],<br>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 'href'&nbsp; =&gt; $template_loaded_config['navlink' . $i . 'url']<br>
    &nbsp;&nbsp;&nbsp; );<br>
    &nbsp;&nbsp;&nbsp; $template_config[] = array(<br>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 'var'&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =&gt; 'navlink' . $i . 'text',<br>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 'name'&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =&gt; NAV_LINK_TEXT . ' #' . $i,<br>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 'type'&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =&gt; 'string',<br>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 'default'&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =&gt; 'Link #' . $i,<br>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; );<br>
    &nbsp;&nbsp;&nbsp; $template_config[] = array(<br>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 'var'&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =&gt; 'navlink' . $i . 'url',<br>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 'name'&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =&gt; NAV_LINK_URL . ' #' . $i,<br>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 'type'&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =&gt; 'string',<br>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 'default'&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =&gt; '#',<br>
    &nbsp;&nbsp;&nbsp; );<br>
    }
</code></pre>

<pre><code class="php">
    $serendipity['smarty']-&gt;assignByRef('navlinks', $navlinks);
</code></pre>

<p>Die Variable <code>$navlinks</code> liest die bereits konfigurierten Navigationslinks
aus und wird am Ende direkt als Smarty-Variable durchgereicht, damit
sie innerhalb der <code>index.tpl</code>-Datei leicht
durchlaufen und ausgegeben werden kann. Der Platzhalter <code>$i</code> wird innerhalb
der Schleife als fortlaufender Index (beginnend mit der 0) behandelt.</p>

<p>Am besten nehmen Sie sich an konkreten Themes mit ihrer <code>config.inc.php</code>-Datei ein konkretes Beispiel.
Denn heutzutage benötigen sie für die allermeisten Fälle nur noch folgenden Codeschnippsel um das Navigationsarray aus der definierten <code>$template_config</code> zu erstellen.</p>

<pre><code class="php">
    $top = $serendipity['smarty_vars']['template_option'] ?? '';<br>
    $template_config_groups = NULL;<br>
    $template_global_config = array('navigation' => true);<br>
    $template_loaded_config = serendipity_loadThemeOptions($template_config, $top, true);<br>
    serendipity_loadGlobalThemeOptions($template_config, $template_loaded_config, $template_global_config);
</code></pre>


<p>Die Liste aller weiteren Bulletproof-Template-Optionen wird innerhalb der
Konfigurationsoberfläche ausführlich beschrieben und ist
größtenteils bereits selbsterklärend.</p>

<p><span class="mbold">Gundsätzlich</span> gilt aber dennoch: <span class="mbold"><em>Weniger ist mehr!</em></span>
Und, angesehen vom Spaß den dieses machen könnte, reichen einfache Kenntisse von HTML und CSS meist aus, um ein
eigenes Theme konkreter und besser an die eigenen Bedürfnisse anzupassen, als eine PHP/Datenbank Konfiguration
wie jene hier Beschriebene zu erstellen, die bei jedem Zugriff erst abgefragt und zusammengestellt werden muss.</p>

</section><!-- section.sub end -->

<section id="U955" class="sub">
<span class="u-toc">9.5.5 - Frei definierbare Seitenleisten</span>

<h3 class="subsection" id="frei-definierbare-seitenleisten">Frei definierbare Seitenleisten</h3>

<p class="tagging invisible">
<span class="tag-box invisible">
    <span class="inline-tag">Seitenleisten!frei definierbare</span>
</span>
<span class="label invisible" id="customsidebars">customsidebars</span>
</p>

<p>In der Plugin-Verwaltung von Serendipity sehen Sie standardmäßig Bereiche für eine
linke, eine rechte und eine <em>versteckte</em> Seitenleiste. Die meisten
Serendipity-Templates unterstützen diese drei Seitenleisten, einige Templates
stellen die linke und rechte Seitenleiste jedoch direkt untereinander dar.</p>

<p>Innerhalb der <code>config.inc.php</code>-Datei eines Templates kann festgelegt werden,
welche und wie viele Seitenleisten-Bereiche das Design anbietet. Danach richtet
sich auch die Darstellung der Plugin-Verwaltungsoberfläche. Wenn ein Template
vier Seitenleisten (links, rechts, oben, unten) unterstützt, würden in der
Oberfläche zum Installieren und Verschieben der Seitenleisten-Plugins auch diese
vier Bereiche angezeigt.</p>

<p>Wenn Sie einmal Plugins auf zusätzliche Seitenleisten wie <code>oben</code> und
<code>unten</code> verteilt haben und Ihr Blog später auf ein Template umstellen, das
nur die üblichen Seitenleisten unterstützt, wird Serendipity die nicht mehr
zugeordneten Seitenleisten-Plugins in einem eigenständigen Container anzeigen.
Von dort müssen Sie die Plugins dann wieder in die vorhandenen Seitenleisten
einordnen.</p>

<p>Das Template muss die Namen der jeweiligen Seitenleisten über die Variable
<span class="tag-box invisible">
    <span class="inline-tag">Template-Variablen!\$sidebars</span>
</span>
<code>$sidebars</code> in der <code>config.inc.php</code> angeben:</p>

<pre><code class="php">
    &lt;?php<br>
    $sidebars = 'left,right,hide,oben,unten';<br>
    ?&gt;
</code></pre>

<p>An welcher Stelle die jeweiligen Plugins eines Seitenleistenbereichs ausgegeben
werden, kontrolliert die Smarty-Template-Datei <code>index.tpl</code> wie folgt:</p>

<pre><code class="smarty">
    &lt;div id="serendipityLeftSideBar"&gt;<br>
    &nbsp; {serendipity_printSidebar side="left"}<br>
    &lt;/div&gt;<br>
    &lt;div id="serendipityObenSideBar"&gt;<br>
    &nbsp; {serendipity_printSidebar side="oben"}<br>
    &lt;/div&gt;
</code></pre>

<p>Die Dokumentation der Smarty-Funktion
<code class="item smarty">{serendipity_printSidebar}</code> finden Sie auf Seite <span class="pageref"><a href="#printsidebar">printsidebar</a></span>.</p>

<p>Der Name einer Seitenleiste darf keine Leer- oder Sonderzeichen enthalten und
darf maximal 6 Zeichen lang sein.</p>

<p>Falls die Liste der Seitenleisten-Elemente über eine
Template-Konfigurationsoption bestimmt werden soll, kann dies anstatt mit der
<code>$sidebars</code>-Variable auch wie folgt erreicht werden:</p>

<pre><code class="php">
    array(<br>
    &nbsp; 'var'&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =&gt; 'sidebars',<br>
    &nbsp; 'name'&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =&gt; 'Seitenleisten',<br>
    &nbsp; 'type'&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =&gt; 'select',<br>
    &nbsp; 'select_values' =&gt; array(<br>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 'left,right,hide' =&gt; 'Standard',<br>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 'oben,unten' =&gt; 'Nur oben, unten',<br>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 'left,right,hide,oben,unten' =&gt; 'Vollständig'<br>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; )<br>
    );
</code></pre>

<p>Innerhalb der Templates kann <code class="item smarty">{$template_option.sidebars}</code>
abgefragt werden:</p>

<pre><code class="smarty">
    {if $template_option.sidebars == 'left,right,hide'}<br>
    ...<br>
    {/if}<br>
    <br>
    {if $template_option.sidebars == 'left,right,hide,oben,unten'}<br>
    ...<br>
    {/if}
</code></pre>

</section><!-- section.sub end -->

</section><!-- section.index end -->

<section id="S960" class="index">
<span class="s-toc">9.6 - Template-Variablen</span>

<h3 class="section" id="template-variablen">Template-Variablen</h3>

<p class="tagging invisible">
<span class="tag-box invisible">
    <span class="inline-tag">Template-S@Templates!bearbeiten</span>
    <span class="inline-tag">Smarty!Variablen</span>
</span>
<span class="label invisible" id="Templates bearbeiten">Templates bearbeiten</span>
</p>

<p>Innerhalb der Smarty-Template-Dateien können Sie auf zahlreiche Variablen
zugreifen, die im jeweiligen Kontext von Serendipity belegt werden.
Diese Variablen sind unterteilt in globale Variablen, die Sie innerhalb jeder
Smarty-Template-Datei verwenden können, und in Variablen, die nur innerhalb einer
speziellen Datei wie zB. der <code>commentform.tpl</code> verfügbar sind.</p>

<p>Abgesehen von den Variablen stehen Ihnen in allen Smarty-Template-Dateien auch
besondere, von Serendipity eingebundene Funktionen und Modifier zur Verfügung.</p>

<p>
<span class="tag-box invisible">
    <span class="inline-tag">Boolean</span>
</span>
Im Folgenden finden Sie eine detaillierte Übersicht dieser Objekte. Jeder
Variable ist zugeordnet, an welcher Stelle im PHP-Code sie zugewiesen wird, von
welchem Typ die Variable ist (Zeichenkette, Zahl, eindimensionales Array,
mehrdimensionales Array, Objekt oder Boolean [*]
<span class="footnote"><i class="fa fa-info-circle"></i> Boolesche Werte
stehen für <code>true</code> (<em>Ja</em>) oder <code>false</code> (<em>Nein</em>).</span><!-- footnote --> und ob die
Variable nur in einer bestimmten Datei abgerufen werden kann.</p>

<p>
<span class="tag-box invisible">
    <span class="inline-tag">Mehrdimensionale Arrays</span>
    <span class="inline-tag">Array!Schlüssel</span>
</span>
Wenn die Schlüsselpaare eines mehrdimensionalen Arrays dokumentiert werden, wird
die erste Dimension eines Arrays meist beispielhaft erwähnt, zB. mittels
<code class="item smarty">{$entries.X.timestamp}</code>. Üblicherweise werden solche verschachtelten
Arrays niemals mit einem festen Index (<code>X</code>) aufgerufen, sondern immer
innerhalb einer Schleife, die dynamisch den Inhalt des Schlüssels <code>X</code> einer
Variable wie <code>$index</code> zuweist. Das heißt, dass man auf eine derartige
Variable eher wie folgt zugreifen würde:</p>

<pre><code class="smarty">
    {foreach from=$entries item=$entry key=$index}<br>
    &nbsp; Datum: {$entry.timestamp}<br>
    {/foreach}<br><br>
    bzw. in der PHP-like Syntax:<br><br>
    {foreach $entries AS $index =&gt; $entry}<br>
    &nbsp; Datum: {$entry.timestamp}<br>
    {/foreach}
</code></pre>

<p>Somit wird das durchnummerierte Unter-Array der Variable <code class="item smarty">{$entry}</code>
zugewiesen und der laufende Index <code>X</code> würde durch die Variable
<code>$index</code> abgedeckt. Auf den eigentlichen Unterschlüssel <code>timestamp</code>
wird so nur über das zugewiesene Array mittels <code class="item smarty">{$entry.timestamp}</code> zugegriffen.</p>

<p>&nbsp;</p>

<section id="U961" class="sub">
<span class="u-toc">9.6.1 - Globale Variablen</span>

<h3 class="subsection" id="globale-variablen">Globale Variablen</h3>

<p class="tagging invisible">
<span class="tag-box invisible">
    <span class="inline-tag">Template-Variablen!\$globale@globale</span>
</span>
<span class="label invisible" id="smartyvariablen">smartyvariablen</span>
</p>

<p>Die Liste der folgenden Variablen gilt für alle Template-Dateien. Die Ausgabe
der Templates erfolgt ausgehend von der <code>index.tpl</code>. Weiterführende Inhalte
werden mittels der Variable <code class="smarty">{$CONTENT}</code> über die Datei <code>content.tpl</code>
eingebunden. Innerhalb des <code>content.tpl</code>-Templates werden Artikellisten über
die Variable <code class="smarty">{$ENTRIES}</code> mittels der Datei <code>entries.tpl</code> geparst.</p>

<p class="desc citem-desc">
<code class="item smarty">{$admin_view}</code>
<span class="desc-info">
    <span class="box">
        <span class="smarty-type"><em>Variablentyp:</em> <code class="type">Zeichenkette</code></span>
        <span class="smarty-scope"><em>Verfügbar in:</em> <code class="file">admin/entries.tpl, admin/index.tpl</code></span>
        <span class="smarty-doc"><em>Zugewiesen in:</em> <code class="file">include/functions_entries_admin.inc.php</code></span>
    </span>

    <span class="box">
        Für die Template-Dateien des Backends ist diese Variable auf einen Wert gesetzt,
        der den Bereich angibt, innerhalb dessen das Template ausgegeben wird. Derzeit
        wird nur der Wert <code>entryform</code> (für die Ausgabe des Artikel-Editors)
        unterstützt, zukünftige können folgen, sobald weitere Bereiche des
        Backends auf Smarty-Templates umgesetzt werden.
    </span>
</span>
</p>

<p class="desc citem-desc">
<code class="item smarty">{$admin_vars}</code>
<span class="desc-info">
    <span class="box">
        <span class="smarty-type"><em>Variablentyp:</em> <code class="type">Eindimensionales Array</code></span>
        <span class="smarty-scope"><em>Verfügbar in:</em> <code class="file">admin/entries.tpl, admin/index.tpl</code></span>
        <span class="smarty-doc"><em>Zugewiesen in:</em> <code class="file">serendipity_admin.php</code></span>
    </span>

    <span class="box">
        Enthält einige Variablen mit Werten, die für das Backend benötigt werden.
        Folgende Array-Schlüssel sind verfügbar:
    </span>

    <span class="box mda-box">

        <span class="box"><code class="sub-item smarty">{$admin_vars.out}</code>
            <span class="sub-box"><span class="smarty-type"><em>Variablentyp:</em> <code class="type">Eindimensionales Array</code></span></span>
            <span class="sub-box">
                Kann zusätzliche HTML-Ausgaben von Plugins enthalten, die bei der Darstellung
                des Login-Fensters zum Backend-Bereich eingebunden werden können.</span>
        </span>

        <span class="box"><code class="sub-item smarty">{$admin_vars.no_create}</code>
            <span class="sub-box">
				<span class="smarty-type"><em>Variablentyp:</em> <code class="type">Boolean</code></span>
		    </span>
            <span class="sub-box">
                Bei eingeloggten Benutzern, die keine Rechte haben, Einträge zu erstellen (siehe
                Seite <span class="pageref"><a href="#no-create">no-create</a></span>), enthält diese Variable den Wert <code>true</code>.
                In diesem Fall werden viele der Menüpunkte des Backends ausgeblendet.
			</span>
        </span>

        <span class="box"><code class="sub-item smarty">{$admin_vars.version_info}</code>
            <span class="sub-box">
				<span class="smarty-type"><em>Variablentyp:</em> <code class="type">Zeichenkette</code></span>
		    </span>
            <span class="sub-box">
                Enthält die HTML-Ausgabe der aktuellen Serendipity- und PHP-Version für den Footer des Backends.
			</span>
        </span>

        <span class="box"><code class="sub-item smarty">{$admin_vars.css_file}</code>
            <span class="sub-box">
				<span class="smarty-type"><em>Variablentyp:</em> <code class="type">Zeichenkette</code></span>
		    </span>
            <span class="sub-box">
                Enthält die URL zu der CSS-Datei (<code>style.css</code>), die das Stylesheet für das Backend einbindet.
			</span>
        </span>

        <span class="box"><code class="sub-item smarty">{$admin_vars.admin_css_file}</code>
            <span class="sub-box">
				<span class="smarty-type"><em>Variablentyp:</em> <code class="type">Zeichenkette</code></span>
		    </span>
            <span class="sub-box">
                Enthält die URL zu der CSS-Datei (<code>pluginmanager.css</code>), die ein
                Stylesheet für die Plugin-Verwaltung des Backends einbindet.
			</span>
        </span>

        <span class="box"><code class="sub-item smarty">{$admin_vars.main_content}</code>
            <span class="sub-box">
				<span class="smarty-type"><em>Variablentyp:</em> <code class="type">Zeichenkette</code></span>
		    </span>
            <span class="sub-box">
                Enthält den HTML-Code für den Inhaltsbereich des Backends. Der Inhalt aller
                Funktionen bis auf die Erstellung/Bearbeitung eines Artikels erfolgt nicht
                mittels Smarty-Templates, sondern mit fest eingebautem PHP-Code, und kann daher nur
                als zentrale Variable in das Grundgerüst der <code>admin/index.tpl</code>-Datei
                eingebunden werden.
			</span>
        </span>

        <span class="box"><code class="sub-item smarty">{$admin_vars.no_banner}</code>
            <span class="sub-box">
				<span class="smarty-type"><em>Variablentyp:</em> <code class="type">Boolean</code></span>
		    </span>
            <span class="sub-box">
                Gibt an, ob das Kopfbild im Backend-Bereich eingebunden werden soll. Mittels der
                URL-Variable <code>serendipity_admin.php?serendipity[noBanner]=true</code> können
                Plugins oder andere Teile des Backends bestimmen, ob dieser Bereich
                aktiviert oder deaktiviert werden soll. Wenn <code class="item smarty">{$admin_vars.no_banner}</code>
                den Wert <code>true</code> enthält, wird das Kopfbild nicht eingebunden.
			</span>
        </span>

        <span class="box"><code class="sub-item smarty">{$admin_vars.no_sidebar}</code>
            <span class="sub-box">
				<span class="smarty-type"><em>Variablentyp:</em> <code class="type">Boolean</code></span>
		    </span>
            <span class="sub-box">
                Gibt an, ob das Menü der Seitenleiste im Backend-Bereich eingebunden werden
                soll. Mittels der URL-Variable
                <code>serendipity_admin.php?serendipity[noBanner]=true</code> können
                Plugins oder andere Bestandteile des Backends bestimmen, ob dieses Menü
                aktiviert oder deaktiviert werden soll. Enthält <code class="item smarty">{$admin_vars.no_sidebar}</code>
                den Wert <code>true</code>, werden alle Menüpunkte versteckt.
			</span>
        </span>

        <span class="box"><code class="sub-item smarty">{$admin_vars.post_action}</code>
            <span class="sub-box">
				<span class="smarty-type"><em>Variablentyp:</em> <code class="type">Zeichenkette</code></span>
		    </span>
            <span class="sub-box">
                Enthält die URL-Variable <code class="nobreak">$serendipity['POST']['action']</code>, um dessen Inhalt
                innerhalb des Templates prüfen zu können. Diese Variable enthält Anweisungen,
                welche Aktion im Backend gerade ausgeführt wird.
			</span>
        </span>

        <span class="box"><code class="sub-item smarty">{$admin_vars.is_logged_in}</code>
            <span class="sub-box">
				<span class="smarty-type"><em>Variablentyp:</em> <code class="type">Boolean</code></span>
		    </span>
            <span class="sub-box">
                Enthält den Wert <code>true</code>, wenn der aktuelle Benutzer bereits eingeloggt ist.
			</span>
        </span>

        <span class="box"><code class="sub-item smarty">{$admin_vars.admin_installed}, {$admin_vars.use_installer}</code>
            <span class="sub-box">
				<span class="smarty-type"><em>Variablentyp:</em> <code class="type">Boolean</code></span>
		    </span>
            <span class="sub-box">
                Enthält den Wert <code>true</code>, wenn Serendipity bereits installiert wurde. Ist
                dieser Wert nicht gesetzt, wird die Installationsroutine von Serendipity aufgerufen.
			</span>
        </span>

        <span class="box"><code class="sub-item smarty">{$admin_vars.self_info}</code>
            <span class="sub-box">
				<span class="smarty-type"><em>Variablentyp:</em> <code class="type">Zeichenkette</code></span>
		    </span>
            <span class="sub-box">
                Enthält eine HTML-Ausgabe, die angibt, welchen Benutzerrang und Namen der
                aktuell eingeloggte Benutzer hat.
			</span>
        </span>

   </span>
</span>
</p>

<p class="desc citem-desc">
<code class="item smarty">{$is_preview}</code>
<span class="desc-info">
    <span class="box">
        <span class="smarty-type"><em>Variablentyp:</em> <code class="type">Boolean</code></span>
        <span class="smarty-scope"><em>Verfügbar in:</em> <code class="file">*.tpl (Frontend)</code></span>
        <span class="smarty-doc"><em>Zugewiesen in:</em> <code class="file">include/functions_config.inc.php, serendipity_iframe()</code></span>
    </span>

    <span class="box">
        Enthält den Wert <code>true</code>, falls die Vorschau eines einzelnen Artikels im
        Design des Frontends angezeigt werden soll. Die Vorschau wird im Backend eingebettet.
    </span>
</span>
</p>

<p class="desc citem-desc">
<span class="tag-box invisible">
    <span class="inline-tag">Konstanten</span>
    <span class="inline-tag">Sprachkonstanten</span>
</span>
<code class="item smarty">{$CONST}</code>
<span class="desc-info">
    <span class="box">
        <span class="smarty-type"><em>Variablentyp:</em> <code class="type">Eindimensionales Array</code></span>
        <span class="smarty-scope"><em>Verfügbar in:</em> <code class="file">*.tpl</code></span>
        <span class="smarty-doc"><em>Zugewiesen in:</em> <code class="file">lang/(UTF-8/)serendipity_lang_XX.inc.php</code></span>
    </span>

    <span class="box">
        Das Smarty-Array <code class="smarty">{$CONST}</code> ist nur eine Umleitung, um den Zugriff auf
        Sprachkonstanten zu ermöglichen. Diese kapselt Smarty sonst üblicherweise in
        einem <code class="smarty">{$smarty.const}</code>-Array. Um Tipparbeit zu vermeiden (und aus
        Gründen der Rückwärtskompatibilität) nutzt Serendipity stattdessen nur
        <code class="smarty">{$CONST}</code>. Die Array-Schlüssel entsprechen dabei dem jeweiligen Namen
        der Sprachkonstante, der in einer Sprachdatei wie
        <code>lang/serendipity_lang_de.inc.php</code> festgelegt wird.
        Dargestellte Meldungen sollten in einer Smarty-Template-Datei niemals direkt
        eingebunden werden, sondern immer über das Einfügen von Sprachkonstanten
        (notfalls mittels eigener <code>lang_de.inc.php</code>-Datei, wie auf
        Seite <span class="pageref"><a href="#api-lang">api-lang</a></span> und <span class="pageref"><a href="#api-lang2">api-lang2</a></span> beschrieben).
    </span>
</span>
</p>

<p class="desc citem-desc">
<code class="item smarty">{$startpage}</code>
<span class="desc-info">
    <span class="box">
        <span class="smarty-type"><em>Variablentyp:</em> <code class="type">Boolean</code></span>
        <span class="smarty-scope"><em>Verfügbar in:</em> <code class="file">*.tpl (Frontend)</code></span>
        <span class="smarty-doc"><em>Zugewiesen in:</em> <code class="file">include/genpage.inc.php</code></span>
    </span>

    <span class="box">
        Enthält den Wert <code>true</code>, wenn Serendipity die Startseite des Blogs darstellt.
    </span>
</span>
</p>

<p class="desc citem-desc">
<code class="item smarty">{$uriargs}</code>
<span class="desc-info">
    <span class="box">
        <span class="smarty-type"><em>Variablentyp:</em> <code class="type">Zeichenkette</code></span>
        <span class="smarty-scope"><em>Verfügbar in:</em> <code class="file">*.tpl (Frontend)</code></span>
        <span class="smarty-doc"><em>Zugewiesen in:</em> <code class="file">include/genpage.inc.php</code></span>
    </span>

    <span class="box">
        Enthält eine Liste der URL-Pfadkomponenten der aktuellen Seite.
    </span>
</span>
</p>

<p class="desc citem-desc">
<code class="item smarty">{$head_link_stylesheet}</code>
<span class="desc-info">
    <span class="box">
        <span class="smarty-type"><em>Variablentyp:</em> <code class="type">Zeichenkette</code></span>
        <span class="smarty-scope"><em>Verfügbar in:</em> <code class="file">*.tpl</code></span>
        <span class="smarty-doc"><em>Zugewiesen in:</em> <code class="file">include/functions_smarty.inc.php</code></span>
    </span>

    <span class="box">
        Enthält die URL zur zentralen Stylesheet-Datei.
    </span>
</span>
</p>

<p class="desc citem-desc">
<code class="item smarty">{$head_charset}</code>
<span class="desc-info">
    <span class="box">
        <span class="smarty-type"><em>Variablentyp:</em> <code class="type">Zeichenkette</code></span>
        <span class="smarty-scope"><em>Verfügbar in:</em> <code class="file">*.tpl</code></span>
        <span class="smarty-doc"><em>Zugewiesen in:</em> <code class="file">include/functions_smarty.inc.php</code></span>
    </span>

    <span class="box">
        Enthält den aktuell konfigurierten Zeichensatz der HTML-Ausgabe (meist
        <code>UTF-8</code> oder <code>ISO-8859-1</code>).
    </span>
</span>
</p>

<p class="desc citem-desc">
<code class="item smarty">{$head_version}</code> <em>(deprecated)</em>,
<code class="item smarty">{$serendipityVersion}</code>
<span class="desc-info">
    <span class="box">
        <span class="smarty-type"><em>Variablentyp:</em> <code class="type">Zeichenkette</code></span>
        <span class="smarty-scope"><em>Verfügbar in:</em> <code class="file">*.tpl</code></span>
        <span class="smarty-doc"><em>Zugewiesen in:</em> <code class="file">include/functions_smarty.inc.php</code></span>
    </span>

    <span class="box">
        Enthält die Serendipity-Versionsnummer.
    </span>
</span>
</p>

<p class="desc citem-desc">
<code class="item smarty">{$head_title}</code>
<span class="desc-info">
    <span class="box">
        <span class="smarty-type"><em>Variablentyp:</em> <code class="type">Zeichenkette</code></span>
        <span class="smarty-scope"><em>Verfügbar in:</em> <code class="file">*.tpl</code></span>
        <span class="smarty-doc"><em>Zugewiesen in:</em> <code class="file">include/functions_smarty.inc.php</code></span>
    </span>

    <span class="box">
        Enthält den Text, der im Titelbereich des Blogs angezeigt wird. Dieser kann vom
        konfigurierten Titel des Blogs abweichen, wenn beispielsweise die Detailansicht
        eines Artikels angezeigt wird.
    </span>
</span>
</p>

<p class="desc citem-desc">
<code class="item smarty">{$head_subtitle}</code>
<span class="desc-info">
    <span class="box">
        <span class="smarty-type"><em>Variablentyp:</em> <code class="type">Zeichenkette</code></span>
        <span class="smarty-scope"><em>Verfügbar in:</em> <code class="file">*.tpl</code></span>
        <span class="smarty-doc"><em>Zugewiesen in:</em> <code class="file">include/functions_smarty.inc.php</code></span>
    </span>

    <span class="box">
        Enthält den Text, der im Untertitelbereich des Blogs angezeigt wird. Dieser kann vom
        konfigurierten Untertitel des Blogs abweichen, wenn beispielsweise die Detailansicht
        eines Artikels angezeigt wird. In diesem Fall wird der Titel des Blogs
        standardmäßig als Untertitel eingebunden.
    </span>
</span>
</p>

<p class="desc citem-desc">
<code class="item smarty">{$blogTitle}</code>
<span class="desc-info">
    <span class="box">
        <span class="smarty-type"><em>Variablentyp:</em> <code class="type">Zeichenkette</code></span>
        <span class="smarty-scope"><em>Verfügbar in:</em> <code class="file">*.tpl</code></span>
        <span class="smarty-doc"><em>Zugewiesen in:</em> <code class="file">include/functions_smarty.inc.php</code></span>
    </span>

    <span class="box">
        Enthält den Titel des Blogs, wie er in der Konfiguration angegeben wurde.
    </span>
</span>
</p>

<p class="desc citem-desc">
<code class="item smarty">{$blogSubTitle}</code>
<span class="desc-info">
    <span class="box">
        <span class="smarty-type"><em>Variablentyp:</em> <code class="type">Zeichenkette</code></span>
        <span class="smarty-scope"><em>Verfügbar in:</em> <code class="file">*.tpl</code></span>
        <span class="smarty-doc"><em>Zugewiesen in:</em> <code class="file">include/functions_smarty.inc.php</code></span>
    </span>

    <span class="box">
        Enthält den Untertitel des Blogs, wie er in der Konfiguration angegeben wurde.
    </span>
</span>
</p>

<p class="desc citem-desc">
<code class="item smarty">{$blogDescription}</code>
<span class="desc-info">
    <span class="box">
        <span class="smarty-type"><em>Variablentyp:</em> <code class="type">Zeichenkette</code></span>
        <span class="smarty-scope"><em>Verfügbar in:</em> <code class="file">*.tpl</code></span>
        <span class="smarty-doc"><em>Zugewiesen in:</em> <code class="file">include/functions_smarty.inc.php</code></span>
    </span>

    <span class="box">
        Enthält die Beschreibung des Blogs, wie sie in der Konfiguration angegeben wurde.
    </span>
</span>
</p>

<p class="desc citem-desc">
<code class="item smarty">{$is_xhtml}</code>
<span class="desc-info">
    <span class="box">
        <span class="smarty-type"><em>Variablentyp:</em> <code class="type">Boolean</code></span>
        <span class="smarty-scope"><em>Verfügbar in:</em> <code class="file">*.tpl</code></span>
        <span class="smarty-doc"><em>Zugewiesen in:</em> <code class="file">include/functions_smarty.inc.php</code></span>
    </span>

    <span class="box">
        Ist auf <code>true</code> gesetzt, wenn Serendipity XHTML-Ausgaben produzieren soll. In
        älteren Serendipity-Versionen war diese Variable konfigurierbar, mittlerweile
        ist sie immer fest auf <code>true</code> gesetzt.
    </span>
</span>
</p>

<p class="desc citem-desc">
<code class="item smarty">{$use_popups}</code>
<span class="desc-info">
    <span class="box">
        <span class="smarty-type"><em>Variablentyp:</em> <code class="type">Boolean</code></span>
        <span class="smarty-scope"><em>Verfügbar in:</em> <code class="file">*.tpl</code></span>
        <span class="smarty-doc"><em>Zugewiesen in:</em> <code class="file">include/functions_smarty.inc.php</code></span>
    </span>

    <span class="box">
        Ist auf <code>true</code> gesetzt, wenn in der Serendipity-Konfiguration die Benutzung
        von Popups erlaubt wurde.
    </span>
</span>
</p>

<p class="desc citem-desc">
<code class="item smarty">{$is_embedded}</code>
<span class="desc-info">
    <span class="box">
        <span class="smarty-type"><em>Variablentyp:</em> <code class="type">Boolean</code></span>
        <span class="smarty-scope"><em>Verfügbar in:</em> <code class="file">*.tpl</code></span>
        <span class="smarty-doc"><em>Zugewiesen in:</em> <code class="file">include/functions_smarty.inc.php</code></span>
    </span>

    <span class="box">
        Ist auf <code>true</code> gesetzt, wenn in der Serendipity-Konfiguration die
        eingebettete Nutzung aktiviert wurde. In so einem Fall geben Templates keinen
        HTML-Kopf- und -Fußbereich aus.
    </span>
</span>
</p>

<p class="desc citem-desc">
<code class="item smarty">{$is_raw_mode}</code>
<span class="desc-info">
    <span class="box">
        <span class="smarty-type"><em>Variablentyp:</em> <code class="type">Boolean</code></span>
        <span class="smarty-scope"><em>Verfügbar in:</em> <code class="file">*.tpl</code></span>
        <span class="smarty-doc"><em>Zugewiesen in:</em> <code class="file">include/functions_smarty.inc.php</code></span>
    </span>

    <span class="box">
        Ist auf <code>true</code> gesetzt, wenn ein altes Serendipity-Template (mit
        <code>layout.php</code>-Datei) verwendet wird und keine Smarty-Dateien ausgewertet
        werden müssen.
    </span>
</span>
</p>

<p class="desc citem-desc">
<code class="item smarty">{$is_logged_in}</code>
<span class="desc-info">
    <span class="box">
        <span class="smarty-type"><em>Variablentyp:</em> <code class="type">Boolean</code></span>
        <span class="smarty-scope"><em>Verfügbar in:</em> <code class="file">*.tpl</code></span>
        <span class="smarty-doc"><em>Zugewiesen in:</em> <code class="file">include/functions_smarty.inc.php</code></span>
    </span>

    <span class="box">
        Ist auf <code>true</code> gesetzt, wenn ein eingeloggter Redakteur das Frontend aufruft.
    </span>
</span>
</p>

<p class="desc citem-desc">
<code class="item smarty">{$entry_id}</code>
<span class="desc-info">
    <span class="box">
        <span class="smarty-type"><em>Variablentyp:</em> <code class="type">Zahl</code></span>
        <span class="smarty-scope"><em>Verfügbar in:</em> <code class="file">*.tpl</code></span>
        <span class="smarty-doc"><em>Zugewiesen in:</em> <code class="file">include/functions_smarty.inc.php</code></span>
    </span>

    <span class="box">
        Kann die ID eines Blog-Artikels enthalten, wenn gerade die Detailansicht eines
        Artikels aufgerufen wird.
    </span>
</span>
</p>

<p class="desc citem-desc">
<code class="item smarty">{$is_single_entry}</code>
<span class="desc-info">
    <span class="box">
        <span class="smarty-type"><em>Variablentyp:</em> <code class="type">Boolean</code></span>
        <span class="smarty-scope"><em>Verfügbar in:</em> <code class="file">*.tpl</code></span>
        <span class="smarty-doc"><em>Zugewiesen in:</em> <code class="file">include/functions_smarty.inc.php</code></span>
    </span>

    <span class="box">
        Ist auf <code>true</code> gesetzt, wenn die Detailansicht eines Artikels aufgerufen wird.
    </span>
</span>
</p>

<p class="desc citem-desc">
<code class="item smarty">{$serendipityHTTPPath}</code>
<span class="desc-info">
    <span class="box">
        <span class="smarty-type"><em>Variablentyp:</em> <code class="type">Zeichenkette</code></span>
        <span class="smarty-scope"><em>Verfügbar in:</em> <code class="file">*.tpl</code></span>
        <span class="smarty-doc"><em>Zugewiesen in:</em> <code class="file">include/functions_smarty.inc.php</code></span>
    </span>

    <span class="box">
        Enthält den HTTP-Pfad zum Serendipity-Blog.
    </span>
</span>
</p>

<p class="desc citem-desc">
<code class="item smarty">{$serendipityBaseURL}</code>
<span class="desc-info">
    <span class="box">
        <span class="smarty-type"><em>Variablentyp:</em> <code class="type">Zeichenkette</code></span>
        <span class="smarty-scope"><em>Verfügbar in:</em> <code class="file">*.tpl</code></span>
        <span class="smarty-doc"><em>Zugewiesen in:</em> <code class="file">include/functions_smarty.inc.php</code></span>
    </span>

    <span class="box">
        Enthält die vollständige URL zum Serendipity-Blog.
    </span>
</span>
</p>

<p class="desc citem-desc">
<code class="item smarty">{$serendipityRewritePrefix}</code>
<span class="desc-info">
    <span class="box">
        <span class="smarty-type"><em>Variablentyp:</em> <code class="type">Zeichenkette</code></span>
        <span class="smarty-scope"><em>Verfügbar in:</em> <code class="file">*.tpl</code></span>
        <span class="smarty-doc"><em>Zugewiesen in:</em> <code class="file">include/functions_smarty.inc.php</code></span>
    </span>

    <span class="box">
        Falls im Blog keine URL-Umformung (siehe Seite <span class="pageref"><a href="#urlformung">urlformung</a></span>)
        verfügbar ist, enthält diese Variable ein Präfix (<code>index.php?/</code>), das vor
        jede URL gesetzt wird, um aussagekräftige URLs zu imitieren.
    </span>
</span>
</p>

<p class="desc citem-desc">
<code class="item smarty">{$serendipityIndexFile}</code>
<span class="desc-info">
    <span class="box">
        <span class="smarty-type"><em>Variablentyp:</em> <code class="type">Zeichenkette</code></span>
        <span class="smarty-scope"><em>Verfügbar in:</em> <code class="file">*.tpl</code></span>
        <span class="smarty-doc"><em>Zugewiesen in:</em> <code class="file">include/functions_smarty.inc.php</code></span>
    </span>

    <span class="box">
        Enthält den Namen der Index-Datei zur Darstellung des Blogs, wie in der
        Serendipity-Konfiguration festgelegt. Beim Einsatz der eingebetteten Nutzung
        (siehe Seite <span class="pageref"><a href="#embedding">embedding</a></span>)
        zeigt diese Variable meist auf eine eigene Wrapper-Datei.
    </span>
</span>
</p>

<p class="desc citem-desc">
<code class="item smarty">{$lang}</code>
<span class="desc-info">
    <span class="box">
        <span class="smarty-type"><em>Variablentyp:</em> <code class="type">Zeichenkette</code></span>
        <span class="smarty-scope"><em>Verfügbar in:</em> <code class="file">*.tpl</code></span>
        <span class="smarty-doc"><em>Zugewiesen in:</em> <code class="file">include/functions_smarty.inc.php</code></span>
    </span>

    <span class="box">
        Enthält das Kürzel der aktuell gewählten Sprachdatei (zB. <code>de</code>, <code>en</code> usw.).
    </span>
</span>
</p>

<p class="desc citem-desc">
<code class="item smarty">{$category}</code>
<span class="desc-info">
    <span class="box">
        <span class="smarty-type"><em>Variablentyp:</em> <code class="type">Zahl</code></span>
        <span class="smarty-scope"><em>Verfügbar in:</em> <code class="file">*.tpl</code></span>
        <span class="smarty-doc"><em>Zugewiesen in:</em> <code class="file">include/functions_smarty.inc.php</code></span>
    </span>

    <span class="box">
        Falls eine Kategorie-Übersicht dargestellt wird, enthält diese Variable die ID
        dieser Kategorie.
    </span>
</span>
</p>

<p class="desc citem-desc">
<code class="item smarty">{$category_info}</code>
<span class="desc-info">
    <span class="box">
        <span class="smarty-type"><em>Variablentyp:</em> <code class="type">Eindimensionales Array</code></span>
        <span class="smarty-scope"><em>Verfügbar in:</em> <code class="file">*.tpl</code></span>
        <span class="smarty-doc"><em>Zugewiesen in:</em> <code class="file">include/functions_smarty.inc.php</code></span>
    </span>

    <span class="box">
        Falls eine Kategorie-Übersicht dargestellt wird, enthält diese Variable ein
        Array mit den Metadaten der Kategorie. Die möglichen Arrayschlüssel sind in der
        Liste auf Seite <span class="pageref"><a href="#db-categories">db-categories</a></span> aufgeführt.
    </span>
</span>
</p>

<p class="desc citem-desc">
<code class="item smarty">{$template}</code>
<span class="desc-info">
    <span class="box">
        <span class="smarty-type"><em>Variablentyp:</em> <code class="type">Zeichenkette</code></span>
        <span class="smarty-scope"><em>Verfügbar in:</em> <code class="file">*.tpl</code></span>
        <span class="smarty-doc"><em>Zugewiesen in:</em> <code class="file">include/functions_smarty.inc.php</code></span>
    </span>

    <span class="box">
        Enthält den Namen des Template-Verzeichnisses, das zur Darstellung verwendet wird.
    </span>
</span>
</p>

<p class="desc citem-desc">
<code class="item smarty">{$dateRange}</code>
<span class="desc-info">
    <span class="box">
        <span class="smarty-type"><em>Variablentyp:</em> <code class="type">Zeichenkette</code></span>
        <span class="smarty-scope"><em>Verfügbar in:</em> <code class="file">*.tpl</code></span>
        <span class="smarty-doc"><em>Zugewiesen in:</em> <code class="file">include/functions_smarty.inc.php</code></span>
    </span>

    <span class="box">
        Enthält den Wert der <code class="nobreak">$serendipity['range]</code>-Variable. Diese legt den
        Zeitraum fest, der für die Auswahl der dargestellten Artikel ausgewertet wird.
    </span>
</span>
</p>

<p class="desc citem-desc">
<code class="item smarty">{$template_option}</code>
<span class="tag-box invisible">
    <span class="inline-tag">Template-Optionen!Variablen</span>
</span>
<span class="desc-info">
    <span class="box">
        <span class="smarty-type"><em>Variablentyp:</em> <code class="type">Zeichenkette</code></span>
        <span class="smarty-scope"><em>Verfügbar in:</em> <code class="file">*.tpl</code></span>
        <span class="smarty-doc"><em>Zugewiesen in:</em> <code class="file">include/functions_smarty.inc.php</code></span>
    </span>

    <span class="box">
        Falls das aktuell gewählte Template über Konfigurationsoptionen verfügt, sind
        die gespeicherten Werte über die Variable <code class="item smarty">{$template_option}</code>
        zugänglich. Die jeweils vorhandenen Arrayschlüssel müssen der
        <code>config.inc.php</code>-Datei des Templates entnommen werden;
        siehe auch Seite <span class="pageref"><a href="#templateoptionen">templateoptionen</a></span>.
    </span>
</span>
</p>

<p class="desc citem-desc">
<span class="label invisible" id="global-view">global-view</span>
<code class="item smarty">{$view}</code>
<span class="desc-info">
    <span class="box">
        <span class="smarty-type"><em>Variablentyp:</em> <code class="type">Zeichenkette</code></span>
        <span class="smarty-scope"><em>Verfügbar in:</em> <code class="file">*.tpl (Frontend</code></span>
        <span class="smarty-doc"><em>Zugewiesen in:</em> <code class="file">include/genpage.inc.php</code></span>
    </span>

    <span class="box">
        Gibt an, welchen Seiteninhalt der Benutzer angefordert hat. Abhängig davon
        werden unterschiedliche Template-Dateien eingelesen. Die Template-Dateien können
        diese Variable prüfen, um festzustellen, welche Art Ausgaben angefordert werden.
    </span>

    <span class="box">Mögliche Werte sind:</span>

    <span class="list">
        <span class="li-item siLi"><code class="sub-item">404</code> für die Ausgabe einer Übersicht, wenn die aktuelle URL ungültig ist.</span>
        <span class="li-item siLi"><code class="sub-item">plugin</code> wenn ein Ereignis-Plugin (wie zB. die <em>statischen Seiten</em>) die Ausgabe übernimmt.</span>
        <span class="li-item siLi"><code class="sub-item">feed</code> wenn die RSS-Feeds dargestellt werden.</span>
        <span class="li-item siLi"><code class="sub-item">archives</code> wenn Übersichtsseiten zu bestimmten Monaten, Tagen, Jahren dargestellt werden.</span>
        <span class="li-item siLi"><code class="sub-item">archive</code> wenn die kurzen Übersichtsseiten für Monate oder Jahre dargestellt werden.</span>
        <span class="li-item siLi"><code class="sub-item">entry</code> wenn eine Artikel-Detailseite dargestellt wird.</span>
        <span class="li-item siLi"><code class="sub-item">admin</code> wenn das Backend dargestellt wird.</span>
        <span class="li-item siLi"><code class="sub-item">categories</code> wenn Übersichtsseiten zu einer Kategorie angezeigt werden.</span>
        <span class="li-item siLi"><code class="sub-item">authors</code> wenn Übersichtsseiten zu einem speziellen Autor angezeigt werden.</span>
        <span class="li-item siLi"><code class="sub-item">search</code> wenn Ergebnisse der Volltextsuche angezeigt werden.</span>
        <span class="li-item siLi"><code class="sub-item">css</code> wenn das Stylesheet ausgegeben wird.</span>
        <span class="li-item siLi"><code class="sub-item">comments</code> wenn Übersichtsseiten von Kommentaren dargestellt werden.</span>
        <span class="li-item siLi"><code class="sub-item">start</code> wenn die Startseite dargestellt wird.</span>
    </span>

</span>
</p>

<p class="desc citem-desc">
<code class="item smarty">{$content_message}</code>
<span class="desc-info">
    <span class="box">
        <span class="smarty-type"><em>Variablentyp:</em> <code class="type">Zeichenkette</code></span>
        <span class="smarty-scope"><em>Verfügbar in:</em> <code class="file">*.tpl (Frontend)</code></span>
        <span class="smarty-doc"><em>Zugewiesen in:</em> <code class="file">include/genpage.inc.php</code></span>
    </span>

    <span class="box">
        Enthält etwaige Meldungen (inklusive HTML-Code), die auf der Übersichtsseite dargestellt
        werden, wenn zB. die Volltextsuche ausgeführt wurde.
    </span>
</span>
</p>

<p class="desc citem-desc">
<code class="item smarty">{$searchresult_error}</code>
<span class="desc-info">
    <span class="box">
        <span class="smarty-type"><em>Variablentyp:</em> <code class="type">Boolean</code></span>
        <span class="smarty-scope"><em>Verfügbar in:</em> <code class="file">*.tpl (Frontend)</code></span>
        <span class="smarty-doc"><em>Zugewiesen in:</em> <code class="file">include/genpage.inc.php</code></span>
    </span>

    <span class="box">
        Wenn die Volltextsuche nicht ausgeführt werden konnte, enthält diese Variable
        den Wert <code>true</code>.
    </span>
</span>
</p>

<p class="desc citem-desc">
<code class="item smarty">{$searchresult_noEntries}</code>
<span class="desc-info">
    <span class="box">
        <span class="smarty-type"><em>Variablentyp:</em> <code class="type">Boolean</code></span>
        <span class="smarty-scope"><em>Verfügbar in:</em> <code class="file">*.tpl (Frontend)</code></span>
        <span class="smarty-doc"><em>Zugewiesen in:</em> <code class="file">include/genpage.inc.php</code></span>
    </span>

    <span class="box">
        Wenn die Volltextsuche ausgeführt wurde, aber keine Ergebnisse gefunden wurden,
        enthält diese Variable den Wert <code>true</code>.
    </span>
</span>
</p>

<p class="desc citem-desc">
<code class="item smarty">{$searchresult_results}</code>
<span class="desc-info">
    <span class="box">
        <span class="smarty-type"><em>Variablentyp:</em> <code class="type">Boolean</code></span>
        <span class="smarty-scope"><em>Verfügbar in:</em> <code class="file">*.tpl (Frontend)</code></span>
        <span class="smarty-doc"><em>Zugewiesen in:</em> <code class="file">include/genpage.inc.php</code></span>
    </span>

    <span class="box">
        Wenn die Volltextsuche ausgeführt wurde und mindestens ein Ergebnis vorliegt,
        enthält diese Variable den Wert <code>true</code>.
    </span>
</span>
</p>

<p class="desc citem-desc">
<code class="item smarty">{$raw_data}</code>
<span class="desc-info">
    <span class="box">
        <span class="smarty-type"><em>Variablentyp:</em> <code class="type">Zeichenkette</code></span>
        <span class="smarty-scope"><em>Verfügbar in:</em> <code class="file">*.tpl (Frontend)</code></span>
        <span class="smarty-doc"><em>Zugewiesen in:</em> <code class="file">index.php</code></span>
    </span>

    <span class="box">
        Standardmäßig werden alle Serendipity-Inhalte mittels Smarty-Funktionen und
        Smarty-Templates zusammen gebündelt und dann als vollständige HTML-Seite
        ausgegeben. Dennoch kann es passieren, dass einige Ereignis-Plugins rohe
        HTML-Ausgaben innerhalb ihrer PHP-Struktur ausgeben. Diese sind zur
        Smarty-Ausgabe inkompatibel; sie werden daher mittels PHP
        <em>Output-Buffering</em>-Funktionalität zusammen gebündelt und letztendlich
        innerhalb der Smarty-Variable <code class="item smarty">{$raw_data}</code> gespeichert und ausgegeben.
    </span>
</span>
</p>

<p class="desc citem-desc">
<code class="item smarty">{$leftSideBarElements}</code>, 
<code class="item smarty">{$rightSideBarElements}</code>
<span class="desc-info">
    <span class="box">
        <span class="smarty-type"><em>Variablentyp:</em> <code class="type">Zahl</code></span>
        <span class="smarty-scope"><em>Verfügbar in:</em> <code class="file">*.tpl (Frontend)</code></span>
        <span class="smarty-doc"><em>Zugewiesen in:</em> <code class="file">include/genpage.inc.php</code></span>
    </span>

    <span class="box">
        Enthält die Anzahl an Seitenleisten-Plugins für die linke und rechte Seitenleiste.
    </span>
</span>
</p>

<p class="desc citem-desc">
<code class="item smarty">{$CONTENT}</code>
<span class="desc-info">
    <span class="box">
        <span class="smarty-type"><em>Variablentyp:</em> <code class="type">Zeichenkette</code></span>
        <span class="smarty-scope"><em>Verfügbar in:</em> <code class="file">*.tpl (Frontend)</code></span>
        <span class="smarty-doc"><em>Zugewiesen in:</em> <code class="file">include/genpage.inc.php</code></span>
    </span>

    <span class="box">
        Enthält den geparsten HTML-Code des <code>content.tpl</code>-Templates.
    </span>
</span>
</p>

</section><!-- section.sub end -->

<section id="U962" class="sub">
<span class="u-toc">9.6.2 - Dateispezifische Variablen</span>

<h3 class="subsection" id="dateispezifische-variablen">Dateispezifische Variablen</h3>

<p>In dieser Liste werden nur die vom Serendipity-Kern verwendeten Variablen
ausgeführt. Zusätzlich können in den einzelnen Template-Dateien auch abhängig
von den eingesetzten Ereignis-Plugins weitere Variablen zur Verfügung stehen.
Falls ein Plugin weitere Variablen einbindet, wird darauf separat in der
Beschreibung der einzelnen Ereignis-Plugins hingewiesen, wie beispielsweise beim
<em>Freie Artikel-Tags</em>-Plugin auf Seite <span class="pageref"><a href="#freetag">freetag</a></span>.</p>

<article id="XU" class="subsub">

<header>
    <h4 class="subarticle" id="entries-tpl-entries_summary-tpl">entries.tpl, entries_summary.tpl</h4>
</header>

<p class="tagging invisible">
<span class="tag-box invisible">
    <span class="inline-tag">Template-Dateien!entries.tpl</span>
    <span class="inline-tag">Template-Dateien!entries_summary.tpl</span>
</span>
<span class="label invisible" id="entries.tpl">entries.tpl</span>
</p>

<p>Die Template-Datei <code>entries.tpl</code> ist die zentralste Datei für die
Darstellung von Blog-Artikeln im Frontend. Alle für diese Datei aufgeführten
Variablen sind zwar grundsätzlich auch innerhalb anderer Template-Dateien
(<code>index.tpl, content.tpl</code>) verfügbar, machen aber üblicherweise nur im
Kontext der Datei <code>entries.tpl</code> Sinn.</p>

<p class="desc citem-desc">
<code class="item smarty">{$footer_prev_page}</code>
<span class="desc-info">
    <span class="box">
        <span class="smarty-type"><em>Variablentyp:</em> <code class="type">Zeichenkette</code></span>
        <span class="smarty-doc"><em>Zugewiesen in:</em> <code class="file">include/functions_entries.inc.php, serendipity_printEntryFooter()</code></span>
    </span>

    <span class="box">
        Enthält die URL zur vorigen Seite innerhalb einer Artikelübersicht. Wird
        innerhalb der Fußzeile dargestellt.
    </span>
</span>
</p>

<p class="desc citem-desc">
<code class="item smarty">{$footer_next_page}</code>
<span class="desc-info">
    <span class="box">
        <span class="smarty-type"><em>Variablentyp:</em> <code class="type">Zeichenkette</code></span>
        <span class="smarty-doc"><em>Zugewiesen in:</em> <code class="file">include/functions_entries.inc.php, serendipity_printEntryFooter()</code></span>
    </span>

    <span class="box">
        Enthält die URL zur nächsten Seite innerhalb einer Artikelübersicht. Wird
        innerhalb der Fußzeile dargestellt.
    </span>
</span>
</p>

<p class="desc citem-desc">
<code class="item smarty">{$footer_totalEntries}</code>
<span class="desc-info">
    <span class="box">
        <span class="smarty-type"><em>Variablentyp:</em> <code class="type">Zahl</code></span>
        <span class="smarty-doc"><em>Zugewiesen in:</em> <code class="file">include/functions_entries.inc.php, serendipity_printEntryFooter()</code></span>
    </span>

    <span class="box">
        Bei Archivübersichten, die sich über mehr als eine Seite erstrecken, enthält
        diese Variable die Anzahl der insgesamt blätterbaren Einträge.
    </span>
</span>
</p>

<p class="desc citem-desc">
<code class="item smarty">{$footer_totalPages}</code>
<span class="desc-info">
    <span class="box">
        <span class="smarty-type"><em>Variablentyp:</em> <code class="type">Zahl</code></span>
        <span class="smarty-doc"><em>Zugewiesen in:</em> <code class="file">include/functions_entries.inc.php, serendipity_printEntryFooter()</code></span>
    </span>

    <span class="box">
        Bei Archivübersichten, die sich über mehr als eine Seite erstrecken, enthält
        diese Variable die Anzahl der insgesamt verfügbaren Seiten.
    </span>
</span>
</p>

<p class="desc citem-desc">
<code class="item smarty">{$footer_currentPage}</code>
<span class="desc-info">
    <span class="box">
        <span class="smarty-type"><em>Variablentyp:</em> <code class="type">Zahl</code></span>
        <span class="smarty-doc"><em>Zugewiesen in:</em> <code class="file">include/functions_entries.inc.php, serendipity_printEntryFooter()</code></span>
    </span>

    <span class="box">
        Bei Archivübersichten, die sich über mehr als eine Seite erstrecken, enthält
        diese Variable die aktuelle Seitennummer.
    </span>
</span>
</p>

<p class="desc citem-desc">
<code class="item smarty">{$footer_pageLink}</code>
<span class="desc-info">
    <span class="box">
        <span class="smarty-type"><em>Variablentyp:</em> <code class="type">Zeichenkette</code></span>
        <span class="smarty-doc"><em>Zugewiesen in:</em> <code class="file">include/functions_entries.inc.php, serendipity_printEntryFooter()</code></span>
    </span>

    <span class="box">
        Enthält eine generische URL, die verwendet werden kann, um Links zu beliebigen
        Folgeseiten zu formatieren. Die URL enthält einen Platzhalter <code>%s</code>, der
        durch die gewünschte Zielseitennummer ersetzt werden kann.
    </span>
</span>
</p>

<p class="desc citem-desc">
<code class="item smarty">{$footer_info}</code>
<span class="desc-info">
    <span class="box">
        <span class="smarty-type"><em>Variablentyp:</em> <code class="type">Zeichenkette</code></span>
        <span class="smarty-doc"><em>Zugewiesen in:</em> <code class="file">include/functions_entries.inc.php, serendipity_printEntryFooter()</code></span>
    </span>

    <span class="box">
        Bei Archivübersichten, die sich über mehr als eine Seite erstrecken, enthält
        diese Variable einen Satz, der darüber informiert, wie viele Ergebnisse und Seiten
        es insgesamt gibt, zB.: <span class="mbold">Seite 1 von 10, insgesamt 20 Einträge</span>.
    </span>
</span>
</p>

<p class="desc citem-desc">
<code class="item smarty">{$plugin_clean_page}</code>
<span class="desc-info">
    <span class="box">
        <span class="smarty-type"><em>Variablentyp:</em> <code class="type">Boolean</code></span>
        <span class="smarty-doc"><em>Zugewiesen in:</em> <code class="file">include/functions_entries.inc.php, serendipity_printEntries()</code></span>
    </span>

    <span class="box">
        Ereignis-Plugins können für die Ausgabe das Layout der Artikelübersicht
        übernehmen und darin ihre eigenen Inhalte einbinden. Die Variable
        <code class="item smarty">{$plugin_clean_page}</code> enthält den Wert <code>true</code>, wenn ein Plugin
        sozusagen eine <em>saubere Seite</em> ohne Artikel ausgeben möchte.
    </span>
</span>
</p>

<p class="desc citem-desc">
<code class="item smarty">{$comments_messagestack}</code>
<span class="desc-info">
    <span class="box">
        <span class="smarty-type"><em>Variablentyp:</em> <code class="type">Eindimensionales Array</code></span>
        <span class="smarty-doc"><em>Zugewiesen in:</em> <code class="file">include/functions_entries.inc.php, serendipity_printEntries()</code></span>
    </span>

    <span class="box">
        Enthält ein Array mit etwaigen Fehlermeldungen, die bei der Erstellung eines
        Kommentars auftreten können (fehlende Angaben, Spam-Erkennung). Pro
        Array-Schlüssel ist eine Fehlermeldung aufgeführt, die HTML-Code enthalten kann.
    </span>
</span>
</p>

<p class="desc citem-desc">
<code class="item smarty">{$is_comment_added}</code>
<span class="desc-info">
    <span class="box">
        <span class="smarty-type"><em>Variablentyp:</em> <code class="type">Boolean</code></span>
        <span class="smarty-doc"><em>Zugewiesen in:</em> <code class="file">include/functions_entries.inc.php, serendipity_printEntries()</code></span>
    </span>

    <span class="box">
        Enthält den Wert <code>true</code>, wenn ein Kommentar innerhalb des Seitenaufrufs
        erfolgreich hinzugefügt wurde.
    </span>
</span>
</p>

<p class="desc citem-desc">
<code class="item smarty">{$is_comment_moderate}</code>
<span class="desc-info">
    <span class="box">
        <span class="smarty-type"><em>Variablentyp:</em> <code class="type">Boolean</code></span>
        <span class="smarty-doc"><em>Zugewiesen in:</em> <code class="file">include/functions_entries.inc.php, serendipity_printEntries()</code></span>
    </span>

    <span class="box">
        Enthält den Wert <code>true</code>, wenn ein Kommentar innerhalb des Seitenaufrufs
erfolgreich hinzugefügt wurde, aber aufgrund der aktivierten Kommentarmoderation
nicht direkt freigeschaltet wird.
    </span>
</span>
</p>

<p class="desc citem-desc">
<code class="item smarty">{$entries}</code>
<span class="desc-info">
    <span class="box">
        <span class="smarty-type"><em>Variablentyp:</em> <code class="type">Mehrdimensionales Array</code></span>
        <span class="smarty-doc"><em>Zugewiesen in:</em> <code class="file">include/functions_entries.inc.php, serendipity_printEntries()</code></span>
    </span>

    <span class="box">
        Enthält das Array mit den Metadaten und Eigenschaften eines Artikels. Die erste
        Dimension des Arrays enthält das gruppierende Datum, so dass im Wert des
        Arrays für einen Tag mehrere Artikel enthalten sein können. Dies ermöglicht
        später bei der Ausgabe der Variable <code class="smarty">{$entries}</code>, dass dasselbe Datum
        nur einmal ausgegeben wird und darunter mehrere Artikel erscheinen können.
    </span>

    <span class="tag-box invisible">
        <span class="inline-tag">Template-Variablen!\$entry.title</span>
    </span>
    <span class="box">
        Der Array-Schlüssel enthält das Datum dabei in Form eines Unix-Timestamps (bzw.
        den Wert <code>sticky</code> für dauerhafte Einträge). Die Unter-Arrays enthalten die
        im Folgenden aufgeführten Schlüssel. Standardmäßig werden diese Unter-Arrays über die
        Template-Datei <code>entries.tpl</code> mittels einer <code class="smarty">{foreach}</code>-Schleife der
        Smarty-Variable <code class="smarty">{entry}</code> zugewiesen, so dass Sie darauf nicht mittels
        <code class="smarty">{$entries.X.entries.title}</code> zugreifen, sondern mit <code class="smarty">{$entry.title}</code>.
    </span>
</span>
</p>

<p class="desc citem-desc">
<code class="item smarty">{$entries.X.date}</code>
<span class="desc-info">
    <span class="box">
        <span class="smarty-type"><em>Variablentyp:</em> <code class="type">Zahl</code></span>
    </span>

    <span class="box">
        Enthält das Datum des ältesten Artikels für eine Datumsgruppe (einen Tag).
    </span>
</span>
</p>

<p class="desc citem-desc">
<code class="item smarty">{$entries.X.is_sticky}</code>
<span class="desc-info">
    <span class="box">
        <span class="smarty-type"><em>Variablentyp:</em> <code class="type">Boolean</code></span>
    </span>

    <span class="box">
        Falls ein Eintrag als <em>dauerhaft</em> (siehe Plugin-Beschreibung Seite <span class="pageref"><a href="#stickyentries">stickyentries</a></span>)
        markiert ist, wird er im Array <code class="item smarty">{$entries.sticky}</code> abgelegt; für alle Einträge
        dieser Gruppe ist <code class="item smarty">{$entries.sticky.is_sticky}</code> auf <code>true</code>
        gesetzt. Die Artikel anderer Datumsgruppen besitzen für diese Variable den Wert <code>false</code>.
    </span>
</span>
</p>

<p class="desc citem-desc">
<span class="label invisible" id="template-entries">template-entries</span>
<code class="item smarty">{$entries.X.entries}</code>
<span class="desc-info">
    <span class="box">
        <span class="smarty-type"><em>Variablentyp:</em> <code class="type">Mehrdimensionales Array</code></span>
    </span>

    <span class="box">
        Dieses Array enthält die Daten der eigentlichen Blog-Artikel. Der Schlüssel
        dieses Arrays ist durchnummeriert, jeder Wert enthält ein weiteres Unter-Array
        mit den Inhalten der Datenbank-Spalten und folgenden Schlüsseln.
    </span>
</span>
</p>

<p class="desc citem-desc">
<code class="item smarty">{$entries.X.entries.Y.id}</code>
<span class="desc-info">
    <span class="box">
        <span class="smarty-type"><em>Variablentyp:</em> <code class="type">Zahl</code></span>
    </span>

    <span class="box">
        Enthält die eindeutige ID eines Artikels.
    </span>
</span>
</p>

<p class="desc citem-desc">
<code class="item smarty">{$entries.X.entries.Y.title}</code>
<span class="desc-info">
    <span class="box">
        <span class="smarty-type"><em>Variablentyp:</em> <code class="type">Zeichenkette</code></span>
    </span>

    <span class="box">
        Enthält den Titel des Artikels. Sonderzeichen wie Umlaute und spitze Klammern
        sind in ihre jeweiligen HTML-Sonderzeichen konvertiert.
    </span>
</span>
</p>

<p class="desc citem-desc">
<code class="item smarty">{$entries.X.entries.Y.html_title}</code>
<span class="desc-info">
    <span class="box">
        <span class="smarty-type"><em>Variablentyp:</em> <code class="type">Zeichenkette</code></span>
    </span>

    <span class="box">
        Enthält den Titel des Artikels. Etwaige Sonderzeichen werden im Gegensatz zu
        <code class="item smarty">{$entries.X.entries.Y.title}</code> nicht konvertiert.
    </span>
</span>
</p>

<p class="desc citem-desc">
<code class="item smarty">{$entries.X.entries.Y.body}</code>
<span class="desc-info">
    <span class="box">
        <span class="smarty-type"><em>Variablentyp:</em> <code class="type">Zeichenkette</code></span>
    </span>

    <span class="box">
        Enthält den Artikeltext.
    </span>
</span>
</p>

<p class="desc citem-desc">
<code class="item smarty">{$entries.X.entries.Y.extended}</code>
<span class="desc-info">
    <span class="box">
        <span class="smarty-type"><em>Variablentyp:</em> <code class="type">Zeichenkette</code></span>
    </span>

    <span class="box">
        Enthält den erweiterten Artikeltext.
    </span>
</span>
</p>

<p class="desc citem-desc">
<code class="item smarty">{$entries.X.entries.Y.timestamp}</code>
<span class="desc-info">
    <span class="box">
        <span class="smarty-type"><em>Variablentyp:</em> <code class="type">Zahl</code></span>
    </span>

    <span class="box">
        Enthält das Veröffentlichungsdatum des Artikels (in Unix-Sekunden).
    </span>
</span>
</p>

<p class="desc citem-desc">
<code class="item smarty">{$entries.X.entries.Y.last_modified}</code>
<span class="desc-info">
    <span class="box">
        <span class="smarty-type"><em>Variablentyp:</em> <code class="type">Zahl</code></span>
    </span>

    <span class="box">
        Enthält das Datum der letzten Bearbeitung des Artikels (in Unix-Sekunden).
    </span>
</span>
</p>

<p class="desc citem-desc">
<code class="item smarty">{$entries.X.entries.Y.isdraft}</code>
<span class="desc-info">
    <span class="box">
        <span class="smarty-type"><em>Variablentyp:</em> <code class="type">Boolean</code></span>
    </span>

    <span class="box">
        Enthält den Wert <code>true</code>, falls der Artikel ein Entwurf ist. Hinweis:
        Entwürfe können nur als Vorschau angesehen werden, da sie niemals im Frontend
        eingebunden werden.
    </span>
</span>
</p>

<p class="desc citem-desc">
<code class="item smarty">{$entries.X.entries.Y.is_cached}</code>
<span class="desc-info">
    <span class="box">
        <span class="smarty-type"><em>Variablentyp:</em> <code class="type">Boolean</code></span>
    </span>

    <span class="box">
        Enthält den Wert <code>true</code>, wenn der Inhalt eines Artikels aus dem Cache geholt
        wird. Dies ist nur dann der Fall, wenn das Plugin <span class="mbold">Erweiterte Eigenschaften von
        Artikeln</span> verwendet wird und die Caching-Option aktiviert wurde (siehe Seite <span class="pageref"><a href="#entryproperties">entryproperties</a></span>).
    </span>
</span>
</p>

<p class="desc citem-desc">
<code class="item smarty">{$entries.X.entries.Y.is_entry_owner}</code>
<span class="desc-info">
    <span class="box">
        <span class="smarty-type"><em>Variablentyp:</em> <code class="type">Boolean</code></span>
    </span>

    <span class="box">
        Ist auf <code>true</code> gesetzt, wenn der Autor des Artikels dem aktuell eingeloggten
        Besucher des Frontends entspricht. Ist dies der Fall, können Links zum direkten
        Bearbeiten eines Artikels im Frontend eingeblendet werden.
    </span>
</span>
</p>

<p class="desc citem-desc">
<code class="item smarty">{$entries.X.entries.Y.plugin_display_dat}</code>
<span class="desc-info">
    <span class="box">
        <span class="smarty-type"><em>Variablentyp:</em> <code class="type">Zeichenkette</code></span>
    </span>

    <span class="box">
        Enthält etwaigen HTML-Code, der durch Ereignis-Plugins dem Eintrag hinzugefügt
        werden soll. Mehrere Plugins können ihre individuellen Inhalte nacheinander in
        diese Variable speichern. Die Reihenfolge der Ausgabe entspricht dabei der
        Reihenfolge der Ereignis-Plugins.
    </span>
</span>
</p>

<p class="desc citem-desc">
<code class="item smarty">{$entries.X.entries.Y.has_extended}</code>, 
<code class="item smarty">{$entries.X.entries.Y.exflag}</code>
<span class="desc-info">
    <span class="box">
        <span class="smarty-type"><em>Variablentyp:</em> <code class="type">Boolean</code></span>
    </span>

    <span class="box">
        Ist auf <code>true</code> gesetzt, wenn der Artikel über einen erweiterten Eintrag verfügt.
    </span>
</span>
</p>

<p class="desc citem-desc">
<code class="item smarty">{$entries.X.entries.Y.is_extended}</code>
<span class="desc-info">
    <span class="box">
        <span class="smarty-type"><em>Variablentyp:</em> <code class="type">Boolean</code></span>
    </span>

    <span class="box">
        Ist auf <code>true</code> gesetzt, wenn der Besucher die Detailansicht eines Artikels aufgerufen hat.
    </span>
</span>
</p>

<p class="desc citem-desc">
<code class="item smarty">{$entries.X.entries.Y.viewmode}</code>
<span class="desc-info">
    <span class="box">
        <span class="smarty-type"><em>Variablentyp:</em> <code class="type">Zeichenkette</code></span>
    </span>

    <span class="box">
        Die Art der Darstellung von Kommentaren zu einem Artikel ist abhängig davon, ob
        der Besucher auf den Link zur <span class="mbold">Linearen</span> oder <span class="mbold">Verschachtelten</span>
        Ansicht geklickt hat. Standardmäßig wird eine verschachtelte Ansicht
        dargestellt, bei der Kommentare, die sich auf einen vorhergehenden
        beziehen, direkt untereinander verschachtelt dargestellt werden. Die lineare
        Ansicht zeigt die Kommentare in ihrer Eingangsreihenfolge.
    </span>

    <span class="box">
        Die Variable enthält entweder den Wert
        der Konstante <code>VIEWMODE_LINEAR</code> oder <code>VIEWMODE_THREADED</code>, je nach
        Entscheidung des Besuchers.
    </span>
</span>
</p>

<p class="desc citem-desc">
<code class="item smarty">{$entries.X.entries.Y.comments}</code>
<span class="desc-info">
    <span class="box">
        <span class="smarty-type"><em>Variablentyp:</em> <code class="type">Zahl</code></span>
    </span>

    <span class="box">
        Enthält die Anzahl von Kommentaren zu einem Artikel.
    </span>
</span>
</p>

<p class="desc citem-desc">
<code class="item smarty">{$entries.X.entries.Y.trackbacks}</code>
<span class="desc-info">
    <span class="box">
        <span class="smarty-type"><em>Variablentyp:</em> <code class="type">Zahl</code></span>
    </span>

    <span class="box">
        Enthält die Anzahl von Trackbacks zu einem Artikel.
    </span>
</span>
</p>

<p class="desc citem-desc">
<code class="item smarty">{$entries.X.entries.Y.allow_comments}</code>
<span class="desc-info">
    <span class="box">
        <span class="smarty-type"><em>Variablentyp:</em> <code class="type">Boolean</code></span>
    </span>

    <span class="box">
        Ist auf <code>true</code> gesetzt, wenn der Autor eines Artikels die Option aktiviert
        hat, dass Kommentare hinterlassen werden können.
    </span>
</span>
</p>

<p class="desc citem-desc">
<code class="item smarty">{$entries.X.entries.Y.moderate_comments}</code>
<span class="desc-info">
    <span class="box">
        <span class="smarty-type"><em>Variablentyp:</em> <code class="type">Boolean</code></span>
    </span>

    <span class="box">
        Ist auf <code>true</code> gesetzt, wenn der Autor eines Artikels die Option aktiviert
        hat, dass Kommentare vor deren Darstellung freigeschaltet werden müssen.
    </span>
</span>
</p>

<p class="desc citem-desc">
<code class="item smarty">{$entries.X.entries.Y.has_comments}</code>
<span class="desc-info">
    <span class="box">
        <span class="smarty-type"><em>Variablentyp:</em> <code class="type">Boolean</code></span>
    </span>

    <span class="box">
        Ist auf <code>true</code> gesetzt, wenn ein Artikel mindestens einen Kommentar besitzt.
    </span>
</span>
</p>

<p class="desc citem-desc">
<code class="item smarty">{$entries.X.entries.Y.has_trackbacks}</code>
<span class="desc-info">
    <span class="box">
        <span class="smarty-type"><em>Variablentyp:</em> <code class="type">Boolean</code></span>
    </span>

    <span class="box">
        Ist auf <code>true</code> gesetzt, wenn ein Artikel mindestens einen Trackback besitzt.
    </span>
</span>
</p>

<p class="desc citem-desc">
<code class="item smarty">{$entries.X.entries.Y.label_comments}</code>
<span class="desc-info">
    <span class="box">
        <span class="smarty-type"><em>Variablentyp:</em> <code class="type">Zeichenkette</code></span>
    </span>

    <span class="box">
        Enthält jeweils die zugehörige Bezeichnung, die neben der Anzahl von
        Kommentaren dargestellt wird. Wenn ein Artikel nur einen Kommentar besitzt, ist der Wert
        der Variable <code>Kommentar</code>, andernfalls immer <code>Kommentare</code>.
        Der tatsächliche Wert dieser Variable richtet sich nach der eingerichteten
        Sprache des Blogs und verwendet die Sprachkonstante <code>COMMENT</code> bzw. <code>COMMENTS</code>.
    </span>
</span>
</p>

<p class="desc citem-desc">
<code class="item smarty">{$entries.X.entries.Y.label_trackbacks}</code>
<span class="desc-info">
    <span class="box">
        <span class="smarty-type"><em>Variablentyp:</em> <code class="type">Zeichenkette</code></span>
    </span>

    <span class="box">
        Enthält jeweils die zugehörige Bezeichnung, die neben der Anzahl von
        Trackbacks dargestellt wird. Wenn ein Artikel nur einen Trackback besitzt, ist der Wert
        dieser Variable
    </span>

    <span class="box">
        <code>Trackback</code>, andernfalls immer <code>Trackbacks</code>.
        Der tatsächliche Wert dieser Variable richtet sich nach der
        Sprache des Blogs und verwendet die Sprachkonstante <code>TRACKBACK</code> bzw. <code>TRACKBACKS</code>.
    </span>
</span>
</p>

<p class="desc citem-desc">
<code class="item smarty">{$entries.X.entries.Y.author}</code>
<span class="desc-info">
    <span class="box">
        <span class="smarty-type"><em>Variablentyp:</em> <code class="type">Zeichenkette</code></span>
    </span>

    <span class="box">
        Enthält den Namen des Autors eines Artikels.
    </span>
</span>
</p>

<p class="desc citem-desc">
<code class="item smarty">{$entries.X.entries.Y.loginname}</code>
<span class="desc-info">
    <span class="box">
        <span class="smarty-type"><em>Variablentyp:</em> <code class="type">Zeichenkette</code></span>
    </span>

    <span class="box">
        Enthält den Login-Namen des Autors eines Artikels. Aus Sicherheitsgründen
        sollte dieser nicht öffentlich dargestellt werden.
    </span>
</span>
</p>

<p class="desc citem-desc">
<code class="item smarty">{$entries.X.entries.Y.email}</code>
<span class="desc-info">
    <span class="box">
        <span class="smarty-type"><em>Variablentyp:</em> <code class="type">Zeichenkette</code></span>
    </span>

    <span class="box">
        Enthält die E-Mail-Adresse des Autors eines Artikels.
    </span>
</span>
</p>

<p class="desc citem-desc">
<code class="item smarty">{$entries.X.entries.Y.authorid}</code>
<span class="desc-info">
    <span class="box">
        <span class="smarty-type"><em>Variablentyp:</em> <code class="type">Zahl</code></span>
    </span>

    <span class="box">
        Enthält die ID des Autors eines Artikels.
    </span>
</span>
</p>

<p class="desc citem-desc">
<code class="item smarty">{$entries.X.entries.Y.title_rdf}</code>
<span class="desc-info">
    <span class="box">
        <span class="smarty-type"><em>Variablentyp:</em> <code class="type">Zeichenkette</code></span>
    </span>

    <span class="box">
        Enthält den Titel des Artikels (mit konvertierten Sonderzeichen), bei dem jedoch etwaige
        doppelte Bindestriche durch einen einzelnen Bindestrich
        ersetzt werden, damit der Inhalt dieser Variable für XML-RDF-Metadaten verwendet werden kann.
    </span>
</span>
</p>

<p class="desc citem-desc">
<code class="item smarty">{$entries.X.entries.Y.rdf_ident}</code>
<span class="desc-info">
    <span class="box">
        <span class="smarty-type"><em>Variablentyp:</em> <code class="type">Zeichenkette</code></span>
    </span>

    <span class="box">
        Enthält einen eindeutigen Permalink des Artikels, dessen URL vollständig mit
        HTTP-Hostname angegeben wird.
    </span>
</span>
</p>

<p class="desc citem-desc">
<code class="item smarty">{$entries.X.entries.Y.link}</code>
<span class="desc-info">
    <span class="box">
        <span class="smarty-type"><em>Variablentyp:</em> <code class="type">Zeichenkette</code></span>
    </span>

    <span class="box">
        Enthält die relative URL zu der Detailseite eines
        Artikels (zB. <code>/serendipity/archives/1-Titel.html</code>).
    </span>
</span>
</p>

<p class="desc citem-desc">
<code class="item smarty">{$entries.X.entries.Y.commURL}</code>
<span class="desc-info">
    <span class="box">
        <span class="smarty-type"><em>Variablentyp:</em> <code class="type">Zeichenkette</code></span>
    </span>

    <span class="box">
        Enthält die vollständige URL zu der Detailseite eines Artikels, inklusive
        HTTP-Hostname (zB. <code>http://www.example.com/serendipity/archives/1-Titel.html</code>).
    </span>
</span>
</p>

<p class="desc citem-desc">
<code class="item smarty">{$entries.X.entries.Y.link_rdf}</code>
<span class="desc-info">
    <span class="box">
        <span class="smarty-type"><em>Variablentyp:</em> <code class="type">Zeichenkette</code></span>
    </span>

    <span class="box">
        Enthält einen eindeutigen, gekürzten Permalink des Artikels für die
        Identifikation innerhalb eines XML-RDF-Metadatenblocks.
    </span>
</span>
</p>

<p class="desc citem-desc">
<code class="item smarty">{$entries.X.entries.Y.link_deny_comments}</code>
<span class="desc-info">
    <span class="box">
        <span class="smarty-type"><em>Variablentyp:</em> <code class="type">Zeichenkette</code></span>
    </span>

    <span class="box">
        Enthält die URL, damit der Autor eines Artikels auf der Detailseite das
        Hinzufügen von Kommentaren zukünftig verbieten kann.
    </span>
</span>
</p>

<p class="desc citem-desc">
<code class="item smarty">{$entries.X.entries.Y.link_allow_comments}</code>
<span class="desc-info">
    <span class="box">
        <span class="smarty-type"><em>Variablentyp:</em> <code class="type">Zeichenkette</code></span>
    </span>

    <span class="box">
        Enthält die URL, damit der Autor eines Artikels auf der Detailseite das
        Hinzufügen von Kommentaren wieder erlauben kann.
    </span>
</span>
</p>

<p class="desc citem-desc">
<code class="item smarty">{$entries.X.entries.Y.link_popup_comments}</code>
<span class="desc-info">
    <span class="box">
        <span class="smarty-type"><em>Variablentyp:</em> <code class="type">Zeichenkette</code></span>
    </span>

    <span class="box">
        Enthält eine URL, unter der die Kommentare eines Artikels separat (zB. als
        Popup) angezeigt werden können.
    </span>
</span>
</p>

<p class="desc citem-desc">
<code class="item smarty">{$entries.X.entries.Y.link_popup_trackbacks}</code>
<span class="desc-info">
    <span class="box">
        <span class="smarty-type"><em>Variablentyp:</em> <code class="type">Zeichenkette</code></span>
    </span>

    <span class="box">
        Enthält eine URL, unter der die Trackbacks eines Artikels separat (zB. als
        Popup) angezeigt werden können.
    </span>
</span>
</p>

<p class="desc citem-desc">
<code class="item smarty">{$entries.X.entries.Y.link_edit}</code>
<span class="desc-info">
    <span class="box">
        <span class="smarty-type"><em>Variablentyp:</em> <code class="type">Zeichenkette</code></span>
    </span>

    <span class="box">
        Enthält eine URL, mit der der Autor eines Artikels direkt ins Backend gelangen
        kann, um den jeweiligen Artikel dort zu bearbeiten.
    </span>
</span>
</p>

<p class="desc citem-desc">
<code class="item smarty">{$entries.X.entries.Y.link_trackback}</code>
<span class="desc-info">
    <span class="box">
        <span class="smarty-type"><em>Variablentyp:</em> <code class="type">Zeichenkette</code></span>
    </span>

    <span class="box">
        Enthält die Trackback-URL zu einem Artikel. An diese Ziel-URL müssen fremde
        Blogsysteme ihr Trackback senden. Diese URL ist nicht zum üblichen Aufruf
        innerhalb des Browsers konzipiert.
    </span>
</span>
</p>

<p class="desc citem-desc">
<code class="item smarty">{$entries.X.entries.Y.link_viewmode_threaded}</code>
<span class="desc-info">
    <span class="box">
        <span class="smarty-type"><em>Variablentyp:</em> <code class="type">Zeichenkette</code></span>
    </span>

    <span class="box">
        Enthält den Link zur Detailseite eines Artikels, um die Kommentare in
        verschachtelter Ansicht darzustellen.
    </span>
</span>
</p>

<p class="desc citem-desc">
<code class="item smarty">{$entries.X.entries.Y.link_viewmode_linear}</code>
<span class="desc-info">
    <span class="box">
        <span class="smarty-type"><em>Variablentyp:</em> <code class="type">Zeichenkette</code></span>
    </span>

    <span class="box">
        Enthält den Link zur Detailseite eines Artikels, um die Kommentare in
        linearer (chronologischer) Ansicht darzustellen.
    </span>
</span>
</p>

<p class="desc citem-desc">
<code class="item smarty">{$entries.X.entries.Y.link_author}</code>
<span class="desc-info">
    <span class="box">
        <span class="smarty-type"><em>Variablentyp:</em> <code class="type">Zeichenkette</code></span>
    </span>

    <span class="box">
        Enthält eine URL zur Übersichtsseite aller Beiträge des Autors, der den
        aktuellen Artikel verfasst hat.
    </span>
</span>
</p>

<p class="desc citem-desc">
<code class="item smarty">{$entries.X.entries.Y.categories}</code>
<span class="desc-info">
    <span class="box">
        <span class="smarty-type"><em>Variablentyp:</em> <code class="type">Mehrdimensionales Array</code></span>
    </span>

    <span class="box">
        Enthält ein Array mit allen dem Artikel zugewiesenen Kategorien. Die Schlüssel
        der durchnummerierten Unter-Arrays entsprechen denen, die auf Seite
        <span class="pageref"><a href="#db-categories">db-categories</a></span> aufgeführt sind. Hinzu kommt der Array-Schlüssel
        <code class="item smarty">{$entries.X.entries.Y.categories.Z.category_link}</code>, der eine URL zu
        einer Übersichtsseite enthält, auf der alle Artikel der jeweiligen Kategorie
        aufgeführt sind.
    </span>
</span>
</p>

<p class="desc citem-desc">
<code class="item smarty">{$entries.X.entries.Y.properties}</code>
<span class="desc-info">
    <span class="box">
        <span class="smarty-type"><em>Variablentyp:</em> <code class="type">Mehrdimensionales Array</code></span>
    </span>

    <span class="box">
        Das Array <code class="item smarty">{$entries.X.entries.Y.properties}</code> enthält alle
        <span class="mbold">Erweiterten Eigenschaften</span>, die mittels diverser Plugins einem Artikel
        zugeschrieben werden können. Die zusätzlich verfügbaren Schlüssel können Sie in
        der Dokumentation der jeweiligen Plugins nachschlagen, beispielsweise für das Plugin
        <span class="mbold">Erweiterte Eigenschaften für Artikel</span> auf Seite <span class="pageref"><a href="#entryproperties">entryproperties</a></span>.
        Unter anderem können auch beliebige selbstdefinierte Array-Schlüssel in diesem
        Unter-Array aufgeführt werden, wobei der jeweilige Schlüssel wie
        <code class="item smarty">{$entries.X.entries.Y.properties.ep_meinSchluessel}</code> (bzw.
        <code class="item smarty">{$entry.properties.ep_meinSchluessel}</code>) eingebunden wird.
    </span>
</span>
</p>

</article>

<article id="XU" class="subsub">

<header>
    <h4 class="subarticle" id="feed_-tpl">feed_*.tpl</h4>
</header>

<p>
<span class="tag-box invisible">
    <span class="inline-tag">Template-Dateien!feed_*.tpl</span>
</span>
</p>

<p>Die Darstellung der RSS-Feeds erfolgt über die Smarty-Template-Dateien wie
<code>feed_2.0.tpl</code>. Folgende Variablen sind dort verfügbar:</p>

<p class="desc citem-desc">
<code class="item smarty">{$metadata}</code>
<span class="desc-info">
    <span class="box">
        <span class="smarty-type"><em>Variablentyp:</em> <code class="type">Eindimensionales Array</code></span>
        <span class="smarty-doc"><em>Zugewiesen in:</em> <code class="file">rss.php</code></span>
    </span>

    <span class="box">
        Enthält eine Liste von Metadaten, die den Typ des RSS-Feeds sowie globale
        Blog-Daten angibt. Folgende Array-Schlüssel sind verfügbar:
    </span>

    <span class="box mda-box">

        <span class="box"><code class="sub-item smarty">{$metadata.title}</code>
            <span class="sub-box">
				<span class="smarty-type"><em>Variablentyp:</em> <code class="type">Zeichenkette</code></span>
		    </span>
            <span class="sub-box">
                Enthält den Titel des RSS-Feeds (setzt sich aus gewählter Kategorie, Autoren und
                Name des Blogs zusammen).
			</span>
        </span>

        <span class="box"><code class="sub-item smarty">{$metadata.description}</code>
            <span class="sub-box">
				<span class="smarty-type"><em>Variablentyp:</em> <code class="type">Zeichenkette</code></span>
		    </span>
            <span class="sub-box">
                Enthält eine Beschreibung des RSS-Feeds (abhängig von gewählter Kategorie,
                Autoren und Beschreibung des Blogs).
			</span>
        </span>

        <span class="box"><code class="sub-item smarty">{$metadata.language}</code>
            <span class="sub-box">
				<span class="smarty-type"><em>Variablentyp:</em> <code class="type">Zeichenkette</code></span>
		    </span>
            <span class="sub-box">
                Enthält die Sprache des Blogs, zB. <code>de</code> für ein
                deutschsprachiges Blog.
			</span>
        </span>

        <span class="box"><code class="sub-item smarty">{$metadata.link}</code>
            <span class="sub-box">
				<span class="smarty-type"><em>Variablentyp:</em> <code class="type">Zeichenkette</code></span>
		    </span>
            <span class="sub-box">
                Enthält die URL zum Blog.
			</span>
        </span>

        <span class="box"><code class="sub-item smarty">{$metadata.email}</code>
            <span class="sub-box">
				<span class="smarty-type"><em>Variablentyp:</em> <code class="type">Zeichenkette</code></span>
		    </span>
            <span class="sub-box">
                Enthält die konfigurierte E-Mail-Adresse des Blogs.
			</span>
        </span>

        <span class="box"><code class="sub-item smarty">{$metadata.fullFeed}</code>
            <span class="sub-box">
				<span class="smarty-type"><em>Variablentyp:</em> <code class="type">Boolean</code></span>
		    </span>
            <span class="sub-box">
                Ist auf <code>true</code> gesetzt, wenn der RSS-Feed Artikel vollständig einbinden
                soll. Wird beeinflusst durch das Plugin <em>Blog abonnieren</em> (siehe Seite <span class="pageref"><a href="#syndication">syndication</a></span>).
			</span>
        </span>

        <span class="box"><code class="sub-item smarty">{$metadata.showMail}</code>
            <span class="sub-box">
				<span class="smarty-type"><em>Variablentyp:</em> <code class="type">Boolean</code></span>
		    </span>
            <span class="sub-box">
                Ist auf <code>true</code> gesetzt, wenn E-Mail-Adressen gültig eingebunden werden
                sollen. Steht der Wert auf <code>false</code>, werden E-Mail-Adressen verschleiert.
                Diese Variable wird beeinflusst durch die Konfiguration des
                Anti-Spam-Plugins (siehe Seite <span class="pageref"><a href="#spamblock">spamblock</a></span>).
			</span>
        </span>

        <span class="box"><code class="sub-item smarty">{$metadata.version}</code>
            <span class="sub-box">
				<span class="smarty-type"><em>Variablentyp:</em> <code class="type">Zeichenkette</code></span>
		    </span>
            <span class="sub-box">
                Enthält die Versionsnummer des angeforderten Typs (zB. <code>2.0</code> für RSS 2.0,
                oder <code>atom1.0</code> für Atom 1.0).
			</span>
        </span>

        <span class="box"><code class="sub-item smarty">{$metadata.template_file}</code>
            <span class="sub-box">
				<span class="smarty-type"><em>Variablentyp:</em> <code class="type">Zeichenkette</code></span>
		    </span>
            <span class="sub-box">
                Enthält den Namen der Smarty-Template-Datei, die für den jeweiligen Feed
                verwendet wurde.
			</span>
        </span>

        <span class="box"><code class="sub-item smarty">{$metadata.additional_fields}</code>
            <span class="sub-box">
				<span class="smarty-type"><em>Variablentyp:</em> <code class="type">Eindimensionales Array</code></span>
		    </span>
            <span class="sub-box">
                Enthält etwaige Zusatzfelder, die durch Plugins hinzugefügt werden. Das
                Plugin <em>Blog abonnieren</em> bindet Werte für folgende Array-Schlüssel ein:
                <code class="item smarty">{$ospismarty{metadata.additional_fields.image}</code>,
                <code class="item smarty">{$metadata.additional_fields.image_atom10}</code>,
                <code class="item smarty">{$metadata.additional_fields.image_rss10_channel}</code>,
                <code class="item smarty">{$metadata.additional_fields.image_rss10_rdf}</code> (Feed-Bilder
                für die unterschiedlichen Versionen der Feed-Typen) und
                <code class="item smarty">{$metadata.additional_fields.channel}</code> (Liste zusätzlicher XML-Elemente
                wie <code>webMaster</code>, <code>ttl</code>, <code>pubDate</code>).
			</span>
        </span>

    </span>

</span>
</p>

<p class="desc citem-desc">
<code class="item smarty">{$entries}</code>
<span class="desc-info">
    <span class="box">
        <span class="smarty-type"><em>Variablentyp:</em> <code class="type">Mehrdimensionales Array</code></span>
        <span class="smarty-doc"><em>Zugewiesen in:</em> <code class="file">rss.php; include/functions_rss.inc.php, serendipity_printEntries_rss()</code></span>
    </span>

    <span class="box">
        Enthält Informationen für die darzustellenden Daten des Feeds. Dies können entweder
        Kommentare oder Blog-Artikel sein, abhängig vom gewählten Feed.
    </span>

    <span class="box">
        Für beide Feed-Arten gelten folgende Schlüssel:
    </span>

    <span class="box mda-box">

        <span class="box"><code class="sub-item smarty">{$entries.X.feed_id}</code>
            <span class="sub-box">
				<span class="smarty-type"><em>Variablentyp:</em> <code class="type">Zahl</code></span>
		    </span>
            <span class="sub-box">
                Enthält die ID des Blog-Artikels, auf die sich ein Feed-Objekt (Kommentar oder
                Blog-Eintrag) bezieht.
			</span>
        </span>

        <span class="box"><code class="sub-item smarty">{$entries.X.feed_guid}</code>
            <span class="sub-box">
				<span class="smarty-type"><em>Variablentyp:</em> <code class="type">Zeichenkette</code></span>
		    </span>
            <span class="sub-box">
                Enthält eine eindeutige ID für ein Feed-Objekt. Diese ID entspricht einer URL
                (verkürzter Permalink), unter der sich das Feed-Objekt jederzeit aufrufen lässt.
			</span>
        </span>

        <span class="box"><code class="sub-item smarty">{$entries.X.feed_entryLink}</code>
            <span class="sub-box">
				<span class="smarty-type"><em>Variablentyp:</em> <code class="type">Zeichenkette</code></span>
		    </span>
            <span class="sub-box">
                Enthält den Permalink des Blog-Eintrags, auf den sich ein Feed-Objekt bezieht.
			</span>
        </span>

        <span class="box"><code class="sub-item smarty">{$entries.X.feed_title}</code>
            <span class="sub-box">
				<span class="smarty-type"><em>Variablentyp:</em> <code class="type">Zeichenkette</code></span>
		    </span>
            <span class="sub-box">
                Enthält den Titel eines Feed-Objekts. Sonderzeichen werden in
                UTF-8 umgewandelt, etwaiger HTML-Code wird maskiert.
			</span>
        </span>

        <span class="box"><code class="sub-item smarty">{$entries.X.feed_blogTitle}</code>
            <span class="sub-box">
				<span class="smarty-type"><em>Variablentyp:</em> <code class="type">Zeichenkette</code></span>
		    </span>
            <span class="sub-box">
                Enthält den Titel des Blogs. Sonderzeichen werden in
                UTF-8 umgewandelt, etwaiger HTML-Code wird maskiert.
			</span>
        </span>

        <span class="box"><code class="sub-item smarty">{$entries.X.feed_author}</code>
            <span class="sub-box">
				<span class="smarty-type"><em>Variablentyp:</em> <code class="type">Zeichenkette</code></span>
		    </span>
            <span class="sub-box">
                Enthält den Autorennamen eines Feed-Objekts. Sonderzeichen werden
                in UTF-8 umgewandelt, etwaiger HTML-Code wird maskiert.
			</span>
        </span>

        <span class="box"><code class="sub-item smarty">{$entries.X.feed_email}</code>
            <span class="sub-box">
				<span class="smarty-type"><em>Variablentyp:</em> <code class="type">Zeichenkette</code></span>
		    </span>
            <span class="sub-box">
                Enthält die E-Mail-Adresse des Autors eines Feed-Objekts. Sonderzeichen
                werden in UTF-8 umgewandelt, HTML-Code wird ggf. maskiert.
			</span>
        </span>

        <span class="box"><code class="sub-item smarty">{$entries.X.feed_timestamp}</code>
            <span class="sub-box">
				<span class="smarty-type"><em>Variablentyp:</em> <code class="type">Zeichenkette</code></span>
		    </span>
            <span class="sub-box">
                Enthält das Veröffentlichungsdatum eines Feed-Objekts im Format
                <em>Jahr-Monat-Tag Stunde:Minute:Sekunde Zeitzone</em>.
			</span>
        </span>

        <span class="box"><code class="sub-item smarty">{$entries.X.feed_last_modified}</code>
            <span class="sub-box">
				<span class="smarty-type"><em>Variablentyp:</em> <code class="type">Zeichenkette</code></span>
		    </span>
            <span class="sub-box">
                Enthält das Datum der letzten Aktualisierung eines Feed-Objekts im Format
                <em>Jahr-Monat-Tag Stunde:Minute:Sekunde Zeitzone</em>.
			</span>
        </span>

        <span class="box"><code class="sub-item smarty">{$entries.X.feed_timestamp_r}</code>
            <span class="sub-box">
				<span class="smarty-type"><em>Variablentyp:</em> <code class="type">Zeichenkette</code></span>
		    </span>
            <span class="sub-box">
                Enthält das Veröffentlichungsdatum eines Feed-Objekts im RFC-2822-Format [*]
                <span class="footnote"><i class="fa fa-info-circle"></i> <a href="http://www.faqs.org/rfcs/rfc2822.html" target="_blank" rel="noopener">http://www.faqs.org/rfcs/rfc2822.html</a></span><!-- footnote -->.
			</span>
        </span>

        <span class="box"><code class="sub-item smarty">{$entries.X.feed_body}</code>
            <span class="sub-box">
				<span class="smarty-type"><em>Variablentyp:</em> <code class="type">Zeichenkette</code></span>
		    </span>
            <span class="sub-box">
                Enthält den Inhalt des Feed-Objekts. Sonderzeichen
                werden in den UTF-8-Zeichensatz umgewandelt, HTML-Code wird ggf. maskiert.
			</span>
        </span>

        <span class="box"><code class="sub-item smarty">{$entries.X.feed_ext}</code>
            <span class="sub-box">
				<span class="smarty-type"><em>Variablentyp:</em> <code class="type">Zeichenkette</code></span>
		    </span>
            <span class="sub-box">
                Falls ein Blog-Artikel nur ausschnittweise im Feed enthalten ist, wird in
                der Variable <code class="item smarty">{$entries.X.feed_ext}</code> ein HTML-Code für
                einen Link zur detaillierten Ansicht des Artikels gespeichert. Sonderzeichen
                werden in den UTF-8-Zeichensatz umgewandelt, etwaiger HTML-Code wird maskiert.
			</span>
        </span>

        <span class="box"><code class="sub-item smarty">{$entries.X.per_entry_display_dat}</code>
            <span class="sub-box">
				<span class="smarty-type"><em>Variablentyp:</em> <code class="type"></code></span>
		    </span>
            <span class="sub-box">
                Enthält etwaige zusätzliche HTML/XML-Ausgaben von Ereignis-Plugins.
			</span>
        </span>

    </span>

    <span class="box">
        Für Kommentar-Feeds ist das Array mit denselben Schlüsseln ausgestattet wie das
        Array für die Darstellung der Kommentare (siehe Seite
        <span class="pageref"><a href="#commenttemplates">commenttemplates</a></span>). Abweichend sind einzig die beiden Schlüssel
        <code class="item smarty">{$entries.X.author}</code> (dieser wird automatisch bei der Darstellung eines
        Trackbacks um den Titel des Trackbacks erweitert) und <code class="item smarty">{$entries.X.title}</code>
        (dieser enthält zusätzlich den Autorennamen vorangestellt, um innerhalb des
        RSS-Feeds eine eindeutigere Überschrift zu erhalten).
    </span>

    <span class="box">
        Normale Artikel-Feeds enthalten ein Array mit den Schlüsseln, die auf Seite
        <span class="pageref"><a href="#template-entries">template-entries</a></span> aufgeführt sind.
    </span>

</span>
</p>

<p class="desc citem-desc">
<code class="item smarty">{$namespace_display_dat}</code>
<span class="desc-info">
    <span class="box">
        <span class="smarty-type"><em>Variablentyp:</em> <code class="type">Zeichenkette</code></span>
        <span class="smarty-doc"><em>Zugewiesen in:</em> <code class="file">rss.php</code></span>
    </span>

    <span class="box">
        Enthält etwaige XML-Ausgaben von zusätzlichen Ereignis-Plugins, die sich in die
        Ausgabe des Feeds (im <code>namespace</code>-Bereich) einklinken können.
    </span>
</span>
</p>

<p class="desc citem-desc">
<code class="item smarty">{$once_display_dat}</code>
<span class="desc-info">
    <span class="box">
        <span class="smarty-type"><em>Variablentyp:</em> <code class="type">Zeichenkette</code></span>
        <span class="smarty-doc"><em>Zugewiesen in:</em> <code class="file">rss.php</code></span>
    </span>

    <span class="box">
        Enthält etwaige XML-Ausgaben von zusätzlichen Ereignis-Plugins, die sich in die
        Ausgabe des Feeds (Inhaltsbereich) einklinken können.
    </span>
</span>
</p>

<p class="desc citem-desc">
<code class="item smarty">{$is_comments}</code>
<span class="desc-info">
    <span class="box">
        <span class="smarty-type"><em>Variablentyp:</em> <code class="type">Boolean</code></span>
        <span class="smarty-doc"><em>Zugewiesen in:</em> <code class="file">rss.php</code></span>
    </span>

    <span class="box">
        Enthält den Wert <code>true</code>, falls der RSS-Feed Kommentare zu Artikeln anstelle
        der Artikel selbst darstellt.
    </span>
</span>
</p>

<p class="desc citem-desc">
<code class="item smarty">{$last_modified}</code>
<span class="desc-info">
    <span class="box">
        <span class="smarty-type"><em>Variablentyp:</em> <code class="type">Zahl</code></span>
        <span class="smarty-doc"><em>Zugewiesen in:</em> <code class="file">rss.php</code></span>
    </span>

    <span class="box">
        Enthält das Datum (in Unix-Sekunden) des aktuellsten Artikels. Dieses Datum wird
        von RSS-Clients benutzt, um Bandbreite sparend herauszufinden, ob neue Artikel vorliegen (siehe
        Seite <span class="pageref"><a href="#Caching von RSS-Feeds">Caching von RSS-Feeds</a></span>).
    </span>
</span>
</p>

<p class="desc citem-desc">
<code class="item smarty">{$self_url}</code>
<span class="desc-info">
    <span class="box">
        <span class="smarty-type"><em>Variablentyp:</em> <code class="type">Zeichenkette</code></span>
        <span class="smarty-doc"><em>Zugewiesen in:</em> <code class="file">rss.php</code></span>
    </span>

    <span class="box">
        Enthält die vollständige URL, die zum Aufruf des RSS-Feeds benutzt wurde.
    </span>
</span>
</p>

</article>

<article id="XU" class="subsub">

<header>
    <h4 class="subarticle" id="admin-entries-tpl">admin/entries.tpl</h4>
</header>

<p>
<span class="tag-box invisible">
    <span class="inline-tag">Template-Dateien!admin/entries.tpl</span>
</span>
</p>

<p>Die Template-Datei <code>admin/entries.tpl</code> ist verantwortlich für die Darstellung
der Oberfläche zum Erstellen eines Blog-Artikels.</p>

<p class="desc citem-desc">
<span class="tag-box invisible">
    <span class="inline-tag">Template-Variablen!\$entry_vars</span>
</span>
<code class="item smarty">{$entry_vars}</code>
<span class="desc-info">
    <span class="box">
        <span class="smarty-type"><em>Variablentyp:</em> <code class="type">Eindimensionales Array</code></span>
        <span class="smarty-scope"><em>Verfügbar in:</em> <code class="file">admin/entries.tpl</code></span>
        <span class="smarty-doc"><em>Zugewiesen in:</em> <code class="file">include/functions_entries_admin.inc.php, serendipity_printEntryForm()</code></span>
    </span>

    <span class="box">
        Enthält alle für den Eintragseditor notwendigen Variablen sowie die Daten des
        zu bearbeitenden Blog-Artikels.
    </span>

    <span class="box mda-box">

        <span class="tag-box invisible">
            <span class="inline-tag">Template-Variablen!\$entry_vars.draft_mode</span>
        </span>
        <span class="box"><code class="sub-item smarty">{$entry_vars.draft_mode}</code>
            <span class="sub-box">
				<span class="smarty-type"><em>Variablentyp:</em> <code class="type">Zeichenkette</code></span>
		    </span>
            <span class="sub-box">
                Gibt an, ob anhand der Voreinstellung des Redakteurs ein neuer Blog-Artikel als
                <em>Veröffentlichung</em> (Wert <code>publish</code>) oder <em>Entwurf</em> (Wert
                <code>draft</code>) erstellt werden soll.
			</span>
        </span>

        <span class="tag-box invisible">
            <span class="inline-tag">Template-Variablen!\$entry_vars.moderate_comments</span>
        </span>
        <span class="box"><code class="sub-item smarty">{$entry_vars.moderate_comments}</code>
            <span class="sub-box">
				<span class="smarty-type"><em>Variablentyp:</em> <code class="type">Boolean</code></span>
		    </span>
            <span class="sub-box">
                Gibt an, ob anhand der Voreinstellung des Redakteurs neue Kommentare zu dem
                erstellenden Blog-Artikel moderiert werden sollen (Wert <code>true</code>) oder nicht
                (Wert <code>false</code>).
			</span>
        </span>

        <span class="tag-box invisible">
            <span class="inline-tag">Template-Variablen!\$entry_vars.allow_comments</span>
        </span>
        <span class="box"><code class="sub-item smarty">{$entry_vars.allow_comments}</code>
            <span class="sub-box">
				<span class="smarty-type"><em>Variablentyp:</em> <code class="type">Boolean</code></span>
		    </span>
            <span class="sub-box">
                Gibt an, ob anhand der Voreinstellung des Redakteurs Kommentare zu dem
                erstellenden Blog-Artikel erstellt werden dürfen (Wert
                <code>true</code>) oder nicht (Wert <code>false</code>).
			</span>
        </span>

        <span class="tag-box invisible">
            <span class="inline-tag">Template-Variablen!\$entry_vars.category_options</span>
        </span>
        <span class="box"><code class="sub-item smarty">{$entry_vars.category_options}</code>
            <span class="sub-box">
				<span class="smarty-type"><em>Variablentyp:</em> <code class="type">Mehrdimensionales Array</code></span>
		    </span>
            <span class="sub-box">
                Enthält eine Liste aller dem Blog-Artikel zuweisbaren Kategorien. Jedes
                Unter-Array enthält alle Eigenschaften der Kategorie-Datenbanktabelle sowie
                einige zusätzliche Werte:
			</span>
            <span class="sub-box mda-box">

                <span class="label invisible" id="db-categories">db-categories</span>

                <span class="box"><code class="sub-item smarty">{$entry_vars.category_options.X.categoryid}</code>
                    <span class="sub-box">
                        <span class="smarty-type"><em>Variablentyp:</em> <code class="type">Zahl</code></span>
                    </span>
                    <span class="sub-box">
                        ID der aktuellen Kategorie.
                    </span>
                </span>

                <span class="box"><code class="sub-item smarty">{$entry_vars.category_options.X.category_name}</code>
                    <span class="sub-box">
                        <span class="smarty-type"><em>Variablentyp:</em> <code class="type">Zeichenkette</code></span>
                    </span>
                    <span class="sub-box">
                        Name der aktuellen Kategorie.
                    </span>
                </span>

                <span class="box"><code class="sub-item smarty">{$entry_vars.category_options.X.category_icon}</code>
                    <span class="sub-box">
                        <span class="smarty-type"><em>Variablentyp:</em> <code class="type">Zeichenkette</code></span>
                    </span>
                    <span class="sub-box">
                        URL für ein repräsentatives Bild der Kategorie.
                    </span>
                </span>

                <span class="box"><code class="sub-item smarty">{entry_vars.category_options.X.category_description}</code>
                    <span class="sub-box">
                        <span class="smarty-type"><em>Variablentyp:</em> <code class="type">Zeichenkette</code></span>
                    </span>
                    <span class="sub-box">
                        Beschreibung der aktuellen Kategorie.
                    </span>
                </span>

                <span class="box"><code class="sub-item smarty">{$entry_vars.category_options.X.category_left}, {$entry_vars.category_options.X.category_left}</code>
                    <span class="sub-box">
                        <span class="smarty-type"><em>Variablentyp:</em> <code class="type">Zahl</code></span>
                    </span>
                    <span class="sub-box">
                        Verweist auf die jeweils davor und dahinter liegende Kategorie-ID und wird
                        verwendet, um eine Baumstruktur für Kategorien herzustellen.
                    </span>
                </span>

                <span class="box"><code class="sub-item smarty">{$entry_vars.category_options.X.parentid}</code>
                    <span class="sub-box">
                        <span class="smarty-type"><em>Variablentyp:</em> <code class="type">Zahl</code></span>
                    </span>
                    <span class="sub-box">
                        Verweist auf die in der Hierarchie übergeordnete Kategorie der aktuellen Kategorie.
                    </span>
                </span>

                <span class="box"><code class="sub-item smarty">{$entry_vars.category_options.X.authorid}</code>
                    <span class="sub-box">
                        <span class="smarty-type"><em>Variablentyp:</em> <code class="type">Zahl</code></span>
                    </span>
                    <span class="sub-box">
                        ID des Autors, der die Kategorie erstellt hat.
                    </span>
                </span>

                <span class="box"><code class="sub-item smarty">{$entry_vars.category_options.X.username}, {$entry_vars.category_options.X.realname}</code>
                    <span class="sub-box">
                        <span class="smarty-type"><em>Variablentyp:</em> <code class="type">Zeichenkette</code></span>
                    </span>
                    <span class="sub-box">
                        Name des Autors, der die Kategorie erstellt hat.
                    </span>
                </span>

                <span class="box"><code class="sub-item smarty">{$entry_vars.category_options.X.loginname}</code>
                    <span class="sub-box">
                        <span class="smarty-type"><em>Variablentyp:</em> <code class="type">Zeichenkette</code></span>
                    </span>
                    <span class="sub-box">
                        Login-Name des Autors, der die Kategorie erstellt hat.
                    </span>
                </span>

                <span class="box"><code class="sub-item smarty">{$entry_vars.category_options.X.is_selected}</code>
                    <span class="sub-box">
                        <span class="smarty-type"><em>Variablentyp:</em> <code class="type">Boolean</code></span>
                    </span>
                    <span class="sub-box">
                        Falls die aktuelle Kategorie dem neu zu erstellenden bzw. zu bearbeitenden
                        Blog-Artikel zugewiesen ist, ist der Wert dieser Variable <code>true</code>,
                        andernfalls <code>false</code>.
                    </span>
                </span>

                <span class="box"><code class="sub-item smarty">{$entry_vars.category_options.X.depth_pad}</code>
                    <span class="sub-box">
                        <span class="smarty-type"><em>Variablentyp:</em> <code class="type">Zeichenkette</code></span>
                    </span>
                    <span class="sub-box">
                        Enthält den benötigten HTML-Code, um die Einrückung der Kategorie-Hierarchie
                        darzustellen. Für jede tiefer liegende Ebene wird ein geschütztes Leerzeichen
                        (<code>&amp;nbsp;</code>) dargestellt.
                    </span>
                </span>

		    </span><!-- sub-box mda-box end -->

        </span><!-- box $entry_vars.category_options end -->

        <span class="tag-box invisible">
            <span class="inline-tag">Template-Variablen!\$entry_vars.allowDateManipulation</span>
        </span>
        <span class="box"><code class="sub-item smarty">{$entry_vars.allowDateManipulation}</code>
            <span class="sub-box">
				<span class="smarty-type"><em>Variablentyp:</em> <code class="type">Boolean</code></span>
		    </span>
            <span class="sub-box">
                Ist auf <code>true</code> gesetzt, wenn in der Blog-Konfiguration die
                Vor-/Rückdatierung von Einträgen erlaubt wird
                (<code class="nobreak">$serendipity['allowDateManipulation']</code>, siehe Seite <span class="pageref"><a href="#allowdatemanipulation">allowdatemanipulation</a></span>).
			</span>
        </span>

        <span class="tag-box invisible">
            <span class="inline-tag">Template-Variablen!\$entry_vars.show_wysiwyg</span>
        </span>
        <span class="box"><code class="sub-item smarty">{$entry_vars.show_wysiwyg}</code>
            <span class="sub-box">
				<span class="smarty-type"><em>Variablentyp:</em> <code class="type">Boolean</code></span>
		    </span>
            <span class="sub-box">
                Ist auf <code>true</code> gesetzt, wenn der Redakteur die Benutzung des WYSIWYG-Editors
                aktiviert hat (siehe Seite <span class="pageref"><a href="#wysiwyg">WYSIWYG</a></span>).
			</span>
        </span>

        <span class="tag-box invisible">
            <span class="inline-tag">Template-Variablen!\$entry_vars.wysiwyg_advanced</span>
        </span>
        <span class="box"><code class="sub-item smarty">{$entry_vars.wysiwyg_advanced}</code>
            <span class="sub-box">
				<span class="smarty-type"><em>Variablentyp:</em> <code class="type">Boolean</code></span>
		    </span>
            <span class="sub-box">
                Ist auf <code>true</code> gesetzt, wenn der Redakteur einen Browser einsetzt, der einen
                WYSIWYG-Editor darstellen kann (Googles Chrome, Microsoft Internet Explorer, Mozilla Firefox, Opera).
			</span>
        </span>

        <span class="tag-box invisible">
            <span class="inline-tag">Template-Variablen!\$entry_vars.timestamp</span>
        </span>
        <span class="box"><code class="sub-item smarty">{$entry_vars.timestamp}</code>
            <span class="sub-box">
				<span class="smarty-type"><em>Variablentyp:</em> <code class="type">Zahl</code></span>
		    </span>
            <span class="sub-box">
                Enthält das aktuelle Datum oder, falls ein Blog-Artikel bearbeitet wird, das
                Datum des Artikels (in Unix-Sekunden).
			</span>
        </span>

        <span class="tag-box invisible">
            <span class="inline-tag">Template-Variablen!\$entry_vars.reset_timestamp</span>
        </span>
        <span class="box"><code class="sub-item smarty">{$entry_vars.reset_timestamp}</code>
            <span class="sub-box">
				<span class="smarty-type"><em>Variablentyp:</em> <code class="type">Zahl</code></span>
		    </span>
            <span class="sub-box">
                Enthält immer das aktuelle Datum (in Unix-Sekunden).
			</span>
        </span>

        <span class="tag-box invisible">
            <span class="inline-tag">Template-Variablen!\$entry_vars.hidden</span>
        </span>
        <span class="box"><code class="sub-item smarty">{$entry_vars.hidden}</code>
            <span class="sub-box">
				<span class="smarty-type"><em>Variablentyp:</em> <code class="type">Zeichenkette</code></span>
		    </span>
            <span class="sub-box">
                Enthält HTML-Code mit versteckten HTML-Formularfeldern, die einige interne
                Variablen zuweisen.
			</span>
        </span>

        <span class="tag-box invisible">
            <span class="inline-tag">Template-Variablen!\$entry_vars.errMsg</span>
        </span>
        <span class="box"><code class="sub-item smarty">{$entry_vars.errMsg}</code>
            <span class="sub-box">
				<span class="smarty-type"><em>Variablentyp:</em> <code class="type">Zeichenkette</code></span>
		    </span>
            <span class="sub-box">
                Falls beim Speichern oder Bearbeiten eines Artikels Fehlermeldungen auftreten,
                werden sie in dieser Variable gespeichert.
			</span>
        </span>

        <span class="tag-box invisible">
            <span class="inline-tag">Template-Variablen!\$entry_vars.targetURL</span>
        </span>
        <span class="box"><code class="sub-item smarty">{$entry_vars.targetURL}</code>
            <span class="sub-box">
				<span class="smarty-type"><em>Variablentyp:</em> <code class="type">Zeichenkette</code></span>
		    </span>
            <span class="sub-box">
                Enthält das Verweisziel (URL) des HTML-Formulars. Da das Formular zum
                Bearbeiten von Artikeln von unterschiedlichen Stellen des Serendipity-Kerns auch
                zB. durch Plugins aufgerufen werden kann, kann die Ziel-URL
                unterschiedlich lauten und wird daher über eine Variable abstrahiert.
			</span>
        </span>

        <span class="tag-box invisible">
            <span class="inline-tag">Template-Variablen!\$entry_vars.cat_count</span>
        </span>
        <span class="box"><code class="sub-item smarty">{$entry_vars.cat_count}</code>
            <span class="sub-box">
				<span class="smarty-type"><em>Variablentyp:</em> <code class="type">Zahl</code></span>
		    </span>
            <span class="sub-box">
                Enthält die Anzahl der zuweisbaren Blog-Kategorien.
			</span>
        </span>

        <span class="tag-box invisible">
            <span class="inline-tag">Template-Variablen!\$entry_vars.cat_state</span>
        </span>
        <span class="box"><code class="sub-item smarty">{$entry_vars.cat_state}</code>
            <span class="sub-box">
				<span class="smarty-type"><em>Variablentyp:</em> <code class="type">Zeichenkette</code></span>
		    </span>
            <span class="sub-box">
                Wenn einem Blog-Artikel mehr als eine Kategorie zugewiesen werden soll, kann ein
                Mehrfach-Auswahlfeld für die Kategorie-Auswahl aktiviert werden
                (siehe Seite <span class="pageref"><a href="#eintraege-kategorie-dropdown">eintraege-kategorie-dropdown</a></span>).
                Sobald einem Artikel mehr als eine Kategorie zugewiesen wurde, erscheint beim
                Bearbeiten dieses Artikels standardmäßig das Mehrfach-Auswahlfeld, andernfalls
                nur ein einfaches Ausklappfeld.
                Die Variable <code>entry_vars.cat_state</code> bestimmt, wie die Kategorie-Auswahl
                dargestellt wird. Der Wert <code>on</code> steht für <em>Mehrfach-Auswahlfeld</em>,
                <code>off</code> für <em>einfaches Ausklappfeld</em>.
			</span>
        </span>

        <span class="tag-box invisible">
            <span class="inline-tag">Template-Variablen!\$entry_vars.serendipityRightPublish</span>
        </span>
        <span class="box"><code class="sub-item smarty">{$entry_vars.serendipityRightPublish}</code>
            <span class="sub-box">
				<span class="smarty-type"><em>Variablentyp:</em> <code class="type">Boolean</code></span>
		    </span>
            <span class="sub-box">
                Enthält den Wert <code>true</code>, wenn ein Redakteur die Erlaubnis hat, Artikel zu
                veröffentlichen (siehe Seite <span class="pageref"><a href="#rightpublish">rightpublish</a></span>).
			</span>
        </span>

        <span class="tag-box invisible">
            <span class="inline-tag">Template-Variablen!\$entry_vars.wysiwyg_blocks</span>
        </span>
        <span class="box"><code class="sub-item smarty">{$entry_vars.wysiwyg_blocks}</code>
            <span class="sub-box">
				<span class="smarty-type"><em>Variablentyp:</em> <code class="type">Eindimensionales Array</code></span>
		    </span>
            <span class="sub-box">
                Enthält eine Liste von Blöcken, die durch den WYSIWYG-Editor gefüllt werden
                können (<code>body</code>, <code>extended</code>).
			</span>
        </span>

        <span class="tag-box invisible">
            <span class="inline-tag">Template-Variablen!\$entry_vars.entry_template</span>
        </span>
        <span class="box"><code class="sub-item smarty">{$entry_vars.entry_template}</code>
            <span class="sub-box">
				<span class="smarty-type"><em>Variablentyp:</em> <code class="type">Zeichenkette</code></span>
		    </span>
            <span class="sub-box">
                Enthält den Pfad zur darzustellenden Template-Datei <code>admin/entries.tpl</code>.
                Plugins können ein Backend-Template frei modifizieren, um
                unterschiedliche Artikel-Editor-Oberflächen darzustellen.
			</span>
        </span>

        <span class="tag-box invisible">
            <span class="inline-tag">Template-Variablen!\$entry_vars.entry</span>
        </span>
        <span class="box"><code class="sub-item smarty">{$entry_vars.entry}</code>
            <span class="sub-box">
				<span class="smarty-type"><em>Variablentyp:</em> <code class="type">Eindimensionales Array</code></span>
		    </span>
            <span class="sub-box">
                Enthält die Meta-Daten des Blog-Artikels, sofern dieser gespeichert wurde oder
                sich in der Vorschau befindet. Folgende Array-Schlüssel sind verfügbar:
			</span>
        </span>

        <span class="box">

            <span class="sub-box mda-box">

                <span class="label invisible" id="??? entries entry array ???">??? entries entry array ???</span>

                <span class="tag-box invisible">
                    <span class="inline-tag">Template-Variablen!\$entry_vars.entry.isdraft</span>
                </span>
                <span class="box"><code class="sub-item smarty">{$entry_vars.entry.isdraft}</code>
                    <span class="sub-box">
                        <span class="smarty-type"><em>Variablentyp:</em> <code class="type">Boolean</code></span>
                    </span>
                    <span class="sub-box">
                        Ist auf <code>true</code> gesetzt, wenn der Artikel als Entwurf gespeichert wurde.
                    </span>
                </span>

                <span class="tag-box invisible">
                    <span class="inline-tag">Template-Variablen!\$entry_vars.entry.moderate_comments</span>
                </span>
                <span class="box"><code class="sub-item smarty">{$entry_vars.entry.moderate_comments}</code>
                    <span class="sub-box">
                        <span class="smarty-type"><em>Variablentyp:</em> <code class="type">Boolean</code></span>
                    </span>
                    <span class="sub-box">
                        Ist auf <code>true</code> gesetzt, wenn die Kommentare zu dem Blog-Artikel moderiert
                        werden sollen.
                    </span>
                </span>

                <span class="tag-box invisible">
                    <span class="inline-tag">Template-Variablen!\$entry_vars.entry.allow_comments</span>
                </span>
                <span class="box"><code class="sub-item smarty">{$entry_vars.entry.allow_comments}</code>
                    <span class="sub-box">
                        <span class="smarty-type"><em>Variablentyp:</em> <code class="type">Boolean</code></span>
                    </span>
                    <span class="sub-box">
                        Ist auf <code>true</code> gesetzt, wenn Kommentare zu dem Blog-Artikel erlaubt sind.
                    </span>
                </span>

                <span class="tag-box invisible">
                    <span class="inline-tag">Template-Variablen!\$entry_vars.entry.title</span>
                </span>
                <span class="box"><code class="sub-item smarty">{$entry_vars.entry.title}</code>
                    <span class="sub-box">
                        <span class="smarty-type"><em>Variablentyp:</em> <code class="type">Zeichenkette</code></span>
                    </span>
                    <span class="sub-box">
                        Enthält den Titel des Blog-Artikels.
                    </span>
                </span>

                <span class="tag-box invisible">
                    <span class="inline-tag">Template-Variablen!\$entry_vars.entry.body</span>
                </span>
                <span class="box"><code class="sub-item smarty">{$entry_vars.entry.body}</code>
                    <span class="sub-box">
                        <span class="smarty-type"><em>Variablentyp:</em> <code class="type">Zeichenkette</code></span>
                    </span>
                    <span class="sub-box">
                        Enthält den Artikeltext.
                    </span>
                </span>

                <span class="tag-box invisible">
                    <span class="inline-tag">Template-Variablen!\$entry_vars.entry.extended</span>
                </span>
                <span class="box"><code class="sub-item smarty">{$entry_vars.entry.extended}</code>
                    <span class="sub-box">
                        <span class="smarty-type"><em>Variablentyp:</em> <code class="type">Zeichenkette</code></span>
                    </span>
                    <span class="sub-box">
                        Enthält den erweiterten Artikeltext.
                    </span>
                </span>

                <span class="tag-box invisible">
                    <span class="inline-tag">Template-Variablen!\$entry_vars.entry.id</span>
                </span>
                <span class="box"><code class="sub-item smarty">{$entry_vars.entry.id}</code>
                    <span class="sub-box">
                        <span class="smarty-type"><em>Variablentyp:</em> <code class="type">Zahl</code></span>
                    </span>
                    <span class="sub-box">
                        Enthält die ID des Artikels.
                    </span>
                </span>

                <span class="tag-box invisible">
                    <span class="inline-tag">Template-Variablen!\$entry_vars.entry.timestamp</span>
                </span>
                <span class="box"><code class="sub-item smarty">{$entry_vars.entry.timestamp}</code>
                    <span class="sub-box">
                        <span class="smarty-type"><em>Variablentyp:</em> <code class="type">Zahl</code></span>
                    </span>
                    <span class="sub-box">
                        Enthält das Erstellungsdatum des Artikels (in Unix-Sekunden).
                    </span>
                </span>

                <span class="tag-box invisible">
                    <span class="inline-tag">Template-Variablen!\$entry_vars.entry.entry_form</span>
                </span>
                <span class="box"><code class="sub-item smarty">{$entry_vars.entry.entry_form}</code>
                    <span class="sub-box">
                        <span class="smarty-type"><em>Variablentyp:</em> <code class="type">Zeichenkette</code></span>
                    </span>
                    <span class="sub-box">
                        Enthält etwaigen HTML-Code, der als Zusatz im <code>&lt;form&gt;</code>-HTML-Tag ausgegeben
                        werden kann, um zB. individuelles JavaScript auszugeben. Plugins können diese
                        Variable benutzen, um erweiterte Funktionen einzubinden.
                    </span>
                </span>

            </span><!-- sub-box mda-box end -->

        </span><!-- box $entry_vars.entry end -->

    </span><!-- box mda-box $entry_vars end -->

</span>
</p>

</article>

<article id="XU" class="subsub">

<header>
    <h4 class="subarticle" id="sidebar-tpl">sidebar.tpl</h4>
</header>

<p>
<span class="tag-box invisible">
    <span class="inline-tag">Template-Dateien!sidebar.tpl</span>
</span>
</p>

<p>Die Template-Datei <code>sidebar.tpl</code> ist zuständig für die Darstellung der
Seitenleisten-Plugins. Sie wird jeweils pro konfigurierter Seitenleiste (links,
rechts ...) mittels des Funktionsaufrufs
<code class="item smarty">{serendipity_printSidebar}</code> (siehe Seite <span class="pageref"><a href="#printsidebar">printsidebar</a></span>) eingelesen und meist in
der <code>index.tpl</code> aufgerufen.</p>

<p class="desc citem-desc">
<span class="tag-box invisible">
    <span class="inline-tag">Template-Variablen!\$plugindata</span>
</span>
<code class="item smarty">{$plugindata}</code>
<span class="desc-info">
    <span class="box">
        <span class="smarty-type"><em>Variablentyp:</em> <code class="type">Mehrdimensionales Array</code></span>
        <span class="smarty-scope"><em>Verfügbar in:</em> <code class="file">sidebar.tpl</code></span>
        <span class="smarty-doc"><em>Zugewiesen in:</em> <code class="file">include/plugin_api.inc.php</code>, <code class="command">serendipity_plugin_api::generate_plugins()</code></span>
    </span>

    <span class="box">
        Das Array <code class="smarty">{$plugindata}</code> enthält die Ausgaben (und Metadaten) aller
        dargestellten Seitenleisten-Plugins.
        Das mehrdimensionale Array enthält für jedes durchnummerierte Unter-Array
        folgende Schlüssel:
    </span>

    <span class="box mda-box">

        <span class="box"><code class="sub-item smarty">{$plugindata.X.side}</code>
            <span class="sub-box">
				<span class="smarty-type"><em>Variablentyp:</em> <code class="type">Zeichenkette</code></span>
		    </span>
            <span class="sub-box">
                Enthält den Namen der zugehörigen Seite des jeweiligen Seitenleisten-Plugins,
                zB. <code>left</code> für ein Element der linken Seitenleiste.
			</span>
        </span>

        <span class="box"><code class="sub-item smarty">{$plugindata.X.class}</code>
            <span class="sub-box">
				<span class="smarty-type"><em>Variablentyp:</em> <code class="type">Zeichenkette</code></span>
		    </span>
            <span class="sub-box">
                Enthält den PHP-Klassennamen des Seitenleisten-Plugins, zB.
                <code>serendipity_plugin_comments</code>. Der PHP-Klassenname entspricht dabei auch
                üblicherweise dem Datei- und Verzeichnisnamen des Plugins, somit wäre der
                genannte Plugin-Code in der Datei
                <code>plugins/serendipity_plugin_comments/serendipity_plugin_comments.php</code> enthalten.
			</span>
        </span>

        <span class="box"><code class="sub-item smarty">{$plugindata.X.title}</code>
            <span class="sub-box">
				<span class="smarty-type"><em>Variablentyp:</em> <code class="type">Zeichenkette</code></span>
		    </span>
            <span class="sub-box">
                Enthält den Titel eines Seitenleisten-Plugins, wie er in der Seitenleiste
                angezeigt werden soll. Dieser Titel ist bei vielen Plugins vom Benutzer frei
                wählbar.
			</span>
        </span>

        <span class="box"><code class="sub-item smarty">{$plugindata.X.content}</code>
            <span class="sub-box">
				<span class="smarty-type"><em>Variablentyp:</em> <code class="type">Zeichenkette</code></span>
		    </span>
            <span class="sub-box">
                Enthält die Ausgabe eines Seitenleisten-Plugins als HTML-Code.
			</span>
        </span>

        <span class="box"><code class="sub-item smarty">{$plugindata.X.id}</code>
            <span class="sub-box">
				<span class="smarty-type"><em>Variablentyp:</em> <code class="type">Zeichenkette</code></span>
		    </span>
            <span class="sub-box">
                Enthält eine eindeutige Identifikationsnummer des jeweiligen
                Seitenleisten-Plugins. Die ID wird bei Installation des Plugins vergeben, ist
                also auch bei mehrfach installierten gleichartigen Seitenleisten-Plugins für
                jede einzelne Instanz unterschiedlich.
			</span>
            <span class="sub-box">
                Interne Plugins (die im Serendipity-Kern enthalten sind) enthalten in der
                Identifikationsnummer ein vorangestelltes <code>@</code>-Symbol, darauf folgt der
                Klassenname des Plugins und abschließend ein Doppelpunkt mit einer zufälligen,
                32 Zeichen langen Kombination aus Zahlen und Buchstaben.
			</span>
        </span>

    </span><!-- box mda-box $plugindata end -->

    <span class="box">
    </span>

</span>
</p>

<p class="desc citem-desc">
<span class="tag-box invisible">
    <span class="inline-tag">Template-Variablen!\$pluginside</span>
</span>
<code class="item smarty">{$pluginside}</code>
<span class="desc-info">
    <span class="box">
        <span class="smarty-type"><em>Variablentyp:</em> <code class="type">Zeichenkette</code></span>
        <span class="smarty-scope"><em>Verfügbar in:</em> <code class="file">sidebar.tpl</code></span>
        <span class="smarty-doc"><em>Zugewiesen in:</em> <code class="file">include/plugin_api.inc.php</code>, <code class="command">serendipity_plugin_api::generate_plugins()</code></span>
    </span>

    <span class="box">
        Da die Template-Datei <code>sidebar.tpl</code> pro Seitenleiste (links, rechts ...)
        mehrfach aufgerufen wird, bestimmt die zentrale Variable
        jeweils die entsprechende Seitenleiste. Die Werte der Variable entsprechen dem
        konfigurierten Seitenleistennamen wie <code>Left</code>, <code>Right</code> (siehe auch Seite
        <span class="pageref"><a href="#customsidebars">customsidebars</a></span>).
        Zu beachten ist, dass der erste Buchstabe des Namens großgeschrieben wird.
    </span>

    <span class="box">
        Diese Variable wird üblicherweise dazu benutzt, um eindeutige
        CSS-Klassenselektoren (wie <code>serendipityLeftSidebar</code>) automatisch zu benennen
        und zuzuweisen.
    </span>
</span>
</p>

</article>

<article id="XU" class="subsub">

<header>
    <h4 class="subarticle" id="admin-media_-tpl">admin/media_*.tpl</h4>
</header>

<p class="tagging invisible">
<span class="label invisible" id="media-choose.tpl">media-choose.tpl</span>
<span class="tag-box invisible">
    <span class="inline-tag">Template-Dateien!admin/media_*.tpl</span>
</span>
</p>

<p>Die Template-Dateien für die Darstellung der Mediathek [*]
<span class="footnote"><i class="fa fa-info-circle"></i> <code>admin/media_choose.tpl</code>, <code>media_imgedit.tpl</code>,
<code>media_imgedit_done.tpl</code>, <code>media_gallery.tpl</code>, <code>media_galleryinsert.tpl</code>, <code>media_galleryitems.tpl</code>, <code>media_pane.tpl</code>, <code>media_items.tpl</code>,
<code>media_properties.tpl</code>, <code>media_upload.tpl</code>, <code>media_showitem.tpl</code></span><!-- footnote --> werden innerhalb
des Backends eingebunden. Für welchen Bereich die jeweilige Datei zuständig ist,
wird auf Seite <span class="pageref"><a href="#mediatemplates">mediatemplates</a></span> beschrieben.</p>

<p class="desc citem-desc">
<span class="tag-box invisible">
    <span class="inline-tag">Template-Variablen!\$media</span>
</span>
<code class="item smarty">{$media}</code> (gültig in <code class="file">media_pane.tpl</code>, <code class="file">media_properties.tpl</code>)
<span class="desc-info">
    <span class="box">
        <span class="smarty-type"><em>Variablentyp:</em> <code class="type">Eindimensionales Array</code></span>
        <span class="smarty-scope"><em>Verfügbar in:</em> <code class="file">media_upload.tpl, media_properties.tpl</code></span>
        <span class="smarty-doc"><em>Zugewiesen in:</em> <code class="file">include/functions_images.inc.php</code>, <code class="function">serendipity_showMedia()</code></span>
    </span>

    <span class="box">
        Enthält die Liste ein oder mehrerer Medienobjekte bei Darstellung in der
        Mediathek-Übersicht. Die Ergebnisse der Template-Dateien
        <code>media_upload.tpl</code> oder <code>media_properties.tpl</code> werden über die
        Smarty-Variable <code class="smarty">{$MEDIA_ITEMS}</code> in den jeweiligen Kontext anderer
        Smarty-Templates eingebunden.
    </span>

    <span class="box mda-box">

        <span class="tag-box invisible">
            <span class="inline-tag">Template-Variablen!\$media.manage</span>
        </span>
        <span class="box"><code class="sub-item smarty">{$media.manage}</code>
            <span class="sub-box">
                <span class="smarty-type"><em>Variablentyp:</em> <code class="type">Boolean</code></span>
            </span>
            <span class="sub-box">
                Gibt an, ob Symbole zum Bearbeiten einer Datei der Mediathek (Bearbeiten,
                Löschen, Drehen ...) angezeigt werden sollen. Enthält den Wert <code>true</code>,
                falls aktiviert.
            </span>
        </span>

        <span class="tag-box invisible">
            <span class="inline-tag">Template-Variablen!\$media.perPage</span>
        </span>
        <span class="box"><code class="sub-item smarty">{$media.perPage}</code>
            <span class="sub-box">
                <span class="smarty-type"><em>Variablentyp:</em> <code class="type">Zahl</code></span>
            </span>
            <span class="sub-box">
                Enthält die Anzahl der maximal pro Seite darzustellenden Dateien der
                Mediathek.
            </span>
        </span>

        <span class="tag-box invisible">
            <span class="inline-tag">Template-Variablen!\$media.page</span>
        </span>
        <span class="box"><code class="sub-item smarty">{$media.page}</code>
            <span class="sub-box">
                <span class="smarty-type"><em>Variablentyp:</em> <code class="type">Zahl</code></span>
            </span>
            <span class="sub-box">
                Enthält die Seitennummer der aktuell dargestellen Übersichtsseite der Mediathek.
            </span>
        </span>

        <span class="tag-box invisible">
            <span class="inline-tag">Template-Variablen!\$media.pages</span>
        </span>
        <span class="box"><code class="sub-item smarty">{$media.pages}</code>
            <span class="sub-box">
                <span class="smarty-type"><em>Variablentyp:</em> <code class="type">Zahl</code></span>
            </span>
            <span class="sub-box">
                Enthält die Seitenanzahl der dargestellten Übersicht der Mediathek.
            </span>
        </span>

        <span class="tag-box invisible">
            <span class="inline-tag">Template-Variablen!\$media.linkNext</span>
            <span class="inline-tag">Template-Variablen!\$media.linkPrevious</span>
        </span>
        <span class="box"><code class="sub-item smarty">{$media.linkNext}, {media.linkPrevious}</code>
            <span class="sub-box">
                <span class="smarty-type"><em>Variablentyp:</em> <code class="type">Zeichenkette</code></span>
            </span>
            <span class="sub-box">
                Enthält die URLs zum Zurück- und Weiterblättern der Mediathek-Übersicht.
            </span>
        </span>

        <span class="tag-box invisible">
            <span class="inline-tag">Template-Variablen!\$media.extraParems</span>
        </span>
        <span class="box"><code class="sub-item smarty">{$media.extraParems}</code>
            <span class="sub-box">
                <span class="smarty-type"><em>Variablentyp:</em> <code class="type">Zeichenkette</code></span>
            </span>
            <span class="sub-box">
                Enthält etwaige URL-GET-Variablen, die an die URL zum Blättern angehängt werden
                müssen, beispielsweise Filtereinschränkungen und Sortierungsoptionen.
            </span>
        </span>

        <span class="tag-box invisible">
            <span class="inline-tag">Template-Variablen!\$media.show_upload</span>
        </span>
         <span class="box"><code class="sub-item smarty">{$media.show_upload}</code>
            <span class="sub-box">
                <span class="smarty-type"><em>Variablentyp:</em> <code class="type">Boolean</code></span>
            </span>
            <span class="sub-box">
                Falls auf <code>true</code> gesetzt, soll die Einbindung der Oberfläche zum Hochladen
                einer Datei in die Mediathek mit angezeigt werden.
            </span>
        </span>

        <span class="tag-box invisible">
            <span class="inline-tag">Template-Variablen!\$media.hideSubdirFiles</span>
        </span>
         <span class="box"><code class="sub-item smarty">{$media.hideSubdirFiles}</code>
            <span class="sub-box">
                <span class="smarty-type"><em>Variablentyp:</em> <code class="type">Boolean</code></span>
            </span>
            <span class="sub-box">
                Falls auf <code>true</code> gesetzt, werden nur die Dateien der Mediathek angezeigt,
                die sich im aktuellen Ordner befinden. Falls auf <code>false</code> gesetzt,
                werden auch alle Dateien der Unterordner darstellt. Diese Option kann in den Sortierungs-Filter
                Einstellungen gesetzt werden und ermöglicht eine bessere Strukturierung von Mediadaten.
                Sie wird auch automatisch benutzt, wenn es um die Auflistung für Gallery Anzeige geht.
            </span>
        </span>

        <span class="tag-box invisible">
            <span class="inline-tag">Template-Variablen!\$media.url</span>
        </span>
         <span class="box"><code class="sub-item smarty">{$media.url}</code>
            <span class="sub-box">
                <span class="smarty-type"><em>Variablentyp:</em> <code class="type">Zeichenkette</code></span>
            </span>
            <span class="sub-box">
                Enthält die URL zum Backend, mittels derer die Bearbeitungsaktionen ausgeführt werden können.
            </span>
        </span>

        <span class="tag-box invisible">
            <span class="inline-tag">Template-Variablen!\$media.enclose</span>
        </span>
        <span class="box"><code class="sub-item smarty">{$media.enclose}</code>
            <span class="sub-box">
                <span class="smarty-type"><em>Variablentyp:</em> <code class="type">Boolean</code></span>
            </span>
            <span class="sub-box">
                Falls auf <code>true</code> gesetzt, werden die Dateien der Mediathek mittels des
                Templates <code>admin/media_pane.tpl</code> in einer Übersicht dargestellt. Falls auf
                <code>false</code> gesetzt, wird das Template <code>admin/media_properties.tpl</code>
                verwendet, das die Detaileigenschaften einer einzelnen Datei der
                Mediathek darstellen kann.
            </span>
        </span>

        <span class="tag-box invisible">
            <span class="inline-tag">Template-Variablen!\$media.zoomIMG</span>
            <span class="inline-tag">Template-Variablen!\$media.renameIMG</span>
            <span class="inline-tag">Template-Variablen!\$media.resizeIMG</span>
            <span class="inline-tag">Template-Variablen!\$media.rotatecwIMG</span>
            <span class="inline-tag">Template-Variablen!\$media.rotateccwIMG</span>
            <span class="inline-tag">Template-Variablen!\$media.configureIMG</span>
            <span class="inline-tag">Template-Variablen!\$media.deleteIMG</span>
            <span class="inline-tag">Template-Variablen!\$media.prevIMG</span>
            <span class="inline-tag">Template-Variablen!\$media.nextIMG</span>
        </span>
        <span class="box">
            <code class="sub-item smarty">
                {$media.zoomIMG}, {$media.renameIMG},
                {$media.resizeIMG}, {$media.rotatecwIMG},
                {$media.rotateccwIMG}, {$media.configureIMG},
                {$media.deleteIMG}, {$media.prevIMG}, {$media.nextIMg}
            </code>
            <span class="sub-box">
                <span class="smarty-type"><em>Variablentyp:</em> <code class="type">Zeichenkette</code></span>
            </span>
            <span class="sub-box">
                Enthält den Pfad zur jeweiligen Datei mit den Symbolen zum Bearbeiten der
                Dateien in der Mediathek (Löschen, Umbenennen ...).
            </span>
        </span>

        <span class="tag-box invisible">
            <span class="inline-tag">Template-Variablen!\$media.token</span>
        </span>
         <span class="box"><code class="sub-item smarty">{$media.token}</code>
            <span class="sub-box">
                <span class="smarty-type"><em>Variablentyp:</em> <code class="type">Zeichenkette</code></span>
            </span>
            <span class="sub-box">
                Enthält eine zufällige Zeichenkette, die ein Formular vor
                dem Fernsteuern durch unberechtigte Zugriffe schützt (siehe 
                <code>XSRF</code> auf Seite <span class="pageref"><a href="#xsrf">xsrf</a></span>).
                Diese Zeichenkette muss als verstecktes Element des Formulars zum Hochladen der
                Datei eingebunden werden.
            </span>
        </span>

        <span class="tag-box invisible">
            <span class="inline-tag">Template-Variablen!\$media.form_hidden</span>
        </span>
        <span class="box"><code class="sub-item smarty">{$media.form_hidden}</code>
            <span class="sub-box">
                <span class="smarty-type"><em>Variablentyp:</em> <code class="type">Zeichenkette</code></span>
            </span>
            <span class="sub-box">
                Enthält eine Liste von benötigten, versteckten HTML-Formularfeldern. Diese
                werden vom Serendipity-Kern geliefert und müssen in das Formular des Templates
                eingebunden werden. Die Variable enthält volllständig formatierten HTML-Code.
            </span>
        </span>

        <span class="tag-box invisible">
            <span class="inline-tag">Template-Variablen!\$media.blimit_path</span>
        </span>
        <span class="box"><code class="sub-item smarty">{$media.blimit_path}</code>
            <span class="sub-box">
                <span class="smarty-type"><em>Variablentyp:</em> <code class="type">Zeichenkette</code></span>
            </span>
            <span class="sub-box">
                Falls die Ausgabe der Dateien der Mediathek auf ein Verzeichnis
                eingeschränkt wird, enthält diese Variable den letzten übergeordneten
                Verzeichnisnamen.
            </span>
        </span>

        <span class="tag-box invisible">
            <span class="inline-tag">Template-Variablen!\$media.only_path</span>
            <span class="inline-tag">Template-Variablen!\$media.limit_path</span>
        </span>
         <span class="box"><code class="sub-item smarty">{$media.only_path}, {$media.limit_path}</code>
            <span class="sub-box">
                <span class="smarty-type"><em>Variablentyp:</em> <code class="type">Zeichenkette</code></span>
            </span>
            <span class="sub-box">
                Falls die Ausgabe der Dateien der Mediathek auf ein Verzeichnis
                eingeschränkt wird, enthält diese Variable den vollständigen Verzeichnisnamen.
            </span>
        </span>

        <span class="tag-box invisible">
            <span class="inline-tag">Template-Variablen!\$media.only_filename</span>
        </span>
        <span class="box"><code class="sub-item smarty">{$media.only_filename}</code>
            <span class="sub-box">
                <span class="smarty-type"><em>Variablentyp:</em> <code class="type">Zeichenkette</code></span>
            </span>
            <span class="sub-box">
                Falls die Ausgabe der Dateien der Mediathek auf einen speziellen Dateinamen
                eingeschränkt wird, enthält diese Variable den begrenzenden Dateinamen.
            </span>
        </span>

        <span class="tag-box invisible">
            <span class="inline-tag">Template-Variablen!\$media.sortorder</span>
        </span>
        <span class="box"><code class="sub-item smarty">{$media.sortorder}</code>
            <span class="sub-box">
                <span class="smarty-type"><em>Variablentyp:</em> <code class="type">Eindimensionales Array</code></span>
            </span>
            <span class="sub-box">
                Falls die Ausgabe der Dateien der Mediathek mit einer vom Benutzer
                bestimmten Sortierungsreihenfolge erfolgt, enthält diese Variable die
                Details zur Sortierung. Dazu werden die Unter-Array-Schlüssel <code>order</code>
                (Datenbank-Spaltenname), <code>ordermode</code> (aufsteigende oder absteigende Sortierung,
                <code>ASC</code>/<code>DESC</code>), <code>perpage</code> (Anzahl der Elemente pro Seite) eingebunden.
            </span>
        </span>

        <span class="tag-box invisible">
            <span class="inline-tag">Template-Variablen!\$media.keywords_selected</span>
        </span>
         <span class="box"><code class="sub-item smarty">{$media.keywords_selected}</code>
            <span class="sub-box">
                <span class="smarty-type"><em>Variablentyp:</em> <code class="type">Zeichenkette</code></span>
            </span>
            <span class="sub-box">
                Falls die Ausgabe der Dateien der Mediathek auf Dateien mit speziellem
                Schlüsselwort eingeschränkt wird, enthält diese Variable die Liste der
                Schlüsselwörter.
            </span>
        </span>

        <span class="tag-box invisible">
            <span class="inline-tag">Template-Variablen!\$media.keywords</span>
        </span>
        <span class="box"><code class="sub-item smarty">{$media.keywords}</code>
            <span class="sub-box">
                <span class="smarty-type"><em>Variablentyp:</em> <code class="type">Eindimensionales Array</code></span>
            </span>
            <span class="sub-box">
                Enthält ein Array aller verfügbaren Schlüsselwörter (siehe Seite
                <span class="pageref"><a href="#medien-schluesselwoerter">Medien-Schluesselwörter</a></span>).
            </span>
        </span>

        <span class="tag-box invisible">
            <span class="inline-tag">Template-Variablen!\$media.filter</span>
        </span>
        <span class="box"><code class="sub-item smarty">{$media.filter}</code>
            <span class="sub-box">
                <span class="smarty-type"><em>Variablentyp:</em> <code class="type">Mehrdimensionales Array</code></span>
            </span>
            <span class="sub-box">
                Falls die Ausgabe der Dateien der Mediathek mit einer vom Benutzer
                bestimmten Filterung erfolgt, enthält diese Variable die jeweiligen
                Filtermechanismen. Jeder Unter-Array-Schlüssel entspricht dem Namen eines
                Datenbankfeldes, das jeweils weitere Array-Schlüssel enthalten kann. Jeder
                Filter besitzt einen <code>from</code>- und <code>to</code>-Schlüssel, der einen Wert
                <em>von/bis</em> beschränkt. Beispiel:
            </span>

            <span class="sub-box">
                <span id="pre-style"><code class="php">
                    $media['filter'] = array(<br>
                    &nbsp; 'title'&nbsp;&nbsp;&nbsp;&nbsp; =&gt; 'Intern',<br>
                    &nbsp; 'timestamp' =&gt; array(<br>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 'from' =&gt; 1192455852,<br>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 'to'&nbsp;&nbsp; =&gt; 1182455852<br>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ),<br>
                    &nbsp; 'authorid'&nbsp; =&gt; '12'&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<br>
                    );
                </code></span>
            </span>
            <span class="sub-box">
                Die Liste der verfügbaren Filter richtet sich nach der Variable
                <code class="item smarty">{$media.sort_order}</code>.
            </span>
        </span>

        <span class="tag-box invisible">
            <span class="inline-tag">Template-Variablen!\$media.sort_order</span>
        </span>
         <span class="box"><code class="sub-item smarty">{$media.sort_order}</code>
            <span class="sub-box">
                <span class="smarty-type"><em>Variablentyp:</em> <code class="type">Mehrdimensionales Array</code></span>
            </span>
            <span class="sub-box">
                Enthält die Liste aller filterbaren Datenbankfelder der Mediathek. Diese
                Variable wird durch die Serendipity-Funktion
                <code>serendipity_getImageFields()</code> (Datei <code>include/functions_images.inc.php</code>)
                gefüllt und gibt Metadaten wie Typ und Beschreibung jedes Datenfeldes
                aus. Der Haupt-Array-Schlüssel gibt den Datenbankspaltennamen (wie <code>i.date</code>)
                an, die Unterschlüssel <code>desc</code> und <code>type</code> enthalten die jeweiligen Metadaten.
            </span>
            <span class="sub-box">
                Die Liste dieser filterbaren Datenbankspalten wird dynamisch in den
                Template-Dateien ausgewertet, um die entsprechenden Eingabeboxen für das
                Suchformular zu erstellen.
            </span>
        </span>

        <span class="tag-box invisible">
            <span class="inline-tag">Template-Variablen!\$media.authors</span>
        </span>
        <span class="box"><code class="sub-item smarty">{$media.authors}</code>
            <span class="sub-box">
                <span class="smarty-type"><em>Variablentyp:</em> <code class="type">Mehrdimensionales Array</code></span>
            </span>
            <span class="sub-box">
                Enthält ein Array aller verfügbaren Autoren des Blogs, so dass die Auswahl der
                Dateien der Mediathek auf einen gewünschten Eigentümer eingeschränkt
                werden kann. Die Liste der Autoren wird mittels der Serendipity-Funktion
                <code>serendipity_fetchUsers()</code> (Datei <code>include/functions.inc.php</code>) bezogen.
                Die verfügbaren Array-Schlüssel entsprechen den Datenbankspaltennamen der
                <code>serendipity_authors</code>-Tabelle.
            </span>
        </span>

        <span class="tag-box invisible">
            <span class="inline-tag">Template-Variablen!\$media.sort_row_interval</span>
        </span>
        <span class="box"><code class="sub-item smarty">{$media.sort_row_interval}</code>
            <span class="sub-box">
                <span class="smarty-type"><em>Variablentyp:</em> <code class="type">Eindimensionales Array</code></span>
            </span>
            <span class="sub-box">
                Enthält ein Array mit den Werten, wie viele Dateien pro Seite dargestellt werden
                können. Standardmäßig sind das die Werte <code>8, 16, 50, 100</code>.
            </span>
        </span>

        <span class="tag-box invisible">
            <span class="inline-tag">Template-Variablen!\$media.nr_files</span>
        </span>
         <span class="box"><code class="sub-item smarty">{$media.nr_files}</code>
            <span class="sub-box">
                <span class="smarty-type"><em>Variablentyp:</em> <code class="type">Zahl</code></span>
            </span>
            <span class="sub-box">
                Enthält die Anzahl der auf der Seite dargestellten Dateien der Mediathek.
            </span>
        </span>

        <span class="tag-box invisible">
            <span class="inline-tag">Template-Variablen!\$media.files</span>
        </span>
        <span class="box"><code class="sub-item smarty">{$media.files}</code>
            <span class="sub-box">
                <span class="smarty-type"><em>Variablentyp:</em> <code class="type">Mehrdimensionales Array</code></span>
            </span>
            <span class="sub-box">
                Enthält ein Array aller darzustellenden Dateien der Mediathek.
            </span>
        </span>

        <span class="tag-box invisible">
            <span class="inline-tag">Template-Variablen!\$media.paths</span>
        </span>
        <span class="box"><code class="sub-item smarty">{$media.paths}</code>
            <span class="sub-box">
                <span class="smarty-type"><em>Variablentyp:</em> <code class="type">Mehrdimensionales Array</code></span>
            </span>
            <span class="sub-box">
                Enthält ein Array aller eingerichteten Verzeichnisse der Mediathek. Die
                verfügbaren Array-Schlüssel sind identisch mit den auf Seite
                <span class="pageref"><a href="#mediafolders">mediafolders</a></span> aufgeführten.
            </span>
        </span>

        <span class="tag-box invisible">
            <span class="inline-tag">Template-Variablen!\$media.is_edit</span>
        </span>
         <span class="box"><code class="sub-item smarty">{$media.is_edit}</code>
            <span class="sub-box">
                <span class="smarty-type"><em>Variablentyp:</em> <code class="type">Boolean</code></span>
                <span class="smarty-scope"><em>Verfügbar in:</em> <code class="file">media_properties.tpl</code></span>
            </span>
            <span class="sub-box">
                Ist <code>true</code> gesetzt, wenn das Formular der Template-Datei
                <code>media_properties.tpl</code> zum Bearbeiten der Eigenschaften einer
                Datei der Mediathek angezeigt werden soll.
            </span>
        </span>

        <span class="tag-box invisible">
            <span class="inline-tag">Template-Variablen!\$media.editform_hidden</span>
        </span>
        <span class="box"><code class="sub-item smarty">{$media.editform_hidden}</code>
            <span class="sub-box">
                <span class="smarty-type"><em>Variablentyp:</em> <code class="type">Zeichenkette</code></span>
                <span class="smarty-scope"><em>Verfügbar in:</em> <code class="file">media_properties.tpl</code></span>
            </span>
            <span class="sub-box">
                Enthält HTML-Code für versteckte Formularwerte, die zum Bearbeiten einer
                Datei der Mediathek benötigt werden.
            </span>
        </span>

        <span class="tag-box invisible">
            <span class="inline-tag">Template-Variablen!\$media.keywordsPerBlock</span>
        </span>
        <span class="box"><code class="sub-item smarty">{$media.keywordsPerBlock}</code>
            <span class="sub-box">
                <span class="smarty-type"><em>Variablentyp:</em> <code class="type">Zahl</code></span>
                <span class="smarty-scope"><em>Verfügbar in:</em> <code class="file">media_properties.tpl</code></span>
            </span>
            <span class="sub-box">
                Gibt an, wie viele Schlüsselwörter beim Zuweisen zu einer Datei der
                Mediathek nebeneinander in einer Zeile dargestellt werden können
                (standardmäßig <code>3</code>).
            </span>
        </span>

        <span class="tag-box invisible">
            <span class="inline-tag">Template-Variablen!\$media.dprops</span>
        </span>
         <span class="box"><code class="sub-item smarty">{$media.dprops}</code>
            <span class="sub-box">
                <span class="smarty-type"><em>Variablentyp:</em> <code class="type">Eindimensionales Array</code></span>
                <span class="smarty-scope"><em>Verfügbar in:</em> <code class="file">media_properties.tpl</code></span>
            </span>
            <span class="sub-box">
                Enthält ein Array mit den verfügbaren Eigenschaftsfeldern für eine Datei der
                Mediathek, wie im Blog konfiguriert (siehe Seite <span class="pageref"><a href="#entryproperties">entryproperties</a></span>).
            </span>
        </span>

    </span><!-- box mda-box $media array in scope: media_pane.tpl, media_properties.tpl end -->

</span>
</p>

<p class="desc citem-desc">
<code class="item smarty">{$media}</code> (gültig in <code class="file">media_upload.tpl</code>)
<span class="desc-info">
    <span class="box">
        <span class="smarty-type"><em>Variablentyp:</em> <code class="type">Eindimensionales Array</code></span>
        <span class="smarty-scope"><em>Verfügbar in:</em> <code class="file">media_upload.tpl</code></span>
        <span class="smarty-doc"><em>Zugewiesen in:</em> <code class="file">include/admin/images.inc.php</code>, <code class="function">case 'addSelect'</code></span>
    </span>

    <span class="box">
        Enthält globale Eigenschaften der Mediathek und deren vom Benutzer
        angelegte Verzeichnisse, die benötigt werden, um das Formular zum Hochladen einer
        Datei darzustellen.
    </span>

    <span class="box mda-box">

        <span class="tag-box invisible">
            <span class="inline-tag">Template-Variablen!\$media.token</span>
        </span>
        <span class="box"><code class="sub-item smarty">{$media.token}</code>
            <span class="sub-box">
                <span class="smarty-type"><em>Variablentyp:</em> <code class="type">Zeichenkette</code></span>
            </span>
            <span class="sub-box">
                Enthält eine zufällige Zeichenkette, die ein Formular vor
                dem Fernsteuern durch unberechtigte Zugriffe schützt (siehe 
                <code>XSRF</code> auf Seite <span class="pageref"><a href="#xsrf">xsrf</a></span>).
                Diese Zeichenkette muss als verstecktes Element des Formulars zum Hochladen der
                Datei eingebunden werden.
            </span>
        </span>

        <span class="tag-box invisible">
            <span class="inline-tag">Template-Variablen!\$media.form_hidden</span>
        </span>
        <span class="box"><code class="sub-item smarty">{$media.form_hidden}</code>
            <span class="sub-box">
                <span class="smarty-type"><em>Variablentyp:</em> <code class="type">Zeichenkette</code></span>
            </span>
            <span class="sub-box">
                Enthält eine Liste von benötigten, versteckten HTML-Formularfeldern. Diese
                werden vom Serendipity-Kern geliefert und müssen in das Formular des Templates
                eingebunden werden. Die Variable enthält vollständig formatierten HTML-Code.
            </span>
        </span>

        <span class="tag-box invisible">
            <span class="inline-tag">Template-Variablen!\$media.folders</span>
        </span>
        <span class="box"><code class="sub-item smarty">{$media.folders}</code>
            <span class="sub-box">
                <span class="smarty-type"><em>Variablentyp:</em> <code class="type">Mehrdimensionales Array</code></span>
            </span>
            <span class="sub-box">
                Enthält eine Liste aller Verzeichnisse und Unterverzeichnisse der
                Mediathek. Folgende Array-Schlüssel sind verfügbar:
            </span>

            <span class="sub-box mda-box">

                <span class="label invisible" id="mediafolders">mediafolders</span>

                <span class="box"><code class="sub-item smarty">{$media.folders.X.name}</code>
                    <span class="sub-box">
                        <span class="smarty-type"><em>Variablentyp:</em> <code class="type">Zeichenkette</code></span>
                    </span>
                    <span class="sub-box">
                        Enthält den Namen des jeweiligen Verzeichnisses.
                    </span>
                </span>

                <span class="box"><code class="sub-item smarty">{$media.folders.X.depth}</code>
                    <span class="sub-box">
                        <span class="smarty-type"><em>Variablentyp:</em> <code class="type">Zeichenkette</code></span>
                    </span>
                    <span class="sub-box">
                        Gibt die Tiefe eines Verzeichnisses an. Für jedes Unterverzeichnis wird dieser
                        Wert um eins erhöht. Für <code>/bilder/aktuell/pfadfinder/</code> würde die Variable
                        den Wert <code>3</code> enthalten.
                    </span>
                </span>

                <span class="box"><code class="sub-item smarty">{$media.folders.X.relpath}</code>
                    <span class="sub-box">
                        <span class="smarty-type"><em>Variablentyp:</em> <code class="type">Zeichenkette</code></span>
                    </span>
                    <span class="sub-box">
                        Enthält den vollständigen Pfad des jeweiligen Verzeichnisses (zB.
                        <code>bilder/aktuell/pfadfinder/</code>). Das Verzeichnis wird ohne führenden, aber mit
                        abschließendem Schrägstrich ausgegeben.
                    </span>
                </span>

                <span class="box"><code class="sub-item smarty">{$media.folders.X.directory}</code>
                    <span class="sub-box">
                        <span class="smarty-type"><em>Variablentyp:</em> <code class="type">Boolean</code></span>
                    </span>
                    <span class="sub-box">
                        Enthält den Wert <code>true</code>, wenn das Element ein Verzeichnis darstellt. Ein
                        Array derselben Struktur kann von einer internen Serendipity-Funktion auch
                        erstellt werden, wenn eine Liste aller verfügbaren Dateien der Mediathek
                        ausgegeben werden soll. Nur in einem solchen Fall kann der Wert auch <code>false</code>
                        annehmen. Im Kontext der Template-Datei <code>media_upload.tpl</code> ist der Wert der
                        Variable <code class="item smarty">{$media.folders.X.directory}</code> jedoch erwartungsgemäß stets <code>true</code>.
                    </span>
                </span>

            </span><!-- sub-box mda-box mediafolders end -->

        </span><!-- box $media.folders end -->

        <span class="tag-box invisible">
            <span class="inline-tag">Template-Variablen!\$media.only_path</span>
        </span>
        <span class="box"><code class="sub-item smarty">{$media.only_path}</code>
            <span class="sub-box">
                <span class="smarty-type"><em>Variablentyp:</em> <code class="type">Zeichenkette</code></span>
            </span>
            <span class="sub-box">
                Falls die Auswahl der Verzeichnisse für die hochzuladende Datei auf einen Teil
                des Verzeichnisbaums beschränkt werden soll, enthält die Variable
                <code>media.only_path</code> den Pfad des Verzeichnisses, ab dem Unterverzeichnisse
                eingebunden werden sollen.
            </span>
        </span>

        <span class="tag-box invisible">
            <span class="inline-tag">Template-Variablen!\$media.max_file_size</span>
        </span>
        <span class="box"><code class="sub-item smarty">{$media.max_file_size}</code>
            <span class="sub-box">
                <span class="smarty-type"><em>Variablentyp:</em> <code class="type">Zahl</code></span>
            </span>
            <span class="sub-box">
                Enthält die maximale Größe (in Bytes) einer hochzuladenden Datei. Diese kann in
                der Serendipity-Konfiguration festgelegt werden (siehe Seite <span class="pageref"><a href="#uploadlimit">uploadlimit</a></span>).
            </span>
        </span>

        <span class="tag-box invisible">
            <span class="inline-tag">Template-Variablen!\$media.maxImgHeight</span>
            <span class="inline-tag">Template-Variablen!\$media.maxImgWidth</span>
        </span>
        <span class="box"><code class="sub-item smarty">{$media.maxImgHeight, media.maxImgWidth}</code>
            <span class="sub-box">
                <span class="smarty-type"><em>Variablentyp:</em> <code class="type">Zahl</code></span>
            </span>
            <span class="sub-box">
                Enthält die maximale Bildbreite und -höhe einer hochzuladenden Datei. Diese kann
                in der Serendipity-Konfiguration festgelegt werden (siehe Seite
                <span class="pageref"><a href="#uploadlimit2">uploadlimit2</a></span>).
            </span>
        </span>

    </span><!-- box mda-box $media array in scope: media_uploads.tpl end -->

</span>
</p>

<p class="desc citem-desc">
<code class="item smarty">{$media}</code> (gültig in <code class="file">media_choose.tpl</code>, <code class="file">media_showitem.tpl</code>)
<span class="desc-info">
    <span class="box">
        <span class="smarty-type"><em>Variablentyp:</em> <code class="type">Eindimensionales Array</code></span>
        <span class="smarty-scope"><em>Verfügbar in:</em> <code class="file">media_choose.tpl, media_showitem.tpl</code></span>
        <span class="smarty-doc"><em>Zugewiesen in:</em> <code class="file">serendipity_admin_image_selector.php</code></span>
    </span>

    <span class="box mda-box">

        <span class="tag-box invisible">
            <span class="inline-tag">Template-Variablen!\$media.GET_STRING</span>
        </span>
        <span class="box"><code class="sub-item smarty">{$media.GET_STRING}</code>
            <span class="sub-box">
                <span class="smarty-type"><em>Variablentyp:</em> <code class="type">Zeichenkette</code></span>
            </span>
            <span class="sub-box">
                Enthält eine Zeichenkette mit den benötigten URL-Variablen, die innerhalb des
                Popups zur Auswahl einer Mediathek-Datei an die Folgeseiten weitergereicht
                werden müssen.
            </span>
        </span>

        <span class="tag-box invisible">
            <span class="inline-tag">Template-Variablen!\$media.frameset</span>
        </span>
        <span class="box"><code class="sub-item smarty">{$media.frameset}</code>
            <span class="sub-box">
                <span class="smarty-type"><em>Variablentyp:</em> <code class="type">Boolean</code></span>
            </span>
            <span class="sub-box">
                Enthält den Wert <code>true</code>, wenn die erste Seite des Mediathek-Popups
                eingebunden wird. In diesem Fall stellt die Template-Datei
                <code>media_choose.tpl</code> keine Inhalte dar, sondern nur das globale Frameset
                (links Verzeichnisnavigation, rechts Inhalt).
            </span>
        </span>

        <span class="tag-box invisible">
            <span class="inline-tag">Template-Variablen!\$media.body_id</span>
        </span>
        <span class="box"><code class="sub-item smarty">{$media.body_id}</code>
            <span class="sub-box">
                <span class="smarty-type"><em>Variablentyp:</em> <code class="type">Zeichenkette</code></span>
            </span>
            <span class="sub-box">
                Enthält eine eindeutige ID, die dem <code>&lt;body&gt;</code>-Element des Templates
                zugewiesen wird, um via CSS unterscheiden zu können, ob innerhalb des Framesets
                die Verzeichnis- (Wert <code>serendipityAdminBodyImageSelectorTree</code>) oder
                die Dateiauswahl (<code>serendipityAdminBodyImageSelector</code>) dargestellt wird.
            </span>
        </span>

        <span class="tag-box invisible">
            <span class="inline-tag">Template-Variablen!\$media.css</span>
        </span>
        <span class="box"><code class="sub-item smarty">{$media.css}</code>
            <span class="sub-box">
                <span class="smarty-type"><em>Variablentyp:</em> <code class="type">Zeichenkette</code></span>
            </span>
            <span class="sub-box">
                Enthält die URL zur <code>admin/style.css</code>-Datei für die Darstellung des
                Serendipity-Backends. In diesem Stylesheet wird auch das Aussehen der
                Mediathek definiert.
            </span>
        </span>

        <span class="tag-box invisible">
            <span class="inline-tag">Template-Variablen!\$media.css_tree</span>
        </span>
        <span class="box"><code class="sub-item smarty">{$media.css_tree}</code>
            <span class="sub-box">
                <span class="smarty-type"><em>Variablentyp:</em> <code class="type">Zeichenkette</code></span>
            </span>
            <span class="sub-box">
                Enthält die URL zur <code>treeview/tree.css</code>-Datei für die Darstellung der
                Verzeichnisauswahl der Mediathek.
            </span>
        </span>

        <span class="tag-box invisible">
            <span class="inline-tag">Template-Variablen!\$media.css_front</span>
        </span>
        <span class="box"><code class="sub-item smarty">{$media.css_front}</code>
            <span class="sub-box">
                <span class="smarty-type"><em>Variablentyp:</em> <code class="type">Zeichenkette</code></span>
            </span>
            <span class="sub-box">
                Enthält die URL zur <code>style.css</code>-Datei für die Darstellung des Frontends.
            </span>
        </span>

        <span class="tag-box invisible">
            <span class="inline-tag">Template-Variablen!\$media.token_url</span>
        </span>
        <span class="box"><code class="sub-item smarty">{$media.token_url}</code>
            <span class="sub-box">
                <span class="smarty-type"><em>Variablentyp:</em> <code class="type">Zeichenkette</code></span>
            </span>
            <span class="sub-box">
                Enthält eine zufällige Zeichenkette, die ein Formular vor
                dem Fernsteuern durch unberechtigte Zugriffe schützt (siehe
                <code>XSRF</code> auf Seite <span class="pageref"><a href="#xsrf">xsrf</a></span>).
                Diese Zeichenkette muss als Teil einer URL (GET-Variablen) eingebunden werden.
            </span>
        </span>

        <span class="tag-box invisible">
            <span class="inline-tag">Template-Variablen!\$media.imgID</span>
        </span>
        <span class="box"><code class="sub-item smarty">{$media.imgId}</code>
            <span class="sub-box">
                <span class="smarty-type"><em>Variablentyp:</em> <code class="type">Zahl</code></span>
            </span>
            <span class="sub-box">
                Falls nur eine einzelne Datei in der Oberfläche der Mediathek angezeigt
                werden soll, enthält diese Variable die ID für dieses Objekt. Diese
                Variable entspricht der URL-GET-Variable
                <span class="tag-box invisible">
                    <span class="inline-tag">Serendipity-Variablen!\$serendipity['GET']['image']</span>
                </span>
                <code class="nobreak">$serendipity['GET']['image']</code>. Wurde eine Datei gerade hochgeladen,
                enthält diese Variable die neue ID dieser Datei in der Mediathek.
            </span>
        </span>

        <span class="tag-box invisible">
            <span class="inline-tag">Template-Variablen!\$media.from</span>
        </span>
        <span class="box"><code class="sub-item smarty">{$media.from}</code>
            <span class="sub-box">
                <span class="smarty-type"><em>Variablentyp:</em> <code class="type">Zeichenkette</code></span>
            </span>
            <span class="sub-box">
                Enthält den Wert der URL-GET-Variable
                <span class="inline-tag">Serendipity-Variablen!\$serendipity['GET']['from']</span>
                <code class="nobreak">$serendipity['GET']['from']</code>, der die Verweisquelle für
                ein Bild (<code class="item smarty">{$media.imgID}</code>) angibt, von der aus ein Bild eingebunden wurde.
            </span>
        </span>

        <span class="tag-box invisible">
            <span class="inline-tag">Template-Variablen!\$media.case</span>
        </span>
        <span class="box"><code class="sub-item smarty">{$media.case}</code>
            <span class="sub-box">
                <span class="smarty-type"><em>Variablentyp:</em> <code class="type">Zeichenkette</code></span>
            </span>
            <span class="sub-box">
                An einigen Stellen bindet das Popup-Fenster der
                Mediathek Inhalte des Backends ein, die sonst über andere Menüpunkte
                ereichbar sind. Diese werden extern eingebunden.
            </span>
            <span class="sub-box">
                Wenn ein Bild über das Mediathek-Popup-Fenster eingebunden wird, bestimmt
                der Benutzer über mehrere aufeinanderfolgende Schritte die Auswahl und
                Platzierung des Bildes. Die Ausgabe erfolgt jeweils innerhalb desselben
                Templates (<code>media_choose.tpl</code>). Um die Schritte voneinander unterscheiden zu
                können, enthält diese Template-Variable einen eindeutigen
                Identifikator. Dieser kann auch dann abgefragt werden, wenn das Popup-Fenster
                administrative Aktionen einbindet, die sonst eigentlich über andere Menüpunkte
                erreichbar sind (zB. <span class="mbold">Verzeichnisse verwalten</span>). Die Variable kann
                folgende Werte aufweisen:
            </span>
            <span class="sub-box mda-box">

                <code>external</code>
                <span class="sub-box">
                    bedeutet, dass Teile des Backends in der Mediathek
                    eingebunden werden. Diese HTML-Ausgaben werden in der Variable
                    <code class="item smarty">{$media.external}</code> gespeichert.
                </span>
                <code>choose</code>
                <span class="sub-box">
                    bedeutet, dass der Benutzer eine Datei ausgewählt hat und nun deren
                    Platzierung bestimmen möchte.
                </span>
                <code>tree</code>
                <span class="sub-box">
                    bedeutet, dass die Verzeichnisstruktur (bei der Darstellung des
                    linken Frames) ausgegeben wird.
                </span>
                <code>showitem</code>
                <span class="sub-box">
                    bedeutet, dass die Eigenschaften eines speziellen Bildes
                    dargestellt werden.
                </span>
                <code>start</code>
                <span class="sub-box">
                    bedeutet, dass die Frameset-Übersicht angezeigt wird.
                </span>
                <code>default</code>
                <span class="sub-box">
                    bedeutet, dass die Übersicht der Dateien der Mediathek
                    angezeigt wird.
                </span>

            </span><!-- inner sub-box mda-box $media.case switch end -->
        </span>

        <span class="tag-box invisible">
            <span class="inline-tag">Template-Variablen!\$media.external</span>
        </span>
        <span class="box"><code class="sub-item smarty">{$media.external}</code>
            <span class="sub-box">
                <span class="smarty-type"><em>Variablentyp:</em> <code class="type">Zeichenkette</code></span>
            </span>
            <span class="sub-box">
                Enthält etwaige HTML-Ausgaben von Teilen des Backends (Formular zum
                Datei-Upload, Verzeichnisse verwalten ...) zur Einbindung in das Popup der
                Mediathek.
            </span>
        </span>

        <span class="tag-box invisible">
            <span class="inline-tag">Template-Variablen!\$media.is_uploaded</span>
        </span>
        <span class="box"><code class="sub-item smarty">{$media.is_uploaded}</code>
            <span class="sub-box">
                <span class="smarty-type"><em>Variablentyp:</em> <code class="type">Boolean</code></span>
            </span>
            <span class="sub-box">
                Ist auf den Wert <code>true</code> gesetzt, wenn gerade eine Datei in die
                Mediathek hochgeladen wurde. Mittels dieser Variable können dann
                entsprechende Meldungen über den Erfolg oder das Fehlschlagen des Vorgangs
                ausgegeben werden.
            </span>
        </span>

        <span class="tag-box invisible">
            <span class="inline-tag">Template-Variablen!\$media.is_created</span>
        </span>
        <span class="box"><code class="sub-item smarty">{$media.is_created}</code>
            <span class="sub-box">
                <span class="smarty-type"><em>Variablentyp:</em> <code class="type">Boolean</code></span>
            </span>
            <span class="sub-box">
                Ist auf den Wert <code>true</code> gesetzt, wenn gerade ein Verzeichnis in der
                Mediathek erstellt wurde. Mittels dieser Variable können dann
                entsprechende Meldungen über den Erfolg oder das Fehlschlagen des Vorgangs
                ausgegeben werden.
            </span>
        </span>

        <span class="tag-box invisible">
            <span class="inline-tag">Template-Variablen!\$media.is_deleted</span>
        </span>
        <span class="box"><code class="sub-item smarty">{$media.is_deleted}</code>
            <span class="sub-box">
                <span class="smarty-type"><em>Variablentyp:</em> <code class="type">Boolean</code></span>
            </span>
            <span class="sub-box">
                Ist auf den Wert <code>true</code> gesetzt, wenn gerade ein Verzeichnis oder eine Datei
                in der Mediathek gelöscht wurde. Mittels dieser Variable können dann
                entsprechende Meldungen über den Erfolg oder das Fehlschlagen des Vorgangs
                ausgegeben werden.
            </span>
        </span>

        <span class="tag-box invisible">
            <span class="inline-tag">Template-Variablen!\$media.new_dir</span>
        </span>
        <span class="box"><code class="sub-item smarty">{$media.new_dir}</code>
            <span class="sub-box">
                <span class="smarty-type"><em>Variablentyp:</em> <code class="type">Zeichenkette</code></span>
            </span>
            <span class="sub-box">
                Falls ein neues Verzeichnis erstellt wurde, enthält diese Variable den Pfad zu
                diesem neuen Verzeichnis (siehe auch <code class="item smarty">{$media.is_created}</code>).
            </span>
        </span>

        <span class="label invisible" id="mediafile">mediafile</span>
        <span class="tag-box invisible">
            <span class="inline-tag">Template-Variablen!\$media.file</span>
        </span>
        <span class="box"><code class="sub-item smarty">{$media.file}</code>
            <span class="sub-box">
                <span class="smarty-type"><em>Variablentyp:</em> <code class="type">Mehrdimensionales Array</code></span>
            </span>
            <span class="sub-box">
                Enthält die Metadaten für eine gewählte Datei der Mediathek. Die
                Array-Schlüssel sind:
            </span>

            <span class="sub-box mda-box">

                <span class="tag-box invisible">
                    <span class="inline-tag">Template-Variablen!\$media.file.id</span>
                </span>
                <span class="box"><code class="sub-item smarty">{$media.file.id}</code>
                    <span class="sub-box">
                        <span class="smarty-type"><em>Variablentyp:</em> <code class="type">Zahl</code></span>
                    </span>
                    <span class="sub-box">
                        Enthält die ID des Mediathek-Objekts.
                    </span>
                </span>

                <span class="tag-box invisible">
                    <span class="inline-tag">Template-Variablen!\$media.file.name</span>
                </span>
                <span class="box"><code class="sub-item smarty">{$media.file.name}</code>
                    <span class="sub-box">
                        <span class="smarty-type"><em>Variablentyp:</em> <code class="type">Zeichenkette</code></span>
                    </span>
                    <span class="sub-box">
                        Enthält den Dateinamen des Mediathek-Objekts (ohne Datei-Endung).
                    </span>
                </span>

                <span class="tag-box invisible">
                    <span class="inline-tag">Template-Variablen!\$media.file.extension</span>
                </span>
                <span class="box"><code class="sub-item smarty">{$media.file.extension}</code>
                    <span class="sub-box">
                        <span class="smarty-type"><em>Variablentyp:</em> <code class="type">Zeichenkette</code></span>
                    </span>
                    <span class="sub-box">
                        Enthält die Datei-Endung des Mediathek-Objekts.
                    </span>
                </span>

                <span class="tag-box invisible">
                    <span class="inline-tag">Template-Variablen!\$media.file.mime</span>
                </span>
                <span class="box"><code class="sub-item smarty">{$media.file.mime}</code>
                    <span class="sub-box">
                        <span class="smarty-type"><em>Variablentyp:</em> <code class="type">Zeichenkette</code></span>
                    </span>
                    <span class="tag-box invisible">
                        <span class="inline-tag">MIME</span>
                    </span>
                    <span class="sub-box">
                        Enthält den MIME [*]
                        <span class="footnote"><i class="fa fa-info-circle"></i> <em>Multipurpose Internet Mail
                        Extensions</em> sind eine standardisierte Spezifikation von Datentypen und geben an, ob ein Objekt ein
                        Bild, eine Videodatei oder anderes darstellt. Ein MIME-Type besteht aus einem
                        Basistypen, gefolgt von einem Schrägstrich und dann einem Detailwert.
                        <code>image/jpeg</code> wird beispielsweise für JPEG-Grafiken verwendet.</span><!-- footnote -->-Typ eines
                        Mediathek-Objekts.
                    </span>
                </span>

                <span class="tag-box invisible">
                    <span class="inline-tag">Template-Variablen!\$media.file.size</span>
                </span>
                <span class="box"><code class="sub-item smarty">{$media.file.size}</code>
                    <span class="sub-box">
                        <span class="smarty-type"><em>Variablentyp:</em> <code class="type">Zahl</code></span>
                    </span>
                    <span class="sub-box">
                        Enthält die Dateigröße (in Bytes) des Mediathek-Objekts.
                    </span>
                </span>

                <span class="tag-box invisible">
                    <span class="inline-tag">Template-Variablen!\$media.file.dimensions_width</span>
                    <span class="inline-tag">Template-Variablen!\$media.file.dimensions_height</span>
                </span>
                <span class="box"><code class="sub-item smarty">{$media.file.dimensions_width}, {$media.file.dimensions_height}</code>
                    <span class="sub-box">
                        <span class="smarty-type"><em>Variablentyp:</em> <code class="type">Zahl</code></span>
                    </span>
                    <span class="sub-box">
                        Falls das Mediathek-Objekt eine Grafik ist, enthalten diese Variablen die
                        Breite und Höhe (in Pixeln). Bei anderen Dateitypen (Dokumente, Videos)
                        enthalten diese Variablen den Wert 0.
                    </span>
                </span>

                <span class="tag-box invisible">
                    <span class="inline-tag">Template-Variablen!\$media.file.thumbWidth</span>
                    <span class="inline-tag">Template-Variablen!\$media.file.thumbHeight</span>
                </span>
                <span class="box"><code class="sub-item smarty">{$media.file.thumbWidth}, {$media.file.thumbHeight}</code>
                    <span class="sub-box">
                        <span class="smarty-type"><em>Variablentyp:</em> <code class="type">Zahl</code></span>
                    </span>
                    <span class="sub-box">
                        Enthält die Breite und Höhe der Vorschaugrafik.
                    </span>
                </span>

                <span class="tag-box invisible">
                    <span class="inline-tag">Template-Variablen!\$media.file.date</span>
                </span>
                <span class="box"><code class="sub-item smarty">{$media.file.date}</code>
                    <span class="sub-box">
                        <span class="smarty-type"><em>Variablentyp:</em> <code class="type">Zahl</code></span>
                    </span>
                    <span class="sub-box">
                        Enthält Hochladedatum eines Mediathek-Objekts (in Unix-Sekunden).
                    </span>
                </span>

                <span class="tag-box invisible">
                    <span class="inline-tag">Template-Variablen!\$media.file.thumbnail_name</span>
                </span>
                <span class="box"><code class="sub-item smarty">{$media.file.thumbnail_name}</code>
                    <span class="sub-box">
                        <span class="smarty-type"><em>Variablentyp:</em> <code class="type">Zeichenkette</code></span>
                    </span>
                    <span class="sub-box">
                        Wurde ein Vorschaubild (<em>Thumbnail</em>) für ein Mediathek-Objekt
                        erstellt, enthält diese Variable das Suffix für diese Dateien,
                        standardmäßig <code>serendipityThumb</code>. Dieses Suffix wird nach dem Dateinamen,
                        aber vor der Datei-Endung platziert, so dass eine Vorschaudatei dem Schema
                        <code>Bild.serendipityThumb.jpg</code> entspricht. Das Suffix kann vom Administrator
                        des Blogs frei vergeben werden (siehe Seite <span class="pageref"><a href="#vorschaubildendung">Vorschaubildendung</a></span>).
                    </span>
                </span>

                <span class="tag-box invisible">
                    <span class="inline-tag">Template-Variablen!\$media.file.authorid</span>
                </span>
                <span class="box"><code class="sub-item smarty">{$media.file.authorid}</code>
                    <span class="sub-box">
                        <span class="smarty-type"><em>Variablentyp:</em> <code class="type">Zahl</code></span>
                    </span>
                    <span class="sub-box">
                        Enthält die ID des Autors, der die Datei hochgeladen hat. Wenn eine Datei für
                        alle Redakteure zugänglich sein soll, enthält diese ID den Wert <code>0</code>.
                    </span>
                </span>

                <span class="tag-box invisible">
                    <span class="inline-tag">Template-Variablen!\$media.file.path</span>
                </span>
                <span class="box"><code class="sub-item smarty">{$media.file.path}</code>
                    <span class="sub-box">
                        <span class="smarty-type"><em>Variablentyp:</em> <code class="type">Zeichenkette</code></span>
                    </span>
                    <span class="sub-box">
                        Enthält den Namen des Verzeichnisses (relativ zum Stammverzeichnis der
                        Mediathek), in dem das Objekt gespeichert wurde.
                    </span>
                </span>

                <span class="tag-box invisible">
                    <span class="inline-tag">Template-Variablen!\$media.file.realfile</span>
                </span>
                <span class="box"><code class="sub-item smarty">{$media.file.realfile}</code>
                    <span class="sub-box">
                        <span class="smarty-type"><em>Variablentyp:</em> <code class="type">Zeichenkette</code></span>
                    </span>
                    <span class="sub-box">
                        Enthält den vollständigen Pfad einer Datei der Mediathek, wo sie auf dem
                        Server abgelegt wurde.
                    </span>
                </span>

                <span class="tag-box invisible">
                    <span class="inline-tag">Template-Variablen!\$media.file.hotlink</span>
                </span>
                <span class="box"><code class="sub-item smarty">{$media.file.hotlink}</code>
                    <span class="sub-box">
                        <span class="smarty-type"><em>Variablentyp:</em> <code class="type">Zeichenkette</code></span>
                    </span>
                    <span class="sub-box">
                        Wenn ein Objekt der Mediathek nicht lokal gespeichert wurde, sondern von
                        einem fremden Server geladen werden soll (<code>hotlinking</code>), enthält diese
                        Variable die URL, unter der die Datei verfügbar ist.
                    </span>
                </span>

                <span class="tag-box invisible">
                    <span class="inline-tag">Template-Variablen!\$media.file.realname</span>
                </span>
                <span class="box"><code class="sub-item smarty">{$media.file.realname}</code>
                    <span class="sub-box">
                        <span class="smarty-type"><em>Variablentyp:</em> <code class="type">Zeichenkette</code></span>
                    </span>
                    <span class="sub-box">
                        Enthält den vollständigen Dateinamen, wie die Datei ursprünglich hochgeladen
                        wurde. Da im Falle doppelter Dateinamen der Name auf dem Server automatisch
                        durchnummeriert wird, kann mittels <code class="item smarty">{$media.file.realname}</code>
                        dennoch der ursprüngliche Dateiname ausgelesen werden.
                    </span>
                </span>

                <span class="tag-box invisible">
                    <span class="inline-tag">Template-Variablen!\$media.file.full_thumb</span>
                </span>
                <span class="box"><code class="sub-item smarty">{$media.file.full_thumb}</code>
                    <span class="sub-box">
                        <span class="smarty-type"><em>Variablentyp:</em> <code class="type">Zeichenkette</code></span>
                    </span>
                    <span class="sub-box">
                        Enthält den vollständigen Pfad im Dateisystem zum Vorschaubild eines
                        Mediathek-Objekts.
                    </span>
                </span>

                <span class="tag-box invisible">
                    <span class="inline-tag">Template-Variablen!\$media.file.full_thumbHTTP</span>
                    <span class="inline-tag">Template-Variablen!\$media.file.show_thumb</span>
                </span>
                <span class="box"><code class="sub-item smarty">{$media.file.full_thumbHTTP}, {$media.file.show_thumb}</code>
                    <span class="sub-box">
                        <span class="smarty-type"><em>Variablentyp:</em> <code class="type">Zeichenkette</code></span>
                    </span>
                    <span class="sub-box">
                        Enthält den vollständigen Pfad zum Vorschaubild eines
                        Mediathek-Objekts, über den das Bild mittels HTTP-URL aufgerufen werden kann.
                    </span>
                </span>

                <span class="tag-box invisible">
                    <span class="inline-tag">Template-Variablen!\$media.file.imgsrc</span>
                </span>
                <span class="box"><code class="sub-item smarty">{$media.file.imgsrc}</code>
                    <span class="sub-box">
                        <span class="smarty-type"><em>Variablentyp:</em> <code class="type">Zeichenkette</code></span>
                    </span>
                    <span class="sub-box">
                        Enthält den relativen Pfad (ab Serendipity-Stammverzeichnis) zum
                        Vorschaubild eines Mediathek-Objekts, über den das Bild mittels HTTP-URL
                        aufgerufen werden kann.
                    </span>
                </span>

                <span class="tag-box invisible">
                    <span class="inline-tag">Template-Variablen!\$media.file.full_file</span>
                </span>
                <span class="box"><code class="sub-item smarty">{$media.file.full_file}</code>
                    <span class="sub-box">
                        <span class="smarty-type"><em>Variablentyp:</em> <code class="type">Zeichenkette</code></span>
                    </span>
                    <span class="sub-box">
                        Enthält den vollständigen HTTP-Pfad zum Objekt der Mediathek.
                    </span>
                </span>

                <span class="tag-box invisible">
                    <span class="inline-tag">Template-Variablen!\$media.file.diskname</span>
                </span>
                <span class="box"><code class="sub-item smarty">{$media.file.diskname}</code>
                    <span class="sub-box">
                        <span class="smarty-type"><em>Variablentyp:</em> <code class="type">Zeichenkette</code></span>
                    </span>
                    <span class="sub-box">
                        Enthält den vollen Dateinamen eines Objekts der Mediathek, zusammengesetzt
                        aus <code class="item smarty">{$media.file.name}</code> und <code class="item smarty">{$media.file.extension}</code>.
                    </span>
                </span>

                <span class="tag-box invisible">
                    <span class="inline-tag">Template-Variablen!\$media.file.links</span>
                </span>
                <span class="box"><code class="sub-item smarty">{$media.file.links}</code>
                    <span class="sub-box">
                        <span class="smarty-type"><em>Variablentyp:</em> <code class="type">Eindimensionales Array</code></span>
                    </span>
                    <span class="sub-box">
                        Enthält ein Array mit URLs, von denen auf das Objekt der Mediathek
                        verwiesen wurde. Diese Linkliste kann nur dann automatisch ausgewertet werden,
                        wenn die Objekte der Mediathek mittels spezieller Methode ausgeliefert
                        werden (siehe Seite <span class="pageref"><a href="#mdb-profi">mdb-profi</a></span>).
                    </span>
                </span>

                <span class="tag-box invisible">
                    <span class="inline-tag">Template-Variablen!\$media.file.dim</span>
                </span>
                <span class="box"><code class="sub-item smarty">{$media.file.dim}</code>
                    <span class="sub-box">
                        <span class="smarty-type"><em>Variablentyp:</em> <code class="type">Eindimensionales Array</code></span>
                    </span>
                    <span class="sub-box">
                        Enthält ein Array mit Metadaten des Vorschaubildes. Das Array wird mittels der
                        PHP-Funktion <code>getimagesize</code> [*]
                        <span class="footnote"><i class="fa fa-info-circle"></i> <a href="https://www.php.net/getimagesize" target="_blank" rel="noopener">https://www.php.net/getimagesize</a></span><!-- footnote --> erstellt.
                    </span>
                </span>

                <span class="tag-box invisible">
                    <span class="inline-tag">Template-Variablen!\$media.file.is_image</span>
                </span>
                <span class="box"><code class="sub-item smarty">{$media.file.is_image}</code>
                    <span class="sub-box">
                        <span class="smarty-type"><em>Variablentyp:</em> <code class="type">Boolean</code></span>
                    </span>
                    <span class="sub-box">
                        Enthält den Wert <code>true</code>, wenn ein Objekt der Mediathek eine Bilddatei
                        ist. Bei Dokumenten und anderen Dateitypen enthält diese Variable den Wert <code>false</code>.
                    </span>
                </span>

                <span class="tag-box invisible">
                    <span class="inline-tag">Template-Variablen!\$media.file.mediatype</span>
                </span>
                <span class="box"><code class="sub-item smarty">{$media.file.mediatype}</code>
                    <span class="sub-box">
                        <span class="smarty-type"><em>Variablentyp:</em> <code class="type">Zeichenkette</code></span>
                    </span>
                    <span class="sub-box">
                        Enthält den genauen Typ eines Objektes der Mediathek: <code>image</code>, <code>video</code>,
                        <code>audio</code>, <code>document</code>, <code>archive</code> (gepackte Dateiarchive) oder
                        <code>binary</code> (alle anderen Dateien).
                    </span>
                </span>

                <span class="tag-box invisible">
                    <span class="inline-tag">Template-Variablen!\$media.file.is_editable</span>
                </span>
                <span class="box"><code class="sub-item smarty">{$media.file.is_editable}</code>
                    <span class="sub-box">
                        <span class="smarty-type"><em>Variablentyp:</em> <code class="type">Boolean</code></span>
                    </span>
                    <span class="sub-box">
                        Falls der aktuelle Redakteur das Objekt der Mediathek bearbeiten oder
                        löschen darf (aufgrund seiner Benutzerrechte), enthält diese Variable den Wert <code>true</code>.
                    </span>
                </span>

                <span class="tag-box invisible">
                    <span class="inline-tag">Template-Variablen!\$media.file.preview_url</span>
                </span>
                <span class="box"><code class="sub-item smarty">{$media.file.preview_url}</code>
                    <span class="sub-box">
                        <span class="smarty-type"><em>Variablentyp:</em> <code class="type">Zeichenkette</code></span>
                    </span>
                    <span class="sub-box">
                        Enthält die URL, mit der das Bild mittels der Funktionen der Mediathek
                        dargestellt werden kann.
                    </span>
                </span>

                <span class="tag-box invisible">
                    <span class="inline-tag">Template-Variablen!\$media.file.preview</span>
                </span>
                <span class="box"><code class="sub-item smarty">{$media.file.preview}</code>
                    <span class="sub-box">
                        <span class="smarty-type"><em>Variablentyp:</em> <code class="type">Zeichenkette</code></span>
                    </span>
                    <span class="sub-box">
                        Enthält ein HTML <code>&lt;img&gt;</code>-Tag, das die Vorschaugrafik darstellt und ggf.
                        einen Link (<code>&lt;a href</code>) zur Originalversion der Datei (als Popup-Fenster)
                        einbindet.
                    </span>
                </span>

                <span class="tag-box invisible">
                    <span class="inline-tag">Template-Variablen!\$media.file.popupWidth</span>
                    <span class="inline-tag">Template-Variablen!\$media.file.popupHeight</span>
                </span>
                <span class="box"><code class="sub-item smarty">{$media.file.popupWidth}, {$media.file.popupHeight}</code>
                    <span class="sub-box">
                        <span class="smarty-type"><em>Variablentyp:</em> <code class="type">Zahl</code></span>
                    </span>
                    <span class="sub-box">
                        Enthält die Breite und Höhe für ein Popup-Fenster, in dem die Originalversion
                        der Datei per Klick auf das Vorschaubild geöffnet wird.
                    </span>
                </span>

                <span class="tag-box invisible">
                    <span class="inline-tag">Template-Variablen!\$media.file.nice_size</span>
                </span>
                <span class="box"><code class="sub-item smarty">{$media.file.nice_size}</code>
                    <span class="sub-box">
                        <span class="smarty-type"><em>Variablentyp:</em> <code class="type">Zeichenkette</code></span>
                    </span>
                    <span class="sub-box">
                        Enthält die Dateigröße als auf zwei Nachkommastellen gerundeten Kilobyte-Wert.
                    </span>
                </span>

                <span class="tag-box invisible">
                    <span class="inline-tag">Template-Variablen!\$media.file.finishJSFunction</span>
                </span>
                <span class="box"><code class="sub-item smarty">{$media.file.finishJSFunction}</code>
                    <span class="sub-box">
                        <span class="smarty-type"><em>Variablentyp:</em> <code class="type">Zeichenkette</code></span>
                    </span>
                    <span class="sub-box">
                        Wenn ein Objekt der Mediathek vom Benutzer zum Einfügen in einen Artikel
                        ausgewählt wird, können externe Plugins die Darstellung des Dialogs zum
                        Einfügen verändern. Am Ende wird der zusammengestellte HTML-Code für die
                        Einbindung in den Artikel zurückgeliefert und über die
                        JS-Funktion <code>serendipity_imageSelector_done()</code> ausgewertet.
                        Wenn ein Plugin stattdessen ein eigenes JavaScript verwenden will, muss der Name
                        dieser JavaScript-Funktion in der Variable
                        <code class="item smarty">{$media.file.finishJSFunction}</code> hinterlegt werden und wird dort später
                        über die Smarty-Template-Datei <code>media_choose.tpl</code> aufgerufen.
                    </span>
                </span>

                <span class="tag-box invisible">
                    <span class="inline-tag">Template-Variablen!\$media.file.origfinishJSFunction</span>
                </span>
                <span class="box"><code class="sub-item smarty">{$media.file.origfinishJSFunction}</code>
                    <span class="sub-box">
                        <span class="smarty-type"><em>Variablentyp:</em> <code class="type">Zeichenkette</code></span>
                    </span>
                    <span class="sub-box">
                        Diese Variable enthält den ursprünglichen JavaScript-Funktionsaufruf für die
                        Einbindung eines Objekts der Mediathek (siehe vorige Variable).
                    </span>
                </span>

                <span class="tag-box invisible">
                    <span class="inline-tag">Template-Variablen!\$media.file.fast_select</span>
                </span>
                <span class="box"><code class="sub-item smarty">{$media.file.fast_select}</code>
                    <span class="sub-box">
                        <span class="smarty-type"><em>Variablentyp:</em> <code class="type">Boolean</code></span>
                    </span>
                    <span class="sub-box">
                        Falls ein Redakteur ein Objekt der Mediathek, das keine Grafik
                        darstellt, zum Einfügen in einen Artikel auswählt, kann ein vollständiger Link
                        zu dieser Datei ohne weitere Positionierungsdialoge zurückgeliefert werden. Die
                        Template-Datei <code>media_choose.tpl</code> kann in einem solchen Fall einige
                        Funktionsaufrufe übergehen. Dies geschieht über die Variable
                        <code class="item smarty">{$media.file.fast_select}</code>, die den Wert <code>true</code> enthält, wenn keine
                        Grafikdatei gewählt wurde.
                    </span>
                </span>

                <span class="tag-box invisible">
                    <span class="inline-tag">Template-Variablen!\$media.file.props</span>
                </span>
                <span class="box"><code class="sub-item smarty">{$media.file.props}</code>
                    <span class="sub-box">
                        <span class="smarty-type"><em>Variablentyp:</em> <code class="type">Mehrdimensionales Array</code></span>
                    </span>
                    <span class="sub-box">
                        Dieses Array enthält die Meta-Eigenschaften einer Datei, wie sie vom Benutzer
                        frei vergeben werden können (Schlüsselwörter, Beschreibungen, EXIF-Daten
                        ...). Das Array ist in vier Hauptschlüssel untergliedert:
                    </span>
                    <span class="sub-box mda-box">

                        <span class="tag-box invisible">
                            <span class="inline-tag">Template-Variablen!\$media.file.props.base_property</span>
                        </span>
                        <code class="sub-item smarty">{$media.file.props.base_property}</code>
                        <span class="desc-info">
                            <span class="box">
                                <span class="smarty-type"><em>Variablentyp:</em> <code class="type">Eindimensionales Array</code></span>
                            </span>
                            <span class="box">
                                Enthält die vom Benutzer zugewiesenen freien Eigenschaften für Objekte (siehe
                                Seite <span class="pageref"><a href="#entryproperties">entryproperties</a></span>).
                                Der jeweilige Schlüssel des Unter-Arrays entspricht dem Namen der
                                Eigenschaft (<code>DPI</code>, <code>COPYRIGHT</code> ...), der Wert enthält die
                                Eingabe des Benutzers.
                            </span>
                        </span>

                        <span class="tag-box invisible">
                            <span class="inline-tag">Template-Variablen!\$media.file.props.base_hidden</span>
                        </span>
                        <code class="sub-item smarty">{$media.file.props.base_hidden}</code>
                        <span class="desc-info">
                            <span class="box">
                                <span class="smarty-type"><em>Variablentyp:</em> <code class="type">Eindimensionales Array</code></span>
                            </span>
                            <span class="box">
                                Enthält interne Wertezuweisungen.
                                <code class="item smarty">{$media.file.props.base_hidden.author}</code> enthält den Namen des Autors
                                für das jeweilige Objekt der Mediathek und
                                <code class="item smarty">{$media.file.props.base_hidden.authorid}</code> die ID dieses Autors.
                            </span>
                        </span>

                        <span class="tag-box invisible">
                            <span class="inline-tag">Template-Variablen!\$media.file.props.base_keyword</span>
                        </span>
                        <code class="sub-item smarty">{$media.file.props.base_keyword}</code>
                        <span class="desc-info">
                            <span class="box">
                                <span class="smarty-type"><em>Variablentyp:</em> <code class="type">Eindimensionales Array</code></span>
                            </span>
                            <span class="box">
                                Enthält die vom Benutzer zugewiesenen Schlüsselwörter zu einem Objekt der
                                Mediathek (siehe Seite <span class="pageref"><a href="#medien-schluesselwoerter">Medien-Schluesselwörter</a></span>).
                                Der Array-Schlüssel entspricht dem gesetzten Schlüsselwort, als Wert
                                wird immer <code>1</code> vergeben.
                            </span>
                        </span>

                        <span class="tag-box invisible">
                            <span class="inline-tag">Template-Variablen!\$media.file.props.base_metadata</span>
                        </span>
                        <code class="sub-item smarty">{$media.file.props.base_metadata}</code>
                        <span class="desc-info">
                            <span class="box">
                                <span class="smarty-type"><em>Variablentyp:</em> <code class="type">Eindimensionales Array</code></span>
                            </span>
                            <span class="box">
                                Enthält etwaige EXIF- oder MP3-Metadaten. Der Name des Array-Schlüssels
                                entspricht dem Metadaten-Schlüssel und der Wert dem jeweiligen Inhalt.
                            </span>
                        </span>

                    </span><!--inner sub-box mda-box $media.file.props end -->
                </span>

            </span><!-- inner sub-box mda-box $media.file array end -->

        </span>

        <span class="tag-box invisible">
            <span class="inline-tag">Template-Variablen!\$media.perm_denied</span>
        </span>
        <span class="box"><code class="sub-item smarty">{$media.perm_denied}</code>
            <span class="sub-box">
                <span class="smarty-type"><em>Variablentyp:</em> <code class="type">Boolean</code></span>
            </span>
            <span class="sub-box">
                Ist auf den Wert <code>true</code> gesetzt, wenn ein Benutzer für eine gewählte Aktion
                keine ausreichenden Zugriffsrechte hat.
            </span>
        </span>

        <span class="tag-box invisible">
            <span class="inline-tag">Template-Variablen!\$media.paths</span>
        </span>
        <span class="box"><code class="sub-item smarty">{$media.paths}</code>
            <span class="sub-box">
                <span class="smarty-type"><em>Variablentyp:</em> <code class="type">Mehrdimensionales Array</code></span>
            </span>
            <span class="sub-box">
                Enthält ein Array aller eingerichteten Verzeichnisse der Mediathek. Die
                verfügbaren Array-Schlüssel sind identisch mit den auf Seite
                <span class="pageref"><a href="#mediafolders">mediafolders</a></span> aufgeführten.
            </span>
        </span>

    </span><!-- box mda-box $media array in scope: media_choose.tpl, media_showitem.tpl end -->

</span>
</p>

<p class="desc citem-desc">
<span class="tag-box invisible">
    <span class="inline-tag">Template-Variablen!\$MEDIA_LIST</span>
</span>
<code class="item smarty">{$MEDIA_LIST}</code>
<span class="desc-info">
    <span class="box">
        <span class="smarty-type"><em>Variablentyp:</em> <code class="type">Zeichenkette</code></span>
        <span class="smarty-scope"><em>Verfügbar in:</em> <code class="file">media_choose.tpl, media_showitem.tpl</code></span>
    </span>

    <span class="box">
        Enthält die Dateiübersicht als HTML-Ausgabe, die anhand der Template-Datei
        <code>media_items.tpl</code> geparst wurde.
    </span>
</span>
</p>

</article>

<article id="XU" class="subsub">

<header>
    <h4 class="subarticle" id="commentpopup-tpl-comments-tpl-trackbacks-tpl">commentpopup.tpl, comments.tpl, trackbacks.tpl</h4>
</header>

<p class="tagging invisible">
<span class="label invisible" id="commenttemplates">commenttemplates</span>
<span class="tag-box invisible">
    <span class="inline-tag">Template-Dateien!commentpopup.tpl</span>
    <span class="inline-tag">Template-Dateien!comments.tpl</span>
    <span class="inline-tag">Template-Dateien!trackbacks.tpl</span>
</span>
</p>

<p>Die Template-Datei <code>commentpopup.tpl</code> wird zur Ausgabe von Kommentaren zu
einem Blog-Artikel verwendet. Die Kommentare und Trackbacks selbst werden über
die Template-Dateien <code>comments.tpl</code> und <code>trackbacks.tpl</code> eingebunden, die
auch für die Einbindung von Kommentaren innerhalb der Detailansicht eines
Blog-Artikels herangezogen werden.</p>

<p class="desc citem-desc">
<code class="item smarty">{$entry_id}</code>
<span class="desc-info">
    <span class="box">
        <span class="smarty-type"><em>Variablentyp:</em> <code class="type">Zahl</code></span>
        <span class="smarty-scope"><em>Verfügbar in:</em> <code class="file">commentpopup.tpl</code></span>
        <span class="smarty-doc"><em>Zugewiesen in:</em> <code class="file">comment.php</code></span>
    </span>

    <span class="box">
        Enthält die ID des Blog-Artikels, zu dem die Kommentare eingebunden werden.
    </span>
</span>
</p>

<p class="desc citem-desc">
<code class="item smarty">{$comment_url}</code>
<span class="desc-info">
    <span class="box">
        <span class="smarty-type"><em>Variablentyp:</em> <code class="type">Zeichenkette</code></span>
        <span class="smarty-scope"><em>Verfügbar in:</em> <code class="file">commentpopup.tpl</code></span>
        <span class="smarty-doc"><em>Zugewiesen in:</em> <code class="file">comment.php</code></span>
    </span>

    <span class="box">
        Enthält die URL der aktuellen Seite, die für das Ziel von Formularen oder Links
        eingesetzt werden kann.
    </span>
</span>
</p>

<p class="desc citem-desc">
<code class="item smarty">{$comment_string}</code>
<span class="desc-info">
    <span class="box">
        <span class="smarty-type"><em>Variablentyp:</em> <code class="type">Eindimensionales Array</code></span>
        <span class="smarty-scope"><em>Verfügbar in:</em> <code class="file">commentpopup.tpl</code></span>
        <span class="smarty-doc"><em>Zugewiesen in:</em> <code class="file">comment.php</code></span>
    </span>

    <span class="box">
        Enthält ein Array mit Wortstücken. Dieses enthält Platzhalter, so dass die
        später notwendigen Variablen dazwischen eingebunden werden können. Die
        Wortstücke enthalten je nach Aktion des Besuchers entweder einen Hinweis zum
        erfolgreichen Kommentieren oder Fehlermeldungen.
    </span>
</span>
</p>

<p class="desc citem-desc">
<code class="item smarty">{$comment_entryurl}</code>
<span class="desc-info">
    <span class="box">
        <span class="smarty-type"><em>Variablentyp:</em> <code class="type">Zeichenkette</code></span>
        <span class="smarty-scope"><em>Verfügbar in:</em> <code class="file">commentpopup.tpl</code></span>
        <span class="smarty-doc"><em>Zugewiesen in:</em> <code class="file">comment.php</code></span>
    </span>

    <span class="box">
        Enthält den Permalink zum Blog-Artikel, dessen Kommentare/Trackbacks angesehen werden.
    </span>
</span>
</p>

<p class="desc citem-desc">
<code class="item smarty">{$is_comment_added}</code>
<span class="desc-info">
    <span class="box">
        <span class="smarty-type"><em>Variablentyp:</em> <code class="type">Boolean</code></span>
        <span class="smarty-scope"><em>Verfügbar in:</em> <code class="file">commentpopup.tpl</code></span>
        <span class="smarty-doc"><em>Zugewiesen in:</em> <code class="file">comment.php</code></span>
    </span>

    <span class="box">
        Enthält den Wert <code>true</code>, wenn ein Kommentar hinzugefügt wurde.
    </span>
</span>
</p>

<p class="desc citem-desc">
<code class="item smarty">{$is_showtrackbacks}</code>
<span class="desc-info">
    <span class="box">
        <span class="smarty-type"><em>Variablentyp:</em> <code class="type">Boolean</code></span>
        <span class="smarty-scope"><em>Verfügbar in:</em> <code class="file">commentpopup.tpl</code></span>
        <span class="smarty-doc"><em>Zugewiesen in:</em> <code class="file">comment.php</code></span>
    </span>

    <span class="box">
        Enthält den Wert <code>true</code>, wenn innerhalb des Popup-Fensters Trackbacks
        angezeigt werden.
    </span>
</span>
</p>

<p class="desc citem-desc">
<code class="item smarty">{$is_showcomments}</code>
<span class="desc-info">
    <span class="box">
        <span class="smarty-type"><em>Variablentyp:</em> <code class="type">Boolean</code></span>
        <span class="smarty-scope"><em>Verfügbar in:</em> <code class="file">commentpopup.tpl</code></span>
        <span class="smarty-doc"><em>Zugewiesen in:</em> <code class="file">comment.php</code></span>
    </span>

    <span class="box">
        Enthält den Wert <code>true</code>, wenn innerhalb des Popup-Fensters Kommentare
        angezeigt werden.
    </span>
</span>
</p>

<p class="desc citem-desc">
<code class="item smarty">{$is_comment_allowed}</code>
<span class="desc-info">
    <span class="box">
        <span class="smarty-type"><em>Variablentyp:</em> <code class="type">Boolean</code></span>
        <span class="smarty-scope"><em>Verfügbar in:</em> <code class="file">commentpopup.tpl</code></span>
        <span class="smarty-doc"><em>Zugewiesen in:</em> <code class="file">comment.php</code></span>
    </span>

    <span class="box">
        Enthält den Wert <code>true</code>, wenn Kommentare zum jeweiligen Blog-Artikel
        zugelassen werden.
    </span>
</span>
</p>

<p class="desc citem-desc">
<code class="item smarty">{$is_comment_notadded}</code>
<span class="desc-info">
    <span class="box">
        <span class="smarty-type"><em>Variablentyp:</em> <code class="type">Boolean</code></span>
        <span class="smarty-scope"><em>Verfügbar in:</em> <code class="file">commentpopup.tpl</code></span>
        <span class="smarty-doc"><em>Zugewiesen in:</em> <code class="file">comment.php</code></span>
    </span>

    <span class="box">
        Enthält den Wert <code>true</code>, wenn ein Kommentar nicht hinzugefügt werden konnte.
    </span>
</span>
</p>

<p class="desc citem-desc">
<code class="item smarty">{$is_comment_empty}</code>
<span class="desc-info">
    <span class="box">
        <span class="smarty-type"><em>Variablentyp:</em> <code class="type">Boolean</code></span>
        <span class="smarty-scope"><em>Verfügbar in:</em> <code class="file">commentpopup.tpl</code></span>
        <span class="smarty-doc"><em>Zugewiesen in:</em> <code class="file">comment.php</code></span>
    </span>

    <span class="box">
        Enthält den Wert <code>true</code>, wenn ein Kommentar keinen Inhalt enthielt und
        daher nicht hinzugefügt werden konnte.
    </span>
</span>
</p>

<p class="desc citem-desc">
<code class="item smarty">{$COMMENTFORM}</code>
<span class="desc-info">
    <span class="box">
        <span class="smarty-type"><em>Variablentyp:</em> <code class="type">Zeichenkette</code></span>
        <span class="smarty-scope"><em>Verfügbar in:</em> <code class="file">commentpopup.tpl</code></span>
        <span class="smarty-doc"><em>Zugewiesen in:</em> <code class="file">include/functions_comments.inc.php</code>, <code class="function">serendipity_displayCommentForm()</code></span>
    </span>

    <span class="box">
        Enthält den geparsten HTML-Inhalt der Datei <code>commentform.tpl</code> zur
        Darstellung eines Kommentarformulars.
    </span>
</span>
</p>

<p class="desc citem-desc">
<code class="item smarty">{$comments}</code>
<span class="desc-info">
    <span class="box">
        <span class="smarty-type"><em>Variablentyp:</em> <code class="type">Mehrdimensionales Array</code></span>
        <span class="smarty-scope"><em>Verfügbar in:</em> <code class="file">comments.tpl</code></span>
        <span class="smarty-doc"><em>Zugewiesen in:</em> <code class="file">include/functions_comments.inc.php</code>, <code class="function">serendipity_printComments()</code></span>
    </span>

    <span class="box">
        Das Array <code class="smarty">{$comments}</code> enthält die Liste der Kommentare zu einem
        Blog-Artikel und wird mittels der
        <code class="item smarty">{$serendipity_printComments}</code>-Smarty-Funktion innerhalb der
        <code>entries.tpl</code>-Template-Datei eingebunden.
    </span>

    <span class="label invisible" id="template-comments">template-comments</span>

    <span class="box mda-box">

        <span class="box"><code class="sub-item smarty">{$comments.X.comment}</code>
            <span class="sub-box">
                <span class="smarty-type"><em>Variablentyp:</em> <code class="type">Zeichenkette</code></span>
            </span>
            <span class="sub-box">
                Enthält den Kommentartext. HTML-Tags werden entfernt und etwaige Sonderzeichen
                zur Sicherheit maskiert.
            </span>
        </span>

        <span class="box"><code class="sub-item smarty">{$comments.X.body}</code>
            <span class="sub-box">
                <span class="smarty-type"><em>Variablentyp:</em> <code class="type">Zeichenkette</code></span>
            </span>
            <span class="sub-box">
                Enthält den ursprünglichen, unveränderten Kommentartext, wie er eingegeben wurde.
                HTML-Tags und etwaige Sonderzeichen sind nach wie vor enthalten.
            </span>
        </span>

        <span class="box"><code class="sub-item smarty">{$comments.X.url}</code>
            <span class="sub-box">
                <span class="smarty-type"><em>Variablentyp:</em> <code class="type">Zeichenkette</code></span>
            </span>
            <span class="sub-box">
                Enthält die Homepage des Kommentators.
            </span>
        </span>

        <span class="box"><code class="sub-item smarty">{$comments.X.link_delete}</code>
            <span class="sub-box">
                <span class="smarty-type"><em>Variablentyp:</em> <code class="type">Zeichenkette</code></span>
            </span>
            <span class="sub-box">
                Enthält eine URL, mit der Blog-Redakteure (die entsprechenden Rechte
                vorausgesetzt) einen Kommentar löschen können.
            </span>
        </span>

        <span class="box"><code class="sub-item smarty">{$comments.X.no_email}</code>
            <span class="sub-box">
                <span class="smarty-type"><em>Variablentyp:</em> <code class="type">Boolean</code></span>
            </span>
            <span class="sub-box">
                Enthält den Wert <code>true</code>, wenn die E-Mail-Adresse der Kommentatoren entfernt
                werden soll.
            </span>
        </span>

        <span class="box"><code class="sub-item smarty">{$comments.X.email}</code>
            <span class="sub-box">
                <span class="smarty-type"><em>Variablentyp:</em> <code class="type">Zeichenkette</code></span>
            </span>
            <span class="sub-box">
                Enthält die E-Mail-Adresse des Kommentators. Das <code>@</code>-Zeichen wird durch die
                Zeichenkette <code>[at]</code> ersetzt.
            </span>
        </span>

        <span class="box"><code class="sub-item smarty">{$comments.X.clear_email}</code>
            <span class="sub-box">
                <span class="smarty-type"><em>Variablentyp:</em> <code class="type">Zeichenkette</code></span>
            </span>
            <span class="sub-box">
                Enthält die ursprüngliche, unveränderte E-Mail-Adresse des Kommentators.
            </span>
        </span>

        <span class="box"><code class="sub-item smarty">{$comments.X.pos}</code>
            <span class="sub-box">
                <span class="smarty-type"><em>Variablentyp:</em> <code class="type">Zahl</code></span>
            </span>
            <span class="sub-box">
                Enthält eine fortlaufende Zahl, die die aktuelle Nummer eines Kommentars darstellt.
            </span>
        </span>

        <span class="box"><code class="sub-item smarty">{$comments.X.parent_id}</code>
            <span class="sub-box">
                <span class="smarty-type"><em>Variablentyp:</em> <code class="type">Zahl</code></span>
            </span>
            <span class="sub-box">
                Wenn sich ein Kommentator auf einen vorhergehenden Kommentar bezieht, enthält der Wert der
                Variable <code class="item smarty">{$comments.X.parent_id}</code> die ID dieses Kommentars.
            </span>
        </span>

        <span class="box"><code class="sub-item smarty">{$comments.X.trace}</code>
            <span class="sub-box">
                <span class="smarty-type"><em>Variablentyp:</em> <code class="type">Zeichenkette</code></span>
            </span>
            <span class="sub-box">
                Bei aufeinander bezogenen Kommentaren wird die Verschachtelungstiefe durch die
                Variable <code class="item smarty">{$comments.X.trace}</code> angegeben. Für den zweiten Kommentar
                unterhalb des dritten Kommentars würde diese Variable den Wert <code>3.2</code> enthalten.
            </span>
        </span>

        <span class="box"><code class="sub-item smarty">{$comments.X.depth}</code>
            <span class="sub-box">
                <span class="smarty-type"><em>Variablentyp:</em> <code class="type">Zahl</code></span>
            </span>
            <span class="sub-box">
                Enthält die aktuelle Verschachtelungstiefe für aufeinander bezogene Kommentare.
            </span>
        </span>

        <span class="box"><code class="sub-item smarty">{$comments.X.author}</code>
            <span class="sub-box">
                <span class="smarty-type"><em>Variablentyp:</em> <code class="type">Zeichenkette</code></span>
            </span>
            <span class="sub-box">
                Enthält den Namen des Kommentators.
            </span>
        </span>

        <span class="box"><code class="sub-item smarty">{$comments.X.id}, {$comments.X.commentid}</code>
            <span class="sub-box">
                <span class="smarty-type"><em>Variablentyp:</em> <code class="type">Zahl</code></span>
            </span>
            <span class="sub-box">
                Enthält eine eindeutige ID des Kommentars.
            </span>
        </span>

        <span class="box"><code class="sub-item smarty">{$comments.X.authorid}</code>
            <span class="sub-box">
                <span class="smarty-type"><em>Variablentyp:</em> <code class="type">Zahl</code></span>
            </span>
            <span class="sub-box">
                Enthält die ID des Autors, der den Blog-Artikel verfasst hat, auf welchen sich der
                Kommentar bezieht.
            </span>
        </span>

        <span class="box"><code class="sub-item smarty">{$comments.X.entry_id}, {$comments.X.entryid}</code>
            <span class="sub-box">
                <span class="smarty-type"><em>Variablentyp:</em> <code class="type">Zahl</code></span>
            </span>
            <span class="sub-box">
                Enthält die eindeutige ID des Blog-Artikels, auf den sich der Kommentar bezieht.
            </span>
        </span>

        <span class="box"><code class="sub-item smarty">{$comments.X.title}</code>
            <span class="sub-box">
                <span class="smarty-type"><em>Variablentyp:</em> <code class="type">Zeichenkette</code></span>
            </span>
            <span class="sub-box">
                Enthält den Titel des Blog-Artikels, auf den sich der Kommentar bezieht.
            </span>
        </span>

        <span class="box"><code class="sub-item smarty">{$comments.X.timestamp}</code>
            <span class="sub-box">
                <span class="smarty-type"><em>Variablentyp:</em> <code class="type">Zahl</code></span>
            </span>
            <span class="sub-box">
                Enthält die Uhrzeit (in Unix-Sekunden), zu der der Kommentar verfasst wurde.
            </span>
        </span>

        <span class="box"><code class="sub-item smarty">{$comments.X.ctitle}</code>
            <span class="sub-box">
                <span class="smarty-type"><em>Variablentyp:</em> <code class="type">Zeichenkette</code></span>
            </span>
            <span class="sub-box">
                Enthält eine etwaige Überschrift des Kommentars. Dieses Eingabefeld wird
                standardmäßig in Serendipity-Templates nur für Trackbacks verwendet.
            </span>
        </span>

        <span class="box"><code class="sub-item smarty">{$comments.X.ip}</code>
            <span class="sub-box">
                <span class="smarty-type"><em>Variablentyp:</em> <code class="type">Zeichenkette</code></span>
            </span>
            <span class="sub-box">
                Enthält die IP-Adresse des Kommentators.
            </span>
        </span>

        <span class="box"><code class="sub-item smarty">{$comments.X.type}</code>
            <span class="sub-box">
                <span class="smarty-type"><em>Variablentyp:</em> <code class="type">Zeichenkette</code></span>
            </span>
            <span class="sub-box">
                Gibt den Typ des Kommentars an. Dies kann entweder <code>NORMAL</code> (Kommentare),
                <code>TRACKBACK</code> oder <code>PINGBACK</code> sein.
            </span>
        </span>

        <span class="box"><code class="sub-item smarty">{$comments.X.subscribed}</code>
            <span class="sub-box">
                <span class="smarty-type"><em>Variablentyp:</em> <code class="type">Boolean</code></span>
            </span>
            <span class="sub-box">
                Ist auf <code>1</code> gesetzt, wenn der Verfasser eines Kommentars die Option
                <span class="mbold">Bei Aktualisierung dieser Kommentare benachrichtigen</span> aktiviert hat.
            </span>
        </span>

    </span><!-- box mda-box $comments array in scope: comments.tpl end -->

</span>
</p>

<p class="desc citem-desc">
<code class="item smarty">{$trackbacks}</code>
<span class="desc-info">
    <span class="box">
        <span class="smarty-type"><em>Variablentyp:</em> <code class="type">Mehrdimensionales Array</code></span>
        <span class="smarty-scope"><em>Verfügbar in:</em> <code class="file">trackbacks.tpl</code></span>
        <span class="smarty-doc"><em>Zugewiesen in:</em> <code class="file">include/functions_trackbacks.inc.php</code>, <code class="function">serendipity_printTrackbacks()</code></span>
    </span>

    <span class="box">
        Das Array <code class="item smarty">{$trackbacks}</code> enthält die Liste der Trackbacks zu einem
        Blog-Artikel und wird mittels der Smarty-Funktion
        <code class="item smarty">{$serendipity_printTrackbacks}</code> innerhalb der
        <code>entries.tpl</code>-Template-Datei eingebunden.
    </span>

    <span class="box">
        Das Trackbacks-Array verfügt über ähnliche Array-Schlüssel wie das
        ab Seite <span class="pageref"><a href="#template-comments">template-comments</a></span> aufgeführte <code class="smarty">{$comments}</code>-Array.
        Dabei sind folgende Schlüssel identisch: 
    </span>

    <span class="box">
        <code class="sub-item">id</code>, <code class="sub-item">entry_id</code>, <code class="sub-item">parent_id</code>,
        <code class="sub-item">timestamp</code>, <code class="sub-item">title</code>, <code class="sub-item">author</code>,
        <code class="sub-item">email</code>, <code class="sub-item">url</code>, <code class="sub-item">ip</code>,
        <code class="sub-item">body</code>, <code class="sub-item">type</code>, <code class="sub-item">subscribed</code>.
    </span>

    <span class="box">
        Hinzu kommt folgender Schlüssel:
    </span>

    <span class="box mda-box">

        <span class="box"><code class="sub-item smarty">{$trackbacks.X.status}</code>
            <span class="sub-box">
                <span class="smarty-type"><em>Variablentyp:</em> <code class="type">Zeichenkette</code></span>
            </span>
            <span class="sub-box">
                Gibt an, ob ein Trackback bereits veröffentlicht (<code>approved</code>) ist oder sich noch in
                Freischaltung (<code>pending</code>) befindet.
            </span>
        </span>

    </span><!-- box mda-box $trackbacks array in scope: trackbacks.tpl end -->

</span>
</p>

</article>

<article id="XU" class="subsub">

<header>
    <h4 class="subarticle" id="commentform-tpl">commentform.tpl</h4>
</header>

<p class="tagging invisible">
<span class="tag-box invisible">
    <span class="inline-tag">Template-Dateien!commentform.tpl</span>
</span>
</p>

<p>Die Template-Datei <code>commentform.tpl</code> ist ein Formular zum Hinzufügen von
Kommentaren. Dieses wird über die Smarty-Variable <code class="item smarty">{$COMMENTFORM}</code>
sowohl innerhalb der Template-Datei <code>entries.tpl</code> als auch in
<code>commentpopup.tpl</code> eingebunden.</p>

<p class="desc citem-desc">
<code class="item smarty">{$commentform_action}</code>
<span class="desc-info">
    <span class="box">
        <span class="smarty-type"><em>Variablentyp:</em> <code class="type">Zeichenkette</code></span>
        <span class="smarty-scope"><em>Verfügbar in:</em> <code class="file">commentform.tpl</code></span>
        <span class="smarty-doc"><em>Zugewiesen in:</em> <code class="file">include/functions_comments.inc.php</code>, <code class="function">serendipity_displayCommentForm()</code></span>
    </span>

    <span class="box">
        Enthält die Ziel-URL, an die die Daten des Kommentarformulars gesendet werden.
    </span>
</span>
</p>

<p class="desc citem-desc">
<code class="item smarty">{$commentform_id}</code>
<span class="desc-info">
    <span class="box">
        <span class="smarty-type"><em>Variablentyp:</em> <code class="type">Zahl</code></span>
        <span class="smarty-scope"><em>Verfügbar in:</em> <code class="file">commentform.tpl</code></span>
        <span class="smarty-doc"><em>Zugewiesen in:</em> <code class="file">include/functions_comments.inc.php</code>, <code class="function">serendipity_displayCommentForm()</code></span>
    </span>

    <span class="box">
        Enthält die ID des Artikels, für den das Kommentarformular eingebunden wird.
    </span>
</span>
</p>

<p class="desc citem-desc">
<code class="item smarty">{$commentform_name}</code>
<span class="desc-info">
    <span class="box">
        <span class="smarty-type"><em>Variablentyp:</em> <code class="type">Zeichenkette</code></span>
        <span class="smarty-scope"><em>Verfügbar in:</em> <code class="file">commentform.tpl</code></span>
        <span class="smarty-doc"><em>Zugewiesen in:</em> <code class="file">include/functions_comments.inc.php</code>, <code class="function">serendipity_displayCommentForm()</code></span>
    </span>

    <span class="box">
        Enthält die Eingabe <code>Name</code> des Benutzers im Kommentarformular.
    </span>
</span>
</p>

<p class="desc citem-desc">
<code class="item smarty">{$commentform_email}</code>
<span class="desc-info">
    <span class="box">
        <span class="smarty-type"><em>Variablentyp:</em> <code class="type">Zeichenkette</code></span>
        <span class="smarty-scope"><em>Verfügbar in:</em> <code class="file">commentform.tpl</code></span>
        <span class="smarty-doc"><em>Zugewiesen in:</em> <code class="file">include/functions_comments.inc.php</code>, <code class="function">serendipity_displayCommentForm()</code></span>
    </span>

    <span class="box">
        Enthält die Eingabe <code>E-Mail</code> des Benutzers im Kommentarformular.
    </span>
</span>
</p>

<p class="desc citem-desc">
<code class="item smarty">{$commentform_url}</code>
<span class="desc-info">
    <span class="box">
        <span class="smarty-type"><em>Variablentyp:</em> <code class="type">Zeichenkette</code></span>
        <span class="smarty-scope"><em>Verfügbar in:</em> <code class="file">commentform.tpl</code></span>
        <span class="smarty-doc"><em>Zugewiesen in:</em> <code class="file">include/functions_comments.inc.php</code>, <code class="function">serendipity_displayCommentForm()</code></span>
    </span>

    <span class="box">
        Enthält die Eingabe <code>Homepage</code> des Benutzers im Kommentarformular.
    </span>
</span>
</p>

<p class="desc citem-desc">
<code class="item smarty">{$commentform_remember}</code>
<span class="desc-info">
    <span class="box">
        <span class="smarty-type"><em>Variablentyp:</em> <code class="type">Boolean</code></span>
        <span class="smarty-scope"><em>Verfügbar in:</em> <code class="file">commentform.tpl</code></span>
        <span class="smarty-doc"><em>Zugewiesen in:</em> <code class="file">include/functions_comments.inc.php</code>, <code class="function">serendipity_displayCommentForm()</code></span>
    </span>

    <span class="box">
        Enthält den Wert <code>true</code>, wenn der Benutzer die Option <span class="mbold">Daten
        merken?</span> im Kommentarformular aktiviert hat, um seine Stammdaten in einem
        Cookie zu speichern und bei Folgekommentaren nicht erneut eintragen zu müssen.
    </span>
</span>
</p>

<p class="desc citem-desc">
<code class="item smarty">{$commentform_subscribe}</code>
<span class="desc-info">
    <span class="box">
        <span class="smarty-type"><em>Variablentyp:</em> <code class="type">Zeichenkette</code></span>
        <span class="smarty-scope"><em>Verfügbar in:</em> <code class="file">commentform.tpl</code></span>
        <span class="smarty-doc"><em>Zugewiesen in:</em> <code class="file">include/functions_comments.inc.php</code>, <code class="function">serendipity_displayCommentForm()</code></span>
    </span>

    <span class="box">
        Enthält den Wert <code>true</code>, wenn der Benutzer die Option
        <span class="mbold">Bei Aktualisierung dieser Kommentare benachrichtigen</span> im
        Kommentarformular aktiviert hat.
    </span>
</span>
</p>

<p class="desc citem-desc">
<code class="item smarty">{$commentform_replyTo}</code>
<span class="desc-info">
    <span class="box">
        <span class="smarty-type"><em>Variablentyp:</em> <code class="type">Zeichenkette</code></span>
        <span class="smarty-scope"><em>Verfügbar in:</em> <code class="file">commentform.tpl</code></span>
        <span class="smarty-doc"><em>Zugewiesen in:</em> <code class="file">include/functions_comments.inc.php</code>, <code class="function">serendipity_displayCommentForm()</code></span>
    </span>

    <span class="box">
        Enthält den HTML-Code zur Darstellung eines Auswahlfeldes mit allen bereits
        bestehenden Kommentaren eines Artikels. Der kommentierende Benutzer kann darin
        auswählen, auf welchen Kommentar er sich beziehen möchte.
    </span>
</span>
</p>

<p class="desc citem-desc">
<code class="item smarty">{$commentform_data}</code>
<span class="desc-info">
    <span class="box">
        <span class="smarty-type"><em>Variablentyp:</em> <code class="type">Zeichenkette</code></span>
        <span class="smarty-scope"><em>Verfügbar in:</em> <code class="file">commentform.tpl</code></span>
        <span class="smarty-doc"><em>Zugewiesen in:</em> <code class="file">include/functions_comments.inc.php</code>, <code class="function">serendipity_displayCommentForm()</code></span>
    </span>

    <span class="box">
        Enthält den Kommentartext des Benutzers.
    </span>
</span>
</p>

<p class="desc citem-desc">
<code class="item smarty">{$is_commentform_showToolbar}</code>
<span class="label invisible" id="commentformshowtoolbar">commentformshowtoolbar</span>
<span class="desc-info">
    <span class="box">
        <span class="smarty-type"><em>Variablentyp:</em> <code class="type">Boolean</code></span>
        <span class="smarty-scope"><em>Verfügbar in:</em> <code class="file">commentform.tpl</code></span>
        <span class="smarty-doc"><em>Zugewiesen in:</em> <code class="file">include/functions_comments.inc.php</code>, <code class="function">serendipity_displayCommentForm()</code></span>
    </span>

    <span class="box">
        Enhält den Wert <code>true</code>, wenn die beiden Sonderoptionen <span class="mbold">Daten
        merken</span> und <span class="mbold">Bei Aktualisierung dieser Kommentare benachrichtigen</span>
        angezeigt werden sollen.
    </span>
</span>
</p>

<p class="desc citem-desc">
<code class="item smarty">{$is_allow_Subscriptions}</code>
<span class="desc-info">
    <span class="box">
        <span class="smarty-type"><em>Variablentyp:</em> <code class="type">Boolean</code></span>
        <span class="smarty-scope"><em>Verfügbar in:</em> <code class="file">commentform.tpl</code></span>
        <span class="smarty-doc"><em>Zugewiesen in:</em> <code class="file">include/functions_comments.inc.php</code>, <code class="function">serendipity_displayCommentForm()</code></span>
    </span>

    <span class="box">
        Enhält den Wert <code>true</code>, wenn <span class="mbold">Bei Aktualisierung dieser Kommentare benachrichtigen</span>
        angezeigt werden soll. Diese Einstellung kann über die globale
        Serendipity-Konfiguration (siehe Seite <span class="pageref"><a href="#eintrags-abonnement">Eintrags-Abonnement</a></span>)
        vorgenommen werden.
    </span>
</span>
</p>

<p class="desc citem-desc">
<code class="item smarty">{$is_moderate_comments}</code>
<span class="desc-info">
    <span class="box">
        <span class="smarty-type"><em>Variablentyp:</em> <code class="type">Boolean</code></span>
        <span class="smarty-scope"><em>Verfügbar in:</em> <code class="file">commentform.tpl</code></span>
        <span class="smarty-doc"><em>Zugewiesen in:</em> <code class="file">include/functions_comments.inc.php</code>, <code class="function">serendipity_displayCommentForm()</code></span>
    </span>

    <span class="box">
        Enthält den Wert <code>true</code>, wenn Kommentare des aktuellen Artikels moderiert werden.
    </span>
</span>
</p>

<p class="desc citem-desc">
<code class="item smarty">{$commentform_entry}</code>
<span class="desc-info">
    <span class="box">
        <span class="smarty-type"><em>Variablentyp:</em> <code class="type">Mehrdimensionales Array</code></span>
        <span class="smarty-scope"><em>Verfügbar in:</em> <code class="file">commentform.tpl</code></span>
        <span class="smarty-doc"><em>Zugewiesen in:</em> <code class="file">include/functions_comments.inc.php</code>, <code class="function">serendipity_displayCommentForm()</code></span>
    </span>

    <span class="box">
        Enthält die Metadaten des Blog-Artikels (siehe Seite <span class="pageref"><a href="#template-entries">template-entries</a></span>).
    </span>
</span>
</p>

</article>

<article id="XU" class="subsub">

<header>
    <h4 class="subarticle" id="comments_by_author-tpl">comments_by_author.tpl</h4>
</header>

<p class="tagging invisible">
<span class="tag-box invisible">
    <span class="inline-tag">Template-Dateien!comments_by_author.tpl</span>
</span>
</p>

<p>Die Template-Datei <code>comments_by_author.tpl</code> wird ausgegeben, wenn eine
Übersichtsseite der Kommentare unabhängig von Ihren Blog-Artikeln dargestellt
wird (siehe Seite <span class="pageref"><a href="#Kommentarübersicht">Kommentarübersicht</a></span>). Die Template-Datei wird über
die Variable <code class="smarty">{$ENTRIES}</code> in die Template-Datei <code>content.tpl</code> eingebunden.
</p>

<p class="desc citem-desc">
<code class="item smarty">{$comments_by_authors}</code>
<span class="desc-info">
    <span class="box">
        <span class="smarty-type"><em>Variablentyp:</em> <code class="type">Mehrdimensionales Array</code></span>
        <span class="smarty-scope"><em>Verfügbar in:</em> <code class="file">commentform.tpl</code></span>
        <span class="smarty-doc"><em>Zugewiesen in:</em> <code class="file">include/functions_comments.inc.php</code>, <code class="function">serendipity_printCommentsByAuthor()</code></span>
    </span>

    <span class="box">
        Enthält die Daten der Kommentare, die in der Übersicht dargestellt werden
        sollen. Der Schlüssel der ersten Dimension des Arrays enthält die ID des
        Blog-Artikels, auf die sich ein Kommentar bezieht. Als Wert enthält die zweite
        Dimension ein Unter-Array mit den Daten des ersten Kommentars, der zu der ID des
        Blog-Artikels gehört. Die Array-Schlüssel sind dabei identisch zu dem ab Seite
        <span class="pageref"><a href="#template-comments">template-comments</a></span> aufgeführten <code class="smarty">{$comments}</code>-Array.
        Dabei sind folgende Schlüssel identisch:
    </span>

    <span class="box">
        <code class="sub-item">id</code>, <code class="sub-item">entry_id</code>, <code class="sub-item">parent_id</code>,
        <code class="sub-item">timestamp</code>, <code class="sub-item">title</code>, <code class="sub-item">author</code>,
        <code class="sub-item">email</code>, <code class="sub-item">url</code>, <code class="sub-item">ip</code>,
        <code class="sub-item">body</code>, <code class="sub-item">type</code>, <code class="sub-item">subscribed</code>.
    </span>

    <span class="box">
        Zusätzlich verfügt das Array über den Schlüssel
        <code class="smarty">{$comments_by_authors.X.link}</code>, das den Permalink zum Blog-Artikel
        enthält. Ein weiterer Schlüssel <code class="item smarty">{$comments_by_authors.comments}</code>
        enthält ein Array mit allen Kommentaren zu diesem Blog-Artikel. Dabei ist
        der erste Kommentar, der sich bereits in den Werten der zweiten Dimension
        wiederfindet, nochmals enthalten. Das Array der zweiten Dimension dient
        grundsätzlich nur der Speicherung der Metadaten zu einem Artikel, da diese mit
        den Stammdaten eines Kommentars vermischt sind.
    </span>

    <span class="box">
        Zuletzt enthält der Schlüssel <code class="smarty">{$comments_by_authors.X.tpl_comments}</code>
        jeweils den vollständigen HTML-Code des zu einem Blog-Artikel geparsten
        <code>comments.tpl</code>-Templates. Da durch diese Einbindung des
        <code>comments.tpl</code>-Templates Redundanzen vermieden werden können, enthält die
        Template-Datei <code>comments_by_authors.tpl</code> nur verhältnismäßig wenig
        HTML/Smarty-Code.
    </span>

</span>
</p>

</article>

<article id="XU" class="subsub">

<header>
    <h4 class="subarticle" id="plugin_calendar-tpl">plugin_calendar.tpl</h4>
</header>

<p class="tagging invisible">
<span class="tag-box invisible">
    <span class="inline-tag">Template-Dateien!plugin_calendar.tpl</span>
</span>
</p>

<p><span class="label invisible" id="plugin-calendar-tpl">plugin-calendar-tpl</span> Das Seitenleisten-Plugin <span class="mbold">Kalender</span> gibt seinen HTML-Code über das
Smarty-Template <code>plugin_calendar.tpl</code> aus. Folgende Variablen sind dort
verfügbar:</p>

<p class="desc citem-desc">
<code class="item smarty">{$plugin_calendar_weeks}</code>
<span class="desc-info">
    <span class="box">
        <span class="smarty-type"><em>Variablentyp:</em> <code class="type">Mehrdimensionales Array</code></span>
        <span class="smarty-scope"><em>Verfügbar in:</em> <code class="file">plugin_calendar.tpl</code></span>
        <span class="smarty-doc"><em>Zugewiesen in:</em> <code class="file">include/plugin_internal.inc.php</code>, <code class="function">serendipity_plugin_calendar::generate_content()</code></span>
    </span>

    <span class="box">
        Enthält ein mehrdimensionales Array mit den Daten des jeweiligen dargestellten Monats.
    </span>

    <span class="box">
        Das Array gibt sozusagen eine Tages-Matrix wieder, besteht also aus Zeilen und
        Spalten. Die Array-Schlüssel der ersten Dimension entsprechen dabei der Zeile,
        die jeweils eine ganze Kalenderwoche enthält. Das heißt,
        <code class="item smarty">{$plugin_calendar_weeks.0}</code> enthält die ersten 7 Tage,
        <code class="item smarty">{$plugin_calendar_weeks.1}</code> die zweiten 7 Tage und so fort
        bis zum Ende des jeweiligen Monats.
    </span>

    <span class="box">
        Jedes dieser Arrays, die einer Kalenderzeile entsprechen, besitzt einen
        Array-Schlüssel <code class="item smarty">{$plugin_calendar_weeks.0.days}</code>, in dem ein
        durchnummeriertes Unter-Array steckt. Dies verfügt jeweils über die
        Array-Schlüssel <code>name</code> (Tag), <code>properties</code> (spezielle Attribute) und
        <code>classes</code> (zugewiesene CSS-Klasse). Folgende Attribute (<code>properties</code>)
        können für jeden Tag zugewiesen werden:
    </span>

    <span class="box mda-box">

        <span class="box"><code class="sub-item smarty">{$plugin_calendar_weeks.0.days.0.properties.FirstRow}</code>
            <span class="sub-box">
                <span class="smarty-type"><em>Variablentyp:</em> <code class="type"></code></span>
            </span>
            <span class="sub-box">
                ist auf <code>1</code> gesetzt, wenn der aktuelle Tag in der ersten Kalenderzeile steht.
            </span>
        </span>

        <span class="box"><code class="sub-item smarty">{$plugin_calendar_weeks.0.days.0.properties.FirstInRow}</code>
            <span class="sub-box">
                <span class="smarty-type"><em>Variablentyp:</em> <code class="type"></code></span>
            </span>
            <span class="sub-box">
                ist auf <code>1</code> gesetzt, wenn der aktuelle Tag in der ersten Kalenderzeile und an erster
                Stelle der Zeile steht.
            </span>
        </span>

        <span class="box"><code class="sub-item smarty">{$plugin_calendar_weeks.0.days.0.properties.LastRow}</code>
            <span class="sub-box">
                <span class="smarty-type"><em>Variablentyp:</em> <code class="type"></code></span>
            </span>
            <span class="sub-box">
                ist auf <code>1</code> gesetzt, wenn der aktuelle Tag in der letzten Kalenderzeile steht.
            </span>
        </span>

        <span class="box"><code class="sub-item smarty">{plugin_calendar_weeks.0.days.0.properties.LastInRow}</code>
            <span class="sub-box">
                <span class="smarty-type"><em>Variablentyp:</em> <code class="type"></code></span>
            </span>
            <span class="sub-box">
                ist auf <code>1</code> gesetzt, wenn der aktuelle Tag in der letzten Kalenderzeile und
                an letzter Stelle der Zeile steht.
            </span>
        </span>

        <span class="box"><code class="sub-item smarty">{$plugin_calendar_weeks.0.days.0.properties.Today}</code>
            <span class="sub-box">
                <span class="smarty-type"><em>Variablentyp:</em> <code class="type"></code></span>
            </span>
            <span class="sub-box">
                ist auf <code>1</code> gesetzt, wenn der jeweilige Tag dem heutigen Datum entspricht.
            </span>
        </span>

        <span class="box"><code class="sub-item smarty">{$plugin_calendar_weeks.0.days.0.properties.Title}</code>
            <span class="sub-box">
                <span class="smarty-type"><em>Variablentyp:</em> <code class="type"></code></span>
            </span>
            <span class="sub-box">
                enthält ggf. einen Termin, wenn das via Spartacus erhältliche Ereignis-Plugin <span class="mbold">Mein Kalender</span> seine
                Termine einbettet.
            </span>
        </span>

        <span class="box"><code class="sub-item smarty">{plugin_calendar_weeks.0.days.0.properties.Active}</code>
            <span class="sub-box">
                <span class="smarty-type"><em>Variablentyp:</em> <code class="type"></code></span>
            </span>
            <span class="sub-box">
                ist gesetzt, wenn der aktuelle Tag des Kalenders ausgewählt wurde.
            </span>
        </span>

        <span class="box"><code class="sub-item smarty">{plugin_calendar_weeks.0.days.0.properties.Link}</code>
            <span class="sub-box">
                <span class="smarty-type"><em>Variablentyp:</em> <code class="type"></code></span>
            </span>
            <span class="sub-box">
                enthält die URL zu der Artikelübersicht des jeweiligen Tages.
            </span>
        </span>

        <span class="box">
            Die Liste der zugewiesenen CSS-Klassen richtet sich nach den
            <code>properties</code> des Tages; diese können daher später in der Template-Datei direkt
            innerhalb eines <code>class="..."</code>-Attributs eingesetzt werden.
        </span>

        <span class="box">
            Aufgrund der hohen Verschachtelungstiefe des Kalenders werden die Variablen in
            mehrfach verschachtelten <code class="item smarty">{$foreach}</code>-Schleifen abgearbeitet.
        </span>

    </span><!-- box mda-box $plugin_calendar_weeks array end -->

</span>
</p>

<p class="desc citem-desc">
<code class="item smarty">{$plugin_calendar_dow}</code>
<span class="desc-info">
    <span class="box">
        <span class="smarty-type"><em>Variablentyp:</em> <code class="type">Mehrdimensionales Array</code></span>
        <span class="smarty-scope"><em>Verfügbar in:</em> <code class="file">plugin_calendar.tpl</code></span>
        <span class="smarty-doc"><em>Zugewiesen in:</em> <code class="file">include/plugin_internal.inc.php</code>, <code class="function">serendipity_plugin_calendar::generate_content()</code></span>
    </span>

    <span class="box">
        Da abhängig von regionalen Gepflogenheiten die Woche entweder
        an einem Sonntag oder Montag anfängt, muss der Kalender dies berücksichtigen.
        Dafür steht das Array <code class="smarty">{$plugin_calendar_dow}</code> zur Verfügung. Es
        enthält das jeweilige Datum zum zugehörigen Wochentag.
    </span>

    <span class="box">
        Die Array-Schlüssel der ersten Dimension sind aufeinanderfolgend
        durchnummeriert (von 1 bis 7). Der Array-Schlüssel <code>date</code> der zweiten
        Dimension enthält als Wert das jeweilige Datum (in Unix-Sekunden).
    </span>

</span>
</p>

<p class="desc citem-desc">
<code class="item smarty">{$plugin_calendar_head}</code>
<span class="desc-info">
    <span class="box">
        <span class="smarty-type"><em>Variablentyp:</em> <code class="type">Mehrdimensionales Array</code></span>
        <span class="smarty-scope"><em>Verfügbar in:</em> <code class="file">plugin_calendar.tpl</code></span>
        <span class="smarty-doc"><em>Zugewiesen in:</em> <code class="file">include/plugin_internal.inc.php</code>, <code class="function">serendipity_plugin_calendar::generate_content()</code></span>
    </span>

    <span class="box">
        Enthält einige Stammdaten des Kalenders:
    </span>

    <span class="box mda-box">

        <span class="box"><code class="sub-item smarty">{$plugin_calendar_head.month_date}</code>
            <span class="sub-box">
                <span class="smarty-type"><em>Variablentyp:</em> <code class="type">Zahl</code></span>
            </span>
            <span class="sub-box">
                Enthält das Datum (in Unix-Sekunden) des dargestellten Monats.
            </span>
        </span>

        <span class="box"><code class="sub-item smarty">{$plugin_calendar_head.minScroll}, {$plugin_calendar_head.maxScroll}</code>
            <span class="sub-box">
                <span class="smarty-type"><em>Variablentyp:</em> <code class="type">Zahl</code></span>
            </span>
            <span class="sub-box">
                Enthält das Datum (in Unix-Sekunden) des ersten und letzten Blog-Artikels, so
                dass die Anzeige des Kalenders den Zeitraum vorhandener Artikel nicht über-
                oder unterschreiten kann.
            </span>
        </span>

        <span class="box"><code class="sub-item smarty">{$plugin_calendar_head.uri_previous}, {$plugin_calendar_head.uri_next}</code>
            <span class="sub-box">
                <span class="smarty-type"><em>Variablentyp:</em> <code class="type">Zeichenkette</code></span>
            </span>
            <span class="sub-box">
                Enthält die URLs zum Zurück- und Weiterblättern des aktuellen Kalenderblatts.
            </span>
        </span>

        <span class="box"><code class="sub-item smarty">{$plugin_calendar_head.uri_month}</code>
            <span class="sub-box">
                <span class="smarty-type"><em>Variablentyp:</em> <code class="type">Zeichenkette</code></span>
            </span>
            <span class="sub-box">

            </span>
        </span>

    </span><!-- box mda-box $plugin_calendar_head array end -->

</span>
</p>

</article>

<article id="XU" class="subsub">

<header>
    <h4 class="subarticle" id="plugin_categories-tpl">plugin_categories.tpl</h4>
</header>

<p class="tagging invisible">
<span class="label invisible" id="plugin-categories-tpl">plugin-categories-tpl</span>
<span class="tag-box invisible">
    <span class="inline-tag">Template-Dateien!plugin_categories.tpl</span>
</span>
</p>

<p>Die Template-Datei <code>plugin_categories.tpl</code> wird zur Ausgabe des
Seitenleisten-Plugins <span class="mbold">Kategorien</span> verwendet, falls die Option <span class="mbold">Smarty
benutzen</span> dort aktiviert ist. Bei deaktivierter Smarty-Option gibt das Plugin
direkt unveränderbaren HTML-Code aus (der jedoch Performance spart).</p>

<p class="desc citem-desc">
<code class="item smarty">{$is_form}</code>
<span class="desc-info">
    <span class="box">
        <span class="smarty-type"><em>Variablentyp:</em> <code class="type">Boolean</code></span>
        <span class="smarty-scope"><em>Verfügbar in:</em> <code class="file">plugin_categories.tpl</code></span>
        <span class="smarty-doc"><em>Zugewiesen in:</em> <code class="file">include/plugin_internal.inc.php</code>, <code class="function">serendipity_plugin_categories::generate_content()</code></span>
    </span>

    <span class="box">
        Ist auf <code>true</code> gesetzt, wenn das Seitenleisten-Plugin so konfiguriert wurde,
        dass der Besucher mehrere Kategorien gleichzeitig (mittels Ankreuzfeldern)
        auswählen darf.
    </span>
</span>
</p>

<p class="desc citem-desc">
<code class="item smarty">{$category_image}</code>
<span class="desc-info">
    <span class="box">
        <span class="smarty-type"><em>Variablentyp:</em> <code class="type">Zeichenkette</code></span>
        <span class="smarty-scope"><em>Verfügbar in:</em> <code class="file">plugin_categories.tpl</code></span>
        <span class="smarty-doc"><em>Zugewiesen in:</em> <code class="file">include/plugin_internal.inc.php</code>, <code class="function">serendipity_plugin_categories::generate_content()</code></span>
    </span>

    <span class="box">
        Enthält die URL zum Bild für die kleinen Feed-Symbole, die optional neben einer
        Kategorie eingeblendet werden können.
    </span>
</span>
</p>

<p class="desc citem-desc">
<code class="item smarty">{$form_url}</code>
<span class="desc-info">
    <span class="box">
        <span class="smarty-type"><em>Variablentyp:</em> <code class="type">Zeichenkette</code></span>
        <span class="smarty-scope"><em>Verfügbar in:</em> <code class="file">plugin_categories.tpl</code></span>
        <span class="smarty-doc"><em>Zugewiesen in:</em> <code class="file">include/plugin_internal.inc.php</code>, <code class="function">serendipity_plugin_categories::generate_content()</code></span>
    </span>

    <span class="box">
        Falls der Benutzer mehrere Kategorien gleichzeitig auswählen kann, enthält die
        Variable <code class="item smarty">{$form_url}</code> das Ziel des HTML-Formulars zur Darstellung der
        Artikel der gewählten Kategorien.
    </span>
</span>
</p>

<p class="desc citem-desc">
<code class="item smarty">{$categories}</code>
<span class="desc-info">
    <span class="box">
        <span class="smarty-type"><em>Variablentyp:</em> <code class="type">Mehrdimensionales Array</code></span>
        <span class="smarty-scope"><em>Verfügbar in:</em> <code class="file">plugin_categories.tpl</code></span>
        <span class="smarty-doc"><em>Zugewiesen in:</em> <code class="file">include/plugin_internal.inc.php</code>, <code class="function">serendipity_plugin_categories::generate_content()</code></span>
    </span>

    <span class="box">
        Enthält die Liste der Kategorien des Blogs. Die Array-Schlüssel der
        zweiten Dimension entsprechen den auf Seite <span class="pageref"><a href="#db-categories">db-categories</a></span>
        aufgeführten. Hinzu kommen folgende Schlüssel:
    </span>

    <span class="box mda-box">

        <span class="box"><code class="sub-item smarty">{$categories.X.feedCategoryURL}</code>
            <span class="sub-box">
                <span class="smarty-type"><em>Variablentyp:</em> <code class="type">Zeichenkette</code></span>
            </span>
            <span class="sub-box">
                Enthält die URL zum RSS-Feed einer Kategorie.
            </span>
        </span>

        <span class="box"><code class="sub-item smarty">{$categories.X.categoryURL}</code>
            <span class="sub-box">
                <span class="smarty-type"><em>Variablentyp:</em> <code class="type">Zeichenkette</code></span>
            </span>
            <span class="sub-box">
                Enthält die URL für die Übersichtsseite aller Blog-Artikel einer Kategorie.
            </span>
        </span>

        <span class="box"><code class="sub-item smarty">{$categories.X.paddingPx}</code>
            <span class="sub-box">
                <span class="smarty-type"><em>Variablentyp:</em> <code class="type">Zahl</code></span>
            </span>
            <span class="sub-box">
                Enthält abhängig von der Verschachtelungstiefe einer Kategorie eine Zahl, die
                der notwendigen Einrückung entspricht. Pro Verschachtelungsebene werden dafür 6
                Einheiten (Pixel) vorgesehen.
            </span>
        </span>

        <span class="box"><code class="sub-item smarty">{$categories.X.category_name}</code>
            <span class="sub-box">
                <span class="smarty-type"><em>Variablentyp:</em> <code class="type">Zeichenkette</code></span>
            </span>
            <span class="sub-box">
                Falls im Seitenleisten-Plugin die Option zur Zählung der Artikel pro Kategorie
                aktiviert wurde, enthält diese Variable den Namen sowie in Klammern gesetzt
                die Anzahl der Artikel.
            </span>
        </span>

        <span class="box"><code class="sub-item smarty">{$categories.X.true_category_name}</code>
            <span class="sub-box">
                <span class="smarty-type"><em>Variablentyp:</em> <code class="type">Zeichenkette</code></span>
            </span>
            <span class="sub-box">
                Falls im Seitenleisten-Plugin die Option zur Zählung der Artikel pro Kategorie
                aktiviert wurde, enthält diese Variable den ursprünglichen Kategorienamen, ohne
                Nennung der Kategorieanzahl in Klammern.
            </span>
        </span>

    </span><!-- box mda-box $archives array end -->

</span>
</p>

</article>

<article id="XU" class="subsub">

<header>
    <h4 class="subarticle" id="plugin_remoterss-tpl">plugin_remoterss.tpl</h4>
</header>

<p class="tagging invisible">
<span class="tag-box invisible">
    <span class="inline-tag">Template-Dateien!plugin_remoterss.tpl</span>
</span>
</p>

<p><span class="label invisible" id="plugin-remoterss.tpl">plugin-remoterss.tpl</span>
Die Template-Datei <code>plugin_remoterss.tpl</code> wird zur Ausgabe des
Seitenleisten-Plugins <span class="mbold">Fremder RSS/OPML-Blogroll Feed</span> (siehe Seite
<span class="pageref"><a href="#remoterss">remoterss</a></span>) verwendet, falls die Option <span class="mbold">Smarty benutzen</span> dort
aktiviert ist. Bei deaktivierter Smarty-Option gibt das Plugin direkt
unveränderbaren HTML-Code aus (der jedoch Performance spart).</p>

<p class="desc citem-desc">
<code class="item smarty">{$remoterss_items}</code>
<span class="desc-info">
    <span class="box">
        <span class="smarty-type"><em>Variablentyp:</em> <code class="type">Verschachteltes Array</code></span>
        <span class="smarty-scope"><em>Verfügbar in:</em> <code class="file">plugin_remoterss.tpl</code></span>
        <span class="smarty-doc"><em>Zugewiesen in:</em> <code class="file">plugins/serendipity_plugin_remoterss/serendipity_plugin_remoterss.php</code> <code class="function">serendipity_plugin_remoterss::generate_content()</code></span>
    </span>

    <span class="box">
        Enthält ein mehrfach verschachteltes Array mit allen Ausgaben und Optionen des
        Plugins. Das Array besitzt folgende Schlüssel:
    </span>

    <span class="box mda-box">

        <code class="sub-item smarty">{$remoterss_items.items}</code>
        <span class="box">
            <span class="smarty-type"><em>Variablentyp:</em> <code class="type">Verschachteltes Array</code></span>
        </span>
        <span class="box">
            <span class="sub-box">
                <span class="box">
                    Enthält ein Array mit dem Inhalt des fremden RSS/OPML-Feeds. Pro
                    durchnummeriertem Array-Schlüssel liegt ein RSS-Artikel vor, der wiederum
                    nach den XML-Tags des Feeds benannte Unterschlüssel besitzt
                </span>
                <span class="box">
                    (<code class="sub-item">link</code>, <code class="sub-item">title</code>,
                    <code class="sub-item">comments</code>, <code class="sub-item">author</code>,
                    <code class="sub-item">description</code>, <code class="sub-item">pubDate</code>,
                    <code class="sub-item">guid</code> ...)
                </span>
                <span class="box">
                    sowie folgende vom Plugin vergebene Schlüssel:
                </span>
            </span>

            <span class="sub-box mda-box">

                <span class="box"><code class="sub-item smarty">{$remoterss_items.items.X.timestamp}</code>
                    <span class="sub-box">
                        <span class="smarty-type"><em>Variablentyp:</em> <code class="type">Zahl</code></span>
                    </span>
                    <span class="sub-box">
                        enthält den Unix-Zeitstempel, wann der RSS-Artikel veröffentlicht wurde.
                    </span>
                </span>

                <span class="box"><code class="sub-item smarty">{$remoterss_items.items.X.css_class}</code>
                    <span class="sub-box">
                        <span class="smarty-type"><em>Variablentyp:</em> <code class="type">Zeichenkette</code></span>
                    </span>
                    <span class="sub-box">
                        enthält einen CSS-Klassennamen des RSS-Elements, das in der Plugin-Konfiguration als
                        <span class="mbold">RSS Zielelement</span> festgelegt wurde.
                    </span>
                </span>

                <span class="box"><code class="sub-item smarty">{$remoterss_items.items.X.decoded_...}</code>
                    <span class="sub-box">
                        <span class="smarty-type"><em>Variablentyp:</em> <code class="type">Zeichenkette</code></span>
                    </span>
                    <span class="sub-box">
                        für jedes XML-Element des RSS-Feeds gesetzt und enthält den in den korrekten Zeichensatz
                        konvertierten Wert. <code class="item smarty">{$remoterss_items.items.X.decoded_title}</code> enthält
                        beispielsweise das XML-Element <code>title</code> im Zeichensatz des Blogs. Taucht im
                        XML-Elementnamen ein Doppelpunkt auf (wie bei <code>&lt;content:encoded&gt;</code>), wird
                        dieser durch einen Unterstrich ersetzt
                        (<code class="smarty">{$remoterss_items.items.X.decoded_content_encoded}</code>).
                    </span>
                </span>

                <span class="box"><code class="sub-item smarty">{$remoterss_items.items.X.display_elements}</code>
                    <span class="sub-box">
                        <span class="smarty-type"><em>Variablentyp:</em> <code class="type">Array</code></span>
                    </span>
                    <span class="sub-box">
                        enthält eine Liste der RSS-XML-Elemente, die der Benutzer als <span class="mbold">RSS
                        Zielelemente</span> eingetragen hat. In der Smarty-Datei wird dieses Array dafür
                        verwendet, die darzustellenden RSS-Elemente einzubinden. Sie können jedoch
                        auch auf den Einsatz dieses Arrays verzichten, wenn Sie die einzubindenden
                        RSS-Zielelemente direkt über das Smarty-Template hartkodiert auslesen (zB.
                        über <code class="smarty">{$remoterss_items.items.X.decoded_description}</code>).
                    </span>
                </span>

            </span><!-- sub-box mda-box $remoterss_items.items array end -->

        </span>

        <span class="box"><code class="sub-item smarty">{$remoterss_items.use_rsslink}</code>
            <span class="sub-box">
                <span class="smarty-type"><em>Variablentyp:</em> <code class="type">Boolean</code></span>
            </span>
            <span class="sub-box">
                Enthält den Wert <code>true</code>, wenn jeder RSS-Artikel zum Originallink führen
                soll. Wird durch die Konfigurationsoptionen des Plugins bestimmt.
            </span>
        </span>

        <span class="box"><code class="sub-item smarty">{$remoterss_items.bulletimg}</code>
            <span class="sub-box">
                <span class="smarty-type"><em>Variablentyp:</em> <code class="type">Zeichenkette</code></span>
            </span>
            <span class="sub-box">
                Enthält die URL einer Symbolgrafik, wenn diese zu jedem RSS-Artikel dargestellt
                werden soll. Wird durch die Konfigurationsoptionen des Plugins bestimmt.
            </span>
        </span>

        <span class="box"><code class="sub-item smarty">{$remoterss_items.escape_rss}</code>
            <span class="sub-box">
                <span class="smarty-type"><em>Variablentyp:</em> <code class="type">Boolean</code></span>
            </span>
            <span class="sub-box">
                Enthält den Wert <code>true</code>, wenn die Sonderzeichen der RSS-Artikel in
                HTML-Sonderzeichen umgewandelt werden sollen, so dass kein HTML oder JavaScript
                ausgeführt werden kann. Wird durch die Konfigurationsoptionen des Plugins bestimmt.
            </span>
        </span>

        <span class="box"><code class="sub-item smarty">{$remoterss_items.displaydate}</code>
            <span class="sub-box">
                <span class="smarty-type"><em>Variablentyp:</em> <code class="type">Boolean</code></span>
            </span>
            <span class="sub-box">
                Enthält den Wert <code>true</code>, wenn das Datum eines RSS-Artikels angezeigt werden
                soll. Wird durch die Konfigurationsoptionen des Plugins bestimmt.
            </span>
        </span>

        <span class="box"><code class="sub-item smarty">{$remoterss_items.dateformat}</code>
            <span class="sub-box">
                <span class="smarty-type"><em>Variablentyp:</em> <code class="type">Zeichenkette</code></span>
            </span>
            <span class="sub-box">
                Enthält das Format, in dem das Datum eines RSS-Artikels dargestellt werden
                soll. Wird durch die Konfigurationsoptionen des Plugins bestimmt.
            </span>
        </span>

        <span class="box"><code class="sub-item smarty">{$remoterss_items.target}</code>
            <span class="sub-box">
                <span class="smarty-type"><em>Variablentyp:</em> <code class="type">Zeichenkette</code></span>
            </span>
            <span class="sub-box">
                Enthält den <span class="mbold">Link-Target</span> (siehe Konfigurationsoptionen des Plugins, Seite
                <span class="pageref"><a href="#remoterss-linktarget">remoterss-linktarget</a></span>) des RSS-Feeds.
            </span>
        </span>

    </span><!-- box mda-box $remoterss_items array end -->

</span>
</p>

</article>

<article id="XU" class="subsub">

<header>
    <h4 class="subarticle" id="preview_iframe-tpl">preview_iframe.tpl</h4>
</header>

<p class="tagging invisible">
<span class="tag-box invisible">
    <span class="inline-tag">Template-Dateien!preview_iframe.tpl</span>
</span>
</p>

<p>Die Template-Datei <code>preview_iframe.tpl</code> wird verwendet, um innerhalb des
Backends beim Bearbeiten/Erstellen eines Blog-Artikels eine Vorschau anzuzeigen,
die der Darstellung im Frontend gleicht.</p>

<p>Dabei wird die <code>entries.tpl</code>-Template-Datei wie gewohnt geparst und deren
Ausgabe innerhalb der <code>preview_iframe.tpl</code> eingebunden.</p>

<p class="desc citem-desc">
<span class="tag-box invisible">
    <span class="inline-tag">Template-Variablen!\$preview</span>
</span>
<code class="item smarty">{$preview}</code>
<span class="desc-info">
    <span class="box">
        <span class="smarty-type"><em>Variablentyp:</em> <code class="type">Zeichenkette</code></span>
        <span class="smarty-doc"><em>Zugewiesen in:</em> <code class="file">include/functions_config.inc.php</code>, <code class="function">serendipity_iframe()</code></span>
    </span>

    <span class="box">
        Enthält den HTML-Code für die Vorschau des Eintrags.
    </span>
</span>
</p>

</article>

<article id="XU" class="subsub">

<header>
    <h4 class="subarticle" id="content-tpl">content.tpl</h4>
</header>

<p class="tagging invisible">
<span class="tag-box invisible">
    <span class="inline-tag">Template-Dateien!content.tpl</span>
</span>
</p>

<p>Über die Template-Datei <code>content.tpl</code> wird das zentrale Serendipity-Frontend
zusammengebaut. Abhängig von der darzustellenden Seite enthält es einen
einzelnen Artikel, Artikelübersichten, Suchergebnisse oder anderes.
Grundsätzlich dient die Datei dabei nur zur Einbindung weiterer geparster
Template-Dateien, die über folgende Variablen verfügbar sind:</p>

<p class="desc citem-desc">
<span class="tag-box invisible">
    <span class="inline-tag">Template-Variablen!\$ENTRIES</span>
</span>
<code class="item smarty">{$ENTRIES}</code>
<span class="desc-info">
    <span class="box">
        <span class="smarty-type"><em>Variablentyp:</em> <code class="type">Zeichenkette</code></span>
        <span class="smarty-doc"><em>Zugewiesen in:</em> <code class="file">include/functions_entries.inc.php</code>, <code class="function">serendipity_printArchives()</code></span>
    </span>

    <span class="box">
        Enthält den HTML-Code für die Artikelübersicht oder einzelne Artikel. Die Inhalte
        dieser Variable stammen aus der geparsten Template-Datei <code>entries.tpl</code>.
    </span>
</span>
</p>

<p class="desc citem-desc">
<span class="tag-box invisible">
    <span class="inline-tag">Template-Variablen!\$ARCHIVES</span>
</span>
<code class="item smarty">{$ARCHIVES}</code>
<span class="desc-info">
    <span class="box">
        <span class="smarty-type"><em>Variablentyp:</em> <code class="type">Zeichenkette</code></span>
        <span class="smarty-doc"><em>Zugewiesen in:</em> <code class="file">include/functions_entries.inc.php</code>, <code class="function">serendipity_printArchives()</code></span>
    </span>

    <span class="box">
        Enthält den HTML-Code für die chronologische Artikelübersicht. Die Inhalte
        dieser Variable stammen aus der geparsten Template-Datei <code>entries_archives.tpl</code>.
    </span>
</span>
</p>

</article>

<article id="XU" class="subsub">

<header>
    <h4 class="subarticle" id="entries_archives-tpl">entries_archives.tpl</h4>
</header>

<p class="tagging invisible">
<span class="tag-box invisible">
    <span class="inline-tag">Template-Dateien!entries_archives.tpl</span>
</span>
</p>

<p>Mittels der Template-Datei <code>entries_archives.tpl</code> werden chronologische
Artikelübersichten dargestellt. Im Gegensatz zur vollständigen
Artikelübersicht enthält diese Übersicht nur Titel und Datum der Einträge.</p>

<p class="desc citem-desc">
<span class="tag-box invisible">
    <span class="inline-tag">Template-Variablen!\$archives</span>
</span>
<code class="item smarty">{$archives}</code>
<span class="desc-info">
    <span class="box">
        <span class="smarty-type"><em>Variablentyp:</em> <code class="type">Mehrdimensionales Array</code></span>
        <span class="smarty-doc"><em>Zugewiesen in:</em> <code class="file">include/functions_entries.inc.php</code>, <code class="function">serendipity_printArchives()</code></span>
    </span>

    <span class="box">
        Enthält das Array mit den in der Übersicht darzustellenden Einträgen. Dieses
        mehrfach verschachtelte Array enthält in der ersten Dimension als Array-Schlüssel
        das Jahr, unter dem die jeweiligen Unter-Arrays gegliedert sind.
    </span>

    <span class="box">
        In der zweiten Dimension stehen die Schlüssel <code>year</code> und <code>months</code>
        zur Verfügung, die jeweils das Jahr und den Monat für die Artikelliste enthalten.
        Innerhalb des <code>months</code>-Unter-Arrays befindet sich ein durchnummeriertes Array
        mit folgenden Schlüsseln:
    </span>

    <span class="box mda-box">

        <span class="box"><code class="sub-item smarty">{$archives.X.months.Y.entry_count}</code>
            <span class="sub-box">
                <span class="smarty-type"><em>Variablentyp:</em> <code class="type">Zahl</code></span>
            </span>
            <span class="sub-box">
                Enthält die Anzahl der Einträge für den jeweiligen Monat eines Jahres.
            </span>
        </span>

        <span class="box"><code class="sub-item smarty">{$archives.X.months.Y.link}</code>
            <span class="sub-box">
                <span class="smarty-type"><em>Variablentyp:</em> <code class="type">Zeichenkette</code></span>
            </span>
            <span class="sub-box">
                Enthält die URL, die die Übersichtsseite der Artikel des gewählten Monats anzeigt.
            </span>
        </span>

        <span class="box"><code class="sub-item smarty">{$archives.X.months.Y.link_summary}</code>
            <span class="sub-box">
                <span class="smarty-type"><em>Variablentyp:</em> <code class="type">Zeichenkette</code></span>
            </span>
            <span class="sub-box">
                Enthält die URL, die eine zusammenfassende Übersichtsseite der Artikel des
                gewählten Monats anzeigt. In der Zusammenfassung werden nur Titel und Datum der
                Artikel aufgeführt.
            </span>
        </span>

        <span class="box"><code class="sub-item smarty">{$archives.X.months.Y.date}</code>
            <span class="sub-box">
                <span class="smarty-type"><em>Variablentyp:</em> <code class="type">Zeichenkette</code></span>
            </span>
            <span class="sub-box">
                Enthält das Datum (in Unix-Sekunden, gerundet auf den vollen Tag) für die Liste
                der Artikel des zugehörigen Monats.
            </span>
        </span>

    </span><!-- box mda-box $archives array end -->

</span>
</p>

<p class="desc citem-desc">
<span class="tag-box invisible">
    <span class="inline-tag">Template-Variablen!\$max_entries</span>
</span>
<code class="item smarty">{$max_entries}</code>
<span class="desc-info">
    <span class="box">
        <span class="smarty-type"><em>Variablentyp:</em> <code class="type">Zahl</code></span>
        <span class="smarty-doc"><em>Zugewiesen in:</em> <code class="file">include/functions_entries.inc.php</code>, <code>serendipity_printArchives()</code></span>
    </span>

    <span class="box">
        Enthält die höchste Zahl von Artikeln, die in der Übersichtsseite für
        ein Monatssegment auftaucht. Diese Zahl wird verwendet, um eine relative Grafik
        einzubinden, anhand derer man die Häufigkeitsverteilung der Artikel ablesen kann.
    </span>
</span>
</p>

</article>

</section><!-- section.sub end -->

<section id="U963" class="sub">
<span class="u-toc">9.6.3 - Smarty-Funktionen</span>

<h3 class="subsection" id="smarty-funktionen">Smarty-Funktionen</h3>

<p class="tagging invisible">
<span class="tag-box invisible">
    <span class="inline-tag">Template-Funktionen</span>
</span>
<span class="label invisible" id="smartyfunctions">smartyfunctions</span>
</p>

<p>Auf den folgenden Seiten sind alle Smarty-Funktionen aufgeführt, die Serendipity
innerhalb der <code>*.tpl</code>-Template-Dateien zur Verfügung stellt.</p>

<p>Der Aufruf einer Funktion kann mit einigen Parametern ausgestattet werden, die
im Funktionsaufruf wie <code>serendipity_funktion parameter1=wert1 parameter2=wert2  ... </code> eingetragen werden.</p>

<p class="desc citem-desc">
<code class="item smarty function">{serendipity_printSidebar}</code>
<span class="smarty-doc"><em>Zugewiesen in:</em> <code class="file">include/functions_smarty.inc.php</code></span>
<span class="label invisible" id="printsidebar">printsidebar</span>
<span class="desc-info">
    <span class="box">
        Stellt die Ausgaben aller Seitenleisten-Plugins für die gewünschte Seitenleiste
        im Frontend zusammen.</span>

    <span class="box">Parameter:</span>

    <span class="box mda-box">

        <span class="box"><code class="sub-item smarty">side</code> (Pflicht)
            <span class="sub-box">
                <span class="smarty-type"><em>Variablentyp:</em> <code class="type"></code></span>
            </span>
            <span class="sub-box">
                Enthält den Namen der auszugebenden Seitenleiste (<code>left</code>, <code>right</code>, <code>hidden</code> ...).
            </span>
        </span>

        <span class="box"><span class="mbold">Rückgabewert:</span>
            <span class="sub-box">
                <span class="smarty-type"><em>Variablentyp:</em> <code class="type"></code></span>
            </span>
            <span class="sub-box">
                HTML-Zeichenkette (<code>sidebars.tpl</code>)
            </span>
        </span>

    </span><!-- box mda-box $serendipity_printSidebar Smarty function in scope: include/functions_smarty.inc.php end -->

</span>
</p>

<p class="desc citem-desc">
<span class="tag-box invisible">
    <span class="inline-tag">Hooks</span>
    <span class="inline-tag">Events</span>
</span>
<code class="item smarty function">{serendipity_hookPlugin}</code>
<span class="smarty-doc"><em>Zugewiesen in:</em> <code class="file">include/functions_smarty.inc.php</code></span>
<span class="label invisible" id="serendipity-hookPlugin">serendipity-hookPlugin</span>
<span class="desc-info">
    <span class="box">
        Über die Funktion <code class="item smarty">{$serendipity_hookPlugin}</code> kann ein internes Ereignis
        (<code>Hook</code>) ausgeführt werden. Dies führt dazu, dass Serendipity alle
        installierten Ereignis-Plugins durchgeht und prüft, ob das jeweilige Plugin für
        den gewünschten <code>Hook</code> eine Funktionalität ausführen möchte. Die Rückgaben
        dieser Funktionalität (meist HTML-Ausgaben) werden daraufhin direkt ausgegeben.
    </span>

    <span class="box">
        Diese Funktion dient beispielsweise dazu, um die Ausgaben von zusätzlichen
        Ereignis-Plugins in den HTML-Kopfbereich (bspw. <code>Meta-Tags</code>) umzusetzen,
        aber auch für zahlreiche andere interne Serendipity-Funktionen, wo sich Plugins
        einklinken können.
    </span>

    <span class="box">
        Intern ruft diese Funktion die Serendipity-API-Funktion
        <code>serendipity_plugin_api::hook_event()</code> auf.
    </span>

    <span class="box mda-box">

        <span class="box"><code class="sub-item smarty">hook</code> (Pflicht)
            <span class="sub-box">
                <span class="smarty-type"><em>Variablentyp:</em> <code class="type"></code></span>
            </span>
            <span class="sub-box">
                Enthält den Namen des auszuführenden Ereignisses (<code>Hook</code>). Standardmäßig
                sind hier nur die Hooks <code>frontend_header</code>, <code>entries_header</code>,
                <code>entries_footer</code>, <code>frontend_comment</code> oder <code>frontend_footer</code>
                zulässig.
            </span>
        </span>

        <span class="box"><code class="sub-item smarty">hookAll</code> (optional)
            <span class="sub-box">
                <span class="smarty-type"><em>Variablentyp:</em> <code class="type"></code></span>
            </span>
            <span class="sub-box">
                Wenn dieser Parameter auf den Wert <code>true</code> gesetzt wird, können auch
                beliebige andere Hooks als die oben aufgeführten ausgeführt werden. So können
                Sie selbständig Hooks zu Serendipity-Templates hinzufügen und mit eigenen
                oder angepassten Ereignis-Plugins ausführen.
            </span>
        </span>

        <span class="box"><code class="sub-item smarty">data</code> (optional)
            <span class="sub-box">
                <span class="smarty-type"><em>Variablentyp:</em> <code class="type"></code></span>
            </span>
            <span class="sub-box">
                Enthält ein beliebiges Array mit Daten, die an das Ereignis-Plugin
                weitergeleitet werden. Diese Daten sind für jeden Hook unterschiedlich. Die
                übergebenen Daten werden von einem Plugin zum nächsten als referenzierte
                Variable weitergegeben und können daher von Plugins beliebig modifiziert werden.
                Die Variable verliert nach dem Durchlauf der zugehörigen Plugins ihren
                Wert. Falls die Variable jedoch später nochmal verarbeitet werden soll, wird
                der Einsatz des Smarty-Modifiers <code class="item smarty modifier">{serendipity_refhookPlugin}</code> (siehe
                Seite <span class="pageref"><a href="#serendipity_refhookPlugin">serendipity_refhookPlugin</a></span>) empfohlen.
            </span>
        </span>

        <span class="box"><code class="sub-item smarty">addData</code> (optional)
            <span class="sub-box">
                <span class="smarty-type"><em>Variablentyp:</em> <code class="type"></code></span>
            </span>
            <span class="sub-box">
                Enthält ein beliebiges Array mit Daten, die zusätzlich an das Ereignis-Plugin
                weitergeleitet werden. Im Gegensatz zu den Daten aus <code>data</code> können Plugins auf
                <code>addData</code> nur lesend zugreifen.
            </span>
        </span>

        <span class="box"><span class="mbold">Rückgabewert:</span>
            <span class="sub-box">
                <span class="smarty-type"><em>Variablentyp:</em> <code class="type"></code></span>
            </span>
            <span class="sub-box">
                HTML-Zeichenkette (falls vorhanden)
            </span>
        </span>


    </span><!-- box mda-box $serendipity_hookPlugin Smarty function in scope: include/functions_smarty.inc.php end -->

</span>
</p>

<p class="desc citem-desc">
<code class="item smarty function">{serendipity_showPlugin}</code>
<span class="smarty-doc"><em>Zugewiesen in:</em> <code class="file">include/functions_smarty.inc.php</code></span>
<span class="label invisible" id="serendipity-showPlugin">serendipity-showPlugin</span>
<span class="tag-box invisible">
    <span class="inline-tag">Seitenleisten-Plugins!in Templates einbinden</span>
</span>
<span class="desc-info">
    <span class="box">
        Gibt die Inhalte eines installierten Seitenleisten-Plugins aus. Dies kann
        unabhängig von der gewohnten Darstellung innerhalb der Seitenleiste erfolgen, so
        dass ein Seitenleisten-Plugin an beliebiger Stelle in einem Template platziert
        werden kann.
    </span>

    <span class="box">
        Diese Smarty-Funktion kann entweder ein ganz spezielles Plugin ausgeben oder
        auch mehrere Plugins derselben Klasse (zB. alle HTML-Klötze).
    </span>

    <span class="box">Parameter:</span>

    <span class="box mda-box">

        <span class="box"><code class="sub-item smarty">class</code> (Pflicht)
            <span class="sub-box">
                <span class="smarty-type"><em>Variablentyp:</em> <code class="type"></code></span>
            </span>
            <span class="sub-box">
                Enthält den PHP-Klassennamen des auszugebenden Plugins, zB.
                <code>serendipity_plugin_quicksearch</code> oder <code>serendipity_plugin_amazon</code>.
                Die Ausgabe beinhaltet alle zutreffenden Plugin-Instanzen dieser Klasse.
            </span>
        </span>

        <span class="box"><code class="sub-item smarty">id</code> (Pflicht)
            <span class="sub-box">
                <span class="smarty-type"><em>Variablentyp:</em> <code class="type"></code></span>
            </span>
            <span class="sub-box">
                Wenn der PHP-Klassenname nicht über <code>class</code> angegeben wird, muss die ID des
                auszugebenden Plugins mittels dieses Parameters gesetzt werden. Als ID wird die
                vollständige Zeichenkette des Plugins, wie sie innerhalb der
                <code>serendipity_plugins</code>-Datenbanktabelle erscheint, eingefügt.
                Beispiel: <code>id="@serendipity_plugin_quicksearch:3embaf334lovest444698egarvo3693f"</code>
            </span>
        </span>

        <span class="box"><code class="sub-item smarty">side</code> (optional)
            <span class="sub-box">
                <span class="smarty-type"><em>Variablentyp:</em> <code class="type"></code></span>
            </span>
            <span class="sub-box">
                Seitenleisten-Plugins sind üblicherweise einer direkten Seitenleiste (links,
                rechts, versteckt ...) zugewiesen. Falls Sie nur Plugins einer bestimmten
                Leiste ausgeben wollen, können Sie den Namen dieser Leiste (<code>left, right,
                hide</code>) mit dem Parameter <code>side</code> festlegen.
                Diese Namensverwirrung für den <code>hidden</code>-Typ
                ist wohl historisch bedingt und hat leider in viele bisherige Dokumentationen Eingang gefunden.
                Eigentlich ist der interne Name <code>hidden</code> und wird intern auch so verrechnet.
                Sie müssen aber <code>hide</code> verwenden. Sehen Sie dies einfach zur Unterscheidung
                als verwendeten Frontend-Typ. Standardmäßig ist dieser Wert
                auf <code>*</code> gesetzt und liest alle Seitenleisten aus.
            </span>
        </span>

        <span class="box"><code class="sub-item smarty">negate</code> (optional)
            <span class="sub-box">
                <span class="smarty-type"><em>Variablentyp:</em> <code class="type"></code></span>
            </span>
            <span class="sub-box">
                Wenn dieser Wert auf <code>true</code> gesetzt wird, kehrt dies die Auswahl der
                auszugebenden Seitenleisten-Plugins um. Anstatt nur die Plugins einer bestimmten
                Klasse auszugeben, werden stattdessen alle Plugins <em>außer</em> der
                festgelegten Klasse/ID ausgegeben.
            </span>
        </span>

        <span class="box"><span class="mbold">Rückgabewert:</span>
            <span class="sub-box">
                <span class="smarty-type"><em>Variablentyp:</em> <code class="type"></code></span>
            </span>
            <span class="sub-box">
                HTML-Zeichenkette (<code>sidebars.tpl</code>)
            </span>
        </span>

    </span><!-- box mda-box $serendipity_showPlugin Smarty function in scope: include/functions_smarty.inc.php end -->

</span>
</p>

<p class="desc citem-desc">
<code class="item smarty function">{serendipity_getFile}</code>
<span class="smarty-doc"><em>Zugewiesen in:</em> <code class="file">include/functions_smarty.inc.php</code></span>

<span class="desc-info">
    <span class="box">
        Liefert den vollständigen Pfad zum Template-Verzeichnis einer beliebigen Datei.
        Mithilfe dieser Funktion können die URLs für Grafiken und Weiteres automatisch
        und template-unabhängig zusammengebaut werden, so dass Sie keine absoluten URLs
        in einer Smarty-Template-Datei einbinden müssen.
    </span>

    <span class="box">
        Liegt <code>header.gif</code> im Verzeichnis <code>templates/bulletproof/img</code>
        und wollen Sie diese in der Template-Datei <code>index.tpl</code> einbauen,
        müssen Sie nicht <code>&lt;img
        src="/blog/templates/bulletproof/img/header.gif" /&gt;</code> eintragen, sondern <code>&lt;img
        src="{serendipity_getFile file="img/header.gif"}" /&gt;</code>. Dadurch kann das
        Template später auch mit anderen Verzeichnisstrukturen eingesetzt werden.
    </span>

    <span class="box">Parameter:</span>

    <span class="box mda-box">

        <span class="box"><code class="sub-item smarty">file</code> (Pflicht)
            <span class="sub-box">
                <span class="smarty-type"><em>Variablentyp:</em> <code class="type"></code></span>
            </span>
            <span class="sub-box">
                Hiermit geben Sie an, welchen Dateinamen (und etwaige Unterverzeichnisse ab dem Stammverzeichnis des Templates) Sie im Template einbinden wollen.
            </span>
        </span>

        <span class="box"><span class="mbold">Rückgabewert:</span>
            <span class="sub-box">
                <span class="smarty-type"><em>Variablentyp:</em> <code class="type"></code></span>
            </span>
            <span class="sub-box">
                Zeichenkette (vollständiger Pfad zum gewünschten Bild)
            </span>
        </span>

    </span><!-- box mda-box $serendipity_getFile Smarty function in scope: include/functions_smarty.inc.php end -->

</span>
</p>

<p class="desc citem-desc">
<code class="item smarty function">{serendipity_printComments}</code>
<span class="smarty-doc"><em>Zugewiesen in:</em> <code class="file">include/functions_smarty.inc.php</code></span>

<span class="desc-info">
    <span class="box">
        Stellt die Liste aller Kommentare für einen Eintrag dar.
    </span>

    <span class="box">Parameter:</span>

    <span class="box mda-box">

        <span class="box"><code class="sub-item smarty">entry</code> (Pflicht)
            <span class="sub-box">
                <span class="smarty-type"><em>Variablentyp:</em> <code class="type"></code></span>
            </span>
            <span class="sub-box">
                Enthält die ID des Blog-Artikels, für den die Kommentare dargestellt werden sollen.
            </span>
        </span>

        <span class="box"><code class="sub-item smarty">mode</code> (optional)
            <span class="sub-box">
                <span class="smarty-type"><em>Variablentyp:</em> <code class="type"></code></span>
            </span>
            <span class="sub-box">
                Legt fest, ob die Artikel hierarchisch (<code>$CONST.VIEWMODE_THREADED</code> also "threaded") oder
                chronologisch (<code>$CONST.VIEWMODE_LINEAR</code> also "linear") dargestellt werden sollen.
                Verwirrend kann aber sein, dass für Letzteres beispielsweise trotz einer Gesamtzahl von 10 Kommentaren
                ein gegebenes limit=5 in der Ausgabe durchaus weniger Kommentare anzeigen kann, je nachdem,
                wie die Kommentare in den eventuellen Kommentarsträngen verteilt sind. Ein " mode=linear" ist hier
                also vorzuziehen.
            </span>
        </span>

        <span class="box"><code class="sub-item smarty">order</code> (optional)
            <span class="sub-box">
                <span class="smarty-type"><em>Variablentyp:</em> <code class="type"></code></span>
            </span>
            <span class="sub-box">
                Legt die Reihenfolge fest, mit der die Kommentare ausgegeben werden (<code>ASC</code>
                für aufsteigende Sortierung, <code>DESC</code> für absteigende).
                Auch hier kann es verwirrend sein, dass die (gegenteilige) Sortierung gegebenfalls
                andere Kommentare ausgibt, wenn ein begrenzendes limit mit einem linear mode geordert wird.
            </span>
        </span>

        <span class="box"><code class="sub-item smarty">limit</code> (optional)
            <span class="sub-box">
                <span class="smarty-type"><em>Variablentyp:</em> <code class="type"></code></span>
            </span>
            <span class="sub-box">
                Begrenzt die Anzahl der dargestellten Kommentare auf den gewünschten Wert
                (standardmäßig alle Kommentare).
            </span>
        </span>

        <span class="box"><span class="mbold">Rückgabewert:</span>
            <span class="sub-box">
                <span class="smarty-type"><em>Variablentyp:</em> <code class="type"></code></span>
            </span>
            <span class="sub-box">
                HTML-Zeichenkette (<code>comments.tpl</code>)
            </span>
        </span>

    </span><!-- box mda-box $serendipity_printComments Smarty function in scope: include/functions_smarty.inc.php end -->

</span>
</p>

<p class="desc citem-desc">
<code class="item smarty function">{serendipity_printTrackbacks}</code>
<span class="smarty-doc"><em>Zugewiesen in:</em> <code class="file">include/functions_smarty.inc.php</code></span>

<span class="desc-info">
    <span class="box">
        Stellt die Liste aller Trackbacks für einen Eintrag dar.
    </span>

    <span class="box">Parameter:</span>

    <span class="box mda-box">

        <span class="box"><code class="sub-item smarty">entry</code> (Pflicht)
            <span class="sub-box">
                <span class="smarty-type"><em>Variablentyp:</em> <code class="type"></code></span>
            </span>
            <span class="sub-box">
                Enthält die ID des Blog-Artikels, für den die Trackbacks dargestellt werden sollen.
            </span>
        </span>

        <span class="box"><span class="mbold">Rückgabewert:</span>
            <span class="sub-box">
                <span class="smarty-type"><em>Variablentyp:</em> <code class="type"></code></span>
            </span>
            <span class="sub-box">
                HTML-Zeichenkette (<code>trackbacks.tpl</code>)
            </span>
        </span>

    </span><!-- box mda-box $serendipity_printTrackbacks Smarty function in scope: include/functions_smarty.inc.php end -->

</span>
</p>

<p class="desc citem-desc">
<code class="item smarty function">{serendipity_rss_getguid}</code>
<span class="smarty-doc"><em>Zugewiesen in:</em> <code class="file">include/functions_smarty.inc.php</code></span>

<span class="desc-info">
    <span class="box">
        Wird von Feed-Template-Dateien (<code>feed\*.tpl</code>) verwendet, um einen eindeutigen
        Permalink zu einem einzelnen Blog-Artikel zu erzeugen und zurückzuliefern.
    </span>

    <span class="box">Parameter:</span>

    <span class="box mda-box">

        <span class="box"><code class="sub-item smarty">entry</code> (Pflicht)
            <span class="sub-box">
                <span class="smarty-type"><em>Variablentyp:</em> <code class="type"></code></span>
            </span>
            <span class="sub-box">
                Enthält die ID des Blog-Artikels, zu dem der Permalink zurückgegeben werden soll.
            </span>
        </span>

        <span class="box"><code class="sub-item smarty">is_comments</code> (Pflicht)
            <span class="sub-box">
                <span class="smarty-type"><em>Variablentyp:</em> <code class="type"></code></span>
            </span>
            <span class="sub-box">
                Bei der Darstellung von Kommentar-Feeds muss dieser Parameter auf <code>true</code>
                gesetzt werden, damit der korrekte Permalink zum zugehörigen Blog-Artikel
                bezogen werden kann.
            </span>
        </span>

        <span class="box"><span class="mbold">Rückgabewert:</span>
            <span class="sub-box">
                <span class="smarty-type"><em>Variablentyp:</em> <code class="type"></code></span>
            </span>
            <span class="sub-box">
                Zeichenkette (Link zum Blog-Artikel)
            </span>
        </span>

    </span><!-- box mda-box $serendipity_rss_getguid Smarty function in scope: include/functions_smarty.inc.php end -->

</span>
</p>

<p class="desc citem-desc">
<code class="item smarty function">{serendipity_getTotalCount}</code>
<span class="smarty-doc"><em>Zugewiesen in:</em> <code class="file">include/functions_smarty.inc.php</code></span>

<span class="desc-info">
    <span class="box">
        Kann die gesamte Anzahl an Blog-Artikeln, Kommentaren oder Trackbacks (abhängig
        vom Parameter <code>what</code>) darstellen.
    </span>

    <span class="box">Parameter:</span>

    <span class="box mda-box">

        <span class="box"><code class="sub-item smarty">what</code> (Pflicht)
            <span class="sub-box">
                <span class="smarty-type"><em>Variablentyp:</em> <code class="type"></code></span>
            </span>
            <span class="sub-box">
                Kann entweder <code>entries</code> (Blog-Artikel) , <code>trackbacks</code> oder
                <code>comments</code> als Wert enthalten und bestimmt, welche Zahl
                zurückgeliefert wird.
            </span>
        </span>

        <span class="box"><span class="mbold">Rückgabewert:</span>
            <span class="sub-box">
                <span class="smarty-type"><em>Variablentyp:</em> <code class="type"></code></span>
            </span>
            <span class="sub-box">
                Zahl
            </span>
        </span>

    </span><!-- box mda-box $serendipity_getTotalCount Smarty function in scope: include/functions_smarty.inc.php end -->

</span>
</p>
<p class="desc citem-desc">
<code class="item smarty function">{serendipity_pickKey}</code>
<span class="smarty-doc"><em>Zugewiesen in:</em> <code class="file">include/functions_smarty.inc.php</code></span>
<span class="desc-info">
    <span class="box">
        Da Smarty-Arrays von der Notation der PHP-Arrays abweichen, kann man innerhalb
        der Smarty-Syntax keine Array-Schlüssel angeben, die in einer weiteren Variable
        benannt sind. Folgendes wäre daher nicht möglich:
    </span>

    <span class="box">
        <span id="pre-style"><code class="smarty">
            Eintrag: {$entries.$latest_entry}
        </code></span>
    </span>

    <span class="box">
        Stattdessen wurde die Serendipity-Smarty-Funktion <code>serendipity_pickKey</code>
        eingeführt. Mit dieser kann ein gewünschter Array-Wert zurückgeliefert werden:
    </span>

    <span class="box">
        <span id="pre-style"><code class="smarty">
            Eintrag: {serendipity_pickKey array=$entries key=$latest_entry}
        </code></span>
    </span>

    <span class="box">Parameter:</span>

    <span class="box mda-box">

        <span class="box"><code class="sub-item smarty">array</code> (Pflicht)
            <span class="sub-box">
                <span class="smarty-type"><em>Variablentyp:</em> <code class="type"></code></span>
            </span>
            <span class="sub-box">
                Enthält das Array, aus dem ein Wert zurückgeliefert werden soll.
            </span>
        </span>

        <span class="box"><code class="sub-item smarty">key</code> (Pflicht)
            <span class="sub-box">
                <span class="smarty-type"><em>Variablentyp:</em> <code class="type"></code></span>
            </span>
            <span class="sub-box">
                Enthält den Namen des Array-Schlüssels, zu dem der Wert zurückgeliefert werden soll.
            </span>
        </span>

        <span class="box"><code class="sub-item smarty">default</code> (optional)
            <span class="sub-box">
                <span class="smarty-type"><em>Variablentyp:</em> <code class="type"></code></span>
            </span>
            <span class="sub-box">
                Falls kein Array-Schlüssel gefunden wird, kann anstelle eines leeren Wertes ein
                anderer Standard-Array-Schlüssel zurückgeliefert werden.
            </span>
        </span>

        <span class="box"><span class="mbold">Rückgabewert:</span>
            <span class="sub-box">
                <span class="smarty-type"><em>Variablentyp:</em> <code class="type"></code></span>
            </span>
            <span class="sub-box">
                Array-Wert
            </span>
        </span>

    </span><!-- box mda-box $serendipity_pickKey Smarty function in scope: include/functions_smarty.inc.php end -->

</span>
</p>

<p class="desc citem-desc">
<code class="item smarty function">{serendipity_showCommentForm}</code>
<span class="smarty-doc"><em>Zugewiesen in:</em> <code class="file">include/functions_smarty.inc.php</code></span>
<span class="desc-info">
    <span class="box">
        Stellt das Kommentarformular für einen Beitrag dar.
    </span>

    <span class="box">Parameter:</span>

    <span class="box mda-box">

        <span class="box"><code class="sub-item smarty">id</code> oder <code>entry</code> (Pflicht)
            <span class="sub-box">
                <span class="smarty-type"><em>Variablentyp:</em> <code class="type"></code></span>
            </span>
            <span class="sub-box">
                Enthält die ID des Blog-Artikels, für den das Kommentarformular dargestellt werden soll.
            </span>
        </span>

        <span class="box"><code class="sub-item smarty">url</code> (optional)
            <span class="sub-box">
                <span class="smarty-type"><em>Variablentyp:</em> <code class="type"></code></span>
            </span>
            <span class="sub-box">
                Enthält die URL, an die die Inhalte des Kommentarformulars übermittelt werden
                sollen. Zeigt standardmäßig auf die Detailseite des Blog-Artikels.
            </span>
        </span>

        <span class="box"><code class="sub-item smarty">comments</code> (optional)
            <span class="sub-box">
                <span class="smarty-type"><em>Variablentyp:</em> <code class="type"></code></span>
            </span>
            <span class="sub-box">
                Kann ein Array mit bereits vorhandenen Kommentaren zum Blog-Artikel enthalten.
                Falls nicht angegeben, wird dies automatisch aus der Datenbank bezogen.
            </span>
        </span>

        <span class="box"><code class="sub-item smarty">data</code> (optional)
            <span class="sub-box">
                <span class="smarty-type"><em>Variablentyp:</em> <code class="type"></code></span>
            </span>
            <span class="sub-box">
                Enthält die Eingaben des Benutzers im Kommentarformular (<code>POST</code>-Daten).
            </span>
        </span>

        <span class="box"><code class="sub-item smarty">showToolbar</code> (optional)
            <span class="sub-box">
                <span class="smarty-type"><em>Variablentyp:</em> <code class="type"></code></span>
            </span>
            <span class="sub-box">
                Wenn auf <code>true</code> gesetzt, werden zusätzliche Felder im Kommentarformular
                angezeigt, mit dem ein Benutzer bestimmt, ob zusätzliche Felder
                eingebunden werden sollen. Wird als Smarty-Variable <code class="item smarty">{$is_commentform_showToolbar}</code>
                weitergereicht (siehe Seite <span class="pageref"><a href="#commentformshowtoolbar">commentformshowtoolbar</a></span>).
            </span>
        </span>

        <span class="box"><code class="sub-item smarty">moderate_comments</code> (optional)
            <span class="sub-box">
                <span class="smarty-type"><em>Variablentyp:</em> <code class="type"></code></span>
            </span>
            <span class="sub-box">
                Gibt an, ob Kommentare zu einem Blog-Artikel moderiert werden. Standardmäßig
                wird diese Variable entsprechend der Einstellung des jeweiligen Blog-Artikels gesetzt.
            </span>
        </span>

        <span class="box"><span class="mbold">Rückgabewert:</span>
            <span class="sub-box">
                <span class="smarty-type"><em>Variablentyp:</em> <code class="type"></code></span>
            </span>
            <span class="sub-box">
                HTML-Zeichenkette (<code>commentform.tpl</code>)
            </span>
        </span>

    </span><!-- box mda-box $serendipity_showCommentForm Smarty function in scope: include/functions_smarty.inc.php end -->

</span>
</p>

<p class="desc citem-desc">
<code class="item smarty function">{serendipity_fetchPrintEntries}</code>
<span class="smarty-doc"><em>Zugewiesen in:</em> <code class="file">include/functions_smarty.inc.php</code></span>
<span class="label invisible" id="fetchprintentries">fetchprintentries</span>
<span class="desc-info">
    <span class="box">
        Mittels der Smarty-Funktion kann eine
        Liste von Blog-Einträgen innerhalb beliebiger Smarty-Template-Dateien erzeugt
        werden. So können auch mehrere Eintragsauflistungen pro Seite eingefügt werden.
    </span>

    <span class="box">
        Intern ist die Funktion recht komplex gebaut. Anhand der Funktionsparameter
        werden die gewünschten Blog-Einträge ausgelesen, ausgewertet und dann über eine
        beliebige Template-Datei (standardmäßig <code>entries.tpl</code>) geparst und zurückgeliefert.
    </span>

    <span class="box">Parameter:</span>

    <span class="box mda-box">

        <span class="box"><code class="sub-item smarty">category</code> (optional)
            <span class="sub-box">
                <span class="smarty-type"><em>Variablentyp:</em> <code class="type"></code></span>
            </span>
            <span class="sub-box">
                Legt die Kategorie-ID fest, aus der die Blog-Artikel gelesen werden sollen. Ohne
                eine Angabe werden alle Kategorien ausgelesen. Mehrere Kategorien können mittels
                Semikolon voneinander getrennt werden.
            </span>
        </span>

        <span class="box"><code class="sub-item smarty">viewAuthor</code> (optional)
            <span class="sub-box">
                <span class="smarty-type"><em>Variablentyp:</em> <code class="type"></code></span>
            </span>
            <span class="sub-box">
                Legt die Redakteurs-ID fest, vom der die Blog-Artikel gelesen werden sollen. Ohne
                eine Angabe werden die Blog-Artikel aller Redakteure berücksichtigt.
                Mehrere IDs können mittels Semikolon voneinander getrennt werden.
            </span>
        </span>

        <span class="box"><code class="sub-item smarty">page</code> (optional)
            <span class="sub-box">
                <span class="smarty-type"><em>Variablentyp:</em> <code class="type"></code></span>
            </span>
            <span class="sub-box">
                Wenn die Liste der Blog-Artikel mehr als eine Seite ausfüllt [*]
                <span class="footnote"><i class="fa fa-info-circle"></i> Die Anzahl der Artikel
                pro Seite wird bestimmt durch den <code>limit</code>-Parameter.</span><!-- footnote -->, bestimmt der Parameter
                <code>page</code> die Seitennummer, die aktuell angezeigt wird.
                Sollten insgesamt 20 Artikel gefunden und 10 Artikel pro Seite
                dargestellt werden, dann würde der Wert <code>2</code> im <code>page</code>-Parameter dafür
                sorgen, dass die Artikel 11-20 angezeigt werden.
            </span>
        </span>

        <span class="box"><code class="sub-item smarty">id</code> (optional)
            <span class="sub-box">
                <span class="smarty-type"><em>Variablentyp:</em> <code class="type"></code></span>
            </span>
            <span class="sub-box">
                Falls ein einzelner Artikel angezeigt werden soll, enthält dieser Parameter die
                ID des Blog-Eintrags.
            </span>
        </span>

        <span class="box"><code class="sub-item smarty">range</code> (optional)
            <span class="sub-box">
                <span class="smarty-type"><em>Variablentyp:</em> <code class="type"></code></span>
            </span>
            <span class="sub-box">
                Kann die Liste der Artikel auf einen gewissen Zeitraum einschränken. Der
                Parameter kann entweder einen Wert wie JJJJMMTT (Jahr, Monat, Tag) enthalten, um
                nur die Artikel eines Tages darzustellen (zB. <code>20071224</code> für den 24.12.2007).
                Ein ganzer Monat wird über einen Wert wie <code>20071200</code> angezeigt.
            </span>
            <span class="sub-box">
                Alternativ kann der Parameter ein Array enthalten, dessen Array-Schlüssel 0 und 1
                jeweils einen Unix-Zeitstempel für den Start- und Endzeitpunkt bestimmen.
            </span>
            <span class="sub-box">
                Wird die Variable leer gelassen oder auf <code>null</code> gesetzt, werden die aktuellsten
                Einträge angezeigt.
            </span>
        </span>

        <span class="box"><code class="sub-item smarty">modified_since</code> (optional)
            <span class="sub-box">
                <span class="smarty-type"><em>Variablentyp:</em> <code class="type"></code></span>
            </span>
            <span class="sub-box">
                Falls der Parameter <code>range</code> leer gelassen wird oder auf <code>null</code> gesetzt
                ist, kann der Parameter einen Unix-Zeitstempel enthalten,
                der das Datum angibt, ab dem alle neuen Artikel ausgelesen werden sollen.
            </span>
        </span>

        <span class="box"><code class="sub-item smarty">full</code> (optional)
            <span class="sub-box">
                <span class="smarty-type"><em>Variablentyp:</em> <code class="type"></code></span>
            </span>
            <span class="sub-box">
                Wenn dieser Parameter auf <code>true</code> gesetzt wird, kann auch der erweiterte
                Eintrag der Blog-Artikel ausgelesen werden. Dies ist besonders wichtig in
                Kombination mit dem <code>id</code>-Parameter.
            </span>
        </span>

        <span class="box"><code class="sub-item smarty">limit</code> (optional)
            <span class="sub-box">
                <span class="smarty-type"><em>Variablentyp:</em> <code class="type"></code></span>
            </span>
            <span class="sub-box">
                Enthält eine Zeichenkette, die angibt, wie viele Blog-Artikel ausgelesen werden
                sollen. Diese Zeichenkette kann entweder eine einzelne Zahl oder eine
                Angabe <code>X, Y</code> enthalten, wobei <code>X</code> für den Index des Artikels steht, ab
                dem Artikel angezeigt werden, und <code>Y</code> für die Anzahl der zu lesenden Beiträge.
                <code>limit='5, 10'</code> würde 10 Artikel ausgeben und die ersten 5 Artikel überspringen.
            </span>
            <span class="sub-box">
                Wird dieser Parameter nicht angegeben, werden so viele Artikel ausgelesen, wie in
                der Konfiguration des Blogs standardmäßig festgelegt
            </span>
        </span>

        <span class="box"><code class="sub-item smarty">fetchDrafts</code> (optional)
            <span class="sub-box">
                <span class="smarty-type"><em>Variablentyp:</em> <code class="type"></code></span>
            </span>
            <span class="sub-box">
                Wenn dieser Parameter auf <code>true</code> gesetzt wird, können auch Blog-Entwürfe
                ausgelesen werden. Standardmäßig werden nur veröffentlichte Artikel
                berücksichtigt.
            </span>
        </span>

        <span class="box"><code class="sub-item smarty">short_archives</code> (optional)
            <span class="sub-box">
                <span class="smarty-type"><em>Variablentyp:</em> <code class="type"></code></span>
            </span>
            <span class="sub-box">
                Wenn auf <code>true</code> gesetzt, erfolgt die Ausgabe der Blog-Artikel nicht wie auf
                den normalen Übersichtsseiten, sondern in einer zusammengefassten Ansicht wie bei
                den chronologischen Archivseiten.
            </span>
        </span>

        <span class="box"><code class="sub-item smarty">orderby</code> (optional)
            <span class="sub-box">
                <span class="smarty-type"><em>Variablentyp:</em> <code class="type"></code></span>
            </span>
            <span class="sub-box">
                Legt die Sortierung der Artikel fest. Dieser Parameter legt den Namen des
                Datenbankschlüssels der involvierten Tabellen fest und entspricht dem SQL
                <code>ORDER BY</code>-Statement. Standardmäßig wird nach dem Veröffentlichungsdatum
                eines Artikels sortiert (<code>e.timestamp</code>).
            </span>
        </span>

        <span class="box"><code class="sub-item smarty">filter_sql</code> (optional)
            <span class="sub-box">
                <span class="smarty-type"><em>Variablentyp:</em> <code class="type"></code></span>
            </span>
            <span class="sub-box">
                Um die Eingrenzung der gewünschten Blog-Artikel feinzusteuern, kann beliebiger
                SQL-Code eingefügt werden, der in der Datenbankabfrage in den <code>WHERE</code>-Teil
                integriert wird.
            </span>
        </span>

        <span class="box"><code class="sub-item smarty">noCache</code> (optional)
            <span class="sub-box">
                <span class="smarty-type"><em>Variablentyp:</em> <code class="type"></code></span>
            </span>
            <span class="sub-box">
                Wenn auf <code>true</code> gesetzt, werden etwaige Caching-Plugins für das Auslesen der
                Blog-Artikel deaktiviert. Dies kann in Problemfällen dabei helfen, die Artikel
                korrekt auszulesen.
            </span>
        </span>

        <span class="box"><code class="sub-item smarty">noSticky</code> (optional)
            <span class="sub-box">
                <span class="smarty-type"><em>Variablentyp:</em> <code class="type"></code></span>
            </span>
            <span class="sub-box">
                Wenn auf <code>true</code> gesetzt, werden sogenannte <em>Dauerhafte Einträge</em> (siehe
                Seite <span class="pageref"><a href="#stickyentries">stickyentries</a></span>) nicht mit ausgelesen.
                Wenn aktuelle Einträge jedoch als <em>Dauerhaft</em> markiert werden, sind sie trotzdem in der Liste
                vorhanden - lediglich ältere dauerhafte Einträge werden nicht wie sonst üblich mit aufgenommen.
            </span>
        </span>

        <span class="box"><code class="sub-item smarty">template</code> (optional)
            <span class="sub-box">
                <span class="smarty-type"><em>Variablentyp:</em> <code class="type"></code></span>
            </span>
            <span class="sub-box">
                Legt den Namen der Smarty-Template-Datei fest, der für die Darstellung der
                Einträge verwendet werden soll. Standardmäßig ist dies <code>entries.tpl</code>.
            </span>
        </span>

        <span class="box"><code class="sub-item smarty">block</code> (optional)
            <span class="sub-box">
                <span class="smarty-type"><em>Variablentyp:</em> <code class="type"></code></span>
            </span>
            <span class="sub-box">
                Legt den Namen der Smarty-Variable fest, die den HTML-Code des geparsten
                Templates enthält. Standardmäßig ist dies <code>ENTRIES</code>, gemäß der zentralen
                Smarty-Variable <code class="smarty">{$ENTRIES}</code>, die über die
                <code>content.tpl</code>-Template-Datei eingebunden wird. Diese Variable sollte
                unbedingt eindeutig sein und wird daher standardmäßig auf
                <code class="item smarty">{$smarty_entries_X}</code> gesetzt, wobei <code>X</code> einer fortlaufenden Zahl
                entspricht, die pro neuem <code>serendipity_fetchPrintEntries</code>-Funktionsaufruf
                erhöht wird.
            </span>
        </span>

        <span class="box"><code class="sub-item smarty">preview</code> (optional)
            <span class="sub-box">
                <span class="smarty-type"><em>Variablentyp:</em> <code class="type"></code></span>
            </span>
            <span class="sub-box">
                Wenn auf <code>true</code> gesetzt, wird der Artikel so behandelt, als würde er im
                Backend als Vorschau angezeigt. Dabei werden einige Plugins deaktiviert,
                die sich andernfalls an den Anfang und das Ende der Artikelübersicht einklinken
                würden.
            </span>
        </span>

        <span class="box"><code class="sub-item smarty">groupmode</code> (optional)
            <span class="sub-box">
                <span class="smarty-type"><em>Variablentyp:</em> <code class="type"></code></span>
            </span>
            <span class="sub-box">
                Diese Variable legt fest, ob die Liste der Artikel nach dem Tag der
                Veröffentlichung gruppiert wird (Wert <code>date</code>, Standard) oder ob die Artikel
                nach Kategorie sortiert dargestellt werden sollen (Wert <code>category</code>).
            </span>
        </span>

        <span class="box"><code class="sub-item smarty">use_hooks</code> (optional)
            <span class="sub-box">
                <span class="smarty-type"><em>Variablentyp:</em> <code class="type"></code></span>
            </span>
            <span class="sub-box">
                Wenn auf <code>true</code> gesetzt, werden Ereignis-Plugins für die Darstellung der
                Einträge wie gewohnt ausgeführt. Enthält der Parameter den Wert
                <code>false</code>, werden diese Plugins temporär übergangen. Dies gilt nur für den
                Aufruf von Textformatierungs-Ereignis-Plugins. Alle weiteren Ereignis-Plugins
                werden weiterhin aufgerufen und können durch den Parameter
                <code>skip_smarty_hooks</code> beeinflusst werden.
            </span>
        </span>

        <span class="box"><code class="sub-item smarty">use_footer</code> (optional)
            <span class="sub-box">
                <span class="smarty-type"><em>Variablentyp:</em> <code class="type"></code></span>
            </span>
            <span class="sub-box">
                Wenn auf <code>true</code> gesetzt, wird der Footer unterhalb der Einträge mit
                Informationen zur Menge der gefundenen Artikel und mit Blättermöglichkeit
                eingebunden.
            </span>
        </span>

        <span class="box"><code class="sub-item smarty">skip_smarty_hooks</code> (optional)
            <span class="sub-box">
                <span class="smarty-type"><em>Variablentyp:</em> <code class="type"></code></span>
            </span>
            <span class="sub-box">
                Um den Aufruf weiterer Ereignis-Plugins bei der Darstellung der Artikel zu
                unterbinden, kann dieser Parameter auf <code>true</code> gesetzt werden. Dieser
                Parameter beeinflusst die globale Variable
                <code class="nobreak">$serendipity['skip_smarty_hooks']</code> (siehe Seite <span class="pageref"><a href="#smartyhooks">smartyhooks</a></span>)
                temporär und wird nach dem Aufruf der Smarty-Funktion
                <code>serendipity_fetchPrintEntries</code> wieder auf den
                ursprünglichen Wert zurückgesetzt.
            </span>
        </span>

        <span class="box"><code class="sub-item smarty">skip_smarty_hook</code> (optional)
            <span class="sub-box">
                <span class="smarty-type"><em>Variablentyp:</em> <code class="type"></code></span>
            </span>
            <span class="sub-box">
                Im Gegensatz zur pauschalen Blockierung aller Ereignis-Plugins kann diese
                Variable ein Array enthalten, das eine Liste aller zu blockierenden Ereignisse
                (<em>Hooks</em>) festlegt. So können gezielt bestimmte Ereignis-Plugins unterdrückt
                werden.
            </span>
        </span>

        <span class="box"><code class="sub-item smarty">select_key</code> (optional)
            <span class="sub-box">
                <span class="smarty-type"><em>Variablentyp:</em> <code class="type"></code></span>
            </span>
            <span class="sub-box">
                Kann eine kommaseparierte Liste von SQL-Tabellenfeldnamen enthalten, die in der
                Ausgabe gesetzt werden sollen. Standardmäßig selektiert Serendipity alle
                benötigten Felder selbständig.
            </span>
        </span>

        <span class="box"><code class="sub-item smarty">group_by</code> (optional)
            <span class="sub-box">
                <span class="smarty-type"><em>Variablentyp:</em> <code class="type"></code></span>
            </span>
            <span class="sub-box">
                Enthält den Tabellenfeldnamen, nach dem die Artikelliste via SQL gruppiert
                werden soll. Standardmäßig wird nach Artikel-ID gruppiert, so dass ein Eintrag
                niemals mehr als einmal in der Liste auftreten kann.
            </span>
        </span>

        <span class="box"><code class="sub-item smarty">returncode</code> (optional)
            <span class="sub-box">
                <span class="smarty-type"><em>Variablentyp:</em> <code class="type"></code></span>
            </span>
            <span class="sub-box">
                Legt fest, ob die Artikelausgabe als ein Datensatz (<code>single</code>) oder
                mehrfach verschachtelt (<code>array</code>) ausgegeben wird. Im Kontext der
                Smarty-Funktion ist grundsätzlich nur der Returncode <code>array</code> sinnvoll.
            </span>
        </span>

        <span class="box"><code class="sub-item smarty">joinauthors</code> (optional)
            <span class="sub-box">
                <span class="smarty-type"><em>Variablentyp:</em> <code class="type"></code></span>
            </span>
            <span class="sub-box">
                Enthält den Wert <code>true</code>, wenn die Metadaten für den Redakteur eines Artikels
                mit ausgelesen werden sollen.
            </span>
        </span>

        <span class="box"><code class="sub-item smarty">joincategories</code> (optional)
            <span class="sub-box">
                <span class="smarty-type"><em>Variablentyp:</em> <code class="type"></code></span>
            </span>
            <span class="sub-box">
                Enthält den Wert <code>true</code>, wenn die Metadaten für die zugewiesenen Kategorien eines
                Artikels mit ausgelesen werden sollen.
            </span>
        </span>

        <span class="box"><code class="sub-item smarty">joinown</code> (optional)
            <span class="sub-box">
                <span class="smarty-type"><em>Variablentyp:</em> <code class="type"></code></span>
            </span>
            <span class="sub-box">
                Kann SQL-Anweisungen enthalten, die den <code>JOIN</code>-Teil der Abfrage nach
                eigenen Wünschen beeinflussen und weitere Tabellen in Betracht ziehen können.
            </span>
        </span>

        <span class="box">
            <span class="label invisible" id="entryproperties-customprop-fetch">entryproperties-customprop-fetch</span>
            <code class="sub-item smarty">entryprops</code> (optional)
            <span class="sub-box">
                <span class="smarty-type"><em>Variablentyp:</em> <code class="type"></code></span>
            </span>
            <span class="sub-box">
                Mit diesem Parameter können Sie eine Liste von zusätzlichen <code>freien
                Eigenschaften</code> (siehe Seite <span class="pageref"><a href="#entryproperties">entryproperties</a></span>) angeben. Daraufhin werden
                nur die Artikel dargestellt, die die gewünschten Eigenschaften enthalten.
                So können Sie dafür sorgen, dass beispielsweise nur Artikel angezeigt werden,
                die keine dauerhaften Einträge darstellen:
            </span>
            <span class="sub-box">
                <span id="pre-style"><code class="smarty">
                    {serendipity_fetchPrintEntries entryprops="ep_is_sticky != 'false'"}
                </code></span>
            </span>
            <span class="sub-box">
                Anderes Beispiel: Wenn Sie eine freie Eigenschaft wie <em>IstArchiviert</em> festgelegt haben
                und dort nur Einträge mit dem Wert <code>1</code> darstellen wollen:
            </span>
            <span class="sub-box">
                <span id="pre-style"><code class="smarty">
                    {serendipity_fetchPrintEntries entryprops="ep_IstArchiviert = '1'"}
                </code></span>
            </span>
            <span class="sub-box">
                Mehrere Eigenschaften können mit Komma voneinander getrennt werden:
            </span>
            <span class="sub-box">
                <span id="pre-style"><code class="smarty">
                    {serendipity_fetchPrintEntries entryprops="ep_IstArchiviert = '1',ep_is_sticky != 'false'"}
                </code></span>
            </span>
            <span class="sub-box">
                Die Smarty-Funktion setzt die notwendigen Bedingungen um und
                schreibt sie in den Parameter <code>joinown</code>, so dass Sie keine eigene
                SQL-JOIN-Bedingung entwickeln müssen.
            </span>
        </span>

        <span class="box"><code class="sub-item smarty">prevent_reset</code> (optional)
            <span class="sub-box">
                <span class="smarty-type"><em>Variablentyp:</em> <code class="type"></code></span>
            </span>
            <span class="sub-box">
                Standardmäßig enthält die Variable den Wert <code>false</code> und sorgt dafür,
                dass die zentrale Smarty-Variable <code class="smarty">{$entries}</code> nicht überschrieben wird.
                Wenn Sie die Funktion <code>serendipity_fetchPrintEntries</code> jedoch dazu
                verwenden, die Standardausgabe von Serendipity zu unterdrücken, müssen Sie den
                Parameter <code>prevent_reset</code> auf <code>true</code> setzen, da Sie andernfalls eine
                doppelte Artikelausgabe erhalten würden.
            </span>
        </span>

        <span class="box"><span class="mbold">Rückgabewert:</span>
            <span class="sub-box">
                <span class="smarty-type"><em>Variablentyp:</em> <code class="type"></code></span>
            </span>
            <span class="sub-box">
                HTML-Zeichenkette (<code>entries.tpl</code>)
            </span>
        </span>

    </span><!-- box mda-box $serendipity_fetchPrintEntries Smarty function in scope: include/functions_smarty.inc.php end -->

</span>
</p>

</section><!-- section.sub end -->

<section id="U964" class="sub">
<span class="u-toc">9.6.4 - Smarty-Modifier</span>

<h3 class="subsection" id="smarty-modifier">Smarty-Modifier</h3>

<p class="tagging invisible">
<span class="tag-box invisible">
    <span class="inline-tag">Template-Modifier</span>
</span>
<span class="label invisible" id="smartymodifier">smartymodifier</span>
</p>

<p>Auf den folgenden Seiten sind alle Smarty-Modifier aufgeführt, die Serendipity
innerhalb der <code>*.tpl</code>-Template-Dateien zur Verfügung stellt.</p>

<p>Ein Modifier wendet eine spezielle Funktion auf eine Variable an und liefert den
Rückgabewert direkt zurück. Im Gegensatz zu einer Smarty-Funktion kann ein
Modifier nicht ohne zugeordnete Variable aufgerufen werden. Modifier können
überall dort eingesetzt werden, wo man Variablen platziert:</p>

<pre><code class="smarty">
    Aktuelles Datum: {$smarty.now|formatTime:'%d.%m.%Y'}
</code></pre>

<p>Der Modifier wird mittels <code>|</code>-Symbol hinter einer Variable (hier als
<em>Stammvariable</em> bezeichnet) aufgeführt.
Modifier können beliebig oft hintereinander verkettet werden, um sie
nacheinander anzuwenden. Einige Modifier können Parameter festlegen, die mittels
Doppelpunkt vom Namen des Modifiers getrennt werden.</p>

<p>Wenn die Smarty-Sicherheit ausgeschaltet ist
(<code class="nobreak">$serendipity['smarty']-&gt;security</code>, siehe Seite <span class="pageref"><a href="#smartysecurity">smartysecurity</a></span>),
können auch alle PHP-Funktionen als Modifier eingesetzt werden. Der erste
Parameter einer derart aufgerufenen PHP-Funktion entspricht dabei immer dem
Wert, der links vom Modifier angegeben wurde. Mit aktivierter Smarty-Sicherheit
sind nur die PHP-Funktionen <code>sprintf, sizeof, count, rand, print_r</code> und
<code>str_repeat</code> aufrufbar.</p>

<p>Das Sonderzeichen <code>@</code> vor dem Aufruf eines Modifiers heißt, dass die davor
aufgeführte Variable einen einzelnen Wert und kein Array enthält. So kann Smarty
den Zugriff auf die Variable geringfügig beschleunigen. Serendipity-Templates
machen von diesem Sonderzeichen regen Gebrauch.</p>

<p>Seit Serendipity 1.7 und Smarty 3 gilt dieses <em>Array</em>-Sonderzeichen nicht mehr.
Alte Templates können, aber müssen nicht unbedingt umgestellt werden. Ansonsten hat dieses Zeichen für Smarty keinerlei Bedeutung mehr, außer
bei den <code>@index</code>, <code>@iteration</code>, <code>@first</code>, <code>@last</code>,
<code>@show</code>, <code>@total</code> Eigenschaften der schon dargestellten neuen <code>foreach</code>-Schleifen Syntax [*]
<span class="footnote"><i class="fa fa-info-circle"></i> <a href="https://www.smarty.net/docs/en/language.function.foreach.tpl" target="_blank" rel="noopener">https://www.smarty.net/docs/en/language.function.foreach.tpl</a></span><!-- footnote -->
So gesehen sollte also oben aufgeführter Beispiel Modifier als <code>Aktuelles Datum: {$smarty.now|formatTime:'%d.%m.%Y'}</code> geschrieben werden,
wenn das Template nicht mehr mit Smarty2 Versionen kompiliert wird.
</p>

<p class="desc citem-desc">
<code class="item smarty modifier">{$foo|emit_htmlarea_code}</code>
<span class="smarty-doc"><em>Zugewiesen in:</em> <code class="file">include/functions_entries_admin.inc.php</code>, <code class="item function">serendipity_printEntryForm()</code></span>

<span class="desc-info">
    <span class="box">
        Gibt den nötigen JavaScript-Code aus, der vom Artikeleditor benötigt wird, um
        den WYSIWYG-Editor darzustellen. Dieser Modifier spricht die
        Serendipity-Funktion <code>serendipity_emit_htmlarea_code</code> an
        (<code>include/functions_entries_admin.inc.php</code>) und nimmt den
        Namen des jeweils zu konvertierenden Formularelements als Stammvariable an.
    </span>

</span>
</p>

<p class="desc citem-desc">
<code class="item smarty modifier">{$foo|makeFilename}</code>
<span class="smarty-doc"><em>Zugewiesen in:</em> <code class="file">include/functions_smarty.inc.php</code></span>

<span class="desc-info">
    <span class="box">
        Konvertiert eine Stammvariable (Zeichenkette) so, dass sie innerhalb einer URL
        eingesetzt werden kann. Etwaige Sonderzeichen werden dabei automatisch
        konvertiert. Wenn der erste Parameter den Wert <code>true</code> enthält, werden Punkte
        in der Zeichenkette entfernt.
    </span>

</span>
</p>

<p class="desc citem-desc">
<code class="item smarty modifier">{$foo|xhtml_target}</code>
<span class="smarty-doc"><em>Zugewiesen in:</em> <code class="file">include/functions_smarty.inc.php</code></span>

<span class="desc-info">
    <span class="box">
        Gibt XHTML-gültigen Code zum Öffnen eines Popup-Fensters aus. Die Rückgabe
        enthält ein <code>onclick="..."</code>-Attribut, das innerhalb eines HTML-Tags wie
        <code>&lt;a&gt;</code> eingebunden werden kann.
    </span>

</span>
</p>

<p class="desc citem-desc">
<code class="item smarty modifier">{$foo|emptyPrefix}</code>
<span class="smarty-doc"><em>Zugewiesen in:</em> <code class="file">include/functions_smarty.inc.php</code></span>

<span class="desc-info">
    <span class="box">
        Prüft, ob die Stammvariable einen Wert enthält. Wenn dies der Fall ist, liefert
        der Modifier als Ergebnis eine vorangestellte Zeichenkette und erst dann den
        Wert (bei dem sämtliche HTML-Sonderzeichen escaped werden).
    </span>
    <span class="box">
        Wenn <code class="item smarty">{$blogTitle}</code> beispielsweise den Wert <code>Dollhouse</code>
        enthält, erreicht man mit dem Smarty-Befehl
        <code class="item smarty">{$blogTitle|emptyPrefix:'Blogtitel - '}</code> die Ausgabe <code>Blogtitel -
        Dollhouse</code>. Wäre der Wert der Variable leer, würde auch das Präfix
        <code>Blogtitel -</code> nicht angezeigt.
    </span>

</span>
</p>

<p class="desc citem-desc">
<code class="item smarty modifier">{$foo|formatTime}</code>
<span class="smarty-doc"><em>Zugewiesen in:</em> <code class="file">include/functions_smarty.inc.php</code></span>

<span class="desc-info">
    <span class="box">
        Formatiert eine Stammvariable mit Unix-Sekunden-Wert in eine lesbare Zeit. Der
        erste Parameter enthält dabei die Platzhalter für das Ausgabeformat (siehe
        <code>https://www.php.net/manual/de/function.date.php</code>). Der Platzhalter kann dabei auch PHP-Konstanten
        enthalten, die ein Datum festlegen (bspw. <code>$CONST.DATE_FORMAT_ENTRY</code>). Der
        zweite Parameter enthält standardmäßig den Wert <code>true</code>, damit Serendipity
        die Zeitzone des Servers berücksichtigt. Die weiteren Parameter werden für
        interne Sonderfälle benötigt, um die Behandlung ungültiger Zeitstempel und die
        Umgehung der Kalender-Umrechnung festzulegen.
    </span>

</span>
</p>

<p class="desc citem-desc">
<code class="item smarty modifier">{$foo|serendipity_utf8_encode}</code>
<span class="smarty-doc"><em>Zugewiesen in:</em> <code class="file">include/functions_smarty.inc.php</code></span>

<span class="desc-info">
    <span class="box">
        Wandelt eine Zeichenkette in den UTF-8-Zeichensatz.
    </span>

</span>
</p>

<p class="desc citem-desc">
<code class="item smarty modifier">{$foo|ifRemember}</code>
<span class="smarty-doc"><em>Zugewiesen in:</em> <code class="file">include/functions_smarty.inc.php</code></span>

<span class="desc-info">
    <span class="box">
        Prüft, ob der Benutzer einen benötigten Wert in einem Cookie gespeichert hat. Die Stammvariable legt
        dabei den Namen des Cookies fest, das geprüft werden soll. Der erste Parameter
        enthält den Inhalt, auf den ein Cookie geprüft wird. Der zweite Parameter legt
        fest, ob, wenn ein Cookie keine Daten enthält, der übermittelte Prüfwert
        zurückgeliefert werden soll. Der dritte Parameter gibt den Namen des
        HTML-Attributs aus, der zurückgeliefert wird.
    </span>
    <span class="box">
        Diese Funktion wird vor allem für die Darstellung der Mediathek-Übersicht
        verwendet, um die Standardzustände von Auswahlfeldern und Ankreuzboxen festzulegen.
    </span>

</span>
</p>

<p class="desc citem-desc">
<code class="item smarty modifier">{$foo|checkPermission}</code>
<span class="smarty-doc"><em>Zugewiesen in:</em> <code class="file">include/functions_smarty.inc.php</code></span>

<span class="desc-info">
    <span class="box">
        Prüft, ob ein Benutzer aufgrund seiner Mitgliedschaft in den
        Autor-Benutzergruppen ein bestimmtes Recht hat. Als Stammvariable dient der Name
        des zu prüfenden Rechts (zB. <code>adminUsersMaintainOthers</code>). Als erster
        Parameter gilt die ID des Redakteurs, für den das Recht geprüft werden soll
        (standardmäßig auf die ID des aktuell eingeloggten Redakteurs gesetzt). Der
        zweite Parameter legt fest, ob der Modifier anstelle von <code>true/false</code> für
        die Prüfung eine Liste aller zugehörigen Gruppen des Redakteurs zurückliefern soll.
    </span>

</span>
</p>

<p class="desc citem-desc">
<span class="label invisible" id="serendipity_refhookPlugin">serendipity_refhookPlugin</span>
<code class="item smarty modifier">{$foo|serendipity_refhookPlugin}</code>
<span class="smarty-doc"><em>Zugewiesen in:</em> <code class="file">include/functions_smarty.inc.php</code></span>

<span class="desc-info">
    <span class="box">
        Der Aufruf der Smarty-Funktion <code class="item smarty smarty-function">{serendipity_hookPlugin}</code> (Seite
        <span class="pageref"><a href="#serendipity-hookPlugin">serendipity-hookPlugin</a></span>) kann die von den Plugins durchgereichten Daten
        (<code>$eventData</code>) nicht als referenzierte Variable weitergeben. Nur Modifier
        können mit referenzierten Variablen arbeiten, daher dient dieser Modifier nur dem
        Zweck, ein Ereignis-Plugin aufzurufen, das mit Smarty-Variablen arbeiten kann. Die
        Template-Dateien des Backends machen von diesem Modifier Gebrauch, um zum
        Beispiel das Login-Formular mit einigen Zusatzausgaben anzureichern.
    </span>
    <span class="box">

    </span>
    <span class="box">
        Die Stammvariable entspricht dabei dem, was als <code>$eventData</code> an die Plugins
        weitergereicht wird. Der erste Parameter des Modifiers gibt den Namen des
        auszuführenden Ereignisses (<code>Hook</code>) an, der zweite Parameter die etwaigen
        Zusatzdaten <code>$addData</code>.
    </span>

</span>
</p>

</section><!-- section.sub end -->

</section><!-- section.index end -->

<section id="S970" class="index">
<span class="s-toc">9.7 - index.tpl, content.tpl und entries.tpl im Detail</span>

<h3 class="section" id="index-tpl-content-tpl-und-entries-tpl-im-detail">index.tpl, content.tpl und entries.tpl im Detail</h3>

<p>Anhand der Variablenliste sollte es Ihnen nun möglich sein, den Hauptaufbau
einer Serendipity-Seite mittels der drei zentralen Template-Dateien
<code>index.tpl</code>, <code>content.tpl</code> und <code>entries.tpl</code> nachzuvollziehen.</p>

<p>Um die Logik der einfachen Smarty-Templates im Schnelldurchlauf kennen zu lernen,
folgt eine kleine Beschreibung mittels der Dateien des Standard-Templates
(<code>templates/default/</code>).</p>

<p>Wir werden diese Zeile für Zeile durchgehen, daher können Sie in einem
Text-Editor Ihrer Wahl die entsprechende Template-Datei öffnen, um die Schritte nachzuvollziehen.</p>

<section id="U971" class="sub">
<span class="u-toc">9.7.1 - index.tpl</span>

<h3 class="subsection" id="index-tpl">index.tpl</h3>

<p class="tagging invisible">
<span class="tag-box invisible">
    <span class="inline-tag">Template-Dateien!index.tpl</span>
</span>
</p>

<p>Über die Datei <code>index.tpl</code> wird das Grundgerüst der HTML-Seite mitsamt Kopf-
und Fußbereich ausgegeben.</p>

<p>Die hier beschriebene Vorgehensweise orientiert sich an der "default/index.tpl" Datei.</p>

<p>Dazu prüft eine Smarty-Abfrage <code class="smarty">{if $is_embedded != true}</code> in der ersten
Zeile, ob die Serendipity-Konfigurationsoption zur eingebetteten Nutzung
aktiviert wurde (siehe Seite <span class="pageref"><a href="#embedding">embedding</a></span>).
Ist dies der Fall, werden alle HTML-Kopfbereiche unterdrückt, und das Template
schreitet erst ab Zeile 33 fort.</p>

<p>Bei standardmäßig deaktivierter eingebetteter Nutzung wurde früher - vor HTML5 - im Folgenden die
Variable <code class="item smarty">{$is_xhtml}</code> geprüft und abhängig davon der entsprechende
HTML <code>&lt;!DOCTYPE&gt;</code>-Tag ausgegeben.</p>

<p>Nach dem doctype header beginnt der <code>&lt;html&gt;</code>- und <code>&lt;head&gt;</code>-Bereich der Seite,
der einige Metadaten wie Seitentitel, Sprache und Links zu den Stylesheets
enthält.</p>

<p>In Zeile 25 wird zB geprüft, ob ein spezieller Trackback-Link eingebettet wird. Die
Variable <code>entry_id</code> ist nur dann gesetzt, wenn im Blog ein einzelner
Artikel angezeigt wird. Andernfalls ist diese Variable leer, und der
entsprechende <code>&lt;link&gt;</code>-HTML-Tag wird nicht ausgegeben.</p>

<p>Kurz vor dem Ende des <code>&lt;head&gt;</code>-Bereichs wird in Zeile 28 ein Aufruf der
Plugin-Schnittstelle mittels <code>serendipity_hookPlugin hook="frontend_header"</code>
durchgeführt. An dieser Stelle werden später etwaige Zusatzausgaben von Plugins
eingebunden. Dieser Plugin-Aufruf findet sich auch in Zeile 33 wieder, damit Plugins auch
dann ausgeführt werden, wenn der Modus zur eingebetteten Nutzung aktiviert wurde.</p>

<p>Eine weitere Abfrage, die den generellen Seitenaufbau betrifft, ist in Zeilen 36-51
zu finden: <code class="smarty">{if $is_raw_mode != true}</code> prüft, ob das Template
im Folgenden seinen eigenen Kopf-Bereich mit Plugin-Seitenleisten ausgeben soll oder
nicht. Diese spezielle Variable wird intern belegt und ist dafür gedacht, um
mittels Plugin-Schnittstelle fremde Seiten in das Serendipity-Layout
einzubinden. Es wird auch verwendet, wenn ein Template aus einer
Serendipity-Version vor 0.7 aktiviert wurde. Dort gab es noch keine
Smarty-Templates, und die Ausgabe erfolgte mittels einer eigenständigen
<span class="tag-box invisible">
    <span class="inline-tag">Template-Dateien!layout.php</span>
</span>
<code>layout.php</code>-Datei. Daher wird im üblichen Fall die Variable
<code class="item smarty">{$is_raw_mode}</code> meist nicht aktiviert werden, so dass Ihr
<code>index.tpl</code>-Template in fast allen Fällen den Bereich zwischen Zeile 33 und
49 auswerten wird. Im aktivierten <em>Roh/Raw-Modus</em> wird der einzubindende
Inhalt über die Variable <code class="item smarty">{$raw_data}</code> (Zeile 53) ausgeliefert.</p>

<p>In Zeile 37 bis 40 wird der Kopfbereich der Seite mitsamt Blog-Titel und
-Beschreibung eingebunden, darauf folgen die Hauptcontainer in Zeilen 42-50, die die
eigentliche Seite in linke Seitenleiste, rechte Seitenleiste und mittleren Inhaltsbereich
aufteilen.</p>

<p>In der linken und rechten Seitenleiste wird in Zeile 44 und 47 vorerst über die
Variablen <code class="item smarty">{$leftSidebarElements}</code> und <code class="item smarty">{$rightSidebarElements}</code>
geprüft, ob die jeweilige Seitenleiste überhaupt Elemente einbindet. Die
Seitenleisten-Zuordnung wird über das Blog-Backend vorgenommen, daher müssen
Templates immer selbständig überprüfen, welche Seitenleisten an welcher Stelle
ausgegeben werden. Dies erfolgt letztlich über den Aufruf
<code class="smarty">{serendipity_printSidebar side="..."}</code>.</p>

<p>Der eigentliche Inhalt des Blogs wird über die Variable <code class="smarty">{$CONTENT}</code>
in Zeile 43 eingebunden. Dieser wird über die folgende Template-Datei
<code>content.tpl</code> bestimmt.</p>

<p>Am Ende von <code>index.tpl</code> in Zeile 54 wird der Fußbereich durch
Plugin-Ausgaben mit <code>serendipity_hookPlugin hook="frontend_footer"</code>
ausgegeben, gefolgt von den schließenden <code>&lt;/body&gt;</code>- und
<code>&lt;/html&gt;</code>-Tags (nur bei deaktivierter eingebetteter Nutzung).</p>

</section><!-- section.sub end -->

<section id="U972" class="sub">
<span class="u-toc">9.7.2 - content.tpl</span>

<h3 class="subsection" id="content-tpl-1">content.tpl</h3>

<p class="tagging invisible">
<span class="tag-box invisible">
    <span class="inline-tag">Template-Dateien!content.tpl</span>
</span>
</p>

<p>Die Template-Datei <code>content.tpl</code> ist letztlich nur ein Verteiler, der
entweder die Artikeldarstellung, Suchergebnisse oder eine Archivübersicht aufruft und
mittels <code class="smarty">{$ENTRIES}</code> und <code class="smarty">{$ARCHIVES}</code> einbindet.</p>


<p>Zusätzlich kann diese Datei für zentrale Ausgaben wie zB. für Suchergebnisse
verwendet werden. Diese Ausgaben werden über Smarty-Variablen innerhalb der Datei
von Zeile 3 bis 17 abgefragt.</p>

</section><!-- section.sub end -->

<section id="U973" class="sub">
<span class="u-toc">9.7.3 - entries.tpl</span>

<h3 class="subsection" id="entries-tpl">entries.tpl</h3>

<p class="tagging invisible">
<span class="tag-box invisible">
    <span class="inline-tag">Template-Dateien!entries.tpl</span>
</span>
</p>

<p>Die <code>entries.tpl</code>-Template-Datei ist die wohl komplexeste und umfangreichste
Template-Datei. Im Gegensatz zu anderen Blog-Systemen verfolgt Serendipity den Ansatz der
kleinstmöglichen Redundanz: Eine Template-Datei wird für alle Fälle der Artikeldarstellung
verwendet, sowohl Einzelbeiträge als auch Eintragsübersichten werden (mittels IF-Abfragen)
über diese Template-Datei gesteuert.</p>

<p>Das Template arbeitet dazu hauptsächlich mit einem großen Array namens
<code class="smarty">{$entries}</code>. Dieses mehrdimensionale Array wird mittels Schleifen
durchlaufen und ausgegeben, daher macht es für das Template keinen Unterschied,
ob in dem Array ein Eintrag oder 200 Einträge enthalten sind.</p>

<p>Die hier beschriebene Vorgehensweise orientiert sich an der "default/entries.tpl" Datei.</p>

<p>Am Anfang wird mit <code>serendipity_hookPlugin hook="entries_header" addData="$entry_id"</code>
dafür gesorgt, dass etwaige Ereignis-Plugins ihre Ausgaben vor der Artikeldarstellung ausliefern können.</p>

<p>Dann wird die erste Schleife <code>{foreach $entries AS $dategroup}</code> über das mehrdimensionale
<code class="smarty">{$entries}</code>-Array ausgegeben. Die erste Dimension enthält die Einträge
gruppiert nach deren Veröffentlichungsdatum. So können Einträge, die zum selben
Tag gehören, auch gemeinsam ausgegeben werden, und pro Datumsgruppe wird nur eine
Datumsüberschrifft dargestellt. Dies muss nicht zwangsläufig so sein, Templates
können die Schleifen auch so anordnen, dass jeder Eintrag eine eigene
Überschrift enthält. Für jeden Schleifen-Durchlauf wird die aktuelle
Datumsgruppe der Variablen <code class="item smarty">{$dategroup}</code> zugewiesen.</p>

<p>Die Zeilen 5 bis 11 regeln diese Ausgabe der Datumsüberschrift in einem eigenen
<code>&lt;div&gt;</code>-Container. Die Variable <code class="item smarty">{$dategroup.is_sticky}</code> wird
abgefragt, damit für dauerhafte Einträge kein Datum, sondern nur eine
Textüberschrift angezeigt wird. Im <code>else</code>-Fall wird das Datum der jeweiligen
Artikelgruppe dargestellt. Dieser Wert liegt in Unix-Sekunden vor und muss
daher über den Smarty-Modifier <code>formatTime</code> erst in ein menschenlesbares
Format überführt werden.</p>

<p>Ab Zeile 12 beginnt nun die innere Schleife, <code>{foreach $dategroup.entries AS $entry}</code>,
die die einzelnen Artikel des <code class="smarty">{$entries}</code>-Array ausliest. Die Artikel
enstammen dabei der Variable <code class="item smarty">{$dategroup.entries}</code>. Pro Durchlauf
der <code>foreach</code>-Schleife wird der aktuell durchlaufene Artikel der Variable
<code class="item smarty">{$entry}</code> zugewiesen, so dass auf dessen Daten mit einfacher,
kurzer Notation zugegriffen werden kann.</p>

<p>Wird die Detailansicht eines Artikels aufgerufen, enthält das Array nur
einen Datensatz, und zusätzlich ist die Variable <code class="item smarty">{$is_single_entry}</code>
gesetzt. Diese Variable wird an mehreren Stellen abgefragt, um die Ansicht
der Detailseite und der Artikelübersicht unterschiedlich zu gestalten.</p>

<p>Zeile 13 setzt das Smarty scoping. Dieser Geltungsbereich [ <em>scope</em> ]
<code>{assign var="entry" value=$entry scope="root"}</code> wäre seit Smarty 3
eigentlich "parent",  muss aber für comment "_self" Ausgaben sogar noch auf "root"
heraufgesetzt werden.</p>

<p>In Zeile 15 wird der Artikeltitel ausgegeben, gefolgt vom Autorennamen in Zeile
17. Falls der Artikel einer oder mehreren Kategorien zugeordnet ist, werden die
Kategoriebilder in Zeile 18 bis 26 in einer Schleife ausgegeben.</p>

<p>Der Artikeltext wird in Zeile 28 bis 36 ausgegeben. Falls der Artikel einen
erweiterten Eintragstext (<code class="item smarty">{$entry.is_extended}</code>) besitzt, wird ein
HTML-Link zur Detailseite dieses Artikels ausgegeben.</p>

<p>Damit der erweiterte Eintrag angezeigt wird, wenn die Detailansicht
aufgerufen wurde, wird die Variable <code class="item smarty">{$entry.extended}</code> in Zeile 36 bis
38 dargestellt.</p>

<p>Die Zeilen 40 bis 73 geben weitere Metadaten eines Artikels in einem Fußbereich
aus: Zugeordnete Kategorien, Anzahl der Einträge, Anzahl der Kommentare und Anzahl der
Trackbacks. Dazu werden jeweils einfache IF-Abfragen auf die entsprechenden
Variablen eingebunden. Fallweise kann die Darstellung der Kommentare als Popup
erfolgen, daher wird die zentrale Konfigurationsvariable <code>use_pops</code> in
einige IF-Abfragen miteinbezogen. Falls der aktuelle Besucher ein eingeloggter
Redakteur ist, wird ihm zusätzlich in Zeilen 68-70 ein Link zum Bearbeiten des
Artikels angeboten. Die Zusatzvariable <code class="item smarty">{$entry.add_footer}</code> enthält
zusätzliche HTML-Ausgaben, die von Ereignis-Plugins stammen.</p>

<p>RDF-Metadaten zur Verwendung für Trackbacks und Suchmaschinen werden in den Zeilen
75 bis 85 dargestellt. Nach diesem Abschnitt dient die Zusatzvariable
<code class="item smarty">{$entry.plugin_display_dat}</code> erneut dazu, weitere Ausgaben von
Ereignis-Plugins einzugliedern.</p>

<p>Ab Zeile 88 bis 119 wird bei der Detailansicht eines Artikels die Liste von
Trackbacks angezeigt. Innerhalb dieses Blocks werden von Zeile 89 bis 107
etwaige Nachrichten eingebunden, falls ein Besucher gerade ein Trackback an die
Artikelseite gesendet hat. Die Liste der Trackbacks erfolgt in Zeile 117 mittels
Smarty-Funktion <code class="smarty">{serendipity_printTrackbacks entry=$entry.id}</code>.</p>

<p>Zeile 121 bis 174 regelt ähnlich wie im vorausgehenden Block die Darstellung der
Kommentare. Hier wird in Zeile 126 bis 132 ein kleiner Auswahlbereich für den
Benutzer angezeigt, damit die Kommentare entweder verschachtelt oder
chronologisch sortiert dargestellt werden können. Abhängig von dieser Auswahl
erfolgt eine Einbindung der Kommentarliste mittels Smarty-Funktion
<code class="smarty">{serendipity_printComments}</code>.</p>

<p>Zeile 136 bis 142 ermöglichen einem eingeloggten Redakteur, den Eintrag für
weitere Kommentare zu sperren oder wieder zu öffnen.</p>

<p>Ab Zeile 145 bis 164 werden Hinweise und Nachrichten für einen Besucher
angezeigt, der gerade einen Kommentar übermittelt hat. Entweder informieren diese
Hinweise über den Erfolg ober die Abweisung des Kommentars, jeweils abhängig
davon, ob Kommentare des Artikels moderiert werden, gesperrt sind oder
Anti-Spam-Maßnahmen zutrafen.</p>

<p>Das Kommentarformular selbst wird über die Variable <code class="item smarty">{$COMMENTFORM}</code> in
Zeile 167 bis 170 eingebunden.</p>

<p>Sollte das Array <code class="smarty">{$entries}</code> einmal keine Artikel enthalten, wird eine
Information zur leeren Artikelliste in Zeile 179 bis 183 ausgegeben. Dieser
<code>else</code>-Fall der <code>foreach</code>-Schleife tritt beispielweise dann ein, wenn
eine Volltextsuche keine Ergebnisse ausliefert oder wenn man die Übersichtsseite
eines Monats aufruft, in dem kein Artikel verfasst wurde.

Im Anschluss an die beiden Schleifen zur Darstellung von Artikeln erfolgt in den
Zeilen 185 bis 199 die Einbindung eines Fußbereichs zum Vor- und Zurückblättern
etwaiger Archivseiten. Auch hier können sich in Zeile 198 etwaige
Ereignis-Plugins einbinden.</p>

<p>Die hier genannten Zeilennummern entsprechen nicht mehr unbedingt den Beispielen neuerer Templates, wie zB. beim "2k11" Standard Theme.</p>

</section><!-- section.sub end -->

</section><!-- section.index end -->

<section id="S980" class="index">
<span class="s-toc">9.8 - Freie Eigenschaften von Artikeln</span>

<h3 class="section" id="freie-eigenschaften-von-artikeln">Freie Eigenschaften von Artikeln</h3>

<p class="tagging invisible">
<span class="tag-box invisible">
    <span class="inline-tag">Freie Eigenschaften</span>
</span>
<span class="label invisible" id="entryproperties-customprop">entryproperties-customprop</span>
</p>

<p>Grundsätzlich bietet Serendipity beim Erstellen eines Artikels nur die
Möglichkeit, die Textbereiche in <em>Eintrag</em> und <em>Erweiterten
Eintrag</em> aufzuteilen. Zusätzlich gibt es Plugins wie <em>Textformatierung:
Eintragsdaten einfügen</em> (siehe Seite <span class="pageref"><a href="#includeentry">includeentry</a></span>),
mit denen man andere Artikel referenzieren oder beliebige Blöcke
(beispielsweise mit Werbung) anhängen kann.</p>

<p>Eine generische und flexible Lösung für eigene Erweiterungen bietet das
Ereignis-Plugin <em>Erweiterte Eigenschaften von Artikeln</em> (siehe Seite
<span class="pageref"><a href="#entryproperties">entryproperties</a></span>).</p>

<p>Mithilfe dieses Plugins können Sie beliebig viele zusätzliche Eingabefelder zu
einem Artikel hinzufügen und später darstellen. Die Anwendungsmöglichkeiten sind
vielfältig: Fügen Sie einen Block mit Werbung hinzu, hängen Sie bestimmten
Artikeln Videos und Bilder an oder erfassen Sie die aktuelle Phase Ihres
persönlichen Mondkalenders.</p>

<p>Zwar könnten Sie solche Zusatzinformationen auch direkt in den normalen Eintrag
einfügen, würden aber dadurch möglicherweise (versehentlich) eine von Artikel
zu Artikel unterschiedliche Formatierung oder Darstellungsweise erhalten;
oder Sie müssten ständig eine große Menge an Vorlage-Code in den Eintrag
übernehmen, damit die benötigten HTML-Formatierungsanweisungen immer identisch
sind.</p>

<p>
<span class="tag-box invisible">
    <span class="inline-tag">entryproperties</span>
</span>
Die <em>Freien Eigenschaften</em> (engl. <em>entryproperties</em>) bieten den
Vorteil, dass Sie nur den rohen Text erfassen müssen und die Darstellung später
anhand Ihres Templates immer an exakt derselben Stelle erfolgt.</p>

<p>Als Beispiel setzen wir uns folgendes Ziel: Zu jedem unserer Artikel wollen wir
neben dem Text auch eine Youtube-Videodatei verlinken können und unsere
aktuelle Stimmung dokumentieren.</p>

<section id="U981" class="sub">
<span class="u-toc">9.8.1 - Plugin installieren</span>

<h3 class="subsection" id="plugin-installieren">Plugin installieren</h3>

<p>Die folgenden Schritte setzen voraus, dass Sie das Ereignis-Plugin
<em>Erweiterte Eigenschaften von Artikeln</em> (siehe Seite
<span class="pageref"><a href="#entryproperties">entryproperties</a></span>)
installiert haben. Wenn dies nicht der Fall ist, richten Sie es im Backend
über <span class="mbold">Einstellungen <span class="icon arrow-right">→</span>
Plugins verwalten <span class="icon arrow-right">→</span> Ereignis-Plugin
installieren</span> ein.</p>

</section><!-- section.sub end -->

<section id="U982" class="sub">
<span class="u-toc">9.8.2 - Freie Eigenschaften anlegen</span>

<h3 class="subsection" id="freie-eigenschaften-anlegen">Freie Eigenschaften anlegen</h3>

<p>Als Erstes müssen Sie die beiden zusätzlichen Eigenschaftsfelder anlegen.
Gehen Sie dazu auf den Menüpunkt <span class="mbold">Einstellungen
<span class="icon arrow-right">→</span> Plugins verwalten</span> und
suchen Sie in der Auflistung der Ereignis-Plugins das Plugin <em>Erweiterte
Eigenschaften von Artikeln</em>. Klicken Sie auf das Blacklist-Symbol, um zur
Konfiguration zu gelangen.</p>

<p>Dort finden Sie die Option <span class="mbold">Freie Felder</span>.
Hier kann man eine Liste von Feldnamen eintragen, die zusätzlich angezeigt
werden sollen. Dazu benötigt das Plugin einen eindeutigen Namen pro Feld,
diesen können Sie frei vergeben. Er darf nur aus einem einzelnen Wort bestehen
und keine Sonderzeichen oder Umlaute enthalten. Für unser Beispiel tragen wir
dort für zwei Felder <span class="mbold">Youtube,Stimmung</span> ein.</p>

</section><!-- section.sub end -->

<section id="U983" class="sub">
<span class="u-toc">9.8.3 - Artikel erstellen</span>

<h3 class="subsection" id="artikel-erstellen">Artikel erstellen</h3>

<p>Um die Einbindung der freien Felder zu testen, müssen Sie einen neuen Artikel
erstellen. Klicken Sie im Backend dazu auf <span class="mbold">Inhalt
<span class="icon arrow-right">→</span> Neuer Eintrag</span>.
Dort finden Sie nach dem Eingabefeld für den <em>Erweiterten Eintrag</em> einen
Bereich mit dem Titel <em>Erweiterte Optionen</em>. In diesem Bereich finden Sie
nun einen Abschnitt <em>Erweiterte Eigenschaften von Artikeln</em>. Dort bindet
das Plugin neben einigen weiteren Optionen nun zwei große Eingabefelder ein:
eines mit dem Titel <span class="mbold">Youtube</span> und eines mit dem Titel
<span class="mbold">Stimmung</span>.</p>

<p>Dort können Sie nun für jeden Artikel einen beliebigen Code eintragen. Was Sie
in die Felder eintragen, ist Ihnen überlassen, jedoch sollten Sie darauf achten,
dort immer nur die <em>Rohdaten</em> einzutragen. Alles, was sich bei jeder
Eingabe wiederholen würde (zB. umgebende HTML-Formatierung wie eine
Überschrift oder eine Trennlinie), gehört nicht an diese Stelle, sondern ins
Template.</p>

<p>Da die Darstellung des Youtube-Videos später einiger HTML-Anweisungen bedarf,
trägt man in das Eingabefeld möglichst nur die Youtube-Video-ID (wie zB.
<code>2BpLGASxt0Q</code>) ein. Diese Video-ID kann man immer der URL einer Youtube-Seite
(<code>https://www.youtube.com/watch?v=2BpLGASxt0Q</code>) entnehmen.</p>

<p>Zusätzlich werden Sie sicher bemerken, dass neben dem Eingabefeld ein Link
<span class="mbold">Mediathek</span> eingebunden wird. Wenn Sie auf diesen Link klicken,
öffnet sich das bekannte Popup zur Auswahl einer Datei in Ihrer Mediathek
(siehe Seite <span class="pageref"><a href="#mediathek-popup">Mediathek-Popup</a></span>).
Dort können Sie eine Datei auswählen, die Sie einbinden möchten. Daraufhin
erscheint der Dateiname der ausgewählten Datei innerhalb des Eingabefeldes und
kann somit später im Template zB. als Downloadlink oder Bild ausgegeben werden,
ganz wie Sie es benötigen.</p>

<p>Speichern Sie einen Artikel mit ausgefülltem <span class="mbold">Youtube</span>- und
<span class="mbold">Stimmung</span>-Feld ab.</p>

</section><!-- section.sub end -->

<section id="U984" class="sub">
<span class="u-toc">9.8.4 - Template anpassen</span>

<h3 class="subsection" id="template-anpassen">Template anpassen</h3>

<p>Nachdem die Daten nun erfasst wurden und mit dem Artikel zusammen abgespeichert
sind, sollen diese natürlich auch in Ihrem Blog dargestellt werden.</p>

<p>Dafür müssen Sie nun die <code>entries.tpl</code>-Template-Datei Ihres Blogs in einem
Editor öffnen. Diese Datei enthält alle Anweisungen, die zur Darstellung eines
Eintrags verwendet werden.</p>

<p>Innerhalb dieser Datei (genaue Beschreibung siehe Seite
<span class="pageref"><a href="#entries.tpl">entries.tpl</a></span>)
können Sie auf die freien Felder flexibel mittels Smarty-Syntax zugreifen. Um
Ihre aktuelle Stimmung direkt unterhalb des Artikeltexts darzustellen, suchen
Sie in der Datei nach einer Stelle, die ungefähr so aussieht:</p>

<pre><code class="smarty">
    {if $entry.is_extended}<br>
    &nbsp;&nbsp;&nbsp; &lt;div class="serendipity_entry_extended"&gt;<br>
    &nbsp;&nbsp;&nbsp;&nbsp; &lt;a id="extended"&gt;&lt;/a&gt;<br>
    &nbsp;&nbsp;&nbsp;&nbsp; {$entry.extended}<br>
    &nbsp;&nbsp;&nbsp; &lt;/div&gt;<br>
    {/if}
</code></pre>

<p>Diese Stelle sorgt üblicherweise einfach nur für die Ausgabe des
erweiterten Eintrags. Wenn Sie Ihre aktuelle Stimmung nur dann anzeigen
wollen, wenn ein Besucher die Detailansicht des Artikels aufruft, müssen Sie nun
ein Stück Smarty-Code <em>innerhalb</em> der IF-Abfrage einfügen. Wenn Sie die
Stimmung auch bereits in der Artikelübersicht darstellen wollen, fügen Sie den
folgenden Smarty-Code <em>nach</em> dem abschließenden <code class="smarty">{/if}</code> ein:</p>

<pre><code class="smarty">
    &lt;h5&gt;Meine Stimmung:&lt;/h5&gt;<br>
    &lt;div class="mood"&gt;{$entry.properties.ep_Stimmung}&lt;/div&gt;
</code></pre>

<p>Die Ausgabe liefert also eine einfache Überschrift und gibt den Text, den Sie
im Artikel hinterlegt haben, innerhalb eines <code>&lt;div&gt;</code>-Feldes mit eigener
CSS-Klasse aus.</p>

<p>Der Feldname <code>ep_Stimmung</code> richtet sich dabei nach dem Namen, den Sie in
der Konfiguration des Plugins anfangs eingetragen haben. Er muss exakt mit der
gleichen Groß- und Kleinschreibung wie dort und mit einem
vorangestellten <code>ep_</code> aufgeführt werden.</p>

<p>Da die Inhalte dieser Daten immer im <code class="item smarty">{$entry.properties}</code>-Array landen,
müssen sie innerhalb dieses Arrays mit
<code class="item smarty">{$entry.properties.ep_Feldname}</code> innerhalb der Template-Datei
ausgegeben werden.</p>

<p>Als Zweites fügen Sie nun unterhalb der Darstellung Ihrer Stimmung den
Youtube-Codeschnipsel ein:</p>

<pre><code class="smarty">
    &lt;h5&gt;Youtube-Video&lt;/h5&gt;<br>
    &lt;div class="youtube"&gt;<br>
    &lt;object width="425" height="355"&gt;<br>
    &nbsp;&lt;param<br>
    &nbsp;&nbsp; name='movie'<br>
    &nbsp;&nbsp; value='https://www.youtube.com/v/{$entry.properties.ep_Youtube}'&gt;<br>
    &nbsp;&lt;/param&gt;<br>
    &nbsp;&lt;param<br>
    &nbsp;&nbsp; name="wmode"<br>
    &nbsp;&nbsp; value="transparent"&gt;&lt;/param&gt;<br>
    &nbsp;&lt;embed<br>
    &nbsp;&nbsp; src='https://www.youtube.com/v/{$entry.properties.ep_Youtube}'<br>
    &nbsp;&nbsp; type='application/x-shockwave-flash'<br>
    &nbsp;&nbsp; wmode='transparent'<br>
    &nbsp;&nbsp; width='425'<br>
    &nbsp;&nbsp; height='355'&gt;&lt;/embed&gt;<br>
    &lt;/object&gt;<br>
    &lt;/div&gt;
</code></pre>

<p>Dieser Code ist direkt von der Youtube-Seite entnommen, lediglich die ID des
Videos wird ersetzt durch die Variable <code class="item smarty">{$entry.properties.ep_Youtube}</code>.</p>

<p>Speichern Sie das geänderte Template nun ab und rufen Sie Ihr Blog erneut auf. Sie
werden nun bei dem vorhin erfassten Artikel die Zusatzausgaben sehen.</p>

</section><!-- section.sub end -->

<section id="U985" class="sub">
<span class="u-toc">9.8.5 - Weitere Prüfungen</span>

<h3 class="subsection" id="weitere-prüfungen">Weitere Prüfungen</h3>

<p>Da Ihre Eingaben nur an das Smarty-Array <code class="item smarty">{$entry.properties}</code>
durchgereicht werden, sind Sie in der Lage, damit weitaus mehr anzustellen, als
nur rohen Text auszugeben.</p>

<p>Sie können beispielsweise auch ein freies Feld wie <code>ArtikelAnzahl</code> anlegen und
dann mittels Smarty-Syntax eine Liste von aktuellen Artikeln des gleichen
Redakteurs holen und darstellen. Dadurch wird ein freies Feld soszusagen als
flexibler Parameter für beliebige Smarty-Funktionsaufrufe verwendet:</p>

<pre><code class="smarty">
    {$entry.body}<br>
    <br>
    &lt;div&gt;Weitere Artikel dieses Autoren:&lt;/div&gt;<br>
    &lt;div&gt;<br>
    {serendipity_fetchPrintEntries viewAuthor=$entry.authorid limit=$entry.properties.ep_ArtikelAnzahl}<br>
    &lt;/div&gt;
</code></pre>

<p>Im vorigen Beispiel wurde die aktuelle Stimmung und das Youtube-Video immer
angezeigt, selbst wenn in Ihrem Artikel derartige Angaben gar nicht gemacht
wurden. Daher ist es sinnvoll, eine kleine zusätzliche Abfrage einzufügen. Diese
prüft, ob eine entsprechende Variable für den aktuellen Artikel überhaupt
gesetzt ist:</p>

<pre><code class="smarty">
    {if $entry.properties.ep_Stimmung}<br>
    &nbsp; &lt;h5&gt;Meine Stimmung:&lt;/h5&gt;<br>
    &nbsp; &lt;div class="mood"&gt;{$entry.properties.ep_Stimmung}&lt;/div&gt;<br>
    {/if}
</code></pre>

</section><!-- section.sub end -->

</section><!-- section.index end -->

<section id="S990" class="index">
<span class="s-toc">9.9 - Eigene Modifier, Funktionen oder Dateien einbinden</span>

<h3 class="section" id="eigene-modifier-funktionen-oder-dateien-einbinden">Eigene Modifier, Funktionen oder Dateien einbinden</h3>

<p class="tagging invisible">
<span class="tag-box invisible">
    <span class="inline-tag">Smarty!Eigener PHP-Code</span>
</span>
</p>

<p>Smarty ermöglicht es Ihnen nicht nur, auf vorgeschriebene Smarty-Funktionen und
-Modifier zuzugreifen (siehe auch <code>https://www.smarty.net/</code>), sondern auch
eigene beliebig zu verwenden.</p>

<p>
<span class="tag-box invisible">
    <span class="inline-tag">Smarty!Security</span>
</span>
Standardmäßig ist für Serendipity-Templates die <em>Template-Security</em>
aktiviert. Dies heißt, dass Sie keine beliebigen PHP-Funktionen und keine
PHP-Include-Anweisungen in Ihre Templates einbauen dürfen. Dies dient als kleine
zusätzliche Barriere, damit beim Einsatz von Smarty-Markup Ihre Redakteure kein
Unheil auf dem Webserver anrichten können.</p>

<p>Für PHP-Entwickler ist aber genau dies gewünscht. Daher können Sie in der
<code>config.inc.php</code>-Konfigurationsdatei Ihres Templates sehr einfach mittels
der Zeile</p>

<pre><code class="php">
    &lt;?php<br>
    $serendipity['smarty']-&gt;security = false;<br>
    ?&gt;
</code></pre>

<p>diese Sicherheitabfrage umgehen.</p>

<p>Weiterhin können Sie ganz eigene Smarty-Funktionen oder Smarty-Modifier
einfügen, wenn Sie diese benötigen.</p>

<p>Auch dazu müssen Sie die <code>config.inc.php</code>-Datei Ihres Templates anpassen
(oder erstellen, wenn sie noch nicht existiert). Dort können Sie eine Funktion
wie folgt deklarieren:</p>

<pre><code class="php">
    &lt;?php<br>
    function zeigeFooter($params, &amp;$smarty) {<br>
    &nbsp; if ($params['lang']) {<br>
    &nbsp;&nbsp;&nbsp; return "Langer Footer";<br>
    &nbsp; } else {<br>
    &nbsp;&nbsp;&nbsp; return "Kurzer Footer";<br>
    &nbsp; }<br>
    }<br>
    <br>
    $serendipity['smarty']-&gt;registerPlugin('function', 'zeigeFooter', 'zeigeFooter');
</code></pre>

<p>Mit Smarty 3, besonders mit den Smarty Versionen ab 3.1.28+, sagen wir einfach,
ab <span class="mbold">Serendipity Styx 2.1</span> sollte man nun genauer schreiben:</p>

<pre><code class="php">
    &lt;?php<br>
    function zeigeFooter($params, Smarty_Internal_Template $template) {<br>
    ...<br>
    }<br>
    <br>
    $serendipity['smarty']-&gt;registerPlugin('function', 'zeigeFooter', 'zeigeFooter');
</code></pre>

<p>da nicht mehr das <code>$smarty</code>-Objekt, sondern das <code>$template</code>-Objekt übergeben wird.
Explizite Referenzierungen erübrigen sich aus der Serendipity Voraussetzung für höhere PHP Versionen ab 5.3+.
In diesem Beispiel ist dies jedoch ohne Belang, da auf das Objekt gar nicht zugegriffen wird.</p>

<p>Eine Smarty-Funktion muss demnach mittels <code>register_function</code> einer
existierenden PHP-Funktion zugewiesen werden.[*]
<span class="footnote"><i class="fa fa-info-circle"></i> Siehe auch
<a href="https://www.smarty.net/docs/en/api.register.plugin.tpl" target="_blank" rel="noopener">https://www.smarty.net/docs/en/api.register.plugin.tpl</a></span><!-- footnote -->
Diese PHP-Funktion muss immer zwei Funktionsparameter haben: <code>$params</code>
und <code>$smarty</code>. (Siehe obige Anmerkung zu Smarty 3.1.28+!) Das Array
<code>$params</code> enthält alle Funktionsparameter, wie sie in der Template-Datei via
<code>zeigeFooter parameter=... lang=true  ... </code> aufgerufen wurden. Dabei
entspricht der Array-Schlüssel von <code>$params</code> immer dem Parameternamen beim
Smarty-Aufruf. Das <code>$smarty</code>-Objekt (später <code>$template</code>-Objekt)
kann innerhalb der PHP-Funktion selbstverständlich auch für erweiterte Zugriffe auf
das Smarty-Framework verwendet werden. Der Rückgabewert der Funktion enthält das,
was später im Smarty-Template zurückgeliefert wird (üblicherweise HTML-Code).</p>

<p>Die beispielhaft definierte Funktion <code>zeigeFooter</code> kann so verwendet werden,
um einen fest definierten Footer in Ihrer Template-Datei einzubinden.
Selbstverständlich könnte diese Funktion auch Datenbankabfragen ausführen oder
andere HTML-Dateien einbinden.</p>

<p>Eine ähnliche Syntax gilt für die Festlegung eigener Smarty-Modifier:</p>

<pre><code class="php">
    &lt;?php<br>
    function meinDatum($timestamp, $kurz = false) {<br>
    &nbsp; if ($kurz) {<br>
    &nbsp;&nbsp;&nbsp; return date('d.m.Y', $timestamp);<br>
    &nbsp; } else {<br>
    &nbsp;&nbsp;&nbsp; return date('d.m.Y um H:i Uhr', $timestamp);<br>
    &nbsp; }<br>
    }<br>
    <br>
    $serendipity['smarty']-&gt;registerPlugin('modifier', 'meinDatum', 'meinDatum');
</code></pre>

<p>Die alten <code>register_modifier()</code> und <code>registerfunction()</code> API Methoden
wurde mit Erscheinen von Serendipity 1.7 und Smarty 3 auf die universellere <code>registerPlugin('modifier', </code>,
<code>registerPlugin('function', </code> Methode geändert. Sie können aus Kompatibilitätsgründen,
aber sollten nicht länger unnötigerweise verwendet werden. Die hier verwendeten Beispiele wurden
auf die neuere Schreibweise angepasst.</p>

<p>Ein Modifier wie oben würde im Smarty-Template einen Aufruf wie</p>

<pre><code class="smarty">
    Artikeldatum: {$entry.timestamp|meinDatum:true}
</code></pre>

<p>ermöglichen. Der Unix-Zeitwert wird an die eigene Funktion <code>meinDatum</code>
weitergereicht. Der erste Parameter der PHP-Funktion entspricht dabei immer dem
Wert, der vor dem Modifier steht. Alle weiteren PHP-Funktionsparameter
entsprechen der Liste von Parametern, die, mit Doppelpunkten getrennt, nach dem
Smarty-Modifier-Aufruf folgen.</p>

<p>Die PHP-Funktion <code>meinDatum</code> wertet <code class="item smarty">{$entry.timestamp}</code> aus und
liefert abhängig vom Parameter <code>kurz</code> entweder ein ausführlich oder kurz
formatiertes deutsches Datum zurück.</p>

<p>Beliebige PHP-Dateien können mittels Smarty-Funktion <code>include_php</code>
eingebunden werden. Einen derartigen Aufruf können Sie zB. in Ihrer
Datei <code>index.tpl</code> verwenden, um ein eigenes Counter-Script aufzurufen:</p>

<pre><code class="smarty">
    &nbsp;&lt;html&gt;<br>
    &nbsp;...<br>
    &nbsp;{include_php file="/var/www/example/counter.php"}
</code></pre>

<p>Alternativ können Sie einen Counter auch direkt über die
<code>config.inc.php</code>-Datei aufrufen. Dies ist in jedem Fall dann zu bevorzugen,
wenn Sie das Counter-Script auch dann ausführen wollen, wenn Serendipity
eine andere Seite als die Übersicht darstellt. Dazu können Sie üblichen PHP-Code
verwenden:</p>

<pre><code class="php">
    &lt;?php<br>
    include '/var/www/example/counter.php';<br>
    ?&gt;
</code></pre>

<p>Achten Sie jedoch darauf, dass innerhalb der <code>config.inc.php</code> niemals
HTML-Ausgaben erfolgen dürfen. Sollte dies vorkommen, müssen Sie mittels PHP
Output Buffering [*]
<span class="footnote"><i class="fa fa-info-circle"></i> Siehe
<a href="https://www.php.net/ob_start" target="_blank" rel="noopener">https://www.php.net/ob_start</a></span><!-- footnote -->
die HTML-Ausgaben in einer Variable abfangen, an die Smarty-Template-Dateien
weiterreichen und von dort aus einbinden.</p>

<p><code>config.inc.php</code>:</p>

<pre><code class="php">
    &lt;?php<br>
    ob_start();<br>
    include '/var/www/example/counter.php';<br>
    $tmp = ob_get_contents();<br>
    ob_end_clean();<br>
    $serendipity['smarty']-&gt;assign('counter_code', $tmp);<br>
    ?&gt;
</code></pre>

<p><code>index.tpl</code>:</p>

<pre><code class="smarty">
    &lt;html&gt;<br>
    &nbsp;...<br>
    &nbsp;{$counter_code}
</code></pre>

<p>&nbsp;</p>

</section><!-- section.index end -->

<section id="S9100" class="index">
<span class="s-toc">9.10 - Konfigurationsoptionen, Eigene Einstellungen</span>

<h3 class="section" id="konfigurationsoptionen-eigene-einstellungen">Konfigurationsoptionen, Eigene Einstellungen</h3>

<p class="tagging invisible">
<span class="tag-box invisible">
    <span class="inline-tag">Konfigurationsoptionen</span>
    <span class="inline-tag">Eigene Einstellungen</span>
</span>
</p>

<p>Die Konfigurationsoptionen von Serendipity (<span class="mbold">Administration
<span class="icon arrow-right">→</span> Konfiguration</span>
und <span class="mbold">Eigene Einstellungen</span>) werden über einfache PHP-Dateien gesteuert.
Darüber können Sie leicht eigene neue Konfigurationsoptionen hinzufügen,
die automatisch dargestellt und in der Datenbank gespeichert werden können.</p>

<p>Dies kann dazu verwendet werden, um Serendipity auf eigene Optionen anzupassen,
falls man diese Optionswerte in eigenen PHP-Dateien oder Plugins abfragen
möchte. Dabei müssen Sie jedoch beachten, dass die für die Konfiguration zuständigen
PHP-Dateien bei jedem Serendipity-Update überschrieben werden. Sie sollten
etwaige Anpassungen an dieser Datei also strikt protokollieren und nach einem
Update erneut einfügen.</p>

<p><span class="label invisible" id="configlocal">configlocal</span>
Die Datei <code>include/tpl/config_personal.inc.php</code> stellt die Datenbasis für
die <span class="mbold">Eigenen Einstellungen</span> dar. In dieser Datei wird eine Variable
deklariert, die ein mehrdimensionales Array enthält. Die Datei wird vom
Serendipity-Kern ausgelesen, und die Darstellungsoptionen werden anhand des Inhalts
dieser Variable eingebunden.</p>

<p>Eine identische Struktur wird von der Datei
<code>include/tpl/config_local.inc.php</code> eingesetzt und dient der Darstellung
für die <span class="mbold">Konfiguration</span>.</p>

<p>Der Schlüsselname des Arrays der ersten Dimension gibt den Abschnittsnamen an.
Bei den <span class="mbold">Eigenen Einstellungen</span> gibt es zwei solche Abschnitte:
<span class="mbold">Persönliche Einstellungen</span> und
<span class="mbold">Voreinstellungen für neue Einträge</span>. Jeder Abschnitt
kann für sich ein- und ausgeklappt werden. Weitere individuelle Abschnitte
können Sie daher über einen beliebigen Array-Schlüsselnamen einbinden.</p>

<p>Der Titel und die Beschreibung jedes Abschnitts wird in den
Array-Schlüsseln <code>title</code> und <code>description</code> der zweiten Dimension
festgelegt.</p>

<p>Der Array-Schlüssel <code>items</code> der zweiten Dimension legt ein weiteres Array
an, in dem alle Konfigurationsfelder enthalten sind.</p>

<p><span class="label invisible" id="apiconfigfield">apiconfigfield</span>
Pro Konfigurationsfeld wird ein Array mit folgenden Array-Schlüsseln festgelegt:</p>

<p class="desc item-desc">
<code class="item php">var</code>
<span class="desc-info">
    <span class="box">
        Legt den Variablennamen fest. Mit diesem Namen ist die Konfigurationsoption
        später über <code class="nobreak">$serendipity['Variablenname']</code> zugänglich und wird
        mit demselben Namen in der Datenbanktabelle <code>serendipity_config</code>
        abgespeichert. Der Variablenname darf keine Sonderzeichen oder Umlaute
        enthalten.
    </span>
</span>
</p>

<p class="desc item-desc">
<code class="item php">title</code>
<span class="desc-info">
    <span class="box">
        Legt den dargestellten Titel der Konfigurationsoption fest (kann auf eine eigene
        Sprachkonstante verweisen).
    </span>
</span>
</p>

<p class="desc item-desc">
<code class="item php">description</code>
<span class="desc-info">
    <span class="box">
        Legt die Beschreibung der Konfigurationsoption fest (kann auf eine eigene
        Sprachkonstante verweisen).
    </span>
</span>
</p>

<p class="desc item-desc">
<code class="item php">type</code>
<span class="desc-info">
    <span class="box">
        Legt den Typ der Konfigurationsoption fest. Gültige Werte sind:
    </span>

    <span class="box mda-box">

        <span class="box"><code class="sub-item">bool</code>
            <span class="sub-box">
                Feld mit <em>Ja/Nein</em>-Auswahlbox.
            </span>
        </span>

        <span class="box"><code class="sub-item">protected</code>
            <span class="sub-box">
                Geschütztes Eingabefeld, dessen Eingaben mit einem <code>*</code> maskiert werden (zB.
                für Passwörter).
            </span>
        </span>

        <span class="box"><code class="sub-item">multilist</code>
            <span class="sub-box">
                Ein Mehrfach-Auswahlfeld.
            </span>
        </span>

        <span class="box"><code class="sub-item">list</code>
            <span class="sub-box">
                Ein Auswahlfeld (Dropdown).
            </span>
        </span>

        <span class="box"><code class="sub-item">file</code>
            <span class="sub-box">
                Ein Dateiauswahlfeld (Upload).
            </span>
        </span>

        <span class="box"><code class="sub-item">textarea</code>
            <span class="sub-box">
                Ein mehrzeiliges Texteingabefeld.
            </span>
        </span>

        <span class="box"><code class="sub-item">string (Standard)</code>
            <span class="sub-box">
                Ein einzeiliges Texteingabefeld.
            </span>
        </span>

    </span><!-- box mda-box type in scope: include/tpl/config_personal.inc.php, include/tpl/config_local.inc.php end -->

</span>
</p>

<p class="desc item-desc">
<code class="item php">default</code>
<span class="desc-info">
    <span class="box">
        Legt den Standardwert der Option fest, wenn der Benutzer noch keine eigene
        Auswahl getroffen hat. Bei Arrays, die ein Auswahlfeld anbieten, kann dieser Wert
        ein Array mit sämtlichen möglichen Optionswerten enthalten. Dabei entspricht der
        Array-Schlüssel jeweils dem Optionswert und der Array-Inhalt der Beschreibung
        des Wertes.
    </span>
</span>
</p>

<p class="desc item-desc">
<code class="item php">permission</code>
<span class="desc-info">
    <span class="box">
        Gibt den Namen eines Serendipity-Rechtes an, das ein Redakteur über die
        Blog-Benutzergruppenzugehörigkeit besitzen muss, um die entsprechende
        Konfigurationsoption ausfüllen zu dürfen. Üblicherweise prüft dieses Feld zB.,
        ob ein Benutzer der Admin-Gruppe zugehörig ist, um erweiterte Optionen ausfüllen
        zu dürfen.
    </span>
    <span class="box">
        Dieses Feld kann entweder einen einzelnen Rechtenamen enthalten oder ein Array
        mit mehreren Rechtenamen. Bei der Angabe mehrerer Rechtenamen muss der Benutzer
        alle Rechte besitzen, um eine Option aufrufen zu können. Dies kann über den
        Array-Schlüssel <code>perm_mode</code> gesteuert werden - enthält dieser den Wert
        <code>or</code>, werden die Rechte mit einem logischen <em>oder</em> abgefragt, so dass
        der Benutzer nur eines der angegebenen Rechte besitzen muss.
    </span>
</span>
</p>

<p class="desc item-desc">
<code class="item php">view</code>
<span class="desc-info">
    <span class="box">
        Wenn dieser Array-Schlüssel als Wert <code>dangerous</code> enthält, wird die
        Konfigurationsoption nicht im Menübereich <span class="mbold">Eigene Einstellungen</span> angezeigt,
        sondern nur, wenn das Redakteursprofil über den Bereich <span class="mbold">Administration ?
        Benutzerverwaltung</span> verändert wird. Dies dient dazu, damit sich Benutzer nicht
        selbständig und unabsichtlich notwendige Rechte entziehen.
    </span>
</span>
</p>

<p class="desc item-desc">
<code class="item php">flags</code>
<span class="desc-info">
    <span class="box">
        Kann ein Array mit einigen Zusatzoptionen enthalten, die bestimmen, wie eine
        Konfigurationsoption gehandhabt wird. Folgende Flags werden unterstützt:
    </span>

    <span class="box mda-box">

        <span class="box"><code class="sub-item">installOnly</code>
            <span class="sub-box">
                Eine Konfigurationsoption wird nur bei der Installation angezeigt.
            </span>
        </span>

        <span class="box"><code class="sub-item">hideValue</code>
            <span class="sub-box">
                Der Wert der Konfigurationsoption wird nicht in der HTML-Ausgabe mitgeliefert,
                so dass zB. Passwörter nicht im Klartext (oder MD5-Hash) erscheinen.
            </span>
        </span>

        <span class="box"><code class="sub-item">config</code>
            <span class="sub-box">
                Ist dieses Flag gesetzt, wird das Rechtefeld in der
                Serendipity-Konfigurationstabelle gespeichert.
            </span>
        </span>

        <span class="box"><code class="sub-item">local</code>
            <span class="sub-box">
                Ist dieses Flag gesetzt, wird das Rechtefeld in der
                Tabelle <code>serendipity_authors</code> gespeichert. Dabei wird vorausgesetzt, dass
                der entsprechende Feldname als Spaltenname dieser Tabelle vorhanden ist.
            </span>
        </span>

        <span class="box"><code class="sub-item">parseDescription</code>
            <span class="sub-box">
                Falls gesetzt, werden spezielle Zeichenketten in der Beschreibung des
                Konfigurationsfeldes durch einen Wert ersetzt. Derzeit wird nur die
                Zeichenkette <code>%clock%</code> innerhalb einer Beschreibung durch die aktuelle
                Uhrzeit ersetzt.
            </span>
        </span>

    </span><!-- box mda-box flags in scope: include/tpl/config_personal.inc.php, include/tpl/config_local.inc.php end -->

</span>
</p>

<p class="desc item-desc">
<code class="item php">probeDefault</code>
<span class="desc-info">
    <span class="box">
        Anstatt einen festen Standard vorzugeben, prüft Serendipity einige festgelegte
        Felder (<code>dbType, rewrite</code>) auf gültige Standardwerte.
    </span>
</span> 
</p>

<p class="desc item-desc">
<code class="item php">ifEmpty</code>
<span class="desc-info">
    <span class="box">
        Falls gesetzt, wird der Standardwert für einen Konfigurationswert von
        Serendipity speziell geprüft, falls der Benutzer noch keine eigene Option
        festgelegt hat.
    </span>
</span>
</p>

<p class="desc item-desc">
<code class="item php">nosave</code>
<span class="desc-info">
    <span class="box">
        Ist dieses Feld gesetzt, wird der Wert einer Konfigurationsoption nicht in der
        Datenbank gespeichert. Dies ist üblicherweise der Fall bei
        Datenbank-Zugangsvariablen, die ausschließlich in der Datei
        <code>serendipity_config_local.inc.php</code> gespeichert werden.
    </span>
</span>
</p>

<p class="desc item-desc">
<code class="item php">simpleInstall</code>
<span class="desc-info">
    <span class="box">
        Wenn dieses Flag gesetzt ist, wird eine Konfigurationsoption bei der
        Installation nur dann angezeigt, wenn der Benutzer die <span class="mbold">Einfache
        Installation</span> gewählt hat.
    </span>
</span>
</p>

</section><!-- section.index end -->
