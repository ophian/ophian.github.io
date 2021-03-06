---
layout: post
title: Serendipity Styx 2.6.0 - A Back-to-the-Roots Release
last_modified_at: 2020-12-25T10:54:00+00:00
---

N° 2018/4 - Long years of activity and continuously deep development have finally brought this shiny new release up to your attention.

<div markdown="1">
 <div>

<h2>So what is the difference?</h2><br>

<p>The difference is under the hood. since <strong>Serendipity Styx</strong> does hold what was <strong>promised</strong> with Serendipity for such a long time.</p>

<p>The <strong>changes</strong> and <strong>fixes</strong> are <strong>uncountable</strong>. A very <strong>simple Serendipity user</strong> won't hardly ever notice, except for some obvious GUI related changes, since <em>‘he</em>’ does not care of all the extended promises, which do not work for the reason of being <em>unfinished</em> from start or being <em>borked</em> by in past added tweaks or the fluent development. The one writes some <strong>articles</strong>, uploads an <strong>image</strong>, uses some <strong>categories </strong>and may even get some comments. <strong>Thats it</strong>!<br />
<em>Nothing to worry about, nothing to care.</em> As you might know, a production release is designed to be very forgiving and let the users simply do their work. <em>All seems well-matched and pleasant ready for extended future usage... </em></p>

<p><strong>Yes</strong>, this is where the <strong>Serendipity Styx</strong> Edition comes into place. Its not there to be <em>overconfident</em> and say it is <em>ever ready</em>, since the author himself is always impressed and amazed of how much of those <em>bugged</em> or <em>unfinished</em> properties he has to <strong>face</strong> and to <strong>fix</strong> in the ongoing release cycles. <strong>But</strong> since having fixed an enormous amount of bugs and failing design patterns, <strong>Serendipity Styx</strong> is proud to say, that it has been done as much as possible, to polish and tune this up and keep the tremendous goal alive of being <strong>simple</strong> and <strong>infinite extendable</strong> together at the same time. All the past Designers of Serendipity conceptualised a system that kept to be incredibly <strong>modern</strong> and <strong>predictive</strong>, which is not that easy seeing all these fast and immense development progresses in these first two decades of the <strong>21st</strong> century, regarding programming languages, design patterns and security.</p>

<h2>Now, what exactly has happened since the Beta?</h2><br>

<p><strong>Serendipity Styx</strong> decided to go <strong>back to the roots</strong>. It changed the backend to where it belongs to, the <strong>default</strong> theme. While Serendipity <strong>2.0</strong> was developed over 2 years of heavy picking and replacing, a very lot of old XHTML and HTML4 code was replaced and therefore it was quite obvious to append the new developed Smarty Backend to the HTML5 <strong>Standard</strong> theme, which is <strong>2k11</strong>. Since 2k11 sloughed the previously used Standard Theme <em>Bulletproof</em>, it tried to replace and take apart the “<strong>default</strong>” theme, which even got more and more a forgotten fallback template quarry to take out old and unfocused things. The bleeding rest. To be blunt: <em>2k11 tried to take over</em>. This even got more and more relevant with the new backend and was a long going process of around 5 years in total. It was not that much in focus to think about the real relevance of <strong>default</strong> and <strong>standard</strong>. <em>And that even more, since the Standard Theme name is held in the $serendipity['defaultTemplate'] variable, which does not really help to sharpen the difference.</em> 😉</p>

<p><strong>Back to the roots</strong> means in these terms: <strong>Default</strong> is the place of the <strong>last fallback cascade</strong>, not that much the present or absolute recommended frontend theme. It is the<strong> Serendipity</strong> <strong>Theme Basement</strong>, which is the right place to put a <strong>backend</strong>, since everything ends up here. A <strong>Standard Theme</strong> by comparison is just a current set, used and recommended <strong>standard</strong> for the weblog <strong>frontend</strong>. All items that are relevant to fall back, like remaining images for example and not particularly bound to the standard, are found in “default”.</p>

<p>One benefit of this change - apart from the simplification of understanding - is to be able now to simply force a standard theme change, without having to deal with the backend and fallback. <strong>That’s what it’s for.</strong></p>

<h2>What else?</h2><br>

<p>A lot of <strong>deep inspection</strong> went into debugging the workflow between the <strong>core</strong> and some main external plugins <strong>logic</strong> and the Smarty template <strong>compiler</strong>. Since Smarty has an error suppressing handler it does not yell about unset or false variables, as long as you do ask the right conditional question. Answers may are others than you expect, but since being suppressed are not always that relevant to the conditional output. We have lived with it for years. <strong>Serendipity Styx</strong> did try to find all these unsharp needles and fixed them in the release themes. This is why you are strongly recommended to start a <strong>new theme copy</strong>, if already working with a copy template. For sure all additional themes over Serendipity-Origin repositories have not been touched for this relation!</p>

<p>Serendipity Styx <strong>would really</strong> like to take them over into this repositories account, to get rid of remaining Smarty2 API usage, forcing the core to hold backward compatible methods and fix the most prominent of these mentioned “bugs” above. But sadly this all takes too much of extremely valuable free memory GitHub space, until someone sponsors Styx with a real paid unlimited account and even something more like being a <strong>Patreon</strong>.</p>

<p>The Serendipity Styx Book [<strong>de</strong>] and the Serendipity Styx site documentary have been updated to already reflect some or most of these changes; Also the upgrade guide in the [<strong>en</strong>] documentary installation notes was partly reworked. It all is an ongoing process and I hope I haven’t missed that much to rewrite.</p>

<p>The <strong>Spartacus</strong> plugin was touched to get rid of the custom Styx pointer and <strong>ZARATHUSTRA</strong> (a local plugin version synchronizer) was added to the upgrade tasks. For all these changes you need to allow the upgrade tasks to run automatically for you.</p>

<p>And of course, Serendipity Styx is deeply tested with the latest <strong>PHP 7.2</strong> release.</p>

<p>As a last-minute <strong>bonbon</strong> the maintenance section got extended with a so called "Theme Manager Clearance Spot". This will help you to quickly get rid of any private or additional themes in your themes directory, without having to start FTP once. Naturally benefits upgraders only.</p>

<p>&nbsp;</p>

<p>Have fun and be productive with <strong>Serendipity Styx</strong>!<br />
Ian Styx</p>

 </div>
</div>

As ever, read the [ChangeLog](https://github.com/ophian/styx/blob/2.6.0/docs/NEWS) or even the commit [history](https://github.com/ophian/styx/commits/2.6.0) for more. See [download](https://github.com/ophian/styx/releases/tag/2.6.0)
