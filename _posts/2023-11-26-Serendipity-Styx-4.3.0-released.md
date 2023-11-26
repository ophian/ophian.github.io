---
layout: post
title: Serendipity Styx 4.3.0 release
last_modified_at: 2023-11-26T18:32:00+00:00
---

N° 2023/08 - The Serendipity Styx 4.3.0 release <img class="php8" src="/i/b/logo_php8_3.svg" alt="php8.3" width="160" height="48">

### 4.3.0 - The Autumn Update Edition

This maintenance update is the last regular Serendipity Styx 4 series revision supporting the PHP 7.4+ Series. If nothing in the following development of next major Serendipity Styx version 5.0 is discovered, which needs an important backport refactoring, further only urgent bugfix or security point releases will be given. The previously announced change to PHP 8 minimum requirement was stashed and we now start developing Serendipity **Styx 5.0** up from **PHP 8.2** as the minimum.

As already pointed out: With the release of PHP 8.3 the EOL for PHP 8.0 has arrived. Please update to latest available PHP version for your system, to be able to work with all features Serendipity Styx supports.

Some important refactoring and future update changes have been made. So this is not only a pretty good maintenance upgrade, it is supposed to be a **must have** revision to positively checkout into the future of Serendipity Styx ! Read the changelog, please.

## Styx 4.3.0 spices

  - Ready for the new PHP 8.3 version
  - Refactor comment escaping, fixing a regression with valid code snippets on re-edit cases
  - Improve some icons, helper constants and documentary links
  - Improve the backend startpage overview plugin API for plugin hooked "section" placement, so it better works as a normal dashboard widget
  - Upgrade some template and core assets, eg. jQuery lib, Smarty, etc.
  - Retired plugin "serendipity_event_smartymarkup" due to Smarty changes
  - Improve the [ pure ] standard theme by adding "back-to-top" anchor jumpers
  - At long last, allow other core themes to follow an elder [ core / pure ] improvement, to exclude empty (blog) years in the archives (list)s
  - Refactor and fix the plugin zombies comparison checkup maintenance task
  - Improve the MediaLibrary workflow for better RichText editor placement
  - Add logic to check an automatic upgrade GO for the next Styx major 5 series
  - Prepare Spartacus to check and run "additional_plugins" updates over the new "legacy" named Github branch, until next major Styx 5.0 revision has settled
  - Added a remote ticker notification system for urgent update and future preparation notifications
  - Certain bug fixes for several core tasks
  - Improved the backend markup indents for the main content where possible


Check out the [ChangeLog](https://github.com/ophian/styx/blob/4.3.0/docs/NEWS) for details, or even read the commit [history](https://github.com/ophian/styx/commits/4.3.0) for more. See [download](https://github.com/ophian/styx/releases/tag/4.3.0).

