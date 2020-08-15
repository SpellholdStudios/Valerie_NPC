BEGIN T2VAL

//(Assumes the mines are not yet clear)
IF ~NumTimesTalkedTo(0) !Dead("mulahey")~  T2ValIntro
  SAY ~Another group of adventurers coming to investigate the mines, I hope? I'm glad someone has worked up the nerve to do something.~
  ++ ~What do you know of the troubles in the mines?~ + T2ValTrouble
  ++ ~You have an Amnish accent. Are you part of the garrison force?~ + T2ValGarrison
  ++ ~Why isn't the garrison doing anything?~ + T2ValDoing
  ++ ~You wear a mage's robes. Do you have any magic items for sale?~ + T2ValSale
  ++ ~Sorry, but I have to go.~ + T2ValBye
END

IF ~~ T2ValTrouble
  SAY ~I'm sure you know about the iron contamination. Something is attacking the miners, though. Rumors say demons.~
  ++ ~Do you believe there are demons in the mines?~ + T2ValDemons
  ++ ~Why isn't the garrison doing anything?~ + T2ValDoing
  ++ ~Are you part of the garrison force?~ + T2ValGarrison
  ++ ~So what's your responsibility here?~ + T2ValResponsibility
  ++ ~Thank you for your information. Farewell.~ + T2ValBye
END

IF ~~ T2ValSale
  SAY ~Sorry, but I'm not a merchant. I am one of the Cowled Wizards of Amn.~
  ++ ~Cowled Wizards? What are they?~ + T2ValCowled
  ++ ~Does that make you part of the garrison?~ + T2ValGarrison
  ++ ~So what are you doing here?~ + T2ValResponsibility
  ++ ~My mistake. Farewell.~ + T2ValBye
END

IF ~~ T2ValGarrison
  SAY ~I am not. I am a Cowled Wizard, and I was sent here to see if there truly are demons in the mines or not. Unfortunately, I have had no luck persuading the captain to send a force into the mines.~
  ++ ~We're planning to investigate the mines ourselves. We could use a skilled mage, if you wish to join us.~ + T2ValJoin
  ++ ~Do you think there really are demons in the mines?~ + T2ValDemons
  ++ ~So what do you do here exactly?~ + T2ValResponsibility
  ++ ~What are the Cowled Wizards?~ + T2ValCowled
  ++ ~I see. Thank you, and good luck.~ + T2ValBye
END

IF ~~ T2ValDoing
  SAY ~Commander Brage was about to send a force in when he went mad. Captain Bardolan is trying to get a handle on this crisis before he sends a force into the mines.~
  ++ ~So are you part of the garrison?~ + T2ValGarrison
  ++ ~What's your job here?~ + T2ValResponsibility
  ++ ~Unfortunate. Good luck sorting that out.~ + T2ValBye
END

IF ~~ T2ValResponsibility
  SAY ~The Cowled Wizards liaise with the army when dealing with matters of a potentially arcane nature. My job is to determine whether there actually are demons in the mines or not, and if there are, to alert the rest of the Wizards.~
  ++ ~We intend to head into the mines. The aid of a skilled mage would be welcome, if you're interested.~ + T2ValJoin
  ++ ~So do you think there actually are demons in the mines?~ + T2ValDemons
  ++ ~What are the Cowled Wizards?~ + T2ValCowled
  ++ ~Why hasn't the garrison done anything yet?~ + T2ValDoing
  ++ ~Farewell, and good luck.~ + T2ValBye
END

IF ~~ T2ValDemons
  SAY ~I hope not. Personally, I do doubt it. *Something* has invaded the mines, but I'm reluctant to jump to demons when it could be something more mundane, like kobolds or goblins.~
  ++ ~We will be heading to the mines to see for ourselves. If you'd like to join us, your aid would be welcome.~ + T2ValJoin
  ++ ~If there might be demons, why isn't the garrison doing anything?~ + T2ValDoing
  ++ ~Good luck.~ + T2ValBye
END

IF ~~ T2ValCowled
  SAY ~The Cowled Wizards are Amn's agency for ensuring that magic is practiced safely and responsibly. We also defend Amn against threats of an arcane nature or origin.~
  ++ ~If you'd like to join us in heading into the mines ourselves, your aid would be most welcome.~ + T2ValJoin
  ++ ~Do you think there really are demons in the mines?~ + T2ValDemons
  ++ ~So are you part of the garrison force?~ + T2ValGarrison
  ++ ~Why isn't the garrison doing anything?~ + T2ValDoing
  ++ ~I see. Goodbye.~ + T2ValBye
END

IF ~~ T2ValJoin
  SAY ~Join you? As in, be an adventurer? Uh. Well... I was told to investigate this, and you're investigating this... Uh. Okay, I guess. My name is Valerie Lysander, by the way.~
  ++ ~And I am <CHARNAME>. Welcome aboard!~ DO~SetGlobal("T2ValJoined","LOCALS",1)JoinParty()~ EXIT
  ++ ~On second thought, you should probably wait here.~ + T2ValBye
END

IF ~~ T2ValBye
  SAY ~Good luck.~
  IF ~~ EXIT
END

IF ~NumTimesTalkedToGT(0) !Dead("mulahey")~ T2ValSintro
  SAY ~Hello again. Any luck investigating the mines?~
  ++ ~We intend to head into the mines. The aid of a skilled mage would be welcome, if you're interested.~ + T2ValJoin
  ++ ~Do you think there really are demons in the mines?~ + T2ValDemons
  ++ ~Are you part of the garrison force?~ + T2ValGarrison
  ++ ~Why hasn't the garrison done anything yet?~ + T2ValDoing
  ++ ~So what do you do here exactly?~ + T2ValResponsibility
END

//(If the mines are clear)

IF ~NumTimesTalkedTo(0) Dead("mulahey")~  T2ValCIntro
  SAY ~So you're the one responsible for clearing out the mines? Well done. The Cowled Wizards extend their thanks.~
  ++ ~Cowled Wizards? What are they?~ + T2ValCCowled
  ++ ~You have an Amnish accent. Are you part of the garrison force?~ + T2ValCGarrison
  ++ ~Why hasn't the garrison been doing anything?~ + T2ValCDoing
  ++ ~You wear a mage's robes. Do you have any magic items for sale?~ + T2ValCSale
  ++ ~Sorry, but I have to go.~ + T2ValBye
END

IF ~~ T2ValCSale
  SAY ~Sorry, but I'm not a merchant. I am one of the Cowled Wizards of Amn.~
  ++ ~Cowled Wizards? What are they?~ + T2ValCCowled
  ++ ~Does that make you part of the garrison?~ + T2ValCGarrison
  ++ ~So what are you doing here?~ + T2ValCResponsibility
  ++ ~My mistake. Farewell.~ + T2ValBye
END

IF ~~ T2ValCGarrison
  SAY ~I am not. I am a Cowled Wizard, and I was sent here to see if there truly are demons in the mines or not. Unfortunately, I didn't have any luck persuading the captain to send a force into the mines.~
  ++ ~We found evidence that the trouble in the mines was only part of a larger problem. We could use a skilled mage, if you wish to join us.~ + T2ValCJoin
  ++ ~So what do you do here exactly?~ + T2ValCResponsibility
  ++ ~What are the Cowled Wizards?~ + T2ValCCowled
  ++ ~I see. Thank you, and good luck.~ + T2ValBye
END

IF ~~ T2ValCDoing
  SAY ~Commander Brage was about to send a force in when he went mad. The lieutenant was trying to get a handle on this crisis before he sent a force into the mines.~
  ++ ~So are you part of the garrison?~ + T2ValCGarrison
  ++ ~What's your job here?~ + T2ValCResponsibility
  ++ ~Unfortunate. Good luck sorting that out.~ + T2ValBye
END

IF ~~ T2ValCResponsibility
  SAY ~The Cowled Wizards liaise with the army when dealing with matters of a potentially arcane nature. My job was to determine whether there actually were demons in the mines or not, and if there were, to alert the rest of the Wizards.~
  ++ ~Unfortunately, the trouble in the mines was only the tip of a very ugly iceberg. The aid of a skilled mage would be welcome, if you're interested.~ + T2ValCJoin
  ++ ~What are the Cowled Wizards?~ + T2ValCCowled
  ++ ~Why didn't the garrison do anything?~ + T2ValCDoing
  ++ ~Farewell, and good luck.~ + T2ValBye
END

IF ~~ T2ValCCowled
  SAY ~The Cowled Wizards are Amn's agency for ensuring that magic is practiced safely and responsibly. We also defend Amn against threats of an arcane nature or origin.~
  ++ ~The trouble in the mines was only the beginning of a larger problem. We could use your help, if you wish to come with us.~ + T2ValCJoin
  ++ ~So are you part of the garrison force?~ + T2ValCGarrison
  ++ ~Why didn't the garrison do anything?~ + T2ValCDoing
  ++ ~I see. Goodbye.~ + T2ValBye
END

IF ~~ T2ValCJoin
  SAY ~Join you? As in, be an adventurer? Uh. Well... I was told to investigate this, and if this is only the beginning of a larger problem... alright. My name is Valerie Lysander, by the way.~
  ++ ~And I am <CHARNAME>. Welcome aboard!~ DO~SetGlobal("T2ValJoined","LOCALS",1)JoinParty()~ EXIT
  ++ ~On second thought, you should probably wait here.~ + T2ValBye
END

IF ~NumTimesTalkedToGT(0) Dead("mulahey")~ T2ValCSintro
  SAY ~Hello again. Any luck investigating whatever the mine crisis has lead to?~
  ++ ~Some. The aid of a skilled mage would be welcome, if you're interested.~ + T2ValJoin
  ++ ~Are you part of the garrison force?~ + T2ValCGarrison
  ++ ~Why did the garrison leave it all up to us?~ + T2ValCDoing
  ++ ~So what do you do here exactly?~ + T2ValCResponsibility
END