BEGIN T2ValP

IF ~Global("T2ValJoined","LOCALS",1) ReputationGT(Player1,2)~ Kick
  SAY ~Are you sure we should part ways? It's been an interesting journey so far.~
  ++ ~On second thought, no. Let's get going.~ DO ~JoinParty()~ EXIT
  ++ ~I think it's for the best if we part company now.~ GOTO Farewell
END

IF ~Global("T2ValJoined","LOCALS",1) ReputationLT(Player1,3)~ Monster
  SAY ~How could I ever have been so blind as to trust you? You're a monster, <CHARNAME>, and I pray we never meet again.~
  IF ~~ DO ~SetGlobal("T2ValJoined","LOCALS",0) EscapeAreaMove("%Nashkel%",2248,1296,6) SetGlobal("T2ValHate","GLOBAL",1)~ EXIT
END

IF ~~ Farewell
  SAY ~Alright. I'll be reporting back to Nashkel, then. Good luck, <CHARNAME>.~
  IF ~~ DO ~SetGlobal("T2ValJoined","LOCALS",0) EscapeAreaMove("%Nashkel%",2248,1296,6)~ EXIT
END

IF ~Global("T2ValJoined","LOCALS",0)~ Joined
  SAY ~Good to see you again. Unfortunately, the army's still twiddling its thumbs, so I'm happy to help if you need me again.~
  ++ ~I do. We leave at once.~ DO ~SetGlobal("T2ValJoined","LOCALS",1) JoinParty()~ EXIT
  ++ ~Welcome back, Valerie.~DO ~SetGlobal("T2ValJoined","LOCALS",1) JoinParty()~ EXIT
  ++ ~Just checking in, unfortunately.~ DO ~EscapeArea()~ EXIT
END

IF ~Global("T2ValHate","GLOBAL",1)~ Hate
  SAY ~Get out of my sight, <CHARNAME>. You've done enough damage.~
  IF ~~ EXIT
END

