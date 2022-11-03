---
layout: post
title: Serendipity Styx 4.0-beta1 release
last_modified_at: 2022-10-03T10:42:00+00:00
---

N° 2022/06 - The Serendipity Styx 4.0-beta1 release <img class="php8" src="/i/b/logo_php8_2.svg" alt="php8.2" width="160" height="48">

### 4.0-beta1 - Autumn Edition

Due to the new major version jump, this version requires a short beta release cycle.
I am happy when you help getting this to be a smooth release.

## Styx 4.0-beta1 contains

  - Minimum requirement is now set to PHP 7.4 (and it will not last long until PHP 8 only is required for futures, roundabout next summer)
  - Added a new function to convert strftime() date formats to the dateTime Interface successor up from PHP 8.2. This PHP version requires the intl/icu extension loaded
  - Generate strong random & secure password suggestions for user forms
  - Fixed some odd or Methusalem bugs and made improvements in the workflow behaviour
  - Update some assets for themes, like jQuery or bootstrap and for bundled-libs, like Smarty, SimplePie, RichText (CKE) etc.
  - Improved the import class and specific importers to match changed user password hashing since S9y 1.5 and on
  - Removed and/or beta-upgraded importer files, checked by their latest major release database requirements. The WordPress (only) importer was checked to run!
  - Improved Plain Text comments mix-ins for now used HTML comments on elder blogs
  - Improved some themes for edge cases or other oddities
  - Update some lang description constants
  - Cleanups for outdated considerations

Check out the [ChangeLog](https://github.com/ophian/styx/blob/4.0-beta1/docs/NEWS) for details, or even read the commit [history](https://github.com/ophian/styx/commits/4.0-beta1) for more. See [download](https://github.com/ophian/styx/releases/tag/4.0-beta1).
