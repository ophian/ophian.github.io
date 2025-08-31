---
layout: post
title: Serendipity Styx 5.0-rc1 release
last_modified_at: 2025-08-31T10:26:00+00:00
---

N° 2025/02 - The new Serendipity Styx 5.0-rc1 of new major release <img class="php8" src="/i/b/logo_php8_4.svg" alt="php8.4" width="160" height="48">

Requirements: At least PHP 8.2 !!

Better PHP 8.4 !! And it looks like we are already prepared for upcoming PHP 8.5 😀 !! Latest PHP 8.5 Beta2 runs fine.

### 5.0-rc1 - A Release-Test-Candidate of new Serendipity Styx 5.0 heading to final release

THANK YOU for helping us to finish and finalize this new Serendipity Styx 5.0 major version ! Read the ChangeLog, please.

## Styx 5.0-rc1

  - Finally all additional_plugins have raised up for Serendipity Styx 5.0. Styx 5.0 now checks all plugins root directory for UTF-8 encoded lang files only.
  - Fix some lasting comment handling type issues
  - Fix libraries for type issues or PHP deprecations
  - Fix some API parameter and return type issues for PDO::PostgreSQL.
  - Update to jQuery v4.0.0-rc.1 which brings in a bunch of removed methods we need to check for - and which looks promising
  - Finally removed the plug plugin old s9y image logo
  - Improved styles
  - and more ...

It is expected that we will get some exception errors with non-deeply checked plugins that are not so much mainstream. If you run into these please file a [core issue](https://github.com/ophian/styx/issues) or [plugin issue](https://github.com/ophian/additional_plugins/issues) over at GitHub or mention them in the [discussions](https://github.com/ophian/styx/discussions). Just paste the error exception with the stack trace and explain what you did to get there, so it is easy to reproduce. Normally you can just resume with your work afterwards by going back in your browsers history or by returning to the start page of your Backend or Frontend.

Thanks again; See you on next 😎 Serendipity Styx 5.0 revisions !😃

Check out the [ChangeLog](https://github.com/ophian/styx/blob/5.0-rc1/docs/NEWS) for details, or even read the commit [history](https://github.com/ophian/styx/commits/5.0-rc1) for more. See [download](https://github.com/ophian/styx/releases/tag/5.0-rc1).

