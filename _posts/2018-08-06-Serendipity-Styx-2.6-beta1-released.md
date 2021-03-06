---
layout: post
title: Serendipity Styx 2.6-beta1 release
last_modified_at: 2020-12-25T10:54:00+00:00
---

N° 2018/3 - Serendipity Styx Edition 2.6-beta1 has lots of small improvements and/or fixes for the general workflow and extended Serendipity features. Check the [ChangeLog](https://github.com/ophian/styx/blob/2.6-beta1/docs/NEWS) for details!

  - Two of them - regarding comments - are the emergency spamblock killswitch-option to also hide the frontend **commentforms** and the new timeframe-option to disable comments after X days, i.e. when you don't want to allow old entries comments, which usually don't get very much valid comments after a certain amount of time.
  - The NL2BR-plugins P-option part was reworked, since the old code - not very ambitious - did not catch more advanced markups. This still is not absolutely bulletproof and you should always check what it produces in the frontend. The Styx recommendation for easy and extended use is to allow the WYSIWYG-Editor, in special the advanced CKEplus Plugin Edition.
  - Smarty and **jQuery** libs were updated. The latter even jumped up two major revisions to v.3.3.1, so quite some old methods won't work any more or be called deprecated. This will only hit you if using an old plugin that has not been updated or been recognised to do so, or if using custom themes with old jQuery javascript code. It does not make sense to keep unsupported libraries because of laziness! 😃
  - The **Spartacus** plugin moved from custom mirror to Styx GitHub repository in the Spartacus configuration. All other mirror options were removed, since not making any sense with the Styx Edition. Additional themes are still fetched by the s9y origin repository. Additional themes most likely are highly outdated and should only be used with some deeply spend love. The Styx repository would certainly do some groundwork help for you, but as long as using this free and limited GitHub OpenSource account, without any Sponsor, this is not possible!
  - Since ImageMagick-7 versions more and more take place on servers, the Serendipity image processing order using different Operator-types and Setting parameters was re-checked and fixed, were it was silently ignored or tolerated by IM 6 versions and failed with the more strict ImageMagick-7 Series.
  - The most changing part went into debugging the Smarty template variables, without silenced undefined or unclear variables, which found quite some bugs or misinterpretations. This changed a lot of logic and variable workflow. Therefore the best recommendation for **template copies** is to **start from scratch**, to get all the tiny or bigger changes for the release themes, while most theme copies just do some user stylesheet changes.

As ever, read the ChangeLog or even the commit history for more. See [download](https://github.com/ophian/styx/releases/tag/2.6-beta1)