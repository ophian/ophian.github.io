<span class="label invisible" id="Gekoppelte Plugins">Gekoppelte Plugins</span>

<h2 id="chapter-VII">Kapitel 7: Gekoppelte Plugins</h2>

<p>Gekoppelte Plugins bestehen sowohl aus einem Seitenleisten-Plugin als
auch aus einem Ereignis-Plugin. Beide Plugins können dabei auch im selben
Verzeichnis liegen. Wenn ein Plugin ein anderes bedingt, kann bei der
Installation des einen Plugins auch automatisch ein anderes zugehöriges
Plugin installiert werden. Generell sieht Serendipity dabei das
Ereignis-Plugin als das wichtigere an - wird dieses entfernt, wird auch
das zugehörige Seitenleisten-Plugin (falls Sie es installiert haben)
entfernt. Umgekehrt wird ein benötigtes Ereignis-Plugin automatisch
installiert, wenn Sie ein zugehöriges Seitenleisten-Plugin installieren.</p>

<p>Bedenken Sie die wichtigen Anmerkungen zur Pluginreihenfolge im vorangegangenen <span class="pageref"><a href="#chapter-VI">Kapitel 6</a></span>.
Die Plugins der folgenden Zusammenstellung sind aber nach Alphabet,
im Sinne von <code>serendipity_event_A-Z</code> geordnet.</p>

<p>&nbsp;</p>

<section id="S710" class="index">
<span class="s-toc">7.1 - Standardmäßig verfügbare Plugins</span>

<h3 class="section" id="standardmäßig-verfügbare-plugins">Standardmäßig verfügbare Plugins</h3>

<p>In der folgenden Liste sind alle miteinander verkoppelten Plugins
aufgeführt, die in der Serendipity-Distribution mitgeliefert werden. Keine
dieser Plugins sind standardmäßig installiert, daher müssen Sie diese
gezielt installieren.</p>

<p>Zur Zeit sind keine dieser Plugins mit Serendipity Styx mitgeliefert und daher nur über Spartacus erhältlich!</p>

</section><!-- section.index end -->

<section id="S720" class="index">
<span class="s-toc">7.2 - Auswahl externer Plugins</span>

<h3 class="section" id="auswahl-externer-plugins-2">Auswahl externer Plugins</h3>

<p>Da zur Zeit keine mitgelieferten gekoppelten Plugins vorhanden sind, finden Sie eine
große Zahl an Plugins über <code>https://ophian.github.io/plugins/</code>, bzw. über den bereits
fertig installierten Spartacus Repository Synchronizer über die Backend Plugin-Liste. Sehen Sie auch
die wichtigen Anmerkungen zu Serendipity Styx und sein darauf abgestimmtes <code>additional_plugins</code>
Repository. Eine Auswahl an wichtigen und häufig gekoppelten Ereignis-Plugins finden Sie auf
den folgenden Seiten.</p>

<section id="serendipity-event-adduser" class="sub">
<span class="u-toc">7.2.1 - Registrierung neuer User: serendipity_plugin_adduser, serendipity_event_adduser</span>

<h3 class="subsection" id="registrierung-neuer-userserendipity_plugin_adduser-serendipity_e">Registrierung neuer User<br>serendipity_plugin_adduser, serendipity_event_adduser</h3>

<p class="tagging invisible">
<span class="label invisible" id="adduser">adduser</span>
<span class="tag-box invisible">
    <span class="inline-tag">Plugins!Registrierung neuer User</span>
    <span class="inline-tag">Plugins!serendipity_event_adduser</span>
    <span class="inline-tag">Plugins!serendipity_plugin_adduser</span>
    <span class="inline-tag">Community</span>
    <span class="inline-tag">Redakteure!neue</span>
</span>
</p>

<p>Technisch gesehen gibt es keinen Grund, dass Sie Ihr Blog in einsamem
Schattendasein mit Inhalten füllen. Gruppen-Blogs mit mehreren
Redakteuren können den Reiz für Ihre Leser erhöhen, Ihr Blog regelmäßig
zu verfolgen. Mehr Redakteure schreiben mehr Artikel, können Themen
unterschiedlich beleuchten oder durch einen eigenen Schreibstil
verschiedene Gruppen von Lesern anziehen.</p>

<p>Neue Redakteure können Sie relativ leicht über das Serendipity-Backend im
Menüpunkt <span class="mbold">Administration <span class="icon arrow-right">→</span> Benutzerverwaltung</span> hinzufügen. Dennoch
entsteht dadurch ein nicht zu unterschätzender Verwaltungsaufwand: Sie
müssen dem Autor Passwort und Benutzernamen zuweisen, ihn einer
Gruppe zuordnen und ihm den Link zum Backend mitteilen.</p>

<p>Einfacher geht das alles mithilfe des Plugins <span class="mbold">Registrierung neuer
User</span>. Ein Seitenleisten-Plugin bietet ein einfaches
Registrierungsformular für Ihren Besucher an, über das er sich selbständig
als Autor anmelden kann. Das zugehörige Ereignis-Plugin kümmert sich um
die weitere Verarbeitung und sendet eine automatische
Registrierungs-E-Mail an den Benutzer. Nach dessen Bestätigung kann der
Benutzer sich sofort als neuer Redakteur einloggen und mit den ihm
zugeordneten Rechten Artikel erstellen. Und schon ist aus dem einsamen,
egozentrischen Blogger ein gemütliches Herdentier geworden.</p>

<p>Ein Besucher, der sich als Redakteur melden will, kann sich in Ihrem Blog
auf zwei Arten registrieren. Zum einen können Sie das Seitenleisten-Plugin
<em>Registrierung neuer User</em> installieren, das in der Seitenleiste ein
kleines Eingabeformular einbindet. Dort trägt der Besucher seinen
gewünschten Benutzernamen, das Passwort und seine E-Mail-Adresse ein.</p>

<p>Als zweite Möglichkeit bietet das Ereignis-Plugin eine selbständige Seite
an, die man unter
<code>http://www.example.com/serendipity/index.php?serendipity[subpage]=adduser</code>
aufrufen kann. Auch hier werden dieselben Eingabefelder angezeigt.</p>

<p>Ob Sie beide oder nur eine Variante der Registrierungsformulare in Ihr
Blog einbinden, bleibt Ihren Layout-Vorstellungen überlassen. Sie könnten
auch eine eigene statische Seite mit freiem Eingabeformular entwerfen.
Dabei muss das HTML-Formularziel lediglich auf die Datei
<code>http://www.example.com/serendipity/index.php</code> zeigen, und Sie müssen
die GET- oder POST-Variable <code>serendipity[adduser_user]</code>
(Benutzername), <code>serendipity[adduser_pass]</code> (Passwort),
<code>serendipity[adduser_email]</code> (Mail-Adresse) abfragen. Weiterhin
müssen die <em>hidden</em>-Variablen <code>serendipity[subpage]=adduser</code> und
<code>serendipity[adduser_action]=true</code> übertragen werden.</p>

<p>Die Konfiguration der Verwaltungsmöglichkeiten verteilt sich auf das
Seitenleisten- und das Ereignis-Plugin. Ohne das Ereignis-Plugin kann die
Registrierung neuer Redakteure nicht durchgeführt werden. Auch das
Seitenleisten-Plugin muss vorhanden sein, da Sie dort zentrale
Konfigurationsoptionen festlegen. Jedoch können Sie dieses Seitenleisten-Plugin
später im Layout auch durchaus verstecken (siehe Konfigurationsoption
<span class="mbold">Seitenleisten-Plugin anzeigen</span> des Seitenleisten-Plugins auf Seite
<span class="pageref"><a href="#sidebarhider">sidebarhider</a></span> oder über die zentrale Plugin-Verwaltung, siehe Seite
<span class="pageref"><a href="#Plugins verwalten">Plugins verwalten</a></span>).</p>

<p>Die Hauptkonfiguration des Seitenleisten-Plugins bietet die Optionen:</p>

<p class="desc">
<span class="item mbold">Eigene Hinweise</span><!-- menuitem -->
<span class="desc-info">Im Eingabefeld <span class="mbold">Eigene Hinweise</span> können Sie einen beliebigen Text
eintragen, der Ihren Besuchern vor dem Registrierungsformular angezeigt
wird. Hier können Sie Bedingungen für die Redakteursaufnahme
eintragen oder auch redaktionelle Richtlinien festlegen.</span>
</p>

<p class="desc">
<span class="item mbold">Standard Benutzerlevel, Gruppenzugehörigkeit</span><!-- menuitem -->
<span class="desc-info">
    <span class="box">
        Wenn ein Besucher sich als Redakteur anmeldet, wird für diesen ein
        eigener Blog-Account erstellt. Seine Zugriffsrechte richten sich nach dem
        Login danach, welchen Benutzerlevel und welche Benutzergruppe Sie derartigen
        neuen Redakteuren über die Konfigurationsoptionen <span class="mbold">Standard
        Benutzerlevel</span> und <span class="mbold">Gruppenzugehörigkeit</span> zuweisen.
    </span>

    <span class="box">
        Sie sollten möglichst eine eigene Benutzergruppe für solche
        <em>freiwilligen Redakteure</em> erstellen, damit Sie dieser Gruppe nur die
        Rechte geben, die sie benötigt (siehe Seite <span class="pageref"><a href="#Gruppenverwaltung">Gruppenverwaltung</a></span>).
    </span>

    <span class="box">
        Bitte achten Sie darauf, dass Sie von neuen freiwilligen Redakteuren
        immer <em>das Beste hoffen und das Schlimmste erwarten</em> müssen. Nicht
        jeder Freiwillige ist wohlgesinnt: Wenn Sie jedem neuen Redakteur erlauben,
        neue Artikel zu veröffentlichen, könnten Sie ganz schnell Vandalen
        anlocken, die Ihr Blog verunstalten.
    </span>
</span>
</p>

<p class="desc">
<span class="item mbold">Benutzer deaktivieren/Rechte entziehen</span><!-- menuitem -->
<span class="desc-info">
    <span class="box">
        Jeder Benutzeraccount in Serendipity kann über die Option <span class="mbold">Benutzer
        deaktivieren/Rechte entziehen</span> vorübergehend deaktiviert werden. Wenn
        bei einem Account dieser Parameter aktiviert ist, kann ein Benutzer sich
        nur noch in das Backend einloggen und sonst nichts Weiteres mehr tun
        (siehe Seite <span class="pageref"><a href="#no-create">no-create</a></span>).
    </span>

    <span class="box">
        Über die Plugin-Option <span class="mbold">Benutzer deaktivieren/Rechte entziehen</span>
        können Sie einstellen, ob automatisch hinzugefügte Redakteure
        standardmäßig <em>inaktiv</em> sind.
    </span>

    <span class="box">
        Diese Option hat zwei Vorteile: Zum einen können Sie so eine manuelle
        Benutzerkontrolle erreichen. Ein Administrator müsste einen
        Benutzeraccount dann erst gezielt aktivieren, um ihm redaktionelle Rechte
        (gemäßig seiner Benutzergruppe) zu geben.
        Der andere Vorteil ist, dass Sie durch diese Option Benutzeraccounts
        anlegen können, die nichts anderes dürfen, als sich einzuloggen. Eine
        solche Benutzergruppe (<em>registrierter Gast</em>) kann bei Blogs
        hilfreich sein, die nur registrierten Autoren Kommentare erlauben oder
        spezielle Artikel nur registrierten Autoren anzeigen. So können sich
        Besucher einfach in Ihrem Blog anmelden, und Sie können Spam-Roboter und
        Suchroboter relativ leicht aus Ihrem Blog verbannen. Einige weitere
        Optionen des <em>Registrierung neuer User</em>-Plugins zielen auf exakt
        einen solchen Einsatzzweck ab.
    </span>
</span>
</p>

<p class="desc">
<span class="item mbold">Seitenleisten-Plugin anzeigen</span><!-- menuitem -->
<span class="desc-info">
    <span class="box">
        Das Seitenleisten-Plugin ist zwar grundsätzlich durch das
        Registrierungsformular unter
        <code>http://www.example.com/serendipity/index.php?serendipity[subpage]=adduser</code>
        nicht erforderlich, aber ohne das Seitenleisten-Plugin könnten die wichtigen
        Konfigurationsoptionen des Registrierungsvorganges nicht festgelegt werden.
    </span>

    <span class="box">
        Löschen Sie also das Seitenleisten-Plugin nicht, wenn Sie dessen
        Darstellung nicht sehen wollen, sondern setzen Sie die Option
        <span class="mbold">Seitenleisten-Plugin anzeigen</span> auf <span class="mbold">Nein</span>.
    </span>
</span>
</p>

<p class="desc">
<span class="item mbold">Straight insert</span><!-- menuitem -->
<span class="desc-info">
    <span class="box">
        Standardmäßig erhält ein Redakteur eine E-Mail mit einem Link, mit dem er
        den Registrierungsvorgang bestätigen muss. Ohne diese Bestätigung, die
        nur der jeweilige Benutzer anhand eines zufällig erzeugten Schlüssels
        aufrufen kann, ist sein Account nicht zu benutzen.
    </span>

    <span class="box">
        Da dieser Vorgang jedoch etwas Zeit und einen Medienbruch erfordert,
        können Sie auch die Option <span class="mbold">Straight insert</span> aktivieren. Dann wird
        ein Redakteursaccount sofort aktiv.
    </span>

    <span class="box">
        Beachten Sie, dass bei aktivierter Option die freie Registrierung
        wesentlich leichter durch böswillige Benutzer oder Spam-Roboter
        missbraucht werden kann. Nur in dem Fall, dass Ihr Webserver keine
        Aktivierungs-E-Mails verschicken kann oder Ihr Blog nur im Intranet läuft, wäre
        diese Option tatsächlich sinnvoll.
    </span>
</span>
</p>

<p>Das gekoppelte Ereignis-Plugin bietet weitere Konfigurationsoptionen:</p>

<p class="desc">
<span class="item mbold">Eigene Hinweise</span><!-- menuitem -->
<span class="desc-info">Ähnlich wie die Anweisungen für Redakteure im Seitenleisten-Plugin können
Sie separate (ausführlichere) Informationen angeben, die das Plugin
anzeigt, wenn Sie die URL
<code>http://www.example.com/serendipity/index.php?serendipity[subpage]=adduser</code>
aufrufen.</span>
</p>

<p class="desc">
<span class="tag-box invisible">
    <span class="inline-tag">Kommentare!nur für registrierte Nutzer</span>
</span><!-- tagbox -->
<span class="item mbold">Nur registrierte Nutzer dürfen Kommentare schicken</span><!-- menuitem -->
<span class="desc-info">
    <span class="box">
        Wenn Sie diese Option aktivieren, ist es nur noch eingeloggten Besuchern
        erlaubt, einen Kommentar zu hinterlassen.
    </span>

    <span class="box">
        Mittels dieser Plugin-Option können Sie das Spam-Aufkommen für Kommentare
        deutlich reduzieren. Sie erhöhen jedoch auch deutlich die Barriere, die ein
        neuer Besucher überwinden muss, um erstmals einen Kommentar zu hinterlassen.
    </span>

    <span class="box">
        Zusätzlich muss der Kommentator sich einen neuen Benutzernamen und ein
        eigenes Passwort für Ihr Blog merken. Man kann also mit an Sicherheit
        grenzender Wahrscheinlichkeit behaupten, dass die Aktivierung dieser
        Option nicht nur Spam-Kommentare reduziert, sondern auch weniger gültige
        Kommentare zur Folge hat. Blogs mit einem hohen
        <em>Troll-Faktor</em> [*]
        <span class="footnote"><i class="fa fa-info-circle"></i> <a href="http://de.wikipedia.org/wiki/Troll_%28Netzkultur%29" target="_blank" rel="noopener">http://de.wikipedia.org/wiki/Troll_(Netzkultur)</a></span><!-- footnote -->
        wissen es jedoch sicher zu schätzen, nur noch wirklich ernsthafte
        Kommentare zu erhalten.
    </span>

    <span class="tag-box invisible">
        <span class="inline-tag">OpenID</span>
    </span>
    <span class="box">
        Etwas einfacher wird die Registrierung durch den neuen Webservice
        <code>OpenID</code> (<code>http://openid.net/</code>). OpenID ist eine technische
        Schnittstelle, die zentrale Benutzeraccounts verwaltet, auf die
        andere Webseiten zugreifen können. Ein Benutzer muss nur einmal einen
        Account für die Schnittstelle erzeugen und kann sich dann auf allen
        Webseiten authentifizieren, die OpenID unterstützen.
    </span>

    <span class="box">
        Serendipity kann diese <code>OpenID</code>-Schnittstelle unterstützen, wenn Sie
        das Plugin <em>OpenID Authentication</em> installieren. Dieses Plugin ist
        derzeit noch im Beta-Stadium und kann sich noch stark verändern;
        es wird daher in diesem Buch nicht weiter vertieft. Zudem ist
        OpenID als Web-Schnittstelle leider noch nicht sehr weit verbreitet.
        Sollten Sie sich für dieses Thema interessieren, sei Ihnen das Plugin
        jedoch wärmstens ans Herz gelegt.
    </span>
</span>
</p>

<p class="desc">
<span class="tag-box invisible">
    <span class="inline-tag">Identitätsdiebstahl</span>
</span><!-- tagbox -->
<span class="item mbold">Autoren-Identitäten schützen</span><!-- menuitem -->
<span class="desc-info">
    <span class="box">
        Wenn ein Benutzer oder ein Redakteur einen Kommentar zu einem Artikel
        schreibt, kann er seinen Namen frei ausfüllen. Daher kann grundsätzlich
        jeder Besucher sich mit einem beliebigen Namen eintragen und unter
        anderem auch den Namen des Redakteurs <em>klauen</em>.
    </span>

    <span class="box">
        Die einzige Methode, um Benutzernamen einmalig und eindeutig zu verwenden, ist,
        Kommentare nur von registrierten Autoren zuzulassen und den Namen
        automatisch anhand des Benutzeraccounts auszufüllen.
    </span>

    <span class="box">
        Da eine solche Methode aber, wie eingangs erwähnt, auch die
        Hürde zum Schreiben von Kommentaren höher legen würde, geht das
        Ereignis-Plugin mit der Option <span class="mbold">Autoren-Identitäten schützen</span> einen
        Mittelweg.
    </span>

    <span class="box">
        Wenn Sie diese Option aktivieren, können Namen von bereits vorhandenen
        Redakteuren nur durch diese Redakteure verwendet werden. Ein anonymer
        Besucher kann daher nach wie vor kommentieren und sich einen Namen
        ausdenken - aber er darf keine bestehenden Namen mehr verwenden.
    </span>

    <span class="box">
        Wenn ein Kommentator einen geschützten Namen verwenden will, teilt das
        Plugin im Kommentarformular mit, dass er sich vorher mit diesem Namen
        einloggen muss. Dazu wird ihm ein Link angeboten, mit dem er ein Popup
        zum Login öffnen kann. Das Popup ist insofern hilfreich, als er dann
        seinen möglicherweise bereits geschriebenen Kommentar im
        Browser-Hintergrundfenster offen lassen und nach dem Login
        erneut abschicken kann.
    </span>

    <span class="box">
        Das Layout des Login-Fensters können Sie über die Smarty-Template-Datei
        <span class="tag-box invisible">
            <span class="inline-tag">Template-Dateien!loginbox.tpl</span>
        </span>
        <code>plugins/serendipity_plugin_adduser/loginbox.tpl</code>
        anpassen. Die verfügbaren Template-Variablen in dieser Datei sind:
    </span>
</span>
<!-- ok for eye, but a little different than everywhere else -->
<span class="citem-desc desc-info">
    <span class="tag-box invisible">
        <span class="inline-tag">Template-Variablen!\$loginform_add</span>
    </span>
    <span class="box">
        <code class="item smarty">{$loginform_add}</code>
        <span class="desc-info">enthält etwaige Zusatzvariablen für das Login-Formular, zB. die Ausgaben des Plugins
        <em>Passwort vergessen</em>.</span>
    </span>

    <span class="box">
        <span class="tag-box invisible">
            <span class="inline-tag">Template-Variablen!\$loginform_url</span>
        </span>
        <code class="item smarty">{$loginform_url}</code>
        <span class="desc-info">enthält die URL zum Login.</span>
    </span>

    <span class="box">
        <span class="tag-box invisible">
            <span class="inline-tag">Template-Variablen!\$loginform_user</span>
        </span>
        <code class="item smarty">{$loginform_user}</code>
        <span class="desc-info">enthält den vom Besucher eingetragenen Benutzernamen (falls eingeloggt).</span>
    </span>

    <span class="box">
        <span class="tag-box invisible">
            <span class="inline-tag">Template-Variablen!\$loginform_mail</span>
        </span>
        <code class="item smarty">{$loginform_mail}</code>
        <span class="desc-info">enthält die vom Besucher eingetragene E-Mail-Adresse (falls eingeloggt).</span>
    </span>

    <span class="box">
        <span class="tag-box invisible">
            <span class="inline-tag">Template-Variablen!\$close_window</span>
        </span>
        <code class="item smarty">{$close_window}</code>
        <span class="desc-info">ist auf <code>true</code> gesetzt, wenn der
        Login erfolgreich war und das Popup-Fenster geschlossen werden soll.</span>
    </span>

    <span class="box">
        <span class="tag-box invisible">
            <span class="inline-tag">Template-Variablen!\$is_logged_in</span>
        </span>
        <code class="item smarty">{$is_logged_in}</code>
        <span class="desc-info">ist auf <code>true</code> gesetzt, wenn der Benutzer eingeloggt ist.</span>
    </span>

    <span class="box">
        <span class="tag-box invisible">
            <span class="inline-tag">Template-Variablen!\$is_error</span>
        </span>
        <code class="item smarty">{$is_error}</code>
        <span class="desc-info">enthält etwaige Fehlermeldungen beim Login.</span>
    </span>
</span>
</p>

<p>Das Plugin erstellt eine Datenbanktabelle namens
<span class="tag-box invisible">
    <span class="inline-tag">Datenbank-Tabellen!serendipity_pending_authors</span>
</span>
<code>serendipity_pending_authors</code>, in der die neu angemeldeten, aber
noch nicht freigeschalteten Benutzer zwischengespeichert werden. Die
Datenbanktabelle verfügt weitestgehend über dieselben Tabellenfelder wie die
zentrale Tabelle <code>serendipity_authors</code>. Anstelle einer zentralen, primären
ID bietet diese Tabelle jedoch das Datenbankfeld <code>hash</code>, mit dem der
zukünftige Redakteur eindeutig identifiziert wird. Dieser Hash dient auch der
Freischaltung via E-Mail.</p>

</section><!-- section.sub end -->

<section id="serendipity-event-creativecommons" class="sub">
<span class="u-toc">7.2.2 - Creative Commons: serendipity_plugin_creativecommons,<br>Creative Commons-Lizenz: serendipity_event_creativecommons</span>

<h3 class="subsection" id="creative-commonsserendipity_plugin_creativecommons-creative-comm">Creative Commons<br>serendipity_plugin_creativecommons,<br>Creative Commons-Lizenz<br>serendipity_event_creativecommons</h3>

<p class="tagging invisible">
<span class="tag-box invisible">
    <span class="inline-tag">Creative Commons</span>
    <span class="inline-tag">Plugins!Creative Commons Lizenz</span>
    <span class="inline-tag">Plugins!serendipity_event_creativecommons</span>
    <span class="inline-tag">Urheberrecht</span>
    <span class="inline-tag">Lizenzen</span>
    <span class="inline-tag">Plugins!serendipity_plugin_creativecommons</span>
</span>
</p>

<p>Wenn Sie in Ihrem Blog einen Artikel der Allgemeinheit zugänglich machen,
liegen die Urheberrechte meist bei dem Redakteur des jeweiligen Artikels.
In kommerziellen Blogs gehen die Nutzungsrechte dafür üblicherweise in
Firmenbesitz über.</p>

<p>Die Thematik der Eigentums- und Nutzungsrechte von Blogs wird vielerorts
ausgiebig diskutiert - als Fazit kann man sagen, dass Sie sich auch als
privater Blogger Gedanken über die Verwertungsrechte Ihrer Artikel machen
sollten.</p>

<p>Wenn Sie beispielsweise eine ausführliche Dokumentation zu einem
Open-Source-Programm schreiben, könnte an diesem Artikel großes Interesse
der Allgemeinheit bestehen. Nun haben Sie als Verfasser zwei
Möglichkeiten: Entweder Sie verbieten Fremden, Ihren Artikel
weiterzuverbreiten, oder Sie erlauben die Verbreitung Ihres Textes in beliebigen
Medien.</p>

<p>Die erste Variante hat für Sie den Vorteil, dass Sie Herr über Ihren
Artikel bleiben und möglicherweise auch durch Werbeschaltung etwas Geld
verdienen können. Auf der anderen Seite werden erfahrungsgemäß trotzdem
viele Benutzer Ihren Artikel einfach weiterverbreiten, und Sie müssen
Rechtsmittel gegen diese Nutzung einlegen.</p>

<p>Die zweite Variante, die Offenlegung Ihres Artikels, hilft der Verbreitung
Ihres Textes. Wenn Sie hauptsächlich aus ideologischen Gründen daran interessiert sind,
Informationen zu verbreiten (<em>“Das Internet ist frei”</em>), ist dies
sicher die beste Maßnahme, damit Ihr Text Gehör (oder <em>Geles</em>)
findet. Andererseits könnten böswillige Nutzer Ihren Artikel auf kommerziellen
Webseiten als Eigenleistung darstellen. Da Sie den Text
aber zur freien Vervielfältigung freigegeben haben, sind Ihre
Rechtsmittel bei derartiger Nutzung recht eingeschränkt.</p>

<p>Beide Varianten haben eines gemeinsam: Sie stellen eine Lizenzierung dar.
Sie sollten sich stets für irgendeine Lizenz Ihrer Blog-Inhalte
entscheiden, um klare Verhältnisse zu schaffen.</p>

<p>Es gibt zahlreiche Lizenzen im Internet: Die GPL, BSD,
Mozilla-Lizenz und viele weitere sind grundsätzlich zwar eher für Software
gedacht, können aber durchaus auch auf eigene Werke wie Blog-Artikel
ausgeweitet werden.</p>

<p>Weil Artikel sich aber auch im deutschen Recht von Software
unterscheiden, gibt es spezielle Lizenzen, die sich auf Texte und eigene
Bilder spezialisiert haben. Die wohl verbreitetste und bekannteste ist
die sogenannte <em>Creative
Commons</em>-Lizenz [*]
<span class="footnote"><i class="fa fa-info-circle"></i> <a href="http://de.creativecommons.org/" target="_blank" rel="noopener">http://de.creativecommons.org/</a></span><!-- footnote -->. Diese
bietet ein bausatzartiges Modell, bei dem Sie sich Ihre Lizenz aus
einigen Komponenten zusammenstellen können. Sie können auswählen, ob Ihr
Text kommerziell eingesetzt werden darf, ob Ihr Urheberrecht jederzeit
mit angegeben werden muss und ob auf Ihrem Artikel aufbauende Texte
erstellt werden dürfen.</p>

<p>Sie können sowohl das gesamte Blog unter eine derartige Lizenz stellen,
als auch ausgewählte Bereiche des Blogs. Um diese Kennzeichnung zu
erleichtern, bietet Serendipity das <em>Creative Commons</em>-Plugin an.</p>

<p>In dem Ereignis-Plugin stellen Sie ein, für welche Lizenz Sie sich
entschieden haben. In dem RSS-Feed Ihres Blogs und in den HTML-Metatags
wird das Plugin daraufhin Lizenzhinweise einbinden, die der gewählten
Lizenz entsprechen.</p>

<p>Das Seitenleisten-Plugin können Sie einbinden, um in der Seitenleiste
für Besucher sichtbar anzuzeigen, welcher Lizenz ihr Blog unterliegt.</p>

<p>Grundsätzlich können Sie für Ihr Blog auch jede andere beliebige Lizenz
einbinden. Dazu können Sie einen HTML-Klotz als Seitenleisten-Plugin
einbinden und dort auf Ihre gewählte Lizenz hinweisen. Die
HTML/RSS-Metadaten können Sie über die Template-Dateien <code>feed*.tpl</code>
sowie die <code>index.tpl</code> ebenfalls manuell einpflegen.</p>

</section><!-- section.sub end -->

<section id="serendipity-event-freetag" class="sub">
<span class="u-toc">7.2.3 - Getaggte Artikel, Freie Artikel-Tags:<br>serendipity_plugin_freetag, serendipity_event_freetag</span>

<h3 class="subsection" id="getaggte-artikel-freie-artikel-tagsserendipity_plugin_freetag-se">Getaggte Artikel, Freie Artikel-Tags<br>serendipity_plugin_freetag, serendipity_event_freetag</h3>

<p class="tagging invisible">
<span class="label invisible" id="freetag">freetag</span>
<span class="tag-box invisible">
    <span class="inline-tag">Plugins!getaggte Artikel</span>
    <span class="inline-tag">Plugins!serendipity_event_freetag</span>
    <span class="inline-tag">Plugins!freie Artikel-Tags</span>
    <span class="inline-tag">Plugins!serendipity_plugin_freetag</span>
    <span class="inline-tag">Tags</span>
    <span class="inline-tag">Plugins!Tagging</span>
    <span class="inline-tag">Schlagworte</span>
    <span class="inline-tag">Verschlagwortung</span>
</span>
</p>

<p>Das <em>Tagging</em> (<em>Tag</em>, englischer Begriff für <em>Markierung,
Auszeichnung</em>) ist eine sehr verbreitete und komfortable Möglichkeit,
Blog-Artikel zu verschlagworten.</p>

<p>Ein Blog besitzt in seinem Kerngedanken keine Struktur, wie es
Content-Management-Systeme vorgeben. In einem Blog sind grundsätzlich
erst einmal alle Artikel gleichrangig und werden alle auf einer einzigen
Übersichtsseite angezeigt. Das macht es sehr einfach, bei einer sich
regelmäßig ändernden Webseite (Tagebücher, News, neue Fachthemen) als
Leser auf dem Laufenden zu bleiben. Man muss nur eine Seite (die
Übersichtsseite) aufrufen und sieht chronologisch sortiert alle neuen
Artikel. Da jeder Artikel eine Detailseite besitzt (der
<em>Permalink</em>), kann man sich solche Artikel auch gut als
Browser-Lesezeichen speichern.</p>

<p>Diese Struktur ist solange hervorragend geeignet, bis man als Leser
einmal einen speziellen älteren Artikel sucht. Meist hat man nur eine
vage Erinnerung, zu welchem Zeitpunkt der Artikel geschrieben wurde - die
chronologische Suche über den Kalender bzw. die Archive fällt also aus.
Auch eine Suche nach Stichworten kann kompliziert werden, wenn man sich
nicht gerade ein besonderes Wort im Artikel gemerkt hat.</p>

<p>Hier kommen die hierarchischen Sortierungsmöglichkeiten von Serendipity
ins Spiel: Mit etwas Glück hat der Redakteur seinen Artikel einer
Kategorie zugeordnet, und der Leser kann seinen gewünschten Artikel über
eine thematische Zuordnung wiederfinden.</p>

<p>Leider haben solche Hierarchien für Redakteure einen Nachteil: Sie sind
starr und unflexibel. Man muss sich Gedanken darum machen, über welche
Themen man schreiben möchte, und entsprechende Kategorien, möglicherweise
mit Unterkategorien, anlegen. Nachdem man sich als Redakteur Nächte um die
Ohren geschlagen hat, wie man seine Artikel kategorisiert, findet man
nach einigen Monaten des Schreibens heraus, dass eine Kategorie mit einer
Fülle an Artikeln überschwemmt wird und andere, liebevoll angelegte
Kategorien nur mit einem oder gar keinem Artikel aufwarten können. Nun
beginnt für den Redakteur also das Ausmisten: Kategorien vereinen oder
aufteilen und danach alle Artikel neu kategorisieren.</p>

<p>Verständlicherweise kann dies Redakteure zum Verzweifeln bringen. Nicht
jedes Blog ist nunmal klar zu klassifizieren.</p>

<p>Dieses Problems hat sich das Konzept des <em>Tagging</em> angenommen. Ein
Artikel wird nicht starr kategorisiert, sondern ihm werden einfach
beliebige Schlagworte zugeordnet. Wenn ein Redakteur also einen Artikel
über die <em>Geschichte der Weblogs unter besonderer Berücksichtigung
der Katzenbilder</em> geschrieben hat, muss er sich nicht lange den Kopf über
eine sinnvolle Kategorisierung zerbrechen, sondern weist einfach die
Schlagwörter <em>Geschichte, Weblogs, Katzenbilder</em> zu.</p>

<p>Diese Schlagwörter sieht der Besucher unterhalb des Artikels. Ein Klick
auf ein Schlagwort zeigt ihm dann alle weiteren Artikel, die das
Schlagwort ebenfalls enthalten. Nachträglich kann der Redakteur jederzeit
ein neues Schlagwort zu bestehenden Artikeln hinzufügen oder bestehende
Schlagwörter löschen. Zusätzlich ist natürlich auch eine beliebig feine
Zuordnung in feste Kategorien möglich.</p>

<p>Zusammenfassend lässt sich sagen, dass <em>Tags</em> unheimlich
komfortabel und selbsterklärend sind und eine leichte Verkettung (die
Grundidee des Internets!) ermöglichen. Dennoch sollte man erwähnen, dass
auch die sinnvolle Verwendung von Tags den Redakteuren obliegt. Da der
Redakteur sich Stichwörter jedesmal neu ausdenken muss, kann es
passieren, dass er für dieselbe Sache einmal <em>TV</em> und
einmal <em>Fernsehen</em> benutzt. Gerade in Blogs mit mehreren Redakteuren
ist eine gemeinsame Harmonisierung der Schlüsselwörter daher unabdingbar.</p>

<p>
<span class="tag-box invisible">
    <span class="inline-tag">Tagwolken@Tag-Wolken</span>
    <span class="inline-tag">Tag Clouds|see{Tag-Wolken}</span>
</span>
Sogenannte <em>Tag-Wolken</em> (<em>Tag Clouds</em>) können zudem Ihre
Blog-Artikel grafisch repräsentieren: In einer Auflistung sehen Sie alle
Schlagwörter, die Sie benutzt haben. Diese sind abhängig von ihrer
Einsatzhäufigkeit unterschiedlich stark hervorgehoben - das
meistverwendete Tag ist groß geschrieben, selten verwendete Tags erscheinen
klein am Rande.</p>


<p>Berühmt gemacht hat diese Tag-Wolke der Bilderdienst Flickr, der mit
diesem Tagging-Konzept ein wahres Novum in die komplexe Bildersuche im
Internet gebracht hat. Zu kaum einen Stichwort findet man heutzutage auf
<code>http://flickr.com</code> nicht bereits mehrere Bilder, die zudem mit
<em>verwandten Tags</em> kreuz-referenziert sind.</p>

<p>Das Ereignis-Plugin <em>Freie Artikel-Tags</em> kümmert sich um die
Verwaltung und Eingabe von Tags. Es bindet eine Tagging-Maske in die
Artikeloberfläche ein, und eine Verwaltungsoberfläche im Menüpunkt
<span class="mbold">Inhalt <span class="icon arrow-right">→</span> Tags verwalten</span>.</p>

<p>Bei der Erstellung eines Artikels sehen Sie im Bereich <span class="mbold">Erweiterte
Optionen</span> ein einfaches Eingabefeld namens <span class="mbold">Freie Artikel-Tags</span>. In
dieses Eingabefeld können Sie kommasepariert beliebige Tags eingeben.
Oberhalb des Eingabefelds sehen Sie eine Liste von Tags, die bereits früher
eingegeben wurden. Diese können Sie automatisch in das Eingabefeld
übernehmen, indem Sie auf den jeweiligen Tag klicken. Die Tags, die Sie
einem Artikel zugewiesen haben, zeigt das Plugin darauf im Frontend im
Fußbereich des Artikels an. Durch einen Klick auf das entsprechende Tag
sehen Sie eine Übersichtsseite mit weiteren Artikeln, denen das Tag
zugeordnet wurde.</p>

<p>Die Verwaltungsoberfläche, die Sie über den Menüpunkt <span class="mbold">Inhalt <span class="icon arrow-right">→</span> Tags
verwalten</span> erreichen, bietet folgende Möglichkeiten:</p>

<p class="desc">
<span class="item mbold">Alle Tags verwalten</span><!-- menuitem -->
<span class="desc-info">
    <span class="box">
        Ein Klick auf den Menüpunkt <span class="mbold">Alle Tags verwalten</span> ruft eine
        Übersicht auf, in der Sie alle vorhandenen Tags einsehen
        können. Diese werden tabellarisch mit alphabetischer Sortierung
        dargestellt. Der Zahlenwert in der Spalte <span class="mbold">Häufigkeit</span> gibt an, wie oft
        Sie das entsprechende Tag bereits zugeordnet haben.
    </span>

    <span class="box">
        Jedes Tag können Sie <span class="mbold">Löschen</span>. Dies löscht nur die Zuordnung des
        Tags, ein Artikel wird also nicht gelöscht. Ein bestehendes Tag können
        Sie zudem <span class="mbold">Umbenennen</span>. Dies benennt das Tag auch in den Artikeln um,
        denen Sie es bereits zugeordnet haben.
    </span>

    <span class="box">
        Wenn Sie ein pauschales Tag wie <em>Medien</em> vergeben haben, können Sie
        es über den Button <span class="mbold">Aufteilen</span> auch in mehrere Tags zerkleinern.
        Dabei tragen Sie eine kommaseparierte Liste in das erscheinende
        Eingabefeld ein, beispielsweise <em>Kino,Fernsehen,Radio</em>. Nach der
        Aufteilung werden nun jedem Artikel, dem bisher das Tag <em>Medien</em>
        zugewiesen war, die neuen Tags <em>Kino, Fernsehen</em> und <em>Radio</em>
        zugeordnet. In der Zukunft können Sie dann die feineren Tags gezielt
        verteilen und bei bestehenden Einträgen auch ggf. einzelne der feineren
        Tags entfernen.
    </span>
</span>
</p>

<p class="desc">
<span class="tag-box invisible">
    <span class="inline-tag">Verwaiste Tags</span>
</span><!-- tagbox -->
<span class="item mbold">Verwaiste Tags verwalten, Einträge mit verwaisten Tags anzeigen</span><!-- menuitem -->
<span class="desc-info">
    <span class="box">
        Verwaiste Tags sind Schlüsselwörter, die Sie bisher nur einmal einem
        Artikel zugewiesen haben. Solche verwaisten Tags sind meist weder für
        Besucher noch für Redakteure besonders hilfreich. Daher sollten Sie darüber
        nachdenken, solche Tags möglicherweise zu löschen oder umzubenennen.
    </span>

    <span class="box">
        Über den Menüpunkt <span class="mbold">Einträge mit verwaisten Tags anzeigen</span> können
        Sie eine Liste von Blog-Artikeln einsehen, denen solche verwaisten Tags
        zugeordnet sind. Von dort aus können Sie komfortabel diese Einträge
        überarbeiten.
    </span>
</span>
</p>

<p class="desc">
<span class="item mbold">Einträge ohne Tags anzeigen</span><!-- menuitem -->
<span class="desc-info">Analog zu Artikeln mit verwaisten Tags können Sie auch eine Liste
einsehen, in der alle Artikel aufgeführt sind, die noch keine Tags
erhalten haben.</span>
</p>

<p class="desc">
<span class="tag-box invisible">
    <span class="inline-tag">Automatische Schlüsselwörter</span>
</span>
<span class="item mbold">Automatische Schlüsselwörter</span><!-- menuitem -->
<span class="desc-info">
    <span class="box">
        Die Zuordnung von Schlüsselwörtern in Einträgen kann oft zu einer
        Fleißarbeit werden. Daher können Sie mit dem Plugin eine Wortliste
        einpflegen, die beim Auftreten von bestimmten Zeichenketten im Text Ihres
        Artikels automatisch ein zugeordnetes Tag zuweist.
    </span>

    <span class="box">
        Ein einfaches Beispiel kann dies am besten erläutern. Gegeben ist
        folgender Artikeltext:
    </span>

    <span class="box">
        <span id="pre-style"><code class="html">
            Das beste Blog der Welt ist in einer neuen Version erschienen:
            Serendipity 19.0 ist ab sofort verfügbar. Bugfixes sind bereits
            seit Version 3.0 nicht mehr nötig, und da sämtliche Features schon
            mit Version 4.0 das Ende der erdenkbaren Fahnenstange erreicht
            haben, ist die einzige Neuerung diesmal die neue Versionsnummer.
            An einigen Stellen wurden zudem Leerzeichen miteinander vertauscht,
            um das Shakra der Bits und Bytes mal etwas in Schwingung zu
            versetzen.
        </code></span>
    </span>

    <span class="box">
        Folgende Tags ließen sich dem Artikel sinnvollerweise zuordnen:
        <em>Serendipity, Blog, Release, Spiritualität, Security</em>. Diese
        Zuordnung könnte man relativ einfach automatisieren: Die Tags
        <em>Serendipity</em> und <em>Blog</em> können immer dann eingebunden werden,
        wenn genau diese Wörter im Artikeltext vorkommen. Das Tag <em>Release</em>
        kann vergeben werden, wenn die Zeichenkette <em>neue Version</em> oder
        <em>neuen Version</em> vorkommt. Und das Tag <em>Spiritualität</em> könnte
        man aufgrund des Artikeltextes <em>Shakra</em> vergeben.
    </span>

    <span class="box">
        Genau diese Zuordnung können Sie über den Verwaltungspunkt <span class="mbold">Inhalt
        <span class="icon arrow-right">→</span> Tags verwalten <span class="icon arrow-right">→</span> Automatische Schlüsselwörter</span> festlegen. Dort
        werden alle vorhandenen Tags aufgelistet. Klicken Sie auf den zugehörigen
        Link <span class="mbold">Bearbeiten</span>, so öffnet sich eine Eingabebox. Dort tragen Sie
        die Zeichenketten ein, bei deren Auftreten im Artikeltext das jeweilige
        Tag automatisch zugewiesen wird. Für das Tag <span class="mbold">Release</span> müssten Sie
        also hier <em>neue Version,neuen Version</em> eintragen. Beachten Sie
        dabei, dass Sie automatische Schlüsselwörter nur für Tags eintragen
        können, die Sie bereits einmal verwendet haben. Eventuell müssen Sie also
        erst einen Eintrag mit dem gewünschten Tag erstellen, bevor Sie
        automatisch Schlüsselwörter dafür vergeben können. Durch die Trennung
        mehrerer möglicher Zeichenketten mit einem Komma können beliebig viele
        Zeichenketten eine Tag-Zuweisung automatisch auslösen - diese Zeichenketten
        können auch Leer- und Sonderzeichen enthalten, sie werden später unabhängig von
        Groß- und Kleinschreibung durchsucht.
    </span>

    <span class="box">
        Die Tags weist das Plugin immer beim Speichern eines Artikels automatisch
        zu. Wenn in Ihrem Blog-Artikel ein automatisches Schlüsselwort gefunden
        wurde, gibt das Plugin einen Hinweistext über die durchgeführte Zuordnung
        aus:
    </span>

    <span class="box">
        <span id="pre-style"><code class="html">
            Schlüsselwort <em>neue Version</em> gefunden, Tag <em>Release</em> automatisch zugewiesen.
        </code></span>
    </span>
</span>
</p>

<p class="desc">
<span class="item mbold">Automatische Schlüsselwörter neu parsen</span><!-- menuitem -->
<span class="desc-info">
    <span class="box">
        Nachdem Sie die Liste automatischer Schlüsselwörter eingepflegt haben,
        sollten alle bereits bestehenden Artikel daraufhin geprüft werden,
        so dass eventuell fehlende Tags hinzugefügt werden können. Dabei
        können keine doppelten Tag-Zuordnungen entstehen.
    </span>

    <span class="box">
        Der Vorgang ruft intern automatisch jeden einzelnen Artikel zur
        Bearbeitung auf, analysiert den Artikeltext und weist die neuen Tags
        anhand der Schlüsselwörter zu. Da hierbei die zentrale
        Serendipity-Funktion zum Speichern eines Artikels aufgerufen wird, kann
        dies bei einem größeren Artikelbestand zu Performanceproblemen
        führen. Daher werden jeweils nur 25 Artikel pro Aufruf analysiert und
        neu gespeichert, und danach ruft das Plugin die nächste Seite mit den
        nächsten 25 Artikeln auf.
    </span>

    <span class="box">
        Durch die Verwendung der zentralen Speicherungsfunktion werden zudem
        alle mittlerweile neu installierten Plugins neu angewendet. Je nachdem,
        wie alt Ihre Artikel sind und welche Plugins Sie seither installiert
        haben, könnte dies zu problematischen Änderungen Ihrer Artikel führen.
        Wenn Sie beispielsweise das Plugin zum Ersetzen von
        Zeichenketten erst später installiert haben, würden nun auch in älteren
        Artikeln Wortersetzungen durchgeführt, die Sie bisher nur bei
        neuen Artikeln erhielten.
    </span>

    <span class="box">
        Sicherer ist es daher, wenn Sie vor der Ausführung dieser Funktion ein
        Backup erstellen (siehe Seite <span class="pageref"><a href="#backups">backups</a></span>).
    </span>
</span>
</p>

<p class="desc">
<span class="tag-box invisible">
    <span class="inline-tag">Kategorien!zu Tags konvertieren</span>
</span>
<span class="label invisible" id="freetag-existing">freetag-existing</span>
<span class="item mbold">Alle zugewiesenen Kategorien bestehender Artikel zu Tags konvertieren</span><!-- menuitem -->
<span class="desc-info">
    <span class="box">
        Wenn Sie Kategorien und Tags parallel nutzen, kann es unter Umständen
        sinnvoll sein, sämtliche Kategorien (wie <span class="mbold">TV</span>) auch automatisch als
        identisch benanntes Tag einem Artikel zuzuweisen. Diese Doppelung kann
        Besuchern später helfen, verwandte Themen zu finden.
    </span>

    <span class="box">
        Auch wenn Sie das Tagging-Plugin erst installiert haben, nachdem Sie
        bereits eine Reihe von Artikeln in Kategorien zugeordnet haben, kann es
        Sinn machen, sämtliche bestehenden Kategorien als Tags zuzuordnen. Um
        diesen Vorgang einmalig auszuführen, können Sie in der Tag-Verwaltung den
        Menüpunkt <span class="mbold">Alle zugewiesenen Kategorien bestehender Artikel zu Tags
        konvertieren</span> benutzen. Daraufhin holt das Plugin eine Liste aller
        vorhandenen Artikel, geht deren Zuordnung zu Kategorien durch und
        weist diese Kategorien jeweils den neu erstellten, gleichnamigen Tags zu.
    </span>

    <span class="box">
        Bei einem großen Artikelbestand kann dieser Vorgang eine Weile dauern.
        Während der Bearbeitung gibt Ihnen das Plugin eine Meldung aus, welche
        Kategorien es umgewandelt hat.
    </span>

    <span class="box">
        Nach dem Vorgang können Sie entweder die bestehenden Kategorien löschen
        (dabei werden die bestehenden Artikel beibehalten) oder Sie auch nach wie
        vor behalten, um Ihren Besuchern beide Darstellungsweisen zu
        ermöglichen.
    </span>
</span>
</p>

<p>
<span class="tag-box invisible">
    <span class="inline-tag">TagURLs@Tag-URL</span>
</span>
Die von Ihnen zugewiesenen Schlüsselwörter eines Artikels bindet das
Plugin in der Übersichtsseite ein. Dort kann der Besucher auf ein
Schlüsselwort klicken, um weitere Einträge zu sehen, die diesem Tag
entsprechen. Die URL für derartige Ansichten entspricht dem Format
<code>http://www.example.com/serendipity/plugin/tag/Schluesselwort</code>.
Alternativ kann auch jede Serendipity-URL mit einem Parameter wie
<code>http://www.example.com/serendipity/rss.php?serendipity[tag]=Schluesselwort</code>
aufgerufen werden und so beispielsweise einen RSS-Feed ausliefern, der
nur Artikel mit dem gewünschten Tag anzeigt.</p>

<p>
<span class="tag-box invisible">
    <span class="inline-tag">Verwandte Tags</span>
</span>
Wenn Sie eine solche Tag-Übersichtsseite aufrufen, stellt das Plugin
oberhalb der Einträge die erwähnte Tag-Wolke dar, anhand der ein Besucher
weitere Artikel aufrufen kann, die mit ähnlichen Tags versehen wurden.</p>

<p>Die Darstellung der Tag-Listen und Tag-Wolken können Sie über die
CSS-Klassen <code>.serendipity_freeTag</code> (unterhalb des Artikels) und
<code>.serendipity_freetag_taglist</code> (für die Tag-Wolke) anpassen.</p>

<p>In den Smarty-Templates (<code>entries.tpl</code>) bindet das Plugin folgende
Variablen ein:</p>

<p class="desc citem-desc">
<span class="tag-box invisible">
    <span class="inline-tag">Template-Variablen!\$entry.properties.freetag_tagList</span>
</span>
<code class="item smarty">{$entry.properties.freetag_tagList}</code>
<span class="desc-info">enthält eine kommaseparierte Liste aller Tags eines Artikels.</span>
</p>

<p class="desc citem-desc">
<span class="tag-box invisible">
    <span class="inline-tag">Template-Variablen!\$entry.properties.freetag_tags</span>
</span>
<code class="item smarty">{$entry.properties.freetag_tags}</code>
<span class="desc-info">enthält ein nummeriertes Array mit den Tags eines Artikels.</span>
</p>

<p class="desc citem-desc">
<span class="tag-box invisible">
    <span class="inline-tag">Template-Variablen!\$CONST.PLUGIN_VARS_TAG</span>
</span>
<code class="item smarty">{$CONST.PLUGIN_VARS_TAG}</code>
<span class="desc-info">enthalten den Namen eines
Tags, wenn die Eintragsübersicht durch den Besucher auf alle
Artikel mit einem speziellen Tag eingeschränkt wurde. Da dieser
Wert als Konstante vom Plugin gesetzt wird (wie auch das Array
<code>$serendipity['plugin_vars']['tag']</code>), können Sie auch innerhalb
anderer Plugins (mit PHP-Code) auf die Ansicht des Tagging-Plugins
zugreifen.</span>
</p>

<p>Das Tagging-Plugin bindet die zugewiesenen Schlüsselwörter selbständig in
Ihre RSS-Feeds ein. Dort werden sie über die Elemente <code>&lt;category&gt;</code>
(RSS 2.0, 0.91) bzw. <code>&lt;dc:subject&gt;</code> (RSS 1.0, Atom) integriert, die
übliche Feedreader problemlos auslesen können. Wenn Sie diese Tags im
Feed gerne speziell (ähnlich wie der FeedBurner-Service, siehe Seite
<span class="pageref"><a href="#syndication-feedburner">syndication-feedburner</a></span>) formatieren möchten, können Sie dazu die
<code>feed_*.tpl</code>-Template-Dateien bearbeiten und die oben aufgeführten
Variablen auslesen (siehe Seite <span class="pageref"><a href="#customfeeds">customfeeds</a></span>).</p>

<p>Wenn Sie das XML-RPC Plugin nutzen (siehe Seite <span class="pageref"><a href="#xmlrpc">xmlrpc</a></span>),
kann das Tagging-Plugin etwaige Tags aus Ihrem XML-RPC Client
interpretieren, wenn diese als <em>mt_keywords</em> gesendet werden.</p>

<p>Das Ereignis-Plugin bietet Ihnen folgende Konfigurationsoptionen:</p>

<p class="desc">
<span class="item mbold">Erstelle Tags für zugewiesene Kategorien</span><!-- menuitem -->
<span class="desc-info">Wenn Sie diese Option aktivieren, kann das Plugin beim Speichern eines
Artikels, der einer Kategorie zugeordnet wird, den Namen dieser Kategorie
zusätzlich als Tag zuweisen. Dies kann sehr nützlich sein, wenn Sie sich
Tipparbeit beim Erstellen von Tags sparen und eine
Kategorisierung von Artikeln abseits der Schlüsselwörter weiterhin nutzen
wollen. Weitere Erklärungen hierzu finden Sie auf Seite
<span class="pageref"><a href="#freetag-existing">freetag-existing</a></span>.</span>
</p>

<p class="desc">
<span class="label invisible" id="Taglink">Taglink</span>
<span class="item mbold">Taglink</span><!-- menuitem -->
<span class="desc-info">
    <span class="box">
        Wenn Ihre Besucher auf den Link eines Tags klicken, führt dieser
        standardmäßig zu einer URL wie
        <code>http://www.example.com/serendipity/plugin/tag/tagname</code>.
        Dieser virtuelle Verzeichnisname wird vom Tagging-Plugin ausgewertet.
        Dank der globalen URL-Umformung können alle Pfadverweise zu
        <code>/plugin/</code> zu einem beliebigen Plugin führen.
    </span>

    <span class="box">
        Wenn Sie gerne stattdessen eine eigene URL verwenden wollen, müssen Sie
        eigenständig für eine korrekte <code>mod_rewrite</code>-Regel sorgen, die
        Zugriffe beispielsweise von
        <code>http://www.example.com/serendipity/schluesselwoerter/tagname</code>/
        auf
        <code>http://www.example.com/serendipity/index.php?serendipity[tag]=tagname</code>
        umleitet. Dies könnte beispielsweise über folgenden
        <code>.htaccess</code>-Eintrag erreicht werden:
    </span>

    <span class="box">
        <span id="pre-style"><code class="conf">
            RewriteRule ^schluesselwoerter/(.*)/$index.php?serendipity[tag]=$1 [L,QSA]
        </code></span>
    </span>

    <span class="box">
        Damit das Tagging-Plugin danach Ihre konfigurierte URL verwenden kann,
        müssen Sie den Pfad im Feld <span class="mbold">Taglink</span> einfügen.
    </span>

    <span class="box">
        Bitte ändern Sie den Wert dieses Feldes nur dann, wenn Sie manuelle
        Vorkehrungen für die korrekte Umleitung getroffen haben! Wenn Sie hier
        einfach einen Fantasiewert eintragen, kann das Plugin die
        Tag-Übersichtsseiten nicht mehr übernehmen.
    </span>
</span>
</p>

<p class="desc">
<span class="item mbold">Zeige die Tags in der Fußzeile an</span><!-- menuitem -->
<span class="desc-info">
    <span class="box">
        Das Plugin zeigt die einem Artikel zugewiesenen
        Schlüsselwörter in der Fußzeile jedes Eintrages an. Dies hat den Vorteil,
        dass es losgelöst vom Artikeltext formatiert werden kann und unabhängig
        vom Artikeltext ist.
    </span>

    <span class="box">
        Wenn Sie die Option <span class="mbold">Zeige die Tags in der Fußzeile an</span>
        deaktivieren, kann das Plugin die Tag-Listen direkt in den Artikeltext
        einfügen. Dann werden Tag-Zuweisungen auch direkt im Artikeltext
        sichtbar, wenn dieser beispielsweise in einem RSS-Reader betrachtet wird.
        Sie verlieren dadurch jedoch Flexibilität in der Positionierung der
        Tag-Liste.
    </span>
</span>
</p>

<p class="desc">
<span class="item mbold">Zeige Wolke mit verwandten Tags an</span><!-- menuitem -->
<span class="desc-info">Diese standardmäßig aktivierte Option sorgt dafür, dass Ihre Besucher
beim Aufrufen einer Tag-Übersichtsseite eine Information darüber
erhalten, welche weiteren Tags den Artikeln zugewiesen wurden, die dem aktuell
gewählten Tag entsprechen.</span>
</p>

<p class="desc">
<span class="item mbold">Minimale/Maximale Schriftgröße eines Tags in der Wolke</span><!-- menuitem -->
<span class="desc-info">Das Plugin kann die Größe der Tags innerhalb der Tag-Wolke abhängig von
deren Verwendungshäufigkeit skalieren. Oft verwendete Tags erscheinen
größer, selten benutzte Tags etwas kleiner. Das Plugin kann dies mittels
relativer Schriftgrößenänderungen umsetzen. Sie können über entsprechende
Prozentwerte kontrollieren, wie stark die Varianz der Schriftgröße sein
darf.</span>
</p>

<p class="desc">
<span class="tag-box invisible">
    <span class="inline-tag">Keywords</span>
    <span class="inline-tag">Meta-Tags</span>
    <span class="inline-tag">SEO</span>
</span><!-- tagbox -->
<span class="item mbold">Anzahl der Schlagwörter, die in die Meta-Angaben des HTML-Codes eingesetzt werden sollen</span><!-- menuitem -->
<span class="desc-info">
    <span class="box">
        Das Tagging-Plugin kann beim Aufrufen einer Artikeldetailseite die
        zugewiesenen Tags innerhalb eines HTML <code>&lt;meta&gt;</code>-Tags einbinden.
        Solche <code>&lt;meta&gt;</code>-Tags können von Suchmaschinen ausgewertet werden, um
        die Schlüsselwörter automatisiert auszuwerten.
    </span>

    <span class="box">
        Aufgrund des hohen Missbrauchs durch Spammer werden diese Keywords
        heutzutage von Suchmaschinen jedoch sehr, sehr gering gewichtet. Dennoch
        macht es aus semantischer Sicht durchaus Sinn, dass Sie auf Ihren
        Artikel-Einzelseiten die von Ihnen eingetragenen Schlüsselwörter in
        dieser Meta-Angabe einbinden.
    </span>

    <span class="box">
        In dem Optionsfeld können Sie eine beliebige Zahl eintragen, mit der Sie
        bestimmen, wie viele Ihrer eingegebenen Schlüsselwörter als Meta-Tag
        eingebunden werden sollen. Suchmaschinen können meist nur zwischen 10 und
        15 Meta-Keywords auslesen. Wenn Sie Ihren Artikeln also sehr viele Tags
        zuweisen, ist es sinnvoll, die Liste der maschinenlesbaren Keywords an
        dieser Stelle zu begrenzen. Im täglichen Einsatz dürfte es jedoch recht
        selten sein, dass Sie einmal zu viele Tags benutzen - stellen Sie diese
        Option daher ruhig auf einen Wert wie 15 oder 20.
    </span>

    <span class="box">
        Die Zahl <code>0</code> deaktiviert die Verwendung von Meta-Tags. Beachten Sie,
        dass das automatische Ausfüllen von Meta-Keyword-Tags des Plugins mit
        dem speziellen Plugin namens <em>Meta-Keywords</em> kollidieren
        kann. Mithilfe dieses Plugins können Sie die Meta-Felder der
        Detailseiten Ihrer Artikel gezielt befüllen und auch Kurzbeschreibungen
        eintragen.
    </span>
</span>
</p>

<p class="desc">
<span class="item mbold">Zeige Artikel mit ähnlichen Themen an, Wieviele Artikel mit ähnlichen Themen sollen angezeigt werden</span><!-- menuitem -->
<span class="desc-info">
    <span class="box">
        Unterhalb der Liste der zugewiesenen Tags eines Artikels kann das Plugin
        eine weitere Artikelliste einblenden. In dieser werden Links zu den
        aktuellsten Artikeln (konfigurierbare Anzahl) ausgegeben, die ähnliche
        Tags verwenden wie der aktuelle Artikel.
    </span>

    <span class="box">
        Dies kann für Besucher besonders hilfreich sein, wenn sie Ihren Artikel
        über eine Suchmaschine gefunden haben. Mit weiterführenden Artikeln in
        Ihrem Blog können Sie so den Besucher an Ihre Seite binden und ihn dort
        mit weiteren Informationen oder Texten dazu verlocken, sich noch etwas
        umzusehen.
    </span>
</span>
</p>

<p class="desc">
<span class="item mbold">Tags in Kleinbuchstaben umwandeln</span><!-- menuitem -->
<span class="desc-info">
    <span class="box">
        Üblicherweise werden Tags allesamt klein geschrieben, um bei mehreren
        Redakteuren zu vermeiden, dass dieselben Tags unterschiedlich geschrieben
        werden.
    </span>

    <span class="box">
        Wenn Sie jedoch redaktionell sicherstellen, dass identische Tags nicht in
        unterschiedlicher Klein- oder Großschreibung auftreten, dann können Sie
        das Plugin anweisen, keine automatische Umwandlung vorzunehmen.
    </span>
</span>
</p>

<p class="desc">
<span class="tag-box invisible">
    <span class="inline-tag">Sicherheit</span>
</span><!-- tagbox -->
<span class="item mbold">Sende X-FreeTag-HTTP-Header</span><!-- menuitem -->
<span class="desc-info">
    <span class="box">
        Wenn das Plugin eine Übersichtsseite von Artikeln zu einem gewissen Tag
        ausliefert, kann das verwendete Tag als HTTP-Kopfzeile (<em>Header</em>)
        ausgegeben werden. Diese Information wird im Hintergrund an den Browser
        übermittelt und dient nur dem Zweck, dass Entwickler leichter feststellen
        können, welches Tag vom Plugin verwendet wird. Da das Plugin mehrere
        technische Möglichkeiten zur Bestimmung des Tags bietet, kann es hier
        theoretisch zu nicht nachvollziehbaren Problemen kommen, die sich
        mithilfe der HTTP-Kopfzeile besser analysieren lassen.
    </span>

    <span class="box">
        Diese Option kann gefahrlos deaktiviert werden, jedoch hat deren
        Aktivierung auch keine spürbaren Auswirkungen. Paranoiker
        werden diese Option ggf. deaktivieren wollen, da man anhand dieser
        Ausgabe feststellen kann, ob ein Blog mit Serendipity betrieben wird.
    </span>
</span>
</p>

<p class="desc">
<span class="item mbold">Klickbare Liste aller schon vorhandenen Tags beim Schreiben eines Eintrags anzeigen, Zeige Tag-Vorschläge bei der Eingabe</span><!-- menuitem -->
<span class="desc-info">
    <span class="box">
        Beim Verfassen eines Artikels kann das Plugin alle bereits vergebenen
        Tags in einer Liste anzeigen. Dort können Sie jedes vorhandene Tag
        anklicken, um es komfortabel dem Eintrag zuzuweisen.
    </span>

    <span class="box">
        Bei sehr vielen vorhandenen Tags kann diese Liste sehr umfangreich
        werden. Daher können Sie diese klickbare Liste gezielt deaktivieren, um
        den Bildschirm übersichtlicher zu machen.
    </span>

    <span class="box">
        Weiterhin kann das Plugin beim Aktivieren der Option <span class="mbold">Zeige
        Tag-Vorschläge bei der Eingabe</span> mit einem dynamischen JavaScript dafür
        sorgen, dass, sobald Sie einen Buchstaben im Eingabefeld der Tags
        eintippen, eine Liste der mit diesem Buchstaben beginnenden vorhandenen
        Tags eingeblendet wird. So könnten Sie also bereits bei Eingabe von
        <code>Se</code> die Auswahl <code>Serendipity, Sepsis,
        Sekundärnavigation</code> sehen und aus dieser Liste das gewünschte Tag
        auswählen. Dies spart sowohl Tipparbeit als auch die umfangreiche Liste
        aller vorhandenen Tags, benötigt jedoch einen JavaScript-fähigen Browser.
    </span>
</span>
</p>

<p class="desc">
<span class="tag-box invisible">
    <span class="inline-tag">Technorati</span>
</span><!-- tagbox -->
<span class="item mbold">Technorati Tag Link, Technorati Tag image</span><!-- menuitem -->
<span class="desc-info">Falls das Plugin Links zum Technorati-Webserver einbinden
soll, können Sie dies über die Option <span class="mbold">Technorati Tag Link</span> aktivieren.
Standardmäßig wird ein Bild von den Technorati-Servern als Symbol dargestellt,
Sie können jedoch auch eine eigene URL für die Grafik eintragen.</span>
</p>

<p>Weiterhin steht ein gekoppeltes Seitenleisten-Plugin zur Verfügung. Darüber können Sie eine Übersicht aller verwendeten Tags in der
Seitenleiste [*]
<span class="footnote"><i class="fa fa-info-circle"></i> Die Ausgabe eines Seitenleisten-Plugins können Sie
auch an jeder anderen beliebigen Stelle in einem Template einbinden,
schlagen Sie dazu in Kapitel <span class="reference">serendipity-showPlugin</span> auf Seite
<span class="pageref"><a href="#serendipity-showPlugin">serendipity-showPlugin</a></span> nach.</span><!-- footnote -->
einbinden. Die Konfigurationsoptionen dieses Seitenleisten-Plugins sind:</p>

<p class="desc">
<span class="item mbold">XML-Icons anzeigen, XML-Icon URL</span><!-- menuitem -->
<span class="desc-info">Zu jedem Tag kann in der Seitenleiste ein Link zu dem jeweiligen RSS-Feed
eingebunden werden.</span>
</p>

<p class="desc">
<span class="item mbold">Zeilenumbruch nach jedem Tag</span><!-- menuitem -->
<span class="desc-info">Standarmäßig stellt das Plugin alle Tags hintereinander dar, so dass die
volle Breite der Seitenleiste für die Tag-Auflistung benutzt werden kann.
Bei unterschiedlichen Schriftgrößen kann dies je nach Menge Ihrer Tags
möglicherweise zu unübersichtlich aussehen, daher können Sie die Option
<span class="mbold">Zeilenumbruch nach jedem Tag</span> aktivieren, um pro Zeile nur ein
einzelnes Tag auszugeben.</span>
</p>

<p class="desc">
<span class="item mbold">Taglink</span><!-- menuitem -->
<span class="desc-info">Analog zu der gleichnamigen Konfigurationsoption des Ereignis-Plugins
können Sie hier festlegen, zu welcher URL der Klick auf ein Schlüsselwort
führt (siehe Seite <span class="pageref"><a href="#Taglink">Taglink</a></span>).</span>
</p>

<p class="desc">
<span class="item mbold">Schriftgröße des Font-Tags je nach Popularität vergrößern</span><!-- menuitem -->
<span class="desc-info">Das Seitenleisten-Plugin kann die Schriftgröße der Tags je nach
Einsatzhäufigkeit verändern. Häufig verwendete Tags erscheinen groß,
selten eingesetzte kleiner. Dies erleichtert es dem Besucher, einen
thematischen Überblick zu Ihrem Blog zu erhalten.</span>
</p>

<p class="desc">
<span class="item mbold">Minimale/Maximale Schriftgröße eines Tags</span><!-- menuitem -->
<span class="desc-info">Legt fest, wie klein oder groß ein Tag in der Darstellung (in absoluten
Prozentwerten) sein darf. Das Plugin skaliert die Größen daraufhin automatisch
in dem festgelegten Von/Bis-Bereich.</span>
</p>

<p class="desc">
<span class="item mbold">Wieviele Tags sollen angezeigt werden</span><!-- menuitem -->
<span class="desc-info">Mit dieser Option legen Sie fest, auf wie viele Schlüsselwörter die
Ausgabeliste begrenzt werden soll.</span>
</p>

<p class="desc">
<span class="item mbold">Wie oft muss ein Tag vorkommen, damit er angezeigt wird</span><!-- menuitem -->
<span class="desc-info">Wenn Sie sehr viele Tags in Ihrem Blog einsetzen, macht es wenig Sinn,
jedes einzelne in der Seitenleiste aufzuführen. Daher können Sie diese
Ausgabe auf populäre Tags beschränken und mithilfe der Option <span class="mbold">Wie
oft muss ein Tag vorkommen...</span> eine Mindestanzahl festlegen.</span>
</p>

<p class="desc">
<span class="item mbold">Sortierung</span><!-- menuitem -->
<span class="desc-info">
    <span class="box">
        Hier können Sie festlegen, ob die Tags in der Seitenleiste alphabetisch
        nach Name oder nach Einsatzhäufigkeit sortiert werden sollen.
    </span>

    <span class="box">
        Wenn Sie die Anzahl der Tags einschränken, bestimmt die
        Sortierungsreihenfolge auch, welche Tags am Ende der Liste entfernt
        werden. Wenn Sie die Liste alphabetisch sortieren und auf 20 Tags
        beschränken, aber Ihre populärsten Tags mit dem Buchstaben <em>Z</em>
        anfangen, könnte es sein, dass diese Schlüsselwörter nicht ausgegeben
        werden, da bereits 20 Tags dargestellt wurden, die in der
        alphabetischen Sortierung weiter vorn liegen.
    </span>
</span>
</p>

<article id="XU" class="subsub">

<header>
    <h4 class="subarticle" id="datenbanktabelle-5">Datenbanktabelle</h4>
</header>

<p>
<span class="tag-box invisible">
    <span class="inline-tag">Datenbank-Tabellen!serendipity_event_entrytags</span>
</span>
</p>

<p>Die Datenbanktabelle <code>serendipity_event_entrytags</code> enthält jeweils ein
zugeordnetes Tag (<code>tag</code>) zu einer Artikel-ID (<code>entryid</code>).</p>

<p>
<span class="tag-box invisible">
    <span class="inline-tag">Datenbank-Tabellen!serendipity_event_tagkeywords</span>
</span>
Die freien Schlüsselwörter, die für ein Tag zugeordnet werden können, werden in
der Tabelle <code>serendipity_event_tagkeywords</code> gespeichert. Dort wird
ebenfalls jedem Tag (<code>tag</code>) eine Liste an kommaseparierten Schlüsselwörtern
(<code>keywords</code>) zugeordnet.</p>

<p>In älteren Versionen des Plugins wurden Tags in der Tabelle
<code>serendipity_entryproperties</code> gespeichert. Dies hat sich
performancetechnisch nicht günstig ausgewirkt, und die Tags liegen nun in einer eigenen Tabelle.</p>

</article>

</section><!-- section.sub end -->

<section id="serendipity-event-geotag" class="sub">
<span class="u-toc">7.2.4 - Geotag Google Map, Geotag: serendipity_plugin_geotag, serendipity_event_geotag</span>

<h3 class="subsection" id="geotag-google-map-geotagserendipity_plugin_geotag-serendipity_ev">Geotag Google Map, Geotag<br>serendipity_plugin_geotag, serendipity_event_geotag</h3>

<p class="tagging invisible">
<span class="tag-box invisible">
    <span class="inline-tag">Plugins!Geotag Google Map</span>
    <span class="inline-tag">Plugins!Geotag</span>
    <span class="inline-tag">Plugins!serendipity_plugin_geotag</span>
    <span class="inline-tag">Plugins!serendipity_event_geotag</span>
    <span class="inline-tag">Geotagging</span>
    <span class="inline-tag">Meta-Informationen</span>
</span>
</p>

<p>Als <em>Geotagging</em> bezeichnet man den Vorgang, zu einem Artikel (oder
auch einem Bild) einen geographischen Bezug (<em>Meta-Informationen</em>)
zuzuordnen.</p>

<p>
<span class="tag-box invisible">
    <span class="inline-tag">Semantic Web</span>
</span>
Diese Meta-Informationen sind oft für Besucher gar nicht offensichtlich, da sie im
XHTML-Code versteckt sind und nur von Schnittstellen oder Browser-Plugins
ausgewertet werden. Meta-Informationen (oder auch <em>Microformats</em>) sind die
Grundidee der nächsten Evolutionsstufe des Internets, genannt
<em>Semantic Web</em>. Anhand klar strukturierter, maschinenlesbarer
Informationen können Suchmaschinen Details auswerten und miteinander verknüpfen.</p>

<p>Konkret kann dies bedeuten, dass man mit einer Suchmaschine alle
Blog-Artikel suchen kann, die im Starbucks-Cafe am Kölner Hauptbahnhof
verfasst wurden; oder alle Blog-Einträge, die sich auf die Semperoper
beziehen. Der sinnvolle Umgang mit den Metadaten eröffnet zahlreiche
Möglichkeiten und Verkettungen von Daten, die ein eigenes Buch zu diesem Thema
rechtfertigen würden.</p>

<p>Alle diese Such- und Verkettungsmöglichkeiten werden aber erst dann nutzbar,
wenn die Informationen überhaupt von Autoren zur Verfügung gestellt werden. Diese
redaktionelle Leistung kann Ihnen derzeit noch keine Maschine abnehmen.</p>

<p>
<span class="tag-box invisible">
    <span class="inline-tag">Google Map</span>
</span>
Aber die Eingabe kann Ihnen erleichtert werden, und aus diesem Grund
wurde das Serendipity-Plugin <code>Geotag</code> erfunden. Wenn Sie dieses
Plugin installieren, können Sie in den <em>Erweiterten Optionen</em> jeden
Blog-Artikels mittels einer
Google-Map [*]
<span class="footnote"><i class="fa fa-info-circle"></i> <a href="http://maps.google.com/" target="_blank" rel="noopener">http://maps.google.com/</a></span><!-- footnote --> einem
Punkt auf der Welt zuordnen. Die geographischen Daten bindet das Plugin daraufhin in
Ihrem RSS-Feed und auf der Webseite ein, von wo sie von Suchmaschinen
indiziert werden können.</p>

<p>Ein zugehöriges Seitenleisten-Plugin kann in einer Google-Map außerdem
die aktuellsten Einträge geographisch zugeordnet darstellen.</p>

<p>Für beide Einsatzzwecke (Seitenleisten- und Ereignis-Plugin) benötigen Sie
einen Google API-Schlüssel. Diesen erhalten Sie bei
<code>http://www.google.com/apis/maps/signup.html</code>, nachdem Sie den
Lizenzbedingungen zugestimmt und die URL Ihres Blogs mitgeteilt
haben. Ohne den API-Schlüssel kann das Plugin keine geographische Karte
darstellen, und Sie müssten die Längen- und Breitengrade zu einem Eintrag
per Hand festlegen.</p>

<p>Das Ereignis-Plugin bindet lediglich diese eingegebenen Längen- und
Breitengrade in die Metadaten des RSS-Feeds ein (<code>&lt;geo:long&gt;,
&lt;geo:lat&gt;</code>). Um sichtbare Informationen für Ihre Besucher zu verketten,
bietet das Ereignis-Plugin auch die Möglichkeit an, eine Karte zu dem
jeweiligen verbundenen Ort anzuzeigen. Hier wird standardmäßig
Google Maps eingebunden, aber Sie können auch einen anderen Kartendienst
benutzen. In dem Eingabefeld <span class="mbold">Karten URL</span> der Konfiguration des
Ereignis-Plugins können Sie die Platzhalter <code>%GEO_LAT%</code> und
<code>%GEO_LONG%</code> für die Längen- und Breitengrade innerhalb der URL
einsetzen, und <code>%TITLE%</code> wird mit dem Titel des zugehörigen
Blog-Eintrages mit den Geodaten ersetzt.</p>

<p>Anschließend erfolgt die Darstellung dieses Links unterhalb jedes
Blog-Eintrags im Fuß der Seite, innerhalb eines HTML-Containers mit der
CSS-Klasse <code>div.serendipity_geotag</code>.</p>

<p>In der Konfiguration des Seitenleisten-Plugins können Sie einige
Darstellungsoptionen der Google Map festlegen (Breite, Höhe, Zoomlevel).
Das Google Map JavaScript kann die Darstellung einer Karte mit
geographischen Punkten anreichern. Als Datenbasis dazu dient der RSS-Feed
Ihres (oder auch eines anderen!) Blogs. Diese RSS-URL müssen Sie in der
Konfiguration des Plugins festlegen, standardmäßig zeigt die Einstellung
bereits auf Ihren RSS-Feed. Als weitere Alternative kann das Plugin auch direkt
auf Ihre Datenbank zugreifen und spart so den Umweg über einen RSS-Feed.</p>

</section><!-- section.sub end -->

<section id="serendipity-event-multilingual" class="sub">
<span class="u-toc">7.2.5 - Sprachauswahl, Multilinguale Einträge:<br>serendipity_plugin_multilingual, serendipity_event_multilingual</span>

<h3 class="subsection" id="sprachauswahl-multilinguale-einträgeserendipity_plugin_multiling">Sprachauswahl, Multilinguale Einträge<br>serendipity_plugin_multilingual, serendipity_event_multilingual</h3>

<p class="tagging invisible">
<span class="tag-box invisible">
    <span class="inline-tag">Plugins!Sprachauswahl</span>
    <span class="inline-tag">Plugins!serendipity_event_multilingual</span>
    <span class="inline-tag">Plugins!Multilinguale Einträge</span>
    <span class="inline-tag">Plugins!serendipity_plugin_multilingual</span>
    <span class="inline-tag">Mehrsprachigkeit</span>
</span>
</p>

<p>Wenn Sie in einem Blog Einträge in unterschiedlichen Sprachen verfassen
wollen, können Sie dafür beispielsweise eigenständige Blog-Kategorien
einrichten und die Einträge dort entsprechend einordnen. Dabei entstünde
jedoch pro Übersetzung eines Artikels ein neuer, eigenständiger Artikel.</p>

<p>Zwar hat dies auch möglicherweise Vorteile, da die Einträge so
unabhängig voneinander sind (zB. für
Kommentare), aber schöner wäre es doch, wenn ein Artikel in mehreren
Sprachversionen verwaltet werden könnte.</p>

<p>Dies ermöglicht das Ereignis-Plugin <em>Multilinguale Einträge</em>.
Für mehrsprachige Einträge empfiehlt es sich, dass Sie Ihr
Blog mit UTF-8-Zeichensatz konfiguriert haben. Mit nationalen
Zeichensätzen könnte es später Darstellungsprobleme bei Sonderzeichen
unterschiedlicher Sprachen geben. Beim UTF-8-Zeichensatz können jedoch
sowohl chinesische Sprachzeichen als auch deutsche Umlaute parallel auf
derselben Seite angezeigt werden.</p>

<p>Sobald Sie das Ereignis-Plugin installiert haben, bindet es sich in die
bekannte Oberfläche zur Erstellung eines Artikels ein. Im Bereich
<em>Erweiterte Optionen</em> im Abschnitt <em>Multilinguale Einträge</em>
erscheint bei einem neuen Eintrag ein Hinweistext. Dieser erklärt
Ihnen, dass Sie einen Beitrag erst einmal abspeichern müssen, bevor Sie
den Artikel in weitere Sprachen übersetzen können.</p>

<p>Erstellen Sie also beispielhaft einen Artikel mit Titel und Inhaltstext.
Diesen speichern Sie als <em>Entwurf</em> ab (damit er nicht direkt im
Frontend erscheint). Sobald Sie diesen Artikel erstmalig gespeichert
haben, finden Sie im Abschnitt <em>Multilinguale Einträge</em> ein
Ausklappfeld und den Button <span class="mbold">Sprache wechseln</span>. Im Ausklappfeld ist
anfangs <em>Standard</em> ausgewählt.</p>

<p>Intern verhält es sich so, dass Serendipity einen normalen
Datenbankeintrag mit den Stammdaten des Artikels sichert. Zu den
Stammdaten gehören die Felder <code>Titel</code>, <code>Eintrag</code>,
<code>Erweiterter Eintrag</code> sowie weitere Daten wie Artikelzeit und Autor.
Diese Stammdaten werden niemals durch das Plugin <em>Multilinguale
Einträge</em> verändert. Wenn Sie später einen Artikel bearbeiten, wird Ihnen
standardmäßig immer der Stammartikel angezeigt.</p>

<p>Als <em>Standardsprache</em> gilt die Sprache, die der jeweilige Redakteur
in seinen <em>Eigenen Einstellungen</em> (also <em>nicht</em> die in der
globalen Konfiguration eingestellte Blog-Sprache!) festgelegt hat. Dies
führt oft zur Verwirrung bei Benutzern des Plugins, daher sollten Sie
sich diese Besonderheit gut einprägen. Wenn Sie als Redakteur
<em>Deutsch</em> als Sprache gewählt haben, so entspricht dies der
Standardsprache. Sie können daher im Ausklappfeld die Sprache
<em>Deutsch</em> nicht auswählen.</p>

<p>Um nun eine Übersetzung des Artikels einzupflegen, müssen Sie erst die
gewünschte Zielsprache im Abschnitt <em>Multilinguale Einträge</em> eines
bestehenden Artikels auswählen und auf den Button <em>Sprache wechseln</em>
klicken.</p>

<p>Daraufhin speichert das Plugin die aktuelle Version des Artikels und tauscht im
Hintergrund die Eingabemaske des Artikels aus. In der Datenbank wird in einer
eigenständigen Tabelle (<code>serendipity_entryproperties</code>) nun der Datensatz für
die Übersetzung des Artikels angelegt.</p>

<p>Damit Sie als Redakteur wissen, was für einen Text Sie übersetzen müssen,
wird der Artikeltext des Ursprungsartikels in der Artikeloberfläche
angezeigt. Nun können Sie nach Belieben den Titel, den Eintrag und den
erweiterten Eintrag überarbeiten. Alle anderen Felder und erweiterten
Eigenschaften beziehen sich nach wie vor auf den Stammartikel - Sie
können also einen übersetzten Artikel nicht einer anderen Kategorie
zuordnen. Hierfür müssten Sie einen eigenständigen Artikel erstellen.</p>

<p>Sobald Sie nach der Übersetzung einen Eintrag speichern, schließt das Plugin
die Ergänzung des Stammdatensatzes ab. Sie können daraufhin weitere
Sprachübersetzungen ausfüllen, indem Sie weitere Sprachversionen im
Ausklappfeld anwählen.</p>

<p>Wenn Sie später einen übersetzten Artikel bearbeiten wollen, sehen Sie
wie erwähnt anfangs nur den Stammartikel. Sie müssen daher zur
Bearbeitung einer Sprachversion stets mittels des Ausklappfeldes die
gewünschte Bearbeitungssprache wählen und auf den Button <span class="mbold">Sprache
wechseln</span> klicken. Eine Übersetzung können Sie löschen, indem Sie den
Titel, den Eintrag und den erweiterten Eintrag leeren und den Artikel
speichern.</p>

<p>Beachten Sie, dass das Plugin nur dann optimal funktionieren kann,
wenn Ihre Redakteure alle dieselbe Standardsprache verwenden. Sollten
andere Redakteure andere Spracheinstellungen verwenden, kann dies die
Verkettung der <em>Standardsprache</em> mit einem Artikel durcheinander
bringen.</p>

<p>Nachdem Sie nun erfolgreich einen mehrsprachigen Artikel angelegt haben,
sollten Sie einen Blick auf die Artikeldarstellung im Frontend werfen.
Dort sehen Sie Ihren Artikel in der Standarddarstellung. In der Fußzeile
des Artikels ist eine Sprachwahl neu hinzugekommen. Dort können Sie
gezielt eine der vorhandenen Sprachen anklicken, damit der Artikel in der
gewählten Sprache dargestellt wird. Genauso können Ihre Blog-Besucher
später mehrere Sprachversionen des Artikels lesen. Bei der Umstellung auf
die Zielsprache wechselt das Frontend zudem seine Sprache, damit der
Besucher beispielsweise die Kommentarhinweise in dieser Sprache lesen
kann.</p>

<p>Da der Artikel immer über dieselben Stammdaten angesprochen wird, werden
auch Kommentare nur diesem Beitrag zugewiesen. Wenn also ein
Teil Ihrer Besucher auf Englisch kommentiert und andere auf Deutsch, so
werden alle Kommentare später in allen Sprachversionen stets gleichzeitig
erscheinen. Wenn Sie dies vermeiden wollen, müssen Sie separate
Einträge ohne Verwendung des multilingualen Plugins erstellen.</p>

<p>Ein gekoppeltes Seitenleisten-Plugin ermöglicht es Ihren Besuchern, ihre
bevorzugte Sprache auszuwählen. Die Besucher sehen daraufhin alle
Einträge in dieser gewählten Sprache, und auch die restlichen Ausgaben
Serendipitys erscheinen in dieser Sprache. Sie können in der
Konfiguration des Seitenleisten-Plugins gezielt festlegen, welche Sprachen
Sie zur Auswahl anbieten wollen.</p>

<p>Die Volltextsuche wird vom Plugin ebenfalls aufgerüstet, so dass bei der
Sprachänderung auch jeweils der Artikeltext in der gewählten Sprache
anstelle der Standardsprache berücksichtigt wird.</p>

<p>Zwei URL-Variablen bestimmen, wie die Artikelsprachen dargestellt werden.
Über die Variable <code>serendipity[lang_display]=en</code> können Sie
das Plugin anweisen, in Artikelübersichten ausschließlich Artikel in der
übermittelten Sprache (hier <code>en</code> = Englisch) darzustellen. Existiert
ein Artikel nicht in der gewünschten Übersetzung, wird der Artikel nicht
dargestellt. Die URL-Variablen</p>

<pre><code class="html">
    serendipity[lang_selected]=en<br>
    serendipity[serendipityLanguage]=en<br>
    user_language=en
</code></pre>

<p>werden synonym verwendet. Es ist daher
egal, welche dieser drei URL-Variablen Sie benutzen [*]
<span class="footnote"><i class="fa fa-info-circle"></i> Aus
Kompatibilitätsgründen zu älteren Versionen des Plugins und der
Serendipity-Kernversion ist dieselbe Variable mit drei verschiedenen
Namen vorhanden.</span><!-- footnote -->. Im Unterschied zur Variable
<code>serendipity[lang_display]</code> legen diese drei lediglich eine
Präferenz des Besuchers fest - wenn ein Artikel in der Zielsprache nicht
vorhanden ist, sehen Sie die Standardsprache. Auch legt diese letzte
Variable die Ausgabe von Sprachvariablen des Serendipity-Frontends fest.</p>

<p>Alle URL-Variablen können Sie auch für RSS-Feeds benutzen, um
beispielsweise nur englische Artikel zu erhalten:
<code>http://www.example.com/serendipity/rss.php?serendipity[lang_display]=en</code>.</p>

<p>Das Ereignis-Plugin verfügt über zwei Konfigurationsoptionen.
<span class="mbold">Behalten Sie vorhergehenden Spracheninhalt bei</span> legt fest, ob beim
Wechsel der Sprache zur Eingabe eines Artikels der Stammartikel als
Vorlage eingetragen werden soll. Bei deaktivierter Option starten Sie
eine Artikelübersetzung mit einem leeren Artikel. Einigen Autoren hilft
das, den Durchblick über noch nicht übersetzte Sprachversionen nicht zu
verlieren.</p>

<p>Mit der Option <span class="mbold">Where to place entry links</span> legen Sie fest, wo im
Frontend die Links für den Besucher angezeigt werden, mit denen er zu
Übersetzungen des Artikels wechseln kann. Die Einstellung <span class="mbold">Footer of
an entry</span> platziert diese Links im Fußbereich des Artikels. Wenn Sie die
Einstellung <span class="mbold">multilingual_footer for custom Smarty output</span>
aktivieren, können Sie in Ihrem Smarty-Template <code>entries.tpl</code>
selbst bestimmen, wo die Links erscheinen sollen. Verwenden Sie
dafür die Variable
<span class="tag-box invisible">
    <span class="inline-tag">Template-Variablen!\$entry.multilingual_footer</span>
</span>
<code class="smarty">{$entry.multilingual_footer}</code>.</p>

<p>Sie können sich also vorstellen, dass unterschiedliche Einstellungen sehr individuell,
unterschiedlich priorisiert und auch Usergebunden sind, insbesondere, wenn noch eine dritte,
zusätzliche Spracheinstellung/-anforderung zb. über das Seitenleisten Plugin im Frontend dazu
kommt. Dazu kommen noch Plugin eigene Einstellungsoptionen, die die "Haltbarkeit" der getroffenen
Sprache für den Besucher betreffen. Auch die Serendipity Konfigurationsoption: "<em>Sprache des
Browsers eines Besuchers verwenden</em>" hat entsprechende Auswirkungen. Sind Sie <b>eingeloggt</b>,
kann eine Spracheinstellung über das Frontend Auswirkungen auf ihr Backend haben, sowie umgekehrt.
Es gelten dann verschiedene Level der Sprachpriorisierungen. Hier kann es sehr schnell zu grundlegenden
<b>Missverständnissen</b> kommen, besonders dann, wenn Sie selbst versuchen ein Frontendverhalten zu
überprüfen, das dann eventuell nicht ihren Erwartungen entspricht. Es ist daher dringend zu raten,
niemals selbst mit demselben Browser solche Überprüfungen durchzuführen, sondern dafür immer <b>zwei
eigenständige Browser</b> zu verwenden!<br>
Lesen Sie die Dokumentation des multilingual Plugins sorgfältig durch.</p>

</section><!-- section.sub end -->

<section id="serendipity-event-staticpage" class="sub">
<span class="u-toc">7.2.6 - Liste der statischen Seiten, Statische Seiten:<br>serendipity_plugin_staticpage, serendipity_event_staticpage</span>

<h3 class="subsection" id="liste-der-statischen-seiten-statische-seitenserendipity_plugin_s">Liste der statischen Seiten, Statische Seiten<br>serendipity_plugin_staticpage, serendipity_event_staticpage</h3>

<p class="tagging invisible">
<span class="tag-box invisible">
    <span class="inline-tag">Plugins!Liste der statischen Seiten</span>
    <span class="inline-tag">Plugins!serendipity_event_staticpage</span>
    <span class="inline-tag">Plugins!Statische Seiten</span>
    <span class="inline-tag">Plugins!serendipity_event_staticpage</span>
    <span class="inline-tag">Statische Seiten</span>
</span>
<span class="label invisible" id="staticpage">staticpage</span>
</p>

<p class="tagging invisible">
<span class="tag-box invisible">
    <span class="inline-tag">CMS</span>
</span>
</p>

<p>Das Plugin <span class="mbold">Statische Seiten</span> ist das wohl wichtigste Plugin, wenn
Sie Serendipity als <em>Content-Management-System</em> (CMS) einsetzen wollen.</p>

<p>Die Grenzen zwischen einem Blog und einem CMS sind relativ
fließend. Letztlich ist ein Blog nur eine Unterform eines CMS, denn ein
CMS dient (per definitionem) lediglich der Erfassung und Darstellung
redaktioneller Inhalte.</p>

<p>
<span class="tag-box invisible">
    <span class="inline-tag">CMS!vs. Blog</span>
</span>
Die allgemeine Auffassung zum Unterschied zwischen Blog und CMS
betrifft die spezielle chronologische Aufteilung von Blog-Artikeln. Ein
Blog stellt üblicherweise nur zeitlich sortierte Archive dar und arbeitet
immer mit chronologisch sortierten Artikelübersichten. Ein CMS hingegen
kann Inhalte unterschiedlich gewichten, in Hierarchien einordnen und
Artikel meist separiert darstellen.</p>

<p>Glücklicherweise kann man solche isolierten Ansichten mithilfe des
Serendipity-Plugins <em>Statische Seiten</em> recht gut lösen. Sie können
eigenständige <em>Seiten</em> erstellen, die sich parallel (und unabhängig)
von Blog-Artikeln einbinden lassen.</p>

<p>
<span class="tag-box invisible">
    <span class="inline-tag">Impressum</span>
</span>
Klassischer Anwendungsfall einer statischen Seite ist das (in
Deutschland obligatorische) Impressum, eine <em>Über
mich</em>-Seite oder auch beliebige andere Informationsseiten, die Sie nicht mit dem
chronologischen Fluss der Blog-Artikel vermischen möchten.
<span class="tag-box invisible">
    <span class="inline-tag">Permalinks</span>
</span>
</p>

<p>Jede statische Seite lässt sich über eine eigene URL aufrufen, den
<em>Permalink</em>. Dieser kann beliebig formatiert werden und
muss nicht dem üblichen Blog-Artikel-Link wie
<code>http://www.example.com/serendipity/archives/1-Mein-Impressum.html</code>
entsprechen, sondern könnte auch
<code>http://www.example.com/serendipity/seiten/Impressum.html</code> lauten.</p>

<p>Ein Vorteil einer statischen Seite ist, dass Sie dort beliebigen
HTML-Code einbinden können und dabei die Seitenleisten-Plugins und das
zentrale Layout Ihres Blogs beibehalten. So müssen Sie also
Zusatzseiten nicht kompliziert über FTP-Uploads realisieren, sondern
können diese menü- und datenbankgestützt einpflegen.</p>

<p>
<span class="tag-box invisible">
    <span class="inline-tag">Performance</span>
</span>
Die statischen Seiten werden stets aus der Datenbank ausgelesen und
dargestellt, das Plugin erstellt <em>keine</em> physikalischen Dateien auf
dem Server. Sollte bei Ihrem Blog Performance eine große
Rolle spielen, kann es daher möglicherweise sinnvoller sein, zusätzliche Seiten manuell
über HTML-Dateien anzulegen, anstatt dieses Plugin zu benutzen. In
Zukunft könnte das Plugin jedoch möglicherweise erweitert werden, um
statische Seiten vollständig <em>statisch</em> auf dem Server
abzuspeichern.</p>

<p>Statische Seiten können auch über individuelle Templates eingepflegt
werden, so dass Sie sämtliche Möglichkeiten der Smarty-Programmierung für
individuelle Gestaltung anwenden können. Das Plugin wird mit mehreren Standard-Templates ausgeliefert:
</p>
    <ul>
        <li><code>backend_staticpage.tpl</code> (<span class="mbold">für die Backend Einbindung</span>),</li>
        <li><code>backend_templates/custom_template.tpl</code> (<span class="mbold">Beispiel eines erweiterten neuen default Backend Form Template</span>),</li>
        <li><code>backend_templates/default_staticpage_backend.tpl</code> (<span class="mbold">das ALTE, gewohnte Backend Form Template</span>),</li>
        <li><code>backend_templates/responsive_template.tpl</code> (<span class="mbold">das NEUE default Backend Form Template</span>),</li>
        <li><code>plugin_staticpage.tpl</code> (<span class="mbold">für einen Artikel</span>),</li>
        <li><code>plugin_staticpage_aboutpage.tpl</code> (<span class="mbold">Für eine Übersichtsseite</span>),</li>
        <li><code>staticpage-entries-listing.tpl</code> (<span class="mbold">Für eine Eintragsliste</span>, als Beispiel für eine Expertenoption),</li>
        <li><code>plugin_staticpage_includeentry.tpl</code> (<span class="mbold">Für einen inkludierten Eintrag</span>, als Beispiel für eine Expertenoption),</li>
        <li><code>plugin_staticpage_related_category.tpl</code> (<span class="mbold">Für eine statische Seite mit zugeordneter Kategorie</span>),</li>
        <li><code>plugin_staticpage_searchresults.tpl</code> (<span class="mbold">für Suchresultate</span>),</li>
        <li><code>plugin_staticpage_sidebar.tpl</code> (<span class="mbold">für die Seitenleistenausgabe</span>).</li>
    </ul>

<p>Ein gekoppeltes Seitenleisten-Plugin kümmert sich um die Darstellung der
vorhandenen statischen Seiten über ein Menü in der Seitenleiste des Frontends
und ist auch in der Lage, die von Ihnen angelegten Hierarchien darzustellen.</p>

<p>Nachdem Sie das Plugin <em>Statische Seiten</em> installiert haben, können
Sie Inhalte über den Menüpunkt <span class="mbold">Inhalt <span class="icon arrow-right">→</span> Statische Seiten</span>
einpflegen. Diese Oberfläche des Plugins stellt sozusagen einen separaten
CMS-Bereich dar. Dort können Sie neue Seiten anlegen und bearbeiten, die
Reihenfolge von Seiten verändern sowie Seitentypen (Vorlagen) verwalten.</p>

<article id="XU" class="subsub">

<header>
    <h4 class="subarticle" id="seiten-bearbeiten">Seiten bearbeiten</h4>
</header>

<p>Nachdem Sie diese Oberfläche aufrufen, sehen Sie eine Liste, bzw. ein Ausklappfeld, in dem
alle vorhandenen statischen Seiten aufgeführt werden. Um eine neue Seite
anzulegen, wählen Sie in diesem Ausklappfeld den Punkt <span class="mbold">Neuer
Eintrag</span> und klicken auf <em>Los!</em>.</p>

<p>Bestehende Seiten können Sie in dem Ausklappfeld auswählen und über einen
Klick auf <em>Los!</em> bearbeiten oder über einen Klick auf
<span class="mbold">Löschen</span> aus der Datenbank (unwiderruflich) entfernen.</p>

<p>In der Liste der statischen Seiten sieht der jeweilige Redakteur nur die
Seiten, zu denen er als Eigentümer eingetragen ist. Weiterhin sieht auch
jeder Redakteur alle Seiten von Benutzern, die einen niedrigeren
Benutzerrang haben. Administratoren sehen daher alle Seiten,
Chefredakteure sehen Seiten von normalen Redakteuren, so wie es das Rechtesystem
in Serendipity es für Artikel vorsieht. Eine weitergehende
Kontrolle der Zugriffsrechte bietet das Plugin in seiner jetzigen
Version noch nicht. Für die Zukunft dachte der einstige Entwickler des
Plugins jedoch daran, eine Rechteverwaltung mit individuellen
Zugriffsrechten für Benutzergruppen (anstelle von Benutzerrängen) einzubinden.
Bevor diese nun bedacht und dezídiert ausgearbeitet ist, wurde eine Benutzung
für Benutzergruppen unterhalb von Chefredakteuren, also einfachen Redakteuren
vorerst abgeriegelt, da es zu viele Möglichkeiten an starken Veränderungen
des Webseiten-Auftrittes erlaubt, die für die meisten Redakteure eher ein administratives
Rechteupgrade darstellen würden. So sind manche Optionen nur als Hinweis
auf eine möglicherweise später folgende erweiterte Rechteverwaltung zu verstehen.
Wenn bestimmte Benutzergruppen keinen Zugriff auf statische Seiten haben
sollen, so können Sie das Plugin global für diese Gruppe(n) deaktivieren
(siehe Seite <span class="pageref"><a href="#verboteneplugins">verboteneplugins</a></span>).</p>

<p>Die Maske zum Erstellen oder Bearbeiten eines Artikels ist identisch und
wird beim Bearbeiten lediglich mit den vorhandenen Daten vorausgefüllt.
Lassen Sie sich von der Fülle der Eingabeoptionen der Maske nicht
abschrecken! Alle Felder werden in diesem Kapitel näher besprochen, und
Sie werden feststellen, dass Sie meist nur einen kleinen Teil dieser
Felder ausfüllen müssen.</p>

<p class="desc">
<span class="item mbold">Kopfzeile</span><!-- menuitem -->
<span class="desc-info">Die <em>Kopfzeile</em> bestimmt bei einer statischen Seite die Überschrift.
Tragen Sie also hier eine eindeutige Bezeichnung der statischen Seite an,
wie die Besucher sie später sehen sollen. Sie können hier Leerzeichen und
Sonderzeichen eintragen, achten Sie jedoch darauf, dass zu lange
Kopfzeilen möglicherweise das Layout sprengen könnten.</span>
</p>

<p class="desc">
<span class="item mbold">Permalink</span><!-- menuitem -->
<span class="desc-info">Der Permalink gibt an, unter welcher URL die statische Seite aufgerufen
werden kann (weitere Details siehe Seite
<span class="pageref"><a href="#Standardpluginkonfiguration-Permalink">Standardpluginkonfiguration-Permalink</a></span>). Ein Permalink muss für
jede statische Seite eindeutig sein.</span>
</p>

<p class="desc">
<span class="item mbold">URL-Titel der Seite</span><!-- menuitem -->
<span class="desc-info">Der URL-Titel einer statischen Seite ist sehr wichtig für interne
Vorgänge. Er legt eine Alternativ-Syntax fest, die eine statische Seite
zusätzlich zum Permalink eindeutig beschreibt. Weitere Informationen zu
dieser Option finden Sie auf Seite
<span class="pageref"><a href="#Standardpluginkonfiguration-Pagetitle">Standardpluginkonfiguration-Pagetitle</a></span>.</span>
</p>

<p class="desc">
<span class="item mbold">Artikeltyp/Seitentyp</span><!-- menuitem -->
<span class="desc-info">
    <span class="box">
        Die Formatierung einer statischen Seite geschieht anhand einer Vorlage,
        die über <em>Seitentypen</em> verwaltet wird. Seitentypen können Sie
        selbständig über die Oberfläche <span class="mbold">Seitentypen bearbeiten</span> einpflegen
        (siehe Seite <span class="pageref"><a href="#staticpage-Seitentypen">staticpage-Seitentypen</a></span>).
    </span>

    <span class="box">
        Jeder statischen Seite muss ein Seitentyp zugeordnet werden. An einigen Stellen
        des Plugins wird der Begriff <em>Artikeltyp</em> verwendet, dieser ist jedoch
        gleichbedeutend mit <em>Seitentyp</em>.
    </span>
</span>
</p>

<p class="desc">
<span class="item mbold">Artikelstatus</span><!-- menuitem -->
<span class="desc-info">Statische Seiten können ähnlich wie Blog-Artikel entweder veröffentlicht
oder noch als Entwurf gespeichert werden. Nur veröffentlichte
Artikel sind für Besucher im Frontend sichtbar.</span>
</p>

<p class="desc">
<span class="item mbold">Sprache</span><!-- menuitem -->
<span class="desc-info">
    <span class="box">
        Wenn Sie Ihr Blog mithilfe des Plugins <em>Multilinguale Einträge</em> mit
        mehrsprachigen Inhalten führen, können Sie auch die statischen Seiten
        jeweils in unterschiedlichen Sprachen anlegen.
    </span>

    <span class="box">
        Multilinguale Blog-Artikel fügen die in andere Sprachen übersetzten Texte
        demselben Datenbank-Eintrag hinzu, statische Seiten jedoch müssen pro
        Übersetzung eine eigenständige Seite erhalten. Einer statischen Seite
        kann daher immer nur genau eine Sprache zugeordnet werden.
    </span>

    <span class="box">
        Sobald Sie einer statischen Seite eine Sprache zuordnen, kann der
        Besucher einer Webseite diese nur aufrufen, wenn er das Blog mit der
        übereinstimmenden Spracheinstellung besucht. Jemand, der also das Blog
        in englischer Sprache aufruft, kann eine deutsche statische Seite nicht
        lesen.
    </span>
</span>
</p>

<p class="desc">
<span class="item mbold">Inhalt</span><!-- menuitem -->
<span class="desc-info">
    <span class="box">
        Der Inhalt ist glücklicherweise ein selbsterklärender Eingabebereich:
        Hier tragen Sie den HTML-Text ein, der später auf der statischen Seite
        erscheinen soll.
    </span>

    <span class="box">
        Wenn Sie den WYSIWYG-Editor (siehe Seite <span class="pageref"><a href="#wysiwyg">wysiwyg</a></span>)
        aktiviert haben, können Sie an dieser Stelle dessen Fähigkeiten
        einsetzen. Sämtliche Buttons oberhalb dieses Eingabefelds entsprechen
        denen bei der Erstellung eines Blog-Artikels.
    </span>
</span>
</p>

<p class="desc">
<span class="item mbold">Textformatierung(en) durchführen</span><!-- menuitem -->
<span class="desc-info">
    <span class="box">
        Wenn Sie die Option aktivieren,
        wird der Inhalt einer statischen Seite an alle installierten
        Textformatierungs-Plugins weitergereicht. Diese Plugins können dann die
        eingestellten Formatierungen (beispielsweise Wandlung von Text-Smileys zu
        Grafiken oder Umwandlung von BBCode in HTML) durchführen.
    </span>

    <span class="box">
        Wenn Sie eigenen HTML-Code in den <span class="mbold">Inhalt</span> einer statischen Seite
        eingefügt haben, könnten Textformatierungs-Plugins Ihren Code
        möglicherweise ungewollt umformatieren, daher können Sie diese Funktion
        gezielt deaktivieren.
    </span>

    <span class="box">
        Weitere Hinweise zu Textformatierungs-Plugins finden Sie auf Seite
        <span class="pageref"><a href="#Textformatierungs-Plugins">Textformatierungs-Plugins</a></span>.
    </span>
</span>
</p>

<p class="desc">
<span class="item mbold">Als Artikel formatieren</span><!-- menuitem -->
<span class="desc-info">
    <span class="box">
        Standardmäßig wird eine statische Seite in das Layout Ihres Blogs
        eingefügt. Die Stellen, an denen Serendipity üblicherweise
        Datumsformatierungen und Überschriften ausgibt, werden dann mit den Daten
        der statischen Seite gefüllt.
    </span>

    <span class="box">
        Wenn Sie jedoch eigenen HTML-Code in den <span class="mbold">Inhalt</span> der statischen
        Seite eingefügt haben, kann eine solche Formatierung für Sie zu eng
        gefasst sein. Daher können Sie die Option <span class="mbold">Als Artikel formatieren</span>
        deaktivieren, damit Ihre statische Seite sozusagen in das rohe
        Layout der Seite eingefügt wird.
    </span>

    <span class="box">
        Weitere Details dieser Option finden Sie auf Seite
        <span class="pageref"><a href="#Standardpluginkonfiguration-Articleformat">Standardpluginkonfiguration-Articleformat</a></span>.
    </span>
</span>
</p>

<p class="desc">
<span class="item mbold">Seitentitel für "Als Artikel formatieren"-Ansicht</span><!-- menuitem -->
<span class="desc-info">Wenn Sie die Option <span class="mbold">Als Artikel formatieren</span> gewählt haben, muss
eine Seitenüberschrift im Inhaltsbereich ausgefüllt werden, in der
Serendipity üblicherweise das Datum eines Blog-Artikels darstellt. Da
eine statische Seite jedoch keine chronologische Relevanz hat, können Sie
hier beispielsweise die Überschrift der statischen Seite einbetten.</span>
</p>

<p class="desc">
<span class="item mbold">Name des Autors</span><!-- menuitem -->
<span class="desc-info">Der Name des Autors der statischen Seite legt zugleich fest, wer der
Eigentümer dieser Seite ist. Abhängig davon können später nur
der Eigentümer und alle höherrangigen Redakteure diese statische Seite
bearbeiten. Zudem wird der Eigentümer einer statischen Seite
standardmäßig im Layout der Seite angezeigt. Aus Gründen der Vereinfachung
ist es einem Chefredakteur auch erlaubt statische Seiten des Administrators
bzw der Administratorengruppe zu bearbeiten.</span>
</p>

<p class="desc">
<span class="tag-box invisible">
    <span class="inline-tag">Statische Seiten!Elternseiten</span>
</span><!-- tagbox -->
<span class="item mbold">Elternseite</span><!-- menuitem -->
<span class="desc-info">
    <span class="box">
        Statische Seiten können in beliebige Hierarchien eingeordnet werden. Die
        Hierarchien richten sich dabei nach bereits angelegten statischen Seiten.
    </span>

    <span class="box">
        Standardmäßig wird jede statische Seite als <span class="mbold">Ist Elternseite</span>
        eingetragen, also auf der ersten Ebene der Seiten. Über das Ausklappfeld
        <span class="mbold">Elternseite</span> können Sie aber auch jede bereits angelegte statische
        Seite auswählen, um festzulegen, dass die aktuelle statische Seite dieser
        Seite untergeordnet ist.
    </span>

    <span class="box">
        Die Hierarchie der statischen Seiten kann später von Besuchern über das
        Seitenleisten-Plugin wie auch über die Quernavigation der statischen
        Seiten eingesehen werden.
    </span>
</span>
</p>

<p class="desc">
<span class="tag-box invisible">
    <span class="inline-tag">Statische Seiten!Blog-Kategorien</span>
</span><!-- tagbox -->
<span class="item mbold">Zugeordnete Kategorie</span><!-- menuitem -->
<span class="desc-info">
    <span class="box">
        Grundsätzlich besteht zwischen statischen Seiten und Blog-Kategorien
        keine Zuordnung. Das Serendipity-System kann daher statische Seiten nicht
        einfach innerhalb einer Kategorie-Übersicht ausgeben.
    </span>

    <span class="box">
        Jedoch bietet das Plugin eine Möglichkeit, um einer statischen Seite eine
        Kategorie zuzuweisen. Ruft der Besucher später eine so zugewiesene
        statische Seite auf, kann er direkt zu der hinterlegten Kategorie
        wechseln. Auch ist es möglich, innerhalb einer solchen statischen Seite
        die Einträge der hinterlegten Kategorie anzuzeigen.
        Umgekehrt besteht die Möglichkeit, dass der Besucher bei der Ansicht
        einer Kategorie-Übersichtsseite auf die zugeordnete statische Seite springt.
    </span>

    <span class="box">
        Dies funktioniert nur, wenn Sie den <span class="mbold">Artikeltyp</span> der jeweiligen
        statischen Seite auf den Eintrag <span class="mbold">Staticpage with related category</span>
        gesetzt haben. Nur diese Seitentypen besitzen ein Template, bei dem die
        Kategoriezuordnung berücksichtigt wird, alle anderen Seitentypen
        ignorieren dies. Sie können auch eigene Seitentypen anlegen, die die
        Kategoriezuordnung individuell regeln, dies ist auf Seite
        <span class="pageref"><a href="#staticpage-Kategorie">staticpage-Kategorie</a></span> näher beschrieben.
    </span>

    <span class="box">Sie können nur eine statische Seite pro Kategorie zuordnen.</span>
</span>
</p>

<p class="desc">
<span class="tag-box invisible">
    <span class="inline-tag">Statische Seiten!Kinderseiten</span>
</span><!-- tagbox -->
<span class="item mbold">Kinderseiten anzeigen</span><!-- menuitem -->
<span class="desc-info">
    <span class="box">
        Wenn Sie eine statische Seite anlegen oder bearbeiten, der andere
        statische Seiten über das Ausklappfeld <span class="mbold">Elternseite</span> zugeordnet
        sind, können Sie bei der Ansicht der Elternseite eine
        Navigation einbinden, die sämtliche zugeordneten Kinderseiten darstellt.
    </span>

    <span class="box">
        Stellen Sie sich vor, Sie haben eine statische Seite namens <em>Meine
        Familie</em> angelegt. Bei dieser Seite stellen Sie die <span class="mbold">Elternseite</span>
        auf <span class="mbold">Ist Elternseite</span> und <span class="mbold">Kinderseiten anzeigen</span> auf den Wert
        <span class="mbold">Ja</span>. Zusätzlich legen Sie drei weitere statische Seiten namens
        <em>Wolfram</em>, <em>Sabine</em> und <em>Horst</em> an. Bei diesen drei Seiten
        legen Sie als <span class="mbold">Elternseite</span> jeweils die statische Seite <span class="mbold">Meine
        Familie</span> fest. Wenn Sie nun die statische Seite <em>Meine Familie</em> ansehen,
        werden Sie Navigationsmöglichkeiten zu den Unterseiten <em>Wolfram, Horst</em> und
        <em>Sabine</em> sehen.
    </span>
</span>
</p>

<p class="desc">
<span class="tag-box invisible">
    <span class="inline-tag">Statische Seiten!Einleitung</span>
</span><!-- tagbox -->
<span class="item mbold">Einleitung</span><!-- menuitem -->
<span class="desc-info">
    <span class="box">
        Die <span class="mbold">Einleitung</span> gilt für statische Elternseiten. Beim obigen
        Beispiel der Familienseite könnten Sie in der statischen Seite
        <em>Meine Familie</em> einen beschreibenden Text einfügen.
    </span>

    <span class="box">
        Dieser Text wird daraufhin in einer Übersichtsseite vor der Auflistung
        der vorhandenen Kinderseiten angezeigt, was es Ihnen erspart,
        gleichlautende Texte in alle Unterseiten einzubinden.
    </span>

    <span class="box">
        Standardmäßig wird die Einleitung oberhalb des <span class="mbold">Inhalts</span> einer
        statischen Seite eingebunden. Dies können Sie jedoch über die
        Smarty-Templates auch beliebig verändern.
    </span>
</span>
</p>

<p class="desc">
<span class="tag-box invisible">
    <span class="inline-tag">Statische Seiten!Passwortschutz</span>
</span><!-- tagbox -->
<span class="item mbold">Passwort</span><!-- menuitem -->
<span class="desc-info">Statische Seiten können mit einem Passwortschutz versehen werden. Ein
Besucher kann den Inhalt einer statischen Seite dann erst einsehen, wenn
er in einem Formular vorher das korrekte Passwort hinterlegt hat.</span>
</p>

<p class="desc">
<span class="tag-box invisible">
    <span class="inline-tag">Statische Seiten!Startseite</span>
    <span class="inline-tag">Startseiten</span>
    <span class="inline-tag">Frontend!Startseite</span>
</span><!-- tagbox -->
<span class="item mbold">Diese Seite als Startseite definieren</span><!-- menuitem -->
<span class="desc-info">
    <span class="box">
        Eine statische Seite kann die Blog-Startseite (die Artikelübersicht der
        letzten Einträge aller Kategorien) ersetzen. So können Sie dem Besucher
        auf der ersten Seite des Blogs einen Hinweistext oder Disclaimer
        darstellen.
        Die ursprüngliche Startseite des Blogs können Sie danach via
        <code>http://www.example.com/serendipity/index.php?/frontpage</code> aufrufen.
    </span>

    <span class="box">
        Damit diese Funktion korrekt arbeiten kann, müssen Sie sicherstellen,
        dass Sie (pro Sprache) nur eine einzige statische Startseite angelegt
        haben.
        <span class="tag-box invisible">
            <span class="inline-tag">Plugins!Reihenfolge</span>
        </span>
        Zudem können andere Plugins, die eigene Inhalte
        darstellen, mit der statischen Startseite kollidieren. Dazu zählt
        beispielsweise das Kontaktformular oder das Gästebuch. Damit eine
        statische Startseite korrekt angezeigt werden kann, muss sie in der
        Reihenfolge der Ereignis-Plugins (siehe Seite <span class="pageref"><a href="#Plugins verwalten">Plugins verwalten</a></span>)
        <em>vor</em> den kollidierenden Ereignis-Plugins erscheinen. Generell ist
        es empfehlenswert, das Plugin <em>Statische Seiten</em> als eines der
        ersten Ereignis-Plugins einzusortieren.
    </span>
</span>
</p>

<p class="desc">
<span class="tag-box invisible">
    <span class="inline-tag">Statische Seiten!Navigation</span>
</span><!-- tagbox -->
<span class="item mbold">Navigation anzeigen</span><!-- menuitem -->
<span class="desc-info">Die <span class="mbold">Navigation</span> einer statischen Seite dient dazu, von einer zur
nächsten statischen Seite (oder Unterseite) zu wechseln. In
manchen statischen Seiten ist so eine Navigation nicht erwünscht, daher
können Sie diese pro statischer Seite gezielt deaktivieren.</span>
</p>

<p class="desc">
<span class="item mbold">In der Navigation der Seitenleiste einbinden</span><!-- menuitem -->
<span class="desc-info">
    <span class="box">
        Mittels des gekoppelten Seitenleisten-Plugins <em>Liste der statischen
        Seiten</em> können Sie in der Seitenleiste eine Liste aller verfügbaren
        statischen Seiten einbinden. Dort erscheinen jedoch nur diejenigen
        statischen Seiten, bei denen Sie die Option <span class="mbold">In der Navigation der
        Seitenleiste einbinden</span> aktiviert haben.
    </span>

    <span class="box">
        Versteckte oder unwichtige statische Seiten können Sie aus dieser Liste
        daher durch Deaktivieren der Option ausschließen.
    </span>
</span>
</p>

</article>

<article id="XU" class="subsub">

<header>
    <h4 class="subarticle" id="seitenreihenfolge">Seitenreihenfolge</h4>
</header>

<p class="tagging invisible">
<span class="tag-box invisible">
    <span class="inline-tag">Statische Seiten!Reihenfolge</span>
</span>
<span class="label invisible" id="staticpage-Seitenreihenfolge">staticpage-Seitenreihenfolge</span>
</p>

<p>Die Seitenreihenfolge der statischen Seiten können Sie über den Menüpunkt
<span class="mbold">Inhalt <span class="icon arrow-right">→</span> Statische Seiten <span class="icon arrow-right">→</span> Seitenreihenfolge</span> verwalten.
Diese Reihenfolge ist für die Erstellung der Navigation und die Ausgabe
des Seitenleisten-Plugins von Interesse.</p>

<p>In der Oberfläche sehen Sie alle statischen Seiten untereinander und
hierarchisch eingerückt aufgelistet. Über einen Klick auf den Pfeil nach
oben sortieren Sie eine Seite weiter oben ein, der Pfeil nach unten
schiebt eine Seite einen Schritt zurück.</p>

<p>Sie können die Reihenfolge nur innerhalb der jeweiligen Hierarchieebene
verändern, ein Verschieben eines Untermenüpunkts in eine andere
Hauptebene ist nicht möglich. Dies können Sie erreichen, indem Sie die
jeweilige zu verschiebende statische Seite bearbeiten und eine andere
<span class="mbold">Elternseite</span> auswählen.</p>

</article>

<article id="XU" class="subsub">

<header>
    <h4 class="subarticle" id="seitentypen-bearbeiten">Seitentypen bearbeiten</h4>
</header>

<p class="tagging invisible">
<span class="label invisible" id="staticpage-Seitentypen">staticpage-Seitentypen</span>
<span class="tag-box invisible">
    <span class="inline-tag">Statische Seiten!Seitentypen</span>
</span>
</p>

<p>Seitentypen (oder auch <em>Artikeltypen</em>) entsprechen einer Vorlage für
eine Gruppe von statischen Seiten.</p>

<p>
<span class="tag-box invisible">
    <span class="inline-tag">Statische Seiten!Overview</span>
    <span class="inline-tag">Statische Seiten!Article</span>
</span>
Standardmäßig gibt es zwei Arten von statischen Seiten: eine
Übersichtsseite (<span class="mbold">Overview</span>) und eine Artikelseite (<span class="mbold">Article</span>).</p>

<p>Übersichtsseiten können gut als Elternseiten einer statischen Seite
eingesetzt werden, da hier gezielt auf die Navigation der Unterseiten
eingegangen wird.
Der Seitentyp <span class="mbold">Article</span> hingegen konzentriert sich auf die
Darstellung von Einzelseiten.</p>

<p>
<span class="tag-box invisible">
    <span class="inline-tag">Statische Seiten!Templates</span>
</span>
Jedem Seitentyp können Sie eine eigene Smarty-Template-Datei zuweisen,
über die Sie die Formatierung gezielt beeinflussen können. Beispielsweise
könnten Sie einen Seitentyp erstellen, der den Inhalt grafisch wie
einen Zeitungsartikel formatiert, ein anderer Seitentyp könnte
Inhalte wie auf einer Postkarte darstellen.</p>

<p>Einen Sonderfall stellt der Seitentyp <span class="mbold">Staticpage with related
category</span> dar. In dieser Vorlage bindet das Plugin Inhalte einer
zugeordneten Kategorie ein, um eine Verbindung von Blog-Artikeln und
statischen Seiten zu ermöglichen.</p>

<p>Die einzelnen Seitentypen können Sie über ein Ausklappfeld bearbeiten
oder erstellen, analog zu dem Vorgang bei statischen Seiten. Ein
Seitentyp hat lediglich folgende Eingabefelder:</p>

<p class="desc">
<span class="item mbold">Beschreibung</span><!-- menuitem -->
<span class="desc-info">Die Beschreibung eines Seitentyps gibt an, wie dieser in dem Ausklappfeld
<span class="mbold">Artikeltyp</span> einer statischen Seite eingebunden wird. Sie können
ihre Artikelvorlagen so individuell benennen, Sonder- und Leerzeichen
sind erlaubt.</span>
</p>

<p class="desc">
<span class="item mbold">Templatename</span><!-- menuitem -->
<span class="desc-info">
    <span class="box">
        Der <span class="mbold">Templatename</span> gibt den Dateinamen des Smarty-Templates an, das für
        den jeweiligen Seitentypen gültig sein soll.
    </span>

    <span class="tag-box invisible">
        <span class="inline-tag">Template-Dateien!plugin_staticpage.tpl</span>
        <span class="inline-tag">Template-Dateien!plugin_staticpage_aboutpage.tpl</span>
        <span class="inline-tag">Template-Dateien!plugin_staticpagerelated_category.tpl</span>
    </span>
    <span class="box">
        Das Plugin wird mit drei Standard-Templates ausgeliefert:
        <span class="list">
            <span class="li-item siLi"><code>plugin_staticpage.tpl</code> (<span class="mbold">Article</span>),</span>
            <span class="li-item siLi"><code>plugin_staticpage_aboutpage.tpl</code> (<span class="mbold">Overview</span>),</span>
            <span class="li-item siLi"><code>plugin_staticpage_related_category.tpl</code> (<span class="mbold">Staticpage with related category</span>),</span>
        </span>
    </span>

    <span class="box">
        Sie können die Dateien entweder im Plugin-Verzeichnis
        (<code>plugins/serendipity_event_staticpage</code>) bearbeiten oder auch in
        Ihr eigenes Template-Verzeichnis wie <code>templates/mytheme/</code> kopieren,
        um sie dort anzupassen. Neue Dateien können Sie ebenfalls in beiden
        Verzeichnissen anlegen.
        Im Eingabefeld <span class="mbold">Templatename</span> tragen Sie keine Verzeichnisnamen,
        sondern lediglich den Dateinamen der Datei ein (mit Endung <code>.tpl</code>).
    </span>
</span>
</p>

<p class="desc">
<span class="label invisible" id="staticpage-bildpfad">staticpage-bildpfad</span>
<span class="item mbold">Bildpfad</span><!-- menuitem -->
<span class="desc-info">
    <span class="box">
        Das Standard-Template <span class="mbold">plugin_staticpage_aboutpage.tpl</span> ermöglicht
        es, in der Navigation der Unterseiten für eine Elternseite Bilder
        einzubinden. Die Bilder der Unterseiten richten sich dabei nach Ihrer
        Eingabe im Feld <span class="mbold">Bildpfad</span> des zugehörigen Seitentyps. Dieses Vorgehen
        ähnelt dem bei Kategoriebildern, die Sie in Blog-Artikeln einbinden können.
    </span>

    <span class="box">
        Für das Beispiel des Familienstammbaums <em>Meine Familie</em> könnten Sie
        die Seitentypen <code>Eltern</code> und <code>Geschwister</code> anlegen. Für beide
        Seitentypen können Sie denselben Template-Namen
        <span class="mbold">plugin_staticpage.tpl</span> angeben. Für den Seitentyp <span class="mbold">Eltern</span>
        vergeben Sie ein Bild wie
        <code>http://www.example.com/serendipity/uploads/Eltern.gif</code>, für
        <span class="mbold">Geschwister</span> zB.
        <code>http://www.example.com/serendipity/uploads/Geschwister.gif</code>.
    </span>

    <span class="box">
        Nun müssen Sie die Seite <em>Wolfram</em> bearbeiten und das Ausklappfeld
        <span class="mbold">Artikeltyp</span> auf <span class="mbold">Geschwister</span> stellen, die Seiten
        <em>Horst</em> und <em>Sabine</em> auf den <span class="mbold">Artikeltyp</span> <span class="mbold">Eltern</span>.
    </span>

    <span class="box">
        Zuletzt stellen Sie den <span class="mbold">Artikeltyp</span> der Stammseite <span class="mbold">Meine
        Familie</span> auf <span class="mbold">Overview</span>, damit es die Template-Datei
        <code>plugin_staticpage_aboutpage.tpl</code> auslesen kann. Diese
        Template-Datei wertet die im Seitentyp hinterlegten Bilder aus und wird
        in der Navigation nun das Bild <span class="mbold">Eltern.gif</span> sowohl für den Link zu
        <em>Horst</em> als auch zu <em>Sabine</em> anzeigen. Für die Unterseite
        <em>Wolfram</em> wird die Grafik <span class="mbold">Geschwister.gif</span> eingebunden.
    </span>

    <span class="box">
        Dieses Vorgehen ist zwar mit mehreren Schritten und Eingabefeldern
        verbunden, ermöglicht Ihnen aber, beliebige Layoutvorhaben umzusetzen.
    </span>

    <span class="box">
        Da das Eingabefeld <em>Bildpfad</em> ein freies Textfeld darstellt, könnten
        Sie theoretisch auch andere Eigenschaften als eine Bild-URL einbinden.
        Wie Sie diese Variable einsetzen, obliegt einzig der Gestaltung Ihres
        Templates und dem Einsatz der Smarty-Variable
        <code>{$staticpage_extchildpages.X.image</code>.
    </span>
</span>
</p>

<p>
<span class="tag-box invisible">
    <span class="inline-tag">Fehler!doppelte Seitentypen für statische Seiten</span>
</span>
Es kann vorkommen, wenn Sie das Plugin <span class="mbold">Statische Seiten</span> mehr als
einmal installiert haben, dass Sie einige Seitentypen mehrfach in der
Liste sehen. Überflüssige, doppelte Seitentypen können Sie
entweder manuell löschen oder einfach beibehalten, da dadurch keine
Probleme entstehen.</p>

<p>Diese Doppelung kann entstehen, weil bei jeder Einrichtung des
Ereignis-Plugins die Installationsroutine die Standard-Seitentypen
erneut in der Datenbank einträgt.</p>

</article>

<article id="XU" class="subsub">

<header>
    <h4 class="subarticle" id="andere-plugins">Andere Plugins</h4>
</header>

<p>Das gekoppelte Seitenleisten Plugin <em>Liste der Statischen Seiten</em>
kann abseits von den angelegten statischen Seiten auch die Ausgabeseiten
einiger Plugins mit einbinden.
Zu diesen Plugins zählen der <em>Downloadmanager</em>, das <em>Gästebuch</em>,
<em>Kontaktformular</em>, <em>Forum</em>, die <em>FAQs</em>, sowie die
<em>Bildergalerie</em>.</p>

<p>Links zu derartigen Plugins müssten Sie andernfalls immer manuell über
HTML-Klötze oder Template-Änderungen einbinden.</p>

<p>Über den Menüpunkt <span class="mbold">Einträge <span class="icon arrow-right">→</span> Statische Seiten <span class="icon arrow-right">→</span> Andere
Plugins</span> können Sie die Liste der unterstützten Plugins einsehen. Alle
Plugins, die unterstützt und installiert sind, werden als
<span class="mbold">Plugin ist installiert</span> aufgeführt. Plugins, die Sie
heruntergeladen, aber noch nicht über die Plugin-Verwaltung aktiviert
haben, sind mit <span class="mbold">Plugin ist verfügbar, aber nicht installiert</span>
ausgezeichnet.</p>

<p>Alle unterstützen und installierten Plugins werden auf der Seite mit einer
vorangestellten Ankreuzbox dargestellt. Kreuzen Sie die gewünschten
Plugins zur Einbindung in der Seitenleiste an und klicken Sie auf
<span class="mbold">Los!</span>, damit das Seitenleisten-Plugin sich Ihren Wünschen anpassen
kann.</p>

</article>

<article id="XU" class="subsub">

<header>
    <h4 class="subarticle" id="konfigurationsoptionen-1">Konfigurationsoptionen</h4>
</header>

<p class="tagging invisible">
<span class="tag-box invisible">
    <span class="inline-tag">Statische Seiten!Konfigurationsoptionen des Plugins</span>
</span>
</p>

<p>In dem Ereignis-Plugin können Sie über die Konfigurationsoptionen
festlegen, wie einige der Felder bei der Erstellung einer neuen
statischen Seite belegt sind. Folgende Felder können dabei in ihrer
Voreinstellung beim Anlegen neuer Seiten verändert werden:</p>

<ul class="realList">
    <li>Textformatierung(en) durchführen</li>
    <li>Als Artikel formatieren</li>
    <li>Kinderseiten anzeigen</li>
    <li>Navigation anzeigen</li>
    <li>In der Navigation der Seitenleiste einbinden</li>
</ul>

<p>Zusätzlich gibt es zwei weitere Konfigurationsoptionen:</p>

<p class="desc">
<span class="item mbold">Überschriften oder Vor/Zurück-Navigation anzeigen</span><!-- menuitem -->
<span class="desc-info">Die Standard-Templates der statischen Seiten können eine Navigation
innerhalb der angelegten Seiten einbinden, so dass Sie zwischen
mehreren statischen Seiten vor- und zurückblättern können. Dabei wird jeweils
ein Link zur vorigen und zur nächsten Seite eingebunden. Der Titel dieses
Links richtet sich nach der Einstellung der Option <span class="mbold">Überschriften
oder Vor/Zurück-Navigation anzeigen</span>. Wenn Sie hier die Option
<span class="mbold">Text: Vor/Zurück</span> auswählen, erscheint der feste Text <em>Vor</em>
für die nächste Seite und <em>Zurück</em> für die vorhergehende Seite.
Alternativ können Sie die Option <span class="mbold">Überschrift</span> auswählen, dann
werden die Überschriften der vorhergehenden und folgenden statischen Seiten
dargestellt und bieten dem Besucher so möglicherweise eine bessere
Übersicht.</span>
</p>

<p class="desc">
<span class="item mbold">Suche</span><!-- menuitem -->
<span class="desc-info">Die Volltextsuche des Blogs über das Plugin <span class="mbold">Suche</span> durchsucht
per Default lediglich Blog-Artikel. Wenn Sie auch statische Seiten
durchsuchen möchten, müssen Sie diese Option aktivieren. Details zur Suche
finden Sie auf Seite <span class="pageref"><a href="#staticpage-suche">staticpage-suche</a></span>.</span>
</p>

<p>Das gekoppelte Seitenleisten-Plugin verfügt über diese
Konfigurationsoptionen:</p>

<p class="desc">
<span class="item mbold">Seitenanzahl</span><!-- menuitem -->
<span class="desc-info">Standardmäßig stellt das Seitenleisten-Plugin alle vorhandenen statischen
Seiten dar. Wenn Sie die Anzahl auf eine gewisse Menge beschränken
wollen, können Sie dies über die Option <span class="mbold">Seitenanzahl</span> tun. In
den meisten Fällen ist es jedoch sinnvoller, eher gezielt statische
Seiten von der Ausgabe auszunehmen, indem Sie bei einer statischen Seite
die Option <span class="mbold">In der Navigation der Seitenleiste einbinden</span>
deaktivieren.</span>
</p>

<p class="desc">
<span class="item mbold">Startseitenlink anzeigen</span><!-- menuitem -->
<span class="desc-info">Wenn Sie die Option <span class="mbold">Startseitenlink anzeigen</span> aktivieren, bindet
das Plugin auch einen Link zur Blog-Startseite ein. So kann ein Besucher
leicht zur Startseite zurückfinden.</span>
</p>

<p class="desc">
<span class="item mbold">Nur Eltern-Seiten darstellen</span><!-- menuitem -->
<span class="desc-info">Bei aktivierter Option <span class="mbold">Nur Eltern-Seiten darstellen</span> werden in der
Seitenleiste nur die statischen Seiten angezeigt, die als <span class="mbold">Ist
Elternseite</span> festgelegt sind. Etwaige Unterseiten werden dann nicht
dargestellt.</span>
</p>

<p class="desc">
<span class="item mbold">Icons bzw. Klartext</span><!-- menuitem -->
<span class="desc-info">
    <span class="box">
        Wenn Sie die Option <span class="mbold">Baumstruktur</span> aktivieren, stellt das Plugin die
        Hierarchie der statischen Seite mittels eines dynamischen JavaScripts
        ein. Dies kann, ähnlich wie der Windows Explorer, aufklappbare
        Verzeichnisstrukturen einblenden.
    </span>

    <span class="box">
        Die Option <span class="mbold">Klartext</span> gibt gewöhnliche HTML-Links aus. Nur diese
        können von Suchrobotern problemlos interpretiert werden, sehen aber nicht
        so hübsch aus wie die <span class="mbold">Baumstruktur</span> und belegen möglicherweise mehr
        Sichtfläche.
    </span>
</span>
</p>

<p class="desc">
<span class="item mbold">Grafiken für Baumstruktur aktivieren</span><!-- menuitem -->
<span class="desc-info">Bei aktivierter <span class="mbold">Baumstruktur</span> können Sie die graphischen Symbole zu
jeder statischen Seite optional deaktivieren.</span>
</p>

<p class="desc">
<span class="tag-box invisible">
    <span class="inline-tag">Fehler!statische Seiten ohne Grafiken</span>
</span><!-- tagbox -->
<span class="item mbold">Verzeichnis für Bilder dieses Plugins</span><!-- menuitem -->
<span class="desc-info">Die graphischen Symbole des JavaScripts zur Darstellung einer
<span class="mbold">Baumstruktur</span> bezieht das Plugin über eine URL Ihres Blogs. Sie
müssen Siese Option nur verändern, wenn Sie Ihr Plugin-Unterverzeichnis
umbenannt oder unterschiedlich verschachtelt haben und Ihnen daher sonst
keine Grafiken angezeigt werden könnten.</span>
</p>

</article>

<article id="XU" class="subsub">

<header>
    <h4 class="subarticle" id="template-integration">Template-Integration</h4>
</header>

<p class="tagging invisible">
<span class="tag-box invisible">
    <span class="inline-tag">Statische Seiten!Templates</span>
    <span class="inline-tag">Statische Seiten!Templatevariablen@Template-Variablen</span>
    <span class="inline-tag">Template-Variablen!\$statische Seiten@statische Seiten</span>
</span>
</p>

<p>Jeder Seitentyp einer statischen Seite kann einer eigenen
Smarty-Template-Datei zugeordnet werden. Standardmäßig stehen bereits die Dateien
<code>plugin_staticpage.tpl</code> und <code>plugin_staticpage_aboutpage.tpl</code>,
sowie<code>plugin_staticpage_includeentry.tpl</code>,<code>plugin_staticpage_related_category.tpl</code>,
<code>staticpage-entries-listing.tpl</code>, <code>plugin_staticpage_searchresults.tpl</code>
und für die Seitenleiste <code>plugin_staticpage_sidebar.tpl</code>
zur Verfügung.</p>

<p>Innerhalb dieser Datei kann eine Vielzahl von Smarty-Variablen und
-Funktionen eingesetzt werden:</p>

<p class="desc fct-desc">
<span class="tag-box invisible">
    <span class="inline-tag">Template-Funktionen!\$getCategoryLinkByID@getCategoryLinkByID</span>
</span>
<span class="item fct-item">Funktion <code class="item smarty function">{getCategoryLinkByID ...}</code></span>
<span class="desc-info">
    <span class="box">
        Die Smarty-Funktion <code class="smarty">{getCategoryLinkByID ...}</code> wird innerhalb der
        Plugin-Datei <code>smarty.inc.php</code> definiert und kann in jeder beliebigen
        Smarty-Template-Datei (auch in den zentralen Serendipity-Dateien!) dazu
        benutzt werden, die URL (den <em>Permalink</em>) zu einer gewissen
        Blog-Kategorie zu erhalten.
    </span>

    <span class="box">
        Als Parameter der Smarty-Funktion kann <code>cid=ID</code> der
        Kategorie übergeben werden. Als Rückgabewert liefert die Funktion eine
        URL.
    </span>

    <span class="box">Wenn Sie in einer Template-Datei einen Code wie:</span>

    <span class="box">
        <span id="pre-style"><code class="smarty">
            &lt;a href="{getCategoryLinkByID cid=4}"&gt;Link&lt;/a&gt;
        </code></span>
    </span>

    <span class="box">eintragen, erhalten Sie eine HTML-Ausgabe wie:</span>

    <span class="box">
        <span id="pre-style"><code class="html">
            &lt;a href="/serendipity/categories/4-Kategoriename.html"&gt;Link&lt;/a&gt;
        </code></span>
    </span>

    <span class="box">
        Diese Funktion ist vor allem dann hilfreich, wenn Sie die Kategoriezuordnung für
        statische Seiten (siehe Seite <span class="pageref"><a href="#staticpage-Kategorie">staticpage-Kategorie</a></span>) verwenden möchten.
    </span>
</span>
</p>

<p class="desc fct-desc">
<span class="tag-box invisible">
    <span class="inline-tag">Template-Funktionen!\$staticpage@staticpage_display</span>
</span><!-- tagbox -->
<span class="item fct-item">Funktion <code class="item smarty function">{staticpage_display ...}</code></span>
<span class="desc-info">
    <span class="box">
        Mit der Funktion <code class="smarty">{staticpage_display}</code> können Sie innerhalb einer
        beliebigen Smarty-Template-Datei die Ausgabe einer statischen Seite
        auslösen.
    </span>

    <span class="box">
        Hilfreich ist dies, wenn Sie innerhalb einer Template-Datei einer statischen Seite
        eine weitere statische Seite einbetten wollen, oder wenn Sie in der Blog-Übersicht
        den Inhalt einer statischen Seite anzeigen wollen. Wenn Sie das Plugin
        <em>Textformatierung: Smarty</em> (siehe Seite <span class="pageref"><a href="#smartymarkup">smartymarkup</a></span>) verwenden,
        können Sie statische Seiten auch einfach in Blog-Artikeln einbinden.
    </span>

    <span class="box">
        Stellen Sie sich nun folgendes Szenario vor: Sie legen zwei statische
        Seiten an. Eine hat den Titel <code>Impressum</code>, die andere den Titel
        <code>Über mich</code>. Die statische Seite <code>Impressum</code> soll den Seitentyp
        <code>Article</code> benutzen, um mittels der Template-Datei
        <code>plugin_staticpage.tpl</code> ausgegeben zu werden.
    </span>

    <span class="box">
        Als fauler Blogger möchten Sie nun gerne, dass der Inhalt der Seite
        <code>Impressum</code> auf der Seite <code>Über mich</code> erscheint, denn Sie
        wollen den Text ja nicht doppelt ändern müssen, wenn Sie einmal umziehen.
    </span>

    <span class="box">
        Um dies zu erreichen, müssen Sie einen neuen Seitentyp anlegen. Nennen
        Sie diesen zB. <code>Kombiseite</code>. Als Vorlage für das Template übernehmen
        Sie die Datei <code>plugin_staticpage.tpl</code> und kopieren sie als neue
        Datei <code>kombiseite.tpl</code> entweder in Ihr Plugin-Verzeichnis oder Ihr
        eigenes Template-Verzeichnis. Den Namen der kopierten Template-Datei tragen
        Sie für den Seitentyp ein und weisen nun die Seite <code>Über mich</code> diesem Seitentyp zu.
    </span>

    <span class="box">
        Nun erfolgt der eigentliche Schritt, mit dem Sie den Inhalt der Seite
        <code>Impressum</code> übernehmen können. Sie öffnen die Datei
        <code>kombiseite.tpl</code> und suchen nach der Stelle, wo der Text einer
        statischen Seite mit der Variable <code class="smarty">{$staticpage_content}</code>
        ausgegeben wird. Da Sie das Impressum danach ausgeben wollen, ändern Sie
        die Zeile
    </span>

    <span class="box">
        <span id="pre-style"><code class="smarty">
            &lt;div class="staticpage_content"&gt;{$staticpage_content}&lt;/div&gt;
        </code></span>
    </span>

    <span class="box">um in:</span>

    <span class="box">
        <span id="pre-style"><code class="smarty">
            &lt;div class="staticpage_content"&gt;<br>
            &nbsp; {$staticpage_content}<br>
            &nbsp; {staticpage_display pagetitle="Impressum"<br>
            &nbsp;&nbsp;&nbsp; template="plugin_staticpage.tpl"}<br>
            &lt;/div&gt;
        </code></span>
    </span>

    <span class="box">
        Nun wird der Inhalt der statischen Seite mit dem Seitentitel
        <code>Impressum</code> vollständig ausgegeben. Als Template-Datei wird die Datei
        <code>plugin_staticpage.tpl</code> [*]
        <span class="footnote"><i class="fa fa-info-circle"></i> Hätten Sie als Template
        <code>kombiseite.tpl</code> eingetragen, würde dies zu einer Endlosschleife
        führen!</span><!-- footnote --> verwendet.
    </span>

    <span class="box">
        Wenn Sie anstelle eines vollständigen Inhalts der statischen Seite nur
        Teile des Textes (beispielsweise nur <code class="smarty">{$staticpage_content}</code>)
        ausgeben wollen, können Sie dafür ein eigenes Template anlegen, das nur
        diese Smarty-Variable verwendet. Diese Template-Datei können Sie dann der
        Smarty-Funktion <code class="smarty">{staticpage_display}</code> übergeben.
    </span>

    <span class="box">Die Funktion kann mit mehreren Parametern aufgerufen werden:</span>

    <span class="box">
        <span id="pre-style"><code class="smarty">
            {staticpage_display<br>
            &nbsp; pagevar='...'<br>
            &nbsp; template='...'<br>
            &nbsp; id='...'<br>
            &nbsp; permalink='...'<br>
            &nbsp; pagetitle='...'<br>
            &nbsp; authorid='...'<br>
            &nbsp; query='...'}
        </code></span>
    </span>

    <span class="box">
        <code class="sub-item">pagevar</code> (optional)
        <span class="sub-box">Mit dieser Option legen Sie ein Variablen-Präfix fest. Standardmäßig
        verwendet jede Template-Datei der statischen Seiten Variablen mit
        einem Vorzeichen wie <code class="smarty">{$staticpage_pagetitle}</code>. Wenn
        Sie ein anderes Präfix verwenden wollen, um Kollisionen in den
        Variablennamen zu vermeiden, können Sie dieses mit dem Parameter
        <code>pagevar</code> festlegen.
    </span>
    </span>

    <span class="box">
        <code class="sub-item">template</code> (optional)
        <span class="sub-box">Standardmäßig benutzt die Smarty-Funktion zur Darstellung der statischen
        Seite das Template, das für die jeweilige Seite im <span class="mbold">Artikeltyp</span>
        eingetragen wurde.</span>
    </span>

    <span class="box">
        <span class="sub-box">Wenn Sie eine individuelle Template-Datei verwenden wollen, können Sie
        den Dateinamen über diesen Parameter angeben. Die Template-Datei können
        Sie entweder im Plugin-Verzeichnis
        <code>plugins/serendipity_event_staticpage</code> oder im jeweiligen eigenen
        Template-Verzeichnis speichern.</span>
    </span>

    <span class="box">
        <code class="sub-item">id, permalink, pagetitle</code>
        <span class="sub-box">Die Smarty-Funktion <code class="smarty">{staticpage_display}</code> kann nur eine
        eindeutige statische Seite darstellen. Daher müssen Sie als Parameter
        unbedingt entweder <code>id</code>, <code>permalink</code> oder <code>pagetitle</code>
        angeben.</span>
    </span>

    <span class="box">
        <span class="sub-box">Am sichersten ist die Übermittlung der ID einer statischen Seite, jedoch
        ist diese ID auch nur anhand der Datenbank herauszufinden. Leichter ist
        es, eine statische Seite über den konfigurierten <span class="mbold">Permalink</span> oder
        den <span class="mbold">URL-Titel</span> der Seite aufzurufen, da dieser auch eindeutig für
        jede statische Seite sein muss.</span>
    </span>

    <span class="box">
        <code class="sub-item">authorid</code>
        <span class="sub-box">Zusätzlich zur Einschränkung via <code>id, permalink</code> und <code>pagetitle</code>
        können Sie eine statische Seite auch auf einen Autor einschränken.
        Geben Sie dafür die ID des Autors als Wert des Parameters an.</span>
    </span>

    <span class="box">
        <code class="sub-item">query</code>
        <span class="sub-box">Letztlich führen die Parameter <code>id</code>, <code>permalink</code>,
        <code>pagetitle</code> und <code>authorid</code> lediglich dazu, eine Datenbank-Abfrage
        zusammenzustellen. Jeder der genannten Parameter wird für das
        Bedingungsfeld der SQL-Abfrage (<code>WHERE</code>) ausgewertet und bildet am
        Ende eine Abfrage wie:</span>
    </span>

    <span class="box">
        <span class="sub-box">
            <span class="box">
                <span id="pre-style"><code class="sql">
                    SELECT *<br>
                    &nbsp; FROM serendipity_staticpages<br>
                    &nbsp;WHERE pagetitle = 'Impressum'<br>
                    &nbsp;LIMIT 1
                </code></span>
            </span>
        </span>
    </span>

    <span class="box">
        <span class="sub-box">Wenn Sie eine komplexere Datenbankabfrage benötigen, können Sie über den
        Parameter <code>query</code> der Smarty-Funktion eine eigene SQL-Abfrage
        übergeben. Diese Abfrage darf maximal einen Datensatz liefern.</span>
    </span>

    <span class="box">
        <span class="sub-box">Wenn Sie diesen Parameter verwenden, müssen Sie trotzdem mindestens einen
        der Parameter <code>id, permalink, pagetitle</code> angeben, obwohl diese in
        Ihrer eigenen SQL-Abfrage möglicherweise nicht ausgewertet werden. Sie
        können daher auch einen Fantasiewert wie <code>id=42</code> übermitteln, wenn
        Sie eine <code>query</code> übergeben.</span>
    </span>

    <span class="box">
        <span class="sub-box">Beispielsweise könnten Sie folgenden Aufruf verwenden, um eine als
        Startseite definierte Seite einzubinden:</span>
    </span>

    <span class="box">
        <span class="sub-box">
            <span class="box">
                <span id="pre-style"><code class="smarty">
                    {staticpage_display id=42 query="SELECT * FROM serendipity_staticpages WHERE is_startpage = 1 LIMIT 1"}
                </code></span>
            </span>
        </span>
    </span>

</span>
</p>

<p>Folgende Smarty-Variablen stehen in allen Template-Dateien der statischen
Seiten bzw. Seitentypen zur Verfügung:</p>

<p class="desc citem-desc">
<span class="label invisible" id="staticpage-columns">staticpage-columns</span>
<code class="item smarty">{$staticpage_*}</code> (Mixed)
<span class="desc-info">
    <span class="box">
        Zu jeder statischen Seite werden mehrere Felder ausgefüllt, die allesamt
        in eigenen Datenbankspalten gespeichert werden. Diese Felder umfassen den
        Titel der Seite, den Autor, den Inhalt und alles Weitere.
    </span>

    <span class="box">
        Jedes dieser Felder enthält eine Template-Variable, die Sie in einer
        Template-Datei ansprechen können. Der Teil nach
        <code class="sub-item">staticpage_...</code> entspricht dabei dem Namen des Datenbankfeldes.
    </span>

    <span class="box">
        Diese Variablen beziehen sich jeweils auf die aktuell im Template
        dargestellte Seite:
    </span>

    <span class="box"><span class="label invisible" id="staticpage-values">staticpage-values</span></span>

    <span class="box">

        <span class="tag-box invisible">
            <span class="inline-tag">Template-Variablen!\$staticpage_headline</span>
        </span>
        <span class="box"><code class="sub-item smarty">{$staticpage_headline}</code> (String)
            <span class="sub-box">enthält die <span class="mbold">Kopfzeile</span>.</span>
        </span>

        <span class="tag-box invisible">
            <span class="inline-tag">Template-Variablen!\$staticpage_permalink</span>
        </span>
        <span class="box"><code class="sub-item smarty">{$staticpage_permalink}</code> (String)
            <span class="sub-box">enthält den <span class="mbold">Permalink</span>.</span>
        </span>

        <span class="tag-box invisible">
            <span class="inline-tag">Template-Variablen!\$staticpage_pagetitle</span>
        </span>
        <span class="box"><code class="sub-item smarty">{$staticpage_pagetitle}</code> (String)
            <span class="sub-box">enthält den <span class="mbold">URL-Titel der Seite</span>.</span>
        </span>

        <span class="tag-box invisible">
            <span class="inline-tag">Template-Variablen!\$staticpage_articletype</span>
        </span>
        <span class="box"><code class="sub-item smarty">{$staticpage_articletype}</code> (String)
            <span class="sub-box">enthält den Namen des zugeordneten Seitentyps.</span>
        </span>

        <span class="tag-box invisible">
            <span class="inline-tag">Template-Variablen!\$staticpage_publishstatus</span>
        </span>
        <span class="box"><code class="sub-item smarty">{$staticpage_publishstatus}</code> (Bool)
            <span class="sub-box">ist auf <code>true</code> gesetzt, wenn die Seite veröffentlicht wurde.</span>
        </span>

        <span class="tag-box invisible">
            <span class="inline-tag">Template-Variablen!\$staticpage_language</span>
        </span>
        <span class="box"><code class="sub-item smarty">{$staticpage_language}</code> (String)
            <span class="sub-box">enthält das Kürzel der <span class="mbold">Sprache</span>.</span>
        </span>

        <span class="tag-box invisible">
            <span class="inline-tag">Template-Variablen!\$staticpage_content}</span>
        </span>
        <span class="box"><code class="sub-item smarty">{$staticpage_content}</code> (String)
            <span class="sub-box">enthält den Inhaltstext.</span>
        </span>

        <span class="tag-box invisible">
            <span class="inline-tag">Template-Variablen!\$staticpage_markup</span>
        </span>
        <span class="box"><code class="sub-item smarty">{$staticpage_markup}</code> (Bool)
            <span class="sub-box">ist auf <code>true</code>
            gesetzt, wenn <span class="mbold">Textformatierungen</span> für diese Seite
            durchgeführt werden sollen.</span>
        </span>

        <span class="tag-box invisible">
            <span class="inline-tag">Template-Variablen!\$staticpage_articleformat</span>
        </span>
        <span class="box"><code class="sub-item smarty">{$staticpage_articleformat}</code> (Bool)
            <span class="sub-box">ist auf <code>true</code> gesetzt,
            wenn eine statische Seite <span class="mbold">als Artikel formatiert</span> wird.</span>
        </span>

        <span class="tag-box invisible">
            <span class="inline-tag">Template-Variablen!\$staticpage_articleformattitle</span>
        </span>
        <span class="box"><code class="sub-item smarty">{$staticpage_articleformattitle}</code> (String)
            <span class="sub-box">enthält den <span class="mbold">Seitentitel für "Als Artikel formatieren"-Ansicht</span>.</span>
        </span>

        <span class="tag-box invisible">
            <span class="inline-tag">Template-Variablen!\$staticpage_authorid</span>
        </span>
        <span class="box"><code class="sub-item smarty">{$staticpage_authorid}</code> (Int)
            <span class="sub-box">enthält die ID des Autors.</span>
        </span>

        <span class="tag-box invisible">
            <span class="inline-tag">Template-Variablen!\$staticpage_parent_id</span>
        </span>
        <span class="box"><code class="sub-item smarty">{$staticpage_parent_id}</code> (Int)
            <span class="sub-box">enthält die ID einer
            übergeordneten statischen Seite. Bei Elternseiten ist dieser Wert
            auf <code>0</code> gesetzt.</span>
        </span>

        <span class="tag-box invisible">
            <span class="inline-tag">Template-Variablen!\$staticpage_category_id</span>
        </span>
        <span class="box"><code class="sub-item smarty">{$staticpage_related_category_id}</code> (Int)
            <span class="sub-box">enthält die ID einer zugeordneten Kategorie.</span>
        </span>

        <span class="tag-box invisible">
            <span class="inline-tag">Template-Variablen!\$staticpage_show_childpages</span>
        </span>
        <span class="box"><code class="sub-item smarty">{$staticpage_show_childpages}</code> (Bool)
            <span class="sub-box">ist auf <code>true</code> gesetzt, wenn Unterseiten angezeigt werden sollen.</span>
        </span>

        <span class="tag-box invisible">
            <span class="inline-tag">Template-Variablen!\$staticpage_precontent</span>
        </span>
        <span class="box"><code class="item smarty">{$staticpage_precontent}</code> (String)
            <span class="sub-box">enthält die <span class="mbold">Einleitung</span>,
            die bei Elternseiten eingetragen werden kann.</span>
        </span>

        <span class="tag-box invisible">
            <span class="inline-tag">Template-Variablen!\$staticpage_pass</span>
        </span>
        <span class="box"><code class="sub-item smarty">{$staticpage_pass}</code> (String)
            <span class="sub-box">enthält das Passwort (als Klartext) zum Aufruf der Seite.</span>
        </span>

        <span class="tag-box invisible">
            <span class="inline-tag">Template-Variablen!\$staticpage_is_startpage</span>
        </span>
        <span class="box"><code class="sub-item smarty">{$staticpage_is_startpage}</code> (Bool)
            <span class="sub-box">ist auf <code>true</code> gesetzt,
            wenn die statische Seite die Startseite des Blogs darstellen soll.</span>
        </span>

        <span class="tag-box invisible">
            <span class="inline-tag">Template-Variablen!\$staticpage_pageorder</span>
        </span>
        <span class="box"><code class="sub-item smarty">{$staticpage_pageorder}</code> (Int)
            <span class="sub-box">enthält eine Zahl, die
            für die Sortierungsreihenfolge einer statischen Seite benutzt
            wird. Je höher die Zahl, desto weiter am Ende einer Liste
            (beispielsweie in der Seitenleiste oder Navigation) wird die
            Seite ausgegeben.</span>
        </span>

        <span class="tag-box invisible">
            <span class="inline-tag">Template-Variablen!\$staticpage_shownavi</span>
        </span>
        <span class="box"><code class="sub-item smarty">{$staticpage_shownavi}</code> (Bool)
            <span class="sub-box">ist auf <code>true</code> gesetzt,
            wenn die Navigation in einer statischen Seite eingebunden werden soll.</span>
        </span>

        <span class="tag-box invisible">
            <span class="inline-tag">Template-Variablen!\$staticpage_showonnavi</span>
        </span>
        <span class="box"><code class="sub-item smarty">{$staticpage_showonnavi}</code> (Bool)
            <span class="sub-box">ist auf <code>true</code> gesetzt,
            wenn eine statische Seite in der Ausgabe der Seitenleiste enthalten sein soll.</span>
        </span>

        <span class="tag-box invisible">
            <span class="inline-tag">Template-Variablen!\$staticpage_timestamp</span>
        </span>
        <span class="box"><code class="sub-item smarty">{$staticpage_timestamp}</code> (Int)
            <span class="sub-box">enthält den UNIX-Zeitstempel (vergangene Sekunden seit dem 01.01.1970) für
            den Zeitpunkt, an dem die statische Seite erzeugt wurde.</span>
        </span>

        <span class="tag-box invisible">
            <span class="inline-tag">Template-Variablen!\$staticpage_last_modified</span>
        </span>
        <span class="box"><code class="sub-item smarty">{$staticpage_last_modified}</code> (Int)
            <span class="sub-box">enthält den UNIX-Zeitstempel für den Zeitpunkt, an dem die statische Seite zuletzt bearbeitet wurde.</span>
        </span>

    </span>

</span>
</p>

<p class="desc citem-desc">
<span class="tag-box invisible">
    <span class="inline-tag">Template-Variablen!\$serendipityArchiveURL</span>
</span>
<code class="item smarty">{$serendipityArchiveURL}</code> (String)
<span class="desc-info">Diese Variable enthält die URL zu dem Artikelarchiv Ihres Blogs,
standardmäßig <code>/serendipity/archives/</code>.</span>
</p>

<p class="desc citem-desc">
<span class="tag-box invisible">
    <span class="inline-tag">Template-Variablen!\$staticpage_form_pass</span>
</span>
<code class="item smarty">{$staticpage_form_pass}</code> (String)
<span class="desc-info">Enthält das Passwort, das ein Besucher übermittelt hat. Dies kann zum
Vergleich mit dem für die statische Seite eingetragenen Passwort
herangezogen werden.</span>
</p>

<p class="desc citem-desc">
<span class="tag-box invisible">
    <span class="inline-tag">Template-Variablen!\$staticpage_form_url</span>
</span>
<code class="item smarty">{$staticpage_form_url}</code> (String)
<span class="desc-info">Enthält die URL, die als Formularziel für die Passworteingabe verwendet
werden muss, um zur gewünschten statischen Seite zu gelangen.</span>
</p>

<p class="desc citem-desc">
<span class="tag-box invisible">
    <span class="inline-tag">Template-Variablen!\$staticpage_childpages</span>
</span>
<code class="item smarty">{$staticpage_childpages}</code> (Array)
<span class="desc-info">Dieses verschachtelte Array enthält eine Liste aller Seiten, die der
aktuellen statischen Seite untergeordnet sind. Als Array-Schlüssel stehen
der URL-Titel der Seite (<code class="smarty">{$staticpage_childpages.X.pagetitle}</code>)
sowie der Permalink (<code class="smarty">{$staticpage_childpages.X.permalink}</code>) zur
Verfügung.</span>
</p>

<p class="desc citem-desc">
<span class="tag-box invisible">
    <span class="inline-tag">Template-Variablen!\$staticpage_extchildpages</span>
</span>
<code class="item smarty">{$staticpage_extchildpages}</code> (Array)
<span class="desc-info">
    <span class="box">
        Die Variable <code>$staticpage_childpages</code> enthält lediglich eine
        kurze Übersicht der Unterseiten einer statischen Seite, die zu
        Navigationszwecken benutzt werden.</span>

    <span class="box">
        Die Variable <code class="smarty">{$staticpage_extchildpages}</code> enthält jedoch eine
        ausführlichere Liste dieser Seiten (<em>ext</em> entspricht <em>extended</em>
        = erweitert). Dieses Array enthält folgende Array-Schlüssel:
    </span>

    <span class="box">

        <span class="box">
            <code class="sub-item smarty">{$staticpage_extchildpages.X.image}</code> (String)
            <span class="sub-box">enthält den Wert, den Sie bei dem zugehörigen Seitentyp der statischen
            Seite unter <span class="mbold">Bildpfad</span> (siehe Seite
            <span class="pageref"><a href="#staticpage-bildpfad">staticpage-bildpfad</a></span>) eingetragen haben. Dieser Wert
            kann beispielsweise eine Grafik für die jeweilige Unterseite
            repräsentieren, die in der Navigation für grafische Zuordnungen
            dienen kann.</span>
        </span>

        <span class="box">
            <code class="sub-item smarty">{$staticpage_extchildpages.X.precontent}</code> (String)
            <span class="sub-box">enthält eine (optionale) Einleitung, die für weitere Unterseiten
            einer Unterseite dienen kann.</span>
        </span>

        <span class="box">
            <code class="sub-item smarty">{$staticpage_extchildpages.X.permalink}</code> (String)
            <span class="sub-box">enthält die URL zu der Unterseite.</span>
        </span>

        <span class="box">
            <code class="sub-item smarty">{$staticpage_extchildpages.X.pagetitle}</code> (Int)
            <span class="sub-box">enthält den <code>URL-Titel der Seite</code>.</span>
        </span>

        <span class="box">
            <code class="sub-item smarty">{$staticpage_extchildpages.X.headline}</code> (Int)
            <span class="sub-box">enthält die Überschrift der Unterseite.</span>
        </span>

   </span>
</span>
</p>

<p class="desc citem-desc">
<span class="tag-box invisible">
    <span class="inline-tag">Template-Variablen!\$staticpage_adminlink</span>
</span>
<code class="item smarty">{$staticpage_adminlink}</code> (String)
<span class="desc-info">Enthält eine URL, über die ein Administrator die jeweilige
statische Seite im Backend bearbeiten kann.</span>
</p>

<p class="desc citem-desc">
<span class="tag-box invisible">
    <span class="inline-tag">Template-Variablen!\$staticpage_navigation</span>
</span>
<code class="item smarty">{$staticpage_navigation}</code> (Array)
<span class="desc-info">
    <span class="box">
        Dieses verschachtelte Array enthält die notwendigen Daten zur
        Einbindung einer Navigation. Folgende Array-Schlüssel stehen zur
        Verfügung:
    </span>

    <span class="box">
        <span class="box">
            <code class="sub-item smarty">{$staticpage_navigation.prev.name}</code>
            <span class="sub-box">enthält den Linktitel der vorigen statischen Seite (abhängig von der
            Konfigurationsoption <span class="mbold">Überschriften oder
            Vor/Zurück-Navigation anzeigen</span> des Ereignis-Plugins).</span>
        </span>

        <span class="box">
            <code class="sub-item smarty">{$staticpage_navigation.prev.link}</code>
            <span class="sub-box">enthält die URL der vorigen statischen Seite.</span>
        </span>

        <span class="box">
            <code class="sub-item smarty">{$staticpage_navigation.next.name}</code>
            <span class="sub-box">enthält den Linktitel der nächsten statischen Seite.</span>
        </span>

        <span class="box">
            <code class="sub-item smarty">{$staticpage_navigation.next.link}</code>
            <span class="sub-box">enthält die URL der nächsten statischen Seite.</span>
        </span>

        <span class="box">
            <code class="sub-item smarty">{$staticpage_navigation.top.name}</code>
            <span class="sub-box">enthält den Linktitel der übergeordneten statischen Seite.</span>
        </span>

        <span class="box">
            <code class="sub-item smarty">{$staticpage_navigation.top.link}</code>
            <span class="sub-box">enthält die URL der übergeordneten statischen Seite.</span>
        </span>

        <span class="box">
            <code class="sub-item smarty">{$staticpage_navigation.crumbs}</code>
            <span class="sub-box">enthält ein durchnummeriertes Array, das von vorne nach hinten die Auflistung
            der übergeordneten statischen Seiten enthält. Jedem
            Array-Schlüssel ist hierbei ebenfalls <code>.name</code> und <code>.link</code>
            zugeordnet. Bei einer Unterseite der dritten Ebene enthielte
            dieses Array also zwei Elemente mit den URLs und Linknamen der
            Oberseite der ersten und zweiten Ebene.</span>
        </span>
    </span>
</span>
</p>

<p class="desc citem-desc">
<span class="tag-box invisible">
    <span class="inline-tag">Template-Variablen!\$staticpage_author</span>
</span>
<code class="item smarty">{$staticpage_author}</code> (String)
<span class="desc-info">Enthält den Autorennamen (im Gegensatz zur ID mittels
<code class="smarty">{$staticpage_authorid}</code>) der statischen Seite.</span>
</p>

<p class="desc citem-desc">
<span class="tag-box invisible">
    <span class="inline-tag">Template-Variablen!\$staticpage_created_on</span>
</span>
<code class="item smarty">{$staticpage_created_on}</code> (Int)
<span class="desc-info">Enthält den UNIX-Zeitstempel (vergangene Sekunden seit dem 01.01.1970)
für den Zeitpunkt, an dem die statische Seite erzeugt wurde. Identisch zu
<code class="smarty">{$staticpage_timestamp}</code>.</span>
</p>

<p class="desc citem-desc">
<span class="tag-box invisible">
    <span class="inline-tag">Template-Variablen!\$staticpage_lastchange</span>
</span>
<code class="item smarty">{$staticpage_lastchange}</code> (Int)
<span class="desc-info">Enthält den UNIX-Zeitstempel für den Zeitpunkt, an dem die statische
Seite zuletzt bearbeitet wurde. Identisch zu
<code class="smarty">{$staticpage_last_modified}</code>.</span>
</p>

<p class="desc citem-desc">
<span class="tag-box invisible">
    <span class="inline-tag">Template-Variablen!\$staticpage_categorypage</span>
</span>
<code class="item smarty">{$staticpage_categorypage}</code> (Array)
<span class="desc-info">
    <span class="box">
        Das Plugin <em>Statische Seiten</em> ist auch aktiv, während Sie keine
        statische Seite anzeigen. Dadurch kann das Plugin auch Smarty-Variablen
        zuweisen, die Verweise zu statischen Seiten enthalten, während ein
        Besucher die Übersichtsseite der Einträge pro Kategorie anschaut.
    </span>

    <span class="box">
        Wenn Sie einer Kategorie eine Kategorieseite zugewiesen haben (siehe Seite
        <span class="pageref"><a href="#staticpage-Kategorie">staticpage-Kategorie</a></span>), dann wird die Smarty-Variable
        <code class="smarty">{$staticpage_categorypage}</code> mit den Werten für diese statische Seite
        belegt. Daher können Sie mithilfe dieser Variable die statische Seite in eine
        zentrale Template-Datei wie <code>index.tpl</code> oder <code>entries.tpl</code> einbinden.
    </span>

    <span class="box">
        Als Array-Schlüssel sind alle Werte der Datenbanktabelle verfügbar, wie
        auf Seite <span class="pageref"><a href="#staticpage-columns">staticpage-columns</a></span> aufgeführt (<code>id</code>, <code>pagetitle</code>,
        <code>permalink</code>, <code>content</code> etc.).
    </span>
</span>
</p>

</article>

<article id="XU" class="subsub">

<header>
    <h4 class="subarticle" id="volltextsuche">Volltextsuche</h4>
</header>

<p class="tagging invisible">
<span class="label invisible" id="staticpage-suche">staticpage-suche</span>
<span class="tag-box invisible">
    <span class="inline-tag">Statische Seiten!Suche</span>
    <span class="inline-tag">Volltextsuche</span>
</span>
</p>

<p>Wenn Sie in der Konfiguration des Ereignis-Plugins die Option <span class="mbold">Suche</span>
aktiviert haben, kann ein Besucher nicht nur Blog-Artikel, sondern auch
statische Seiten durchsuchen.
Die Suchergebnisse der statischen Seiten werden dabei separat ausgegeben,
da sie nicht in die Formatierung der Suchergebnisse von Blog-Artikeln
eingebunden werden können.</p>

<p>Standardmäßig wird für jedes Suchergebnis ein Link zu der jeweiligen
Seite sowie die Überschrift, der Autorenname und die ersten 200 Zeichen des
Inhalts ausgegeben.
Die Formatierung der Suchergebnisse können Sie über die
Smarty-Template-Datei <code>plugin_staticpage_searchresults.tpl</code>
anpassen. Folgende Variablen stehen dabei zur Verfügung:</p>

<p class="desc citem-desc">
<span class="tag-box invisible">
    <span class="inline-tag">Template-Variablen!\$staticpage_searchresults</span>
</span>
<code class="item smarty">{$staticpage_searchresults}</code> (Int)
<span class="desc-info">enthält die Anzahl der Suchergebnisse</span>
</p>

<p class="desc citem-desc">
<span class="tag-box invisible">
    <span class="inline-tag">Template-Variablen!\$staticpage_results</span>
</span>
<code class="item smarty">{$staticpage_results}</code> (Array)
<span class="desc-info">enthält ein verschachteltes Array mit allen Suchergebnissen. Jedem
Array-Eintrag sind jeweils die Schlüsselnamen der Datenbank-Spaltennamen zugewiesen, also
beispielsweise <code class="smarty">{$staticpage_results.X.headline}</code>. Die Liste
aller Spaltennamen finden Sie auf Seite <span class="pageref"><a href="#staticpage-db">staticpage-db</a></span>.</span>
</p>

</article>

<article id="XU" class="subsub">

<header>
    <h4 class="subarticle" id="kategoriezuordnung">Kategoriezuordnung</h4>
</header>

<p class="tagging invisible">
<span class="label invisible" id="staticpage-Kategorie">staticpage-Kategorie</span>
<span class="tag-box invisible">
    <span class="inline-tag">Statische Seiten!Kategoriezuordnung</span>
</span>
</p>

<p>Zwischen Blog-Artikeln und statischen Seiten besteht üblicherweise kein
Bezug. Beide werden unabhängig voneinander im System verwaltet. Wenn
statische Seiten angezeigt werden, ignoriert das Plugin die Einbindung
von Artikeln. Andersherum ignoriert Serendipity statische Seiten beim
Darstellen von Artikeln.</p>

<p>Grundsätzlich ist dies gewollt, da man mit statischen Seiten ja exakt
eine solche Trennung von redaktionellen Inhalten und <em>Nebeninhalten</em>
erreichen möchte.
Wenn Sie Serendipity benutzen, um eine CMS-Seite zu pflegen, möchten Sie
jedoch gerade eine Verflechtung von Artikeln und statischen Seiten
erreichen.</p>

<p>Dies können Sie mit Hilfe des Kategoriesystems von Serendipity und des
Plugins <em>Statische Seiten</em> erreichen. Die Verflechtung besteht dabei
aus zwei Komponenten: die Einbindung von Kategorien in eine statische
Seite und umgekehrt die Einbindung von statischen Seiten in eine
Kategorie.</p>

<p>Mithilfe eines Beispiels sollte dies etwas verständlicher werden: Sie
betreuen den Webauftritt einer Kirchengemeinde. Auf der Webseite wollen
Sie über mehrere Themenbereiche berichten: <em>Unternehmungen,
Kirchenleben</em> und <em>Mitarbeiter</em>. In jedem dieser Bereiche möchten
Sie gerne sowohl aktuelle Artikel als auch feste Informationen anbieten.</p>

<p>Dazu richten Sie zuerst einmal die drei Kategorien im Blog ein. So
können Sie bereits einfach aktuelle Artikel schreiben. Es fehlt Ihnen
jedoch die Möglichkeit, auch eine statische Seite mit grundlegenden
Informationstexten einzupflegen. Beispielsweise möchten Sie im
Themenbereich <em>Mitarbeiter</em> stets eine vollständige Liste aller
Mitarbeiter darstellen und Neuigkeiten erst darunter einbinden.
Eine solche Seite dient später dem Besucher als optimale Verbindung: Er
sieht immer aktuelle und statische Informationen.</p>

<p>Als Einstiegspunkte zu so einer Seite gibt es nun zwei Möglichkeiten: Der
Besucher kann entweder die Artikelübersicht der Kategorie aufrufen
(<code>http://www.example.com/serendipity/categories/1-Mitarbeiter/</code>, oder
er kann gezielt zu einer statischen Seite springen, die der Kategorie
zugeordnet ist
(<code>http://www.example.com/serendipity/seiten/Mitarbeiter.html</code>).</p>

<p>Diese beiden Verknüpfungsoptionen sind in zwei unterschiedlichen Menüs
untergebracht. Das erste Menü befindet sich beim Bearbeiten einer
statischen Seite über <span class="mbold">Inhalt <span class="icon arrow-right">→</span> Statische Seiten <span class="icon arrow-right">→</span> Seiten
bearbeiten</span> im Ausklappfeld <span class="mbold">Zugeordnete Kategorie</span>. Wichtig ist,
dass Sie einer statischen Seite, die einer Kategorie zugeordnet ist, als
Seitentyp <span class="mbold">Staticpage with related category</span> zuweisen. Nur diese
Formatierungsansicht enthält die spezielle Kopplung, die auf einer
statischen Seite die Blog-Artikel einer gewählten Kategorie anzeigt.</p>

<p>Als zweite Verknüpfungsmöglichkeit kann ein Redakteur einer Kategorie
eine beliebige statische Seite zuordnen, indem er im Menü <span class="mbold">Inhalt <span class="icon arrow-right">→</span> Kategorien</span>
die betreffende Kategorie bearbeitet und im Ausklappfeld
<span class="mbold">Zugeordnete statische Seite</span> die jeweilige Seite auswählt. Damit
nun eine verbundene statische Seite angezeigt werden kann, wenn ein
Besucher die betreffende Kategorie aufruft, müssen Sie Änderungen an Ihrem
gewählten Blog-Template vornehmen. Andernfalls ist eine Verknüpfung nur
konfiguriert, wird aber nicht ausgewertet.</p>

<p>Beide Verknüpfungsoptionen sind für erfahrenere Template-Bauer gedacht.
Die folgenden Detailbeschreibungen sollten Sie daher möglichst erst dann
umsetzen, wenn Sie sich mit Templates (siehe Beschreibung ab Seite
<span class="pageref"><a href="#Smarty-Templates">Smarty-Templates</a></span>) bereits eingehender beschäftigt haben.</p>

<p class="desc">
<code class="item">Zuordnung Kategorie zu statischer Seite</code>
<span class="desc-info">
    <span class="box">
        Einer statischen Seite können Sie eine Kategorie zuordnen. Beim Ansehen
        der statischen Seite werden dann zB. die aktuellsten fünf Einträge einer
        Kategorie unterhalb des regulären Inhalts eingebunden.
    </span>

    <span class="box">
        Diese Einbindung erfolgt mittels eines speziellen Seitentyps namens
        <span class="mbold">Staticpage with related category</span>. Dieser Seitentyp verwendet die
        Template-Datei <code>plugin_staticpage_related_category.tpl</code>, in der
        Smarty-Funktionsaufrufe vorhanden sind, die die zugeordnete Kategorie
        auswerten und darstellen.
    </span>

    <span class="box">
        Sie können unterschiedlichen statischen Seiten dieselbe Kategorie
        zuordnen, dh., Sie können sowohl der statischen Seite <code>Impressum</code> als
        auch <code>Mitarbeiter</code> die Blog-Kategorie <code>Mitarbeiter</code> zuweisen.
        Dann werden die aktuellsten Artikel dieser Blog-Kategorie auf beiden
        statischen Seiten eingebunden.
    </span>

    <span class="box">
        Die Anzeige dieser Funktionalität erfolgt, wenn ein Besucher gezielt eine
        statische Seite aufruft
        (<code>http://www.example.com/serendipity/seiten/Mitarbeiter.html</code>).
    </span>

    <span class="box">
        In der Datei <code>plugin_staticpage_related_category.tpl</code>
        befindet sich der bereits aus der Datei <code>plugin_staticpage.tpl</code>
        bekannte Code zur gewöhnlichen Darstellung einer statischen Seite.
        Abweichend von der gewöhnlichen Darstellung enthält die Template-Datei
        keine Navigationselemente und zusätzlich den besonderen
        Smarty-Funktionsaufruf zur Einbindung der Blog-Artikel:
    </span>

    <span class="box">
        <span id="pre-style"><code class="smarty">
            &lt;div class="staticpage_related_category_entry_list"&gt;<br>
            {serendipity_fetchPrintEntries<br>
            category=$staticpage_related_category_id<br>
            template="../../plugins/serendipity_event_staticpage/staticpage-entries-listing.tpl"<br>
            limit=5 noSticky="true"}<br>
            &lt;/div&gt;
        </code></span>
    </span>

    <span class="box">
        Die Beschreibung der Smarty-Funktion
        <code class="smarty">{serendipity_fetchPrintEntries}</code> finden Sie auf
        Seite <span class="pageref"><a href="#fetchprintentries">fetchprintentries</a></span>.
        Im vorliegenden Fall weist die Funktion Serendipity dazu an, die
        letzten fünf Artikel darzustellen, die der aktuellen statischen Seite
        zugeordnet sind. Die Kategorie-ID wird dabei über die Smarty-Variable
        <code class="smarty">{$staticpage_related_category_id}</code> übermittelt.
    </span>

    <span class="box">
        Damit die Ausgabe der Artikel nur als Übersicht erfolgt, benutzt der Smarty-Aufruf ein eigenständiges
        Template namens <code>staticpage-entries-listing.tpl</code>, das mit dem Plugin
        ausgeliefert wird. Sie können die genannte Datei zur Anpassung in
        Ihr eigenes Template-Verzeichnis kopieren und sich dadurch die
        Angabe des vollständigen Pfades sparen.
    </span>

    <span class="box">
        Die Datei <code>staticpage-entries-listing.tpl</code> entspricht einem stark
        reduzierten <code>entries.tpl</code>-Template (siehe Seite <span class="pageref"><a href="#entries.tpl">entries.tpl</a></span>).
        Es gibt lediglich die Überschrift und den Link zu den jeweiligen Artikeln
        aus. Sie können jedoch auch alle verfügbaren Smarty-Variablen anwenden,
        um die Blog-Artikelliste individuell zu formatieren. Dazu können Sie auch
        eine eigene Template-Datei wie <code>staticpage-entries-listing-detail.tpl</code>
        erstellen. Auf diese müssen Sie dann in der Datei
        <code>plugin_staticpage_related_category.tpl</code> verweisen oder
        alternativ auch einen eigenständigen Seitentyp mit eigener Template-Datei
        verwenden.
    </span>

    <span class="box">
        Grundsätzlich können Sie sämtliche Parameter des Smarty-Funktionsaufrufs
        auch durch zentrale Template-Optionen abstrahieren. Dabei könnten Sie in
        Ihrem Template beispielsweise eine konfigurierbare Option für die Anzahl
        der Blog-Artikel in einer statischen Seite hinterlegen. Eine Beschreibung
        der Template-Optionen finden Sie auf Seite <span class="pageref"><a href="#templateoptionen">templateoptionen</a></span>.
    </span>
</span>
</p>

<p class="desc">
<code class="item">Zuordnung statische Seite zu Kategorie</code>
<span class="desc-info">
    <span class="box">
        Diese Verknüpfung kümmert sich um die Einbindung einer statischen Seite
        in eine Artikelübersicht einer Kategorie. Diese statische Seite wird
        einer Kategorie im Bereich <span class="mbold">Inhalt <span class="icon arrow-right">→</span> Kategorien</span> zugewiesen.
    </span>

    <span class="box">
        Einer Kategorie können Sie lediglich eine einzelne statische Seite
        zuordnen, genauso wie Sie einer statischen Seite nur eine einzelne
        Kategorie zuordnen können. Das bedeutet daher auch, dass Sie mehreren
        unterschiedlichen Kategorien dieselbe statische Seite zuordnen können,
        und mehreren unterschiedlichen statischen Seiten dieselbe Kategorie.
    </span>

    <span class="box">
        Angezeigt wird die zugewiesene statische Seite, wenn ein Besucher die
        Artikelübersicht über eine URL wie
        <code>http://www.example.com/serendipity/categories/1-Mitarbeiter</code>
        aufruft.
    </span>

    <span class="box">
        Serendipity stellt eine Kategorieübersicht über die
        <code>entries.tpl</code> Ihres aktivierten Templates dar. Dort ist eine
        statische Seite üblicherweise nicht vorgesehen, daher müssen Sie die
        Einbindung dieser statischen Seite selbständig vornehmen.
    </span>

    <span class="box">
        Das Grundprinzip ist dabei analog der Zuordnung einer Kategorie
        zu einer statischen Seite. Sie ändern dabei die <code>entries.tpl</code> so ab,
        dass sie den Aufruf der zugeordneten statischen Seite enthält.
    </span>

    <span class="box">
        Das Plugin <em>Statische Seiten</em> kann selbständig erkennen, ob der
        Kategorie, die ein Besucher gerade anschaut, eine statische Seite
        zugeordnet ist. Ist dies der Fall, setzt das Plugin die Smarty-Variable
        <code class="smarty">{$staticpage_categorypage}</code>. Diese Variable enthält alle Werte
        <code>id</code>, <code>pagetitle</code>, <code>permalink</code>, <code>content</code> etc. der zugewiesenen statischen
        Seite (siehe Seite <span class="pageref"><a href="#staticpage-values">staticpage-values</a></span>).
    </span>

    <span class="box">
        Um also bei der Betrachtung einer Artikelübersicht zu einer Kategorie die
        zugewiesene statische Seite zu verlinken, könnten Sie am Anfang Ihrer
        Datei <code>entries.tpl</code> Folgendes einfügen:
    </span>

    <span class="box">
        <span id="pre-style"><code id="staticpage-entries" class="tpl">{if&nbsp;$staticpage_categorypage}&nbsp;<br>
&lt;div&nbsp;class="staticpage_header"&gt;<br>
&nbsp;&nbsp;&nbsp;&nbsp;Lesen&nbsp;Sie&nbsp;ausführliche&nbsp;Informationen&nbsp;zu&nbsp;dieser&nbsp;Kategorie&nbsp;auf&nbsp;<br>
&nbsp;&nbsp;&nbsp;&nbsp;der&nbsp;Seite&nbsp;&lt;a&nbsp;href="{$staticpage_categorypage.permalink}"&gt;{$staticpage_categorypage.pagetitle}&lt;/a&gt;<br>
&lt;/div&gt;<br>
{/if}</code></span><!-- snippet -->
    </span>

    <span class="box">
        Dieser Code gibt einen Hinweistext und einen Link zu der zugehörigen
        statischen Seite aus. Diesen Block Code können Sie selbstverständlich
        auch in andere Dateien Ihres Templates, wie <code>index.tpl</code>, einbauen.
    </span>
</span>
</p>

</article>

<article id="XU" class="subsub">

<header>
    <h4 class="subarticle" id="datenbanktabellen-6">Datenbanktabellen</h4>
</header>

<p class="tagging invisible">
<span class="tag-box invisible">
    <span class="inline-tag">Statische Seiten!Datenbanktabellen</span>
    <span class="inline-tag">Datenbank-Tabellen!Statische Seiten</span>
</span>
</p>

<p>Das Plugin richtet folgende Datenbanktabellen und -felder ein:</p>

<p class="tagging invisible">
<span class="tag-box invisible">
    <span class="inline-tag">Datenbank-Tabellen!serendipity_staticpages</span>
</span>
</p>

<p class="desc">
<span class="label invisible" id="staticpage-db">staticpage-db</span>
<code class="item">serendipity_staticpages</code>
<span class="desc-info">
    <span class="box">
        In dieser Tabelle werden die Inhalte der statischen Seiten gespeichert. Folgende
        Felder werden benutzt:
    </span>

    <span class="sql-field-group">
        <span class="li-item siLi"><code class="item sql-field">id</code> enthält den fortlaufenden Primärschlüssel zur Identifikation einer statischen Seite.</span>
        <span class="li-item siLi"><code class="item sql-field">parent_id</code> enthält eine etwaige zugeordnete Oberseite.</span>
        <span class="li-item siLi"><code class="item sql-field">articleformattitle</code> enthält den <span class="mbold">Seitentitel für "Als Artikel formatieren"-Ansicht</span>.</span>
        <span class="li-item siLi"><code class="item sql-field">articleformat</code> gibt an, ob eine statische Seite in der Darstellung wie ein Artikel formatiert werden soll.</span>
        <span class="li-item siLi"><code class="item sql-field">markup</code> gibt an, ob Textformatierungs-Plugins angewendet werden sollen.</span>
        <span class="li-item siLi"><code class="item sql-field">pagetitle</code> enthält den <span class="mbold">URL-Titel der Seite</span>.</span>
        <span class="li-item siLi"><code class="item sql-field">permalink</code> enthält den <span class="mbold">Permalink</span>.</span>
        <span class="li-item siLi"><code class="item sql-field">is_startpage</code> gibt an, ob die Seite als Startseite des Blogs angezeigt wird.</span>
        <span class="li-item siLi"><code class="item sql-field">show_childpages</code> gibt an, ob etwaige Unterseiten angezeigt werden sollen.</span>
        <span class="li-item siLi"><code class="item sql-field">content</code> enthält den Inhalt der statischen Seite.</span>
        <span class="li-item siLi"><code class="item sql-field">pre_content</code> enthält den einleitenden Inhalt für Kinderseiten der statischen Seite.</span>
        <span class="li-item siLi"><code class="item sql-field">headline</code> enthält die Überschrift des Artikels.</span>
        <span class="li-item siLi"><code class="item sql-field">filename</code> enthält den Dateinamen des Templates, der für die Formatierung der Seite verwendet werden soll.</span>
        <span class="li-item siLi"><code class="item sql-field">pass</code> enthält ein Passwort, falls die Seite geschützt werden soll.</span>
        <span class="li-item siLi"><code class="item sql-field">timestamp</code> enthält die Erstellungszeit des Artikels.</span>
        <span class="li-item siLi"><code class="item sql-field">last_modified</code> enthält die Zeit der letzten Aktualisierung des Artikels.</span>
        <span class="li-item siLi"><code class="item sql-field">authorid</code> enthält die ID des Autors, der die Seite erstellt hat.</span>
        <span class="li-item siLi"><code class="item sql-field">pageorder</code> enthält ein Ordnungskriterium zur Sortierung der statischen Seite.</span>
        <span class="li-item siLi"><code class="item sql-field">articletype</code> gibt an, welchem Seitentyp die Seite entspricht.</span>
        <span class="li-item siLi"><code class="item sql-field">related_category_id</code> enthält eine möglicherweise festgelegte Kategoriezuordnung der statischen Seite.</span>
        <span class="li-item siLi"><code class="item sql-field">shownavi</code> gibt an, ob Navigationsmöglichkeiten im Template der statischen Seite angezeigt werden sollen.</span>
        <span class="li-item siLi"><code class="item sql-field">showonnavi</code> gibt an, ob die statische Seite in der Liste der verfügbaren Seiten eingebunden werden soll.</span>
        <span class="li-item siLi"><code class="item sql-field">publishstatus</code> legt den Status des Artikels fest (veröffentlicht/Entwurf).</span>
        <span class="li-item siLi"><code class="item sql-field">language</code> legt die Sprache des Artikels fest.</span>
    </span>
</span>
</p>

<p class="desc">
<span class="tag-box invisible">
    <span class="inline-tag">Datenbank-Tabellen!serendipity_staticpages_types</span>
</span>
<code class="item">serendipity_staticpages_types</code>
<span class="desc-info">
    <span class="box">
        Enthält die möglichen Seitentypen der statischen Seiten.
    </span>

    <span class="sql-field-group">
        <span class="li-item siLi"><code class="item sql-field">id</code> enthält den fortlaufenden Primärschlüssel zur Identifikation des Seitentyps.</span>
        <span class="li-item siLi"><code class="item sql-field">description</code> enthält die Beschreibung des Seitentyps.</span>
        <span class="li-item siLi"><code class="item sql-field">template</code> enthält die verwendete Smarty-Template-Datei zur Formatierung von Artikeln dieses Typs.</span>
        <span class="li-item siLi"><code class="item sql-field">image</code> enthält eine Bild-URL, die zur Identifizierung von Artikeln dieses Typs im Frontend dargestellt werden kann.</span>
    </span>
</span>
</p>

<p class="desc">
<span class="tag-box invisible">
    <span class="inline-tag">Datenbank-Tabellen!serendipity_staticpages_categorypage</span>
</span>
<code class="item">serendipity_staticpages_categorypage</code>
<span class="desc-info">
    <span class="box">
        Enthält die Zuordnungen einer Blog-Kategorie zu einer statischen Seite.
    </span>

    <span class="sql-field-group">
        <span class="li-item siLi"><code class="item sql-field">categoryid</code> enthält die ID der Blog-Kategorie.</span>
        <span class="li-item siLi"><code class="item sql-field">staticpage_categorypage</code> enthält die ID der statischen Seite.</span>
    </span>
</span>
</p>

</article>

</section><!-- section.sub end -->

<section id="serendipity-event-statistics" class="sub">
<span class="u-toc">7.2.7 - Statistiken: serendipity_plugin_statistics, serendipity_event_statistics</span>

<h3 class="subsection" id="statistikenserendipity_plugin_statistics-serendipity_event_stati">Statistiken<br>serendipity_plugin_statistics, serendipity_event_statistics</h3>

<p class="tagging invisible">
<span class="label invisible" id="statistics">statistics</span>
<span class="tag-box invisible">
    <span class="inline-tag">Plugins!Statistiken</span>
    <span class="inline-tag">Plugins!serendipity_event_statistics</span>
    <span class="inline-tag">Plugins!serendipity_plugin_statistics</span>
    <span class="inline-tag">Statistik</span>
</span>
</p>

<p>Einen sehr wichtigen Haushaltsgegenstand eines jeden Profi-Bloggers stellt
der Bauchpinsel dar. Mit diesem Instrument lässt sich das Ego eines
Bloggers vorzüglich bürsten, was letztlich die beruhigende
Selbstbestätigung für den Betrieb eines Blogs gibt.</p>

<p>Trotz dieser etwas ironischen einleitenden Worte ist es für viele Blogger
tatsächlich sehr wichtig, Statistikwerte über ihr Blog zu sammeln. Ob dies
später als persönlicher Ansporn dient oder als Marketinginstrument der
Geschäftsführung, ist dem Einzelnen überlassen.</p>

<p>Serendipity liefert ein Statistik-Plugin mit. Das Seitenleisten-Plugin
kann für Besucher wertvolle Informationen darstellen, wie beispielsweise
die aktuelle Anzahl an Artikeln, das Datum des aktuellsten Artikels, die
Anzahl der Kommentare und die Anzahl der Besucher im Monat und aktuell
auf der Seite.</p>

<p>Das Ereignis-Plugin bindet eine ausführliche Statistik für Redakteure im
Backend unter <span class="mbold">Aktivität <span class="icon arrow-right">→</span> Statistiken</span> ein.</p>

<p>
<span class="tag-box invisible">
    <span class="inline-tag">awStats</span>
    <span class="inline-tag">modlogan</span>
    <span class="inline-tag">webalizer</span>
    <span class="inline-tag">Google Analytics</span>
    <span class="inline-tag">Piwik</span>
</span>
Abgesehen von diesem internen Plugin macht es durchaus Sinn, weitere
Möglichkeiten der Statistikerhebung auf dem Webserver zu benutzen, allen
voran die Analyse von Webserver-Logfiles mittels Programmen wie
awStats [*]
<span class="footnote"><i class="fa fa-info-circle"></i> <a href="http://awstats.sourceforge.net/" target="_blank" rel="noopener">http://awstats.sourceforge.net/</a></span><!-- footnote -->,
webalizer [*]
<span class="footnote"><i class="fa fa-info-circle"></i> <a href="http://www.mrunix.net/webalizer/" target="_blank" rel="noopener">http://www.mrunix.net/webalizer/</a></span><!-- footnote --> oder
Modlogan [*]
<span class="footnote"><i class="fa fa-info-circle"></i> <a href="http://modlogan.org/" target="_blank" rel="noopener">http://modlogan.org/</a></span><!-- footnote -->. Auch das Google
Analytics [*]
<span class="footnote"><i class="fa fa-info-circle"></i> <a href="http://www.google.com/analytics/" target="_blank" rel="noopener">http://www.google.com/analytics/</a></span><!-- footnote --> Widget hat
sich als extrem detailreich erwiesen (und es lässt sich einfach via
JavaScript oder eigenständigem Serendipity-Plugin einbinden).
Eine mehr private Alternative zu letztgenanntem Werkzeug ist
Piwik [*]
<span class="footnote"><i class="fa fa-info-circle"></i> <a href="http://piwik.org/" target="_blank" rel="noopener">http://piwik.org/</a></span><!-- footnote -->,
dass gerade aus Datenschutzsicht eher zu empfehlen ist.
</p>

<p>In der Konfiguration des Seitenleisten-Plugins können Sie gezielt
einstellen, welche statistischen Daten Sie Ihren Besuchern darstellen
wollen. Die Bezeichnung dafür können Sie frei vergeben. Als
Platzhalter für die später dargestellte Zahl verwenden Sie <code>%s</code>.
Damit das Plugin nicht jedes Mal erneut die Statistiken abfragen muss,
werden die Ergebnisse temporär zwischengespeichert (<code>Caching</code>). Über
die Option <span class="mbold">Cache-Zeitlimit</span> können Sie einstellen, wie viel Zeit
vergehen darf, bevor der Cache neu erstellt wird.</p>

<p>Die Anzahl der monatlichen und der aktuellen Besucher stellt das Plugin nur
dar, wenn Sie im Ereignis-Plugin die Option <span class="mbold">Erweiterte
Besucherstatistiken</span> aktiviert haben. Als <em>aktueller Besucher</em> zählt
in diesem Fall jeder Besucher, der in den letzten 15 Minuten auf das Blog
zugegriffen hat.</p>

<p>Die Konfiguration des Ereignis-Plugins bietet folgende Optionen:</p>

<p class="desc">
<span class="item mbold">Anzahl Einträge</span><!-- menuitem -->
<span class="desc-info">Standardmäßig zeigt das Plugin im Menüpunkt <span class="mbold">Einträge ?
Statistiken</span> immer 20 Datensätze pro statistischem Wert an. Wenn Sie mehr
oder weniger Einträge sehen wollen, können Sie dies mit der Option
<span class="mbold">Anzahl Einträge</span> festlegen.</span>
</p>

<p class="desc">
<span class="item mbold">Erweiterte Besucherstatistiken</span><!-- menuitem -->
<span class="desc-info">
    <span class="box">
        Wenn Sie diese Option aktivieren, kann das Plugin jeden Zugriff eines
        Besuchers auf das Blog nachverfolgen (<em>visitor tracking</em>). Ein
        Besucher wird mittels eines Cookies eindeutig identifiziert, alle
        Folgezugriffe aktualisieren dann einen bestehenden Datensatz.
    </span>

    <span class="box">
        Im Gegensatz zu den Statistikfunktionen des <span class="mbold">Karma</span>-Plugins werden
        so globale Besucher erfasst, und <em>nicht</em> die Klicks bei
        individuellen Artikeln. Daher schließen sich beide Plugins gegenseitig
        nicht aus, sondern können ergänzend eingesetzt werden.
    </span>

    <span class="box">
        Ob Sie diese Option auf <span class="mbold">Ja, am unteren Ende der Seite</span> oder
        <span class="mbold">Ja, oben auf der Seite</span> stellen, ist nur für die Darstellung der
        Statistik erheblich und gibt an, wo die Besucherstatistiken eingebunden
        werden sollen.
    </span>

    <span class="tag-box invisible">
        <span class="inline-tag">Datenbank-Tabellen!serendipity_visitors</span>
        <span class="inline-tag">Datenbank-Tabellen!serendipity_visitors_count</span>
    </span>
    <span class="box">
        Wenn die Benutzerzählung aktiviert ist, sollten Sie von Zeit zu Zeit
        manuell die Datenbanktabellen <code>serendipity_visitors</code> und
        <code>serendipity_visitors_count</code> prüfen, da diese sehr groß werden
        können. Schlagen Sie auf Seite <span class="pageref"><a href="#wartung-visitors">wartung-visitors</a></span> nach, um zu erfahren,
        wie Sie derartige Prüfungen gezielt durchführen.
    </span>
</span>
</p>

<p class="desc">
<span class="item mbold">Alles zeigen</span><!-- menuitem -->
<span class="desc-info">Über die Option <span class="mbold">Alles zeigen</span> können Sie festlegen, ob das
Statistik-Plugin sämtliche Daten anzeigt (Einstellung <span class="mbold">Ja, alle
Statistiken anzeigen</span>) oder ob nur die erweiterten Besucherstatistiken
(falls aktiviert) eingebunden werden sollen.</span>
</p>

<p class="desc">
<span class="item mbold">Robot-Zählung verhindern</span><!-- menuitem -->
<span class="desc-info">Nur wenn Sie diese Option aktivieren, kann Serendipity bekannte
Suchmaschinen von der Besucherzählung ausnehmen. Meist macht es für
Sie keinen Sinn, Suchmaschinen in dieser Zählung aufzuführen, daher ist
es selten zu empfehlen, die Option auf <span class="mbold">Nein, Robots bitte
mitzählen</span> zu setzen.</span>
</p>

<p>Die Darstellung des Statistik-Plugins umfasst folgende Daten:</p>

<ul class="realList">
    <li>Anzahl der Besucher (monatsbezogen, tagesbezogen)</li>
    <li>Letzte Besucher</li>
    <li>Top-Referrer [*]
        <span class="footnote"><i class="fa fa-info-circle"></i> Referrer sind Webseiten, von denen aus Besucher zu Ihrem Blog gelangt sind.</span><!-- footnote --></li>
    <li>Datum des ersten und letzten Blog-Artikels</li>
    <li>Anzahl insgesamt verfasster Artikel (veröffentlicht, Entwürfe)</li>
    <li>Anzahl der Artikel vereilt auf einzelne Redakteure</li>
    <li>Anzahl vorhandener Kategorien</li>
    <li>Verteilung der Artikel auf die vorhandenen Kategorien</li>
    <li>Anzahl der Dateien in der Mediathek, Aufteilung nach Dateityp</li>
    <li>Anzahl der Kommentare, Verteilung der Kommentare zu den
        populärsten Artikeln, Namen der häufigsten Kommentatoren</li>
    <li>Anzahl der Abonennten von Blog-Artikeln, Verteilung der
        Abonnenten auf populäre Artikel. Als 
        <span class="tag-box invisible">
            <span class="inline-tag">Abonnement</span>
        </span>
        Abonnent wird ein
        Kommentator bezeichnet, der beim Kommentieren die Option
        <span class="mbold">Bei Aktualisierung dieser Kommentare benachrichtigen</span>
        aktiviert hat.</li>
    <li>Anzahl und Verteilung der Trackbacks auf populäre Artikel,
        Namen der am häufigsten Trackbacks sendenden Blogs</li>
    <li>Durchschnittliche Kommentare, Trackbacks pro Artikel</li>
    <li>Durchschnittliche Artikel pro Tag, Woche und Monat</li>
    <li>Menge der insgesamt geschriebenen Zeichen, durchschnittliche
        Zeichenzahl pro Artikel, Nennung der längsten Blog-Artikel</li>
    <li>Top-Referrer und Top Exits (siehe zugehörige Plugins auf den
        Seiten <span class="pageref"><a href="#trackexits">trackexits</a></span> und <span class="pageref"><a href="#trackreferrer">trackreferrer</a></span></li>
</ul>

<p>Weiterhin können etwaige weitere Plugins auf dieser Seite ihre eigenen
Statistiken einbinden, wie beispielsweise das Karma-Plugin.</p>

<article id="XU" class="subsub">

<header>
    <h4 class="subarticle" id="datenbanktabellen-5">Datenbanktabellen</h4>
</header>

<p>
<span class="tag-box invisible">
    <span class="inline-tag">Datenbank-Tabellen!serendipity_visitors</span>
</span>
Die Tabelle <code>serendipity_visitors</code> enthält für jeden
Besucher der Seite einen Eintrag:</p>

<p class="desc sql-field-group">
    <code class="item sql-field">counter_id</code> enthält eine fortlaufende ID.
    <code class="item sql-field">sessID</code> enthält die Session-ID des Besuchers, damit nur der erste seiner Aufrufe gezählt werden muss.
    <code class="item sql-field">day</code> enthält das Datum des Besuchs im Textformat.
    <code class="item sql-field">time</code> enthält das Datum des Besuchs im UNIX-Zeitstempel-Format.
    <code class="item sql-field">ref</code> enthält den HTTP-Referrer (Verweisende Seite).
    <code class="item sql-field">browser</code> enthält den Browser-Typ des Besuchers.
    <code class="item sql-field">ip</code> enthält die IP des Besuchers.
</p>

<p>
<span class="tag-box invisible">
    <span class="inline-tag">Datenbank-Tabellen!serendipity_visitors_count</span>
</span>
Die Datenbanktabelle <code>serendipity_visitors_count</code> enthält eine
Zusammenfassung der Besucher an einem einzelnen Tag:</p>

<p class="desc sql-field-group">
    <code class="item sql-field">year</code> enthält das Datum (Jahr) der Zugriffe.
    <code class="item sql-field">month</code> enthält das Datum (Monat) der Zugriffe.
    <code class="item sql-field">day</code> enthält das Datum (Tag) der Zugriffe.
    <code class="item sql-field">visits</code> enthält die Anzahl der Besucher an diesem Tag.
    <code class="item sql-field">hits</code> enthält die Gesamtzahl an aufgerufenen Seiten an diesem Tag.
</p>

<p>
<span class="tag-box invisible">
    <span class="inline-tag">Datenbank-Tabellen!serendipity_refs</span>
</span>
Die Referrer werden in der Tabelle
<code>serendipity_refs</code> gespeichert. Neben dem fortlaufenden
Primärschlüssel <code>id</code> enthält die Spalte <code>refs</code> die URL der
Webseite und <code>count</code> die Anzahl der Besucher von dieser Seite.</p>

<p>Diese Tabellen können auf großen Blogs sehr umfangreich
werden. Warten Sie diese daher regelmäßig.</p>

</article>

</section><!-- section.sub end -->

<section id="serendipity-event-templatechooser" class="sub">
<span class="u-toc">7.2.8 - Template dropdown: serendipity_plugin_templatedropdown,<br>Template-Auswahl: serendipity_event_templatechooser</span>

<h3 class="subsection" id="template-dropdownserendipity_plugin_templatedropdown-template-au">Template dropdown<br>serendipity_plugin_templatedropdown,<br>Template-Auswahl<br>serendipity_event_templatechoose</h3>

<p class="tagging invisible">
<span class="tag-box invisible">
    <span class="inline-tag">Plugins!Template dropdown</span>
    <span class="inline-tag">Plugins!Template-Auswahl</span>
    <span class="inline-tag">Frontend!Layout</span>
    <span class="inline-tag">Plugins!serendipity_event_templatechooser</span>
    <span class="inline-tag">Plugins!serendipity_plugin_templatedropdown</span>
</span>
</p>

<p>Als Eigentümer des Blogs legen Sie üblicherweise fest, wie es auszusehen
hat. Manchen Betreibern ist das aber relativ egal; sie legen eher Wert
darauf, dass sich der Besucher mit dem Design identifizieren kann. Daher
ist es in manchen Fällen angebracht, dem Besucher eine Wahl des Designs
(<em>Template</em>) zu überlassen - besonders, wenn Sie Wert auf
<span class="tag-box invisible">
    <span class="inline-tag">Barrierefreiheit</span>
</span>
Barrierefreiheit legen.</p>

<p>Über das Seitenleisten-Plugin <em>Template dropdown</em> können Sie ein
Ausklappfeld einbinden, das alle in Ihrem Blog verfügbaren Templates
enthält. Der Besucher kann ein Template auswählen und danach
das Blog im gewünschten Layout ansehen.</p>

<p>Das Seitenleisten-Plugin dient lediglich der Darstellung der verfügbaren
Templates. Damit das Template erfolgreich aktiviert werden kann, muss das
gekoppelte Ereignis-Plugin <em>Templateauswahl</em> installiert werden.</p>

<p>Das Ereignis-Plugin setzt einen Browser-Cookie, um die Template-Auswahl
des Besuchers auch beim nächsten Besuch wiederherzustellen. Darüber hinaus
können Sie, sobald das Ereignis-Plugin installiert ist, Ihr Blog mittels
<code>http://www.example.com/index.php?user_template=default</code>
aufrufen. Der Option <code>user_template</code> können Sie dabei den Namen des
gewünschten Template-Verzeichnisses zuweisen.</p>

<p>Bitte beachten Sie: Wenn Sie eigenständige Anpassungen an einem
Template vornehmen, um beispielsweise spezielle erweiterte Eigenschaften
einzubinden, sind diese nur in dem jeweils von Ihnen modifizierten Template
sichtbar. Wenn ein Besucher ein davon abweichendes Template gewählt
hat, werden möglicherweise wichtige Änderungen bei ihm nicht
korrekt dargestellt. Auch wenn Sie das Plugin
<em>Eigenschaften/Templates von Kategorien</em> verwenden, sollten Sie eine
freie Template-Auswahl nur in Sonderfällen zulassen.</p>

</section><!-- section.sub end -->

</section><!-- section.index end -->
