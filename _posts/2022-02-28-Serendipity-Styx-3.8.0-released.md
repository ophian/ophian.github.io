---
layout: post
title: Serendipity Styx 3.8.0 release
last_modified_at: 2022-03-07T17:32:00+00:00
---

N° 2022/01 - The Serendipity Styx 3.8.0 release <img class="php8" src="/i/b/logo_php8_1.svg" alt="php8" width="160" height="48">

### Maintenance Release

This mainly is a maintenance release fixing bugs and for polishing other inconsistencies.
It also announces a new Serendipity Styx Book [de] revision for Styx 3.8, fetching up with the latest Serendipity Styx Edition development, including new example images. Parts of the main site "help center" were revisited too.

## Styx 3.8.0 applies the following

  - Lots of improvements for the [ pure ] (2022) theme, i.e. adding styles for various plugin and actions
  - Important fixes for the MediaLibrary synchronization tasks
  - Improve and extend image Variation (WebP/AVIF) handling for manually added images to the MediaLibrary
  - Fixes to strictly use unique media names in MediaLibrary only, regardless their position (please filter check your old data)
  - Fixed some very old bugs, i.e. routing a search request
  - Improve the comment filters
  - Fixes and improvements for the /summary/ permalink by arguments, also touched in themes
  - Upgrade some bundled and asset libraries
  - Other consistency and UI improvements

Check out the [ChangeLog](https://github.com/ophian/styx/blob/3.8.0/docs/NEWS) for details, or even read the commit [history](https://github.com/ophian/styx/commits/3.8.0) for more. See [download](https://github.com/ophian/styx/releases/tag/3.8.0).
