---
layout: post
title: Serendipity Styx 5.0-beta2 release
last_modified_at: 2025-08-01T14:28:00+00:00
---

N° 2025/02 - The new Serendipity Styx 5.0-beta2 of new major release <img class="php8" src="/i/b/logo_php8_4.svg" alt="php8.4" width="160" height="48">

Requirements: At least PHP 8.2 !!

Better PHP 8.4 !! And it looks like we are already prepared for upcoming PHP 8.5 😀 !!

### 5.0-beta2 - A Beta-Test release of new Serendipity Styx 5.0

THANK YOU for helping us to finish and finalize this new Serendipity Styx 5.0 major version ! Read the ChangeLog, please.

## Styx 5.0-beta2

  - Fix edge case types for some radio buttons, serendipity_track_url, serendipity_sendComment, traverse_plugin_dir, get_event_plugins and serendipity_setCookie
  - Avoid placing empty category names in Frontend sidebar lists
  - Fix Extended descriptions for XML (RSS) icons in some sidebar plugins
  - Fix broken [ko] USE_CACHE_DESC constant, and silence serendipity_MB_LOADED define warnings
  - Fix an old BUG with MYSQLi PORT settings
  - Fix case sensitive directory name issue for case-sensitive filesystems in TinyMCE plugins
  - Remove outdated feedburner and subToMe syndication references
  - and more ...

It is expected that we will get some exception errors with non-yet converted plugins that are not so much mainstream. If you run into these please file a [core issue](https://github.com/ophian/styx/issues) or [plugin issue](https://github.com/ophian/additional_plugins/issues) over at GitHub or mention them in the [discussions](https://github.com/ophian/styx/discussions). Just paste the error exception with the stack trace and explain what you did to get there, so it is easy to reproduce. Normally you can just resume with your work afterwards by going back in your browsers history or by returning to the start page of your Backend or Frontend.

Thanks again; See you on next 😎 Serendipity Styx 5.0 revisions !😃

Check out the [ChangeLog](https://github.com/ophian/styx/blob/5.0-beta2/docs/NEWS) for details, or even read the commit [history](https://github.com/ophian/styx/commits/5.0-beta2) for more. See [download](https://github.com/ophian/styx/releases/tag/5.0-beta2).

