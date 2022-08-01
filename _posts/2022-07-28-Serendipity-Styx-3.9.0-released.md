---
layout: post
title: Serendipity Styx 3.9.0 release
last_modified_at: 2022-07-29T10:21:00+00:00
---

N° 2022/04 - The Serendipity Styx 3.9.0 release <img class="php8" src="/i/b/logo_php8_1.svg" alt="php8.1" width="160" height="48">

### Summer Edition

This mainly is another bugfix & maintenance release with some extraordinary readiness for upcoming PHP 8.2. (The new PHP 8.2 logo will be added to this blog post when officially available.)
With PHP 8.2, the Styx AVIF image support is now complete, since not relaying to workarounds or having to disable certain image actions.
The new AVIF image format - as to announce again - is something you should expect with excitement for your images, since its encoding compression rate can be quite astonishing without any real visual loss. See an extreme example output for an ESA astronomic image of type image/jpeg with ~1.350 KB, compressed to WebP with ~480 KB and with AVIF to ~16 KB. Imagine what this means watching galleries or pages with lots of images when using the picture-container format.

## Styx 3.9.0 contains

  - Fixed shared installations for tokenized deployment installs
  - Improved MediaLibrary actions
  - Finetuned MediaLibrary AVIF image variation relations for PHP 8.2
  - General fixes and improvements for upcoming PHP 8.2
  - Added additional notes to several lang option description constants
  - Add new processing "busy"-focus to several backend parts when probably taking long
  - Update CKEditor and Bootstrap 4/5 assets
  - Update Smarty lib to support PHP 8.2
  - Other consistency and future improvements

Check out the [ChangeLog](https://github.com/ophian/styx/blob/3.9.0/docs/NEWS) for details, or even read the commit [history](https://github.com/ophian/styx/commits/3.9.0) for more. See [download](https://github.com/ophian/styx/releases/tag/3.9.0).
