---
layout: post
title: Serendipity Styx 3.3.1 release
last_modified_at: 2021-03-14T20:09:00+00:00
---

N° 2021/2 - The Serendipity Styx 3.3.1 release <img class="php8" src="/i/b/logo_php8.svg" alt="php8" width="160" height="48">

Heading to Styx 3.4 some odd behaviours mainly for PHP 8 were found that made it happen to release an intermediate point bugfix release.

## Styx 3.3.1 applies

  - Fix history plugin for multiyears with a non matching leap day case
  - Some new filter status state icons were added
  - The [ Pure, PSG, Dude, B46 ] themes got some minor improvements and fixes
  - In the core, a cased PHP 8 (hidden) error by an empty frontend stylesheet call was fixed
  - Improved multi engine themes configuration load behaviour, fixing an old bug
  - Estimated for 3.4, removed deprecated old default widgets from dashboard overview (and adding an upgrade task to clean up)
  - Fix some PHP 8 installer issues with SQLite and PostreSQL databases
  - Update template assets jQuery lib to 3.6.0
  - some other fixes

Check out the [ChangeLog](https://github.com/ophian/styx/blob/3.3.1/docs/NEWS) for details, or even read the commit [history](https://github.com/ophian/styx/commits/3.3.1) for more. See [download](https://github.com/ophian/styx/releases/tag/3.3.1)
