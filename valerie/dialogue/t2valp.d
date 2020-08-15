BEGIN T2ValP

IF ~Global("T2ValJoined","LOCALS",1) ReputationGT(Player1,2)~ Kick
  SAY @0
  ++ @1 DO ~JoinParty()~ EXIT
  ++ @2 GOTO Farewell
END

IF ~Global("T2ValJoined","LOCALS",1) ReputationLT(Player1,3)~ Monster
  SAY @3
  IF ~~ DO ~SetGlobal("T2ValJoined","LOCALS",0) EscapeAreaMove("%Nashkel%",2248,1296,6) SetGlobal("T2ValHate","GLOBAL",1)~ EXIT
END

IF ~~ Farewell
  SAY @4
  IF ~~ DO ~SetGlobal("T2ValJoined","LOCALS",0) EscapeAreaMove("%Nashkel%",2248,1296,6)~ EXIT
END

IF ~Global("T2ValJoined","LOCALS",0)~ Joined
  SAY @5
  ++ @6 DO ~SetGlobal("T2ValJoined","LOCALS",1) JoinParty()~ EXIT
  ++ @7DO ~SetGlobal("T2ValJoined","LOCALS",1) JoinParty()~ EXIT
  ++ @8 DO ~EscapeArea()~ EXIT
END

IF ~Global("T2ValHate","GLOBAL",1)~ Hate
  SAY @9
  IF ~~ EXIT
END

