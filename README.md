
![Latest Release](https://img.shields.io/github/v/release/SpellholdStudios/Valerie_NPC?include_prereleases&color=darkred)<a name="top" id="top"> </a>
![Platform](https://img.shields.io/static/v1?label=platform&message=windows%20%7C%20Mac%20%7C%20linux&color=informational)
![Language](https://img.shields.io/static/v1?label=language&message=English%20%7C%20Russian&color=limegreen)


<div align="center"><h1>Valerie NPC</h1>

<h3>A Spellhold Studios mod for Baldur's Gate I (Tutu, Baldur's Gate Trilogy and BG:EE)<h3>

</div><br />


**Author:** Tempest  
**Mod Website and Forum:** <a href="http://www.shsforums.net/forum/617-valerie/">Valerie NPC</a>  

## 

[Read the mod's readme](https://spellholdstudios.github.io/readmes/valerie-readme-english.html)

[Download the mod at Spellhold Studios](http://www.shsforums.net/files/file/1041-valerie/)<br>

&nbsp;


## 

## <a name="intro" id="intro"></a>Overview

With tensions rising between Baldur's Gate and Amn, and rumors of unnatural disasters plaguing Amnish territory on the Sword Coast, the Cowled Wizards of Amn have become involved in the looming conflict. Dedicated to controlling the use of magic in Amn and destroying magical threats to that nation, on the Sword Coast they act in support of the Amnish army. And with the rumors of demons in the mines of Nashkel, one young Cowled Wizard has taken it upon herself to learn the truth of the matter. Adventurers willing to work with a Cowled Wizard will find a willing ally in their Nashkel investigations and beyond.

The Valerie NPC mod contains a friendship for a PC of any race and gender with flirt opportunities for both genders that can be considered PG material.

<hr>


## <a name="versions" id="versions"></a>Version History

#### Version 1.2 ( August 2020)

- TODO Added *valerie.ini* metadata file to support AL|EN's "Project Infinity".
- TODO Replaced `AUTHOR` keyword with `SUPPORT`.
- Added missing `HANDLE_CHARSETS` function to convert string entries for EE games.
- Added Modmerge check for SoD games.
- TODO Added missing `REQUIRE_PREDICATE` process to avoid installing the mod in inaccurate games.
- TODO Added component `DESIGNATED` number and "*valerie_npc_for_bg*" `LABEL`.
- Externalized tp2 code into *main_component.tpa* library for more comfortable readability and maintenance.
- Commented code as much as possible.
- TODO Replaced `GAME_IS` conditions with variables checks to speed up install time.
- TODO Added EET compatibility.
- SoD/EET/BGT compatibility: as she has no content for those games yet, Valerie will no longer remain in the party at SoD and BGT transitions.
- fw4800.baf: Added "*Continue()*" to the script block that is patched via `EXTEND_TOP`.
- dialogues: fixed a typo wrongly patching t2val.d (bt2val.d) and added eet variables when relevant (t2valj.d).
- Updated cpmvars files.
- Cleaned up old ids entries patch replaced with more recent BG2 Fixpack one and removed animate.ids patching that was ruining Infinity Animations fixes if installed after IA.
- Simplified area type flagging and Tutu area script assignment patching.
- TODO Fixed Valerie portraits in EE games.
- Added Russian translation (by JamesMaxwell & Arcanecoast.ru).
- Traified.
- TODO Updated deprecated modding tools links.
- TODO Re-formated, updated and renamed readme file to *valerie-readme-english.html*, then moved it into new readme folder.
- TODO Removed useless files.
- Lower cased files.
- TODO Included Linux and Mac Os X versions in the same package (thanks AL|EN's Infinity Auto Packager tool!).
- Added archive libiconv-1.9.2-1-src.7z with iconv licence info.
- Updated WeiDU installer to v246.
- TODO Uploaded mod to official Spellhold Studios GitHub mirror account.

## 

#### Version 1.1 (11 January 2013)

- Added stringfixer.
- Updated WeiDU installer.

## 

#### Version 1.0 (5 January 2013)

- Initial release.
<div align="right"><a href="#top">Back to top</a></div>
