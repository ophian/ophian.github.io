---
layout: post
title: Light or dark mode what is the difference and what is your preference
last_modified_at: 2021-12-09T13:32:00+00:00
---

N° 2021/9

## Light or dark mode, what is the difference and what is your preference?
<div markdown="1">
 <div>

    <p>The more you look on devices, the more you are affected by shining or flashing lightning, hurting your eyes, reducing the battery wastage, having burn affects, show too many blue pixel lights not good for your eyesight, etc.</p>

    <p>This is why developers like dark modes. It helps reducing the noise of light your eyes has to blend out.</p>

    <p>So we have a populating growing ambition to allow dark mode on apps and by webpages and by browsers, all over.</p>

    <p>Therefore we need to clear some things out, since we have too many players:</p>

    <ol>
        <li>At first it started with very single webpages and apps giving a dark mode or dark theme to enable.<br />
        This is good, since you decide which you prefer. And in some cases, like developed for the pure theme with upcoming Serendipity Styx 3.7, you can easily switch it by a button.<br />
        &nbsp;</li>
        <li>Then it dropped over to systems, like android for example, which allowed to set a dark or light mode preference. The more that came into play, the more the system developers thought of generally turning everything dark.<br />
        But this shaky, since a machine even with good algorithms cannot really decide what looks good or not. Down to the bottom they just turn light into the opposite dark color and vice versa. That only works good as simple as that on pages which are designed as simple as that!<br />
        <br />
        So we have apps and the system.<br />
        &nbsp;</li>
        <li>At last the Browsers started to take over and made the confusion complete.<br />
        Browsers have themes. These can be light or dark and influence the whole frame behaviour of your magic monocle.<br />
        Then they have modes, which allow to overwrite certain colors of webpages, eg. for link colors.<br />
        And they can depend on light themes forcing dark pages, light themes not doings such stuff, dark themes with dark forced pages and dark themes with untouched webpage colors.</li>
    </ol>

    <p><strong>But wait!</strong> Didn't you say there are system dark modes too? <strong>Right!</strong> Browsers have to take this conditions too.<br />
    <br />
    With Firefox 95, which just arrived in the public, you will see this affect. Sudden pages return dark without being explicitly set to, depending on settings you might have taken in your system, browser or application before.<br />
    Firefox for example has a "<em>ui.systemUsesDarkTheme</em>" configurable config variable, which is set by your theme choice. The new, beside theme setting and color overwrites, is:<br />
    <br />
    ? <em>about:config</em><br />
    ? see “<em>layout.css.prefers-color-scheme.content-override</em>”<br />
    &nbsp;&nbsp;&nbsp; 0 = dark (users may want a light system style, but dark websites)<br />
    &nbsp;&nbsp;&nbsp; 1 = light (users may want a dark system style, but light websites)<br />
    &nbsp; &nbsp; 2 = system<br />
    &nbsp; &nbsp; 3 = browser theme (default original setting = 3)<br />
    <br />
    This check and set can help to restore behaviour you have been used to.</p>

    <p><strong>Really!</strong> <em>Didn't I say this before? I like dark modes!</em> 😀</p>

 </div>
</div>
