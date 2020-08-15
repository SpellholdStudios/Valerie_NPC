BEGIN T2VAL

//(Assumes the mines are not yet clear)
IF ~NumTimesTalkedTo(0) !Dead("mulahey")~ T2ValIntro
  SAY @0
  ++ @1 + T2ValTrouble
  ++ @2 + T2ValGarrison
  ++ @3 + T2ValDoing
  ++ @4 + T2ValSale
  ++ @5 + T2ValBye
END

IF ~~ T2ValTrouble
  SAY @6
  ++ @7 + T2ValDemons
  ++ @3 + T2ValDoing
  ++ @8 + T2ValGarrison
  ++ @9 + T2ValResponsibility
  ++ @10 + T2ValBye
END

IF ~~ T2ValSale
  SAY @11
  ++ @12 + T2ValCowled
  ++ @13 + T2ValGarrison
  ++ @14 + T2ValResponsibility
  ++ @15 + T2ValBye
END

IF ~~ T2ValGarrison
  SAY @16
  ++ @17 + T2ValJoin
  ++ @18 + T2ValDemons
  ++ @19 + T2ValResponsibility
  ++ @20 + T2ValCowled
  ++ @21 + T2ValBye
END

IF ~~ T2ValDoing
  SAY @22
  ++ @23 + T2ValGarrison
  ++ @24 + T2ValResponsibility
  ++ @25 + T2ValBye
END

IF ~~ T2ValResponsibility
  SAY @26
  ++ @27 + T2ValJoin
  ++ @28 + T2ValDemons
  ++ @20 + T2ValCowled
  ++ @29 + T2ValDoing
  ++ @30 + T2ValBye
END

IF ~~ T2ValDemons
  SAY @31
  ++ @32 + T2ValJoin
  ++ @33 + T2ValDoing
  ++ @34 + T2ValBye
END

IF ~~ T2ValCowled
  SAY @35
  ++ @36 + T2ValJoin
  ++ @18 + T2ValDemons
  ++ @37 + T2ValGarrison
  ++ @3 + T2ValDoing
  ++ @38 + T2ValBye
END

IF ~~ T2ValJoin
  SAY @39
  ++ @40 DO~SetGlobal("T2ValJoined","LOCALS",1) JoinParty()~ EXIT
  ++ @41 + T2ValBye
END

IF ~~ T2ValBye
  SAY @34
  IF ~~ EXIT
END

IF ~NumTimesTalkedToGT(0) !Dead("mulahey")~ T2ValSintro
  SAY @42
  ++ @27 + T2ValJoin
  ++ @18 + T2ValDemons
  ++ @8 + T2ValGarrison
  ++ @29 + T2ValDoing
  ++ @19 + T2ValResponsibility
END

//(If the mines are clear)

IF ~NumTimesTalkedTo(0) Dead("mulahey")~  T2ValCIntro
  SAY @43
  ++ @12 + T2ValCCowled
  ++ @2 + T2ValCGarrison
  ++ @44 + T2ValCDoing
  ++ @4 + T2ValCSale
  ++ @5 + T2ValBye
END

IF ~~ T2ValCSale
  SAY @11
  ++ @12 + T2ValCCowled
  ++ @13 + T2ValCGarrison
  ++ @14 + T2ValCResponsibility
  ++ @15 + T2ValBye
END

IF ~~ T2ValCGarrison
  SAY @45
  ++ @46 + T2ValCJoin
  ++ @19 + T2ValCResponsibility
  ++ @20 + T2ValCCowled
  ++ @21 + T2ValBye
END

IF ~~ T2ValCDoing
  SAY @47
  ++ @23 + T2ValCGarrison
  ++ @24 + T2ValCResponsibility
  ++ @25 + T2ValBye
END

IF ~~ T2ValCResponsibility
  SAY @48
  ++ @49 + T2ValCJoin
  ++ @20 + T2ValCCowled
  ++ @50 + T2ValCDoing
  ++ @30 + T2ValBye
END

IF ~~ T2ValCCowled
  SAY @35
  ++ @51 + T2ValCJoin
  ++ @37 + T2ValCGarrison
  ++ @50 + T2ValCDoing
  ++ @38 + T2ValBye
END

IF ~~ T2ValCJoin
  SAY @52
  ++ @40 DO~SetGlobal("T2ValJoined","LOCALS",1) JoinParty()~ EXIT
  ++ @41 + T2ValBye
END

IF ~NumTimesTalkedToGT(0) Dead("mulahey")~ T2ValCSintro
  SAY @53
  ++ @54 + T2ValJoin
  ++ @8 + T2ValCGarrison
  ++ @55 + T2ValCDoing
  ++ @19 + T2ValCResponsibility
END