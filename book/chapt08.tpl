
<h2 id="chapter-VIII">Kapitel 8: Wartung und Betrieb</h2>

<p class="tagging invisible">
<span class="tag-box invisible">
    <span class="inline-tag">Wartung</span>
</span>
<span class="label invisible" id="Wartung">Wartung</span>
</p>

<p>Grundsätzlich sollten Sie jetzt in der Lage sein, Ihre Artikel in einer
gewünschten Hierarchie zu veröffentlichen, kommentieren zu lassen und mit
Plugins zu erweitern. Das bisher Erreichte ist vergleichbar mit dem Häuslebau:
Jetzt steht die Villa, sieht von außen auch gut aus, ist aber noch
unbewohnt, und die Hausfront ist unbewacht vor Graffiti-Vandalen; zudem fehlt
noch die Versicherung für Wertsachen im Haus.</p>

<p>Daran wollen wir in den kommenden Kapiteln etwas ändern. Sie erfahren, wie Sie
mit Kommentaren umgehen können, Datenbanksicherungen erstellen, Plugins und das
Kernsystem aktualisieren und sich so gut wie möglich vor Spam schützen können.</p>

<p>&nbsp;</p>

<section id="S810" class="index">
<span class="s-toc">8.1 - Einträge und Trackbacks</span>
<span class="label invisible" id="trackback">trackback</span>

<h3 class="section" id="einträge-und-trackbacks">Einträge und Trackbacks</h3>

<p>Die Vernetzung von Blogs untereinander ist ein wichtiger Grund für die hohe
Relevanz von Blogs heutzutage. Blogs haben Zeitschriftencharakter, und einzelne
interessante Artikel werden häufig von anderen Bloggern aufgegriffen und
weitergetragen.</p>

<p>So kann sich eine Neuigkeit rasend schnell verbreiten, und das hat in der Vergangenheit
schon oft dazu geführt, dass Blogs einen großen Aktualitätsvorsprung
vor klassischen Informationsmedien haben. Populäre Nachrichtensendungen werden
erst am Tagesende ausgestrahlt, Radionachrichten erfolgen meist nur stündlich --
da kann ein Blog mit relevanten Nachrichten wie Reaktionen auf eine
Pressekonferenz oder Vor-Ort-Berichten wie beim Bombenattentat in London weitaus
schneller reagieren. Dank RSS-Feeds (siehe Terminologie auf Seite <span class="pageref"><a href="#RSS">RSS</a></span>)
ist es für Besucher zudem leicht nachzuverfolgen, welche Blogs neue Nachrichten
geliefert haben.</p>

<p>Private Blogger fühlen sich jedoch selten an einen journalistischen Kodex
gebunden - eine Falschmeldung kann so möglicherweise schnell verbreitet werden
und nur schwer zu korrigieren sein. Genau diese fehlende Kontrollinstanz
und die freie Meinungsäußerung in Blogs ist großen Unternehmen oft ein Dorn im
Auge und der Grund, warum sich Firmen nur distanziert mit Blogs beschäftigen.</p>

<p>
<span class="tag-box invisible">
    <span class="inline-tag">Virale Kampagnen</span>
</span>
Mittlerweile hat man aber auch den positiven Nebeneffekt durch die schnelle
Verbreitung bemerkt: Gerade Werbeagenturen nutzen Blogger oft bewusst dazu aus,
um Werbekampagnen voranzutreiben. Sogenannte <em>Virale Kampagnen</em> zielen
darauf ab, dass sie schnell von einem zum nächsten Blog gelangen.</p>

<p>Die technische Basis für schnelle Verbreitung und Vernetzung stellt neben den
RSS-Feeds (für Aktualisierungshinweise) eine Technik namens <em>Trackback</em>
dar.</p>

<p>Ein Trackback ermöglicht es Ihnen, sich auf ein anderes Blog als Quelle
zu beziehen. Wenn Sie nun die Quelle in Ihrem Artikel nennen, kümmert sich
Serendipity mittels einer automatischen Schnittstelle darum, dass in dem Quellblog
ein Verweis auf Ihren neuen Artikel hinterlegt wird. Leser des Quellblogs können
nun auf Ihre Seite gelangen und Ihre Sicht der Dinge nachlesen. Möglicherweise
beziehen sich danach weitere Redakteure auf Ihren Eintrag, und es entsteht eine
Netzstruktur von Verweisen.</p>

<p>Trackbacks sind dabei für beide Seiten interessant. Der Ursprungsautor erfährt
so davon, wer seinen Artikel gelesen hat und dazu etwas ergänzen oder
diskutieren möchte. Und Sie als Bezug nehmender Autor können zusätzliche Leser
gewinnen, die im Ursprungsblog auf Sie aufmerksam werden.</p>

<p>Im Endeffekt ermöglichen Trackbacks, dass Sie Diskussionen dezentral führen
können, losgelöst von dem Ursprungsblog. In früheren Zeiten wurden
Diskussionen stets zentral an einer Stelle geführt, also in einem Bereich eines
Forums oder (noch früher) in einer Usenet- oder Mailboxgruppe. Der
Community-Gedanke steht dort im Vordergrund, während Weblogs die
<em>Individualisierung einer Meinung</em> verfolgen. In Ihrem persönlichen Weblog
stehen Sie als Individuum im Zentrum, sämtliche Inhalte sind grundsätzlich auf Ihre
Meinung ausgelegt. Bei Diskussionsforen ist man nur Teil eines Ganzen.</p>

<p>Welcher Variante Sie den Vorzug geben, obliegt Ihrem eigenen Geschmack und
den Anforderungen Ihres Themas. Ein paar Beispiele:</p>

<ul class="realList">
    <li> In einem Blog lesen Sie einen Artikel zu einer rechtlichen Problematik,
    der konkret mit einer Frage endet. Wenn Sie die Antwort zu dieser Frage
    wissen, macht es wenig Sinn, dass Sie dazu einen eigenen Artikel in Ihrem Blog
    schreiben und ein Trackback zu dem Blog des Fragenden hinterlassen. Dadurch
    würden Sie eine unnötig hohe Barriere für den Ursprungsautoren aufbauen, zu
    der Antwort zu gelangen. Hier wäre es sinnvoller, einfach nur einen Kommentar
    im Blog des Fragenden zu hinterlassen.</li>

    <li> In einem Blog wird heftig über den Unsinn der GEZ-Gebühren für
    Internet-PCs diskutiert. Es gibt bereits 300 Kommentare zu diesem Artikel. Sie
    haben jedoch eine grundsätzlich andere Auffassung zu der Thematik, die in den
    Kommentaren des Eintrags niedergeschmettert und größtenteils ignoriert
    wird. Weil Ihnen Ihre Meinung jedoch wichtig ist, erstellen Sie einen eigenen
    Blog-Artikel, in dem Sie Ihre Meinung nochmals ausführlich darlegen. Mittels
    eines Trackbacks zu dem Ursprungsartikel ermöglichen Sie es den
    Interessierten, Ihre abweichende Meinung gesondert zu diskutieren, und behalten
    den Ursprungsbezug bei.</li>

    <li> In seinem persönlichen Blog fragt ein Film-Fan seine Leser, welches deren
    Lieblingsfilme sind. Er bittet um ausführliche Erklärung. Da Sie selbst ein
    Film-Blog führen und schon immer mal einen langen Artikel über Ihren
    Lieblingsfilm verfassen wollten, schreiben Sie direkt einen Blog-Artikel dazu
    und hinterlassen auf dem Blog des Film-Fans ein Trackback. Der Film-Fan
    entdeckt später einen Fehler in Ihrer Erklärung des Films und hinterlässt
    auf Ihrem Blog einen Kommentar dazu - anstatt auf seinem eigenen Blog dazu
    Stellung zu beziehen.</li>
</ul>

<section id="U811" class="sub">
<span class="u-toc">8.1.1 - Trackbacks und Pingbacks senden</span>

<h3 class="subsection" id="trackbacks-und-pingbacks-senden">Trackbacks und Pingbacks senden</h3>

<p>Wenn Sie sich dazu entschieden haben, einen Blog-Artikel zu verfassen, der
sich auf einen anderen Beitrag beziehen soll, dann können Sie bei Serendipity
sehr leicht automatisch ein Trackback setzen.</p>

<p>Serendipity durchsucht jeden Ihrer Einträge nach Hyperlinks, wenn Sie den
Artikel speichern. Dazu sucht es nach allen <code>&lt;a&gt;</code>-HTML-Tags Ihres Eintrags
und ruft die darin angegebene Internet-Adresse auf. Auf dieser Seite sucht
Serendipity nach einem speziellen Code [*]
<span class="footnote"><i class="fa fa-info-circle"></i> 
<span class="tag-box invisible">
    <span class="inline-tag">RDF-Metadaten</span>
</span>
Konkret werden die RDF-Metatags
<code>&lt;rdf:Description trackback:ping="..."&gt;</code> und <code>&lt;rdf:Description
dc:identifier="..."&gt;</code> gesucht.</span><!-- footnote -->, den ein Blog enthalten muss, um die
Trackback-Schnittstelle anzubieten.</p>

<p>Findet Serendipity diesen Code, sendet es einen Ausschnitt Ihres Artikeltexts
zusammen mit der URL Ihres Beitrags an das betreffende Blog. Dabei
stellt Ihr Blog den Sender dar, das fremde Blog ist der Empfänger. Die
gesendeten Daten müssen vom Zielblog verarbeitet und gespeichert werden. Die
Rückmeldung über den Fortschritt des Vorgangs wird dabei direkt von Serendipity
beim Speichern dargestellt.</p>

<p>Ohne den entsprechenden Code versucht Serendipity, Ihre Artikel-URL mit der
Ergänzung <code>/trackback/</code> aufzurufen. Die meisten WordPress-Blogs verwenden
dieses Schema, geben aber den von Serendipity benötigten Code nicht aus. Damit
ein Trackback in so einem Fall nicht fehlschlägt, wendet Serendipity daher diese
zweite Methode an.</p>

<p>
<span class="tag-box invisible">
    <span class="inline-tag">Pingback</span>
</span>
Wenn auch die zweite Methode fehlschlägt, versucht Serendipity ein Pingback an
das entsprechende Blog zu senden. Ein Pingback stellt sozusagen ein
funktionsreduziertes Trackback dar, denn ein Pingback enthält keinen
Artikelauszug oder die URL zu Ihrem Artikel. Es dient daher lediglich dem
fremden Blog als Hinweis, dass sich jemand auf dessen Artikel bezieht.</p>

<p>Wenn ein Trackback oder Pingback erfolgreich gesendet wurde, kann es dennoch
eine Weile dauern, bis es im fremden Blog angezeigt wird. Häufig müssen
Trackbacks vom Autor erst freigeschaltet werden, bevor sie erscheinen.</p>

<p>Beim Speichern eines Artikels kann Serendipity folgende Meldungen ausgeben:</p>

<p class="tagging invisible">
<span class="tag-box invisible">
    <span class="inline-tag">Trackback-Meldungen</span>
</span>
</p>

<p class="indent">
<span class="msg-hint">Überprüfe http://... auf mögliche Trackbacks ...</span>
<span class="desc-info">wird für jede im Artikel angegebene URL angezeigt.</span>
</p>

<p class="indent">
<span class="msg-hint">Sende Trackback zu URI http://... ...</span>
<span class="desc-info"> wird
ausgegeben, wenn eine Trackback-fähige URL gefunden wurde. Wenn nach dieser
Ausgabe nichts weiter erscheint, wird Ihr Server durch eine Firewall blockiert
und verhindert die Ausführung des Trackbacks. In diesem Fall müssen Sie
Trackbacks deaktivieren.</span>
</p>

<p class="indent">
<span class="msg-hint">Trackback erfolgreich!</span>
<span class="desc-info"> erscheint, wenn ein Trackback erfolgreich ausgeführt wurde.</span>
</p>

<p class="indent">
<span class="msg-hint">URI enthielt keine Daten</span>
<span class="desc-info"> erscheint, wenn die angegebene URL nicht
aufgerufen werden konnte, da sie keine Daten zurücklieferte. Dies kann passieren,
wenn ein Webserver nicht erreichbar ist oder die URL ungültig war.</span>
</p>

<p class="indent">
<span class="msg-hint">Trackback gescheitert: Keine Trackback-URI gefunden</span>
<span class="desc-info"> erscheint, wenn
die URL die notwendigen Meta-Daten zum Senden eines Trackbacks nicht enthielt.
Diese Meldung erscheint auch, wenn Sie beispielsweise Links zu Amazon in Ihrem
Blog-Artikel verwenden, da Amazon keine Trackbacks unterstützt. Daher muss diese
Meldung nicht zwangsläufig auf einen Fehler hinweisen, sondern informiert Sie
lediglich, dass kein Trackback gesendet wurde.</span>
</p>

<p class="indent">
<span class="msg-hint">Trackback gescheitert: Die automatisch erkannte Trackback-URI gleicht nicht der angegebenen URI</span>
<span class="desc-info">weist Sie darauf hin, dass Serendipity zwar
die benötigten Meta-Daten auf einem Blog finden konnte, diese aber eine falsche
URL ausweisen. Wenn Sie zB. ein Trackback zu
<code>http://example.com/serendipity/archives/1-Eintrag.html</code> senden wollen, aber
das Blog eigentlich unter
<code>http://www.example.com/serendipity/archives/1-Eintrag.html</code> läuft (beachten
Sie das <code>www.</code> in der URL), kann ein solcher Fehler entstehen. Serendipity benötigt
immer exakt die URL, die das fremde Blog als <em>offiziell</em> angibt.</span>
</p>

<p class="indent">
<span class="msg-hint">Kein Trackback: Konnte Verbindung zu ... auf Port ... nicht herstellen</span>
<span class="desc-info"> erscheint, wenn Ihr Webserver aufgrund von Verbindungsproblemen
die angegebene URL nicht erreichen konnte. Probieren Sie es
eventuell später einmal, oder prüfen Sie, ob Sie die korrekte URL eingetragen haben.</span>
</p>

<p class="indent">
<span class="msg-hint">Sending pingback to URI ...</span>
<span class="desc-info"> erscheint, wenn eine Pingback-fähige
URL gefunden wurde und Serendipity nun einen Pingback sendet.</span>
</p>

<p class="indent">
<span class="msg-hint">Pingback successful</span>
<span class="desc-info"> erscheint bei einem erfolgreichen Pingback.</span>
</p>

<p class="indent">
<span class="msg-hint">Pingback failed: No pingback-URI found</span>
<span class="desc-info"> erscheint, wenn keine Pingback-fähige URL gefunden wurde.</span>
</p>

<p>&nbsp;</p>

<p>
<span class="tag-box invisible">
    <span class="inline-tag">Fehler!Trackbacks</span>
    <span class="inline-tag">Firewall</span>
    <span class="inline-tag">Proxy-Server</span>
</span>
Damit ein Trackback erfolgreich gesendet werden kann, muss Ihr Webserver
ausgehende HTTP-Verbindungen zulassen. Wird dies durch eine Firewall verhindert,
können Sie eventuell einen Proxy-Server dazu einsetzen, den Sie über das Plugin
<em>Trackbacks kontrollieren</em> (siehe Folgeabschnitt) festlegen können.</p>

<p>Da Serendipity jede angegebene URL (bis auf bekannte Dateitypen wie <code>.exe,
.pdf, .avi</code> etc.) aufruft, kann der Vorgang beim Speichern einige Zeit in
Anspruch nehmen.</p>

<p><span class="label invisible" id="trackbacks-resend">trackbacks-resend</span>
<span class="tag-box invisible">
    <span class="inline-tag">Veroeffentlichung@Veröffentlichung</span>
</span>
Serendipity führt Trackbacks nur bei Artikeln aus, die Sie im Status
<em>Veröffentlichen</em> speichern. Wenn Sie eine neue URL zu einem bestehenden,
veröffentlichten Artikel hinzufügen, wird beim Speichern ebenfalls ein Trackback
gesendet. Zu bereits enthaltenen URLs wird nach der Veröffentlichung kein
weiterer Trackback geschickt. Wenn es Probleme beim ersten Versand gab, können
Sie ein neues Trackback senden, indem Sie Ihren Artikel zuerst wieder als
<em>Entwurf</em> speichern und danach nochmals als <em>Veröffentlichung</em>.</p>

</section><!-- section.sub end -->

<section id="U812" class="sub">
<span class="u-toc">8.1.2 - Plugin: Trackbacks kontrollieren</span>

<h3 class="subsection" id="plugin-trackbacks-kontrollieren">Plugin: Trackbacks kontrollieren</h3>

<p class="tagging invisible">
<span class="tag-box invisible">
    <span class="inline-tag">Plugins!Trackbacks kontrollieren</span>
    <span class="inline-tag">Trackbacks!kontrollieren</span>
</span>
</p>

<p>Wie beschrieben, sendet Serendipity automatisch immer Trackbacks an alle
erkannten URLs im Beitrag. Es kann jedoch auch vorkommen, dass Sie einmal
bewusst kein Trackback setzen möchten oder dass Sie ein Trackback zu einer
speziellen URL senden wollen, die Sie im Artikeltext selbst aber nicht angeben
möchten. Bei beiden Fällen hilft das Ereignis-Plugin <em>Trackbacks
kontrollieren</em> (siehe Seite <span class="pageref"><a href="#trackbacks">trackbacks</a></span>).</p>

<p>Sobald Sie dieses Plugin installiert haben, können Sie bei einem Eintrag im
Abschnitt <em>Erweiterte Optionen</em> einstellen, ob Trackbacks gesendet werden
sollen und an welche zusätzlichen URLs Sie ein Trackback schicken wollen.</p>

<p>Die zusätzlichen URLs können dabei direkt Trackback-URLs entsprechen, wie sie
auf einem fremden Blog beworben/angezeigt werden. Üblicherweise geben Sie in
Ihrem Artikel bereits immer einen Link an, mit dem der Besucher zu der normalen
Seite gelangt. Wenn dieser Link jedoch keinen Trackback-Code enthält, müssten
Sie eine gültige Trackback-URL manuell eintragen.</p>

<p>Dazu ein Beispiel: In einem WordPress-Blog finden Sie unter der URL
<code>http://wp.com/?p=1337</code> einen Artikel, auf den Sie sich beziehen möchten.
Dieses Blog enthält jedoch keine Meta-Daten, und auf der Seite selbst sehen Sie,
dass der Trackback-Link <code>http://wp.com/p1337/trackback</code> lauten müsste.
Unbekümmert davon erstellen Sie einen Blog-Eintrag mit folgendem Inhalt:</p>

<pre><code class="html">
    Mein Bruder schreibt &lt;a href="http://wp.com/?p=1337"&gt;seine<br>
    Doktorarbeit&lt;/a&gt;.
</code></pre>

<p>Wenn Sie nun den Eintrag speichern, meldet Serendipity, dass es unter der
eingegebenen URL keine Trackback-Daten entdecken kann. Daher kann kein Trackback
gesendet werden. Sie erinnern sich an die Trackback-URL und ändern Ihren
Artikel so ab, dass Sie den Link <code>http://wp.com/p1337/trackback</code> einsetzen.
Doch auch hier meldet Serendipity, dass es keine Meta-Daten finden kann.</p>

<p>Hier kommt nun das Plugin ins Spiel. In dem Eingabefeld des Abschnitts
<span class="mbold">Erweiterte Optionen</span> müssen Sie die
Trackback-URL <code>http://wp.com/p1337/trackback</code> eintragen, und im Artikel
selbst können Sie wieder die normale URL <code>http://wp.com/?p=1337</code> verwenden.
Nun erkennt Serendipity, dass Sie ein Trackback zu der eingetragenen URL
erzwingen wollen, und führt es aus.</p>

<p>Weitere Anwendungsmöglichkeiten schlagen Sie bitte auf der genannten
Seite bei der Plugin-Beschreibung nach.</p>

<p>
<span class="tag-box invisible">
    <span class="inline-tag">Trackbacks!deaktivieren</span>
</span>
Sie können Trackbacks zentral deaktivieren, indem Sie die Variable
<code>$serendipity['noautodiscovery']</code> in der Serendipity-Konfigurationsdatei
<code>serendipity_config_local.inc.php</code> auf <code>true</code> setzen (siehe Seite <span class="pageref"><a href="#noautodiscovery">noautodiscovery</a></span>).</p>

</section><!-- section.sub end -->

<section id="U813" class="sub">
<span class="u-toc">8.1.3 - Plugin: Einträge ankündigen (XML-RPC Pings)</span>

<h3 class="subsection" id="plugin-einträge-ankündigen-xml-rpc-pings">Plugin: Einträge ankündigen (XML-RPC Pings)</h3>

<p class="tagging invisible">
<span class="tag-box invisible">
    <span class="inline-tag">Eintrag!ankündigen</span>
    <span class="inline-tag">XML-RPC!Pings</span>
    <span class="inline-tag">Webservices</span>
</span>
</p>

<p>Zusätzlich zu Trackbacks und Pingbacks gibt es ein Angebot an Webservices, die
regelmäßig Weblogs indizieren und automatisch miteinander verketten. Der
bekannteste Dienst ist
<span class="tag-box invisible">
    <span class="inline-tag">Technorati</span>
    <span class="inline-tag">Ranking</span>
</span>
Technorati [*]
<span class="footnote"><i class="fa fa-info-circle"></i> <a href="http://www.technorati.com/" target="_blank">http://www.technorati.com/</a></span><!-- footnote -->,
das unter anderem auch die <em>Wichtigkeit</em> von Blogs auswerten kann, indem es
Blogs hochrangig einstuft, die besonders häufig zitiert werden.</p>

<p>Derartige Webservices durchsuchen üblicherweise (wie Google) regelmäßig Ihr Blog.
Damit ein Service aber sofort bei neuen Einträgen von Ihnen tätig werden kann,
müssen Sie dafür sorgen, dass der Webservice kontaktiert wird, sobald Sie einen
Eintrag speichern.</p>

<p>Das Plugin <em>Einträge ankündigen</em> (siehe Seite <span class="pageref"><a href="#weblogping">weblogping</a></span>)
kann dies für Sie erledigen. Mittels einer XML-RPC-Schnittstelle kann es einen
sogenannten Ping senden, der dem Webservice mitteilt: "<em>Guck mal, hier
gibt's was Neues</em>".</p>

</section><!-- section.sub end -->

<section id="U814" class="sub">
<span class="u-toc">8.1.4 - Trackbacks und Pingbacks empfangen</span>

<h3 class="subsection" id="trackbacks-und-pingbacks-empfangen">Trackbacks und Pingbacks empfangen</h3>

<p class="tagging invisible">
<span class="tag-box invisible">
    <span class="inline-tag">Trackbacks!empfangen</span>
</span>
</p>

<p>Selbstverständlich kann Serendipity nicht nur Trackbacks versenden, sondern auch
empfangen.</p>

<p>Dazu werden die notwendigen Meta-Daten für die Trackback-URL in jedem
Blog-Eintrag automatisch eingebettet. Die Trackback-URL ist die Schnittstelle,
die ein anderes Blog aufrufen muss, um dorthin einen Verweis zu einem eigenen
Artikel zu übermitteln.</p>

<p>Eine Trackback-URL sieht aus wie
<code>http://www.example.com/serendipity/comment.php?type=trackback&amp;entry_id=1337</code>. Diese
URL ist nicht dazu gedacht, von einem normalen Browser aufgerufen zu werden,
daher erhalten Sie in diesem Fall eine Fehlermeldung. Ein fremdes Blog jedoch
übermittelt an diese URL alle notwendigen Variablen, die Serendipity benötigt, um
Ihrem Artikel ein Trackback hinzuzufügen.</p>

<p>Damit Sie Trackbacks zu einem Artikel empfangen können, müssen Sie bei dem
jeweiligen Artikel die Ankreuzbox <span class="mbold">Kommentare für diesen Eintrag zulassen</span>
aktiviert haben (dies ist standardmäßig der Fall).</p>

<p>Auch das Anti-Spam-Plugin von Serendipity (siehe Seite <span class="pageref"><a href="#spamblock">spamblock</a></span>)
weist einige Optionen auf, die Sie dafür einsetzen können, Trackbacks zu
erlauben, automatisch zu moderieren oder auch gänzlich abzuweisen (siehe Folgekapitel).</p>

<p>Empfangene Trackbacks werden auf der Detailseite des Blog-Eintrags oberhalb
der Kommentare angezeigt. Sie können die Darstellung von Trackbacks (und auch
Kommentaren) gänzlich verhindern, indem Sie den jeweiligen Bereich in Ihrem
Template löschen (siehe Seite <span class="pageref"><a href="#frontend-tpl">frontend-tpl</a></span>).</p>

<p>
<span class="tag-box invisible">
    <span class="inline-tag">Bulletproof</span>
</span>
Templates wie <span class="mbold">Bulletproof</span> ermöglichen es sogar, über
Template-Optionen festzulegen, ob Sie einen Kommentar- und Trackback-Bereich
anzeigen oder verstecken wollen.</p>

</section><!-- section.sub end -->

<section id="U815" class="sub">
<span class="u-toc">8.1.5 - Trackback- und Kommentar-Spam</span>

<h3 class="subsection" id="trackback-und-kommentar-spam">Trackback- und Kommentar-Spam</h3>

<p class="tagging invisible">
<span class="tag-box invisible">
    <span class="inline-tag">Kommentare!vollständig verbieten</span>
    <span class="inline-tag">Trackbacks!vollständig verbieten</span>
    <span class="inline-tag">Systemressourcen</span>
    <span class="inline-tag">Performance</span>
    <span class="inline-tag">Traffic</span>
</span>
</p>

<p class="tagging invisible">
<span class="tag-box invisible">
    <span class="inline-tag">Popularität</span>
</span>
</p>

<p>Weblogs laden Besucher dazu ein, Kommentare zu hinterlassen oder sich mit
Trackbacks auf Einträge zu beziehen. Erst diese Vernetzung und Interaktivität
ist es, was Weblogs so populär und beliebt macht und von einfachen Newstickern
oder Content-Management-Systemen unterscheidet.</p>

<p class="tagging invisible">
<span class="tag-box invisible">
    <span class="inline-tag">Spam</span>
</span>
</p>

<p>Die große Popularität und hohe Einstufung in Suchmaschinen bezahlen Blogger
jedoch mit einem ebenso hohen Preis: SPAM.</p>

<p>Spam ist der Sammelbegriff für jegliche Form der unerwünschten Werbung.
Kommentarspam bewirbt Webseiten oder andere Produkte und wird von
Spammern meist automatisiert verschickt. Spammern ist es dabei egal, ob ihre
Werbung auf einem Blog irgendwann gelöscht oder moderiert wird, denn wenn
mehrere hunderttausend Blogs mit ihren Botschaften bestückt werden und davon
90% der Kommentare gelöscht werden, bleiben dennoch tausende Kommentare übrig.</p>

<p class="tagging invisible">
<span class="tag-box invisible">
    <span class="inline-tag">Ranking</span>
</span>
</p>

<p>Spammer nennen ihre Webseiten in Blog-Kommentaren und erhöhen
so ihren Suchmaschinenrang durch den Rang des Blogs, auf dem sie kommentieren.
Durch eine Kooperation von Blog-Entwicklern und Suchmaschinenbetreibern wurde
ein HTML-Attribut
<span class="tag-box invisible">
    <span class="inline-tag">nofollow</span>
</span>
<em>nofollow</em> eingeführt. Dieses Attribut wurde automatisch an die Verweise
aller Webseiten in Blog-Kommentaren angehängt und führt dazu, dass Suchmaschinen
den Rang einer solchen Webseite nicht mit dem Blog verknüpfen.</p>

<p>Leider gilt dies aber nicht nur für Spammer, sondern für alle Kommentatoren. Und
so stellte sich heraus, dass diese Maßnahme eher den aufrichtigen Bloggern
und dem generellen Vernetzungsvorteil von Blogs schadet. Da nicht jedes
Blogsystem die <em>nofollow</em>-Attribute einsetzt, bleiben immer noch Blogs
online, in denen Kommentarspam suchmaschinenrelevante Wirkung erzielt. Die
Spammer senden also nach wie vor automatisierten Spam, denn auch hier zählt die
Masse. Wenn von 100.000 Kommentaren nur 100 ohne <em>nofollow</em>-Attribut
durchkommen, ist das für einen Spammer immer noch eine gute Quote. Denn
Kommentarspam kostet einzig Ressourcen durch benötigte Bandbreite und Computer,
die den Spam verschicken.</p>

<p class="tagging invisible">
<span class="tag-box invisible">
    <span class="inline-tag">Botnetze@Bot-Netze</span>
    <span class="inline-tag">Trojaner</span>
</span>
</p>

<p>Dabei verschicken Spammer inzwischen ihre Nachrichten (genauso wie bei
E-Mail-Spam) nicht mehr über eigene Leitungen und Computer, sondern sie nutzen
sogenannte <em>Bot-Netze</em>. Ein Bot-Netz ist ein Netzwerk aus viren- und
trojanerverseuchten Computern ganz normaler Internetbenutzer. Viren und
Trojaner kann sich ein normaler Computerbenutzer
mittlerweile sehr einfach über Browser einfangen, und aufgrund der Unkenntnis
vieler Benutzer fällt ihnen das gar nicht auf. Bei den Milliarden von
Internet-Nutzern ist es leider nach wie vor nicht selbstverständlich, aktuelle
Virenscanner einzusetzen --, und so kommen jeden Tag tausende neuer Benutzer in
den riesigen Bot-Netzen hinzu.</p>

<p>Diese Bot-Netze können von den Spammern ferngesteuert werden, indem sie fremde
Computer dazu anweisen, Kommentar- oder E-Mail-Spam zu versenden. So können die
Spammer Bandbreiten bündeln und mit tausenden gleichzeitigen Zugriffen einen
Webserver sogar völlig überlasten.</p>

<p>Die Betreiber der angegriffenen Server haben wenig Chancen, dagegen vorzugehen:
Sie können die Benutzer nicht blocken, da sie für den Server wie ein ganz
normaler Besucher einer Webseite aussehen. Die Bot-Netze verfügen über riesige
Kontingente an voneinander unabhängigen PCs mit ganz unterschiedlichen
IP-Adressen und können so nicht lokalisiert werden.</p>

<p>Man kann daher das Spam-Problem nur an seiner Wurzel packen, indem man auf
Spam-Angebote wie Viagra, Sex-Offerten und Geldanleihen verzichtet. Dies ist
jedoch ein soziales, menschliches Problem, das wohl niemals aus der Welt zu
schaffen ist. Mittelfristig kann es daher nur helfen, wenn Sie selbst auf die
Sicherheit ihres Computers achten, Anti-Viren-Software einsetzen und Ihre
Bekannten und Freunde über die Gefahren des Internets aufklären. Auch die
Gesetzgebung ist gefragt, mit Spam-Verboten und möglicherweise der Einführung
von <em>Internet-Führerscheinen</em> dem Missbrauch Einhalt zu gebieten. Immerhin
darf man auch ein Auto erst führen, wenn man es bedienen kann - auch mit dem
Internet ist heutzutage viel Schaden anzurichten.</p>

<p>Bei immer größer werdender Bandbreite der privaten
Internetanschlüsse dank DSL und VSDL werden solche Bot-Netze für
Server-Betreiber zu einer immer größeren Gefahr, da sie ein Blog vollständig
lahmlegen können. Dem können Sie nur begrenzt vorbeugen (siehe Seite
<span class="pageref"><a href="#performance">performance</a></span>).</p>

<p>Nach so viel Pessimismus sei aber auch erwähnt, dass Sie
dem Treiben zumindest in gewissem Maße Einhalt gebieten können. Zentrale
Anlaufstelle hierfür ist das Serendipity-Ereignis-Plugin <em>Anti-Spam</em>. Wenn
Sie dieses installieren, können Sie durch zahlreiche Mechanismen gezielt gegen
Kommentar- und Trackbackspam vorgehen (siehe Seite <span class="pageref"><a href="#spamblock">spamblock</a></span>).</p>

<p>Wenn Spammer Ihr Blog torpedieren, kann es jedoch sein, dass selbst das
Anti-Spam-Plugin zu viele Ressourcen bindet. Denn bei jedem Kommentar oder
Trackback muss sich der Serendipity-Softwarekern initialisieren, eine
Datenbankverbindung aufbauen und die Anti-Spam-Checks durchführen sowie
möglicherweise weitere Server (wie Akismet) kontaktieren. All dies benötigt
Zeit, die der Webserver aber womöglich nicht hat, wenn er mehrere hundert
gleichzeitige Zugriffe regeln muss.</p>

<p>In so einem Fall sind Sie sehr auf die Hilfe Ihres Server-Providers angewiesen.
Dieser kann auf Netzwerk-Ebene und auf Server-Ebene einige Vorkehrungen
treffen, damit ein Webserver nicht völlig unerreichbar wird. Er kann die Anzahl
der maximalen Zugriffe limitieren und etwaige IP-Adressbereiche bei
Überbenutzung sperren. Eine Blockade durch Bot-Netze nennt man
<span class="tag-box invisible">
    <span class="inline-tag">DDoS</span>
</span>
<em>DDoS (Distributed Denial of Service)</em>. Während viele Provider lediglich
mit Abschaltung ihres Servers reagieren, gibt es auch ernsthaft bemühte
Provider, die hier gemeinsam mit Ihnen an einer Lösung arbeiten.
Provider wie <em>Manitu</em> [*]
<span class="footnote"><i class="fa fa-info-circle"></i> <a href="http://www.manitu.net/" target="_blank">http://www.manitu.net/</a></span><!-- footnote -->,
<em>TiggersWelt</em> [*]
<span class="footnote"><i class="fa fa-info-circle"></i> <a href="http://www.tiggerswelt.net/" target="_blank">http://www.tiggerswelt.net/</a></span><!-- footnote --> und
<em>All-Inkl.com</em> [*]
<span class="footnote"><i class="fa fa-info-circle"></i> <a href="http://www.all-inkl.com/" target="_blank">http://www.all-inkl.com/</a></span><!-- footnote --> sind bekannt
dafür, hier individuelle Lösungsmöglichkeiten anzubieten.</p>

<p>Abhilfe schafft hier auch die Spamschutz Biene (siehe Seite
<span class="pageref"><a href="#serendipity_event_spamblock_bee">Spamschutz Biene</a></span>),
die den über 90 Prozent tumben Spambots schon an vorderster Front
den Garaus macht und am wenigsten der teuren Ressourcen bindet.</p>

<p><span class="label invisible" id="commentphp">commentphp</span>
<span class="tag-box invisible">
    <span class="inline-tag">Trackbacks!verbieten</span>
</span>
Temporär können Sie Kommentare und Trackbacks vollständig unterbinden, indem Sie
die Datei <code>comment.php</code> von Serendipity löschen oder umbenennen. Über diese
Datei werden Kommentare und Trackbacks angenommen.</p>

<p>Meist werden Trackbacks aufgrund ihrer Automatisierbarkeit von Spammern
bevorzugt. Zwar können Sie Trackbacks auch über das Anti-Spam-Plugin vollständig
deaktivieren, aber dies bindet wie erwähnt Systemressourcen. Daher
können Sie alternativ die Serendipity-Datei <code>comment.php</code> mit einem Editor
bearbeiten und dort in der ersten Zeile Folgendes eingeben:</p>

<pre><code class="php">
    &lt;?php if ($_GET['type'] == 'trackback') die('No Service.'); ?&gt;
</code></pre>

<p>Diese Zeile weist Serendipity an, bei einem Trackback-Versuch die Ausführung des
Scripts sofort zu beenden und Ressourcen zu sparen.</p>

</section><!-- section.sub end -->

</section><!-- section.index end -->

<section id="S820" class="index">
<span class="s-toc">8.2 - Wartung der Datenbank und der Dateien</span>

<h3 class="section" id="wartung-der-datenbank-und-der-dateien">Wartung der Datenbank und der Dateien</h3>

<p class="tagging invisible">
<span class="tag-box invisible">
    <span class="inline-tag">Datenbank!Wartung</span>
</span>
</p>

<p>Serendipity speichert bis auf die Dateien der Mediendatenbank alle Informationen
in seiner Datenbank. Einträge speichert Serendipity beispielsweise in der
Datenbanktabelle <code>serendipity_entries</code>, Kategorien in der Tabelle
<code>serendipity_category</code> (eine vollständige Liste der Tabellen finden Sie ab
Seite <span class="pageref"><a href="#er-schema">er-schema</a></span>).</p>

<p>Diese Tabellen werden im Laufe der Betriebszeit Ihres Blogs immer voller
und größer. Möglicherweise hat Ihr Provider Ihnen jedoch eine bestimmte
Größenbeschränkung der Datenbanktabelle auferlegt, und irgendwann könnte es zu
Fehlermeldungen kommen, die Sie darauf hinweisen, dass Sie Ihr Limit
überschritten haben.</p>

<p>Daher kann es von Zeit zu Zeit sinnvoll sein, dass Sie ihre Datenbank warten und
nicht länger benötigte Einträge löschen. Die Datenbank speichert Ihre
Dateien meist in (für Sie) versteckten Verzeichnissen, daher können Sie
nur mittels spezieller Datenbank-Wartungsprogramme auf die Inhalte direkt
zugreifen. Abhängig von der bei Ihnen eingesetzten Datenbank haben Sie die Wahl
zwischen verschiedenen Programmen.</p>

<p><span class="label invisible" id="datenbankwartung">datenbankwartung</span> Für MySQL ist das Web-basierte Programm
<span class="tag-box invisible">
    <span class="inline-tag">phpMyAdmin</span>
</span>
<code>phpMyAdmin</code> [*]
<span class="footnote"><i class="fa fa-info-circle"></i> <a href="http://www.phpmyadmin.net" target="_blank">http://www.phpmyadmin.net</a></span><!-- footnote --> sehr verbreitet.
Viele Provider bieten eine vorinstallierte Version für Sie an. Die Installation
von phpMyAdmin ist zwar mit etwas Konfigurationsaufwand verbunden, aber auf der
Homepage gut dokumentiert.</p>

<p>Für PostgreSQL steht
<span class="tag-box invisible">
    <span class="inline-tag">phpPgAdmin</span>
</span>
<code>phpPgAdmin</code> [*]
<span class="footnote"><i class="fa fa-info-circle"></i> <a href="http://phppgadmin.sourceforge.net" target="_blank">http://phppgadmin.sourceforge.net</a></span><!-- footnote -->
zur Verfügung, das an phpMyAdmin angelehnt ist.</p>

<p>Beim Einsatz von SQLite ist die Wahl etwas schwieriger, da dieser Datenbanktyp
weniger stark verbreitet ist.
<span class="tag-box invisible">
    <span class="inline-tag">phpSQLiteAdmin</span>
</span>
<code>phpSQLiteAdmin</code> [*]
<span class="footnote"><i class="fa fa-info-circle"></i> <a href="http://www.phpguru.org/static/phpSQLiteAdmin.html" target="_blank">http://www.phpguru.org/static/phpSQLiteAdmin.html</a></span><!-- footnote --> kann
Ihnen möglicherweise gute Dienste leisten.</p>

<p>Abgesehen von den Web-basierten Verwaltungsprogrammen gibt es auch eigenständige
Windows- oder Linux-Anwendungen, die Sie selbstverständlich auch einsetzen
können.</p>

<p>Die Wahl und Installation der Verwaltungssoftware ist unabhängig von
Serendipity und kann daher hier nicht eingehender erklärt werden. Die folgenden
Beispiele beziehen sich allesamt auf das verbreitete <code>phpMyAdmin</code>.</p>

<p>In Ihrem Verwaltungsprogramm können Sie alle Datenbanktabellen von Serendipity
einsehen. Wir gehen im Folgenden davon aus, dass Sie nur Tabellen warten
möchten, in denen weniger relevante Daten (wie moderierte Kommentare, Logfiles, Referrer)
gespeichert werden. Wenn Sie Blog-Artikel oder Plugins löschen wollen, können
Sie dies über die normale Serendipity-Oberfläche tun. Wartbare Daten finden Sie in
den im Folgenden erwähnten Tabellen.</p>

<section id="U821" class="sub">
<span class="u-toc">8.2.1 - serendipity_spamblocklog, serendipity_karmalog, serendipity_cronjoblog</span>

<h3 class="subsection" id="serendipity_spamblocklog-serendipity_karmalog-serendipity_cronjo">serendipity_spamblocklog, serendipity_karmalog, serendipity_cronjoblog</h3>

<p class="tagging invisible">
<span class="tag-box invisible">
    <span class="inline-tag">Datenbank-Tabellen!serendipity_spamblocklog</span>
    <span class="inline-tag">Datenbank-Tabellen!serendipity_karmalog</span>
    <span class="inline-tag">Datenbank-Tabellen!serendipity_cronjoblog</span>
    <span class="inline-tag">Logfiles</span>
    <span class="inline-tag">Protokolle</span>
</span>
</p>

<p>Einige Plugins erstellen Datenbanktabellen, um darin ihre Protokolle
(<em>Logs</em>) abzulegen. Andere Plugins nutzen dafür auch normale Dateien (im
Verzeichnis <code>templates_c</code>), jedoch hat die Speicherung in der Datenbank den
Vorteil, dass Sie diese mit Programmen wie phpMyAdmin komfortabel ansehen und
auch beliebig filtern können.</p>

<p>In der Tabelle <code>serendipity_spamblocklog</code> werden beispielsweise alle
Vorgänge gespeichert, bei denen das <em>Anti-Spam</em>-Plugin Kommentare oder
Trackbacks moderiert/abgewiesen hat. Da diese Protokolle in einer Tabelle
gespeichert werden, können Sie diese leicht nach Datum oder Typ filtern. Die
Beschreibung der jeweiligen Datenbankfeldnamen ist auf Seite
<span class="pageref"><a href="#db-spamblocklog">db-spamblocklog</a></span> dokumentiert.</p>

<p><span class="label invisible" id="spamblocklog-loeschen">spamblocklog-loeschen</span>
Das Plugin löscht in der Tabelle selbständig keine Einträge. Wenn Sie Ihr Blog
also zwei Jahre lang betreiben, sammeln sich in dieser Tabelle <em>alle</em>
abgewiesene Kommentare über diesen Zeitraum hinweg. In den seltensten Fällen
benötigen Sie diese Datensätze jedoch noch. Daher können Sie regelmäßig die
Einträge dieser Protokoll-Tabelle über einen
<span class="tag-box invisible">
    <span class="inline-tag">SQL-Dump</span>
</span>
SQL-Dump (siehe Abschnitt <span class="reference">backups</span> ab Seite <span class="pageref"><a href="#backups">backups</a></span>)
auf Ihrer Festplatte sichern und dann die Datenbanktabelle leeren (SQL-Anweisung:
<code>TRUNCATE TABLE serendipity_spamblocklog</code>). Sie können aber auch mit einer
einfachen SQL-Anweisung alle Einträge löschen, die älter als vier Wochen sind:</p>

<pre><code class="sql">
    DELETE FROM serendipity_spamblocklog WHERE timestamp &lt;<br>
    (UNIX_TIMESTAMP(NOW()) - (86400*30))
</code></pre>

<p>Der Zeitstempel (<em>timestamp</em>) eines Eintrags wird in Sekunden gespeichert,
und die SQL-Abfrage sucht alle Einträge, die älter als der heutige Zeitstempel
minus 30 Tage (86400 Sekunden entsprechen einem Tag) sind.</p>

<p>Diese SQL-Abfrage können Sie auch automatisch einmal im Monat über einen
<span class="tag-box invisible">
    <span class="inline-tag">Cronjob</span>
</span>
Cronjob ausführen, wenn Sie über einen SSH-Zugang zu Ihrem Blog
verfügen. Denkbar wäre auch, dass Sie folgende PHP-Datei im Serendipity-Verzeichnis
unter dem Namen <code>log_recycle.php</code> speichern:</p>

<pre><code class="php">
    &lt;?php<br>
    include 'serendipity_config.inc.php';<br>
    serendipity_db_query("DELETE FROM serendipity_spamblocklog WHERE
    timestamp &lt; (UNIX_TIMESTAMP(NOW()) - (86400*30))");<br>
    ?&gt;
</code></pre>

<p>Diese Datei können Sie (via cronjob oder manuell) regelmäßig dann unter
<code>http://www.example.com/serendipity/log_recycle.php</code> aufrufen
und mit weiteren Aufrufen der <code>serendipity_db_query()</code>-Funktionen
für andere Datenbanktabellen ergänzen.</p>

<p>Dasselbe gilt für die Datenbanktabelle <code>serendipity_karmalog</code>. Diese wird
vom Plugin <em>Karma (Abstimmung über die Einträge</em> - siehe Seite
<span class="pageref"><a href="#Karma">Karma</a></span>) erzeugt und enthält eine Liste aller abgegebenen Abstimmungen
pro Eintrag und pro Person. Die Datenbanktabelle <code>serendipity_cronjoblog</code> wird durch das Plugin
<em>Cronjob</em> (siehe Seite <span class="pageref"><a href="#Cronjobsched">Cronjobsched</a></span>) angelegt und enthält eine
Liste der zuletzt automatisch aufgerufenen Plugins.</p>

<p>Alle genannten Tabellen können über die Zeit sehr groß werden. Vergessen Sie
daher nicht, diese in regelmäßigen Abständen zu prüfen. Natürlich können Sie
jedes Plugin auch so konfigurieren, dass die Protokolle erst gar nicht
gespeichert werden, wenn Sie diese nicht benötigen.</p>

<p><span class="mbold">Serendipity Styx</span> hat dies als Problem erkannt
und in der Backend Wartung ein neues Feld <span class="mbold">Spamblock Wartung</span>
eingebaut, mittels dem man das Aufräumen der Datenbank Spam-Logs variantenreich
veranlassen bzw. periodisch anstoßen kann.</p>

</section><!-- section.sub end -->

<section id="U822" class="sub">
<span class="u-toc">8.2.2 - serendipity_spamblocklog_htaccess</span>

<h3 class="subsection" id="serendipity_spamblocklog_htaccess">serendipity_spamblocklog_htaccess</h3>

<p class="tagging invisible">
<span class="tag-box invisible">
    <span class="inline-tag">Datenbank-Tabellen!serendipity_spamblocklog_htaccess</span>
</span>
</p>

<p class="tagging invisible">
<span class="tag-box invisible">
    <span class="inline-tag">htaccess@.htaccess</span>
</span>
</p>

<p>Einen Sonderfall der Protokollierung des
<em>Anti-Spam</em>-Plugins stellt die
Tabelle <code>serendipity_spamblocklog_htaccess</code> dar. Wenn in diesem Plugin die
automatische Aktualisierung der Datei <code>.htaccess</code> aktiviert wurde, werden in
dieser Tabelle alle zu blockenden IP-Adressen aufgeführt. Diese Datenbasis wird
dann für die Erzeugung der <code>.htaccess</code>-Datei verwendet.</p>

<p>Dabei benutzt das Plugin jedoch standardmäßig nur die Daten der letzten zwei
Tage. Die älteren Daten bleiben weiterhin vorhanden und müssen von Ihnen bei
Bedarf gelöscht werden, da das Plugin sonst davon ausgeht, dass Sie die alten
Daten zu statistischen (oder anderen externen) Zwecken möglicherweise
beibehalten möchten.</p>

</section><!-- section.sub end -->

<section id="U823" class="sub">
<span class="u-toc">8.2.3 - serendipity_visitors</span>

<h3 class="subsection" id="serendipity_visitors">serendipity_visitors</h3>

<p class="tagging invisible">
<span class="label invisible" id="wartung-visitors">wartung-visitors</span>
<span class="tag-box invisible">
    <span class="inline-tag">Datenbank-Tabellen!serendipity_visitors</span>
</span>
</p>

<p class="tagging invisible">
<span class="tag-box invisible">
    <span class="inline-tag">Performance</span>
</span>
</p>

<p>Das <em>Statistik</em>-Plugin von Serendipity kann jeden Besucher zählen und eine
Aufrufstatistik einbinden. Dafür muss jeder Besucher in der Datenbanktabelle
<code>serendipity_visitors</code> erfasst werden.</p>

<p>Bei größeren Blogs kann diese Datenbank enorme Größen annehmen, da ältere
Einträge nicht automatisch gelöscht werden. Da bei aktivierter Besucherstatistik
bei jedem Seitenaufruf ein schreibender Zugriff auf diese Tabelle erfolgt, kann
bei einer großen Tabelle die Performance des gesamten Frontends spürbar sinken.</p>

<p>Daher sollten Sie besonders diese Tabelle im Auge behalten. Selten ist es von
Interesse, die Statistik des letzten Jahres anzusehen - löschen Sie also in
diesem Fall alte Datensätze auch regelmäßig (wie eingangs beschrieben).</p>

<p><span class="mbold">Serendipity Styx</span> hat das Statistik-Plugin so umgebaut, dass es diese Tabelle
automatisch von allen Einträgen bereinigt, die älter als ein Jahr sind. Die
Zusammenfassungs-Daten sind hiervon nicht berührt.</p>

</section><!-- section.sub end -->

<section id="U824" class="sub">
<span class="u-toc">8.2.4 - serendipity_exits</span>

<h3 class="subsection" id="serendipity_exits">serendipity_exits</h3>

<p class="tagging invisible">
<span class="tag-box invisible">
    <span class="inline-tag">Datenbank-Tabellen!serendipity_exits</span>
</span>
</p>

<p>Wenn Sie das Plugin <em>Textformatierung: Externe Links zählen</em> aktiviert
haben, wird jeder Klick auf einen Link, den Sie in einem Blog-Artikel eingebunden
haben, in der Datenbanktabelle <code>serendipity_exits</code> gespeichert. Anhand
dieser Daten kann später eine Statistik erstellt werden, welche Links Ihre
Besucher am häufigsten geklickt haben.</p>

<p>Abweichend von den bisher aufgeführten Datenbanktabellen werden die Daten hier
pro Tag gespeichert und nicht mit einem Zeitstempel versehen. Wenn Sie also
selektiv alte Datensätze löschen möchten, müssen Sie dies mit folgender
SQL-Anweisung tun:</p>

<pre><code class="sql">
    DELETE FROM serendipity_exits WHERE UNIX_TIMESTAMP(day) &lt; (UNIX_TIMESTAMP(NOW()) - (86400*30))
</code></pre>

</section><!-- section.sub end -->

<section id="U825" class="sub">
<span class="u-toc">8.2.5 - serendipity_referrers</span>

<h3 class="subsection" id="serendipity_referrers">serendipity_referrers</h3>

<p class="tagging invisible">
<span class="tag-box invisible">
    <span class="inline-tag">Datenbank-Tabellen!serendipity_referrers</span>
</span>
</p>

<p class="tagging invisible">
<span class="tag-box invisible">
    <span class="inline-tag">Referrer</span>
</span>
</p>

<p>Wenn Sie in der Serendipity-Konfiguration das <span class="mbold">Referrer-Tracking</span> aktiviert
haben, kann Ihr Blog bei jedem Besucher auswerten, von welcher Seite er zu Ihnen
gelangt ist. Diese Angaben können in der Statistik später angezeigt werden, um
aufzuschlüsseln, woher die meisten Besucher kommen.</p>

<p>Ähnlich wie die Tabelle <code>serendipity_exits</code> enthält die Tabelle
<code>serendipity_referrers</code> eine Liste von Links, die tagesabhängig sind. Sie
können daher folgenden SQL-Code verwenden, um die Referrer, die älter als einen
Monat sind, zu löschen:</p>

<pre><code class="sql">
    DELETE FROM serendipity_referrers WHERE UNIX_TIMESTAMP(day) &lt; (UNIX_TIMESTAMP(NOW()) - (86400*30))
</code></pre>


</section><!-- section.sub end -->

<section id="U826" class="sub">
<span class="u-toc">8.2.6 - Dateisystem</span>

<h3 class="subsection" id="dateisystem">Dateisystem</h3>

<p class="tagging invisible">
<span class="tag-box invisible">
    <span class="inline-tag">Wartung!Dateisystem</span>
</span>
</p>

<p>Im Dateisystem speichert Serendipity vor allem die Dateien der Mediendatenbank
(im Verzeichnis <code>uploads</code>) und temporäre Dateien (kompilierte Templates,
Caches).</p>

<p>Während Sie die Mediendatenbank über das normale Serendipity-Backend verwalten
können (und sollten), müssen Sie sich um temporäre Dateien eigentlich selten
kümmern. Diese werden im Verzeichnis <code>templates_c</code> gespeichert.</p>

<p>
<span class="tag-box invisible">
    <span class="inline-tag">Template-Sc@templates_c</span>
</span>
In diesem Verzeichnis finden Sie Dateien nach dem Muster
<code>default/0a/d8/ed/ef7eba96c[...]caf95d11_1.entries.tpl.php</code>. Dies sind die
Smarty-Templatedateien, die von Serendipity und Smarty in gültigen PHP-Code
umgewandelt werden (siehe Smarty-Beschreibung ab Seite <span class="pageref"><a href="#Smarty-Templates">Smarty-Templates</a></span>).
Der erste Teil des Dateinamens steht dabei für den Templatenamen
(<code>default</code>), dann folgt eine zufällige Folge von Sonderzeichen. Das Ende des
Dateinamens enthält den ursprünglichen Template-Dateinamen.</p>

<p>Für jede Smarty-Templatedatei finden Sie eine entsprechende temporäre,
kompilierte Datei. Diese Dateien können Sie immer gefahrlos löschen, denn wenn
sie nicht vorhanden sind, legt sie Smarty selbständig wieder an.</p>

<p>Wenn Sie in einer Testphase einmal unterschiedliche Templates aktiviert haben,
werden Sie für diese ebenfalls kompilierte Dateien auffinden. Diese können Sie
dann löschen, um etwas Speicherplatz zu sparen.</p>

<p>
<span class="tag-box invisible">
    <span class="inline-tag">Spartacus</span>
</span>
Weiterhin können sich im Verzeichnis <code>templates_c</code> auch beliebige temporäre
Dateien von Plugins befinden. Beispielsweise legt das Spartacus-Plugin (siehe
Seite <span class="pageref"><a href="#spartacus">spartacus</a></span>)
die XML-Dateien mit Paketinformationen hier unter dem Namen
<code>package_event_de.xml</code> oder <code>package_sidebar_de.xml</code> an.
Grundsätzlich gilt: Sie können <em>alle</em> Dateien in diesem Verzeichnis stets
gefahrlos löschen. Jedes Plugin ist so entwickelt, dass temporäre Dateien
automatisch neu (und mit frischem Inhalt) erstellt werden, wenn sie nicht mehr
vorhanden sind.</p>

<p>Gerade wenn Sie Plugins deinstallieren, bleiben die alten Cache-Dateien in
diesem Verzeichnis (je nach Plugin) weiterhin vorhanden. Daher lohnt es sich,
von Zeit zu Zeit dieses Verzeichnis zu überprüfen. Sie können in einem
FTP-Programm beispielsweise alle Dateien nach Erstellungsdatum sortieren und
dann die Dateien löschen, die offensichtlich seit längerer Zeit nicht mehr
aktualisiert wurden. Meist sind Cache-Dateien jedoch so klein, dass sich der
Wartungsaufwand nur in seltenen Fällen lohnt.</p>

<p>Im Verzeichnis <code>archives</code> befinden sich wider Erwarten <em>keine</em>
Blog-Artikel. Dieses Verzeichnis war in älteren Serendipity-Versionen für
statische HTML-Dateien vorgesehen, wurde jedoch nie richtig verwendet.
Mittlerweile wird dieses Verzeichnis von einigen Plugins verwendet, die
dauerhaft Daten speichern möchten. Beispielsweise speichert das Plugin
zur Konvertierung eines Blog-Artikels in eine PDF-Datei seine Dateien dort.</p>

</section><!-- section.sub end -->

</section><!-- section.index end -->

<section id="S830" class="index">
<span class="s-toc">8.3 - Datenbankprobleme, Fehlermeldungen</span>

<h3 class="section" id="datenbankprobleme-fehlermeldungen">Datenbankprobleme, Fehlermeldungen</h3>

<p class="tagging invisible">
<span class="tag-box invisible">
    <span class="inline-tag">Datenbank!Probleme</span>
    <span class="inline-tag">Fehlermeldungen</span>
    <span class="inline-tag">FAQ</span>
    <span class="inline-tag">Fehler!Datenbank</span>
</span>
</p>

<p>Wenn Serendipity sich nicht mit der Datenbank verbinden kann oder ein Defekt
der Datenbank vorliegt, gibt Serendipity die Fehlermeldung direkt über die
PHP-Fehlerausgabe aus.</p>

<p>
<span class="tag-box invisible">
    <span class="inline-tag">PHP!Error Reporting</span>
    <span class="inline-tag">PHP!Display Errors</span>
    <span class="inline-tag">htaccess@.htaccess</span>
    <span class="inline-tag">ErrorLog</span>
</span>
Je nach Konfiguration Ihres Webservers werden derartige Fehler entweder direkt in
Ihrem Browser beim Besuchen des Blogs dargestellt oder in einer Log-Datei auf
dem Server gespeichert.[*]
<span class="footnote"><i class="fa fa-info-circle"></i> Die Protokollierung erfolgt mittels der
<code>php.ini</code>-Einstellung <code>error_reporting</code>, <code>display_errors</code> und
<code>error_log</code>, die Sie möglicherweise auch über eine <code>.htaccess</code>-Datei
anpassen können. Wenn PHP als CGI ausgeführt wird, können zusätzliche
Fehlermeldungen auch im <code>ErrorLog</code> der Webserver-Konfiguration erscheinen.</span><!-- footnote -->
Fragen Sie Ihren Provider nach dem Speicherort eines solchen Logfiles, wenn Sie darüber
nicht Bescheid wissen.</p>

<p>Die häufigsten Datenbankfehlermeldungen (bei Benutzung von MySQL) sind:</p>

<p class="indent">
<span class="msg-hint">Warning: mysql_connect(): Access denied for user
'...'@'...' (using password: YES) serendipity error: unable to connect to database - exiting.</span>
<span class="desc-info">Diese Fehlermeldung erhalten Sie, wenn Serendipity sich nicht erfolgreich mit
der Datenbank verbinden konnte. Häufig passiert dies, wenn Sie Ihre
Zugangsdaten bzw. Passwörter zum Datenbankserver geändert haben. Überprüfen
Sie die Serendipity-Datei <code>serendipity_config_local.inc.php</code>, dort
müssen die aktuell gültigen Zugangsdaten eingetragen werden.

Das Problem kann jedoch auch dann auftreten, wenn eine Datenbankverbindung
über Sockets oder den TCP/IP-Port fehlschlägt. Hier muss der
Datenbankadministrator die Zugangsparameter und Client-Bibliotheken auf
Korrektheit und Übereinstimmung prüfen.</span>
</p>

<p class="indent">
<span class="msg-hint">Table '...' is crashed and should be repaired</span>
<span class="desc-info">Die Fehlermeldung erscheint, wenn der Datenbankserver abgestürzt ist und
Tabellen nicht wieder korrekt einlesen konnte. Wenn dies häufiger passiert,
lässt es Rückschlüsse auf einen Hardwaredefekt zu, und Sie sollten Ihren
Provider kontaktieren.
In vielen Fällen können Sie die betreffende Tabelle über den SQL-Befehl
<code>REPAIR TABLE tabellenname</code> mittels des Wartungsprogramms
reparieren. phpMyAdmin verfügt dazu über eigene Operationen, mit denen Sie
menügesteuert Tabellen reparieren können.

Serendipity kann erst wieder auf die Tabelle zugreifen, wenn sie
repariert oder wiederhergestellt wurde.</span>
</p>

<p class="indent">
<span class="msg-hint">Warning: mysql_query(): Unable to save result set in ...</span>
<span class="desc-info">Diese Fehlermeldung kann erscheinen, wenn ein Übertragungsproblem vom
Datenbankserver zum Webserver vorliegt oder die Tabelle nicht korrekt
ausgelesen werden konnte. In manchen Fällen hilft es auch hier, alle
beteiligten Datenbanktabellen zu reparieren. Zudem kann die Fehlermeldung auch
auftreten, wenn die Datenbank-Client-Bibliothek für PHP nicht korrekt (oder
mit einer falschen Version kompiliert) wurde. In diesem Fall sollten Sie Ihren
Provider kontaktieren.</span>
</p>

<p class="indent">
<span class="msg-hint">Can't open file: 'serendipity_entries.MYI'
(errno: 145, 138)</span>
<span class="desc-info">Diese gefürchtete Fehlermeldung tritt auf, wenn die Datei, in der eine
Datenbanktabelle gespeichert wurde, nicht mehr gelesen werden kann. Entweder
passiert dies, weil die Datei nicht mehr vorhanden oder weil sie defekt ist.
In manchen Fällen kann ein <code>REPAIR TABLE</code> SQL-Befehl weiterhelfen. Wenn die Datei
jedoch physisch nicht mehr vorhanden ist, muss sie vom Provider (oder Ihnen)
anhand eines Backups erneut eingespielt werden.

Solche Fehler können nur durch einen Absturz des Datenbankservers oder andere
Einwirkung von außen geschehen.</span>
</p>

<p class="indent">
<span class="msg-hint">Lost connection to MySQL server during query Too many connections</span>
<span class="desc-info">MySQL erlaubt lediglich eine bestimmte Anzahl von
parallelen Datenbankverbindungen. Wenn Ihr Blog sehr viele
gleichzeitige Besucher hat oder gerade eine Spamwelle über Sie
hereinbricht, kann dieses Limit schnell überschritten werden.

Die genannte Fehlermeldung sagt Ihnen, dass die Datenbank keine
weiteren Zugriffe mehr zulässt. Sie müssen daher ggf. den
Datenbankserver für mehr Verbindungen konfigurieren (lassen) oder
alternativ mit Ihrem Provider über mögliche Fehlerursachen sprechen.</span>
</p>

<p class="indent">
Weiterhin kann es auch zu PHP-Fehlermeldungen wie diesen kommen: [*]
<span class="footnote"><i class="fa fa-info-circle"></i> Weitere
Hinweise zur korrekten Einrichtung können Sie im Kapitel
<span class="reference">installationsfehler</span> ab Seite
<span class="pageref"><a href="#installationsfehler">installationsfehler</a></span>
nachschlagen.</span><!-- footnote --></p>

<p class="indent">
<span class="msg-hint">Keine Schreibrechte für Verzeichnis <code>templates_c</code>, <code>INCLUDE_ERROR</code></span>
<span class="desc-info">Serendipity benötigt stets volle Schreibrechte
zu dem temporären Verzeichnis <code>templates_c</code>. Wenn PHP bzw.
der Webserver dort keine Dateien mehr speichern kann, schlägt
Serendipity Alarm und kann das Blog nicht mehr aufrufen. Sobald Sie
die Schreibrechte korrigieren (<code>chmod 777 templates_c</code>
via SSH oder FTP), sollte das Blog wieder erscheinen.</span>
</p>

<p class="indent">
<span class="tag-box invisible">
     <span class="inline-tag">Session</span>
     <span class="inline-tag">PHP!Sessions</span>
</span>
<span class="msg-hint">Warning: <code>session_start()</code>: ...</span>
<span class="desc-info">Serendipity benötigt Zugriff auf das PHP-Session-Modul.
Wenn dies nicht (oder fehlerhaft) konfiguriert ist, können Schreibzugriffe auf die Sessiondaten fehlschlagen. 
Der Administrator des Webservers sollte daher die konfigurierten Verzeichnisse [*]
<span class="footnote"><i class="fa fa-info-circle"></i> php.ini: <code>session.save_path</code></span><!-- footnote -->
prüfen und nachsehen, ob das PHP <code>session</code>-Modul installiert ist.</span>
</p>

<p class="indent">
<span class="msg-hint">Fatal error: <code>Maximum execution time of 30 seconds exceeded</code></span>
<span class="desc-info">Wenn Serendipity für einen Seitenaufruf mehr Zeit als das konfigurierte Limit [*]
<span class="footnote"><i class="fa fa-info-circle"></i> php.ini:
<code>max_execution_time</code></span><!-- footnote --> benötigt, bricht PHP mit
einer Fehlermeldung ab. Bitten Sie entweder den Server-Administrator um ein
großzügigeres Limit oder entfernen Sie etwaige Performance-intensive Plugins.</span>
</p>

<p class="indent">
<span class="tag-box invisible">
     <span class="inline-tag">RAM</span>
     <span class="inline-tag">Arbeitsspeicher</span>
     <span class="inline-tag">PHP!Memory Limit</span>
</span>
<span class="msg-hint">Fatal error: <code>Allowed memory size of ... bytes exhausted</code></span>
<span class="desc-info">Ähnlich wie das zeitliche Limit für einen Seitenaufruf gibt PHP vor, wie viel
RAM ein einzelner Seitenaufruf belegen darf [*]
<span class="footnote"><i class="fa fa-info-circle"></i> php.ini: <code>memory_limit</code></span><!-- footnote -->.
Meist sind dies 8MB RAM, mit
denen Serendipity in der üblichen Konfiguration auskommen sollte. Für einige
Operationen, und je nach installierten Plugins, müssen Sie das Speicherlimit
jedoch erhöhen lassen.</span>
</p>

<p class="indent">
<span class="msg-hint">Weiße/leere Seite: <code>Internal Server Error</code></span>
<span class="desc-info">
    <span class="box">
        Wenn Sie beim Aufruf einer Webseite lediglich den Fehler <code>Internal Server
        Error</code> oder eine leere, weiße Seite erhalten, kann dies zahlreiche
        Problemursachen haben. Die Fehlermeldung bedeutet hier lediglich: "<em>Etwas lief schief</em>".
        Die Fehlerursache erfahren Sie nur über die Server-Logdateien. Häufige Probleme hier sind
        überschrittener Speicherbedarf, fehlende Schreibrechte zu einem Verzeichnis,
        Datenbank-Verbindungsprobleme.
    </span>

    <span class="box">
        Aber auch spezielle Anweisungen in der
        <code>.htaccess</code>-Datei können diese Meldung hervorrufen. Benennen Sie Ihre
        <code>.htaccess</code>-Datei daher vorübergehend um, um herauszufinden, ob ohne diese
        Datei alles funktioniert. Ist dies der Fall, sollten Sie die Datei bearbeiten
        und alle enthaltenen Zeilen mit einer Raute (#)
        deaktivieren. Aktivieren Sie nun jede Zeile für sich und prüfen Sie nach jeder
        einzelnen aktivierten Zeile, ob Ihr Blog noch aufgerufen werden kann.
        Meist finden Sie so heraus, dass eine
        Zeile wie <code>ErrorDocument 404 index.php</code> oder <code>php_value
        register_globals Off</code> in der <code>.htaccess</code>-Datei bei Ihnen nicht erlaubt
        ist. Weitere Informationen zur <code>.htaccess</code> lesen Sie auf Seite
        <span class="pageref"><a href="#htaccess">htaccess</a></span>.
    </span>
</span>
</p>

<p class="indent">
<span class="msg-hint">Fatal error: <code>Cannot instantiate non-existent class: smarty</code></span>
<span class="desc-info">Diese PHP-Fehlermeldung weist darauf hin, dass Serendipity eine benötigte
Datei nicht finden oder lesen konnte. Prüfen Sie, ob Sie tatsächlich alle
Dateien des Serendipity-Pakets vollständig hochgeladen haben und ob das
Verzeichnis <code>templates_c</code> lesbar ist.</span>
</p>

<p class="indent">
<span class="msg-hint">Fatal error: <code>Cannot use string offset as an array in ...</code></span>
<span class="desc-info">Diese Fehlermeldung erscheint meist, wenn eine vorhergehende Datenbankabfrage
fehlgeschlagen ist oder eine Datei des Serendipity-Pakets defekt ist.</span>
</p>

<p class="indent">
<span class="msg-hint">Warning: <code>Invalid argument supplied for foreach() in ...</code></span>
<span class="desc-info">
    <span class="box">
        Diese Fehlermeldung ist nur ein Hinweis und führt nicht zwangsläufig zu einem
        Abbruch. Meist entsteht eine Meldung wie diese, wenn ein Plugin unsauber
        programmiert wurde und einen Fall nicht berücksichtigt, in dem keine Daten
        gefunden werden.
    </span>

    <span class="box">
        Klassisches Beispiel hierfür ist die Auswahl einer zugehörigen Kategorie für
        einen Blog-Artikel. Serendipity ging in älteren Versionen immer davon aus,
        dass Sie mindestens eine Kategorie angelegt haben, und stellte diese
        Fehlermeldung dar, wenn die Liste aller Kategorien (die ja leer wäre)
        durchgegangen werden muss.
    </span>
</span>
</p>

<p class="indent">
<span class="msg-hint">Fatal error: <code>Call to a member function on a non-object in ...</code></span>
<span class="desc-info">Diese Fehlermeldung gibt an, dass Serendipity eine Funktion ausführen wollte,
die nicht geladen werden konnte. Dies kann passieren, wenn Sie Plugin-Dateien
manuell gelöscht haben oder diese Dateien nicht mehr lesbar sind.</span>
</p>

<p class="indent">
<span class="msg-hint">Fatal error: <code>Call to undefined function serendipity_db_time</code></span>
<span class="desc-info">Wenn Sie nicht alle Dateien des Serendipity-Pakets hochgeladen haben, kann es
passieren, dass Serendipity eine Fehlermeldung darstellt, wenn eine fehlende
Funktionalität aufgerufen werden soll. Stellen Sie daher sicher, dass alle
Dateien des Pakets vorhanden sind.</span>
</p>

<p class="indent">
<span class="msg-hint">Fatal error: <code>Call to undefined method serendipity_smarty_emulator::...</code></span>
<span class="desc-info">
    <span class="box">
        Serendipity liefert zwei besondere Templates aus: <code>default-php</code> und
        <code>default-xml</code> (siehe Seite
        <span class="pageref"><a href="#templateapi">templateapi</a></span>).
        Diese sind nur für Entwickler gedacht. Wenn Sie als Unkundiger diese
        Templates in Ihrem Blog aktivieren, kann dies zu der genannten
        Fehlermeldung führen. Sie sollten daher ein anderes Template
        (wie das Serendipity 2k11 Standard-Template) auswählen.
    </span>

    <span class="box">
        Wenn Sie als Entwickler dieses Template bewusst gewählt haben, sagt Ihnen
        diese Fehlermeldung, dass Sie eine Template-Datei aufrufen wollten, die noch
        nicht in das notwendige XML- oder PHP-Format überführt wurde.
    </span>
</span>
</p>

<p class="indent">
<span class="msg-hint">Fatal error: <code class="item">open_basedir restriction in effect SAFE MODE Restriction in effect</code></span>
<span class="desc-info">
    <span class="box">
        Wenn Serendipity in einem PHP-Umfeld mit <code>open_basedir</code> und <code>Safe
        Mode</code>-Einschränkungen läuft, kann es nicht frei auf alle Dateien und
        Verzeichnisse zugreifen. Bei einer falschen Konfiguration dieser PHP-Variablen
        (siehe Seite <span class="pageref"><a href="#Safe Mode">Safe Mode</a></span>)
        führt dies dazu, dass Serendipity zentrale Dateien nicht einbinden kann und
        daher der Aufruf fehlschlägt.
    </span>

    <span class="box">
        Lassen Sie in diesem Fall vom Server-Provider die PHP-Konfiguration prüfen, so
        dass die in der Fehlermeldung angegebene Datei gelesen/geschrieben werden
        kann.
    </span>
</span>
</p>

<p class="indent">
<span class="tag-box invisible">
    <span class="inline-tag">PEAR</span>
    <span class="inline-tag">Fehler!PEAR</span>
</span>
<span class="msg-hint">Fatal error: <code>Cannot redeclare class pear in .../PEAR.php</code></span>
<span class="desc-info">
    <span class="box">
        Einige Serendipity-Funktionen setzen die zentrale PEAR-Bibliothek ein. Diese
        benötigten Bibliotheken liefert Serendipity mit. Manchmal sind die
        PEAR-Bibliotheken jedoch auf dem Webserver bereits zentral installiert.
    </span>

    <span class="box">
        Wenn nun ein Serendipity-Plugin auf einen Fehler stößt, versucht die
        PEAR-Bibliothek eine Fehlermeldung auszugeben. Dafür wird die zentrale Datei
        <code>PEAR.php</code> eingebunden, die Serendipity aber üblicherweise bereits
        eingebunden hat. Daher kommt es zu einer Fehlermeldung, die angibt, dass eine
        Klasse doppelt geladen werden müsste.
    </span>

    <span class="box">
        Grundsätzlich sollte diese Fehlermeldung bei keinem offiziellen Plugin mehr
        vorkommen. Wenn Sie darauf stoßen, muss man dafür sorgen, dass die jeweilige
        PEAR-Bibliothek so eingebunden wird, dass sie die <code>PEAR.php</code> nicht
        zentral einbindet, sondern erst prüft, ob die Klasse bereits definiert ist.
        Bitte melden Sie eine solche Fehlermeldung im Serendipity-Forum mit einer
        detaillierten Angabe, wann und wo diese Fehlermeldung auftritt.
    </span>
</span>
</p>

<p>
Weitere Fehlermeldungen sind in der Dokumentation Ihres Datenbanksystems [*]
<span class="footnote"><i class="fa fa-info-circle"></i> Für MySQL zB.
<a href="http://dev.mysql.com/doc/refman/5.0/en/error-messages-server.html" target="_blank">http://dev.mysql.com/doc/refman/5.0/en/error-messages-server.html</a></span><!-- footnote -->
aufgeführt. Im Zweifelsfall sollten Sie bei hier nicht aufgeführten
Fehlermeldungen entweder Ihren Provider oder das Serendipity-Forum kontaktieren.</p>

<p>&nbsp;</p>

</section><!-- section.index end -->

<section id="S840" class="index">
<span class="label invisible" id="backups">backups</span>
<span class="s-toc">8.4 - Backups erstellen</span>

<h3 class="section" id="backups-erstellen">Backups erstellen</h3>

<p class="tagging invisible">
<span class="tag-box invisible">
    <span class="inline-tag">Backup</span>
    <span class="inline-tag">Fehler!Backup</span>
</span>
</p>

<p>Computer können immer einmal abstürzen, sei es durch Stromausfälle,
Hardwaredefekte oder einfache Softwarefehler. Daher ist es wichtig, Datenverlusten
vorzubeugen.</p>

<p>Sie sollten regelmäßig sogenannte <em>Backups</em> (Sicherheitskopien) Ihres
Blogs erstellen. Dieser Hinweis gilt natürlich für sämtliche Ihrer
persönlichen Daten. Auch private Fotos, Dokumente und andere Dateien, die Sie auf Ihrem
Computer sichern, sollten von Zeit zu Zeit auf dauerhafte Medien wie DVDs oder
CDs übertragen werden. Denn auch eine fein säuberlich auf Ihrer Festplatte
abgelegte Datei könnte einmal durch Defekte beschädigt werden.</p>

<p>Da Serendipity nicht wie eine Bild- oder Dokumentdatei auf Ihrem Computer liegt,
können Sie es nicht ohne Weiteres sichern, sondern benötigen Zusatzsoftware.</p>

<p>Serendipity besteht aus zwei Komponenten: der Datenbank und den Dateien im
Dateisystem. Die Dateien können Sie wie gewohnt per FTP oder Ähnlichem auf Ihren
Computer herunterladen. Besonders wichtig sind dabei folgende Dateien und
Verzeichnisse:</p>

<p class="desc item-desc">
<span class="item"><code class="sub-item file">.htaccess</code>, <code class="sub-item file">serendipity_config_local.inc.php</code></span>
<span class="desc-info">
    <span class="box">
        In diesen beiden Dateien speichert Serendipity zentrale Konfigurationswerte.
        Ohne diese beiden Dateien kann später beim Wiederherstellen eines Backups keine
        Verbindung zur Datenbank hergestellt werden!
    </span>

    <span class="box">
        Serendipity schützt diese beiden Dateien über unbefugte Zugriffe. Dies kann
        jedoch abhängig von der Einrichtung Ihres Servers bedeuten, dass Sie auch selbst
        per FTP keine Zugriffsrechte besitzen. In diesem Fall können Sie sich
        mittels eines kleinen PHP-Scripts namens <code>fixperm.php</code> (oder auch mit der
        Hilfe Ihres Providers) jedoch leicht die fehlenden Rechte zuschieben. Dieses
        Script ist auf Seite <span class="pageref"><a href="#Installation erneut ausfuehren">Installation erneut ausführen</a></span> näher beschrieben.
    </span>
</span>
</p>

<p class="desc item-desc">
<span class="item b">Verzeichnis <code class="sub-item dir">uploads</code></span>
<span class="desc-info">In diesem Verzeichnis speichert Serendipity alle von Ihnen hochgeladenen
Mediendaten. Wenn Sie diese nicht sowieso separat auf Ihrem Computer sichern,
sollten Sie die Dateien dringend für ein Backup herunterladen.</span>
</p>

<p class="desc item-desc">
<span class="item b">Verzeichnis <code class="sub-item dir">templates</code>, <code class="sub-item dir">plugins</code></span>
<span class="desc-info">Wenn Sie eigene Plugins und Templates installiert oder angepasst haben, sollten
Sie die beiden Verzeichnisse <code>templates</code> und <code>plugins</code> ebenfalls lokal sichern.</span>
</p>

<p>Alle anderen Dateien und Verzeichnisse können Sie zwar trotzdem regelmäßig
sichern, aber diese sind bei einem Datenverlust nicht kritisch, da Sie
problemlos stattdessen einfach die aktuellste Serendipity-Version herunterladen
können. In diesem Dateiarchiv sind sämtliche benötigten Dateien enthalten.</p>

<p>Wenn Sie abseits von Serendipity noch weitere Dateien angepasst oder unabhängige
Dateien hochgeladen haben, müssen Sie diese natürlich eigenverantwortlich in
Ihre Datensicherungsstrategie einschließen.</p>

<p>Als zweite (und wichtigere) Komponente der Datenhaltung verwendet Serendipity
die Datenbank. Diese müssen Sie mit einem separaten Programm wie
<span class="tag-box invisible">
    <span class="inline-tag">phpMyAdmin</span>
</span>
<code>phpMyAdmin</code> [*]
<span class="footnote"><i class="fa fa-info-circle"></i> <a href="http://www.phpmyadmin.net" target="_blank">http://www.phpmyadmin.net</a></span><!-- footnote -->
(siehe auch Seite <span class="pageref"><a href="#datenbankwartung">datenbankwartung</a></span>) durchführen.</p>

<p>
<span class="tag-box invisible">
    <span class="inline-tag">Datenbank!Backup</span>
</span>
Exemplarisch folgt eine Beschreibung, wie man mittels phpMyAdmin ein Backup der
Datenbank erstellen kann:</p>

<p class="desc">
<span class="item mbold">phpMyAdmin aufrufen</span><!-- menuitem -->
<span class="desc-info">Öffnen Sie phpMyAdmin, indem Sie in Ihrem Browser die entsprechende URL aufrufen,
unter der Sie das Programm installiert haben. Je nach Konfiguration von
phpMyAdmin müssen Sie nun Ihre Zugangsdaten eingeben, mit denen Sie auf die
Serendipity-Datenbank zugreifen können.</span>
</p>

<p class="desc">
<span class="item mbold">Datenbank auswählen</span><!-- menuitem -->
<span class="desc-info">Wählen Sie auf der linken Seite die Datenbank, in der die Serendipity-Tabellen
installiert wurden.</span>
</p>

<p class="desc">
<span class="item mbold">Reiter Exportieren auswählen</span><!-- menuitem -->
<span class="desc-info">Auf der rechten Seite sehen Sie nun eine Liste aller verfügbaren
Datenbanktabellen. Klicken Sie im oberen Bereich auf den Reiter
<span class="mbold">Exportieren</span>.</span>
</p>

<p class="desc">
<span class="item mbold">Tabellen auswählen</span><!-- menuitem -->
<span class="desc-info">Auf der linken Seite des nun geöffneten Bereichs sehen Sie ein
Mehrfach-Auswahlfeld mit allen Tabellen der Datenbank. Klicken Sie auf <code>Alle
auswählen</code> oder sorgen Sie durch manuelle Auswahl dafür, dass alle
Serendipity-Tabellen (erkennbar anhand des Präfixes <code>serendipity_</code>)
ausgewählt sind.</span>
</p>

<p class="desc">
<span class="item mbold">Export-Format festlegen</span><!-- menuitem -->
<span class="desc-info">phpMyAdmin ermöglicht den Export in zahlreiche Formate. Wählen Sie die Option
<span class="mbold">SQL</span> am Ende der Liste aus.</span>
</p>

<p class="desc">
<span class="item mbold">Optionen setzen</span><!-- menuitem -->
<span class="desc-info">
    <span class="box">
        Auf der rechten Seite des Export-Dialogs sehen Sie zahlreiche Optionen. Diese
        sind auch abhängig davon, welche Version von phpMyAdmin Sie einsetzen. Wenn Sie
        eine der folgenden Optionen nicht finden, ignorieren Sie diese einfach.</span>

    <span class="tag-box invisible">
        <span class="inline-tag">SQL-Dump</span>
    </span>
    <span class="box">

        <span class="box">
            <span class="item mbold">Individuelle Kommentare für den Kopfbereich</span>
            <span class="sub-box">kann leer gelassen werden.</span>
        </span>

        <span class="tag-box invisible">
            <span class="inline-tag">Transaktionen</span>
            <span class="inline-tag">Datenbank!Transaktionen</span>
        </span><!-- tagbox -->
        <span class="box">
            <span class="item mbold">Export in einer Transaktion zusammenfassen</span>
            <span class="sub-box">Eine Transaktion
            bedeutet, dass mehrere SQL-Befehle miteinander gruppiert werden. Wenn Sie eine
            derartige Transaktion später importieren und dabei ein Import-Fehler auftritt,
            werden alle Vorgänge wieder rückgängig gemacht. Damit Sie also später einmal bei
            denkbaren Defekten der SQL-Datei trotzdem die funktionstüchtigen Datensätze
            importieren können, sollten Sie diese Option besser <em>nicht</em> aktivieren.</span>
        </span>

        <span class="box">
            <span class="item mbold">Fremdschlüsselüberprüfung deaktivieren</span>
            <span class="sub-box">Diese Option hat für Serendipity keine Bedeutung.</span>
        </span>

        <span class="box">
            <span class="item mbold">SQL-Kompatibilitätsmodus</span>
            <span class="sub-box">In diesem Ausklappfeld können Sie
            festlegen, in welchem <em>SQL-Format</em> das Backup geschrieben wird. Abhängig
            von der eingesetzten Version Ihres MySQL-Servers kann die Struktur der
            Backup-Datei unterschiedlich ausfallen. Wichtig ist dabei vor allem, dass Sie
            ein Format wählen, welches Sie später wieder problemlos importieren können. Wenn
            Sie MySQL ab mindestens Version 4.0 einsetzen, sollten Sie hier die Option
            <span class="mbold">MYSQL40</span> wählen, andernfalls sollten Sie <span class="mbold">MYSQL323</span> auswählen.</span>
        </span>

        <span class="box">
            <span class="item mbold">Struktur</span>
            <span class="sub-box">Diese Checkbox muss aktiviert sein, damit
            phpMyAdmin die strukturellen Informationen der Datenbanktabellen exportiert.</span>
        </span>

        <span class="box">
            <span class="item mbold">Füge DROP TABLE/DROP VIEW hinzu</span>
            <span class="sub-box">Deaktivieren Sie diese Option,
            damit die SQL-Befehle nicht möglicherweise existierende Tabellen unbeabsichtigt
            überschreiben.</span>
        </span>

        <span class="box">
            <span class="item mbold">Füge IF NOT EXISTS hinzu</span>
            <span class="sub-box">Aktivieren Sie diese Option, damit die
            SQL-Befehle nur Tabellen erstellen, die noch nicht bestehen.</span>
        </span>

        <span class="box">
            <span class="item mbold">AUTO_INCREMENT-Wert hinzufügen</span>
            <span class="sub-box">Damit Sie beim Einfügen neuer
            Datensätze in eine wiederhergestellte Tabelle später keine abweichenden,
            automatisch vergebenen ID-Werte produzieren, sollten Sie diese Option
            aktivieren.</span>
        </span>

        <span class="box">
            <span class="item mbold">Tabellen- und Feldnamen in einfachen Anführungszeichen</span>
            <span class="sub-box">Aktivieren Sie diese Option, damit die genannten Namen innerhalb von SQL-Befehlen speziell
            mittels Anführungszeichen abgegrenzt werden können. Dies erhöht die
            Kompatibilität mit anderen SQL-Serversystemen, ist aber nicht zwingend
            erforderlich.</span>
        </span>

        <span class="box">
            <span class="item mbold">Füge CREATE PROCEDURE/FUNCTION hinzu</span>
            <span class="sub-box">Deaktivieren Sie diese Option, da Serendipity diese Funktionen nicht verwendet.</span>
        </span>

        <span class="box">
            <span class="item mbold">In Kommentarbereich einbeziehen</span>
            <span class="sub-box">Deaktivieren Sie alle drei
            Unteroptionen (<span class="mbold">Erzeugungszeiten ..., Tabellenverknüpfungen,
            MIME-Typ</span>), da sie von Serendipity nicht benötigt werden.</span>
        </span>

        <span class="box">
            <span class="item mbold">Daten</span>
            <span class="sub-box">Aktivieren Sie diese Option unbedingt, damit die Inhalte
            Ihrer Datenbanktabellen gesichert werden können.</span>
        </span>

        <span class="box">
            <span class="item mbold">Vollständige INSERTs</span>
            <span class="sub-box">Aktivieren Sie diese Option für bestmögliche SQL-Kompatibilität.</span>
        </span>

        <span class="box">
            <span class="item mbold">Erweiterte INSERTs</span>
            <span class="sub-box">Aktivieren &nbsp; Sie diese Option, um eine
            möglichst kleine und optimierte Backup-Datei zu erhalten. Wenn Sie jedoch
            höhere Kompatibilität mit anderen SQL-Systemen benötigen und lieber auf
            <em>Nummer sicher</em> gehen wollen (indem Sie redundante Daten speichern und
            eine größere Datei erhalten), dann können Sie diese Option auch deaktivieren.</span>
        </span>

        <span class="box">
            <span class="item mbold">Maximale Länge der erstellten Abfrage</span>
            <span class="sub-box">Der Zahlenwert beschränkt die Anzahl der Tabellenzeilen. Der Standardwert von 50.000 ist
            meistens sehr großzügig bemessen. Um sicher zu gehen, sollten Sie den Wert
            jedoch auf etwas wie <code>999999999</code> setzen, damit keine Datensätze
            ignoriert werden.</span>
        </span>

        <span class="box">
            <span class="item mbold">Verzögerten INSERT-Befehl verwenden</span>
            <span class="sub-box">Deaktivieren Sie diese Option, um später Import- und Kompatibilitätsprobleme zu vermeiden.</span>
        </span>

        <span class="box">
            <span class="item mbold">Fehlerübergehenden INSERT-Befehl verwenden</span>
            <span class="sub-box">Deaktivieren Sie diese Option ebenfalls, um etwaige Probleme beim Import zu vermeiden.</span>
        </span>

        <span class="box">
            <span class="item mbold">Use hexadecimal for BLOB</span>
            <span class="sub-box">Aktivieren Sie diese Option, um etwaige in Serendipity-Tabellen
            enthaltene Binärdaten korrekt in das Backup einzubeziehen.</span>
        </span>

        <span class="box">
            <span class="item mbold">Exporttyp</span>
            <span class="sub-box">Setzen Sie dieses Auswahlfeld unbedingt auf
            <span class="mbold">INSERT</span>, da ansonsten die Datensätze für den SQL-Export später nicht
            korrekt einfügbar wären.</span>
        </span>

        <span class="box">
            <span class="item mbold">Senden</span>
            <span class="sub-box">Aktivieren Sie diese Checkbox, damit die Backup-Datei
            von Ihrem Browser heruntergeladen werden kann. Alternativ können Sie
            phpMyAdmin auch dazu anweisen, diese Datei direkt auf Ihrem Webserver zu
            speichern. In den Optionen darunter können Sie einen beliebigen Dateinamen
            eingeben, die Zeichensatzkodierung des Backups sollten Sie üblicherweise auf
            <span class="mbold">utf-8</span> einstellen. Wenn Ihr Blog bzw. Ihre Datenbank einen anderen
            Zeichensatz verwendet, müssen Sie diesen stattdessen auswählen. Die
            Backup-Datei sollten Sie sicherheitshalber <em>nicht</em> komprimieren, um
            Problemen beim Import vorzubeugen.</span>
        </span>

    </span>
</span>
</p>

<p class="desc">
<span class="tag-box invisible">
    <span class="inline-tag">Dump</span>
    <span class="inline-tag">SQL-Dump</span>
    <span class="inline-tag">Datenbank!Dump</span>
    <span class="inline-tag">Datenbank!SQL-Dump</span>
</span><!-- tagbox -->
<span class="item mbold">SQL-Dump speichern</span><!-- menuitem -->
<span class="desc-info">
    <span class="box">
        Als <em>Dump</em> bezeichnet man den Vorgang, alle Inhalte einer Datenbanktabelle
        in SQL-Befehle umzuwandeln. Diese SQL-Befehle enthalten die nötigen Anweisungen,
        um Ihre Rohdaten später wieder in eine neue, leere Datenbanktabelle einzufügen.
    </span>

    <span class="box">
        Stellen Sie sich vor, Sie erstellen einen <em>Dump</em> Ihrer Blog-Einträge. Diese
        sind in der Tabelle <code>serendipity_entries</code> gespeichert und enthalten solche
        Datenspalten wie <em>Titel, Text</em> und <em>Uhrzeit</em>. Sie besitzen zwei
        Einträge, einen mit dem Titel <em>Henne</em> und einen anderen mit dem Titel
        <em>Ei</em>. Wenn Sie diese Einträge nun im SQL-Dump-Format speichern, erhalten
        Sie eine Datei mit folgenden SQL-Befehlen:
    </span>

    <span class="box">
        <span id="pre-style"><code class="sql">
            INSERT INTO `serendpity_entries` (title, body, timestamp)<br>
            &nbsp;&nbsp;&nbsp;&nbsp; VALUES ('Henne', '...', '2007-11-11 11:11');<br>
            <br>
            INSERT INTO `serendpity_entries` (title, body, timestamp)<br>
            &nbsp;&nbsp;&nbsp;&nbsp; VALUES ('Ei', '...', '2007-11-11 11:11');
        </code></span>
    </span>

    <span class="box">
        Diese SQL-Befehle enthalten ausreichend Informationen, um den Inhalt einer
        Datenbanktabelle später auf einem beliebigen SQL-fähigen Datenbankserver wiederherzustellen.
    </span>

    <span class="box">
        Klicken Sie in phpMyAdmin nun auf den Button <span class="mbold">OK</span>, um die Erstellung der
        Backup-Datei (also des SQL-Dump) auszuführen. Ihr Browser sollte Ihnen daraufhin
        anbieten, diese Datei auf Ihrer Festplatte zu speichern.
    </span>

    <span class="box">
        Wenn Sie diesen Vorgang einige Male ausgeführt haben, werden Sie feststellen,
        dass Sie die Erstellung eines vollständigen Backups nicht länger als fünf Minuten beschäftigt.
    </span>

    <span class="tag-box invisible">
        <span class="inline-tag">Backup!Strategie@~strategie</span>
    </span>
    <span class="box">
        Legen Sie sich einen Zeitplan zurecht, mit dem Sie regelmäßig ein
        Backup erstellen, oder sprechen Sie alternativ mit Ihrem Web-Provider darüber,
        ob und wie er automatische Backups für Sie erstellen kann. Zwar gibt es ein
        Serendipity-Backup-Plugin, dies funktioniert jedoch nur mit relativ kleinen
        Datenbanken.
    </span>
</span>
</p>

<p>&nbsp;</p>

</section><!-- section.index end -->

<section id="S850" class="index">
<span class="s-toc">8.5 - Backups einspielen</span>

<h3 class="section" id="backups-einspielen">Backups einspielen</h3>

<p class="tagging invisible">
<span class="tag-box invisible">
    <span class="inline-tag">Backup!einspielen</span>
</span>
</p>

<p>Ein Backup ist natürlich nur dann etwas wert, wenn Sie es im Ernstfall auch
verwenden können. Nachdem Sie Ihr erstes Backup erstellt haben, versuchen Sie
also ruhig einmal den Ernstfall zu simulieren.</p>

<p>Laden Sie dazu ihr Serendipity-Datei-Backup wie gewohnt per FTP auf Ihren
Webserver in ein <em>eigenständiges</em> Verzeichnis hoch, da Sie ja die
bestehende Installation möglichst nicht zerstören wollen. In diesem Beispiel
verwenden wir dazu ein Verzeichnis
<code>/var/www/example.com/serendipity-backup/</code>, das Sie später unter
<code>http://www.example.com/serendipity-backup/</code> aufrufen.</p>

<p>Nach dem FTP-Upload müssen Sie sicherstellen, dass alle ursprünglichen
Datei-Zugriffsrechte wie vorher gesetzt sind. Das heißt, das Verzeichnis
<code>templates_c</code> muss existieren und schreibbar sein, und die Datei
<code>serendipity_config_local.inc.php</code> muss für den Webserver sowohl schreib-
als auch lesbar sein. Details zu den Leserechten finden Sie auf Seite
<span class="pageref"><a href="#Zugriffsrechte">Zugriffsrechte</a></span>.</p>

<p>Nachdem Sie die Dateien hochgeladen haben, müssen Sie Ihr Datenbank-Backup (den
<em>Dump</em>) wiederherstellen. Grundbedingung dazu ist, dass Sie
wieder über einen Zugang zu einem Datenbanktool wie phpMyAdmin verfügen und eine
Datenbank zur Verfügung gestellt bekommen haben, in der Sie die gesicherten
Daten wiederherstellen können.</p>

<p>Unseren gesicherten SQL-Dump können wir nicht einfach ohne Weiteres in die
Datenbank importieren, da derzeit ja auch noch Ihre echten Blog-Tabellen darin
bestehen.</p>

<p>Der einfachste Weg, um herauszufinden, ob Ihr gesicherter SQL-Dump
fehlerfrei ist, bestünde darin, eine unabhängige zweite Datenbank zu erstellen.
Nur wenige Provider erlauben Ihnen aber die Erstellung von mehr als einer
Datenbank.</p>

<p>Daher ist die zweiteinfachste Möglichkeit, den Tabellenpräfix Ihrer Tabellen
innerhalb des SQL-Dumps zu verändern. Standardmäßig ist dieser Präfix
auf <code>serendipity_</code> eingestellt und sorgt dafür, dass Ihre
Datenbanktabellen benannt sind wie <code>serendipity_entries</code>,
<code>serendipity_authors</code> und so weiter. Benutzen Sie also nun einen
Texteditor, um damit Ihre SQL-Dump-Datei zu öffnen. Diese Datei enthält
einfache Textdaten, daher können Sie mit jedem beliebigen Editor arbeiten.</p>

<p>Verwenden Sie nun die <span class="mbold">Suchen und Ersetzen</span>-Funktion Ihres Editors, und
ersetzen Sie alle Vorkommen von <code>CREATE TABLE IF NOT EXISTS serendipity_</code> in
<code>CREATE TABLE IF NOT EXISTS serendipity2_</code>. Damit sorgen Sie dafür, dass
die SQL-Befehle der Dump-Datei später eine eigene Tabelle anlegen. Beachten Sie,
dass Sie diesen Vorgang nur deshalb ausführen, weil Ihre Wiederherstellung des
Backups keinen Ernstfall darstellt. Wenn Ihre Datenbanktabellen wirklich verloren
wären, müssten Sie diesen Aufwand nicht treiben, da nichts überschrieben werden
könnte. Als Zweites müssen Sie auch alle <code>INSERT INTO
serendipity_</code>-Statements ändern in <code>INSERT INTO serendipity2_</code>.</p>

<p>Nun können Sie die veränderte SQL-Dump-Datei mit einer Oberfläche wie phpMyAdmin
exemplarisch wie folgt hochladen:</p>

<p class="desc">
<span class="item mbold">phpMyAdmin aufrufen</span><!-- menuitem -->
<span class="desc-info">Öffnen Sie phpMyAdmin, indem Sie in Ihrem Browser die entsprechende URL aufrufen,
unter der Sie das Programm installiert haben.</span>
</p>

<p class="desc">
<span class="item mbold">Datenbank auswählen</span><!-- menuitem -->
<span class="desc-info">Wählen Sie auf der linken Seite die Datenbank, in der Sie die
Serendipity-Tabellen wiederherstellen möchten.</span>
</p>

<p class="desc">
<span class="item mbold">Reiter Importieren auswählen</span><!-- menuitem -->
<span class="desc-info">Auf der rechten Seite sehen Sie nun eine Oberfläche, in der Sie beliebige
SQL-Dumps einlesen können.</span>
</p>

<p class="desc">
<span class="item mbold">SQL-Dump auswählen</span><!-- menuitem -->
<span class="desc-info">Klicken Sie auf den Menüpunkt <span class="mbold">Durchsuchen...</span> (oder
<span class="mbold">Browse...</span>), um ein Auswahlmenü zu öffnen. Wählen Sie nun die
SQL-Dumpdatei von Ihrer Festplatte aus.</span>
</p>

<p class="desc">
<span class="item mbold">Optionen setzen</span><!-- menuitem -->
<span class="desc-info">
    <span class="box">
        Im Ausklappfeld <span class="mbold">Zeichencodierung der Datei</span> müssen Sie den Zeichensatz des
        SQL-Dumps auswählen, im obigen Beispiel haben wir UTF-8 verwendet. Die Option
        <span class="mbold">Abbruch wenn die maximale Scriptlaufzeit erreicht wird</span> können Sie
        aktivieren, um bei besonders großen SQL-Dump-Dateien zu erreichen, dass
        phpMyAdmin diese so weit wie möglich einlesen kann und nicht aufgrund von
        Ressourcenlimits abbricht. Sollte Ihre Datei zu
        groß sein, müssen Sie den Import in mehreren Schritten vornehmen und
        jeweils die <span class="mbold">Anzahl der am Anfang zu überspringenden Einträge (Abfragen)</span> in
        das Eingabefeld eintragen. Beispiel: Wenn Sie 100 Datensätze importieren wollen,
        aber nur jeweils 25 importieren können, müssen Sie beim ersten Mal 0 Datensätze
        überspringen, beim nächsten Mal 25 usw.
    </span>

    <span class="box">
        Als Dateiformat der zu importierenden Datei wählen Sie <span class="mbold">SQL</span> aus. Als
        <span class="mbold">SQL-Kompatibilitätsmodus</span> müssen Sie die Option auswählen, mit der Sie die
        Backup-Datei erstellt haben (üblicherweise <span class="mbold">MYSQL40</span>). Wenn Sie unsicher
        sind, wählen Sie <span class="mbold">NONE</span> aus.
    </span>
</span>
</p>

<p class="desc">
<span class="item mbold">SQL-Dump einlesen</span><!-- menuitem -->
<span class="desc-info">Klicken Sie nun auf den <span class="mbold">OK</span>-Knopf, damit phpMyAdmin Ihre Datenbanktabellen
anhand der Backup-Datei erstellen kann. Der Import-Vorgang sollte nun alle
SQL-Befehle abarbeiten, was einige Zeit beanspruchen kann. Danach sollten alle
Tabellen erstellt worden sein.</span>
</p>

<p>Um Serendipity nun in Ihrem Backup-Verzeichnis aufrufen zu können, müssen Sie
noch eine Kleinigkeit anpassen. Da Sie beim Test-Import den Tabellen-Präfix von
<code>serendipity_</code> in <code>serendipity2_</code> verändert haben, müssen Sie
zusätzlich in einem solchen Fall auch die Datei
<code>serendipity_config_local.inc.php</code> anpassen und dort die Variable
<code>$serendipity['dbPrefix']</code> auf den Wert <code>'serendipity2_'</code> ändern.</p>

<p>Die <span class="mbold">Serendipity Styx</span> Standardeinstellung für das dbPrefix
ist <code>styx_</code>.</p>

<p>Wenn dies erfolgt ist, müssten Sie in der Lage sein, Ihr Blog-Backup über
<code>http://www.example.com/serendipity-backup/serendipity_admin.php</code>
aufzurufen. Da Ihr Blog-Backup im Pfad <code>/</code> lief, müssten Sie nun
eigentlich überall in der Administrationsoberfläche Pfadanpassungen vornehmen
(siehe auch Abschnitt <span class="reference">Serendipity umziehen</span> ab Seite
<span class="pageref"><a href="#Serendipity umziehen">Serendipity umziehen</a></span>), damit das Blog später perfekt läuft.
Für unsere Zwecke zum Testen
eines Backups ist dies jedoch nicht notwendig, da Sie nun wissen, wie Sie
ein Backup im Ernstfall wiederherstellen.</p>

<p>&nbsp;</p>

</section><!-- section.index end -->

<section id="S860" class="index">
<span class="s-toc">8.6 - Statistiken</span>

<h3 class="section" id="statistiken">Statistiken</h3>

<p>Als Blog-Besitzer wird Ihnen im Laufe der Zeit womöglich eine Sache sehr am
Herzen liegen: Wer Ihre Besucher sind, was und wie viel sie lesen und wie
regelmäßig sie vorbeischauen.

Für diese Zwecke gibt es eine große Auswahl an Statistik-Möglichkeiten. Einige
bietet Serendipity (mittels Plugins oder internen Funktionen) an, andere werden
durch externe Anbieter ergänzt.</p>

<p>Sie können auf folgende Möglichkeiten der Statistik zurückgreifen:</p>

<p class="desc item-desc">
<span class="item b">Externe Links</span>
<span class="desc-info">
    <span class="box">
        Über das Ereignis-Plugin <em>Externe Links verfolgen</em> (siehe Seite
        <span class="pageref"><a href="#trackexits">trackexits</a></span>) können Sie dafür sorgen, dass alle Links, die Sie in Artikeln
        einbinden, speziell markiert werden. Dadurch können Sie als Autor feststellen, wie oft
        Ihre Besucher auf die von Ihnen vorgestellten Webseiten klicken. Diese Links
        nennt man <em>Exits</em>, da sie auf fremde Webseiten verweisen und Ihre
        Besucher von Ihrer eigenen Webseite wegleiten.
    </span>

    <span class="box">
        Die so gesammelten statistischen Daten können Sie entweder über das
        Seitenleisten-Plugin <em>Top Exits</em> anzeigen oder über das
        Ereignis-Plugin <em>Statistiken</em> im Backend einsehen.
    </span>
</span>
</p>

<p class="desc item-desc">
<span class="item b">Verweisende Seiten, Referrer, Google-Verweise</span>
<span class="desc-info">
    <span class="box">
        Wenn ein Besucher über eine Suchmaschine wie Google oder durch Links fremder
        Seiten auf Ihr Blog gelangt, nennt man diese verweisende Seite einen
        <em>Referrer</em>. Die Browser Ihrer Besucher übermitteln diese Seite
        standardmäßig beim ersten Zugriff.
    </span>

    <span class="box">
        Aktivieren Sie das Serendipity-Referrer-Tracking (siehe Seite
        <span class="pageref"><a href="#trackreferrer">trackreferrer</a></span>), können Sie die am häufigsten verweisenden Seiten über
        das Plugin <em>Top Referrer</em> in der Seitenleiste anzeigen oder über das
        <em>Statistik-Plugin</em> einsehen.
    </span>

    <span class="tag-box invisible">
        <span class="inline-tag">Referrer</span>
    </span>
    <span class="box">
        Leider können Referrer von Spammern leicht gefälscht werden, die somit in Ihre
        Top-Listen gelangen und die Statistiken verfälschen können.
    </span>

    <span class="box">
        Zusätzlich übermitteln Suchmaschinen wie Google ein wichtiges Detail in ihrer
        Referrer-URL: den Suchbegriff, mit dem ein Besucher zu Ihnen gefunden hat. Das
        Ereignis-Plugin <em>Hebe Suchwörter hervor</em> kann dafür sorgen, dass die so
        gewonnenen Suchwörter automatisch hervorgehoben werden, wenn sie in Ihren
        Einträgen vorkommen. Dies hilft Ihren Besuchern, sich auf Ihrer Seite zu
        orientieren, da ihr Suchwort direkt ins Auge fällt.
    </span>

    <span class="box">
        Die so herausgefilterten Suchwörter können Sie zusätzlich auch über das
        Seitenleisten-Plugin <em>Letzte Google-Suche</em> darstellen.
    </span>
</span>
</p>

<p class="desc item-desc">
<span class="tag-box invisible">
    <span class="inline-tag">Logfiles</span>
</span>
<span class="item b">Zugriffs-Logfiles</span>
<span class="desc-info">
    <span class="box">
        Ein sehr hilfreiches Mittel bei der Analyse Ihrer Zugriffs- und Besucherzahlen
        stellen die Logfiles Ihres Webservers dar. Meistens stellt Ihr Provider Ihnen
        ein Verzeichnis zur Verfügung, in dem Sie die täglichen oder monatlichen
        Logfiles einsehen können. Dort wird jeder Besucher Ihrer Seite mit seiner
        IP-Adresse und der von ihm aufgerufenen URL aufgeführt.
    </span>

    <span class="box">
        Es gibt viele Logfile-Analyseprogramme, mit denen Sie komfortabel auch grafische
        Auswertungen durchführen können. Diese Programme teilen sich in zwei Sparten:
        Serverseitige Tools wie
        <code>awStats</code> [*]
        <span class="footnote"><i class="fa fa-info-circle"></i> <a href="http://awstats.sourceforge.net/" target="_blank">http://awstats.sourceforge.net/</a></span><!-- footnote -->,
        <code>modlogan</code> [*]
        <span class="footnote"><i class="fa fa-info-circle"></i> <a href="http://modlogan.org/" target="_blank">http://modlogan.org/</a></span><!-- footnote --> oder
        <code>webalizer</code> [*]
        <span class="footnote"><i class="fa fa-info-circle"></i> <a href="http://www.mrunix.net/webalizer/" target="_blank">http://www.mrunix.net/webalizer/</a></span><!-- footnote --> sowie
        Anwendungsprogramme wie
        <code>WebSuxess</code> [*]
        <span class="footnote"><i class="fa fa-info-circle"></i> <a href="http://www.exody.net/ger/products/websuxess/websuxess.cfm?kat2=p1" target="_blank">http://www.exody.net/ger/products/websuxess/websuxess.cfm?kat2=p1</a></span><!-- footnote -->,
        <code>WebTrends</code> und weitere.
    </span>

    <span class="box">
        Selbstinstallierte Tools mit eigenen Logfiles, wie
        <code>Piwik</code> [*],
        <span class="footnote"><i class="fa fa-info-circle"></i> <a href="https://piwik.org/" target="_blank">https://piwik.org/</a></span><!-- footnote --> sind eine echte Alternative zu Google Analytics. Es ist gerade aus Datenschutzsicht besonders zu empfehlen.
    </span>
</span>
</p>

<p class="desc item-desc">
<span class="tag-box invisible">
    <span class="inline-tag">Google Analytics</span>
</span>
<span class="item b">Externe Dienstleister</span>
<span class="desc-info">
    <span class="box">
        Als sehr hilfreich haben sich auch externe Dienstleister zur
        Statistik-Verfolgung erwiesen, allen voran <code>Google
        Analytics</code> [*]
        <span class="footnote"><i class="fa fa-info-circle"></i> <a href="http://www.google.com/analytics/" target="_blank">http://www.google.com/analytics/</a></span><!-- footnote --> und freie Dienste wie
        <code>blogcounter.de</code>, <code>blogstats.de</code> oder weitere.
    </span>

    <span class="box">
        Alle arbeiten nach einem einfachen Grundprinzip: Der Blog-Betreiber bindet auf
        seiner Seite einen JavaScript-Aufruf in seinen Quellcode ein. Bei Serendipity
        erfolgt das einfach über ein HTML-Klotz-Plugin (siehe Seite
        <span class="pageref"><a href="#htmlnugget">htmlnugget</a></span>).
    </span>

    <span class="box">
        Dieses JavaScript wird vom Browser des Besuchers aufgerufen und übergibt die
        Daten seines Besuchs (aufgerufene URL, Datum, Referrer, Bildschirmauflösung,
        verwendeter Browser, IP-Adresse) an den Dienstleister weiter.
    </span>

    <span class="box">
        Google Analytics hebt sich in den detaillierten Verknüpfungs- und
        Analyze-Optionen sehr hervor und bietet alles, was das Statistiker-Herz
        begehrt. Dennoch müssen Sie berücksichtigen, dass eine JavaScript-basierte
        Statistik nicht alle Aufrufe zählen kann: Wenn ein Besucher JavaScript
        deaktiviert hat oder Ihr JavaScript wie Werbung filtert, gelangen seine Daten
        nicht an den Dienstleister.
    </span>
</span>
</p>

<p class="desc item-desc">
<span class="tag-box invisible">
    <span class="inline-tag">Mint</span>
    <span class="inline-tag">phpOpenTracker</span>
</span>
<span class="item b">Individuelle Tracking-Software</span>
<span class="desc-info">
    <span class="box">
        Wer Statistiken nicht bei externen Dienstleistern führen will, kann auch
        spezielle PHP-Tracking-Software auf seinem eigenen Server installieren. Dazu
        stehen Tools wie <code>Mint</code> [*]
        <span class="footnote"><i class="fa fa-info-circle"></i> <a href="http://haveamint.com/" target="_blank">http://haveamint.com/</a></span><!-- footnote --> oder
        <code>phpOpenTracker</code> [*]
        <span class="footnote"><i class="fa fa-info-circle"></i> <a href="http://www.phpopentracker.de/" target="_blank">http://www.phpopentracker.de/</a></span><!-- footnote --> zur Verfügung.
    </span>

    <span class="box">
        Derartige Tools lassen sich üblicherweise problemlos in HTML-Kopf-Klötze (siehe
        Plugin-Beschreibung auf Seite <span class="pageref"><a href="#headnugget">headnugget</a></span>) einbinden. Sollte zur
        Einbindung eigener PHP-Code erforderlich sein, können Sie diesen leicht in die
        Smarty-Templatedateien einbinden.
    </span>

    <span class="box">
        Der Vorteil von lokaler Analysesoftware ist, dass sie zuverlässiger alle
        Besucher verfolgen und in Echtzeit verarbeiten kann. Auch datenschutzrechtlich
        ist es besser, Ihre Besucher-Bestandsdaten nicht an externe Dienstleister
        weiterzureichen. Als Nachteil ist jedoch anzusehen, dass die Einbindung
        komplexer ist als die für externe Dienstleister mittels einfachem JavaScript.
    </span>
</span>
</p>

<p>&nbsp;</p>

</section><!-- section.index end -->

<section id="S870" class="index">
<span class="s-toc">8.7 - Plugins und Serendipity aktualisieren</span>

<h3 class="section" id="plugins-und-serendipity-aktualisieren">Plugins und Serendipity aktualisieren</h3>

<p class="tagging invisible">
<span class="tag-box invisible">
    <span class="inline-tag">Plugins!aktualisieren</span>
</span>
<span class="label invisible" id="s9yupdate">s9yupdate</span>
</p>

<p>Da die Entwicklung rund um Serendipity natürlich nicht stillsteht, werden
häufiger neue Versionen von Plugins oder des Kernsystems herausgegeben. Über
neue Versionen können Sie über das offizielle Serendipity-Blog unter
<code>http://blog.s9y.org/</code> bzw. <code>https://ophian.github.io/</code> für <span class="mbold">Serendipity Styx</span> auf dem Laufenden bleiben.</p>

<p>Plugins lassen sich sehr leicht aktualisieren, indem Sie einfach die neue
Plugin-Version herunterladen und die alten Dateien auf dem Server
überschreiben. Wenn Sie einmal selbständig Änderungen an Plugin-Dateien
vorgenommen haben, müssen Sie natürlich darauf achten, dass Sie Ihre eigenen
Änderungen danach auch wieder in das neue Plugin übernehmen.</p>

<p>
<span class="tag-box invisible">
    <span class="inline-tag">Spartacus</span>
</span>
Wenn Sie das Spartacus-Plugin benutzen, können Sie neue Plugin-Versionen auch
einfach über das Internet aktualisieren. Dazu bietet die Plugin-Verwaltung im
Backend Ihres Blogs einen einfachen Button namens <span class="mbold">Plugins
updaten</span> an. Wenn Sie auf diesen Button klicken, wird Ihnen eine
Auflistung aller installierten Plugins gezeigt, für die eine neue Version
im Internet vorliegt. Ein Klick auf den zugehörigen Button eines Plugins
kann das Update dann automatisch ausführen. Sollten keine neuen Versionen
vorliegen, erhalten Sie eine leere Liste.</p>

<p>
<span class="tag-box invisible">
    <span class="inline-tag">Serendipity!aktualisieren</span>
</span>
Das Serendipity-Kernsystem lässt sich grundsätzlich ähnlich einfach
aktualisieren. Dazu müssen Sie folgende Schritte durchführen:</p>


<p class="desc item-desc">
<span class="item b">Backup</span>
<span class="desc-info">Um sicher zu gehen, dass bei der Aktualisierung nichts schiefläuft,
sollten Sie vorher ein Backup der Dateien und der Datenbank durchführen (siehe
Seite <span class="pageref"><a href="#backups">backups</a></span>).</span>
</p>

<p class="desc item-desc">
<span class="item b">Blog sperren</span>
<span class="desc-info">
    <span class="box">
        Wenn Sie Ihr Blog aktualisieren wollen, werden Sie in den folgenden
        Schritten einige Dateien ersetzen und administrative Aktionen ausführen.
        Grundsätzlich sollte dieser Vorgang sehr schnell gehen, und Ihre Besucher sollten davon
        nichts mitkriegen. Dennoch besteht die Gefahr, dass, wenn Sie Ihr Blog
        aktualisieren, während gerade Besucher darin unterwegs sind, diese mit
        Fehlermeldungen konfrontiert werden könnten.
    </span>

    <span class="box">
        Daher ist es sicherer, wenn Sie Ihr Blog temporär deaktivieren. Wenn Ihnen dies
        zu kompliziert erscheint, überspringen Sie diesen Schritt einfach. Ansonsten
        erreichen Sie einen Schutz des Blogs am einfachsten, indem Sie die Datei
        <code>.htaccess</code> in Ihrem Serendipity-Verzeichnis am Anfang um folgende Zeilen
        ergänzen:
    </span>

    <span class="box tagging invisible">
        <span class="tag-box invisible">
            <span class="inline-tag">Blog!sperren</span>
            <span class="inline-tag">Passwortschutz</span>
            <span class="inline-tag">htpasswd@.htpasswd</span>
        </span>
    </span>

    <span class="box">
        <span id="pre-style"><code class="conf">
            AuthType Basic<br>
            AuthName `Serendipity Upgrade´<br>
            AuthUserFile /var/www/example.com/serendipity/.htpasswd<br>
            require valid-user
        </code></span>
    </span>

    <span class="box">
        Diese Zeilen werden vom Apache-Webserver ausgewertet und sorgen dafür, dass Ihr
        Blog nur noch dann aufgerufen werden kann, wenn Sie ein spezielles Passwort
        eingeben. Dieses Passwort müssen Sie noch in der Datei <code>.htpasswd</code>
        eintragen. Diese Datei speichert Passwörter in einem speziell verschlüsselten
        Format, daher müssen Sie Ihr gewünschtes Schutz-Passwort vorher mit einem Tool
        wie auf <code>http://www.advancehost.com/htpasswd.html</code> verschlüsseln. Andere
        derartige Verschlüsselungshilfen finden Sie, wenn Sie in einer Suchmaschine nach
        <code>.htpasswd</code> suchen.
    </span>

    <span class="box">
        Wenn Sie beispielsweise einen Benutzernamen "s9y" mit dem Passwort "s9y"
        erstellen wollen, müsste die <code>.htpasswd</code>-Datei wie folgt aussehen:
    </span>

    <span class="box">
        <span id="pre-style"><code class="conf">
            s9y:s9QXoc9dcFOT2
        </code></span>
    </span>

    <span class="box">
        Wenn Sie nun Ihr Blog über <code>http://www.example.com</code> aufrufen, sollte Ihr
        Browser Sie nach Ihrem Passwort fragen.
    </span>

    <span class="box">
        Anstelle eines Passwortschutzes können Sie Ihr Blog auch über die
        <code>.htaccess</code>-Regeln wie <code>Deny/Allow</code> [*]
        <span class="footnote"><i class="fa fa-info-circle"></i> Siehe
        <a href="http://de.selfhtml.org/servercgi/server/htaccess.htm" target="_blank">http://de.selfhtml.org/servercgi/server/htaccess.htm</a></span><!-- footnote --> sperren.
    </span>
</span>
</p>

<p class="desc item-desc">
<span class="item b">Datenbank- und Schreibrechte prüfen</span>
<span class="desc-info">
    <span class="box">
        Damit Serendipity sich menügesteuert aktualisieren kann, müssen
        Schreibrechte zu der Konfigurationsdatei
        <code>serendipity_config_local.inc.php</code> vergeben werden (siehe Seite
        <span class="pageref"><a href="#configlocal">configlocal</a></span>).
    </span>

    <span class="box">
        Zur Aktualisierung der Datenbank muss Ihr Datenbank-Account über Rechte
        verfügen, um <code>ALTER</code>, <code>INDEX</code> und <code>CREATE</code> SQL-Abfragen ausführen zu
        können. Diese Rechte werden auch zur Installation von Serendipity benötigt,
        daher sollten sie gewöhnlich kein Problem darstellen.
    </span>
</span>
</p>

<p class="desc item-desc">
<span class="item b">Neue Version hochladen</span>
<span class="desc-info">
    <span class="box">
        Am einfachsten geht dies natürlich mit dem <span class="mbold">Serendipity Autoupdate</span> Event Plugin
        <span class="pageref"><a href="#serendipity_event_autoupdate">Serendipity Autoupdate</a></span>
        und der Einstellung von "automatischen Updates" über die Backend Konfiguration, wie andernorts beschrieben.
        Dann ist das Update eine Minutenangelegenheit und überraschend einfach und sicher erledigt.
    </span>

    <span class="box">
        Ansonsten laden Sie die neue Serendipity-Version von der Webseite herunter, [*]
        <span class="footnote"><i class="fa fa-info-circle"></i>
        <a href="http://www.s9y.org" target="_blank">http://www.s9y.org</a></span><!-- footnote -->
        ähnlich wie Sie das für die Installation bereits getan haben.
        Entpacken Sie das Archiv nun und laden Sie <em>alle</em>
        Dateien wie üblich auf Ihren Webserver hoch (via FTP oder SSH).
    </span>

    <span class="box">
        Stellen Sie unbedingt sicher, dass alle Dateien korrekt hochgeladen worden sind,
        Ihr FTP-Programm darf keine Fehlermeldungen für den Upload darstellen. Da ein
        Serendipity-Paket aus vielen kleinen Dateien besteht, müssen Sie etwas Geduld
        beim Dateitransfer haben oder alternativ (falls vorhanden) die
        Threading-Fähigkeit (parallele Uploads) Ihres FTP-Programms aktivieren.
    </span>

<span class="tag-box invisible">
    <span class="inline-tag">Fehler!fehlende Template-Dateien</span>
</span>
    <span class="box">
        Achten Sie auch darauf, dass Sie die Standard-Templates von Serendipity einer
        neuen Version vollständig hochladen. Auch wenn Sie ein eigenes Template
        benutzen, heißt das nicht, dass Serendipity auf die Dateien im Verzeichnis
        <code>/templates/default</code> verzichten kann.
    </span>

    <span class="box">
        Nachdem alle Dateien überschrieben worden sind, können Sie nun etwaige
        eigene Anpassungen an den Serendipity-Dateien, die Sie früher einmal
        durchgeführt haben, erneut anwenden. Da üblicherweise aber alle Anpassungen über
        eigene Template-Dateien, Plugins oder Konfigurationsoptionen erreicht werden
        können, ist eine solche Anpassung von Kerndateien des Serendipity-Systems
        meist nicht nötig.
    </span>
</span>
</p>

<p class="desc item-desc">
<span class="item b">Administrationsoberfläche aufrufen</span>
<span class="desc-info">
    <span class="box">
        Öffnen Sie nun Ihr Blog, und Sie werden eine Oberfläche sehen, in der
        Serendipity Ihnen erklärt, dass eine neue Version installiert wurde.
    </span>

    <span class="box">
        Es folgt eine Auflistung von Operationen, die das Backend automatisch ausführen
        möchte, sowie eine Liste von notwendigen Datenbank-Anpassungen. Diese Änderungen
        sollten Sie bestätigen.
    </span>

    <span class="box">
        Wenn auf der Folgeseite Fehlermeldungen aufgeführt werden, liegt dies
        üblicherweise daran, dass Ihr Datenbank-Account nicht über die notwendigen
        Rechte verfügt. Sprechen Sie in diesem Fall mit Ihrem Provider oder wenden Sie sich
        an das Serendipity-Forum.
    </span>

    <span class="box">
        Wenn Sie beim Aufrufen Ihres Blogs eine
        Aktualisierungsoberfläche <em>nicht</em> angezeigt bekommen, wurden
        möglicherweise nicht alle Dateien korrekt hochgeladen, oder das Update wurde
        bereits ausgeführt. Wurde das Update bereits ausgeführt, sehen Sie dies daran,
        dass die Versionsnummer Serendipitys in Ihrem Backend bereits die neue Version
        anzeigt.
    </span>

    <span class="box">
        Nach der Aktualisierung sollte Ihr Blog wie gewohnt funktionieren. Sämtliche
        Plugins, Plugin-Einstellungen und Beiträge werden weiterhin wie gewünscht
        eingestellt, daher müssen Sie sich um nichts weiter kümmern.
    </span>

    <span class="tag-box invisible">
        <span class="inline-tag">Fehler!nach dem Update</span>
    </span>
    <span class="box">
        Grundsätzlich ist es empfehlenswert, nach der Aktualisierung in Ihrem Browser
        sämtliche Caches (Zwischenspeicher) und Cookies für Ihr Blog zu löschen, damit
        Serendipity diese problemlos neu erstellen kann. In einigen Fällen ist
        andernfalls der Login ins Backend nicht möglich, da Cookies älterer
        Serendipity-Versionen (besonders beim Umstieg von Version 1.1 auf Version 1.2)
        sich in ihrem Format geändert haben.
    </span>

    <span class="box">
        Sollten Sie Ihr Blog über die oben angesprochene <code>.htaccess</code>-Methode
        blockiert haben, müssen Sie diese Blockade auch wieder aufheben.
    </span>
</span>
</p>

<p class="desc item-desc">
<span class="tag-box invisible">
    <span class="inline-tag">Update!erneut ausführen</span>
    <span class="inline-tag">Fehler!Update erneut ausführen</span>
</span>
<span class="item b">Im Falle eines Falles...</span>
<span class="desc-info">
    <span class="box">
        Sollte dennoch einmal etwas schiefgelaufen sein, können Sie ein Update von
        Serendipity auch erneut forcieren. Wenn Ihr Datenbank-Account beim Update
        beispielsweise nicht ausreichend Zugriffsrechte hatte, Sie eine
        Fehlermeldung angezeigt bekamen und daraufhin den Datenbank-Account korrigiert
        haben, werden Sie das Update erneut ausführen wollen.
    </span>

    <span class="box">
        Dazu müssen Sie lediglich die Serendipity-Datei
        <code>serendipity_config_local.inc.php</code> bearbeiten. Wenn Sie keine
        Schreibrechte zu dieser Datei besitzen, können Sie sich diese über das kleine
        Script <code>fixperm.php</code> (siehe Seite
        <span class="pageref"><a href="#fixperm">fixperm</a></span>) einrichten lassen.
        Wenn Sie die Konfigurationsdatei <code>serendipity_config_local.inc.php</code>
        in einem Editor öffnen, werden Sie mehrere Variablen sehen. Beim Update ist
        vor allem der Inhalt der Variable <code>$serendipity['versionInstalled']</code>
        von Interesse. Hierin speichert Serendipity die aktuell konfigurierte Version
        und kann diese mit der auf dem Server installierten Versionsnummer vergleichen.
        Weichen die beiden Nummern voneinander ab, wird beim Aufruf des Blogs
        automatisch die Aktualisierungsoberfläche angezeigt, die Sie zur Durchführung
        eines Updates auffordert.
    </span>

    <span class="box">
        Daher können Sie diese Variable einfach nach einem gescheiterten Update zurück
        auf die Versionsnummer stellen, die Sie vorher installiert hatten.
    </span>
</span>
</p>

<p>&nbsp;</p>

</section><!-- section.index end -->

<section id="S880" class="index">
<span class="s-toc">8.8 - Serendipity verschieben</span>

<h3 class="section" id="serendipity-verschieben">Serendipity verschieben</h3>

<p class="tagging invisible">
<span class="tag-box invisible">
    <span class="inline-tag">Serendipity!verschieben</span>
    <span class="inline-tag">Installation!verschieben</span>
    <span class="inline-tag">Server-Umzug</span>
    <span class="inline-tag">Fehler!Server-Umzug</span>
</span>
<span class="label invisible" id="Serendipity umziehen">Serendipity umziehen</span>
</p>

<p>Wenn Sie Ihren Webserver oder Provider wechseln, müssen Sie Ihr Blog
<em>umziehen</em>. Da Serendipity zahlreiche Konfigurationsoptionen besitzt, die
auf den aktuellen Server abgestimmt sind, ist ein Umzug mit etwas Zusatzaufwand
verbunden. Auch wenn Sie Serendipity innerhalb desselben Servers in ein anderes
Verzeichnis verschieben wollen, können Sie auf Teile dieser Anleitung zurückgreifen!</p>

<p>Der erste Schritt für einen Umzug ist die Erstellung eines Backups aller Dateien
und der Datenbank (siehe Seite <span class="pageref"><a href="#backups">backups</a></span>).</p>

<p>Diese Dateien laden Sie auf den neuen Server hoch und achten darauf, dass danach die
notwendigen Schreib- und Leserechte wie auf dem alten Server vergeben sind.</p>

<p>Bevor Sie nun den Datenbank-Dump auf den neuen Server hochladen, müssen Sie noch
eine Änderung vornehmen. Öffnen Sie diese Datenbank-Dump-Datei mit einem Editor.
Suchen Sie nun in dieser Datei nach dem alten Server-Verzeichnispfad, in dem
Serendipity installiert war (<code>/var/www/example.com/serendipity</code>). Dieser
Pfadname dürfte an einigen Stellen innerhalb der Datei vorkommen, und Sie müssen
nun anstelle des alten Pfades den neuen eingeben. Wenn Sie Serendipity auf dem
neuen Server in das Verzeichnis <code>/var/customers/blog1/serendipity</code> kopiert
haben, müssen Sie genau diesen Pfad in der SQL-Datendatei einsetzen. Andernfalls
könnte es später beim Benutzen des Blogs zu fehlenden Verweisen kommen.</p>

<p>Wenn Sie Serendipity auf dem alten Server im Pfad <code>/serendipity</code> installiert
hatten und diesen Pfad auch auf dem neuen Server einsetzen, müssen Sie an
dieser Stelle nichts weiter ändern. Wenn Sie jedoch Serendipity zB. auf
dem neuen Server über <code>http://www.example.com/neuesblog/</code> aufrufen wollen,
müssen Sie nun einige weitere Änderungen vornehmen. Durchsuchen Sie die
Datenbank-Dump-Datei nach der Zeichenkette <code>/serendipity</code> und ersetzen Sie diese
überall durch <code>/neuesblog</code>. So sorgen Sie dafür, dass Links innerhalb Ihres
Blogs und Ihrer Blog-Einträge später korrekt aufgerufen werden können.</p>

<p>Laden Sie nun den derart überarbeiteten Datenbank-Dump wie im Backup-Kapitel
beschrieben mittels phpMyAdmin oder Ähnlichem auf Ihren neuen Datenbank-Server
hoch.</p>

<p>Als Nächstes müssen Sie nun auf dem neuen Server die Datei
<code>serendipity_config_local.inc.php</code> bearbeiten. Tragen Sie in dieser Datei
die Zugangsdaten zu Ihrem neuen Datenbankserver ein und speichern Sie die
Datei. Prüfen Sie auch Ihre Datei <code>.htaccess</code> und stellen Sie sicher, dass dort
eingetragene Pfade (zB. <code>/serendipity/index.php</code>) nach wie vor auf die
Verzeichnisstruktur Ihres neuen Servers passen.</p>

<p>Nun sollten Sie in der Lage sein, über Ihre URL auf dem neuen Server die
Serendipity-Verwaltungsoberfläche aufzurufen und sich wie gewohnt einzuloggen.
Sie sollten nun einmal den Menüpunkt <span class="mbold">Konfiguration</span> aufrufen und dann
prüfen, ob alle dort aufgeführten Pfadeinstellungen korrekt sind. Auch kann es
empfehlenswert sein, die Konfiguration der einzelnen Plugins zu prüfen, ob dort
auch überall die neuen, korrekten Pfade eingetragen sind.</p>

<p>Wenn Sie den Datenbank-Dump bereits eingestellt haben und einige Pfade falsch
gesetzt sind, können Sie diese auch nachträglich mit einem Programm wie
phpMyAdmin einsehen und korrigieren. Die wichtigsten Serendipity-Tabellen, die
Pfade enthalten, heißen <code>serendipity_config</code> und
<code>serendipity_plugins</code>.</p>

<p>&nbsp;</p>

</section><!-- section.index end -->

<section id="S890" class="index">
<span class="s-toc">8.9 - Performance steigern</span>

<h3 class="section" id="performance-steigern">Performance steigern</h3>

<p class="tagging invisible">
<span class="tag-box invisible">
    <span class="inline-tag">Performance</span>
</span>
<span class="label invisible" id="performance">performance</span>
</p>

<p>Ähnlich wie beim Auto-Tuning gibt es bei serverseitiger Software eine schier
unendliche Menge an Schrauben, mit denen Sie Ihr Blog <em>schneller legen</em>
können.</p>

<p>Folgende Liste hilft vielleicht, Ihr Blog in seiner
Ausführungsgeschwindigkeit zu beschleunigen:</p>

<p class="desc item-desc">
<span class="item b">Spammer ausschließen</span>
<span class="desc-info">
    <span class="box">
        Der häufigste Grund für ein langsames Blog sind meistens Spammer. Wenn Spammer
        Ihr Blog gerade besonders stark unter Beschuss
        nehmen, kann dies sogar dazu führen, dass Serendipity so langsam wird, dass die
        normalen Besucher keine Inhalte mehr sehen können. Möglicherweise
        deaktiviert Ihr Provider sogar Ihr Blog vollständig, da es durch die
        hohe Zugriffsrate der Spammer den Server vollständig auslastet.
    </span>

    <span class="tag-box invisible">
        <span class="inline-tag">iptables</span>
        <span class="inline-tag">Firewall</span>
        <span class="inline-tag">DOS</span>
        <span class="inline-tag">DDoS</span>
    </span>
    <span class="box">
        Dagegen vorzugehen ist schwierig. Ein guter Web-Provider kann Ihnen
        dabei stark unter die Arme greifen, da er die Möglichkeit hat, über Server-Tools
        wie iptables oder Hardware-Firewalls häufige Zugriffe (sogenannte
        DOS [*]
        <span class="footnote"><i class="fa fa-info-circle"></i> Denial of Service</span><!-- footnote -->
        oder DDOS [*]
        <span class="footnote"><i class="fa fa-info-circle"></i> Distributed Denial of
        Service</span><!-- footnote -->) bereits auf unterster Ebene zu blockieren.
        Denn wenn ein Spammer erst einmal bis zum Aufruf des Serendipity-Blogs
        vorgestoßen ist, dann hat er die Ressourcen bereits beansprucht. Daher sind
        sämtliche Maßnahmen über Serendipity-Plugins (wie das Anti-Spam-Plugin) leider
        nur eine Möglichkeit zur Eindämmung der Auswirkungen von Spammern, aber können
        nicht die dadurch verursachten Performance-Probleme einschränken.
    </span>

    <span class="tag-box invisible">
        <span class="inline-tag">htaccess@.htaccess</span>
    </span>
    <span class="box">
        Glücklicherweise gibt es auch die Möglichkeit, über <code>.htaccess</code>-Dateien
        einige Zugriffe zu blockieren, sofern Ihr Webserver diese Dateien zulässt. Über
        die <code>Deny</code>-Anweisungen können gezielt bestimmte IP-Adressen vom Blog aus
        abgewiesen werden. Das Anti-Spam-Plugin kann solche IP-Adressen automatisch in
        Ihre <code>.htaccess</code>-Datei übernehmen, wenn Sie dies in den Optionen des Plugins
        aktivieren.
    </span>

    <span class="box">
        Weiterhin können Sie über die Anweisung <code>BrowserMatch</code> in einer
        <code>.htaccess</code>-Datei gewisse Roboter von Ihrem Blog ausschließen:
    </span>

    <span class="box">
        <span id="pre-style"><code class="conf">
            &nbsp;# Sperren, wenn Browser-Name mit "Trackback" beginnt<br>
            &nbsp;BrowserMatch ^TrackBack is_spammer<br>
            &nbsp;# Sperren, wenn leerer Browser-Name<br>
            &nbsp;BrowserMatch ^$ is_spammer<br>
            &nbsp;<br>
            &nbsp;Order Allow,Deny<br>
            &nbsp;Allow from all<br>
            &nbsp;Deny from env=is_spammer
        </code></span>
    </span>

    <span class="box">
        Auch derartige Methoden helfen vermutlich nicht für die Ewigkeit, da sich auch
        Browser-Namen problemlos manipulieren lassen.
    </span>

    <span class="box">
        Siehe auch Seite <span class="pageref"><a href="#serendipity_event_spamblock_bee">Spamschutz Biene</a></span>.
    </span>
</span>
</p>

<p class="desc item-desc">
<span class="item b">Webserver optimieren</span>
<span class="desc-info">
    <span class="box">
        Auf die Austattung und Konfiguration des Webservers haben Sie als Kunde meist
        wenig Einfluss, daher müssen Sie hinnehmen, was Ihnen geboten wird.
    </span>

    <span class="box">
        Wenn Sie jedoch Zugriff auf den Server haben, können Sie einige Dinge
        durchführen, die die Geschwindigkeit aller PHP-Anwendungen optimieren:
    </span>

    <span class="tag-box invisible">
        <span class="inline-tag">Cache</span>
    </span>
    <span class="list">
        <span class="li-item">Op-Code-Cache (APC, Zend, ionCube) installieren.</span>
        <span class="li-item"><code>register_globals</code> in der <code>php.ini</code> deaktivieren.</span>
        <span class="li-item"><code>magic_quotes_gpc</code> in der <code>php.ini</code> deaktivieren.</span>
        <span class="li-item">PHP als FastCGI kompilieren und einsetzen, oder möglicherweise die schlanken
        NGINX oder Lighttpd als Webserver einsetzen.</span>
        <span class="li-item">In gute Server-Hardware investieren, vor allem schnelle Festplatten und
        RAM. Merksatz: Besser als RAM ist nur mehr RAM.</span>
        <span class="li-item">Den Webserver so einrichten, dass er eine sinnvolle Anzahl an
        Connections/Threads handhaben kann und Speicher- und Ressourcenlimits korrekt setzt.</span>
    </span><br>
</span>
</p>

<p class="desc item-desc">
<span class="item b">Datenbank-Server optimieren</span>
<span class="tag-box invisible">
    <span class="inline-tag">Datenbank!Tuning</span>
</span>
<span class="desc-info">
    <span class="box">
        Im Endeffekt wichtiger als ein <em>gut geölter</em> Webserver ist ein ordentlich
        konfigurierter Webserver. Über korrekte Tuning-Maßnahmen hierfür sind bereits
        zahlreiche eigenständige Bücher gefüllt worden.[*]
        <span class="footnote"><i class="fa fa-info-circle"></i> Empfehlenswert: <em>MySQL
        High Performance</em> von Jeremy D. Zawodny (ISBN 978-0-596003067).</span><!-- footnote -->
    </span>

    <span class="box">
        Gerade MySQL bietet eine fast unüberschaubare Anzahl an Tuning-Schrauben, mit
        denen man den SQL <em>QueryCache</em> einrichtet, Speicherzuweisungen und
        -annahmen angibt und für sinnvolle Ressourcenlimits und Connection Pools sorgt.
        Hierüber kann man meist keine pauschale Aussage treffen, da eine gute
        Konfiguration stets abhängig von dem Einsatzzweck des Servers und der darauf
        laufenden Applikationen ist.
    </span>
</span>
</p>

<p class="desc item-desc">
<span class="item b">Serendipity sinnvoll konfigurieren</span>
<span class="desc-info">
    <span class="box">
        Als Blog-Betreiber fangen Ihre Tuning-Möglichkeiten meist erst mit Serendipity
        selbst an.
    </span>

    <span class="box">
        Grundsätzlich gilt: Je mehr Funktionalität von Serendipity Sie benutzen, desto
        stärker belastet dies Ihre Ressourcen. Je genauer Sie also gewisse Optionen
        einschränken, desto schneller wird Serendipity die übrig gebliebenen
        Features ausführen können. Je weniger Datenbankabfragen pro Seitenaufruf
        ausgeführt werden müssen, desto schneller die Gesamtgeschwindigkeit.
    </span>

    <span class="box">
        Die Anzahl der Einträge, die Sie auf den Seiten darstellen, ist ein maßgeblicher
        Faktor. Standardmäßig werden 15 Artikel pro Seite dargestellt, und jeder
        einzelne Artikel wird innerhalb einer Schleife an Plugins weitergereicht und
        später in einer Schleife ausgegeben.
        Sie sparen daher sowohl HTML-Code als auch Verarbeitungszeit, wenn Sie diese
        Anzahl geringer halten. Gerade wenn Sie längere Artikel schreiben, kann es zu
        spürbaren Geschwindigkeitssprüngen führen, wenn Sie das Limit der Artikel
        beispielsweise auf 7 stellen.
    </span>

    <span class="box">
        Die Auswertung der Zugriffsrechte für Artikel und Kategorien drückt ebenfalls
        stark auf die Datenbank-Performance. Wenn Sie gruppenabhängige Leserechte im
        Frontend des Blogs nicht benötigen, sollten Sie die Option <span class="mbold">Leserechte auf
        Kategorien anwenden</span> in der Konfiguration auf <span class="mbold">Nein</span> stellen.
    </span>

    <span class="box">
        Die Permalinks von Serendipity werden standardmäßig mit der Variable
        <code>%id%</code> ausgestattet. Dies erhöht die Geschwindigkeit beim Zugriff auf
        einzelne Artikel enorm, daher sollten Sie diese Variable nur dann entfernen,
        wenn es für Ihre Seite oder Ihr Seelenwohl wirklich erforderlich ist.
    </span>

    <span class="box">
        Ähnlich wie bei den Leserechten von Artikeln können Sie die
        Ausführungsgeschwindigkeit von Plugins stark beschleunigen,
        wenn Sie die benutzerbasierte Plugin-Ausführung deaktivieren.
        Dies erreichen Sie durch die Option <span class="mbold">Sollen
        persönliche Plugin-Rechte für Benutzergruppen aktiviert werden?</span>
        in der Serendipity-Konfiguration (siehe Seite
        <span class="pageref"><a href="#persoenliche pluginrechte">persoenliche pluginrechte</a></span>).
    </span>

    <span class="box">
        Der regelmäßige Abruf von RSS-Feeds durch Besucher kann Ihren
        Server ebenfalls stark belasten. Hier können Sie auf externe Dienstleister wie
        FeedBurner zurückgreifen, um diese Last weiterzugeben (siehe Plugin <span class="mbold">Blog
        abonnieren</span> auf Seite <span class="pageref"><a href="#syndication">syndication</a></span>).
    </span>
</span>
</p>

<p class="desc item-desc">
<span class="item b">Plugins sinnvoll einsetzen</span>
<span class="desc-info">
    <span class="box">
        Der wohl am stärksten die Performance belastende Vorgang bei Serendipity ist der Einsatz von
        Plugins. Grundsätzlich sind Plugins zwar die größte Stärke des Systems, aber je
        mehr Plugins Sie aktivieren, desto langsamer wird selbstverständlich das Blog.
    </span>

    <span class="box">
        Sie sollten sich daher Gedanken darüber machen, was jedes einzelne Plugin
        technisch ungefähr erledigen muss, und überlegen, ob dies für Sie wirklich
        wichtig ist. Natürlich ist es verführerisch, alle möglichen Features in Ihrem
        Blog zu aktivieren - aber nachdem die erste Spielphase abgeklungen ist, sollten
        Sie die eingesetzten Plugins Ihres Blogs <em>konsolidieren</em>.
    </span>

    <span class="box">
        Entfernen Sie die Plugins, die geringen Wert haben - denn auch für Ihre Besucher
        ist weniger oft mehr.
    </span>

    <span class="box">
        Vermeiden Sie möglichst Seitenleisten-Plugins, die datenbankintensive
        Aktivitäten durchführen müssen. Das Seitenleisten-Plugin <span class="mbold">Kategorien</span>
        erlaubt beispielsweise, die Anzahl der Einträge pro Kategorie einzubinden. Das
        klingt erstmal hilfreich. Aber performancetechnisch analysiert ist es ein wahrer
        Zeitkiller, denn dies bedeutet, dass bei jeder Erstellung der Kategorienliste
        alle Einträge nach deren Zuordnung durchsucht werden.
    </span>

    <span class="box">
        Wenn jede Minute (oder Omas Performance-Pfennige) zählt, können Sie auch darüber
        nachdenken, gewisse Inhalte von Seitenleisten-Plugins zu <em>statifizieren</em>.
        Wenn sich beispielsweise die Liste Ihrer Kategorien fast nie ändert, gibt es
        eigentlich keinen Grund, diese bei jedem Aufruf dynamisch aus der Datenbank neu
        zu erzeugen. Stattdessen könnten Sie einfach einen HTML-Klotz in der
        Seitenleiste platzieren, in der Sie manuell die Liste der Kategorien eintragen.
    </span>

    <span class="box">
        Auch die Ereignis-Plugins können starken Einfluss auf die
        Verarbeitungsgeschwindigkeit von Einträgen haben. Versuchen Sie überflüssige
        Textformatierungs-Plugins zu vermeiden. Das Plugin <span class="mbold">Erweiterte Eigenschaften
        von Artikeln</span> verfügt zudem über eine Möglichkeit, Artikelinhalte zu cachen
        (siehe Seite <span class="pageref"><a href="#entryproperties">entryproperties</a></span>).
    </span>
</span>
</p>

<p class="desc item-desc">
<span class="tag-box invisible">
    <span class="inline-tag">Caching</span>
    <span class="inline-tag">Load Balancing</span>
</span>
<span class="item b">Caching, Load Balancing</span>
<span class="desc-info">
    <span class="box">
        Das Serendipity-Plugin <span class="mbold">Einfache Cached/Pregenerated Seiten</span> versucht, auf
        eine simple Art und Weise die Notwendigkeit von dynamischer Inhaltserzeugung zu
        reduzieren. Es nimmt jede durch Serendipity erzeugte Seite, speichert sie als HTML-Code ab und
        liefert diesen anstelle der dynamischen Daten aus (siehe Seite
        <span class="pageref"><a href="#cachesimple">cachesimple</a></span>).
    </span>

    <span class="box">
        Da dieses Plugin aber weiterhin das Serendipity-Framework aufruft, kann es die
        Datenbanklast nicht völlig reduzieren.
    </span>

    <span class="tag-box invisible">
        <span class="inline-tag">Reverse Proxy</span>
    </span>
    <span class="box">
        Ein technisch probateres Mittel ist daher die Nutzung sogenannter Reverse Proxys.
        Diese Methode kann auch nur durch Ihren Provider veranlasst werden. Das Prinzip
        ist folgendes: Serendipity läuft nur auf einem internen, versteckten Server. Die
        Server, auf die ein Benutzer zugreift, dienen lediglich als Vermittler zu dem
        versteckten Server. Wenn ein Besucher eine Seite aufruft, versucht erst der
        Vermittler eine vorgehaltene Version des Ergebnisses auszuliefern. Nur wenn
        diese Version zu alt ist, fragt der Vermittler beim Blog-Server den aktuellen
        Inhalt ab. Die Einrichtung einer derartigen Serverumgebung würde den Rahmen dieses
        Buches leider spürbar sprengen. Da ein Reverse Proxy aber (meist) unabhängig von
        der eingesetzten Anwendung ist, können Sie mit Kenntnissen in dem Bereich
        Serendipity leicht wie gewünscht konfigurieren.
    </span>

    <span class="box">
        Auch die Benutzung von Load Balancing-Servern mit Serendipity ist möglich,
        solange alle verteilten Instanzen des Blogs auf dieselbe geteilte Datenbank
        zugreifen. Die lokal von Serendipity gespeicherten Daten sind für die
        Auslieferung der Seite irrelevant, da sämtliche Inhalte aus der Datenbank
        bezogen werden können.
    </span>
</span>
</p>

<p>&nbsp;</p>

</section><!-- section.index end -->

<section id="S8100" class="index">
<span class="s-toc">8.10 - Suchmaschinenoptimierung</span>

<h3 class="section" id="suchmaschinenoptimierung-1">Suchmaschinenoptimierung</h3>

<p class="tagging invisible">
<span class="tag-box invisible">
    <span class="inline-tag">SEO</span>
</span>
</p>

<p>Um Ihr Blog populär zu machen, gibt es unterschiedlichste Maßnahmen. Die wohl
dauerhaft beste ist zugleich auch die schwerste: Betreiben Sie ein spannendes,
unterhaltsames und einzigartiges Blog. Dann werden die Besucher mittelfristig
von alleine kommen.</p>

<p>Um aber auch mit gewöhnlichen Blogs Besucher anzulocken, lohnt es sich,
Ihre Seite bei Suchmaschinen anzumelden. Nutzen Sie Plugins wie das
<em>Sitemap</em>-Plugin, damit sich Suchmaschinen bei Ihnen wohlfühlen. Setzen Sie
auch Plugins wie <span class="mbold">Meta-Beschreibungen</span> dazu ein, um Ihre Blog-Artikel
optimal zu verschlagworten. Sprechende URLs durch URL-Rewriting unterstützen eine
höhere Einordnung Ihrer Seite bei den eingesetzten Schlagwörtern.</p>

<p>Auch die Benutzung von Linkservices wie Digg und Technorati (siehe
Plugin <em>Show links to services like Digg, Technorati etc.</em> auf Seite
<span class="pageref"><a href="#findmore">findmore</a></span>) hilft,
Ihren Artikeln eine einfache Verbreitung zu ermöglichen.</p>

<p>Abseits davon gibt es viele Marketing-Möglichkeiten, um Ihr Blog bekannter zu
machen. Veranstalten Sie Aktionen (Quizzes, Umfragen, Anleitungen), nehmen Sie an
Bloggertreffen teil und kommentieren Sie auf anderen Blogs.</p>

<p>Analysieren Sie zudem Ihre Leserschaft anhand der Statistiken Ihres Blogs.
Schauen Sie, wie die Besucher zu Ihnen gelangen, nach welchen Begriffen sie
suchen - und verstärken Sie dieses Angebot.</p>

<p>Zu guter Letzt gilt aber: Spaß haben. Ein Blog ist wie kein anderes Web-Medium
dazu da, um den Internet-Aufenthalt unterhaltsam zu machen. Nicht nur für
Besucher, sondern auch für Sie als Schreiber. Ganz gleich, ob Sie kommerzielle
Interessen verfolgen oder einfach nur ein Tagebuch für sich schreiben wollen.</p>

</section><!-- section.index end -->
