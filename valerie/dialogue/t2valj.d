// Valerie J file.
BEGIN T2VALJ


/* ========================== *
 *  Valerie Friendship Talks  *
 * ========================== */
APPEND T2VALJ

/* -------------------------------------------------------------------------------------------------------------------------------------- *
 *  Valerie Friendship Talk 1                                                                                                             *
 *  Condition: Returning to the surface after Mulahey's death. If Mulahey is already dead when Valerie is recruiting, skip to lovetalk 2  *
 * -------------------------------------------------------------------------------------------------------------------------------------- */
IF ~Global("T2ValFriendTalk","GLOBAL",2)~ T2ValFriendTalk1
  SAY @0
  ++ @1 DO ~IncrementGlobal("T2ValFriendTalk","GLOBAL",1) RealSetGlobalTimer("T2ValFriendTalkTimer","GLOBAL",2700)~ + T2ValF1Thought
  ++ @2 DO ~IncrementGlobal("T2ValFriendTalk","GLOBAL",1) RealSetGlobalTimer("T2ValFriendTalkTimer","GLOBAL",2700)~ + T2ValF1Appraise
  ++ @3 DO ~IncrementGlobal("T2ValFriendTalk","GLOBAL",1) RealSetGlobalTimer("T2ValFriendTalkTimer","GLOBAL",2700)~ + T2ValF1Return
  ++ @4 DO ~IncrementGlobal("T2ValFriendTalk","GLOBAL",1) RealSetGlobalTimer("T2ValFriendTalkTimer","GLOBAL",2700)~ + T2ValF1End
END

IF ~~ T2ValF1Thought
  SAY @5
  ++ @6 + T2ValF1CW
  ++ @7 + T2ValF1Trail
  ++ @8 + T2ValF1Return
  ++ @9 + T2ValF1End
END

IF ~~ T2ValF1Appraise
  SAY @10
  ++ @11 + T2ValF1Return
  ++ @12 + T2ValF1CW
  ++ @13 + T2ValF1Trail
  ++ @14 + T2ValF1End
END

IF ~~ T2ValF1Return
  SAY @15
  ++ @16 + T2ValF1Hungup
  ++ @17 + T2ValF1Duty
  ++ @18 + T2ValF1CW
  ++ @19 + T2ValF1Trail
  ++ @20 + T2ValF1End
END

IF ~~ T2ValF1CW
  SAY @21
  ++ @22 + T2ValF1Return
  ++ @13 + T2ValF1Trail
  ++ @20 + T2ValF1End
END

IF ~~ T2ValF1Trail
  SAY @23
  ++ @24 + T2ValF1CW
  ++ @25 + T2ValF1Return
  ++ @26 + T2ValF1End
END

IF ~~ T2ValF1Hungup
  SAY @27
  IF ~~ EXIT
END

IF ~~ T2ValF1Duty
  SAY @28
  IF ~~ EXIT
END

IF ~~ T2ValF1End
  SAY @29
  IF ~~ EXIT
END

/* ------------------------------------------------------  *
 *  Valerie Friendship Talk 2                              *
 *  Condition: Resting at an inn after clearing the mines  *
 * ------------------------------------------------------- */
IF ~Global("T2ValFriendTalk","GLOBAL",4) Global("T2ValMulaheyAlreadyDead","GLOBAL",0)~ T2ValFriendTalk2
  SAY @30
  ++ @31 DO ~IncrementGlobal("T2ValFriendTalk","GLOBAL",1) RealSetGlobalTimer("T2ValFriendTalkTimer","GLOBAL",2700)~ + T2ValF2Good
  ++ @32 DO ~IncrementGlobal("T2ValFriendTalk","GLOBAL",1) RealSetGlobalTimer("T2ValFriendTalkTimer","GLOBAL",2700)~ + T2ValF2Lliira
  ++ @33 DO ~IncrementGlobal("T2ValFriendTalk","GLOBAL",1) RealSetGlobalTimer("T2ValFriendTalkTimer","GLOBAL",2700)~ + T2ValF2Vintage
  ++ @34 DO ~IncrementGlobal("T2ValFriendTalk","GLOBAL",1) RealSetGlobalTimer("T2ValFriendTalkTimer","GLOBAL",2700)~ + T2ValF2Flirt
  ++ @35 DO ~IncrementGlobal("T2ValFriendTalk","GLOBAL",1) RealSetGlobalTimer("T2ValFriendTalkTimer","GLOBAL",2700)~ + T2ValF2Wine
  ++ @36 DO ~IncrementGlobal("T2ValFriendTalk","GLOBAL",1) RealSetGlobalTimer("T2ValFriendTalkTimer","GLOBAL",2700)~ + T2ValF2Sleep
END

IF ~~ T2ValF2Good
SAY @37
  ++ @38 + T2ValF2Wine
  ++ @39 + T2ValF2Flirt
  ++ @40 + T2ValF2Fight
  ++ @41 + T2ValF2Sleep
END

// Alternate start: if Valerie is recruited after clearing the Nashkel Mines

IF ~Global("T2ValFriendTalk","GLOBAL",4) Global("T2ValMulaheyAlreadyDead","GLOBAL",1)~ T2ValFriendTalk2
  SAY @42
  ++ @31 DO ~IncrementGlobal("T2ValFriendTalk","GLOBAL",1) RealSetGlobalTimer("T2ValFriendTalkTimer","GLOBAL",2700)~ + T2ValF2Good2
  ++ @32 DO ~IncrementGlobal("T2ValFriendTalk","GLOBAL",1) RealSetGlobalTimer("T2ValFriendTalkTimer","GLOBAL",2700)~ + T2ValF2Lliira
  ++ @33 DO ~IncrementGlobal("T2ValFriendTalk","GLOBAL",1) RealSetGlobalTimer("T2ValFriendTalkTimer","GLOBAL",2700)~ + T2ValF2Vintage
  ++ @34 DO ~IncrementGlobal("T2ValFriendTalk","GLOBAL",1) RealSetGlobalTimer("T2ValFriendTalkTimer","GLOBAL",2700)~ + T2ValF2Flirt
  ++ @35 DO ~IncrementGlobal("T2ValFriendTalk","GLOBAL",1) RealSetGlobalTimer("T2ValFriendTalkTimer","GLOBAL",2700)~ + T2ValF2Wine2
  ++ @36 DO ~IncrementGlobal("T2ValFriendTalk","GLOBAL",1) RealSetGlobalTimer("T2ValFriendTalkTimer","GLOBAL",2700)~ + T2ValF2Sleep
END

IF ~~ T2ValF2Good2
  SAY @43
  ++ @38 + T2ValF2Wine
  ++ @39 + T2ValF2Flirt
  ++ @40 + T2ValF2Fight
  ++ @41 + T2ValF2Sleep
END

IF ~~ T2ValF2Lliira
  SAY @44
  ++ @45 + T2ValF2Torm
  ++ @46 + T2ValF2Flirt
  ++ @47 + T2ValF2Fight
  ++ @48 + T2ValF2Sleep
END

IF ~~ T2ValF2Vintage
  SAY @49
  ++ @50 + T2ValF2Wine2
  ++ @51 + T2ValF2Flirt
  ++ @52 + T2ValF2Fight
  ++ @53 + T2ValF2Sleep
END

IF ~~ T2ValF2Wine2
  SAY @54
  ++ @55 + T2ValF2Flirt
  ++ @56 + T2ValF2Fight
  ++ @57 + T2ValF2Sleep
END

IF ~~ T2ValF2Flirt
  SAY @58
  ++ @59 + T2ValF2Try
  ++ @60 + T2ValF2Smooth
  ++ @61 + T2ValF2Want
  ++ @62 + T2ValF2Wrong
END

IF ~~ T2ValF2Try
  SAY @63
  ++ @64 + T2ValF2Shot
  IF ~OR(3) Gender(Player1,MALE) Race(Player1,HALFLING) Race(Player1,GNOME)~ THEN REPLY @65 + T2ValF2WhyM
  IF ~Gender(Player1,FEMALE) !Race(Player1,HALFLING) !Race(Player1,GNOME)~ THEN REPLY @65 + T2ValF2WhyF
  IF ~Gender(Player1,FEMALE)~ THEN REPLY @66 + T2ValF2Bi
  ++ @67 + T2ValF2Sleep
END

IF ~~ T2ValF2Smooth
  SAY @68
  ++ @64 + T2ValF2Shot
  IF ~OR(3) Gender(Player1,MALE) Race(Player1,HALFLING) Race(Player1,GNOME)~ THEN REPLY @65 + T2ValF2WhyM
  IF ~Gender(Player1,FEMALE) !Race(Player1,HALFLING) !Race(Player1,GNOME)~ THEN REPLY @65 + T2ValF2WhyF
  IF ~Gender(Player1,FEMALE)~ THEN REPLY @66 + T2ValF2Bi
  ++ @67 + T2ValF2Sleep
END

IF ~~ T2ValF2Shot
  SAY @69
  IF ~~ DO ~RestParty()~ EXIT
END

IF ~~ T2ValF2WhyM
  SAY @70
  IF ~~ DO ~RestParty()~ EXIT
END

IF ~~ T2ValF2WhyF
  SAY @71
  IF ~~ DO ~RestParty()~ EXIT
END

IF ~~ T2ValF2Bi
  SAY @72
  IF ~~ DO ~RestParty()~ EXIT
END

IF ~~ T2ValF2Want
  SAY @73
  IF ~~ DO ~RestParty()~ EXIT
END

IF ~~ T2ValF2Wrong
  SAY @74
  IF ~~ EXIT
END

IF ~~ T2ValF2Fight
  SAY @75
  ++ @76 + T2ValF2Fun
  ++ @77 + T2ValF2Quest
  ++ @78 + T2ValF2Quest
  ++ @79 + T2ValF2Adventure
END

IF ~~ T2ValF2Fun
  SAY @80
  ++ @81 + T2ValF2Insane
  ++ @82 + T2ValF2Alive
  ++ @83 + T2ValF2Adventure
  ++ @84 + T2ValF2Sleep
END

IF ~~ T2ValF2Insane
  SAY @85
  IF ~~ DO ~RestParty()~ EXIT
END

IF ~~ T2ValF2Alive
  SAY @86
  IF ~~ DO ~RestParty()~ EXIT
END

IF ~~ T2ValF2Adventure
  SAY @87
  IF ~~ DO ~RestParty()~ EXIT
END

IF ~~ T2ValF2Quest
  SAY @88
  ++ @89 + T2ValF2Must
  ++ @90 + T2ValF2Must
  ++ @91 + T2ValF2Alive
  ++ @92 + T2ValF2Sleep
END

IF ~~ T2ValF2Must
  SAY @93
  IF ~~ DO ~RestParty()~ EXIT
END

IF ~~ T2ValF2Wine
  SAY @94
  ++ @95 + T2ValF2CW
  ++ @96 + T2ValF2Family
  ++ @97 + T2ValF2Drunk
  ++ @98 + T2ValF2Sleep
END

IF ~~ T2ValF2Drunk
  SAY @99
  ++ @100 + T2ValF2CW
  ++ @101 + T2ValF2Family
  ++ @102 + T2ValF2Sleep
END

IF ~~ T2ValF2CW
  SAY @103
  ++ @104 + T2ValF2Horrible
  ++ @105 + T2ValF2Parents
  ++ @106 + T2ValF2Sad
  ++ @107 + T2ValF2Track
END

IF ~~ T2ValF2Family
  SAY @108
  ++ @104 + T2ValF2Horrible
  ++ @105 + T2ValF2Parents
  ++ @106 + T2ValF2Sad
END

IF ~~ T2ValF2Horrible
  SAY @109
  ++ @110 + T2ValF2Miss
  ++ @111 + T2ValF2Danger
  ++ @112 + T2ValF2Take
  ++ @113 + T2ValF2Sleep
END

IF ~~ T2ValF2Miss
  SAY @114
  IF ~~ DO ~RestParty()~ EXIT
END

IF ~~ T2ValF2Danger
  SAY @115
  IF ~~ DO ~RestParty()~ EXIT
END

IF ~~ T2ValF2Take
  SAY @116
  IF ~~ DO ~RestParty()~ EXIT
END

IF ~~ T2ValF2Parents
  SAY @117
  ++ @118 + T2ValF2Sorry
  ++ @119 + T2ValF2Mother
  ++ @120 + T2ValF2Miss
  ++ @121 + T2ValF2Sleep
END

IF ~~ T2ValF2Sorry
  SAY @122
  IF ~~ DO ~RestParty()~ EXIT
END

IF ~~ T2ValF2Mother
  SAY @123
  IF ~~ DO ~RestParty()~ EXIT
END

IF ~~ T2ValF2Sad
  SAY @124
  IF ~~ DO ~RestParty()~ EXIT
END

IF ~~ T2ValF2Track
  SAY @125
  IF ~~ DO ~RestParty()~ EXIT
END

IF ~~ T2ValF2Torm
  SAY @126
  ++ @127 + T2ValF2Pantheon
  ++ @128 + T2ValF2Duty
  ++ @129 + T2ValF2Choice
  ++ @98 + T2ValF2Sleep
END

IF ~~ T2ValF2Pantheon
  SAY @130
  ++ @131 + T2ValF2Cleric
  ++ @132 + T2ValF2Paladin
  ++ @133 + T2ValF2Gods
  ++ @134 + T2ValF2Sleep
END

IF ~~ T2ValF2Cleric
  SAY @135
  IF ~~ DO ~RestParty()~ EXIT
END

IF ~~ T2ValF2Paladin
  SAY @136
  IF ~~ DO ~RestParty()~ EXIT
END

IF ~~ T2ValF2Gods
  SAY @137
  IF ~~ DO ~RestParty()~ EXIT
END

IF ~~ T2ValF2Duty
  SAY @138
  ++ @139 + T2ValF2MS
  ++ @140 + T2ValF2Cleric
  ++ @141 + T2ValF2Paladin
  ++ @142 + T2ValF2Sleep
END

IF ~~ T2ValF2MS
  SAY @143
  IF ~~ DO ~RestParty()~ EXIT
END

IF ~~ T2ValF2Choice
  SAY @144
  ++ @145 + T2ValF2Lathander
  ++ @146 + T2ValF2Helm
  ++ @147 + T2ValF2Cleric
  ++ @148 + T2ValF2Sleep
END

IF ~~ T2ValF2Lathander
  SAY @149
  IF ~~ DO ~RestParty()~ EXIT
END

IF ~~ T2ValF2Helm
  SAY @150
  IF ~~ DO ~RestParty()~ EXIT
END

IF ~~ T2ValF2Sleep
  SAY @151
  IF ~~ DO ~RestParty()~ EXIT
END

/* --------------------------- *
 *  Valerie Friendship Talk 3  *
 * --------------------------- */
IF ~Global("T2ValFriendTalk","GLOBAL",6)~ T2ValFriendTalk3
  SAY @152
  ++ @153 DO ~IncrementGlobal("T2ValFriendTalk","GLOBAL",1) RealSetGlobalTimer("T2ValFriendTalkTimer","GLOBAL",2700)~ + T2ValF3Idea
  ++ @154 DO ~IncrementGlobal("T2ValFriendTalk","GLOBAL",1) RealSetGlobalTimer("T2ValFriendTalkTimer","GLOBAL",2700)~ + T2ValF3Justice
  ++ @155 DO ~IncrementGlobal("T2ValFriendTalk","GLOBAL",1) RealSetGlobalTimer("T2ValFriendTalkTimer","GLOBAL",2700)~ + T2ValF3Short
  ++ @156 DO ~IncrementGlobal("T2ValFriendTalk","GLOBAL",1) RealSetGlobalTimer("T2ValFriendTalkTimer","GLOBAL",2700)~ + T2ValF3Rebuff
END

IF ~~ T2ValF3Rebuff
  SAY @157
  IF ~~ EXIT
END

IF ~~ T2ValF3Idea
  SAY @158
  ++ @159 + T2ValF3Justice
  ++ @155 + T2ValF3Short
  ++ @160 + T2ValF3Rebuff
END

IF ~~ T2ValF3Justice
  SAY @161
  ++ @162 + T2ValF3Pity
  ++ @163 + T2ValF3Press
  ++ @164 DO ~SetGlobal("T2ValFriendship","GLOBAL",3)~ + T2ValF3Obey
  ++ @165 + T2ValF3Moving
END

IF ~~ T2ValF3Pity
  SAY @166
  IF ~~ EXIT
END

IF ~~ T2ValF3Press
  SAY @167
  IF ~~ EXIT
END

IF ~~ T2ValF3Obey
  SAY @168
  IF ~~ EXIT
END

IF ~~ T2ValF3Moving
  SAY @169
  IF ~~ EXIT
END

IF ~~ T2ValF3Short
  SAY @170
  IF ~~ EXIT
END

/* --------------------------- *
 *  Valerie Friendship Talk 4  *
 * --------------------------- */
IF ~Global("T2ValFriendTalk","GLOBAL",8)~ T2ValFriendTalk4
  SAY @171
  ++ @172 DO ~IncrementGlobal("T2ValFriendTalk","GLOBAL",1) RealSetGlobalTimer("T2ValFriendTalkTimer","GLOBAL",2700)~ + T2ValF4Book
  ++ @173 DO ~IncrementGlobal("T2ValFriendTalk","GLOBAL",1) RealSetGlobalTimer("T2ValFriendTalkTimer","GLOBAL",2700)~ + T2ValF4Boring
  ++ @174 DO ~IncrementGlobal("T2ValFriendTalk","GLOBAL",1) RealSetGlobalTimer("T2ValFriendTalkTimer","GLOBAL",2700)~ + T2ValF4Boring
  ++ @175 DO ~SetGlobal("T2ValFriendship","GLOBAL",3)~ + T2ValF4Burn
END

IF ~~ T2ValF4Burn
  SAY @176
  IF ~~ EXIT
END

IF ~~ T2ValF4Book
  SAY @177
  ++ @178 + T2ValF4Own
  ++ @179 + T2ValF4Oghma
  ++ @180 + T2ValF4Read
  ++ @181 + T2ValF4Boring
END

IF ~~ T2ValF4Own
  SAY @182
  ++ @183 + T2ValF4Enchant
  ++ @184 + T2ValF4Deneir
  ++ @185 + T2ValF4Dreams
  ++ @186 + T2ValF4Practical
END

IF ~~ T2ValF4Enchant
  SAY @187
  ++ @188 + T2ValF4Family
  ++ @189 + T2ValF4Stories
  ++ @190 + T2ValF4Regret
  ++ @191 + T2ValF4Bye
END

IF ~~ T2ValF4Deneir
  SAY @192
  ++ @188 + T2ValF4Family
  ++ @189 + T2ValF4Stories
  ++ @190 + T2ValF4Regret
  ++ @191 + T2ValF4Bye
END

IF ~~ T2ValF4Dreams
  SAY @193
  ++ @188 + T2ValF4Family
  ++ @189 + T2ValF4Stories
  ++ @190 + T2ValF4Regret
  ++ @191 + T2ValF4Bye
END

IF ~~ T2ValF4Practical
  SAY @194
  ++ @188 + T2ValF4Family
  ++ @189 + T2ValF4Stories
  ++ @190 + T2ValF4Regret
  ++ @191 + T2ValF4Bye
END

IF ~~ T2ValF4Oghma
  SAY @195
  ++ @196 + T2ValF4Fun
  ++ @197 + T2ValF4Trashy
  ++ @198 + T2ValF4Learn
  ++ @199 + T2ValF4Preachy
END

IF ~~ T2ValF4Fun
  SAY @200
  ++ @188 + T2ValF4Family
  ++ @189 + T2ValF4Stories
  ++ @190 + T2ValF4Regret
  ++ @191 + T2ValF4Bye
END

IF ~~ T2ValF4Trashy
  SAY @201
  ++ @188 + T2ValF4Family
  ++ @189 + T2ValF4Stories
  ++ @190 + T2ValF4Regret
  ++ @191 + T2ValF4Bye
END

IF ~~ T2ValF4Learn
  SAY @202
  ++ @188 + T2ValF4Family
  ++ @189 + T2ValF4Stories
  ++ @190 + T2ValF4Regret
  ++ @191 + T2ValF4Bye
END

IF ~~ T2ValF4Preachy
  SAY @203
  ++ @188 + T2ValF4Family
  ++ @189 + T2ValF4Stories
  ++ @190 + T2ValF4Regret
  ++ @191 + T2ValF4Bye
END

IF ~~ T2ValF4Read
  SAY @204
  ++ @205 + T2ValF4Fair
  ++ @206 + T2ValF4Romance
  ++ @207 + T2ValF4Nerd
  ++ @208 + T2ValF4Word
END

IF ~~ T2ValF4Fair
  SAY @209
  ++ @188 + T2ValF4Family
  ++ @189 + T2ValF4Stories
  ++ @190 + T2ValF4Regret
  ++ @191 + T2ValF4Bye
END

IF ~~ T2ValF4Romance
  SAY @210
  ++ @188 + T2ValF4Family
  ++ @189 + T2ValF4Stories
  ++ @190 + T2ValF4Regret
  ++ @191 + T2ValF4Bye
END

IF ~~ T2ValF4Nerd
  SAY @211
  ++ @188 + T2ValF4Family
  ++ @189 + T2ValF4Stories
  ++ @190 + T2ValF4Regret
  ++ @191 + T2ValF4Bye
END

IF ~~ T2ValF4Word
  SAY @212
  ++ @188 + T2ValF4Family
  ++ @189 + T2ValF4Stories
  ++ @190 + T2ValF4Regret
  ++ @191 + T2ValF4Bye
END


IF ~~ T2ValF4Boring
  SAY @213
  ++ @188 + T2ValF4Family
  ++ @189 + T2ValF4Stories
  ++ @190 + T2ValF4Regret
  ++ @191 + T2ValF4Bye
END

IF ~~ T2ValF4Family
  SAY @214
  ++ @65 + T2ValF4Why
  ++ @215 + T2ValF4Terrible
  ++ @216 + T2ValF4Resent
  ++ @217 + T2ValF4Stories
END

IF ~~ T2ValF4Stories
  SAY @218
  ++ @219 + T2ValF4Magic
  ++ @220 + T2ValF4Terrible
  ++ @221 + T2ValF4Resent
END

IF ~~ T2ValF4Resent
  SAY @222
  ++ @223 + T2ValF4Magic
  ++ @224 + T2ValF4Terrible
  ++ @225 + T2ValF4Stories
END

IF ~~ T2ValF4Why
  SAY @226
  IF ~~ EXIT
END

IF ~~ T2ValF4Magic
  SAY @227
  IF ~~ EXIT
END

IF ~~ T2ValF4Terrible
  SAY @228
  IF ~~ EXIT
END

IF ~~ T2ValF4Regret
  SAY @229
  IF ~~ EXIT
END

IF ~~ T2ValF4Bye
  SAY @29
  IF ~~ EXIT
END

/* --------------------------- *
 *  Valerie Friendship Talk 5  *
 * --------------------------- */
IF ~Global("T2ValFriendTalk","GLOBAL",10)~ T2ValFriendTalk5
  SAY @230
  ++ @231 DO ~IncrementGlobal("T2ValFriendTalk","GLOBAL",1)~ + T2ValF5Ath
  ++ @232 DO ~IncrementGlobal("T2ValFriendTalk","GLOBAL",1)~ + T2ValF5Homesick
  ++ @233 DO ~IncrementGlobal("T2ValFriendTalk","GLOBAL",1)~ + T2ValF5Sword
  ++ @234 DO ~SetGlobal("T2ValFriendship","GLOBAL",3)~ + T2ValF5Bye
END

IF ~~ T2ValF5Bye
  SAY @205
  IF ~~ EXIT
END

IF ~~ T2ValF5Ath
  SAY @235
  ++ @236 + T2ValF5Amn
  ++ @237 + T2ValF5Like
  ++ @238 + T2ValF5Home
  ++ @239 + T2ValF5Travel
  ++ @240 + T2ValF5Bye
END

IF ~~ T2ValF5Homesick
  SAY @241
  ++ @242 + T2ValF5AmnReal
  ++ @243 + T2ValF5Like
  ++ @244 + T2ValF5AthHome
  ++ @245 + T2ValF5Travel
  ++ @240 + T2ValF5Bye
END

IF ~~ T2ValF5Sword
  SAY @246
  ++ @247 + T2ValF5Amn
  ++ @248 + T2ValF5Like
  ++ @249 + T2ValF5AthHome
  ++ @250 + T2ValF5Travel
  ++ @240 + T2ValF5Bye
END

IF ~~ T2ValF5Amn
  SAY @251
  ++ @252 + T2ValF5Arrest
  ++ @253 + T2ValF5Regulate
  ++ @254 + T2ValF5Oppress
  ++ @255 + T2ValF5Bye
END

IF ~~ T2ValF5AmnReal
  SAY @256
  ++ @252 + T2ValF5Arrest
  ++ @253 + T2ValF5Regulate
  ++ @254 + T2ValF5Oppress
  ++ @255 + T2ValF5Bye
END

IF ~~ T2ValF5Travel
  SAY @257
  IF ~~ EXIT
END

IF ~~ T2ValF5Like
  SAY @258
  ++ @252 + T2ValF5Arrest
  ++ @253 + T2ValF5Regulate
  ++ @254 + T2ValF5Oppress
  ++ @255 + T2ValF5Bye
END

IF ~~ T2ValF5Home
  SAY @259
  ++ @252 + T2ValF5Arrest
  ++ @253 + T2ValF5Regulate
  ++ @254 + T2ValF5Oppress
  ++ @255 + T2ValF5Bye
END

IF ~~ T2ValF5AthHome
  SAY @260
  ++ @252 + T2ValF5Arrest
  ++ @253 + T2ValF5Regulate
  ++ @254 + T2ValF5Oppress
  ++ @255 + T2ValF5Bye
END

IF ~~ T2ValF5Arrest
  SAY @261
  IF ~~ EXIT
END

IF ~~ T2ValF5Regulate
 SAY @262
  IF ~~ EXIT
END

IF ~~ T2ValF5Oppress
  SAY @263
  IF ~~ EXIT
END

/* ------------------------------------------------------------ *
 *  Valerie Friendship Talk 6                                   *
 *  Condition: Should only fire after clearing the bandit camp  *
 * ------------------------------------------------------------ */
IF ~Global("T2ValFriendTalk","GLOBAL",12)~ T2ValFriendTalk6
  SAY @264
  ++ @265 DO ~IncrementGlobal("T2ValFriendTalk","GLOBAL",1) RealSetGlobalTimer("T2ValFriendTalkTimer","GLOBAL",2700)~ + T2ValF6Nightmares
  ++ @266 DO ~IncrementGlobal("T2ValFriendTalk","GLOBAL",1) RealSetGlobalTimer("T2ValFriendTalkTimer","GLOBAL",2700)~ + T2ValF6Fine
  ++ @267 DO ~IncrementGlobal("T2ValFriendTalk","GLOBAL",1) RealSetGlobalTimer("T2ValFriendTalkTimer","GLOBAL",2700)~  + T2ValF6Worry
  ++ @268 DO ~IncrementGlobal("T2ValFriendTalk","GLOBAL",1) RealSetGlobalTimer("T2ValFriendTalkTimer","GLOBAL",2700)~ + T2ValF6Fine
  ++ @269 DO ~IncrementGlobal("T2ValFriendTalk","GLOBAL",1) RealSetGlobalTimer("T2ValFriendTalkTimer","GLOBAL",2700)~ + T2ValF6None
END

IF ~~ T2ValF6Nightmares
  SAY @270
  ++ @271 + T2ValF6Hmmm
  ++ @272 + T2ValF6Idea
  ++ @273 + T2ValF6Illness
  ++ @274 + T2ValF6Encounter
END

IF ~~ T2ValF6Hmmm
  SAY @275
  ++ @276 + T2ValF6Curse
  ++ @277 + T2ValF6Priest
  ++ @278 + T2ValF6Handle
END

IF ~~ T2ValF6Idea
  SAY @279
  ++ @276 + T2ValF6Curse
  ++ @277 + T2ValF6Priest
  ++ @278 + T2ValF6Handle
END

IF ~~ T2ValF6Illness
  SAY @280
  ++ @276 + T2ValF6Curse
  ++ @277 + T2ValF6Priest
  ++ @278 + T2ValF6Handle
END

IF ~~ T2ValF6Encounter
  SAY @281
  ++ @276 + T2ValF6Curse
  ++ @277 + T2ValF6Priest
  ++ @278 + T2ValF6Handle
END

IF ~~ T2ValF6Curse
  SAY @282
  IF ~~ EXIT
END

IF ~~ T2ValF6Priest
  SAY @283
  IF ~~ EXIT
END

IF ~~ T2ValF6Handle
  SAY @284
  IF ~~ EXIT
END

IF ~~ T2ValF6Fine
  SAY @285
  ++ @286 + T2ValF6Fair
  ++ @287 + T2ValF6Nightmares
  ++ @288 + T2ValF6Worry
  ++ @289 + T2ValF6None
END

IF ~~ T2ValF6Fair
  SAY @290
  IF ~~ EXIT
END

IF ~~ T2ValF6Worry
  SAY @291
  ++ @271 + T2ValF6Hmmm
  ++ @272 + T2ValF6Idea
  ++ @273 + T2ValF6Illness
  ++ @274 + T2ValF6Encounter
END

IF ~~ T2ValF6None
  SAY @292
  ++ @293 DO ~SetGlobal("T2ValFriendship","GLOBAL",3)~ + T2ValF6Burn
  ++ @294 + T2ValF6Nightmares
  ++ @295 + T2ValF6Worry
END

IF ~~ T2ValF6Burn
  SAY @296
  IF ~~ EXIT
END

/* --------------------------- *
 *  Valerie Friendship Talk 7  *
 * --------------------------- */
IF ~Global("T2ValFriendTalk","GLOBAL",14)~ T2ValFriendTalk7
  SAY @297
  ++ @298 DO ~IncrementGlobal("T2ValFriendTalk","GLOBAL",1) RealSetGlobalTimer("T2ValFriendTalkTimer","GLOBAL",2700)~ + T2ValF7Thought
  ++ @299 DO ~IncrementGlobal("T2ValFriendTalk","GLOBAL",1) RealSetGlobalTimer("T2ValFriendTalkTimer","GLOBAL",2700)~ + T2ValF7Worry
  ++ @300 DO ~IncrementGlobal("T2ValFriendTalk","GLOBAL",1) RealSetGlobalTimer("T2ValFriendTalkTimer","GLOBAL",2700)~  + T2ValF7Rule
  ++ @301 DO ~IncrementGlobal("T2ValFriendTalk","GLOBAL",1) RealSetGlobalTimer("T2ValFriendTalkTimer","GLOBAL",2700)~ + T2ValF7NoTalk
END

IF ~~ T2ValF7Thought
  SAY @302
  ++ @303 + T2ValF7Learn
  ++ @304 + T2ValF7Destroy
  ++ @305 + T2ValF7Thanks
  IF ~OR(3) Gender(Player1,MALE) Race(Player1,HALFLING) Race(Player1,GNOME)~ THEN REPLY @306 + T2ValF7FlirtM
  IF ~Gender(Player1,FEMALE) !Race(Player1,HALFLING) !Race(Player1,GNOME)~ THEN REPLY @306 + T2ValF7FlirtF
END

IF ~~ T2ValF7Learn
  SAY @307
  IF ~~ EXIT
END

IF ~~ T2ValF7Destroy
  SAY @308
  IF ~~ EXIT
END

IF ~~ T2ValF7Thanks
  SAY @309
  IF ~~ EXIT
END

IF ~~ T2ValF7FlirtM
  SAY @310
  IF ~~ EXIT
END

IF ~~ T2ValF7FlirtF
  SAY @311
  IF ~~ EXIT
END

IF ~~ T2ValF7Worry
  SAY @312
  ++ @303 + T2ValF7Learn
  ++ @304 + T2ValF7Destroy
  ++ @305 + T2ValF7Thanks
  IF ~Gender(Player1,MALE)~ THEN REPLY @306 + T2ValF7FlirtM
  IF ~Gender(Player1,FEMALE)~ THEN REPLY @306 + T2ValF7FlirtF
END

IF ~~ T2ValF7Rule
  SAY @313
  ++ @303 + T2ValF7Learn
  ++ @314 + T2ValF7Destroy
  ++ @305 + T2ValF7Thanks
  IF ~OR(3) Gender(Player1,MALE) Race(Player1,HALFLING) Race(Player1,GNOME)~ THEN REPLY @306 + T2ValF7FlirtM
  IF ~Gender(Player1,FEMALE) !Race(Player1,HALFLING) !Race(Player1,GNOME)~ THEN REPLY @306 + T2ValF7FlirtF
END

IF ~~ T2ValF7NoTalk
  SAY @315
  ++ @316 + T2ValF7Talk
  ++ @317 + T2ValF7Trust
  ++ @318 + T2ValF7Clear
  ++ @319 + T2ValF7Thanks
END

IF ~~ T2ValF7Talk
  SAY @320
  IF ~~ EXIT
END

IF ~~ T2ValF7Trust
  SAY @321
  IF ~~ EXIT
END

IF ~~ T2ValF7Clear
  SAY @322
  IF ~~ EXIT
END
END

/* --------------------------- *
 *  Valerie Friendship Talk 8  *
 * --------------------------- */
CHAIN IF ~Global("T2ValFriendTalk","GLOBAL",16)~ THEN T2VALJ T2ValFriendTalk8
  @323
  == T2VALJ IF ~Race(Player1,HUMAN)~ THEN @324
  == T2VALJ IF ~OR(2) Race(Player1,HALF_ELF) Race(Player1,ELF)~ THEN @325
  == T2VALJ IF ~Race(Player1,DWARF)~ THEN @326
  == T2VALJ IF ~Race(Player1,GNOME)~ THEN @327
  == T2VALJ IF ~Race(Player1,HALFLING)~ THEN @328
  == T2VALJ IF ~Race(Player1,HALFORC)~ THEN @329
END
  ++ @330 DO ~IncrementGlobal("T2ValFriendTalk","GLOBAL",1) RealSetGlobalTimer("T2ValFriendTalkTimer","GLOBAL",2700)~ EXTERN T2VALJ T2ValF8Build
  ++ @331 DO ~IncrementGlobal("T2ValFriendTalk","GLOBAL",1) RealSetGlobalTimer("T2ValFriendTalkTimer","GLOBAL",2700)~ EXTERN T2VALJ T2ValF8Unnatural
  + ~OR(4) Class(Player1,CLERIC) Class(Player1,DRUID) Class(Player1,PALADIN) Class(Player1,RANGER)~ + @332 DO ~IncrementGlobal("T2ValFriendTalk","GLOBAL",1) RealSetGlobalTimer("T2ValFriendTalkTimer","GLOBAL",2700)~ EXTERN T2VALJ T2ValF8Faith
  + ~OR(2) Class(Player1,MAGE) Class(Player1,BARD)~ + @333 DO ~IncrementGlobal("T2ValFriendTalk","GLOBAL",1) RealSetGlobalTimer("T2ValFriendTalkTimer","GLOBAL",2700)~ EXTERN T2VALJ T2ValF8Magic
  + ~OR(4) Class(Player1,THIEF) Class(Player1,FIGHTER) Kit(Player1,BARBARIAN) Class(Player1,MONK)~ + @334 DO ~IncrementGlobal("T2ValFriendTalk","GLOBAL",1) RealSetGlobalTimer("T2ValFriendTalkTimer","GLOBAL",2700)~ EXTERN T2VALJ T2ValF8Fight
  + ~Class(Player1,SORCERER)~ + @335 DO ~IncrementGlobal("T2ValFriendTalk","GLOBAL",1) RealSetGlobalTimer("T2ValFriendTalkTimer","GLOBAL",2700)~ EXTERN T2VALJ T2ValF8Sorc
  ++ @336 DO ~IncrementGlobal("T2ValFriendTalk","GLOBAL",1) RealSetGlobalTimer("T2ValFriendTalkTimer","GLOBAL",2700)~ EXTERN T2VALJ T2ValF8Bye

APPEND T2VALJ

IF ~~ T2ValF8Bye
  SAY @337
  IF ~~ EXIT
END

IF ~~ T2ValF8Build
  SAY @338
  ++ @339 + T2ValF8Heritage
  ++ @340 + T2ValF8Think
  ++ @341 + T2ValF8Sense
  IF ~Class(Player1,SORCERER)~ THEN REPLY @342 + T2ValF8Uhoh
END

IF ~~ T2ValF8Uhoh
  SAY @343
  IF ~~ EXIT
END

IF ~~ T2ValF8Heritage
  SAY @344
  IF ~~ EXIT
END

IF ~~ T2ValF8Think
  SAY @345
  IF ~~ EXIT
END

IF ~~ T2ValF8Sense
  SAY @346
  IF ~~ EXIT
END

IF ~~ T2ValF8Unnatural
  SAY @347
  ++ @339 + T2ValF8Heritage
  ++ @340 + T2ValF8Think
  ++ @341 + T2ValF8Sense
  IF ~Class(Player1,SORCERER)~ THEN REPLY @342 DO ~IncrementGlobal("T2ValFriendTalk","GLOBAL",1) RealSetGlobalTimer("T2ValFriendTalkTimer","GLOBAL",2700)~ + T2ValF8Uhoh
END

IF ~~ T2ValF8Faith
  SAY @348
  IF ~~ EXIT
END

IF ~~ T2ValF8Magic
  SAY @349
  ++ @339 + T2ValF8Heritage
  ++ @340 + T2ValF8Think
  ++ @341 + T2ValF8Sense
  IF ~Class(Player1,SORCERER)~ THEN REPLY @342 DO ~IncrementGlobal("T2ValFriendTalk","GLOBAL",1) RealSetGlobalTimer("T2ValFriendTalkTimer","GLOBAL",2700)~ + T2ValF8Uhoh
END

IF ~~ T2ValF8Fight
  SAY @350
  ++ @339 + T2ValF8Heritage
  ++ @340 + T2ValF8Think
  ++ @341 + T2ValF8Sense
  IF ~Class(Player1,SORCERER)~ THEN REPLY @342 DO ~IncrementGlobal("T2ValFriendTalk","GLOBAL",1) RealSetGlobalTimer("T2ValFriendTalkTimer","GLOBAL",2700)~ + T2ValF8Uhoh
END

IF ~~ T2ValF8Sorc
  SAY @351
  ++ @339 + T2ValF8Heritage
  ++ @352 + T2ValF8Think
  ++ @341 + T2ValF8Sense
  IF ~Class(Player1,SORCERER)~ THEN REPLY @353 DO ~IncrementGlobal("T2ValFriendTalk","GLOBAL",1) RealSetGlobalTimer("T2ValFriendTalkTimer","GLOBAL",2700)~ + T2ValF8Uhoh
END

/* --------------------------- *
 *  Valerie Friendship Talk 9  *
 * --------------------------- */
IF ~Global("T2ValFriendTalk","GLOBAL",18)~ T2ValFriendTalk9
  SAY @354
  ++ @355 DO ~IncrementGlobal("T2ValFriendTalk","GLOBAL",1)~ + T2ValF9Compulsive
  ++ @356 DO ~IncrementGlobal("T2ValFriendTalk","GLOBAL",1)~ + T2ValF9Appreciate
  ++ @357 DO ~IncrementGlobal("T2ValFriendTalk","GLOBAL",1)~  + T2ValF9Ask
  ++ @358 DO ~IncrementGlobal("T2ValFriendTalk","GLOBAL",1)~ + T2ValF9Learn
  ++ @359 DO ~IncrementGlobal("T2ValFriendTalk","GLOBAL",1)~ + T2ValF9Work
END

IF ~~ T2ValF9Compulsive
  SAY @360
  IF ~~ EXIT
END

IF ~~ T2ValF9Appreciate
  SAY @361
  IF ~~ EXIT
END

IF ~~ T2ValF9Ask
  SAY @362
  IF ~~ EXIT
END

IF ~~ T2ValF9Learn
  SAY @363
  IF ~~ EXIT
END

IF ~~ T2ValF9Work
  SAY @364
  IF ~~ EXIT
END

/* ---------------------------------------------------------- *
 *  Valerie Friendship Talk 10                                *
 *  Condition: should only fire after clearing the Cloakwood  *
 * ---------------------------------------------------------- */
IF ~Global("T2ValFriendTalk","GLOBAL",20)~ T2ValFriendTalk10
  SAY @365
  ++ @366 DO ~IncrementGlobal("T2ValFriendTalk","GLOBAL",1) RealSetGlobalTimer("T2ValFriendTalkTimer","GLOBAL",2700)~ + T2ValF10Time
  ++ @367 DO ~IncrementGlobal("T2ValFriendTalk","GLOBAL",1) RealSetGlobalTimer("T2ValFriendTalkTimer","GLOBAL",2700)~ + T2ValF10Calendar
  ++ @368 DO ~IncrementGlobal("T2ValFriendTalk","GLOBAL",1) RealSetGlobalTimer("T2ValFriendTalkTimer","GLOBAL",2700)~  + T2ValF10Jaded
  ++ @369 DO ~IncrementGlobal("T2ValFriendTalk","GLOBAL",1) RealSetGlobalTimer("T2ValFriendTalkTimer","GLOBAL",2700)~ + T2ValF10Recruit
  ++ @370 DO ~IncrementGlobal("T2ValFriendTalk","GLOBAL",1) RealSetGlobalTimer("T2ValFriendTalkTimer","GLOBAL",2700)~ + T2ValF10Quits
  ++ @371 DO ~IncrementGlobal("T2ValFriendTalk","GLOBAL",1) RealSetGlobalTimer("T2ValFriendTalkTimer","GLOBAL",2700)~ + T2ValF10Bye
END

IF ~~ T2ValF10Bye
  SAY @372
  IF ~~ EXIT
END

IF ~~ T2ValF10Time
  SAY @373
  ++ @374 + T2ValF10Recruit
  ++ @375 + T2ValF10Jaded
  ++ @376 + T2ValF10Quits
  ++ @377 + T2ValF10Calendar
END

IF ~~ T2ValF10Recruit
  SAY @378
  ++ @379 + T2ValF10Hero
  ++ @380 + T2ValF10Fangirl
  ++ @381 + T2ValF10Bard
  ++ @382 + T2ValF10Flirt
END

IF ~~ T2ValF10Hero
  SAY @383
  IF ~~ EXIT
END

IF ~~ T2ValF10Fangirl
  SAY @384
  IF ~~ EXIT
END

IF ~~ T2ValF10Bard
  SAY @385
  IF ~~ EXIT
END

IF ~~ T2ValF10Flirt
  SAY @386
  IF ~~ EXIT
END

IF ~~ T2ValF10Quits
  SAY @387
  ++ @388 + T2ValF10Found
  ++ @389 + T2ValF10War
  ++ @390 + T2ValF10Walls
  IF ~Gender(Player1,FEMALE) !Race(Player1,GNOME) !Race(Player1,HALFLING)~ THEN REPLY @391 + T2ValF10FindF
  IF ~OR(3) Gender(Player1,MALE) Race(Player1,GNOME) Race(Player1,HALFLING)~ THEN REPLY @391 + T2ValF10Find
END

IF ~~ T2ValF10Found
  SAY @392
  IF ~~ EXIT
END

IF ~~ T2ValF10War
  SAY @393
  IF ~~ EXIT
END

IF ~~ T2ValF10Walls
  SAY @394
  IF ~~ EXIT
END

IF ~~ T2ValF10Find
  SAY @395
  IF ~~ EXIT
END

IF ~~ T2ValF10FindF
  SAY @396
  IF ~~ EXIT
END

IF ~~ T2ValF10Jaded
  SAY @397
  ++ @398 + T2ValF10Like
  ++ @399 + T2ValF10Way
  ++ @400 + T2ValF10Leave
  ++ @401 + T2ValF10Works
END

IF ~~ T2ValF10Like
  SAY @402
  IF ~~ EXIT
END

IF ~~ T2ValF10Way
  SAY @403
  IF ~~ EXIT
END

IF ~~ T2ValF10Leave
  SAY @404
  IF ~~ EXIT
END

IF ~~ T2ValF10Works
  SAY @405
  IF ~~ EXIT
END

IF ~~ T2ValF10Calendar
  SAY @406
  IF ~~ EXIT
END

/* -------------------------------------- *
 *  Valerie Friendship Talk 11            *
 *  Condition: Fire on resting at an inn  *
 * -------------------------------------- */
IF ~Global("T2ValFriendTalk","GLOBAL",22)~ T2ValFriendTalk11
  SAY @407
  ++ @408 DO ~IncrementGlobal("T2ValFriendTalk","GLOBAL",1) RealSetGlobalTimer("T2ValFriendTalkTimer","GLOBAL",2700)~ + T2ValF11hangover
  ++ @409 DO ~IncrementGlobal("T2ValFriendTalk","GLOBAL",1) RealSetGlobalTimer("T2ValFriendTalkTimer","GLOBAL",2700)~ + T2ValF11wrong
  ++ @410 DO ~IncrementGlobal("T2ValFriendTalk","GLOBAL",1) RealSetGlobalTimer("T2ValFriendTalkTimer","GLOBAL",2700)~ + T2ValF11Forget
  ++ @411 DO ~IncrementGlobal("T2ValFriendTalk","GLOBAL",1) RealSetGlobalTimer("T2ValFriendTalkTimer","GLOBAL",2700)~  + T2ValF11rest
  ++ @412 DO ~IncrementGlobal("T2ValFriendTalk","GLOBAL",1) RealSetGlobalTimer("T2ValFriendTalkTimer","GLOBAL",2700)~ + T2ValF11rest
END

IF ~~ T2ValF11rest
  SAY @413
  IF ~~ DO ~RestParty()~ EXIT
END

IF ~~ T2ValF11hangover
  SAY @414
  ++ @415 + T2ValF11wrong
  ++ @416 + T2ValF11wrong
  ++ @417 + T2ValF11certain
END

IF ~~ T2ValF11Forget
  SAY @418
  ++ @419 + T2ValF11wrong
  ++ @420 + T2ValF11wrong
  ++ @421 + T2ValF11leave
END

IF ~~ T2ValF11leave
  SAY @422
  IF ~~ DO ~RestParty()~ EXIT
END

IF ~~ T2ValF11certain
  SAY @423
  IF ~~ DO ~RestParty()~ EXIT
END

IF ~~ T2ValF11wrong
  SAY @424
  = @425
  ++ @426 + T2ValF11wine
  ++ @427 + T2ValF11say
  ++ @428 + T2ValF11quit
  ++ @429 + T2ValF11join
END

IF ~~ T2ValF11wine
  SAY @430
  ++ @431 + T2ValF11faith
  IF ~Gender(Player1,MALE)~ THEN REPLY @432 + T2ValF11adventM
  IF ~Gender(Player1,FEMALE)~ THEN REPLY @432 + T2ValF11adventF
  ++ @433 + T2ValF11depend
  ++ @434 + T2ValF11fate
  ++ @435 + T2ValF11pity
  ++ @436 + T2ValF11whore
END

IF ~~ T2ValF11faith
  SAY @437
  ++ @438 + T2ValF11therapy
  ++ @439 + T2ValF11faith2
  ++ @440 + T2ValF11works
  ++ @441 + T2ValF11debt
END

IF ~~ T2ValF11therapy
  SAY @442
  IF ~~ DO ~RestParty()~ EXIT
END

IF ~~ T2ValF11faith2
  SAY @443
  IF ~~ DO ~RestParty()~ EXIT
END

IF ~~ T2ValF11works
  SAY @444
  IF ~~ DO ~RestParty()~ EXIT
END

IF ~~ T2ValF11debt
  SAY @445
  = @446
  = @447
  ++ @448 + T2ValF11pressure
  ++ @449 + T2ValF11serious
/*  ++ ~Well, none can fault your work fulfilling that debt over the course of our adventures.~ + T2ValF11fault */
  ++ @450 + T2ValF11goodnight
END

IF ~~ T2ValF11pressure
  SAY @451
  IF ~~ DO ~RestParty()~ EXIT
END

IF ~~ T2ValF11serious
  SAY @452
  IF ~~ DO ~RestParty()~ EXIT
END

IF ~~ T2ValF11goodnight
  SAY @453
  IF ~~ DO ~RestParty()~ EXIT
END

IF ~~ T2ValF11adventM
  SAY @454
  ++ @455 + T2ValF11friend
  ++ @456 + T2ValF11package
  ++ @457 + T2ValF11usurper
  ++ @458 + T2ValF11princess
  ++ @459 + T2ValF11prince
END

IF ~~ T2ValF11friend
  SAY @460
  IF ~~ DO ~RestParty()~ EXIT
END

IF ~~ T2ValF11package
  SAY @461
  IF ~~ DO ~RestParty()~ EXIT
END

IF ~~ T2ValF11usurper
  SAY @462
  IF ~~ DO ~RestParty()~ EXIT
END

END

CHAIN T2VALJ T2ValF11princess
  @463
  == T2VALJ IF ~InParty("%IMOEN_DV%")~ THEN @464
  == T2VALJ IF ~InParty("Jaheira")~ THEN @465
  == T2VALJ IF ~InParty("Dynaheir")~ THEN @466
  == T2VALJ IF ~InParty("Xan")~ THEN @467
  == T2VALJ IF ~InParty("SharTeel")~ THEN @468
  == T2VALJ IF ~InParty("Branwen")~ THEN @469
  == T2VALJ IF ~InParty("Alora")~ THEN @470
  == T2VALJ IF ~InParty("Skie")~ THEN @471
  == T2VALJ IF ~InParty("Viconia")~ THEN @472
  == T2VALJ IF ~InParty("Faldorn")~ THEN @473
  == T2VALJ IF ~InParty("Safana")~ THEN @474
  == T2VALJ @475
  DO ~RestParty()~ 
EXIT

CHAIN T2VALJ T2ValF11prince
  @463
  == T2VALJ IF ~InParty("Ajantis")~ THEN @476
  == T2VALJ IF ~InParty("Branwen")~ THEN @477
  == T2VALJ IF ~InParty("Coran")~ THEN @478
  == T2VALJ IF ~InParty("Edwin")~ THEN @479
  == T2VALJ IF ~InParty("Eldoth")~ THEN @480
  == T2VALJ IF ~InParty("Garrick")~ THEN @481
  == T2VALJ IF ~InParty("Kagain")~ THEN @482
  == T2VALJ IF ~InParty("Khalid")~ THEN @483
  == T2VALJ IF ~InParty("Kivan")~ THEN @484
  == T2VALJ IF ~InParty("Minsc")~ THEN @485
  == T2VALJ IF ~InParty("Montaron")~ THEN @486
  == T2VALJ IF ~InParty("Quayle")~ THEN @487
  == T2VALJ IF ~InParty("Tiax")~ THEN @488
  == T2VALJ IF ~InParty("Xan")~ THEN @489
  == T2VALJ IF ~InParty("Xzar")~ THEN @490
  == T2VALJ IF ~InParty("Yeslick")~ THEN @491
  == T2VALJ @492
  DO ~RestParty()~ 
EXIT

APPEND T2VALJ

IF ~~ T2ValF11adventF
  SAY @493
  ++ @455 + T2ValF11friend
  ++ @456 + T2ValF11package
  ++ @457 + T2ValF11usurper
  ++ @494 + T2ValF11prince
  ++ @495 + T2ValF11princess
END

IF ~~ T2ValF11depend
  SAY @496
  ++ @497 + T2ValF11no
  IF ~Gender(Player1,MALE)~ THEN REPLY @498 + T2ValF11remindM
  IF ~Gender(Player1,FEMALE)~ THEN REPLY @498 + T2ValF11remindF
  ++ @499 + T2ValF11derel
  IF ~Gender(Player1,MALE)~ THEN REPLY @500 + T2ValF11homeM
  IF ~Gender(Player1,FEMALE)~ THEN REPLY @500 + T2ValF11homeF
END

IF ~~ T2ValF11no
  SAY @501
  IF ~~ DO ~RestParty()~ EXIT
END

IF ~~ T2ValF11remindM
  SAY @502
  IF ~~ DO ~RestParty()~ EXIT
END

IF ~~ T2ValF11remindF
  SAY @503
  IF ~~ DO ~RestParty()~ EXIT
END

IF ~~ T2ValF11derel
  SAY @504
  IF ~~ DO ~RestParty()~ EXIT
END

IF ~~ T2ValF11homeM
  SAY @505
  IF ~~ DO ~SetGlobal("T2ValFriendship","GLOBAL",2) RestParty()~ EXIT
END

IF ~~ T2ValF11homeF
  SAY @506
  IF ~~ DO ~SetGlobal("T2ValFriendship","GLOBAL",2) RestParty()~ EXIT
END

IF ~~ T2ValF11fate
  SAY @507
  ++ @508 + T2ValF11preach
  ++ @509 + T2ValF11point
  ++ @510 + T2ValF11credit
  ++ @511 + T2ValF11deal
END

IF ~~ T2ValF11preach
  SAY @512
  IF ~~ DO ~RestParty()~ EXIT
END

IF ~~ T2ValF11point
  SAY @513
  IF ~~ DO ~RestParty()~ EXIT
END

IF ~~ T2ValF11credit
  SAY @514
  IF ~~ DO ~RestParty()~ EXIT
END

IF ~~ T2ValF11deal
  SAY @515
  IF ~~ DO ~RestParty()~ EXIT
END

IF ~~ T2ValF11pity
  SAY @516
  ++ @517 + T2ValF11bed
  ++ @518 + T2ValF11destruct
  ++ @519 + T2ValF11fall
  ++ @520 + T2ValF11tab
END

IF ~~ T2ValF11bed
  SAY @521
  IF ~~ DO ~SetGlobal("T2ValFriendship","GLOBAL",2) RestParty()~ EXIT
END

IF ~~ T2ValF11destruct
  SAY @522
  IF ~~ DO ~RestParty()~ EXIT
END

IF ~~ T2ValF11fall
  SAY @523
  IF ~~ DO ~RestParty()~ EXIT
END

IF ~~ T2ValF11tab
  SAY @524
  IF ~~ DO ~SetGlobal("T2ValFriendship","GLOBAL",2) RestParty()~ EXIT
END

IF ~~ T2ValF11whore
  SAY @525
  ++ @526 + T2ValF11thought
  ++ @527 + T2ValF11object
  ++ @528 + T2ValF11special
  IF ~Gender(Player1,MALE)~ THEN REPLY @529 + T2ValF11male
  IF ~Gender(Player1,FEMALE) Race(Player1,GNOME)~ THEN REPLY @529 + T2ValF11gnome
  IF ~Gender(Player1,FEMALE) Race(Player1,HALFLING)~ THEN REPLY @529 + T2ValF11halfling
  IF ~Gender(Player1,FEMALE) !Race(Player1,HALFLING) !Race(Player1,GNOME)~ THEN REPLY @529 + T2ValF11full
END

IF ~~ T2ValF11thought
  SAY @530
  IF ~~ DO ~RestParty()~ EXIT
END

IF ~~ T2ValF11object
  SAY @531
  IF ~~ DO ~RestParty()~ EXIT
END

IF ~~ T2ValF11special
  SAY @532
  IF ~~ DO ~RestParty()~ EXIT
END

IF ~~ T2ValF11male
  SAY @533
  IF ~~ DO ~RestParty()~ EXIT
END

IF ~~ T2ValF11gnome
  SAY @534
  IF ~~ DO ~RestParty()~ EXIT
END

IF ~~ T2ValF11halfling
  SAY @535
  IF ~~ DO ~RestParty()~ EXIT
END

IF ~~ T2ValF11full
  SAY @536
  IF ~~ DO ~RestParty()~ EXIT
END

IF ~~ T2ValF11say
  SAY @537
  ++ @538 + T2ValF11wine
  ++ @539 + T2ValF11quit
  ++ @540 + T2ValF11join
END

IF ~~ T2ValF11quit
  SAY @541
  ++ @542 + T2ValF11wine
  ++ @543 + T2ValF11say
  ++ @544 + T2ValF11join
END

IF ~~ T2ValF11join
  SAY @545
  ++ @546 + T2ValF11idea
  IF ~Gender(Player1,MALE)~ THEN REPLY @547 + T2ValF11idea
  IF ~Gender(Player1,FEMALE)~ THEN REPLY @548 + T2ValF11idea
  IF ~/*(CHECK FOR BG1 NPC ROMANCE PROJECT/GAVIN ROMANCE VARIABLES)*/~ THEN REPLY @549 + T2ValF11idea
  IF ~Gender(Player1,MALE)~ THEN REPLY @65 + T2ValF11male
  IF ~Gender(Player1,FEMALE) Race(Player1,GNOME)~ THEN REPLY @65 + T2ValF11gnome
  IF ~Gender(Player1,FEMALE) Race(Player1,HALFLING)~ THEN REPLY @65 + T2ValF11halfling
  IF ~Gender(Player1,FEMALE) !Race(Player1,HALFLING) !Race(Player1,GNOME)~ THEN REPLY @65 + T2ValF11full
END

IF ~~ T2ValF11idea
  SAY @550
  IF ~~ DO ~RestParty()~ EXIT
END

/* ---------------------------- *
 *  Valerie Friendship Talk 12  *
 * ---------------------------- */
IF ~Global("T2ValFriendTalk","GLOBAL",24)~ T2ValFriendTalk12
  SAY @551
  ++ @552 DO ~IncrementGlobal("T2ValFriendTalk","GLOBAL",1) RealSetGlobalTimer("T2ValFriendTalkTimer","GLOBAL",2700)~ + T2ValF12fret
  ++ @553 DO ~IncrementGlobal("T2ValFriendTalk","GLOBAL",1) RealSetGlobalTimer("T2ValFriendTalkTimer","GLOBAL",2700)~ + T2ValF12fine
  ++ @554 DO ~IncrementGlobal("T2ValFriendTalk","GLOBAL",1) RealSetGlobalTimer("T2ValFriendTalkTimer","GLOBAL",2700)~ + T2ValF12well
  ++ @555 DO ~IncrementGlobal("T2ValFriendTalk","GLOBAL",1) RealSetGlobalTimer("T2ValFriendTalkTimer","GLOBAL",2700)~ + T2ValF12bad
  ++ @556 DO ~IncrementGlobal("T2ValFriendTalk","GLOBAL",1) RealSetGlobalTimer("T2ValFriendTalkTimer","GLOBAL",2700)~ + T2ValF12drunk
  ++ @557 DO ~IncrementGlobal("T2ValFriendTalk","GLOBAL",1) RealSetGlobalTimer("T2ValFriendTalkTimer","GLOBAL",2700)~  + T2ValF12notalk
END

IF ~~ T2ValF12need
  SAY @558
  ++ @559 + T2ValF12fret
  ++ @560 + T2ValF12fine
  ++ @561 + T2ValF12well
  ++ @562 + T2ValF12bad
  ++ @563 + T2ValF12drunk
  ++ @564 + T2ValF12notalk2
END

IF ~~ T2ValF12fret
  SAY @565
  IF ~~ EXIT
END

IF ~~ T2ValF12notalk
  SAY @566
  ++ @567 + T2ValF12fret
  ++ @568 + T2ValF12fine
  ++ @569 + T2ValF12well
  ++ @570 + T2ValF12drunk
  ++ @571 + T2ValF12bad
  ++ @572 + T2ValF12notalk2
END

IF ~~ T2ValF12notalk2
  SAY @573
  IF ~~ EXIT
END

IF ~~ T2ValF12fine
  SAY @574
  ++ @575 + T2ValF12finetalk
  ++ @576 + T2ValF12fineend
END

IF ~~ T2ValF12finetalk
  SAY @577
  IF ~~ EXIT
END

IF ~~ T2ValF12fineend
  SAY @578
  IF ~~ EXIT
END

IF ~~ T2ValF12well
  SAY @579
  ++ @580 + T2ValF12welltalk
  ++ @581 + T2ValF12wellend
END

IF ~~ T2ValF12welltalk
  SAY @582
  IF ~~ EXIT
END

IF ~~ T2ValF12wellend
  SAY @583
  IF ~~ EXIT
END

IF ~~ T2ValF12drunk
  SAY @584
  ++ @585 + T2ValF12drunktalk
  ++ @586 + T2ValF12drunkend
END

IF ~~ T2ValF12drunktalk
  SAY @587
  IF ~~ EXIT
END

IF ~~ T2ValF12drunkend
  SAY @29
  IF ~~ EXIT
END

IF ~~ T2ValF12bad
  SAY @588
  ++ @589 + T2ValF12badtalk
  ++ @590 + T2ValF12badend
END

IF ~~ T2ValF12badtalk
  SAY @591
  IF ~~ EXIT
END

IF ~~ T2ValF12badend
  SAY @592
  IF ~~ EXIT
END

/* ---------------------------- *
 *  Valerie Friendship Talk 13  *
 *  Condition: Fire on rest     *
 * ---------------------------- */
IF ~Global("T2ValFriendTalk","GLOBAL",26)~ T2ValFriendTalk13
  SAY @593
  ++ @594 DO ~IncrementGlobal("T2ValFriendTalk","GLOBAL",1) RealSetGlobalTimer("T2ValFriendTalkTimer","GLOBAL",2700)~ + T2ValF13sup
  ++ @595 DO ~IncrementGlobal("T2ValFriendTalk","GLOBAL",1) RealSetGlobalTimer("T2ValFriendTalkTimer","GLOBAL",2700)~ + T2ValF13wine
  ++ @596 DO ~IncrementGlobal("T2ValFriendTalk","GLOBAL",1) RealSetGlobalTimer("T2ValFriendTalkTimer","GLOBAL",2700)~ + T2ValF13others
  ++ @597 DO ~IncrementGlobal("T2ValFriendTalk","GLOBAL",1) RealSetGlobalTimer("T2ValFriendTalkTimer","GLOBAL",2700)~ + T2ValF13wait
END

IF ~~ T2ValF13sup
  SAY @598
  ++ @599 + T2ValF13trip
  ++ @600 + T2ValF13enough
  ++ @601 + T2ValF13journey
  ++ @602 + T2ValF13cork
  ++ @603 + T2ValF13bio
END

IF ~~ T2ValF13wine
  SAY @604
  ++ @605 + T2ValF13trip
  ++ @606 + T2ValF13enough
  ++ @607 + T2ValF13journey
  ++ @608 + T2ValF13cork
  ++ @609 + T2ValF13bio
END

IF ~~ T2ValF13others
  SAY @610
  ++ @611 + T2ValF13sup
  ++ @612 + T2ValF13wine
  ++ @613 + T2ValF13wait
END

IF ~~ T2ValF13wait
  SAY @614
  IF ~~ DO ~RestParty()~ EXIT
END

IF ~~ T2ValF13trip
  SAY @615
  = @616
  ++ @617 + T2ValF13war
  ++ @618 + T2ValF13plot
  ++ @619 + T2ValF13save
  ++ @620 + T2ValF13justice
  ++ @621 + T2ValF13revenge
END

IF ~~ T2ValF13enough
  SAY @622
  ++ @623 + T2ValF13war
  ++ @624 + T2ValF13plot
  ++ @625 + T2ValF13save
  ++ @626 + T2ValF13justice
  ++ @627 + T2ValF13revenge
END

IF ~~ T2ValF13journey
  SAY @628
  = @629
  ++ @630 + T2ValF13war
  ++ @631 + T2ValF13plot
  ++ @632 + T2ValF13save
  ++ @633 + T2ValF13justice
  ++ @634 + T2ValF13revenge
END

IF ~~ T2ValF13cork
  SAY @635
  = @616
  ++ @623 + T2ValF13war
  ++ @618 + T2ValF13plot
  ++ @632 + T2ValF13save
  ++ @626 + T2ValF13justice
  ++ @621 + T2ValF13revenge
END

IF ~~ T2ValF13bio
  SAY @636
  = @637
  ++ @617 + T2ValF13war
  ++ @631 + T2ValF13plot
  ++ @625 + T2ValF13save
  ++ @633 + T2ValF13justice
  ++ @634 + T2ValF13revenge
END

IF ~~ T2ValF13save
  SAY @638
  ++ @639 + T2ValF13confident
  ++ @640 + T2ValF13breadcrumbs
  ++ @641 + T2ValF13try
  ++ @642 + T2ValF13try
END

IF ~~ T2ValF13war
  SAY @643
  ++ @644 + T2ValF13believe
  ++ @645 + T2ValF13cynical
  ++ @646 + T2ValF13selfish
  ++ @647 + T2ValF13deceive
END

IF ~~ T2ValF13believe
  SAY @648
  IF ~~ DO ~RestParty()~ EXIT
END

IF ~~ T2ValF13cynical
  SAY @649
  IF ~~ DO ~RestParty()~ EXIT
END

IF ~~ T2ValF13selfish
  SAY @650
  IF ~~ DO ~RestParty()~ EXIT
END

IF ~~ T2ValF13deceive
  SAY @651
  IF ~~ DO ~RestParty()~ EXIT
END

IF ~~ T2ValF13confident
  SAY @652
  IF ~~ DO ~RestParty()~ EXIT
END

IF ~~ T2ValF13try
  SAY @653
  IF ~~ DO ~RestParty()~ EXIT
END

IF ~~ T2ValF13gloom
  SAY @654
  IF ~~ DO ~RestParty()~ EXIT
END

IF ~~ T2ValF13plot
  SAY @655
  ++ @656 + T2ValF13breadcrumbs
  ++ @657 + T2ValF13trail
  ++ @658 + T2ValF13try2
  ++ @659 + T2ValF13unlikely
END

IF ~~ T2ValF13breadcrumbs
  SAY @660
  IF ~~ DO ~RestParty()~ EXIT
END

IF ~~ T2ValF13trail
  SAY @661
  IF ~~ DO ~RestParty()~ EXIT
END

IF ~~ T2ValF13try2
  SAY @662
  IF ~~ DO ~RestParty()~ EXIT
END

IF ~~ T2ValF13unlikely
  SAY @663
  IF ~~ DO ~RestParty()~ EXIT
END

IF ~~ T2ValF13justice
  SAY @664
  ++ @665 + T2ValF13batman
  ++ @666 + T2ValF13casualty
  ++ @667 + T2ValF13history
  ++ @668 + T2ValF13worry
END

IF ~~ T2ValF13batman
  SAY @669
  IF ~~ DO ~RestParty()~ EXIT
END

IF ~~ T2ValF13casualty
  SAY @670
  IF ~~ DO ~RestParty()~ EXIT
END

IF ~~ T2ValF13history
  SAY @671
  IF ~~ DO ~RestParty()~ EXIT
END

IF ~~ T2ValF13worry
  SAY @672
  IF ~~ DO ~RestParty()~ EXIT
END

IF ~~ T2ValF13revenge
  SAY @673
  IF ~~ DO ~RestParty()~ EXIT
END

// Friendship Talk 14
// ONLY IF VALERIE SAW THE SHRINE OF BHAAL IN THE CLOAKWOOD
/*
IF ~Global("T2ValFriendTalk","GLOBAL",28) Global("T2Val_bhaal","GLOBAL",2)~ T2ValFriendTalk14
  SAY @674
  ++ @675 DO ~IncrementGlobal("T2ValFriendTalk","GLOBAL",1)~ + T2ValF14apology
  ++ @676 DO ~IncrementGlobal("T2ValFriendTalk","GLOBAL",1)~ + T2ValF14answers
  ++ @677 DO ~IncrementGlobal("T2ValFriendTalk","GLOBAL",1)~ + T2ValF14apology
  ++ @678 DO ~IncrementGlobal("T2ValFriendTalk","GLOBAL",1)~ + T2ValF14go
END

IF ~~ T2ValF14go
  SAY @578
  IF ~~ EXIT
END

IF ~~ T2ValF14apology
  SAY @679
  ++ @680 + T2ValF14hero
  ++ @681 + T2ValF14happy
  ++ @682 + T2ValF14answers
  ++ @683 + T2ValF14jaded
END

IF ~~ T2ValF14hero
  SAY @684
  ++ @685 + T2ValF14answers
  ++ @686 + T2ValF14jaded
  ++ ~In that case, mind leaving me in bliss?~ + T2ValF14bliss
END

IF ~~ T2ValF14happy
  SAY @687
  ++ @685 + T2ValF14answers
  ++ @686 + T2ValF14jaded
  ++ ~In that case, mind leaving me in bliss?~ + T2ValF14bliss
END

IF ~~ T2ValF14jaded
  SAY @688
  ++ @689 + T2ValF14answers
  ++ @690 + T2ValF14mope
  ++ @691 + T2ValF14stop
END

IF ~~ T2ValF14stop
  SAY @692
  IF ~~ EXIT
END

IF ~~ T2ValF14mope
  SAY @693
  IF ~~ EXIT
END

IF ~~ T2ValF14bliss
  SAY @169
  IF ~~ EXIT
END

IF ~~ T2ValF14answers
  SAY ~There are two distinct threads to what's happening, I think. The Iron Throne, and this almost cult-like behavior we've seen among their leaders. In the Cloakwood mines, there were holy symbols I didn't recognize, so I did some digging on the religious history of this region. I don't have anything *conclusive*, but...~
  + ~CheckStatGT(Player1,13,INT)~ + @695 + T2ValF14smartypants
  + ~CheckStatGT(Player1,13,WIS)~ + @696 + T2ValF14smartypants
  ++ @271 + T2ValF14what
  ++ @697 + T2ValF14what
  ++ @698 + T2ValF14go
END

IF ~~ T2ValF14what
  SAY ~As I said, this isn't conclusive. But... Back before the Time of Troubles, Baldur's Gate was a hotbed of Bhaal worship. Bhaal, god of murder and assassins, struck down during the Time of Troubles.~
  = ~Supposedly, there was a great temple to Bhaal somewhere in the city, but it was never found. The Deathstalkers - the priests of Bhaal - were notoriously secretive. I really, really hope this is just coincidence.~
  ++ @716 + T2ValF14ohcrap
  ++ @702 + T2ValF14do
  ++ ~I'm not familiar with Bhaal. What do you know about him?~ + T2ValF14bhaal
  ++ @717 + T2ValF14convince
END

IF ~~ T2ValF14ohcrap
  SAY ~(Valerie takes a deep breath) Then we may be in way, way over our heads, <CHARNAME>. By all accounts, Bhaal was a singularly unpleasant deity and his followers did their best to emulate him.~
  ++ ~What do you know about him?~ + T2ValF14bhaal
  ++ ~You're the one taking the time to study this. What do you think we should do?~ + T2ValF14do
  ++ ~I'm not convinced there's a connection.~ + T2ValF14convince
  ++ ~I fear you may be right about this.~ + T2ValF14fear
END

IF ~~ T2ValF14bhaal
  SAY ~I don't know much about Bhaal. Not many people ever did, near as I can tell. And with good reason. Bane and Myrkul at least had purpose in their evil. Bhaal was... murder. The ending of life for its own sake.~
  = ~Pure, senseless murder for its own sake. No greater purpose, no justification. Bhaal was just killing. He was the patron of assassins for a reason. Now, I believe that assassins don't have to be evil, but under Bhaal's sway, there was no such thing as killing one to save a thousand. Killing one was just one more sacred murder.~
  = ~The stories about Bhaal and his followers are unpleasant to say the least. Especially the ones powerful enough that they didn't hide in anonymity, like Amelyssan the Blackhearted. Just... I really, really hope that Bhaal isn't involved in this.~
  ++ ~And what if he is?~ + T2ValF14ohcrap
  ++ @702 + T2ValF14do
  ++ ~Amelyssan the Blackhearted? I wonder how she earned that name...~ + T2ValF14melissan
  ++ @704 + T2ValF14convince
  ++ @705 + T2ValF14fear
END

IF ~~ T2ValF14do
  SAY @707
  ++ @708 + T2ValF14ohcrap
  ++ ~Tell me about Bhaal.~ + T2ValF14bhaal
  ++ @710 + T2ValF14convince
  ++ @711 + T2ValF14fear
END

IF ~~ T2ValF14melissan
  SAY ~She was Bhaal's high priestess, one of the few Deathstalkers powerful enough to operate openly, and her body count defies belief. Fortunately, not a word of her has been heard since the Time of Troubles, so she probably died with her god.~
  ++ ~Interesting, but irrelevant. I'm not convinced by your theory.~ + T2ValF14convince
  ++ ~Unfortunately, I think you're right about Bhaal's involvement. It makes too much sense.~ + T2ValF14fear
END

IF ~~ T2ValF14convince
  SAY @713
  IF ~~ EXIT
END

IF ~~ T2ValF14fear
  SAY ~...I'm afraid, <CHARNAME>. I really am. The Iron Throne is one thing, but the remnants of a dead god or his cultists... Torm, protect us and forgive my weakness. The place of the strong is between the weak and those who would prey upon them.~
  IF ~~ EXIT
END

IF ~~ T2ValF14smartypants
  SAY ~Remember that weird holy symbol in Davaeorn's chambers? That's the holy symbol of Bhaal, god of murder, slain during the Time of Troubles. Apparently, Baldur's Gate was a hotbed of Bhaalist activity. It's just circumstantial evidence, and I hope it's only coincidence...~
  ++ @716 + T2ValF14ohcrap
  ++ @702 + T2ValF14do
  ++ ~I'm not familiar with Bhaal. What do you know about him?~ + T2ValF14bhaal
  ++ @717 + T2ValF14convince
END   */

/* ------------------------------------------------------------------------ *
 *  Valerie Friendship Talk 14                                              *
 *  Condition: IF VALERIE DID NOT SEE THE SHRINE OF BHAAL IN THE CLOAKWOOD  *
 * ------------------------------------------------------------------------ */
IF ~Global("T2ValFriendTalk","GLOBAL",28) /*!Global("T2Val_bhaal","GLOBAL",2)*/~ T2ValFriendTalk14A
SAY @674
++ @675 DO ~IncrementGlobal("T2ValFriendTalk","GLOBAL",1) RealSetGlobalTimer("T2ValFriendTalkTimer","GLOBAL",2500)~ + T2ValF14Aapology
++ @676 DO ~IncrementGlobal("T2ValFriendTalk","GLOBAL",1) RealSetGlobalTimer("T2ValFriendTalkTimer","GLOBAL",2500)~ + T2ValF14Aanswers
++ @677 DO ~IncrementGlobal("T2ValFriendTalk","GLOBAL",1) RealSetGlobalTimer("T2ValFriendTalkTimer","GLOBAL",2500)~ + T2ValF14Aapology
++ @678 DO ~IncrementGlobal("T2ValFriendTalk","GLOBAL",1) RealSetGlobalTimer("T2ValFriendTalkTimer","GLOBAL",2500)~ + T2ValF14Ago
END

IF ~~ T2ValF14Ago
SAY @578
IF ~~ EXIT
END

IF ~~ T2ValF14Aapology
SAY @679
++ @680 + T2ValF14Ahero
++ @681 + T2ValF14Ahappy
++ @682 + T2ValF14Aanswers
++ @683 + T2ValF14Ajaded
END

IF ~~ T2ValF14Ahero
SAY @684
++ @685 + T2ValF14Aanswers
++ @686 + T2ValF14Ajaded
/*++ ~In that case, mind leaving me in bliss?~ + T2ValF14Abliss */
END

IF ~~ T2ValF14Ahappy
SAY @687
++ @685 + T2ValF14Aanswers
++ @686 + T2ValF14Ajaded
/*++ ~In that case, mind leaving me in bliss?~ + T2ValF14Abliss   */
END

IF ~~ T2ValF14Ajaded
SAY @688
++ @689 + T2ValF14Aanswers
++ @690 + T2ValF14Amope
++ @691 + T2ValF14Astop
END

IF ~~ T2ValF14Astop
SAY @692
IF ~~ EXIT
END

IF ~~ T2ValF14Amope
SAY @693
IF ~~ EXIT
END

IF ~~ T2ValF14Abliss
SAY @169
IF ~~ EXIT
END

IF ~~ T2ValF14Aanswers
SAY @694
+ ~CheckStatGT(Player1,13,INT)~ + @695 + T2ValF14Asmartypants
+ ~CheckStatGT(Player1,13,WIS)~ + @696 + T2ValF14Asmartypants
++ @271 + T2ValF14Awhat
++ @697 + T2ValF14Awhat
++ @698 + T2ValF14Ago
END

IF ~~ T2ValF14Awhat
SAY @699
= @700
= @701
++ @702 + T2ValF14Ado
++ @703 + T2ValF14Aside
++ @704 + T2ValF14Aconvince
++ @705 + T2ValF14Afear
END

IF ~~ T2ValF14Aside
SAY @706
IF ~~ EXIT
END

IF ~~ T2ValF14Ado
SAY @707
++ @708 + T2ValF14Aohcrap
++ @709 + T2ValF14Aside
++ @710 + T2ValF14Aconvince
++ @711 + T2ValF14Afear
END

IF ~~ T2ValF14Aohcrap
SAY @712
IF ~~ EXIT
END

IF ~~ T2ValF14Aconvince
SAY @713
IF ~~ EXIT
END

IF ~~ T2ValF14Afear
SAY @714
IF ~~ EXIT
END

IF ~~ T2ValF14Asmartypants
SAY @715
++ @716 + T2ValF14Aohcrap
++ @702 + T2ValF14Ado
++ @709 + T2ValF14Aside
++ @717 + T2ValF14Aconvince
END

/* -------------------------------------- *
 *  Valerie Friendship Talk 15            *
 *  Condition: After escaping Candlekeep  *
 * -------------------------------------- */
IF ~Global("T2ValFriendTalk","GLOBAL",30)~ T2ValFriendTalk15
  SAY @718
  ++ @719 DO ~IncrementGlobal("T2ValFriendTalk","GLOBAL",1) RealSetGlobalTimer("T2ValFriendTalkTimer","GLOBAL",2700)~ + T2ValF15support
  ++ @720 DO ~IncrementGlobal("T2ValFriendTalk","GLOBAL",1) RealSetGlobalTimer("T2ValFriendTalkTimer","GLOBAL",2700)~ + T2ValF15father
  ++ @721 DO ~IncrementGlobal("T2ValFriendTalk","GLOBAL",1) RealSetGlobalTimer("T2ValFriendTalkTimer","GLOBAL",2700)~ + T2ValF15power
  ++ @722 DO ~IncrementGlobal("T2ValFriendTalk","GLOBAL",1) RealSetGlobalTimer("T2ValFriendTalkTimer","GLOBAL",2700)~ + T2ValF15notalk
END

IF ~~ T2ValF15notalk
  SAY @723
  IF ~~ EXIT
END

IF ~~ T2ValF15support
  SAY @724
  ++ @725 + T2ValF15talk
  IF ~Gender(Player1,MALE)~ THEN REPLY @726 + T2ValF15flirtM
  IF ~Gender(Player1,FEMALE)~ THEN REPLY @726 + T2ValF15flirtF
  ++ @727 + T2ValF15appreciate
  ++ @728 + T2ValF15time
END

IF ~~ T2ValF15talk
  SAY @729
  IF ~~ EXIT
END

IF ~~ T2ValF15flirtM
  SAY @730
  IF ~~ EXIT
END

IF ~~ T2ValF15flirtF
  SAY @731
  IF ~~ EXIT
END

IF ~~ T2ValF15appreciate
  SAY @732
  IF ~~ EXIT
END

IF ~~ T2ValF15time
  SAY @733
  IF ~~ EXIT
END

IF ~~ T2ValF15father
  SAY @734
  ++ @735 + T2ValF15gods
  ++ @736 + T2ValF15blood
  ++ @737 + T2ValF15shape
  ++ @738 + T2ValF15notalk
END

IF ~~ T2ValF15gods
  SAY @739
  IF ~~ EXIT
END

IF ~~ T2ValF15blood
  SAY @740
  IF ~~ EXIT
END

IF ~~ T2ValF15shape
  SAY @741
  IF ~~ EXIT
END

IF ~~ T2ValF15power
  SAY @742
  ++ @743 + T2ValF15careful
  ++ @744 + T2ValF15careful
  ++ @745 + T2ValF15discretion
  ++ @738 + T2ValF15notalk
END

IF ~~ T2ValF15answers
  SAY @746
  IF ~~ EXIT
END

IF ~~ T2ValF15discretion
  SAY @747
  IF ~~ EXIT
END

IF ~~ T2ValF15careful
  SAY @748
  IF ~~ EXIT
END

/* ---------------------------- *
 *  Valerie Friendship Talk 16  *
 * ---------------------------- */
IF ~Global("T2ValFriendTalk","GLOBAL",32)~ T2ValFriendTalk16
  SAY @749
  ++ @750 DO ~IncrementGlobal("T2ValFriendTalk","GLOBAL",1) RealSetGlobalTimer("T2ValFriendTalkTimer","GLOBAL",2700)~ + T2ValF16time
  ++ @751 DO ~IncrementGlobal("T2ValFriendTalk","GLOBAL",1) RealSetGlobalTimer("T2ValFriendTalkTimer","GLOBAL",2700)~ + T2ValF16who
  ++ @752 DO ~IncrementGlobal("T2ValFriendTalk","GLOBAL",1) RealSetGlobalTimer("T2ValFriendTalkTimer","GLOBAL",2700)~ + T2ValF16what
  ++ @753 DO ~IncrementGlobal("T2ValFriendTalk","GLOBAL",1) RealSetGlobalTimer("T2ValFriendTalkTimer","GLOBAL",2700)~ + T2ValF16go
END

IF ~~ T2ValF16go
  SAY @754
  IF ~~ EXIT
END

IF ~~ T2ValF16time
  SAY @755
  ++ @756 + T2ValF16who
  ++ @757 + T2ValF16what
  ++ @20 + T2ValF16leave
END

IF ~~ T2ValF16leave
  SAY @578
  IF ~~ EXIT
END

IF ~~ T2ValF16who
  SAY @758
  ++ @759 + T2ValF16what
  ++ @760 + T2ValF16expect
  ++ @761 + T2ValF16cheer
  ++ @762 + T2ValF16lonely
END

IF ~~ T2ValF16what
  SAY @763
  ++ @764 + T2ValF16who
  ++ @765 + T2ValF16expect
  ++ @766 + T2ValF16cheer
  ++ @767 + T2ValF16tell
END

IF ~~ T2ValF16lonely
  SAY @768
  ++ @769 + T2ValF16expect
  ++ @770 + T2ValF16cheer
END

IF ~~ T2ValF16tell
  SAY @771
  ++ @772 + T2ValF16expect
  ++ @773 + T2ValF16cheer
END

IF ~~ T2ValF16expect
  SAY @774
  ++ @775 + T2ValF16check
  ++ @776 + T2ValF16leave
END

IF ~~ T2ValF16cheer
  SAY @777
  ++ @775 + T2ValF16check
  ++ @776 + T2ValF16leave
END

IF ~~ T2ValF16check
  SAY @778
  IF ~~ EXIT
END

/* ---------------------------- *
 *  Valerie Friendship Talk 17  *
 * ---------------------------- */
IF ~Global("T2ValFriendTalk","GLOBAL",34)~ T2ValFriendTalk17
  SAY @779
  ++ @780 DO ~SetGlobal("T2ValFriendTalk","GLOBAL",35)~ + T2ValF17honor
  ++ @781 DO ~SetGlobal("T2ValFriendTalk","GLOBAL",35)~ + T2ValF17thank
  ++ @782 DO ~SetGlobal("T2ValFriendTalk","GLOBAL",35)~ + T2ValF17hard
  IF ~Gender(Player1,MALE)~ THEN REPLY @783 DO ~SetGlobal("T2ValFriendTalk","GLOBAL",35)~ + T2ValF17male
  IF ~Gender(Player1,FEMALE) Race(Player1,GNOME)~ THEN REPLY @783 DO ~SetGlobal("T2ValFriendTalk","GLOBAL",35)~ + T2ValF17gnome
  IF ~Gender(Player1,FEMALE) Race(Player1,HALFLING)~ THEN REPLY @783 DO ~SetGlobal("T2ValFriendTalk","GLOBAL",35)~ + T2ValF17halfling
  IF ~Gender(Player1,FEMALE) !Race(Player1,HALFLING) !Race(Player1,GNOME) ReputationLT(Player1,12) !Alignment(Player1,MASK_EVIL)~ THEN REPLY @783 DO ~SetGlobal("T2ValFriendTalk","GLOBAL",35)~ + T2ValF17fail
  IF ~Gender(Player1,FEMALE) !Race(Player1,HALFLING) !Race(Player1,GNOME) ReputationGT(Player1,11) Alignment(Player1,MASK_EVIL)~ THEN REPLY @783 DO ~SetGlobal("T2ValFriendTalk","GLOBAL",35)~ + T2ValF17fail
  IF ~Gender(Player1,FEMALE) !Race(Player1,HALFLING) !Race(Player1,GNOME) ReputationGT(Player1,11) !Alignment(Player1,MASK_EVIL)~ THEN REPLY @783 DO ~SetGlobal("T2ValFriendTalk","GLOBAL",35)~ + T2ValF17kiss
  ++ @784 + T2ValF17rush
END

IF ~~ T2ValF17rush
  SAY @785
  IF ~~ EXIT
END

IF ~~ T2ValF17honor
  SAY @786
  IF ~~ EXIT
END

IF ~~ T2ValF17thank
  SAY @787
  IF ~~ EXIT
END

IF ~~ T2ValF17hard
  SAY @788
  IF ~~ EXIT
END

IF ~~ T2ValF17male
  SAY @789
  IF ~~ EXIT
END

IF ~~ T2ValF17gnome
  SAY @790
  IF ~~ EXIT
END

IF ~~ T2ValF17halfling
  SAY @791
  IF ~~ EXIT
END

IF ~~ T2ValF17fail
  SAY @792
  IF ~~ EXIT
END

IF ~~ T2ValF17kiss
  SAY @793
  IF ~~ EXIT
END


/* ======================= *
 *  Valerie Interjections  *
 * ======================= */

// Area: %Temple_SongoftheMorning%
IF ~Global("T2Val_temple","GLOBAL",1)~ t2val_temple
  SAY @794
  IF ~~ DO ~SetGlobal("T2Val_temple","GLOBAL",2)~ EXIT
END

// Area: %NashkelMines_L1%
IF ~Global("T2Val_mines","GLOBAL",1)~ t2val_mines
  SAY @795
  IF ~~ DO ~SetGlobal("T2Val_mines","GLOBAL",2)~ EXIT
END

// Area %ValleyoftheTombs_Tomb%
IF ~Global("T2Val_valley","GLOBAL",1)~ t2val_valley
  SAY @796
  IF ~~ DO ~SetGlobal("T2Val_valley","GLOBAL",2)~ EXIT
END

// Area %CloakwoodMines_L4% sub area: shrine to Bhaal (room NW of bedroom adjacent to elevator)
IF ~Global("T2Val_bhaal","GLOBAL",1)~ t2val_bhaal
  SAY @797
  IF ~~ DO ~SetGlobal("T2Val_bhaal","GLOBAL",2)~ EXIT
END

// (If you flood the mine without freeing the slaves)
IF ~Global("T2Val_flood","GLOBAL",1)~ t2val_flood
  SAY @798
  IF ~~ DO ~SetGlobal("T2Val_flood","GLOBAL",2) LeaveParty() SetGlobal("T2ValHate","GLOBAL",1) EscapeArea()~ EXIT
END

// Area %Candlekeep_Library_L1%
IF ~Global("T2Val_candlekeep","GLOBAL",1)~ t2val_candlekeep
  SAY @799
  IF ~~ DO ~SetGlobal("T2Val_candlekeep","GLOBAL",2)~ EXIT
END

// (When Charname finds Gorion's letter - Shadowkeeper gave me an error when looking up the item code, and Tutu triggers a dialogue when you pick up the letter, and only if Global("T2ValFriendship","GLOBAL",1))
IF ~Global("T2Val_letter","GLOBAL",1)~ t2val_letter
  SAY @800
  IF ~~ DO ~SetGlobal("T2Val_letter","GLOBAL",2)~ EXIT
END

// In inventory: POTN48.itm
IF ~Global("T2Val_potion","GLOBAL",1)~ t2val_portion
  SAY @801
  IF ~~ DO ~SetGlobal("T2Val_potion","GLOBAL",2)~ EXIT
END

// In inventory: BOOK03.itm, BOOK04.itm, BOOK05.itm, BOOK06.itm BOOK07.itm, or BOOK08.itm. Should only fire once regardless of which book you put in.
IF ~Global("T2Val_book","GLOBAL",1)~ t2val_book
  SAY @802
  IF ~~ DO ~SetGlobal("T2Val_book","GLOBAL",2)~ EXIT
END


END

I_C_T SAFE %tutu_var%SILKE 4 T2Val_silke
  == T2VALJ IF ~InParty("T2Val") !StateCheck("T2Val",CD_STATE_NOTVALID)~ THEN @803
  == %tutu_var%SILKE @804
END

I_C_T SAFE %tutu_var%MARL 13 T2Val_marl
  == T2VALJ IF ~InParty("T2Val") !StateCheck("T2Val",CD_STATE_NOTVALID)~ THEN @805
  == %tutu_var%MARL @806
END

I_C_T SAFE %tutu_var%BERRUN 15 T2Val_berrun
  == T2VALJ IF ~InParty("T2Val") !StateCheck("T2Val",CD_STATE_NOTVALID)~ THEN @807
  == %tutu_var%BERRUN @808
END

I_C_T SAFE %tutu_var%KRUMM 1 T2Val_krumm1
  == T2VALJ IF ~InParty("T2Val") !StateCheck("T2Val",CD_STATE_NOTVALID)~ THEN @809
  == %tutu_var%KRUMM @810
END

I_C_T SAFE %tutu_var%KRUMM 3 T2Val_krumm2
  == T2VALJ IF ~InParty("T2Val") !StateCheck("T2Val",CD_STATE_NOTVALID)~ THEN @809
  == %tutu_var%KRUMM @810
END

// Valerie heads off a potential fight

INTERJECT %tutu_scriptbg%SENDAI%eet_var% 0 T2Valerie_sendai
  == T2VALJ IF ~InParty("T2Val") !StateCheck("T2Val",CD_STATE_NOTVALID)~ THEN @811
  == %tutu_scriptbg%SENDAI%eet_var% @812
  == T2ValJ @813
  == %tutu_scriptbg%SENDAI%eet_var% @814
  == T2ValJ @815
END
  ++ @816 EXTERN T2VALJ T2ValJSUgly
  ++ @817 EXTERN T2VALJ T2ValJSPretend
  ++ @818 EXTERN T2VALJ T2ValJSPay


APPEND T2VALJ

IF ~~ T2ValJSUgly
SAY @819
IF ~~ DO ~ActionOverride("DELGOD",EscapeArea())
ActionOverride("ALEXANDER",EscapeArea())
ActionOverride("SENDAI",EscapeArea())~ EXIT
END

IF ~~ T2ValJSPretend
SAY @820
IF ~~ DO ~SetGlobal("T2ValFriendship","GLOBAL",3)
ActionOverride("DELGOD",EscapeArea())
ActionOverride("ALEXANDER",EscapeArea())
ActionOverride("SENDAI",EscapeArea())~ EXIT
END

IF ~~ T2ValJSPay
SAY @821
++ @822 + T2ValJSGo
++ @823 + T2ValJSFight
END

IF ~~ T2ValJSGo
SAY @824
IF ~~ DO ~ActionOverride("DELGOD",EscapeArea())
ActionOverride("ALEXANDER",EscapeArea())
ActionOverride("SENDAI",EscapeArea())~ EXIT
END

IF ~~ T2ValJSFight
SAY @825
IF ~~ DO ~LeaveParty() ReputationInc(-2) SetGlobal("T2ValHate","GLOBAL",1) DropInventory() ActionOverride("DELGOD",Attack(Player1))
ActionOverride("ALEXANDER",Attack(Player1))
ActionOverride("SENDAI",Attack(Player1)) EscapeArea()~ EXIT
END

END

I_C_T SAFE %tutu_var%MULAHE 2 T2Val_mulahey
  == T2VALJ IF ~InParty("T2Val") !StateCheck("T2Val",CD_STATE_NOTVALID)~ THEN @826
  == %tutu_var%MULAHE @827
END

I_C_T SAFE %tutu_var%KISSIQ 1 T2Val_kissiq1
  == T2VALJ IF ~InParty("T2Val") !StateCheck("T2Val",CD_STATE_NOTVALID)~ THEN @828
  == %tutu_var%KISSIQ @829
END

I_C_T SAFE %tutu_var%KISSIQ 2 T2Val_kissiq2
  == T2VALJ IF ~InParty("T2Val") !StateCheck("T2Val",CD_STATE_NOTVALID)~ THEN @828
  == %tutu_var%KISSIQ @829
END

I_C_T SAFE %tutu_var%MELICA 2 T2Val_melicamp
  == T2VALJ IF ~InParty("T2Val") !StateCheck("T2Val",CD_STATE_NOTVALID)~ THEN @830
  == %tutu_var%MELICA @831
END

I_C_T %tutu_var%ULCAST 0 T2Val_ulcast
  == T2VALJ IF ~InParty("T2Val") !StateCheck("T2Val",CD_STATE_NOTVALID)~ THEN @832
END

I_C_T SAFE %tutu_var%DRASUS 3 T2Val_drasus
  == T2VALJ IF ~InParty("T2Val") !StateCheck("T2Val",CD_STATE_NOTVALID)~ THEN @833
  == %tutu_var%DRASUS @834
END

I_C_T SAFE %tutu_var%DAVAEO 0 T1Val_daveo
  == T2VALJ IF ~InParty("T2Val") !StateCheck("T2Val",CD_STATE_NOTVALID)~ THEN @835
  == %tutu_var%DAVAEO @836
END

I_C_T SAFE %tutu_var%NIEMAI 11 T2Val_nieman
  == T2VALJ IF ~InParty("T2Val") !StateCheck("T2Val",CD_STATE_NOTVALID)~ THEN @837
  == %tutu_var%NIEMAI @838
END

I_C_T SAFE %tutu_var%HANNAH 2 T2Val_hannah
  == T2VALJ IF ~InParty("T2Val") !StateCheck("T2Val",CD_STATE_NOTVALID)~ THEN @839
  == %tutu_var%HANNAH @840
END

I_C_T SAFE %tutu_var%HANNAH 3 T2Val_hannah2
  == T2VALJ IF ~InParty("T2Val") !StateCheck("T2Val",CD_STATE_NOTVALID)~ THEN @841
  == %tutu_var%HANNAH @842
  == T2VALJ @843
  == %tutu_var%HANNAH @844
END

I_C_T SAFE %tutu_var%OCELLI 1 T2Val_ocelli
  == T2VALJ IF ~InParty("T2Val") !StateCheck("T2Val",CD_STATE_NOTVALID)~ THEN @845
  == %tutu_var%OCELLI @846
END

I_C_T SAFE %tutu_var%CYTHAN 2 T2Val_cythandria
  == T2VALJ IF ~InParty("T2Val") !StateCheck("T2Val",CD_STATE_NOTVALID)~ THEN @847
  == %tutu_var%CYTHAN @848
END

I_C_T SAFE %tutu_var%SAREVO 13 T2Val_sarevok
  == T2VALJ IF ~InParty("T2Val") !StateCheck("T2Val",CD_STATE_NOTVALID) Global("T2ValFriendship","GLOBAL",1)~ THEN @849
  == %tutu_var%SAREVO @850
END


/* =================================== *
 *  Valerie Player initiated dialogue  *
 * =================================== */
APPEND T2VALJ

IF ~IsGabber(Player1)~ THEN BEGIN T2ValApproach
  SAY @851
  ++ @852 + T2ValTalkCW
  ++ @853 + T2ValTalkEyes
  ++ @854 + T2ValTalkGay
END

IF ~~ T2ValTalkCW
  SAY @855
  ++ @856 + T2ValTalkControl
  ++ @857 + T2ValTalkLicense
  ++ @858 + T2ValTalkSaints
  ++ @859 + T2ValTalkDivine
  ++ @860 + T2ValTalkRaise
END

IF ~~ T2ValTalkControl
  SAY @861
  ++ @862 + T2ValTalkLicense
  ++ @863 + T2ValTalkSaints
  ++ @864 + T2ValTalkDivine
  ++ @865 + T2ValTalkRaise
  ++ @866 + T2ValTalkBye
END

IF ~~ T2ValTalkLicense
  SAY @867
  ++ @868 + T2ValTalkControl
  ++ @869 + T2ValTalkSaints
  ++ @870 + T2ValTalkDivine
  ++ @871 + T2ValTalkRaise
  ++ @872 + T2ValTalkBye
END

IF ~~ T2ValTalkSaints
  SAY @873
  ++ @874 + T2ValTalkControl
  ++ @875 + T2ValTalkLicense
  ++ @876 + T2ValTalkDivine
  ++ @877 + T2ValTalkRaise
  ++ @878 + T2ValTalkBye
END

IF ~~ T2ValTalkDivine
  SAY @879
  ++ @880 + T2ValTalkControl
  ++ @881 + T2ValTalkSaints
  ++ @882 + T2ValTalkLicense
  ++ @883 + T2ValTalkRaise
  ++ @872 + T2ValTalkBye
END

IF ~~ T2ValTalkRaise
  SAY @884
  ++ @885 + T2ValTalkControl
  ++ @886 + T2ValTalkLicense
  ++ @887 + T2ValTalkSaints
  ++ @888 + T2ValTalkDivine
  ++ @889 + T2ValTalkBye
END

IF ~~ T2ValTalkBye
  SAY @890
  IF ~~ EXIT
END

IF ~~ T2ValTalkEyes
  SAY @891
  IF ~~ EXIT
END

IF ~~ T2ValTalkGay
  SAY @892
  IF ~~ EXIT
END

END