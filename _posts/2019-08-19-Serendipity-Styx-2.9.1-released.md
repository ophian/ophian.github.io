---
layout: post
title: Serendipity Styx 2.9.1 release
last_modified_at: 2019-08-20T18:47:00+00:00
---

Styx 2019/4 - The Serendipity Styx 2.9 branch 2.9.1 release.

Since heavy development of upcoming Serendipity Styx 3.0 is making huge progress, several issues were found in the 2.9 branch too. This is a point BugFix release.

Having laid in bed with Yoko, this is the Woodstock success Revision. No Chaos - just Peace and Happiness - and the destroying beauty of Jimis SSB - **Just Whow!** :)

<div markdown="1">
 <div>

<h2>Branching your Autoupdate Notifier for 2.9.x</h2><br>

<p>Since having already noted that upcoming <strong>Styx Next</strong> is a major upgrade (see <a href="https://ophian.github.io/2019/06/01/Serendipity-Styx-2.9.0-released/">2.9.1 post</a>), which will require a modern PHP 7 version, we have to give some <strong>Important Notes</strong> about branches and future upgrades.</p>

<p>The current <em>alpha</em> state of the masters branch NEXT Development already requires <strong>PHP 7.1.3</strong> as the absolute Minimum.
This may even raise up to a required PHP 7.3.x version before (beta) release(s) in the next few months, in Autumn 2019.
If you still are on Debian 9 last stable <strong>Stretch</strong> for example, you actually have a PHP 7.0.x version running that will not change until a Debian 10 Buster upgrade is performed.
Even though it is possible to upgrade such a system to a newer PHP version, even provided by its Maintainer, some of you <em>have</em> or <em>want to</em> stick to PHP 5.6 or PHP 7.0 a little longer.</p>

<p>To not get in conflict with the upcoming major Autumn 3.0 upgrade(s), you <strong>have to</strong> set up a <strong>new</strong> Update-RELEASE-file <strong>URL</strong> in your Backend Configuration Panel.
Open <strong>Configuration</strong> - <strong>General Settings</strong> - and see the option <strong>Update RELEASE-file URL</strong>. There you add this new URL, pointing to the branch RELEASE file and submit the form:
<em>https://raw.githubusercontent.com/ophian/styx/styx2.9/docs/RELEASE</em></p>

<p>Now you will only get future update request notes if a new branch release, like (next) 2.9.2 is prepared to supply.
If you then are ready for upcoming Styx 3.0 Next, you just change it back to the master branch at:
<em>https://raw.githubusercontent.com/ophian/styx/master/docs/RELEASE</em></p>

 </div>
</div>


## Styx 2.9.1 runs (...some highlights)

  - Bugfix some non violent extended features of Serendipity (in the MediaLibrary and Plugins)
  - Fix some Themes extending features
  - Added global frontend styles for the new figure/figcaption support, and let the CKEditor notice these elements
  - Fixed the wrong counted assign for the (optional) stable Archive
  - Some language constant fixes and improvements

Check out the [ChangeLog](https://github.com/ophian/styx/blob/2.9.1/docs/NEWS) for details or even read the commit [history](https://github.com/ophian/styx/commits/2.9.1) for more. See [download](https://github.com/ophian/styx/releases/tag/2.9.1)
