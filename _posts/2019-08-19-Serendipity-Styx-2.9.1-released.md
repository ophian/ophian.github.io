---
layout: post
title: Serendipity Styx 2.9.1 release
last_modified_at: 2019-08-20T17:18:30+00:00
---

Styx 2019/4 - The Serendipity Styx 2.9 branch 2.9.1 release.

Since heavy development of upcoming Serendipity Styx 3.0 is making huge progress, several issues were found in the 2.9 branch too. This is a point BugFix release.

Serendipity Styx is PHP 7.3 READY and requires PHP from 5.5+!
This 2.9 branch is the LAST edition supporting the old PHP 5 Series and will only get security or important bugfixes as point releases.
Serendipity Styx NEXT will be 3.0, which will require a modern PHP 7.x version.

## Branching your Autoupdate for 2.9.x

Since having already noted that upcoming **Styx Next** is a major upgrade, which will require a modern PHP 7 version, we have to give some **Important Notes** about branches and future upgrades.

The current _alpha_ state of the masters branch NEXT Development already requires **PHP 7.1.3** as the absolute Minimum.
This may even raise up to a required PHP 7.3.x version before (beta) release(s) in the next few months, in Autumn 2019.
If you still are on Debian 9 last stable **Stretch** for example, you actually have a PHP 7.0.x version running that will not change until a Debian 10 Buster upgrade is performed.
Even though it is possible to upgrade such a system to a newer PHP version, even provided by its Maintainer, some of you _have_ or _want to_ stick to PHP 5.6 or PHP 7.0 a little longer.

To not get in conflict with the upcoming major Autumn 3.0 upgrade(s), you **have to** set up a **new** Update-RELEASE-file **URL** in your Backend Configuration Panel.
Open **Configuration** - **General Settings** - and see the option **Update RELEASE-file URL**. There you add this new URL, pointing to the branch RELEASE file and submit the form:
_https://raw.githubusercontent.com/ophian/styx/styx2.9/docs/RELEASE_

Now you will only get future update request notes if a new branch release, like (next) 2.9.2 is prepared to supply.
If you then are ready for upcoming Styx 3.0 Next, you just change it back to the master branch at:
_https://raw.githubusercontent.com/ophian/styx/master/docs/RELEASE_

## Styx 2.9.1 runs (...some highlights)

  - Bugfix some non violent extended features of Serendipity (in the MediaLibrary and Plugins)
  - Fix some Themes extending features
  - Added global frontend styles for the new figure/figcaption support, and let the CKEditor notice these elements
  - Fixed the wrong counted assign for the (optional) stable Archive
  - Some language constant fixes and improvements

Check out the [ChangeLog](https://github.com/ophian/styx/blob/2.9.1/docs/NEWS) for details or even read the commit [history](https://github.com/ophian/styx/commits/2.9.1) for more. See [download](https://github.com/ophian/styx/releases/tag/2.9.1)
