/* ================= *
 *  Valerie Banters  *
 * ================= */
BEGIN ~BT2VAL~

/* --------- *
 *  Jaheira  *
 * --------- */
CHAIN
IF 
~CombatCounter(0)
InParty("T2Val")
InParty("jaheira")
See("T2Val")
!See([ENEMY])
!StateCheck("jaheira",CD_STATE_NOTVALID)
!StateCheck("T2Val",CD_STATE_NOTVALID)
Global("T2ValJahTalk1","GLOBAL",0)~
THEN %JAHEIRA_BANTER% T2ValJahTalk1
@0 DO ~SetGlobal("T2ValJahTalk1","GLOBAL",1)~
== BT2VAL IF ~!Dead("mulahey")~ THEN @1
== BT2VAL IF ~Dead("mulahey")~ THEN @2
== %JAHEIRA_BANTER% @3
== BT2VAL IF ~!Dead("mulahey")~ THEN @4
== BT2VAL IF ~Dead("mulahey")~ THEN @5
== %JAHEIRA_BANTER% @6
== BT2VAL @7
== %JAHEIRA_BANTER% @8
EXIT

CHAIN
IF 
~CombatCounter(0)
InParty("T2Val")
InParty("jaheira")
See("Jaheira")
!See([ENEMY])
!StateCheck("jaheira",CD_STATE_NOTVALID)
!StateCheck("T2Val",CD_STATE_NOTVALID)
Global("T2ValJahTalk2","GLOBAL",0)~
THEN BT2VAL T2ValJahTalk2
@9 DO ~SetGlobal("T2ValJahTalk2","GLOBAL",1)~
== %JAHEIRA_BANTER% @10
== BT2VAL @11
== %JAHEIRA_BANTER% @12
== BT2VAL @13
== %JAHEIRA_BANTER% @14
== BT2VAL @15
== %JAHEIRA_BANTER% @16
== BT2VAL @17
== %JAHEIRA_BANTER% @18
== BT2VAL @19
EXIT

CHAIN
IF 
~CombatCounter(0)
InParty("T2Val")
InParty("jaheira")
See("Jaheira")
!See([ENEMY])
!StateCheck("jaheira",CD_STATE_NOTVALID)
!StateCheck("T2Val",CD_STATE_NOTVALID)
Global("T2ValJahTalk2","GLOBAL",1)
Global("T2ValJahTalk3","GLOBAL",0)~
THEN BT2VAL T2ValJahTalk3
@20 DO ~SetGlobal("T2ValJahTalk3","GLOBAL",1)~
== %JAHEIRA_BANTER%@21
== BT2VAL @22
== %JAHEIRA_BANTER% @23
EXIT

CHAIN
IF 
~CombatCounter(0)
InParty("T2Val")
InParty("jaheira")
See("Jaheira")
!See([ENEMY])
!StateCheck("jaheira",CD_STATE_NOTVALID)
!StateCheck("T2Val",CD_STATE_NOTVALID)
AreaType(FOREST)
Global("T2ValJahTalk4","GLOBAL",0)~
THEN BT2VAL T2ValJahTalk4
@24 DO ~SetGlobal("T2ValJahTalk4","GLOBAL",1)~
== %JAHEIRA_BANTER% @25
== BT2VAL @26
== %JAHEIRA_BANTER% @27
== BT2VAL @28
== %JAHEIRA_BANTER% @29
EXIT


/* -------- *
 *  Khalid  *
 * -------- */
CHAIN
IF 
~CombatCounter(0)
InParty("T2Val")
InParty("khalid")
See("Khalid")
!See([ENEMY])
!StateCheck("khalid",CD_STATE_NOTVALID)
!StateCheck("T1Val",CD_STATE_NOTVALID)
Global("T2ValKhaTalk1","GLOBAL",0)~
THEN BT2VAL T2ValKhaTalk1
@30 DO ~SetGlobal("T2ValKhaTalk1","GLOBAL",1)~
== %KHALID_BANTER% @31
== BT2VAL @32
== %KHALID_BANTER% @33
== BT2VAL @34
== %KHALID_BANTER% @35
EXIT

CHAIN
IF 
~CombatCounter(0)
InParty("T2Val")
InParty("khalid")
See("Khalid")
!See([ENEMY])
!StateCheck("khalid",CD_STATE_NOTVALID)
!StateCheck("T1Val",CD_STATE_NOTVALID)
Global("T2ValKhaTalk2","GLOBAL",0)~
THEN BT2VAL T2ValKhaTalk2
@36 DO ~SetGlobal("T2ValKhaTalk2","GLOBAL",1)~
== %KHALID_BANTER% @37
== BT2VAL @38
== %KHALID_BANTER% @39
== BT2VAL @40
== %KHALID_BANTER% @41
EXIT


/* --------- *
 *  Ajantis  *
 * --------- */
CHAIN
IF 
~CombatCounter(0)
InParty("T2Val")
InParty("ajantis")
See("Ajantis")
!See([ENEMY])
!StateCheck("ajantis",CD_STATE_NOTVALID)
!StateCheck("T2Val",CD_STATE_NOTVALID)
Global("T2ValAjTalk1","GLOBAL",0)~
THEN BT2VAL T2ValAjTalk1
@42 DO ~SetGlobal("T2ValAjTalk1","GLOBAL",1)~
== %AJANTIS_BANTER% @43
== BT2VAL @44
== %AJANTIS_BANTER% @45
== BT2VAL @46
== %AJANTIS_BANTER% @47
== BT2VAL @48
== %AJANTIS_BANTER% @49
== BT2VAL @50
== %AJANTIS_BANTER% @51
EXIT

CHAIN
IF 
~CombatCounter(0)
InParty("T2Val")
InParty("ajantis")
See("T2Val")
!See([ENEMY])
!StateCheck("ajantis",CD_STATE_NOTVALID)
!StateCheck("T2Val",CD_STATE_NOTVALID)
Global("T2ValAjTalk2","GLOBAL",0)~
THEN %AJANTIS_BANTER% T2ValAjTalk2
@52 DO ~SetGlobal("T2ValAjTalk2","GLOBAL",1)~
== BT2VAL @53
== %AJANTIS_BANTER% @54
== BT2VAL @55
== %AJANTIS_BANTER% @56
EXIT

CHAIN
IF 
~CombatCounter(0)
InParty("T2Val")
InParty("ajantis")
See("Ajantis")
!See([ENEMY])
!StateCheck("ajantis",CD_STATE_NOTVALID)
!StateCheck("T2Val",CD_STATE_NOTVALID)
Global("T2ValAjTalk3","GLOBAL",0)~
THEN BT2VAL T2ValAjTalk3
@57 DO ~SetGlobal("T2ValAjTalk3","GLOBAL",1)~
== %AJANTIS_BANTER% @58
== BT2VAL @59
== %AJANTIS_BANTER% IF ~ReputationLT(Player1,10)~ THEN @60
== %AJANTIS_BANTER% IF ~ReputationGT(Player1,9) ReputationLT(Player1,14)~ THEN @61
== %AJANTIS_BANTER% IF ~ReputationGT(Player1,13)~ THEN @62
== BT2VAL @63
== %AJANTIS_BANTER% @64
== BT2VAL @65
EXIT

CHAIN
IF
~CombatCounter(0)
InParty("T2Val")
InParty("ajantis")
See("Ajantis")
!See([ENEMY])
!StateCheck("ajantis",CD_STATE_NOTVALID)
!StateCheck("T2Val",CD_STATE_NOTVALID)
Global("T2ValAjTalk4","GLOBAL",0)~
THEN BT2VAL T2ValAjTalk4
@66 DO ~SetGlobal("T2ValAjTalk4","GLOBAL",1)~
== %AJANTIS_BANTER% @67
== BT2VAL @68
== %AJANTIS_BANTER% @69
== BT2VAL @70
== %AJANTIS_BANTER% @71
== BT2VAL @72
== %AJANTIS_BANTER% @73
== BT2VAL @74
== %AJANTIS_BANTER% @75
EXIT

/* ------- *
 *  Imoen  *
 * ------- */
CHAIN
IF
~CombatCounter(0)
InParty("T2Val")
InParty("%IMOEN_DV%")
See("%IMOEN_DV%")
!See([ENEMY])
!StateCheck("%IMOEN_DV%",CD_STATE_NOTVALID)
!StateCheck("T2Val",CD_STATE_NOTVALID)
//(Imoen has the spellbook, is not a mage yet)
Global("T2ValImTalk1","GLOBAL",0)~
THEN BT2VAL T2ValImTalk1
@76 DO ~SetGlobal("T2ValImTalk1","GLOBAL",1)~
== %IMOEN_BANTER% @77
== BT2VAL @78
== %IMOEN_BANTER% @79
== BT2VAL @80
== %IMOEN_BANTER% @81
== BT2VAL @82
== %IMOEN_BANTER% @83
== BT2VAL @84
EXIT

CHAIN
IF
~CombatCounter(0)
InParty("T2Val")
InParty("%IMOEN_DV%")
See("T2Val")
!See([ENEMY])
!StateCheck("%IMOEN_DV%",CD_STATE_NOTVALID)
!StateCheck("T2Val",CD_STATE_NOTVALID)
Global("T2ValImTalk1","GLOBAL",1)
Global("T2ValImTalk2","GLOBAL",0)~
THEN %IMOEN_BANTER% T2ValImTalk2
@85 DO ~SetGlobal("T2ValImTalk2","GLOBAL",1)~
== BT2VAL @86
== %IMOEN_BANTER% @87
== BT2VAL @88
== %IMOEN_BANTER% @89
== BT2VAL @90
== %IMOEN_BANTER% @91
== BT2VAL @92
== %IMOEN_BANTER% @93
== BT2VAL @94
EXIT

//On-rest talk
CHAIN
IF
~CombatCounter(0)
InParty("T2Val")
InParty("%IMOEN_DV%")
See("T2Val")
!See([ENEMY])
!StateCheck("%IMOEN_DV%",CD_STATE_NOTVALID)
!StateCheck("T2Val",CD_STATE_NOTVALID)
Global("T2ValImTalk2","GLOBAL",1)
Global("T2ValImTalk3","GLOBAL",0)~
THEN %IMOEN_BANTER% T2ValImTalk3
@95 DO ~SetGlobal("T2ValImTalk3","GLOBAL",1)~
== BT2VAL @96
== %IMOEN_BANTER% @97
== BT2VAL @98
== %IMOEN_BANTER% @99
== BT2VAL @100
== %IMOEN_BANTER% @101
== BT2VAL @102
== %IMOEN_BANTER% @103
== BT2VAL @104
== %IMOEN_BANTER% @105
== BT2VAL @106
== %IMOEN_BANTER% @107
== BT2VAL @108
== %IMOEN_BANTER% @109
== BT2VAL @110
== %IMOEN_BANTER% @111
== BT2VAL @112
EXIT

CHAIN
IF
~CombatCounter(0)
InParty("T2Val")
InParty("%IMOEN_DV%")
See("T2Val")
!See([ENEMY])
!StateCheck("%IMOEN_DV%",CD_STATE_NOTVALID)
!StateCheck("T2Val",CD_STATE_NOTVALID)
Global("T2ValImTalk4","GLOBAL",0)~
THEN %IMOEN_BANTER% T2ValImTalk4
@113 DO ~SetGlobal("T2ValImTalk4","GLOBAL",1)~
== BT2VAL @114
== %IMOEN_BANTER% @115
== BT2VAL @116
== %IMOEN_BANTER% @117
== BT2VAL @118
== %IMOEN_BANTER% @119
== BT2VAL @120
EXIT


/* --------- *
 *  Viconia  *
 * --------- */
CHAIN
IF 
~CombatCounter(0)
InParty("T2Val")
InParty("viconia")
See("T2Val")
!See([ENEMY])
!StateCheck("viconia",CD_STATE_NOTVALID)
!StateCheck("T2Val",CD_STATE_NOTVALID)
Global("T2ValVTalk1","GLOBAL",0)~
THEN %VICONIA_BANTER% T2ValVTalk1
@121 DO ~SetGlobal("T2ValVTalk1","GLOBAL",1)~
== BT2VAL @122
== %VICONIA_BANTER% @123
== BT2VAL @124
== %VICONIA_BANTER% @125
== BT2VAL @126
EXIT

CHAIN
IF 
~CombatCounter(0)
InParty("T2Val")
InParty("viconia")
See("T2Val")
!See([ENEMY])
!StateCheck("viconia",CD_STATE_NOTVALID)
!StateCheck("T2Val",CD_STATE_NOTVALID)
Global("T2ValVTalk2","GLOBAL",0)~
THEN %VICONIA_BANTER% T2ValVTalk2
@127 DO ~SetGlobal("T2ValVTalk2","GLOBAL",1)~
== BT2VAL @128
== %VICONIA_BANTER% @129
== BT2VAL @130
== %VICONIA_BANTER% @131
== BT2VAL @132
== %VICONIA_BANTER% @133
== BT2VAL @134
== %VICONIA_BANTER% @135
EXIT

//Rest talk
CHAIN
IF 
~CombatCounter(0)
InParty("T2Val")
InParty("viconia")
See("Viconia")
!See([ENEMY])
!StateCheck("viconia",CD_STATE_NOTVALID)
!StateCheck("T2Val",CD_STATE_NOTVALID)
OR(2) AreaType(FOREST) AreaType(DUNGEON)
Global("T2ValVTalk3","GLOBAL",1)
Global("T2ValVTalk3","GLOBAL",0)~
THEN BT2VAL T2ValVTalk3
@136 DO ~SetGlobal("T2ValVTalk3","GLOBAL",1)~
== %VICONIA_BANTER%@137
== BT2VAL @138
== %VICONIA_BANTER% @139
== BT2VAL @140
== %VICONIA_BANTER% @141
== BT2VAL @142
== %VICONIA_BANTER% @143
EXIT


/* --------- *
 *  Branwen  *
 * -----++-- */
CHAIN
IF
~CombatCounter(0)
InParty("T2Val")
InParty("branwen")
See("T2Val")
!See([ENEMY])
!StateCheck("branwen",CD_STATE_NOTVALID)
!StateCheck("T2Val",CD_STATE_NOTVALID)
Global("T2ValBTalk1","GLOBAL",0)~
THEN %BRANWEN_BANTER% T2ValBTalk1
@144 DO ~SetGlobal("T2ValBTalk1","GLOBAL",1)~
== BT2VAL @145
== %BRANWEN_BANTER% @146
== BT2VAL @147
== %BRANWEN_BANTER% @148
== BT2VAL @149
EXIT

CHAIN
IF
~CombatCounter(0)
InParty("T2Val")
InParty("branwen")
See("Branwen")
!See([ENEMY])
!StateCheck("branwen",CD_STATE_NOTVALID)
!StateCheck("T2Val",CD_STATE_NOTVALID)
Global("T2ValBTalk2","GLOBAL",0)~
THEN BT2VAL T2ValBTalk2
@150 DO ~SetGlobal("T2ValBTalk2","GLOBAL",1)~
== %BRANWEN_BANTER% @151
== BT2VAL @152
== %BRANWEN_BANTER% @153
== BT2VAL @154
== %BRANWEN_BANTER% @155
EXIT


/* ----- *
 *  Xan  *
 * ----- */
CHAIN
IF
~CombatCounter(0)
InParty("T2Val")
InParty("xan")
See("Xan")
!See([ENEMY])
!StateCheck("xan",CD_STATE_NOTVALID)
!StateCheck("T2Val",CD_STATE_NOTVALID)
Global("T2ValXaTalk1","GLOBAL",0)~
THEN BT2VAL T2ValXaTalk1
@156 DO ~SetGlobal("T2ValXaTalk1","GLOBAL",1)~
== %XAN_BANTER% @157
== BT2VAL @158
== %XAN_BANTER% @159
== BT2VAL @160
== %XAN_BANTER% @161
EXIT

CHAIN
IF
~CombatCounter(0)
InParty("T2Val")
InParty("xan")
See("T2Val")
!See([ENEMY])
!StateCheck("xan",CD_STATE_NOTVALID)
!StateCheck("T2Val",CD_STATE_NOTVALID)
Global("T2ValXaTalk2","GLOBAL",0)~
THEN %XAN_BANTER% T2ValXaTalk2
@162 DO ~SetGlobal("T2ValXaTalk2","GLOBAL",1)~
== BT2VAL @163
== %XAN_BANTER% @164
== BT2VAL @165
== %XAN_BANTER% @166
== BT2VAL @167
== %XAN_BANTER% @168
== BT2VAL @169
EXIT

CHAIN
IF
~CombatCounter(0)
InParty("T2Val")
InParty("xan")
See("Xan")
!See([ENEMY])
!StateCheck("xan",CD_STATE_NOTVALID)
!StateCheck("T2Val",CD_STATE_NOTVALID)
Global("T2ValXaTalk3","GLOBAL",0)~
THEN BT2VAL T2ValXaTalk3
@170 DO ~SetGlobal("T2ValXaTalk3","GLOBAL",1)~
== %XAN_BANTER% @171
== BT2VAL @172
== %XAN_BANTER% @173
== BT2VAL @174
== %XAN_BANTER% @175
== BT2VAL @176
== %XAN_BANTER% @177
== BT2VAL @178
== %XAN_BANTER% @179
EXIT


/* ------- *
 *  Coran  *
 * ------- */
CHAIN
IF
~CombatCounter(0)
InParty("T2Val")
InParty("coran")
See("T2Val")
!See([ENEMY])
!StateCheck("coran",CD_STATE_NOTVALID)
!StateCheck("T2Val",CD_STATE_NOTVALID)
Global("T2ValCoTalk1","GLOBAL",0)~
THEN %CORAN_BANTER% T2ValCoTalk1
@180 DO ~SetGlobal("T2ValCoTalk1","GLOBAL",1)~
== BT2VAL @181
== %CORAN_BANTER% @182
== BT2VAL @183
== %CORAN_BANTER% @184
== BT2VAL @185
EXIT

CHAIN
IF
~CombatCounter(0)
InParty("T2Val")
InParty("coran")
See("Coran")
!See([ENEMY])
!StateCheck("coran",CD_STATE_NOTVALID)
!StateCheck("T2Val",CD_STATE_NOTVALID)
Global("T1ValCoTalk1","GLOBAL",1)
Global("T2ValCoTalk2","GLOBAL",0)~
THEN BT2VAL T2ValCoTalk2
@186 DO ~SetGlobal("T2ValCoTalk2","GLOBAL",1)~
== %CORAN_BANTER% @187
== BT2VAL @188
== %CORAN_BANTER% @189
== BT2VAL @190
== %CORAN_BANTER% @191
EXIT

CHAIN
IF
~CombatCounter(0)
InParty("T2Val")
InParty("coran")
See("T2Val")
!See([ENEMY])
!StateCheck("coran",CD_STATE_NOTVALID)
!StateCheck("T2Val",CD_STATE_NOTVALID)
Global("T2ValCoTalk3","GLOBAL",0)~
THEN %CORAN_BANTER% T2ValCoTalk3
@192 DO ~SetGlobal("T2ValCoTalk3","GLOBAL",1)~
== BT2VAL @193
== %CORAN_BANTER% @194
== BT2VAL @195
== %CORAN_BANTER% @196
== BT2VAL @197
== %CORAN_BANTER% @198
EXIT

CHAIN
IF
~CombatCounter(0)
InParty("T2Val")
InParty("coran")
See("T2Val")
!See([ENEMY])
!StateCheck("coran",CD_STATE_NOTVALID)
!StateCheck("T2Val",CD_STATE_NOTVALID)
Global("T2ValCoTalk2","GLOBAL",1)
Global("T2ValCoTalk4","GLOBAL",0)~
THEN %CORAN_BANTER% T2ValCoTalk4
@199 DO ~SetGlobal("T2ValCoTalk4","GLOBAL",1)~
== BT2VAL @200
== %CORAN_BANTER% @201
== BT2VAL @202
== %CORAN_BANTER% @203
== BT2VAL @204
== %CORAN_BANTER% @205
EXIT


/* ------- *
 *  Minsc  *
 * ------- */
CHAIN
IF
~CombatCounter(0)
InParty("T2Val")
InParty("minsc")
See("T2Val")
!See([ENEMY])
!StateCheck("Minsc",CD_STATE_NOTVALID)
!StateCheck("T2Val",CD_STATE_NOTVALID)
Global("T2ValDTalk1","GLOBAL",1)
Global("T2ValMinscTalk1","GLOBAL",0)~
THEN %MINSC_BANTER% T2ValMinscTalk1
@206 DO ~SetGlobal("T2ValMinscTalk1","GLOBAL",1)~
== BT2VAL @207
== %MINSC_BANTER% @208
== BT2Val @209
== %MINSC_BANTER% @210
== BT2Val @211
== %MINSC_BANTER% @212
EXIT

CHAIN
IF
~CombatCounter(0)
InParty("T2Val")
InParty("minsc")
See("Minsc")
!See([ENEMY])
!StateCheck("Minsc",CD_STATE_NOTVALID)
!StateCheck("T2Val",CD_STATE_NOTVALID)
Global("T2ValMinscTalk2","GLOBAL",0)~
THEN BT2VAL T2ValMinscTalk2
@213 DO ~SetGlobal("T2ValMinscTalk2","GLOBAL",1)~
== %MINSC_BANTER% @214
== BT2VAL @215
== %MINSC_BANTER% @216
== BT2Val @217
== %MINSC_BANTER% @218
EXIT

CHAIN
IF
~CombatCounter(0)
InParty("T2Val")
InParty("minsc")
See("T2Val")
!See([ENEMY])
!StateCheck("Minsc",CD_STATE_NOTVALID)
!StateCheck("T2Val",CD_STATE_NOTVALID)
Global("T2ValMinscTalk3","GLOBAL",0)~
THEN %MINSC_BANTER% T2ValMinscTalk3
@219 DO ~SetGlobal("T2ValMinscTalk3","GLOBAL",1)~
== BT2VAL @220
== %MINSC_BANTER% @221
== BT2VAL @222
EXIT


/* ---------- *
 *  Dynaheir  *
 * ---------- */
CHAIN
IF
~CombatCounter(0)
InParty("T2Val")
InParty("dynaheir")
See("T2Val")
!See([ENEMY])
!StateCheck("dynaheir",CD_STATE_NOTVALID)
!StateCheck("T2Val",CD_STATE_NOTVALID)
Global("T2ValDTalk1","GLOBAL",0)~
THEN %DYNAHEIR_BANTER% T2ValDTalk1
@223 DO ~SetGlobal("T2ValDTalk1","GLOBAL",1)~
== BT2VAL @224
== %DYNAHEIR_BANTER% @225
== BT2VAL @226
== %DYNAHEIR_BANTER% @227
== BT2VAL @228
EXIT

CHAIN
IF
~CombatCounter(0)
InParty("T2Val")
InParty("dynaheir")
See("Dynaheir")
!See([ENEMY])
!StateCheck("dynaheir",CD_STATE_NOTVALID)
!StateCheck("T2Val",CD_STATE_NOTVALID)
Global("T2ValDTalk1","GLOBAL",1)
Global("T2ValDTalk2","GLOBAL",0)~
THEN T2VAL T2ValDTalk2
@229 DO ~SetGlobal("T2ValDTalk2","GLOBAL",1)~
== %DYNAHEIR_BANTER% @230
== BT2VAL @231
== %DYNAHEIR_BANTER% @232
== BT2VAL @233
== %DYNAHEIR_BANTER% @234
== BT2VAL @235
== %DYNAHEIR_BANTER% @236
== BT2VAL @237
== %DYNAHEIR_BANTER% @238
EXIT

CHAIN
IF
~CombatCounter(0)
InParty("T2Val")
InParty("dynaheir")
See("Dynaheir")
!See([ENEMY])
!StateCheck("dynaheir",CD_STATE_NOTVALID)
!StateCheck("T2Val",CD_STATE_NOTVALID)
Global("T2ValDTalk1","GLOBAL",1)
Global("T2ValDTalk3","GLOBAL",0)~
THEN T2VAL T2ValDTalk3
@239 DO ~SetGlobal("T2ValDTalk3","GLOBAL",1)~
== %DYNAHEIR_BANTER% @240
== BT2VAL @241
== %DYNAHEIR_BANTER% @242
== BT2VAL @243
== %DYNAHEIR_BANTER% @244
== BT2VAL @245
== %DYNAHEIR_BANTER% @246
== BT2VAL @247
== %DYNAHEIR_BANTER% @248
== BT2VAL @249
EXIT

CHAIN
IF
~CombatCounter(0)
InParty("T2Val")
InParty("dynaheir")
See("T2Val")
!See([ENEMY])
!StateCheck("dynaheir",CD_STATE_NOTVALID)
!StateCheck("T2Val",CD_STATE_NOTVALID)
Global("T2ValDTalk3","GLOBAL",1)
Global("T2ValDTalk4","GLOBAL",0)~
THEN %DYNAHEIR_BANTER% T2ValDTalk4
@250 DO ~SetGlobal("T2ValDTalk4","GLOBAL",1)~
== BT2VAL @251
== %DYNAHEIR_BANTER% @252
== BT2VAL @253
== %DYNAHEIR_BANTER% @254
== BT2VAL @255
== %DYNAHEIR_BANTER% @256
== BT2VAL @257
== %DYNAHEIR_BANTER% @258
EXIT


/* ------- *
 *  Edwin  *
 * ------- */
CHAIN
IF
~CombatCounter(0)
InParty("T2Val")
InParty("edwin")
See("Edwin")
!See([ENEMY])
!StateCheck("edwin",CD_STATE_NOTVALID)
!StateCheck("T2Val",CD_STATE_NOTVALID)
Global("T2ValETalk1","GLOBAL",0)~
THEN BT2Val T2ValETalk1
@259 DO ~SetGlobal("T2ValETalk1","GLOBAL",1)~
== %EDWIN_BANTER% @260
== BT2VAL @261
== %EDWIN_BANTER% @262
== BT2Val @263
== %EDWIN_BANTER% @264
== BT2Val @265
== %EDWIN_BANTER% @266
EXIT

CHAIN
IF
~CombatCounter(0)
InParty("T2Val")
InParty("edwin")
See("T2Val")
!See([ENEMY])
!StateCheck("edwin",CD_STATE_NOTVALID)
!StateCheck("T2Val",CD_STATE_NOTVALID)
Global("T2ValETalk2","GLOBAL",0)~
THEN %EDWIN_BANTER% T2ValETalk2
@267 DO ~SetGlobal("T2ValETalk2","GLOBAL",1)~
== BT2Val @268
== %EDWIN_BANTER% @269
== BT2Val @270
== %EDWIN_BANTER% @271
== BT2Val @272
== %EDWIN_BANTER% @273
== BT2Val @274
== %EDWIN_BANTER% @275
== BT2Val @276
== %EDWIN_BANTER% @277
EXIT

CHAIN
IF
~CombatCounter(0)
InParty("T2Val")
InParty("edwin")
See("Edwin")
!See([ENEMY])
!StateCheck("edwin",CD_STATE_NOTVALID)
!StateCheck("T2Val",CD_STATE_NOTVALID)
Global("T2ValETalk3","GLOBAL",0)~
THEN BT2Val T2ValETalk3
@278 DO ~SetGlobal("T2ValETalk3","GLOBAL",1)~
== %EDWIN_BANTER% @279
== BT2Val @280
== %EDWIN_BANTER% @281
== BT2Val @282
== %EDWIN_BANTER% @283
== BT2Val @284
== %EDWIN_BANTER% @285
== BT2Val @286
== %EDWIN_BANTER% @287
EXIT

CHAIN
IF
~CombatCounter(0)
InParty("T2Val")
InParty("edwin")
See("T2Val")
!See([ENEMY])
!StateCheck("edwin",CD_STATE_NOTVALID)
!StateCheck("T2Val",CD_STATE_NOTVALID)
Global("T2ValETalk4","GLOBAL",0)~
THEN %EDWIN_BANTER% T2ValETalk4
@288 DO ~SetGlobal("T2ValETalk4","GLOBAL",1)~
== BT2Val @289
== %EDWIN_BANTER% @290
== BT2Val @291
== %EDWIN_BANTER% @292
== BT2Val @293
== %EDWIN_BANTER% @294
EXIT


/* ------ *
 *  Xzar  *
 * ------ */
CHAIN
IF 
~CombatCounter(0)
InParty("T2Val")
InParty("xzar")
See("Xzar")
!See([ENEMY])
!StateCheck("xzar",CD_STATE_NOTVALID)
!StateCheck("T2Val",CD_STATE_NOTVALID)
Global("T2ValXzTalk1","GLOBAL",0)~
THEN BT2Val T2ValXzTalk1
@295 DO ~SetGlobal("T2ValXzTalk1","GLOBAL",1)~
== %XZAR_BANTER% @296
== BT2Val @297
== %XZAR_BANTER% @298
== BT2Val @299
== %XZAR_BANTER% @300
== BT2Val @301
EXIT

CHAIN
IF 
~CombatCounter(0)
InParty("T2Val")
InParty("xzar")
See("T2Val")
!See([ENEMY])
!StateCheck("xzar",CD_STATE_NOTVALID)
!StateCheck("T2Val",CD_STATE_NOTVALID)
Global("T2ValXzTalk2","GLOBAL",0)~
THEN %XZAR_BANTER% T2ValXzTalk2
@302 DO ~SetGlobal("T2ValXzTalk2","GLOBAL",1)~
== BT2Val @303
== %XZAR_BANTER% @304
== BT2Val @305
== %XZAR_BANTER% @306
== BT2Val @307
== %XZAR_BANTER% @308
== BT2Val @309
== %XZAR_BANTER% @310
EXIT

CHAIN
IF 
~CombatCounter(0)
InParty("T2Val")
InParty("xzar")
See("Xzar")
!See([ENEMY])
!StateCheck("xzar",CD_STATE_NOTVALID)
!StateCheck("T2Val",CD_STATE_NOTVALID)
Global("T2ValXzTalk3","GLOBAL",0)~
THEN BT2Val T2ValXZTalk3
@311 DO ~SetGlobal("T2ValXzTalk3","GLOBAL",1)~
== %XZAR_BANTER% @312
== BT2Val @313
== %XZAR_BANTER% @314
== BT2Val @315
== %XZAR_BANTER% @316
== BT2Val @317
EXIT


/* ---------- *
 *  Montaron  *
 * ---------- */
CHAIN
IF
~CombatCounter(0)
InParty("T2Val")
InParty("montaron")
See("T2Val")
!See([ENEMY])
!StateCheck("montaron",CD_STATE_NOTVALID)
!StateCheck("T2Val",CD_STATE_NOTVALID)
Global("T2ValMontTalk1","GLOBAL",0)~
THEN %MONTARON_BANTER% T2ValMontTalk1
@318 DO ~SetGlobal("T2ValMontTalk1","GLOBAL",1)~
== BT2Val @319
== %MONTARON_BANTER% @320
== BT2Val @321
== %MONTARON_BANTER% @322
EXIT

CHAIN
IF
~CombatCounter(0)
InParty("T2Val")
InParty("montaron")
See("T2Val")
!See([ENEMY])
!StateCheck("montaron",CD_STATE_NOTVALID)
!StateCheck("T2Val",CD_STATE_NOTVALID)
Global("T2ValMontTalk2","GLOBAL",0)~
THEN %MONTARON_BANTER% T2ValMontTalk2
@323 DO ~SetGlobal("T2ValMontTalk2","GLOBAL",1)~
== BT2Val @324
== %MONTARON_BANTER% @325
== BT2Val @326
== %MONTARON_BANTER% @327
== BT2Val @328
== %MONTARON_BANTER% @329
== BT2Val @330
EXIT


/* --------- *
 *  Garrick  *
 * --------- */
CHAIN
IF 
~CombatCounter(0)
InParty("T2Val")
InParty("garrick")
See("Garrick")
!See([ENEMY])
!StateCheck("garrick",CD_STATE_NOTVALID)
!StateCheck("T2Val",CD_STATE_NOTVALID)
Global("T2ValGaTalk1","GLOBAL",0)~
THEN BT2VAL T2ValGaTalk1
@331 DO ~SetGlobal("T2ValGaTalk1","GLOBAL",1)~
== %GARRICK_BANTER% @332
== BT2Val @333
== %GARRICK_BANTER% @334
== BT2Val @335
== %GARRICK_BANTER% @336
== BT2Val @337
== %GARRICK_BANTER% @338
== BT2Val @339
== %GARRICK_BANTER% @340
== BT2Val @341
EXIT

CHAIN
IF 
~CombatCounter(0)
InParty("T2Val")
InParty("garrick")
See("T2Val")
!See([ENEMY])
!StateCheck("garrick",CD_STATE_NOTVALID)
!StateCheck("T2Val",CD_STATE_NOTVALID)
Global("T2ValGaTalk1","GLOBAL",1)
Global("T2ValGaTalk2","GLOBAL",0)~
THEN %GARRICK_BANTER% T2ValGaTalk2
@342 DO ~SetGlobal("T2ValGaTalk2","GLOBAL",1)~
== BT2Val @343
== %GARRICK_BANTER% @344
== BT2Val @345
== %GARRICK_BANTER% @346
== BT2Val @347
== %GARRICK_BANTER% @348
== BT2Val @349
== %GARRICK_BANTER% @350
== BT2Val @351
== %GARRICK_BANTER% @352
EXIT

CHAIN
IF 
~CombatCounter(0)
InParty("T2Val")
InParty("garrick")
See("T2Val")
!See([ENEMY])
!StateCheck("garrick",CD_STATE_NOTVALID)
!StateCheck("T2Val",CD_STATE_NOTVALID)
Global("T2ValGaTalk1","GLOBAL",1)
Global("T2ValGaTalk3","GLOBAL",0)~
THEN %GARRICK_BANTER% T2ValGaTalk3
@353 DO ~SetGlobal("T2ValGaTalk3","GLOBAL",1)~
== BT2Val @354
== %GARRICK_BANTER% @355
== BT2Val @356
== %GARRICK_BANTER% @357
== BT2Val @358
== %GARRICK_BANTER% @359
== BT2Val @360
== %GARRICK_BANTER% @361
== BT2Val @362
== %GARRICK_BANTER% @363
EXIT


/* ------- *
 *  Kivan  *
 * ------- */
CHAIN
IF 
~CombatCounter(0)
InParty("T2Val")
InParty("kivan")
See("Kivan")
!See([ENEMY])
!StateCheck("kivan",CD_STATE_NOTVALID)
!StateCheck("T2Val",CD_STATE_NOTVALID)
Global("T2ValKiTalk1","GLOBAL",0)~
THEN BT2VAL T2ValKiTalk1
@364 DO ~SetGlobal("T2ValKiTalk1","GLOBAL",1)~
== %KIVAN_BANTER% @365
== BT2Val @366
== %KIVAN_BANTER% @367
EXIT

//Fire on rest
CHAIN
IF 
~CombatCounter(0)
InParty("T2Val")
InParty("kivan")
See("T2Val")
!See([ENEMY])
!StateCheck("kivan",CD_STATE_NOTVALID)
!StateCheck("T2Val",CD_STATE_NOTVALID)
Global("T2ValKiTalk2","GLOBAL",0)~
THEN %KIVAN_BANTER% T2ValKiTalk2
@368 DO ~SetGlobal("T2ValKiTalk2","GLOBAL",1)~
== BT2Val @369
== %KIVAN_BANTER% @370
== BT2Val @371
== %KIVAN_BANTER% @372
== BT2Val @373
== %KIVAN_BANTER% @374
EXIT


/* ----------- *
 *  Shar-Teel  *
 * ----------- */
CHAIN
IF 
~CombatCounter(0)
InParty("T2Val")
InParty("sharteel")
See("Kivan")
!See([ENEMY])
!StateCheck("sharteel",CD_STATE_NOTVALID)
!StateCheck("T2Val",CD_STATE_NOTVALID)
Global("T2ValSTTalk1","GLOBAL",0)~
THEN BT2VAL T2ValSTTalk1
@375 DO ~SetGlobal("T2ValSTTalk1","GLOBAL",1)~
== %SHARTEEL_BANTER% @376
== BT2Val @377
== %SHARTEEL_BANTER% @378
== BT2Val @379
== %SHARTEEL_BANTER% @380
EXIT

CHAIN
IF 
~CombatCounter(0)
InParty("T2Val")
InParty("sharteel")
See("T2Val")
!See([ENEMY])
!StateCheck("sharteel",CD_STATE_NOTVALID)
!StateCheck("T2Val",CD_STATE_NOTVALID)
Global("T2ValSTTalk2","GLOBAL",0)~
THEN %SHARTEEL_BANTER% T2ValSTTalk2
@381 DO ~SetGlobal("T2ValSTTalk2","GLOBAL",1)~
== BT2Val @382
== %SHARTEEL_BANTER% @383
== BT2Val @384
== %SHARTEEL_BANTER% @385
== BT2Val @386
== %SHARTEEL_BANTER% @387
== BT2Val @388
EXIT

CHAIN
IF 
~CombatCounter(0)
InParty("T2Val")
InParty("sharteel")
See("T2Val")
!See([ENEMY])
!StateCheck("sharteel",CD_STATE_NOTVALID)
!StateCheck("T2Val",CD_STATE_NOTVALID)
Global("T2ValSTTalk3","GLOBAL",0)~
THEN %SHARTEEL_BANTER% T2ValSTTalk3
@389 DO ~SetGlobal("T2ValSTTalk3","GLOBAL",1)~
== BT2Val @390
== %SHARTEEL_BANTER% @391
== BT2Val @392
== %SHARTEEL_BANTER% @393
== BT2Val @394
EXIT


/* -------- *
 *  Kagain  *
 * -------- */
CHAIN
IF 
~CombatCounter(0)
InParty("T2Val")
InParty("kagain")
See("T2Val")
!See([ENEMY])
!StateCheck("kagain",CD_STATE_NOTVALID)
!StateCheck("T2Val",CD_STATE_NOTVALID)
Global("T2ValKaTalk1","GLOBAL",0)~
THEN %KAGAIN_BANTER% T2ValKaTalk1
@395 DO ~SetGlobal("T2ValKaTalk1","GLOBAL",1)~
== BT2Val @396
== %KAGAIN_BANTER% @397
== BT2Val @398
== %KAGAIN_BANTER% @399
EXIT

CHAIN
IF 
~CombatCounter(0)
InParty("T2Val")
InParty("kagain")
See("T2Val")
!See([ENEMY])
!StateCheck("kagain",CD_STATE_NOTVALID)
!StateCheck("T2Val",CD_STATE_NOTVALID)
Global("T2ValKaTalk2","GLOBAL",0)~
THEN %KAGAIN_BANTER% T2ValKaTalk2
@400 DO ~SetGlobal("T2ValKaTalk2","GLOBAL",1)~
== BT2Val @401
== %KAGAIN_BANTER% @402
== BT2Val @403
== %KAGAIN_BANTER% @404
EXIT

CHAIN
IF 
~CombatCounter(0)
InParty("T2Val")
InParty("kagain")
See("Kagain")
!See([ENEMY])
!StateCheck("kagain",CD_STATE_NOTVALID)
!StateCheck("T2Val",CD_STATE_NOTVALID)
Global("T2ValKaTalk3","GLOBAL",0)~
THEN BT2Val T2ValKaTalk3
@405 DO ~SetGlobal("T2ValKaTalk3","GLOBAL",1)~
== %KAGAIN_BANTER% @406
== BT2Val @407
== %KAGAIN_BANTER% @408
== BT2Val @409
== %KAGAIN_BANTER% @410
== BT2Val @411
== %KAGAIN_BANTER% @412
EXIT


/* ------- *
 *  Alora  *
 * ------- */
CHAIN
IF 
~CombatCounter(0)
InParty("T2Val")
InParty("alora")
See("Alora")
!See([ENEMY])
!StateCheck("alora",CD_STATE_NOTVALID)
!StateCheck("T2Val",CD_STATE_NOTVALID)
Global("T2ValATalk1","GLOBAL",0)~
THEN BT2Val T2ValATalk1
@413 DO ~SetGlobal("T2ValATalk1","GLOBAL",1)~
== %ALORA_BANTER% @414
== BT2Val @415
== %ALORA_BANTER% @416
== BT2Val @417
== %ALORA_BANTER% @418
== BT2Val @419
== %ALORA_BANTER% @420
EXIT

CHAIN
IF 
~CombatCounter(0)
InParty("T2Val")
InParty("alora")
See("T2Val")
!See([ENEMY])
!StateCheck("alora",CD_STATE_NOTVALID)
!StateCheck("T2Val",CD_STATE_NOTVALID)
Global("T2ValATalk2","GLOBAL",0)~
THEN %ALORA_BANTER% T2ValATalk1
@421 DO ~SetGlobal("T2ValATalk2","GLOBAL",1)~
== BT2Val @422
== %ALORA_BANTER% @423
== BT2Val @424
== %ALORA_BANTER% @425
== BT2Val @426
== %ALORA_BANTER% @427
== BT2Val @428
== %ALORA_BANTER% @429
EXIT


/* --------- *
 *  Faldorn  *
 * --------- */
CHAIN
IF 
~CombatCounter(0)
InParty("T2Val")
InParty("faldorn")
See("T2Val")
!See([ENEMY])
!StateCheck("faldorn",CD_STATE_NOTVALID)
!StateCheck("T2Val",CD_STATE_NOTVALID)
Global("T2ValFTalk1","GLOBAL",0)~
THEN %FALDORN_BANTER% T2ValFTalk1
@430 DO ~SetGlobal("T2ValFTalk1","GLOBAL",1)~
== BT2Val @431
== %FALDORN_BANTER% @432
== BT2Val @433
== %FALDORN_BANTER% @434
== BT2Val @435
== %FALDORN_BANTER% @436
EXIT

CHAIN
IF 
~CombatCounter(0)
InParty("T2Val")
InParty("faldorn")
See("Faldorn")
!See([ENEMY])
!StateCheck("faldorn",CD_STATE_NOTVALID)
!StateCheck("T2Val",CD_STATE_NOTVALID)
Global("T2ValFTalk2","GLOBAL",0)~
THEN BT2Val T2ValFTalk2
@437 DO ~SetGlobal("T2ValFTalk2","GLOBAL",1)~
== %FALDORN_BANTER% @438
== BT2Val @439
== %FALDORN_BANTER% @440
== BT2Val @441
== %FALDORN_BANTER% @442
== BT2Val @443
== %FALDORN_BANTER% @444
== BT2Val @445
== %FALDORN_BANTER% @446
== BT2Val @447
== %FALDORN_BANTER% @448
EXIT


/* --------- *
 *  Yeslick  *
 * --------- */
CHAIN
IF 
~CombatCounter(0)
InParty("T2Val")
InParty("yeslick")
See("Yeslick")
!See([ENEMY])
!StateCheck("yeslick",CD_STATE_NOTVALID)
!StateCheck("T2Val",CD_STATE_NOTVALID)
Global("T2ValYTalk1","GLOBAL",0)~
THEN BT2Val T2ValYTalk1
@449 DO ~SetGlobal("T2ValYTalk1","GLOBAL",1)~
== %YESLICK_BANTER% @450
== BT2Val @451
== %YESLICK_BANTER% @452
== BT2Val @453
== %YESLICK_BANTER% @454
EXIT

//Fire on rest in a forest or dungeon
CHAIN
IF 
~CombatCounter(0)
InParty("T2Val")
InParty("yeslick")
See("Yeslick")
!See([ENEMY])
!StateCheck("yeslick",CD_STATE_NOTVALID)
!StateCheck("T2Val",CD_STATE_NOTVALID)
OR(2) AreaType(FOREST) AreaType(DUNGEON)
Global("T2ValYTalk2","GLOBAL",0)~
THEN BT2Val T2ValYTalk2
@455 DO ~SetGlobal("T2ValYTalk2","GLOBAL",1)~
== %YESLICK_BANTER% @456
== BT2Val @457
== %YESLICK_BANTER% @458
== BT2Val @459
== %YESLICK_BANTER% @460
== BT2Val @461
== %YESLICK_BANTER% @462
== BT2Val @463
EXIT

CHAIN
IF 
~CombatCounter(0)
InParty("T2Val")
InParty("yeslick")
See("T2Val")
!See([ENEMY])
!StateCheck("yeslick",CD_STATE_NOTVALID)
!StateCheck("T2Val",CD_STATE_NOTVALID)
Global("T2ValYTalk1","GLOBAL",1)
Global("T2ValYTalk3","GLOBAL",0)~
THEN %YESLICK_BANTER% T2ValYTalk3
@464 DO ~SetGlobal("T2ValYTalk3","GLOBAL",1)~
== BT2Val @465
== %YESLICK_BANTER% @466
== BT2Val @467
== %YESLICK_BANTER% @468
== BT2Val @469
EXIT


/* -------- *
 *  Quayle  *
 * -------- */
CHAIN
IF 
~CombatCounter(0)
InParty("T2Val")
InParty("quayle")
See("Quayle")
!See([ENEMY])
!StateCheck("quayle",CD_STATE_NOTVALID)
!StateCheck("T2Val",CD_STATE_NOTVALID)
Global("T2ValQTalk1","GLOBAL",0)~
THEN BT2Val T2ValQTalk1
@470 DO ~SetGlobal("T2ValQTalk1","GLOBAL",1)~
== %QUAYLE_BANTER% @471
== BT2Val @472
== %QUAYLE_BANTER% @473
== BT2Val @474
== %QUAYLE_BANTER% @475
== BT2Val @476
== %QUAYLE_BANTER% @477
EXIT

CHAIN
IF 
~CombatCounter(0)
InParty("T2Val")
InParty("quayle")
See("T2Val")
!See([ENEMY])
!StateCheck("quayle",CD_STATE_NOTVALID)
!StateCheck("T2Val",CD_STATE_NOTVALID)
Global("T2ValQTalk2","GLOBAL",0)~
THEN %QUAYLE_BANTER% T2ValQTalk2
@478 DO ~SetGlobal("T2ValQTalk2","GLOBAL",1)~
== BT2Val @479
== %QUAYLE_BANTER% @480
== BT2Val @481
== %QUAYLE_BANTER% @482
== BT2Val @483
== %QUAYLE_BANTER% @484
== BT2Val @485
EXIT


/* -------- *
 *  Safana  *
 * -------- */
CHAIN
IF 
~CombatCounter(0)
InParty("T2Val")
InParty("safana")
See("Safana")
!See([ENEMY])
!StateCheck("safana",CD_STATE_NOTVALID)
!StateCheck("T2Val",CD_STATE_NOTVALID)
Global("T2ValSafTalk1","GLOBAL",0)~
THEN BT2Val T2ValSafTalk1
@486 DO ~SetGlobal("T2ValSafTalk1","GLOBAL",1)~
== %SAFANA_BANTER% @487
== BT2Val @488
== %SAFANA_BANTER% @489
== BT2Val @490
== %SAFANA_BANTER% @491
EXIT

CHAIN
IF 
~CombatCounter(0)
InParty("T2Val")
InParty("safana")
See("T2Val")
!See([ENEMY])
!StateCheck("safana",CD_STATE_NOTVALID)
!StateCheck("T2Val",CD_STATE_NOTVALID)
Global("T2ValSafTalk2","GLOBAL",0)~
THEN %SAFANA_BANTER% T2ValSafTalk2
@492 DO ~SetGlobal("T2ValSafTalk2","GLOBAL",1)~
== BT2Val @493
== %SAFANA_BANTER% @494
== BT2Val @495
== %SAFANA_BANTER% @496
== BT2Val @497
EXIT


/* ------ *
 *  Tiax  *
 * ------ */
CHAIN
IF 
~CombatCounter(0)
InParty("T2Val")
InParty("tiax")
See("Tiax")
!See([ENEMY])
!StateCheck("tiax",CD_STATE_NOTVALID)
!StateCheck("T2Val",CD_STATE_NOTVALID)
Global("T2ValTiTalk1","GLOBAL",0)~
THEN BT2Val T2ValTiTalk1
@498 DO ~SetGlobal("T2ValTiTalk1","GLOBAL",1)~
== %TIAX_BANTER% @499
== BT2Val @500
== %TIAX_BANTER% @501
EXIT

CHAIN
IF 
~CombatCounter(0)
InParty("T2Val")
InParty("tiax")
See("Tiax")
!See([ENEMY])
!StateCheck("tiax",CD_STATE_NOTVALID)
!StateCheck("T2Val",CD_STATE_NOTVALID)
Global("T2ValTiTalk2","GLOBAL",0)~
THEN BT2Val T2ValTiTalk2
@502 DO ~SetGlobal("T2ValTiTalk2","GLOBAL",1)~
== %TIAX_BANTER% @503
== BT2Val @504
EXIT


/* -------- *
 *  Eldoth  *
 * -------- */
CHAIN
IF 
~CombatCounter(0)
InParty("T2Val")
InParty("eldoth")
See("T2Val")
!See([ENEMY])
!StateCheck("eldoth",CD_STATE_NOTVALID)
!StateCheck("T2Val",CD_STATE_NOTVALID)
Global("T2ValEldTalk1","GLOBAL",0)~
THEN %ELDOTH_BANTER% T2ValEldTalk1
@505 DO ~SetGlobal("T2ValEldTalk1","GLOBAL",1)~
== BT2Val @506
== %ELDOTH_BANTER% @507
== BT2Val @508
== %ELDOTH_BANTER% @509
== BT2Val @510
== %ELDOTH_BANTER% @511
EXIT

CHAIN
IF 
~CombatCounter(0)
InParty("T2Val")
InParty("eldoth")
See("Eldoth")
!See([ENEMY])
!StateCheck("eldoth",CD_STATE_NOTVALID)
!StateCheck("T2Val",CD_STATE_NOTVALID)
AreaType(CITY)
Global("T2ValEldTalk2","GLOBAL",0)~
THEN BT2Val T2ValEldTalk2
@512 DO ~SetGlobal("T2ValEldTalk2","GLOBAL",1)~
== %ELDOTH_BANTER% @513
== BT2Val @514
== %ELDOTH_BANTER% @515
== BT2Val @516
== %ELDOTH_BANTER% @517
EXIT


/* ------ *
 *  Skie  *
 * ------ */
CHAIN
IF 
~CombatCounter(0)
InParty("T2Val")
InParty("skie")
See("T2Val")
!See([ENEMY])
!StateCheck("skie",CD_STATE_NOTVALID)
!StateCheck("T2Val",CD_STATE_NOTVALID)
Global("T2ValSkTalk1","GLOBAL",0)~
THEN %SKIE_BANTER% T2ValSkTalk1
@518 DO ~SetGlobal("T2ValSkTalk1","GLOBAL",1)~
== BT2Val @519
== %SKIE_BANTER% @520
== BT2Val @521
== %SKIE_BANTER% @522
== BT2Val @523
== %SKIE_BANTER% @524
== BT2Val @525
EXIT

CHAIN
IF 
~CombatCounter(0)
InParty("T2Val")
InParty("skie")
See("T2Val")
!See([ENEMY])
!StateCheck("skie",CD_STATE_NOTVALID)
!StateCheck("T2Val",CD_STATE_NOTVALID)
Global("T2ValSkTalk2","GLOBAL",0)~
THEN %SKIE_BANTER% T2ValSkTalk2
@526 DO ~SetGlobal("T2ValSkTalk2","GLOBAL",1)~
== BT2Val @527
== %SKIE_BANTER% @528
== BT2Val @529
== %SKIE_BANTER% @530
== BT2Val @531
== %SKIE_BANTER% @532
== BT2Val @533
== %SKIE_BANTER% @534
EXIT

CHAIN
IF 
~CombatCounter(0)
InParty("T2Val")
InParty("skie")
See("T2Val")
!See([ENEMY])
!StateCheck("skie",CD_STATE_NOTVALID)
!StateCheck("T2Val",CD_STATE_NOTVALID)
Global("T2ValSkTalk1","GLOBAL",1)
Global("T2ValSkTalk2","GLOBAL",1)
Global("T2ValSkTalk3","GLOBAL",0)~
THEN %SKIE_BANTER% T2ValSkTalk3
@535 DO ~SetGlobal("T2ValSkTalk3","GLOBAL",1)~
== BT2Val @536
== %SKIE_BANTER% @537
== BT2Val @538
== %SKIE_BANTER% @539
== BT2Val @540
== %SKIE_BANTER% @541
== BT2Val @542
== %SKIE_BANTER% @543
== BT2Val @544
== %SKIE_BANTER% @545
== BT2Val @546
== %SKIE_BANTER% @348
== BT2Val @547
EXIT