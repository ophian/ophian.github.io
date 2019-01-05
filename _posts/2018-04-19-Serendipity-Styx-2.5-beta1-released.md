---
layout: post
title: Serendipity Styx 2.5-beta1 release is on the road
last_modified_at: 2018-11-06T13:33:00+00:00
---

Styx 2018/1 - The 2.5-beta1 release is ready for attention! Check the [ChangeLog](https://github.com/ophian/styx/blob/2.5-beta1/docs/NEWS) for details!
Styx should now be PHP 7.2.x ready and requires PHP from 5.5+!

## Styx 2.5-beta1 runs (...some highlights)

  - Various changes for encryption and hash generation were sorted out. In example, PHP 7.1.3+ now uses a GCM SSL encryption, which forces to create a new login cookie, if in use.
  - Multi cleanup for old bundled PEAR-libs and compatibility modes vs. update external libs (Paragonie, simplePie, Pear, Smarty).
  - Various bug fixes, alongside with improvements like for the PLAIN TEXT Editor.
  - Set default Standard Backend 'template_backend' to Styx (2styx).
  - Add new "bootstrap 4" theme.
  - Multi changes and fixes for the Backend comments list, likewise the new moderate on/off buttons, or the new pending comment _hideaway_.
  - Regarding the European **G**eneral **D**ata **P**rotection **R**egulation Act, taking action in mid-May, all plugins and themes were changed to collect "legal impact" information data for the newly added serendipity_event_dsgvo_gdpr plugin, which adds "legal consent" actions to user forms or even the blog.
  - Themes changes were made for consistency (serendipity message selectors), for GDPR (in clean-blog, skeleton, timeline) and real improvements for post comment author owners (in 2k11, next).
  - The NL2BR plugin found a bad interpretation of the ISO-lation tag option and improved the NL2P (_experimental_) option. Please review your settings on upgrade!
  - Again some improving changes in the language constants.
  - Last, but not least, a new option arrived, to run secured HTML comments. This option allows having coding example parts in comments and comments generally displayed more nicely. Since being a heavy change with "security impact", this requires CHECKED comments, which should be your owners interest anyway!

See [download](https://github.com/ophian/styx/releases/tag/2.5-beta1)