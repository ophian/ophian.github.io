---
layout: post
title: Serendipity Styx 3.2.0 release
last_modified_at: 2020-12-18T11:03:00+00:00
---

N° 2020/9 - The Serendipity Styx 3.2.0 release <img class="php8" src="/i/b/logo_php8.svg" alt="php8" width="160" height="48">

Serendipity Styx 3.2.0 was delayed a little bit, heading to next 3.3, since the new **PHP 8.0.0** release just dropped in when it was quite ready to look out of the door. 
So I spend 3 more weeks to make it a **PHP 8 ready** release!
Now you can start right off using the latest PHP. It does not say the PHP 8 fixes are already complete, but all main functions just for starting a new blog without complains are done. Time will tell for extended features off the wider Mainstream.

## Styx 3.2.0 applies

  - Once more Styx continued its work to clean up old occurrences for the new Series 3 branch.
  - Styx 3.2 has improved for database storage. Since MySQL by ourselves was and is used as a synonym for MariaDB, which is our recommended database, Styx 3.2 now uses the **ARIA** storage engine format. Multibyte UTF-8 INDEX key length tweaks are done by the differing versions available, which are old MyISAM or InnoDB engines, or MariaDB 10.3, 10.4, 10.5 releases. The best one available is MariaDB 10.5 which allows us to not touch any INDEX keys for length limits. For Styx upgraders this means that we will have to wait until this latter version has landed in Mainstream before we start touching old database installs on UPGRADE.
  - Improved "pure" theme for some special cases
  - Added the new "**B46 [Black Edition]**" bootstrap theme for latest 4.5.3 release. The expected bootstrap 4.6.0 version did not make it in time.
  - Added the new "**PSG**" theme example, for a theme based start grid page.
  - Fixed some buggy WebP variation image edge cases which might have hit you playing around (read the ChangeLog on how to react)
  - Improved the media grid in filter(ed) lists, and to remember per User Cookie
  - Iconized several backend instances for viewability, **like**: MediaLibrary filtered status in the media toolbar, **and** stackable Plugins by their status, **and** for hotlink media shares to ML backend media properties, **and** for "has hidden suboption(s)" plugins option placeholders
  - Added lots of improvements and bug fixes for PHP methods, language constants, core plugins, and/or other internal methods. Ask for help on future language system changes!
  - Upgrade some libraries, like the basic Rich Text Editor, etc.
  - and more!

Check out the [ChangeLog](https://github.com/ophian/styx/blob/3.2.0/docs/NEWS) for details, or even read the commit [history](https://github.com/ophian/styx/commits/3.2.0) for more. See [download](https://github.com/ophian/styx/releases/tag/3.2.0)
