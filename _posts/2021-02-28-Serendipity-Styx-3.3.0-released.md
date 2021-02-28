---
layout: post
title: Serendipity Styx 3.3.0 release
last_modified_at: 2021-02-28T18:04:00+00:00
---

N° 2021/1 - The Serendipity Styx 3.3.0 release <img class="php8" src="/i/b/logo_php8.svg" alt="php8" width="160" height="48">

Due to PHP 8 and its stricter error reporting many hidden flaws have been ironed out.

## Styx 3.3.0 applies

  - Once more Styx continued its work to clean up old occurrences for the new Series 3 branch, in example the old mysql and sqlrelay db include files and remaining type references
  - Removed outdated feed RSS 0.91 and ATOM_03 templates files and references
  - Allow backend configuration sets for plugin_html_nugget textareas
  - Strongly improved the "**B46 [Black Edition]**" bootstrap theme for having advanced features for the lists view
  - Improve "**Spartacus**" for reading the full requirements array, which allows to check extended plugin requirements on UPGRADE
  - Removed outdated "bulletproof" core template to additional_plugins pool
  - Removed "pure19" core template completely
  - Updated Smarty and Rich Text Editor (ckeditor) library assets
  - Added lots of improvements and bug fixes for themes all over
  - Added more slowly growing (experimental) support for upcoming file format "avif", an AV1 codec based new image format. PHP 8 and GDlib still do not not support it yet. So, please wait!
  - Improved the serendipity_die() mode for errors vs maintenance mode
  - Improved core APIs
  - and more!

Check out the [ChangeLog](https://github.com/ophian/styx/blob/3.3.0/docs/NEWS) for details, or even read the commit [history](https://github.com/ophian/styx/commits/3.3.0) for more. See [download](https://github.com/ophian/styx/releases/tag/3.3.0)
