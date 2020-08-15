// Valerie J file.
BEGIN T2VALJ


// ---------------------------------------
// Valerie Friendtalks
// ---------------------------------------
APPEND T2VALJ
//Friendtalk1
//Condition: Returning to the surface after Mulahey's death. If Mulahey is already dead when Valerie is recruiting, skip to lovetalk 2

IF ~Global("T2ValFriendTalk","GLOBAL",2)~ T2ValFriendTalk1
  SAY ~Well, that's not what I expected. No demons, but an ominous mystery all the same.~
  ++ ~You saw the letter. Your thoughts?~ DO ~IncrementGlobal("T2ValFriendTalk","GLOBAL",1) RealSetGlobalTimer("T2ValFriendTalkTimer","GLOBAL",2700)~ + T2ValF1Thought
  ++ ~So are you disappointed or pleased at how it turned out?~ DO ~IncrementGlobal("T2ValFriendTalk","GLOBAL",1) RealSetGlobalTimer("T2ValFriendTalkTimer","GLOBAL",2700)~ + T2ValF1Appraise
  ++ ~Your mission's done. Guess you can head back to Amn now.~ DO ~IncrementGlobal("T2ValFriendTalk","GLOBAL",1) RealSetGlobalTimer("T2ValFriendTalkTimer","GLOBAL",2700)~ + T2ValF1Return
  ++ ~Yeah, yeah. Get back in line and keep your thoughts to yourself.~ DO ~IncrementGlobal("T2ValFriendTalk","GLOBAL",1) RealSetGlobalTimer("T2ValFriendTalkTimer","GLOBAL",2700)~ + T2ValF1End
END

IF ~~ T2ValF1Thought
  SAY ~The plot thickens. Mulahey struck me as too stupid to do this on his own, frankly, but we have a thread to follow.~
  ++ ~Any Cowled Wizard insights into what happened down there?~ + T2ValF1CW
  ++ ~Where do you think this trail will lead?~ + T2ValF1Trail
  ++ ~Are you planning to return to Amn now?~ + T2ValF1Return
  ++ ~I agree. Let's not waste time.~ + T2ValF1End
END

IF ~~ T2ValF1Appraise
  SAY ~Pleased, definitely. Kobolds are infinitely less worrying than demons, and we now have a trail to follow. Where it goes is anyone's guess.~
  ++ ~Guess you're done here. Planning to return to Amn?~ + T2ValF1Return
  ++ ~You have any Cowled Wizard insights into what went on in the mines?~ + T2ValF1CW
  ++ ~Any guesses where this thread will lead us?~ + T2ValF1Trail
  ++ ~And we won't find where it goes standing around here.~ + T2ValF1End
END

IF ~~ T2ValF1Return
  SAY ~No. If it was just a kobold infestation I wouldn't be worried, but it's obviously nothing so simple. My mission might be complete, but my duty is not.~
  ++ ~You're really hung up on your duty, aren't you?~ + T2ValF1Hungup
  ++ ~What's your duty, exactly?~ + T2ValF1Duty
  ++ ~So, any Cowled Wizard insights into what's going on?~ + T2ValF1CW
  ++ ~Have any guesses where this trail will lead?~ + T2ValF1Trail
  ++ ~Then let's get going.~ + T2ValF1End
END

IF ~~ T2ValF1CW
  SAY ~Not really. We're trained in arcane matters, but aside from the poison itself, I don't know what to think. Making trouble *is* what Strifeleaders do, but so far this is outside my area of expertise.~
  ++ ~I guess you'l be heading back to Amn now.~ + T2ValF1Return
  ++ ~Any guesses where this thread will lead us?~ + T2ValF1Trail
  ++ ~Then let's get going.~ + T2ValF1End
END

IF ~~ T2ValF1Trail
  SAY ~To Beregost. Oh. Well, in my professional and magical opinion... I have no idea, sorry.~
  ++ ~Not even any Cowled Wizard insights?~ + T2ValF1CW
  ++ ~Well, I guess you'l be heading back to Amn now.~ + T2ValF1Return
  ++ ~No sense standing around here, then.~ + T2ValF1End
END

IF ~~ T2ValF1Hungup
  SAY ~Uh, not exactly. I serve the people of Amn willingly. If innocents are in danger, I will act, and people are clearly still in danger. For now, we should probably get back to work.~
  IF ~~ EXIT
END

IF ~~ T2ValF1Duty
  SAY ~My duty is to stand between the innocent and the wicked, the destructive, and the depraved. That is Torm's charge to his followers. But that's a talk for another time, I guess. Let's get moving.~
  IF ~~ EXIT
END

IF ~~ T2ValF1End
  SAY ~Alright.~
  IF ~~ EXIT
END

//Friendtalk2
//Condition: Resting at an inn after clearing the mines

IF ~Global("T2ValFriendTalk","GLOBAL",4) Global("T2ValMulaheyAlreadyDead","GLOBAL",0)~ T2ValFriendTalk2
  SAY ~Crawling around underground is not as enjoyable as the dwarves and gnomes say it is. A soft bed and a fine wine sound like just what the cleric ordered.~
  ++ ~I agree. Sounds good.~ DO ~IncrementGlobal("T2ValFriendTalk","GLOBAL",1) RealSetGlobalTimer("T2ValFriendTalkTimer","GLOBAL",2700)~ + T2ValF2Good
  ++ ~What kind of clerics are you used to being around, if they'd order bed and wine?~ DO ~IncrementGlobal("T2ValFriendTalk","GLOBAL",1) RealSetGlobalTimer("T2ValFriendTalkTimer","GLOBAL",2700)~ + T2ValF2Lliira
  ++ ~Any recommendations for a good vintage?~ DO ~IncrementGlobal("T2ValFriendTalk","GLOBAL",1) RealSetGlobalTimer("T2ValFriendTalkTimer","GLOBAL",2700)~ + T2ValF2Vintage
  ++ ~Don't suppose you're looking for company, are you?~ DO ~IncrementGlobal("T2ValFriendTalk","GLOBAL",1) RealSetGlobalTimer("T2ValFriendTalkTimer","GLOBAL",2700)~ + T2ValF2Flirt
  ++ ~I never imagined you having a fondness for wine.~ DO ~IncrementGlobal("T2ValFriendTalk","GLOBAL",1) RealSetGlobalTimer("T2ValFriendTalkTimer","GLOBAL",2700)~ + T2ValF2Wine
  ++ ~Enjoy yourself. I'm getting some sleep.~ DO ~IncrementGlobal("T2ValFriendTalk","GLOBAL",1) RealSetGlobalTimer("T2ValFriendTalkTimer","GLOBAL",2700)~ + T2ValF2Sleep
END

IF ~~ T2ValF2Good
SAY ~Soft bed, fine wine, a good book... a perfect evening's relaxation after lots of fighting and killing.~
  ++ ~I didn't figure you as a wine-drinker.~ + T2ValF2Wine
  ++ ~How about a pleasant evening's company?~ + T2ValF2Flirt
  ++ ~Relax while you can. I have a feeling we'll be back in the thick of it soon enough.~ + T2ValF2Fight
  ++ ~I think that soft bed is calling to me. Good night, Valerie.~ + T2ValF2Sleep
END

//Alternate start: if Valerie is recruited after clearing the Nashkel Mines

IF ~Global("T2ValFriendTalk","GLOBAL",4) Global("T2ValMulaheyAlreadyDead","GLOBAL",1)~ T2ValFriendTalk2
  SAY ~Maybe I'm still soft from my apprenticeship, but I'm tired. A soft bed and a fine wine sound like just what the cleric ordered.~
  ++ ~I agree. Sounds good.~ DO ~IncrementGlobal("T2ValFriendTalk","GLOBAL",1) RealSetGlobalTimer("T2ValFriendTalkTimer","GLOBAL",2700)~ + T2ValF2Good2
  ++ ~What kind of clerics are you used to being around, if they'd order bed and wine?~ DO ~IncrementGlobal("T2ValFriendTalk","GLOBAL",1) RealSetGlobalTimer("T2ValFriendTalkTimer","GLOBAL",2700)~ + T2ValF2Lliira
  ++ ~Any recommendations for a good vintage?~ DO ~IncrementGlobal("T2ValFriendTalk","GLOBAL",1) RealSetGlobalTimer("T2ValFriendTalkTimer","GLOBAL",2700)~ + T2ValF2Vintage
  ++ ~Don't suppose you're looking for company, are you?~ DO ~IncrementGlobal("T2ValFriendTalk","GLOBAL",1) RealSetGlobalTimer("T2ValFriendTalkTimer","GLOBAL",2700)~ + T2ValF2Flirt
  ++ ~I never imagined you having a fondness for wine.~ DO ~IncrementGlobal("T2ValFriendTalk","GLOBAL",1) RealSetGlobalTimer("T2ValFriendTalkTimer","GLOBAL",2700)~ + T2ValF2Wine2
  ++ ~Enjoy yourself. I'm getting some sleep.~ DO ~IncrementGlobal("T2ValFriendTalk","GLOBAL",1) RealSetGlobalTimer("T2ValFriendTalkTimer","GLOBAL",2700)~ + T2ValF2Sleep
END

IF ~~ T2ValF2Good2
  SAY ~Soft bed, fine wine, a good book... a perfect evening's relaxation after lots of walking and not infrequently fighting.~
  ++ ~I didn't figure you as a wine-drinker.~ + T2ValF2Wine
  ++ ~How about a pleasant evening's company?~ + T2ValF2Flirt
  ++ ~Relax while you can. I have a feeling we'll be back in the thick of it soon enough.~ + T2ValF2Fight
  ++ ~I think that soft bed is calling to me. Good night, Valerie.~ + T2ValF2Sleep
END

IF ~~ T2ValF2Lliira
  SAY ~Lliirans. The goddess of joy and revelry has taken over Waukeen's job as goddess of trade and wealth, so Athkatla suddenly has a Lliiran temple on every block, or so it feels like. They are a lively bunch.~
  ++ ~You say you serve Torm, though, right?~ + T2ValF2Torm
  ++ ~Do you want some company to help enjoy the evening?~ + T2ValF2Flirt
  ++ ~Enjoy what downtime we have. We don't get enough of it.~ + T2ValF2Fight
  ++ ~Don't stay up too late, Valerie.~ + T2ValF2Sleep
END

IF ~~ T2ValF2Vintage
  SAY ~Hah. Like we can afford a really good wine without cutting into more practical expenses. The Tethyrian red is pretty good for the price, though.~
  ++ ~I never figured you for a wine connoisseur.~ + T2ValF2Wine2
  ++ ~Pleasant company can only make a good evening better. Would you mind if I joined you?~ + T2ValF2Flirt
  ++ ~Have fun for however long this lasts. We'll be back in the fray before long.~ + T2ValF2Fight
  ++ ~I'm retiring for the night. I trust you'll go to bed before you lose the ability to walk?~ + T2ValF2Sleep
END

IF ~~ T2ValF2Wine2
  SAY ~Everyone has their vices, <CHARNAME>, and wine is one of mine.~
  ++ ~If you'd like some pleasant company for this evening, I'll be pleased to oblige.~ + T2ValF2Flirt
  ++ ~Unwind all you like, but be ready to go in the morning. Adventure awaits.~ + T2ValF2Fight
  ++ ~I'm going to bed now. The lavatory is that way if you need to throw up in the morning.~ + T2ValF2Sleep
END

IF ~~ T2ValF2Flirt
  SAY ~Uh. <CHARNAME>? Maybe the wine's blurring my judgment, but... are you flirting with me?~
  ++ ~Trying to, at any rate.~ + T2ValF2Try
  ++ ~You're a beautiful woman, Valerie. I'd be delighted to buy you another glass of wine.~ + T2ValF2Smooth
  ++ ~Not my intention, but if you're saying you want me to...~ + T2ValF2Want
  ++ ~I think you got the wrong idea.~ + T2ValF2Wrong
END

IF ~~ T2ValF2Try
  SAY ~Wow. Uh. I'm flattered, I think. But, uh, no thanks.~
  ++ ~It was worth a shot.~ + T2ValF2Shot
  IF ~OR(3) Gender(Player1,MALE) Race(Player1,HALFLING) Race(Player1,GNOME)~ THEN REPLY ~Why not?~ + T2ValF2WhyM
  IF ~Gender(Player1,FEMALE) !Race(Player1,HALFLING) !Race(Player1,GNOME)~ THEN REPLY ~Why not?~ + T2ValF2WhyF
  IF ~Gender(Player1,FEMALE)~ THEN REPLY ~Is it because I'm a woman?~ + T2ValF2Bi
  ++ ~Good night, then.~ + T2ValF2Sleep
END

IF ~~ T2ValF2Smooth
  SAY ~(Valerie laughs) Real smooth, <CHARNAME>, but I'm not, uh, interested.~
  ++ ~It was worth a shot.~ + T2ValF2Shot
  IF ~OR(3) Gender(Player1,MALE) Race(Player1,HALFLING) Race(Player1,GNOME)~ THEN REPLY ~Why not?~ + T2ValF2WhyM
  IF ~Gender(Player1,FEMALE) !Race(Player1,HALFLING) !Race(Player1,GNOME)~ THEN REPLY ~Why not?~ + T2ValF2WhyF
  IF ~Gender(Player1,FEMALE)~ THEN REPLY ~Is it because I'm a woman?~ + T2ValF2Bi
  ++ ~Good night, then.~ + T2ValF2Sleep
END

IF ~~ T2ValF2Shot
  SAY ~If you say so. Good night, <CHARNAME>.~
  IF ~~ DO ~RestParty()~ EXIT
END

IF ~~ T2ValF2WhyM
  SAY ~You're not my type. Good night, <CHARNAME>.~
  IF ~~ DO ~RestParty()~ EXIT
END

IF ~~ T2ValF2WhyF
  SAY ~You walk the adventurer's road, <CHARNAME>. I'm not a fan of the scrappy adventurer girl who of course turns out to be beautiful when she cleans up sort. Good night.~
  IF ~~ DO ~RestParty()~ EXIT
END

IF ~~ T2ValF2Bi
  SAY ~Uh, no. Not at all. I prefer women, in fact. But, uh, this really isn't the time. Good night, <CHARNAME>.~
  IF ~~ DO ~RestParty()~ EXIT
END

IF ~~ T2ValF2Want
  SAY ~No! Uh, I mean... good night, <CHARNAME>.~
  IF ~~ DO ~RestParty()~ EXIT
END

IF ~~ T2ValF2Wrong
  SAY ~(Valerie's face turns scarlet) Uh. Good night, <CHARNAME>.~
  IF ~~ EXIT
END

IF ~~ T2ValF2Fight
  SAY ~Sigh. Fighting, killing, being hurt in turn. This is a pretty miserable life you've chosen, <CHARNAME>.~
  ++ ~Oh, I don't know about that. I think it's kind of fun.~ + T2ValF2Fun
  ++ ~True, but it seems to be the only way to root out what's happening on the Sword Coast.~ + T2ValF2Quest
  ++ ~If I can avenge Gorion, it will be worth the hardship.~ + T2ValF2Quest
  ++ ~You did choose to come with me, as I recall.~ + T2ValF2Adventure
END

IF ~~ T2ValF2Fun
  SAY ~You're crazy. I suspected as much before, but now I know.~
  ++ ~Eeeee heee heee! I don't suffer from insanity, I love it!~ + T2ValF2Insane
  ++ ~Come on. You really don't enjoy pushing yourself to the limit every day? I've never felt so alive!~ + T2ValF2Alive
  ++ ~Stop moping around, Valerie. You're an adventurer now!~ + T2ValF2Adventure
  ++ ~Suit yourself. Good night.~ + T2ValF2Sleep
END

IF ~~ T2ValF2Insane
  SAY ~Oooookay. I'm going to back away very slowly. No sudden movements, Valerie, no sudden movements...~
  IF ~~ DO ~RestParty()~ EXIT
END

IF ~~ T2ValF2Alive
  SAY ~Heh. I'm not so energetic. I find life in books and artistry with the Weave, not... violence. Guess if it works for you, though, it works. Good night, <CHARNAME>.~
  IF ~~ DO ~RestParty()~ EXIT
END

IF ~~ T2ValF2Adventure
  SAY ~Only as a means to an end, <CHARNAME>. Good night.~
  IF ~~ DO ~RestParty()~ EXIT
END

IF ~~ T2ValF2Quest
  SAY ~Without getting the Cowled Wizards, Order of the Radiant Heart, or your Flaming Fist to send a strike force, probably so. Doesn't mean I enjoy the lifestyle.~
  ++ ~I don't, either, but we do what we must.~ + T2ValF2Must
  ++ ~I do, but each to their own.~ + T2ValF2Must
  ++ ~I enjoy it. I never feel so alive as when I'm on adventure.~ + T2ValF2Alive
  ++ ~Just be ready in the morning.~ + T2ValF2Sleep
END

IF ~~ T2ValF2Must
  SAY ~Indeed. Good night, <CHARNAME>.~
  IF ~~ DO ~RestParty()~ EXIT
END

IF ~~ T2ValF2Wine
  SAY ~My taste for wine disappointed my father. He's one of Athkatla's more industrious brewers, and I think he supplies half the city's inns with beer.~
  ++ ~Sounds like a comfortable home life. How did you end up in the Cowled Wizards?~ + T2ValF2CW
  ++ ~You've never talked about your family before. Always your fellow apprentices.~ + T2ValF2Family
  ++ ~Great. Of all the sorceresses in the world, why did I have to get the drunk one?~ + T2ValF2Drunk
  ++ ~I see. Good night, Valerie.~ + T2ValF2Sleep
END

IF ~~ T2ValF2Drunk
  SAY ~Very funny. I know my limits, <CHARNAME>. They're small. As you can see, I'm not exactly generous in weight or proportions.~
  ++ ~How did you end up in the Cowled Wizards anyway?~ + T2ValF2CW
  ++ ~You've only ever mentioned your fellow apprentices. What about your family?~ + T2ValF2Family
  ++ ~If you're sure I won't be down a functional sorceress in the morning, good night.~ + T2ValF2Sleep
END

IF ~~ T2ValF2CW
  SAY ~The usual way. Managed to cast a spell when I was young, the Cowled Wizards showed up to investigate the disturbance, they took me with them when they left.~
  ++ ~That's a horrible thing to do to a child.~ + T2ValF2Horrible
  ++ ~Didn't your parents try to do something?~ + T2ValF2Parents
  ++ ~You don't seem very sad about being taken away from your parents.~ + T2ValF2Sad
  ++ ~So the Cowled Wizards can track the use of magic?~ + T2ValF2Track
END

IF ~~ T2ValF2Family
  SAY ~I was taken by the Cowled Wizards when I was six. My fellow apprentices and my tutors were my family. Not unlike your situation, I suppose.~
  ++ ~That's a horrible thing to do to a child.~ + T2ValF2Horrible
  ++ ~Didn't your parents try to do something?~ + T2ValF2Parents
  ++ ~You don't seem very sad about being taken away from your parents.~ + T2ValF2Sad
END

IF ~~ T2ValF2Horrible
  SAY ~And a necessary one. I doubt I could have learned to control my abilities otherwise, insofar as I *can* control them. Magic is dangerous, <CHARNAME>. Never forget that.~
  ++ ~But don't you miss your parents?~ + T2ValF2Miss
  ++ ~I disagree. Magic isn't dangerous. The person who wields it is.~ + T2ValF2Danger
  ++ ~Dangerous or no, the Cowled Wizards shouldn't take children away from their parents.~ + T2ValF2Take
  ++ ~I won't. Good night.~ + T2ValF2Sleep
END

IF ~~ T2ValF2Miss
  SAY ~...No. Good night, <CHARNAME>.~
  IF ~~ DO ~RestParty()~ EXIT
END

IF ~~ T2ValF2Danger
  SAY ~If a child has a sword in her hands, the safest thing to do is take the sword away from her. <CHARNAME>, please go to bed or at least stop talking to me before you ruin what was a perfectly nice evening of mine.~
  IF ~~ DO ~RestParty()~ EXIT
END

IF ~~ T2ValF2Take
  SAY ~Easy for you to say, oh scion of Candlekeep. A literally textbook case of an ivory tower. Good night, <CHARNAME>.~
  IF ~~ DO ~RestParty()~ EXIT
END

IF ~~ T2ValF2Parents
  SAY ~Do what? My mother was overjoyed to see me taken away. My father won't amass in his lifetime the kind of gold it would take to secure his daughter from the Cowled Wizards.~
  ++ ~I'm so sorry for you...~ + T2ValF2Sorry
  ++ ~Why was your mother so happy?~ + T2ValF2Mother
  ++ ~Weren't you sad to leave your parents?~ + T2ValF2Miss
  ++ ~I see. Good night.~ + T2ValF2Sleep
END

IF ~~ T2ValF2Sorry
  SAY ~I'm not. Good night, <CHARNAME>.~
  IF ~~ DO ~RestParty()~ EXIT
END

IF ~~ T2ValF2Mother
  SAY ~Because I was finally gone, of course. Good night, <CHARNAME>.~
  IF ~~ DO ~RestParty()~ EXIT
END

IF ~~ T2ValF2Sad
  SAY ~I've made my peace with it. I'm not going to mope for decades on end over something I had no control over. Good night, <CHARNAME>.~
  IF ~~ DO ~RestParty()~ EXIT
END

IF ~~ T2ValF2Track
  SAY ~Do not cast arcane spells in Athkatla unless you have a license from the Cowled Wizards. Good night.~
  IF ~~ DO ~RestParty()~ EXIT
END

IF ~~ T2ValF2Torm
  SAY ~I do. Torm, the Loyal Fury, god of duty, obedience, and loyalty. Odd for a sorceress to worship him, I know, and I do pray to Mystra on occasion, but magic is merely how I serve.~
  ++ ~Isn't that a bit contradictory? Praying to multiple gods?~ + T2ValF2Pantheon
  ++ ~Why do you love duty so much? Odd for a sorceress, but odder still for a young woman like you.~ + T2ValF2Duty
  ++ ~Why not Helm or Lathander? They seem to be the main do-gooder gods around here.~ + T2ValF2Choice
  ++ ~I see. Good night, Valerie.~ + T2ValF2Sleep
END

IF ~~ T2ValF2Pantheon
  SAY ~Torm doesn't begrudge my prayers to Mystra, nor she my prayers to Torm. Clerics and paladins are the only ones the gods really expect to pray to one god alone.~
  ++ ~You're not a cleric? Could have fooled me.~ + T2ValF2Cleric
  ++ ~I'm surprised you never aspired to be a paladin.~ + T2ValF2Paladin
  ++ ~Are those the only gods you worship?~ + T2ValF2Gods
  ++ ~Interesting. I'll leave you to your wine, then.~ + T2ValF2Sleep
END

IF ~~ T2ValF2Cleric
  SAY ~(Valerie laughs) Don't think it hasn't occurred to me, but I can't seem to pursue religious studies without abandoning my magical development, something I'd rather not do. Were that I had elven or gnomish blood so I could multitask like they do...~
  IF ~~ DO ~RestParty()~ EXIT
END

IF ~~ T2ValF2Paladin
  SAY ~Me? A paladin? Be serious, <CHARNAME>! I don't have the muscle to do the big weapon and heavy armor routine, much less the fortitude to play knight! No, it's a mage's life for me. Good night, <CHARNAME>.~
  IF ~~ DO ~RestParty()~ EXIT
END

IF ~~ T2ValF2Gods
  SAY ~I've prayed to Sune before, of course. What girl hasn't? And Oghma, when studying for an examination. But that's about it, I think. Good night, <CHARNAME>.~
  IF ~~ DO ~RestParty()~ EXIT
END

IF ~~ T2ValF2Duty
  SAY ~I'm a sorceress, <CHARNAME>. I'm odd by definition. I never thought about it much. I can protect people, so I do. It just... comes naturally to me, I guess.~
  ++ ~Why not Mystra? Or Sune? I'd think those more your style as a young sorceress.~ + T2ValF2MS
  ++ ~I'm surprised you're not a cleric.~ + T2ValF2Cleric
  ++ ~Why did't you become a paladin, with that attitude?~ + T2ValF2Paladin
  ++ ~Each to their own, I guess. Good night.~ + T2ValF2Sleep
END

IF ~~ T2ValF2MS
  SAY ~Oh I do pray to them, on occasion. But beauty is such a transient thing, and magic is simply a powerful, dangerous tool. Duty is my calling, <CHARNAME>. Good night.~
  IF ~~ DO ~RestParty()~ EXIT
END

IF ~~ T2ValF2Choice
  SAY ~They're both too... short-sighted, for my tastes. Youth is fleeting and the sun sets each night. And unlike Helm, Torm knows that laws are not always just and we should never obey orders or laws blindly.~
  ++ ~Valerie, I worship Lathander. Please respect my faith while you're in my company.~ + T2ValF2Lathander
  ++ ~You *do* know I serve Helm, right?~ + T2ValF2Helm
  ++ ~Heh. I'm surprised you're not a cleric.~ + T2ValF2Cleric
  ++ ~I see. Don't stay up too late, Valerie. We'll probably need your spells tomorrow.~ + T2ValF2Sleep
END

IF ~~ T2ValF2Lathander
  SAY ~I do, and I respect the Morninglord's followers. He's just not a deity I can see myself ever following. Good night, <CHARNAME>, and may the Morninglord bless you with the dawn.~
  IF ~~ DO ~RestParty()~ EXIT
END

IF ~~ T2ValF2Helm
  SAY ~I do, and I'm not about to launch a crusade against the Watcher and his followers. Good night, <CHARNAME>.~
  IF ~~ DO ~RestParty()~ EXIT
END

IF ~~ T2ValF2Sleep
  SAY ~Good night, <CHARNAME>.~
  IF ~~ DO ~RestParty()~ EXIT
END

//Friendtalk 3

IF ~Global("T2ValFriendTalk","GLOBAL",6)~ T2ValFriendTalk3
  SAY ~How did you get drawn into this mess in the first place, <CHARNAME>? Candlekeep is said to be very insular.~
  ++ ~It wasn't my idea. Trust me.~ DO ~IncrementGlobal("T2ValFriendTalk","GLOBAL",1) RealSetGlobalTimer("T2ValFriendTalkTimer","GLOBAL",2700)~ + T2ValF3Idea
  ++ ~My foster father was slain before my eyes. I intend to bring his killers to justice.~ DO ~IncrementGlobal("T2ValFriendTalk","GLOBAL",1) RealSetGlobalTimer("T2ValFriendTalkTimer","GLOBAL",2700)~ + T2ValF3Justice
  ++ ~Here's the short version: my foster father was murdered, people are after me, and it seems to be tied into the bandit plague. Don't ask me why, because I have no idea.~ DO ~IncrementGlobal("T2ValFriendTalk","GLOBAL",1) RealSetGlobalTimer("T2ValFriendTalkTimer","GLOBAL",2700)~ + T2ValF3Short
  ++ ~No offense, but I don't like to talk about it.~ DO ~IncrementGlobal("T2ValFriendTalk","GLOBAL",1) RealSetGlobalTimer("T2ValFriendTalkTimer","GLOBAL",2700)~ + T2ValF3Rebuff
END

IF ~~ T2ValF3Rebuff
  SAY ~Alright, I didn't mean to pry.~
  IF ~~ EXIT
END

IF ~~ T2ValF3Idea
  SAY ~I didn't think it was. What kind of idiot chooses this lifestyle? If you don't want to talk about it, though, I understand.~
  ++ ~My foster father was murdered. That's what got all this started, and why I'm moving forwards.~ + T2ValF3Justice
  ++ ~Here's the short version: my foster father was murdered, people are after me, and it seems to be tied into the bandit plague. Don't ask me why, because I have no idea.~ + T2ValF3Short
  ++ ~I'd prefer not to talk about it.~ + T2ValF3Rebuff
END

IF ~~ T2ValF3Justice
  SAY ~I... I'm so sorry, <CHARNAME>. I had no idea...~
  ++ ~Don't be sorry for me. A pity party won't bring his killers to justice.~ + T2ValF3Pity
  ++ ~Thank you, but moping won't do any good. We must press on.~ + T2ValF3Press
  ++ ~I don't need you to pity me, only to obey me.~ DO ~SetGlobal("T2ValFriendship","GLOBAL",3)~ + T2ValF3Obey
  ++ ~Enough introspection for one day, I think. Let's get moving.~ + T2ValF3Moving
END

IF ~~ T2ValF3Pity
  SAY ~True. Thank you for telling me, at least.~
  IF ~~ EXIT
END

IF ~~ T2ValF3Press
  SAY ~Mourning the death of a good man isn't a sign of weakness, <CHARNAME>, but I guess you're right.~
  IF ~~ EXIT
END

IF ~~ T2ValF3Obey
  SAY ~Very well, oh supreme leader.~
  IF ~~ EXIT
END

IF ~~ T2ValF3Moving
  SAY ~As you wish.~
  IF ~~ EXIT
END

IF ~~ T2ValF3Short
  SAY ~(Valerie's eyes bulge) Uh. Wow. Okay. I'll, uh, need to think about this. I think.~
  IF ~~ EXIT
END

//Friendship Talk 4

IF ~Global("T2ValFriendTalk","GLOBAL",8)~ T2ValFriendTalk4
  SAY ~I must admit I'm envious of your chance to actually live at Candlekeep. It sounds like an amazing place.~
  ++ ~If you like books, lots and lots of books, I suppose it is.~ DO ~IncrementGlobal("T2ValFriendTalk","GLOBAL",1) RealSetGlobalTimer("T2ValFriendTalkTimer","GLOBAL",2700)~ + T2ValF4Book
  ++ ~To visit, maybe. Not much fun to grow up in, though.~ DO ~IncrementGlobal("T2ValFriendTalk","GLOBAL",1) RealSetGlobalTimer("T2ValFriendTalkTimer","GLOBAL",2700)~ + T2ValF4Boring
  ++ ~If you say so. I always found it terminally boring.~ DO ~IncrementGlobal("T2ValFriendTalk","GLOBAL",1) RealSetGlobalTimer("T2ValFriendTalkTimer","GLOBAL",2700)~ + T2ValF4Boring
  ++ ~Could you please start minding your own business and not mine?~ DO ~SetGlobal("T2ValFriendship","GLOBAL",3)~ + T2ValF4Burn
END

IF ~~ T2ValF4Burn
  SAY ~Good grief. Fine. I won't try to get to know the would-be champion of the Sword Coast, then.~
  IF ~~ EXIT
END

IF ~~ T2ValF4Book
  SAY ~I love books. I think my bookshelves take up more of my room's space and more of my salary than my lab equipment, back in Athkatla. I've always hoped to visit Candlekeep someday.~
  ++ ~I never did have books of my own. Every book in Candlekeep belongs to the library.~ + T2ValF4Own
  ++ ~You might not enjoy it that much. Ulraunt always frowned on adding "books that lack instructional value."~ + T2ValF4Oghma
  ++ ~Do you ever read just for fun, or is it always business with you?~ + T2ValF4Read
  ++ ~Suit yourself. I never cared much for reading, so Candlekeep was pretty boring for me.~ + T2ValF4Boring
END

IF ~~ T2ValF4Own
  SAY ~And it's hard to start a collection on the road, I guess. Maybe we should save our gold for a bag of holding or a portable hole. Well, a girl can dream, at any rate.~
  ++ ~A bit out of our reach at the moment, yes. Dream all you like, but for now I'd settle for a nice enchanted weapon or suit of armor.~ + T2ValF4Enchant
  ++ ~Again, you're certain you're not a follower of Deneir?~ + T2ValF4Deneir
  ++ ~Dreams aren't bad, Valerie. Yours happens to be a library. Nothing wrong with that.~ + T2ValF4Dreams
  ++ ~Saving up for a bag of holding is a good idea, but I think I'd like to use it for something more practical than storing books.~ + T2ValF4Practical
END

IF ~~ T2ValF4Enchant
  SAY ~I can't help you on that one, <CHARNAME>. Sigh... life was pretty good in Athkatla. Free room in the dormitory, ready access to books and lab equipment. The Cowled Wizards look after their own pretty well.~
  ++ ~I notice you don't seem to miss your family.~ + T2ValF4Family
  ++ ~Strange. I've heard stories that the Cowled Wizards are corrupt and prone to being, well, evil.~ + T2ValF4Stories
  ++ ~Do you regret coming up to the Sword Coast?~ + T2ValF4Regret
  ++ ~Sounds nice, but I think we've lost enough time already.~ + T2ValF4Bye
END

IF ~~ T2ValF4Deneir
  SAY ~Just because I like books and reading doesn't mean I worship them. Sigh... life was pretty good in Athkatla. Free room in the dormitory, ready access to books and lab equipment. The Cowled Wizards look after their own pretty well.~
  ++ ~I notice you don't seem to miss your family.~ + T2ValF4Family
  ++ ~Strange. I've heard stories that the Cowled Wizards are corrupt and prone to being, well, evil.~ + T2ValF4Stories
  ++ ~Do you regret coming up to the Sword Coast?~ + T2ValF4Regret
  ++ ~Sounds nice, but I think we've lost enough time already.~ + T2ValF4Bye
END

IF ~~ T2ValF4Dreams
  SAY ~That's sweet of you to say, <CHARNAME>. Sigh... life was pretty good in Athkatla. Free room in the dormitory, ready access to books and lab equipment. The Cowled Wizards look after their own pretty well.~
  ++ ~I notice you don't seem to miss your family.~ + T2ValF4Family
  ++ ~Strange. I've heard stories that the Cowled Wizards are corrupt and prone to being, well, evil.~ + T2ValF4Stories
  ++ ~Do you regret coming up to the Sword Coast?~ + T2ValF4Regret
  ++ ~Sounds nice, but I think we've lost enough time already.~ + T2ValF4Bye
END

IF ~~ T2ValF4Practical
  SAY ~True, true. A bag of holding is an overburdened adventurer's best friend. Sigh... life was pretty good in Athkatla. Free room in the dormitory, ready access to books and lab equipment. The Cowled Wizards look after their own pretty well.~
  ++ ~I notice you don't seem to miss your family.~ + T2ValF4Family
  ++ ~Strange. I've heard stories that the Cowled Wizards are corrupt and prone to being, well, evil.~ + T2ValF4Stories
  ++ ~Do you regret coming up to the Sword Coast?~ + T2ValF4Regret
  ++ ~Sounds nice, but I think we've lost enough time already.~ + T2ValF4Bye
END

IF ~~ T2ValF4Oghma
  SAY ~Ulraunt sounds like a true Oghmanyte. I don't think I agree, though. If you have fun reading a book, then that book's done a good thing, I think.~
  ++ ~You find reading fun? I should have known.~ + T2ValF4Fun
  ++ ~Be serious, Valerie. What does a trashy romance have to offer history?~ + T2ValF4Trashy
  ++ ~I agree. Not everyone wants to learn all the time~ + T2ValF4Learn
  ++ ~You're getting preachy again, aren't you?~ + T2ValF4Preachy
END

IF ~~ T2ValF4Fun
  SAY ~It took you this long to figure out that I enjoy reading? Sigh... life was pretty good in Athkatla. Free room in the dormitory, ready access to books and lab equipment. The Cowled Wizards look after their own pretty well.~
  ++ ~I notice you don't seem to miss your family.~ + T2ValF4Family
  ++ ~Strange. I've heard stories that the Cowled Wizards are corrupt and prone to being, well, evil.~ + T2ValF4Stories
  ++ ~Do you regret coming up to the Sword Coast?~ + T2ValF4Regret
  ++ ~Sounds nice, but I think we've lost enough time already.~ + T2ValF4Bye
END

IF ~~ T2ValF4Trashy
  SAY ~Uh, not everyone sneers at trashy romance. They're harmless fun. Sigh... life was pretty good in Athkatla. Free room in the dormitory, ready access to books and lab equipment. The Cowled Wizards look after their own pretty well.~
  ++ ~I notice you don't seem to miss your family.~ + T2ValF4Family
  ++ ~Strange. I've heard stories that the Cowled Wizards are corrupt and prone to being, well, evil.~ + T2ValF4Stories
  ++ ~Do you regret coming up to the Sword Coast?~ + T2ValF4Regret
  ++ ~Sounds nice, but I think we've lost enough time already.~ + T2ValF4Bye
END

IF ~~ T2ValF4Learn
  SAY ~There is a time for learning, of course, but sometimes I just want to curl up with a fun book. Sigh... life was pretty good in Athkatla. Free room in the dormitory, ready access to books and lab equipment. The Cowled Wizards look after their own pretty well.~
  ++ ~I notice you don't seem to miss your family.~ + T2ValF4Family
  ++ ~Strange. I've heard stories that the Cowled Wizards are corrupt and prone to being, well, evil.~ + T2ValF4Stories
  ++ ~Do you regret coming up to the Sword Coast?~ + T2ValF4Regret
  ++ ~Sounds nice, but I think we've lost enough time already.~ + T2ValF4Bye
END

IF ~~ T2ValF4Preachy
  SAY ~Sorry. Sigh... life was pretty good in Athkatla. Free room in the dormitory, ready access to books and lab equipment. The Cowled Wizards look after their own pretty well.~
  ++ ~I notice you don't seem to miss your family.~ + T2ValF4Family
  ++ ~Strange. I've heard stories that the Cowled Wizards are corrupt and prone to being, well, evil.~ + T2ValF4Stories
  ++ ~Do you regret coming up to the Sword Coast?~ + T2ValF4Regret
  ++ ~Sounds nice, but I think we've lost enough time already.~ + T2ValF4Bye
END

IF ~~ T2ValF4Read
  SAY ~Both? Sometimes I feel like reading a treatise on the relationship between the chromatic spells and the colors of light revealed through a glass prism, sometimes I like reading a romance story.~
  ++ ~Okay, fair enough.~ + T2ValF4Fair
  ++ ~You actually like romance stories?~ + T2ValF4Romance
  ++ ~The books in Candlekeep taught me a word in some obscure language I'd never heard of for what you are, Valerie. That word is "nerd."~ + T2ValF4Nerd
  ++ ~Somehow, I have no trouble taking your word for all of that.~ + T2ValF4Word
END

IF ~~ T2ValF4Fair
  SAY ~Thanks. I was, uh, expecting a more sarcastic response than that. Sigh... life was pretty good in Athkatla. Free room in the dormitory, ready access to books and lab equipment. The Cowled Wizards look after their own pretty well.~
  ++ ~I notice you don't seem to miss your family.~ + T2ValF4Family
  ++ ~Strange. I've heard stories that the Cowled Wizards are corrupt and prone to being, well, evil.~ + T2ValF4Stories
  ++ ~Do you regret coming up to the Sword Coast?~ + T2ValF4Regret
  ++ ~Sounds nice, but I think we've lost enough time already.~ + T2ValF4Bye
END

IF ~~ T2ValF4Romance
  SAY ~I suppose I'm a bit of a romantic at heart. Sigh... life was pretty good in Athkatla. Free room in the dormitory, ready access to books and lab equipment. The Cowled Wizards look after their own pretty well.~
  ++ ~I notice you don't seem to miss your family.~ + T2ValF4Family
  ++ ~Strange. I've heard stories that the Cowled Wizards are corrupt and prone to being, well, evil.~ + T2ValF4Stories
  ++ ~Do you regret coming up to the Sword Coast?~ + T2ValF4Regret
  ++ ~Sounds nice, but I think we've lost enough time already.~ + T2ValF4Bye
END

IF ~~ T2ValF4Nerd
  SAY ~Not a word I'm familiar with, certainly. Sigh... life was pretty good in Athkatla. Free room in the dormitory, ready access to books and lab equipment. The Cowled Wizards look after their own pretty well.~
  ++ ~I notice you don't seem to miss your family.~ + T2ValF4Family
  ++ ~Strange. I've heard stories that the Cowled Wizards are corrupt and prone to being, well, evil.~ + T2ValF4Stories
  ++ ~Do you regret coming up to the Sword Coast?~ + T2ValF4Regret
  ++ ~Sounds nice, but I think we've lost enough time already.~ + T2ValF4Bye
END

IF ~~ T2ValF4Word
  SAY ~I've never been a very good liar. Sigh... life was pretty good in Athkatla. Free room in the dormitory, ready access to books and lab equipment. The Cowled Wizards look after their own pretty well.~
  ++ ~I notice you don't seem to miss your family.~ + T2ValF4Family
  ++ ~Strange. I've heard stories that the Cowled Wizards are corrupt and prone to being, well, evil.~ + T2ValF4Stories
  ++ ~Do you regret coming up to the Sword Coast?~ + T2ValF4Regret
  ++ ~Sounds nice, but I think we've lost enough time already.~ + T2ValF4Bye
END


IF ~~ T2ValF4Boring
  SAY ~Each to their own, I suppose. Sigh... life was pretty good in Athkatla. Free room in the dormitory, ready access to books and lab equipment. The Cowled Wizards look after their own pretty well.~
  ++ ~I notice you don't seem to miss your family.~ + T2ValF4Family
  ++ ~Strange. I've heard stories that the Cowled Wizards are corrupt and prone to being, well, evil.~ + T2ValF4Stories
  ++ ~Do you regret coming up to the Sword Coast?~ + T2ValF4Regret
  ++ ~Sounds nice, but I think we've lost enough time already.~ + T2ValF4Bye
END

IF ~~ T2ValF4Family
  SAY ~Well, the Cowled Wizards took me from my family when I was six, when I first cast a spell on accident, and apprentices don't really have time for family. They're still alive, but I haven't spoken to them in years.~
  ++ ~Why not?~ + T2ValF4Why
  ++ ~It sounds like a terrible thing to do to a child, honestly.~ + T2ValF4Terrible
  ++ ~You don't resent the Cowled Wizards?~ + T2ValF4Resent
  ++ ~I'd heard the Cowled Wizards weren't very nice to the Amnish people. I guess that's one story that's true.~ + T2ValF4Stories
END

IF ~~ T2ValF4Stories
  SAY ~The Cowled Wizards aren't evil. We can be harsh when enforcing the law, I'll grant you, but you haven't seen what magic can do in wrong or irresponsible hands. And I suppose that when we do our jobs right, you never hear about us at all.~
  ++ ~Is magic really so dangerous? You're a sorceress, after all. Magic is in your blood.~ + T2ValF4Magic
  ++ ~They sound like terrible people, honestly.~ + T2ValF4Terrible
  ++ ~You seem big on justice. I'm surprised you don't resent what the Cowled Wizards have done.~ + T2ValF4Resent
END

IF ~~ T2ValF4Resent
  SAY ~Why would I resent them? Mages can quite literally kill with a word. I shudder to think of what might have happened if I was left to my own devices.~
  ++ ~I'm surprised to hear you say that. I thought you loved magic, but you like the people restricting its use?~ + T2ValF4Magic
  ++ ~I don't know. You make the Cowled Wizards sound like terrible people.~ + T2ValF4Terrible
  ++ ~The stories you're telling certainly are different from the ones I've heard. "Tyrants" and "power-mongers" are words I've heard used to describe your group.~ + T2ValF4Stories
END

IF ~~ T2ValF4Why
  SAY ~Aside from the fact that my mother hates me and always has? I haven't had any reason to. Let's get going, <CHARNAME>. We've wasted enough time.~
  IF ~~ EXIT
END

IF ~~ T2ValF4Magic
  SAY ~I can kill people by waving my hands, reciting some words, and focusing my will. If that doesn't make me dangerous, I don't know what will. Still, we've wasted enough time. Let's get going.~
  IF ~~ EXIT
END

IF ~~ T2ValF4Terrible
  SAY ~There are bad people in the Cowled Wizards, yes. There are good people, too. Same as any other group of people. Let's get going, <CHARNAME>.~
  IF ~~ EXIT
END

IF ~~ T2ValF4Regret
  SAY ~Not at all. All this exercise has been good for my body if nothing else. Well, we've spent enough time standing around here. Let's get going.~
  IF ~~ EXIT
END

IF ~~ T2ValF4Bye
  SAY ~Alright.~
  IF ~~ EXIT
END

//Valerie Friendship Talk 5

IF ~Global("T2ValFriendTalk","GLOBAL",10)~ T2ValFriendTalk5
  SAY ~I'm not sure what to make of the Sword Coast. It's so... unorganized. Baldur's Gate doesn't even have an army, just mercenaries on permanent hire.~
  ++ ~Is Amn so different? I hadn't heard much about Amn outside Athkatla.~ DO ~IncrementGlobal("T2ValFriendTalk","GLOBAL",1)~ + T2ValF5Ath
  ++ ~Do I hear homesickness in your voice?~ DO ~IncrementGlobal("T2ValFriendTalk","GLOBAL",1)~ + T2ValF5Homesick
  ++ ~You get used to it. I like the Sword Coast as it is.~ DO ~IncrementGlobal("T2ValFriendTalk","GLOBAL",1)~ + T2ValF5Sword
  ++ ~Sorry, Valerie, but I'm not in the mood to talk.~ DO ~SetGlobal("T2ValFriendship","GLOBAL",3)~ + T2ValF5Bye
END

IF ~~ T2ValF5Bye
  SAY ~Okay, fair enough.~
  IF ~~ EXIT
END

IF ~~ T2ValF5Ath
  SAY ~Athkatla is only the biggest city and the capital. Amn has plenty of towns and villages, there's just rarely much reason for you to hear about them up here outside crises like Nashkel.~
  ++ ~What's life like in Amn?~ + T2ValF5Amn
  ++ ~Do you like what you've seen of the Sword Coast?~ + T2ValF5Like
  ++ ~Where in Amn are you from?~ + T2ValF5Home
  ++ ~Looks like I have a guide should we end up traveling to Amn.~ + T2ValF5Travel
  ++ ~Guess that's the cue to get going. Plenty of things to do here on the Sword Coast.~ + T2ValF5Bye
END

IF ~~ T2ValF5Homesick
  SAY ~I suppose you do. It's funny, now that I think about it. Athkatla is corrupt, messy, and often unsafe if you go to the wrong part of the city, but it's home. Certainly never a lack of evil to investigate.~
  ++ ~Is that really what life in Amn is like?~ + T2ValF5AmnReal
  ++ ~I hope you like what you've seen of the Sword Coast, at least.~ + T2ValF5Like
  ++ ~So you're from Athkatla? Doesn't sound like a safe place to grow up.~ + T2ValF5AthHome
  ++ ~I'll be sure to ask you to show me around should I end up traveling to Amn.~ + T2ValF5Travel
  ++ ~Guess that's the cue to get going. Plenty of things to do here on the Sword Coast.~ + T2ValF5Bye
END

IF ~~ T2ValF5Sword
  SAY ~I'm not sure that I do. Athkatla may be corrupt, but most parts of the city and other Amnish communities are safe and orderly. Here, though? I thought assassins waiting for you to arrive in the inn were just a typical bard's exaggeration.~
  ++ ~So what is it like, living in Amn?~ + T2ValF5Amn
  ++ ~Assassins aside, how are you liking the Sword Coast?~ + T2ValF5Like
  ++ ~Most parts? Are you from Athkatla?~ + T2ValF5AthHome
  ++ ~You'll have to show me around, should we end up in Amn.~ + T2ValF5Travel
  ++ ~Guess that's the cue to get going. Plenty of things to do here on the Sword Coast.~ + T2ValF5Bye
END

IF ~~ T2ValF5Amn
  SAY ~Mostly like life here, save that there's one cohesive government and use of magic is regulated by the Cowled Wizards. I'd say it's safer and more organized than the Sword Coast.~
  ++ ~So are you going to arrest us if we cast magic in Amn?~ + T2ValF5Arrest
  ++ ~Why regulate magic?~ + T2ValF5Regulate
  ++ ~Sounds more oppressive than anything.~ + T2ValF5Oppress
  ++ ~I see. Thank you, but it's time we got going.~ + T2ValF5Bye
END

IF ~~ T2ValF5AmnReal
  SAY ~Well, money always does speak louder than words in Amn. I'm very happy that the Cowled Wizards stay out of politics, though. We have a specific purpose: control the use of magic in Amn and protect our people from magical threats.~
  ++ ~So are you going to arrest us if we cast magic in Amn?~ + T2ValF5Arrest
  ++ ~Why regulate magic?~ + T2ValF5Regulate
  ++ ~Sounds more oppressive than anything.~ + T2ValF5Oppress
  ++ ~I see. Thank you, but it's time we got going.~ + T2ValF5Bye
END

IF ~~ T2ValF5Travel
  SAY ~I don't see any reason why not, should we end up there. Doesn't seem likely in the foreseeable future, though, so I suppose we should get back to the road.~
  IF ~~ EXIT
END

IF ~~ T2ValF5Like
  SAY ~I think either Baldur's Gate needs to annex the Sword Coast or Amn does. In Amn, there's one cohesive government and use of magic is regulated by the Cowled Wizards. I'd say the Sword Coast would be safer with a similar model.~
  ++ ~So are you going to arrest us if we cast magic in Amn?~ + T2ValF5Arrest
  ++ ~Why regulate magic?~ + T2ValF5Regulate
  ++ ~Sounds more oppressive than anything.~ + T2ValF5Oppress
  ++ ~I see. Thank you, but it's time we got going.~ + T2ValF5Bye
END

IF ~~ T2ValF5Home
  SAY ~Athkatla, Amn's capital city. In Amn, there's one cohesive government and use of magic is regulated by the Cowled Wizards. I'd say the Sword Coast would be safer with a similar model.~
  ++ ~So are you going to arrest us if we cast magic in Amn?~ + T2ValF5Arrest
  ++ ~Why regulate magic?~ + T2ValF5Regulate
  ++ ~Sounds more oppressive than anything.~ + T2ValF5Oppress
  ++ ~I see. Thank you, but it's time we got going.~ + T2ValF5Bye
END

IF ~~ T2ValF5AthHome
  SAY ~The areas under Cowled Wizard supervision, where I grew up with my fellow apprentices, are probably the safest in Athkatla. In Amn, there's one cohesive government and use of magic is regulated by the Cowled Wizards. I'd say the Sword Coast would be safer with a similar model.~
  ++ ~So are you going to arrest us if we cast magic in Amn?~ + T2ValF5Arrest
  ++ ~Why regulate magic?~ + T2ValF5Regulate
  ++ ~Sounds more oppressive than anything.~ + T2ValF5Oppress
  ++ ~I see. Thank you, but it's time we got going.~ + T2ValF5Bye
END

IF ~~ T2ValF5Arrest
  SAY ~Oh, spellcasting is only illegal for unlicensed mages in Athkatla itself. Even then, it wouldn't be me. We have a special group for that. But I don't think we're likely to visit Amn anytime soon, so I think it's time we got moving again.~
  IF ~~ EXIT
END

IF ~~ T2ValF5Regulate
 SAY ~Because it's very, very dangerous? Wait. Stop it, Valerie. You're about to get preachy again. Um, can we get going before I forget how to shut up?~
  IF ~~ EXIT
END

IF ~~ T2ValF5Oppress
  SAY ~Our purpose is to protect the people of Amn from the dangers of magic, just as the army's purpose is to protect the people of Amn from more mundane dangers. Protectors, not oppressors. Um. Can we get going before I really start preaching?~
  IF ~~ EXIT
END


//Friendship talk 6. Should only fire after clearing the bandit camp.

IF ~Global("T2ValFriendTalk","GLOBAL",12)~ T2ValFriendTalk6
  SAY ~<CHARNAME>, I don't meant to pry, but are you feeling alright? I've noticed you have unusual... powers, that I don't think you had when we met.~
  ++ ~Ever since leaving Candlekeep, I've been plagued by nightmares. Strange ones. Now every fresh nightmare seems to herald a new gift.~ DO ~IncrementGlobal("T2ValFriendTalk","GLOBAL",1) RealSetGlobalTimer("T2ValFriendTalkTimer","GLOBAL",2700)~ + T2ValF6Nightmares
  ++ ~I'm fine. No worse than usual, at any rate.~ DO ~IncrementGlobal("T2ValFriendTalk","GLOBAL",1) RealSetGlobalTimer("T2ValFriendTalkTimer","GLOBAL",2700)~ + T2ValF6Fine
  ++ ~No, I didn't have them when we met. They've been coming to me, and it worries me.~ DO ~IncrementGlobal("T2ValFriendTalk","GLOBAL",1) RealSetGlobalTimer("T2ValFriendTalkTimer","GLOBAL",2700)~  + T2ValF6Worry
  ++ ~I appreciate the thought, but if you don't mind, I'd rather not talk about it.~ DO ~IncrementGlobal("T2ValFriendTalk","GLOBAL",1) RealSetGlobalTimer("T2ValFriendTalkTimer","GLOBAL",2700)~ + T2ValF6Fine
  ++ ~It's none of your business.~ DO ~IncrementGlobal("T2ValFriendTalk","GLOBAL",1) RealSetGlobalTimer("T2ValFriendTalkTimer","GLOBAL",2700)~ + T2ValF6None
END

IF ~~ T2ValF6Nightmares
  SAY ~I see. They don't seem to be like my powers. I certainly don't have nightmares about them. Hmmm... I want to say it sounds like a magical illness of some kind, but...~
  ++ ~But what?~ + T2ValF6Hmmm
  ++ ~You have an idea, I take it?~ + T2ValF6Idea
  ++ ~Illness? That's what this feels like alright.~ + T2ValF6Illness
  ++ ~What have we encountered that might have done something like that, though?~ + T2ValF6Encounter
END

IF ~~ T2ValF6Hmmm
  SAY ~I'm trying to think what might have done this to you. If it happened right after you left Candlekeep... hadn't encountered anything really interesting yet. Could have been a curse, I suppose...~
  ++ ~What kind of curse would give me powers? They're useful, though I could do without the nightmares.~ + T2ValF6Curse
  ++ ~You think we should ask a priest next time we're at a temple?~ + T2ValF6Priest
  ++ ~Don't worry too much about it. I can handle this.~ + T2ValF6Handle
END

IF ~~ T2ValF6Idea
  SAY ~No, and that troubles me. It doesn't sound like you'd encountered anything really interesting yet when this started. Could have been a curse rather than an illness, I suppose...~
  ++ ~What kind of curse would give me powers? They're useful, though I could do without the nightmares.~ + T2ValF6Curse
  ++ ~You think we should ask a priest next time we're at a temple?~ + T2ValF6Priest
  ++ ~Don't worry too much about it. I can handle this.~ + T2ValF6Handle
END

IF ~~ T2ValF6Illness
  SAY ~Problem is, what could have caused it? I don't think you'd encountered anything really interesting by the time this started. Could have been a curse rather than an illness, I suppose...~
  ++ ~What kind of curse would give me powers? They're useful, though I could do without the nightmares.~ + T2ValF6Curse
  ++ ~You think we should ask a priest next time we're at a temple?~ + T2ValF6Priest
  ++ ~Don't worry too much about it. I can handle this.~ + T2ValF6Handle
END

IF ~~ T2ValF6Encounter
  SAY ~I don't know, particularly given when this apparently started. Could have been a curse rather than an illness, I suppose...~
  ++ ~What kind of curse would give me powers? They're useful, though I could do without the nightmares.~ + T2ValF6Curse
  ++ ~You think we should ask a priest next time we're at a temple?~ + T2ValF6Priest
  ++ ~Don't worry too much about it. I can handle this.~ + T2ValF6Handle
END

IF ~~ T2ValF6Curse
  SAY ~I don't know the answer to that, either. I'll start studying this in my down time, if you don't mind. If there's something wrong, we need to stop it.~
  IF ~~ EXIT
END

IF ~~ T2ValF6Priest
  SAY ~Couldn't hurt, I suppose, but I'll start looking into this, myself. Especially if this spreads to the rest of us, we need to know what's going on and how to stop it.~
  IF ~~ EXIT
END

IF ~~ T2ValF6Handle
  SAY ~I suppose we don't have much choice for the moment. Still, I'll start studying this in my down time. If there's something wrong, we need to stop it.~
  IF ~~ EXIT
END

IF ~~ T2ValF6Fine
  SAY ~Are you sure? I'd hardly be discouraged if our brave leader isn't well.~
  ++ ~I'm sure. Let's get back to the road.~ + T2ValF6Fair
  ++ ~The truth is, ever since leaving Candlekeep I've been plagued by strange nightmares. Now, their wake brings new powers.~ + T2ValF6Nightmares
  ++ ~Okay, I admit that I'm worried. These powers are a new and ongoing development. I don't know where they come from.~ + T2ValF6Worry
  ++ ~It's none of your business, Valerie.~ + T2ValF6None
END

IF ~~ T2ValF6Fair
  SAY ~If you say so...~
  IF ~~ EXIT
END

IF ~~ T2ValF6Worry
  SAY ~I don't blame you for being worried. In fact, you've got me worried, too. Don't know if I've heard of nightmares heralding new magical powers before. Hmmm... I want to say it sounds like a magical illness of some kind, but...~
  ++ ~But what?~ + T2ValF6Hmmm
  ++ ~You have an idea, I take it?~ + T2ValF6Idea
  ++ ~Illness? That's what this feels like alright.~ + T2ValF6Illness
  ++ ~What have we encountered that might have done something like that, though?~ + T2ValF6Encounter
END

IF ~~ T2ValF6None
  SAY ~<CHARNAME>, I'm asking you as a colleague and as a friend. Is there something wrong?~
  ++ ~I said no and I meant it.~ DO ~SetGlobal("T2ValFriendship","GLOBAL",3)~ + T2ValF6Burn
  ++ ~*sigh* Very well. Short version is that I've started having nightmares since Gorion's death, and now they seem to bring new powers with them.~ + T2ValF6Nightmares
  ++ ~Fine. Yes, I'm developing new powers. No, I don't know why. Yes, I'm worried. Happy now?~ + T2ValF6Worry
END

IF ~~ T2ValF6Burn
  SAY ~I'm pretty sure you're lying to my face, but have it your way.~
  IF ~~ EXIT
END

//Friendtalk 7

IF ~Global("T2ValFriendTalk","GLOBAL",14)~ T2ValFriendTalk7
  SAY ~<CHARNAME>, I've been studying what I know of your, ah, condition, but I'm afraid I haven't come up with anything. Silly me didn't bring many books with me, and books on this sort of thing are hard to find.~
  ++ ~The thought is appreciated anyway, Valerie.~ DO ~IncrementGlobal("T2ValFriendTalk","GLOBAL",1) RealSetGlobalTimer("T2ValFriendTalkTimer","GLOBAL",2700)~ + T2ValF7Thought
  ++ ~I didn't ask you to do this. Don't worry about it.~ DO ~IncrementGlobal("T2ValFriendTalk","GLOBAL",1) RealSetGlobalTimer("T2ValFriendTalkTimer","GLOBAL",2700)~ + T2ValF7Worry
  ++ ~If nothing else, you've ruled out a lot of causes.~ DO ~IncrementGlobal("T2ValFriendTalk","GLOBAL",1) RealSetGlobalTimer("T2ValFriendTalkTimer","GLOBAL",2700)~  + T2ValF7Rule
  ++ ~As I recall, I told you I didn't want to talk about this.~ DO ~IncrementGlobal("T2ValFriendTalk","GLOBAL",1) RealSetGlobalTimer("T2ValFriendTalkTimer","GLOBAL",2700)~ + T2ValF7NoTalk
END

IF ~~ T2ValF7Thought
  SAY ~It's no trouble. I like to think we're friends by now, and I'm happy to help. It's a nice change from destroying people with magic.~
  ++ ~Thank you for trying. I'll let you know if I learn anything else.~ + T2ValF7Learn
  ++ ~You're good at destroying people with magic, I'm afraid.~ + T2ValF7Destroy
  ++ ~You don't win every time. Thanks anyhow.~ + T2ValF7Thanks
  IF ~OR(3) Gender(Player1,MALE) Race(Player1,HALFLING) Race(Player1,GNOME)~ THEN REPLY ~Don't you want to be more than friends, though?~ + T2ValF7FlirtM
  IF ~Gender(Player1,FEMALE) !Race(Player1,HALFLING) !Race(Player1,GNOME)~ THEN REPLY ~Don't you want to be more than friends, though?~ + T2ValF7FlirtF
END

IF ~~ T2ValF7Learn
  SAY ~And I'll keep an eye out. I'm starting to think we need to visit Candlekeep or the Cowled Wizard archives, though. Maybe in the future.~
  IF ~~ EXIT
END

IF ~~ T2ValF7Destroy
  SAY ~Not my favorite part of being a sorceress. Helping people, good. Destroying evil, good. Destroying *people*... let's get going.~
  IF ~~ EXIT
END

IF ~~ T2ValF7Thanks
  SAY ~You're welcome. I'm starting to think we need to visit Candlekeep or the Cowled Wizard archives, though. Maybe in the future.~
  IF ~~ EXIT
END

IF ~~ T2ValF7FlirtM
  SAY ~I'm flattered, <CHARNAME>. But, well, you're not my type. My, ah, preferences lie elsewhere.~
  IF ~~ EXIT
END

IF ~~ T2ValF7FlirtF
  SAY ~I'm flattered, <CHARNAME>. I really am. You're beautiful and brave and I'm pretty sure you've saved my life at least once. I should be falling head over heels for you. But... I'm not ready. Maybe someday, but not now. I'm sorry, <CHARNAME>.~
  IF ~~ EXIT
END

IF ~~ T2ValF7Worry
  SAY ~I think we're friends, <CHARNAME>. I am going to worry about my friends when they get spooky powers out of nowhere. Unfortunately, I have no results for you. It's like nothing I've ever heard of.~
  ++ ~Thank you for trying. I'll let you know if I learn anything else.~ + T2ValF7Learn
  ++ ~You're good at destroying people with magic, I'm afraid.~ + T2ValF7Destroy
  ++ ~You don't win every time. Thanks anyhow.~ + T2ValF7Thanks
  IF ~Gender(Player1,MALE)~ THEN REPLY ~Don't you want to be more than friends, though?~ + T2ValF7FlirtM
  IF ~Gender(Player1,FEMALE)~ THEN REPLY ~Don't you want to be more than friends, though?~ + T2ValF7FlirtF
END

IF ~~ T2ValF7Rule
  SAY ~True enough. Wish I could have done more, but I couldn't have done even that much without you. You've been a good friend, <CHARNAME>.~
  ++ ~Thank you for trying. I'll let you know if I learn anything else.~ + T2ValF7Learn
  ++ ~Your magical abilities have been a great help, especially the combat-related ones.~ + T2ValF7Destroy
  ++ ~You don't win every time. Thanks anyhow.~ + T2ValF7Thanks
  IF ~OR(3) Gender(Player1,MALE) Race(Player1,HALFLING) Race(Player1,GNOME)~ THEN REPLY ~Don't you want to be more than friends, though?~ + T2ValF7FlirtM
  IF ~Gender(Player1,FEMALE) !Race(Player1,HALFLING) !Race(Player1,GNOME)~ THEN REPLY ~Don't you want to be more than friends, though?~ + T2ValF7FlirtF
END

IF ~~ T2ValF7NoTalk
  SAY ~You did. But because I consider you a friend, I ignored you, learned what I could, and studied what I could.~
  ++ ~Valerie, when I tell you I don't want to talk about something, I don't want to talk about it.~ + T2ValF7Talk
  ++ ~Do you want me to not trust you again or something? You went behind my back.~ + T2ValF7Trust
  ++ ~How clear do I have to make it when I don't want you looking into something?~ + T2ValF7Clear
  ++ ~Alright, it probably was for the best. Thanks anyway.~ + T2ValF7Thanks
END

IF ~~ T2ValF7Talk
  SAY ~You've been keeping secrets that could put us all in danger. I'll back off for now, <CHARNAME>, but don't count on me standing idly by while you sit on a delayed blast fireball.~
  IF ~~ EXIT
END

IF ~~ T2ValF7Trust
  SAY ~You can trust me if I can trust you. <CHARNAME>, keeping secrets can put everyone in danger. This one may or may not be harmful. We don't know and neither do you. Consider that before you play god.~
  IF ~~ EXIT
END

IF ~~ T2ValF7Clear
  SAY ~You can tell me to leave next time you want to sit on secrets that may or may not put us all in danger. We don't know what's happening to you. Consider how bad it could be before you tell me to stop worrying.~
  IF ~~ EXIT
END
END
//Friendship talk 8

CHAIN IF ~Global("T2ValFriendTalk","GLOBAL",16)~ THEN T2VALJ T2ValFriendTalk8
  ~<CHARNAME>, I don't mean to seem egocentric, but I've been thinking about your powers and my own magic. Something's occurred to me.~
  == T2VALJ IF ~Race(Player1,HUMAN)~ THEN ~Witches, warlocks, and sorcerers are, by and large, different names for the same phenomenon - people born with innate magical abilities. Humans, as a general rule, are not magical creatures. Humans with innate magical powers, as opposed to learned like wizards and clerics, are justly seen as unnatural.~
  == T2VALJ IF ~OR(2) Race(Player1,HALF_ELF) Race(Player1,ELF)~ THEN ~Witches, warlocks, and sorcerers are, by and large, different names for the same phenomenon - people born with innate magical abilities. Humans, as a general rule, are not magical creatures. Elves often are, but your powers don't match anything I've read of elven innate magic.~
  == T2VALJ IF ~Race(Player1,DWARF)~ THEN ~Witches, warlocks, and sorcerers are, by and large, different names for the same phenomenon - people born with innate magical abilities. Humans, as a general rule, are not magical creatures, and this goes double for dwarves. A dwarf with innate magical powers goes a long way past unusual and straight into unnatural.~
  == T2VALJ IF ~Race(Player1,GNOME)~ THEN ~Witches, warlocks, and sorcerers are, by and large, different names for the same phenomenon - people born with innate magical abilities. Humans, as a general rule, are not magical creatures. Gnomes are, but their powers very strongly favor illusions and divination. Yours are not, and verge on the unnatural for a gnome.~
  == T2VALJ IF ~Race(Player1,HALFLING)~ THEN ~Witches, warlocks, and sorcerers are, by and large, different names for the same phenomenon - people born with innate magical abilities. Humans, as a general rule, are not magical creatures, and neither are halflings.  Humans and halflings with innate magical powers are justly seen as unnatural.~
  == T2VALJ IF ~Race(Player1,HALFORC)~ THEN ~Witches, warlocks, and sorcerers are, by and large, diffferent names for the same phenomenon - people born with innate magical abilities. Humans, orcs, and crossbreeds thereof are, as a general rule, not magical creatures. A half-orc with innate magical powers is, well, less unusual than downright unnatural.~
END
  ++ ~You're building up to something, aren't you?~ DO ~IncrementGlobal("T2ValFriendTalk","GLOBAL",1) RealSetGlobalTimer("T2ValFriendTalkTimer","GLOBAL",2700)~ EXTERN T2VALJ T2ValF8Build
  ++ ~Unnatural? What do you mean by that?~ DO ~IncrementGlobal("T2ValFriendTalk","GLOBAL",1) RealSetGlobalTimer("T2ValFriendTalkTimer","GLOBAL",2700)~ EXTERN T2VALJ T2ValF8Unnatural
  + ~OR(4) Class(Player1,CLERIC) Class(Player1,DRUID) Class(Player1,PALADIN) Class(Player1,RANGER)~ + ~I don't know about unnatural. These powers resemble those my faith grants me.~ DO ~IncrementGlobal("T2ValFriendTalk","GLOBAL",1) RealSetGlobalTimer("T2ValFriendTalkTimer","GLOBAL",2700)~ EXTERN T2VALJ T2ValF8Faith
  + ~OR(2) Class(Player1,MAGE) Class(Player1,BARD)~ + ~I definitely didn't study these abilities, but they are magical.~ DO ~IncrementGlobal("T2ValFriendTalk","GLOBAL",1) RealSetGlobalTimer("T2ValFriendTalkTimer","GLOBAL",2700)~ EXTERN T2VALJ T2ValF8Magic
  + ~OR(4) Class(Player1,THIEF) Class(Player1,FIGHTER) Kit(Player1,BARBARIAN) Class(Player1,MONK)~ + ~You may have a point. I'm not exactly a spell-slinging mage.~ DO ~IncrementGlobal("T2ValFriendTalk","GLOBAL",1) RealSetGlobalTimer("T2ValFriendTalkTimer","GLOBAL",2700)~ EXTERN T2VALJ T2ValF8Fight
  + ~Class(Player1,SORCERER)~ + ~I know all of this. I'm a sorcerer, same as you, remember?~ DO ~IncrementGlobal("T2ValFriendTalk","GLOBAL",1) RealSetGlobalTimer("T2ValFriendTalkTimer","GLOBAL",2700)~ EXTERN T2VALJ T2ValF8Sorc
  ++ ~I don't like where this is going. Quit while you're ahead, Valerie.~ DO ~IncrementGlobal("T2ValFriendTalk","GLOBAL",1) RealSetGlobalTimer("T2ValFriendTalkTimer","GLOBAL",2700)~ EXTERN T2VALJ T2ValF8Bye

APPEND T2VALJ

IF ~~ T2ValF8Bye
  SAY ~If that's what you want.~
  IF ~~ EXIT
END

IF ~~ T2ValF8Build
  SAY ~Okay, here's the short version. Your developing powers don't match a magical illness. They do match a sorcerer or warlock coming into their powers. Everything you've told me matches up.~
  ++ ~How is that possible?~ + T2ValF8Heritage
  ++ ~You really think I'm a sorcerer?~ + T2ValF8Think
  ++ ~Well, I guess that makes sense.~ + T2ValF8Sense
  IF ~Class(Player1,SORCERER)~ THEN REPLY ~I already am a sorcerer. These powers aren't like my magic. They're something different.~ + T2ValF8Uhoh
END

IF ~~ T2ValF8Uhoh
  SAY ~That's... Well, shoot. Hypothesis busted. Back to the drawing board, then.~
  IF ~~ EXIT
END

IF ~~ T2ValF8Heritage
  SAY ~Same way my powers are, most likely. One of your ancestors was a non-<PRO_RACE> critter of some sort, with innate magical abilities that it passed down to its descendants. All in all, good news.~
  IF ~~ EXIT
END

IF ~~ T2ValF8Think
  SAY ~Think, yes, but I grant you that the conclusions of a very junior Cowled Wizard aren't exactly gospel. Doesn't hurt to keep the book open, should more evidence present itself.~
  IF ~~ EXIT
END

IF ~~ T2ValF8Sense
  SAY ~I agree. Could have been a lot worse.~
  IF ~~ EXIT
END

IF ~~ T2ValF8Unnatural
  SAY ~That it is something not normally found in nature. Your developing powers don't match a magical illness. They do match a sorcerer or warlock coming into their powers. Interesting to see it from the outside.~
  ++ ~How is that possible?~ + T2ValF8Heritage
  ++ ~You really think I'm a sorcerer?~ + T2ValF8Think
  ++ ~Well, I guess that makes sense.~ + T2ValF8Sense
  IF ~Class(Player1,SORCERER)~ THEN REPLY ~I already am a sorcerer. These powers aren't like my magic. They're something different.~ DO ~IncrementGlobal("T2ValFriendTalk","GLOBAL",1) RealSetGlobalTimer("T2ValFriendTalkTimer","GLOBAL",2700)~ + T2ValF8Uhoh
END

IF ~~ T2ValF8Faith
  SAY ~True, but you don't pray to your god for them. I think. Hmmm. You are right, though. I wonder... no, that's just a dumb idea. Well, you've raised a good point, <CHARNAME>. I'll think about it.~
  IF ~~ EXIT
END

IF ~~ T2ValF8Magic
  SAY ~Precisely. You may have studied magic in a more organized fashion, but everything you've described matches a sorcerer or warlock coming into their powers. Interesting to see it from the outside.~
  ++ ~How is that possible?~ + T2ValF8Heritage
  ++ ~You really think I'm a sorcerer?~ + T2ValF8Think
  ++ ~Well, I guess that makes sense.~ + T2ValF8Sense
  IF ~Class(Player1,SORCERER)~ THEN REPLY ~I already am a sorcerer. These powers aren't like my magic. They're something different.~ DO ~IncrementGlobal("T2ValFriendTalk","GLOBAL",1) RealSetGlobalTimer("T2ValFriendTalkTimer","GLOBAL",2700)~ + T2ValF8Uhoh
END

IF ~~ T2ValF8Fight
  SAY ~I know. Everything you've described matches a sorcerer or warlock coming into their powers. Interesting to see it from the outside.~
  ++ ~How is that possible?~ + T2ValF8Heritage
  ++ ~You really think I'm a sorcerer?~ + T2ValF8Think
  ++ ~Well, I guess that makes sense.~ + T2ValF8Sense
  IF ~Class(Player1,SORCERER)~ THEN REPLY ~I already am a sorcerer. These powers aren't like my magic. They're something different.~ DO ~IncrementGlobal("T2ValFriendTalk","GLOBAL",1) RealSetGlobalTimer("T2ValFriendTalkTimer","GLOBAL",2700)~ + T2ValF8Uhoh
END

IF ~~ T2ValF8Sorc
  SAY ~Uh. I kind of forgot about that. Everything you've described matches a sorcerer or warlock coming into their powers, but you've already come into yours, so... maybe you're both?~
  ++ ~How is that possible?~ + T2ValF8Heritage
  ++ ~You really think I'm a warlock as well?~ + T2ValF8Think
  ++ ~Well, I guess that makes sense.~ + T2ValF8Sense
  IF ~Class(Player1,SORCERER)~ THEN REPLY ~I already am a sorcerer, and I know what magic feels like. These powers aren't like my magic. They're something different.~ DO ~IncrementGlobal("T2ValFriendTalk","GLOBAL",1) RealSetGlobalTimer("T2ValFriendTalkTimer","GLOBAL",2700)~ + T2ValF8Uhoh
END

//Friendship talk 9

IF ~Global("T2ValFriendTalk","GLOBAL",18)~ T2ValFriendTalk9
  SAY ~<CHARNAME>, I'm sorry for being so nosey recently. Saw someone who looked like they needed help, looked like something I could help with, didn't think to ask if you needed or wanted help.~
  ++ ~Forget about it. What's a little compulsive heroism between friends?~ DO ~IncrementGlobal("T2ValFriendTalk","GLOBAL",1)~ + T2ValF9Compulsive
  ++ ~I appreciate the thought anyway.~ DO ~IncrementGlobal("T2ValFriendTalk","GLOBAL",1)~ + T2ValF9Appreciate
  ++ ~I don't mind you wanting to help, but could you please ask permission next time and listen to my answer?~ DO ~IncrementGlobal("T2ValFriendTalk","GLOBAL",1)~  + T2ValF9Ask
  ++ ~Valerie, you need to learn to choose your battles. Don't rush in, and be respectful of people who may not be happy to have you "help."~ DO ~IncrementGlobal("T2ValFriendTalk","GLOBAL",1)~ + T2ValF9Learn
  ++ ~Apology accepted, now back to work.~ DO ~IncrementGlobal("T2ValFriendTalk","GLOBAL",1)~ + T2ValF9Work
END

IF ~~ T2ValF9Compulsive
  SAY ~Just worried I'd crossed a line. Thanks for not jumping down my throat like I was afraid you were going to.~
  IF ~~ EXIT
END

IF ~~ T2ValF9Appreciate
  SAY ~Thank you for understanding, <CHARNAME>. My impulses have gotten me in trouble before. I'm happy this wasn't such a case.~
  IF ~~ EXIT
END

IF ~~ T2ValF9Ask
  SAY ~I will. I mean it, <CHARNAME>. I know I shouldn't be so impulsive. I'm still working on it.~
  IF ~~ EXIT
END

IF ~~ T2ValF9Learn
  SAY ~But people who want help often need... often... I'm sorry, <CHARNAME>. You're right. My impulses got the better of me. I'll try to work on that more.~
  IF ~~ EXIT
END

IF ~~ T2ValF9Work
  SAY ~As you say.~
  IF ~~ EXIT
END

//Friendship talk 10, should only fire after clearing the Cloakwood

IF ~Global("T2ValFriendTalk","GLOBAL",20)~ T2ValFriendTalk10
  SAY ~It's odd to think how it really wasn't that long ago that I was told to join the army detachment heading for Nashkel. This adventuring gig does mess with your perception of time.~
  ++ ~That it does.~ DO ~IncrementGlobal("T2ValFriendTalk","GLOBAL",1) RealSetGlobalTimer("T2ValFriendTalkTimer","GLOBAL",2700)~ + T2ValF10Time
  ++ ~Well, you *have* been with me for a while. Check your calendar.~ DO ~IncrementGlobal("T2ValFriendTalk","GLOBAL",1) RealSetGlobalTimer("T2ValFriendTalkTimer","GLOBAL",2700)~ + T2ValF10Calendar
  ++ ~This isn't a life for the timid, that's for certain. Good thing I'm not. Not anymore, at any rate.~ DO ~IncrementGlobal("T2ValFriendTalk","GLOBAL",1) RealSetGlobalTimer("T2ValFriendTalkTimer","GLOBAL",2700)~  + T2ValF10Jaded
  ++ ~You haven't been with me for that long. I think your problem is less adventuring and more boredom in Nashkel until I recruited you.~ DO ~IncrementGlobal("T2ValFriendTalk","GLOBAL",1) RealSetGlobalTimer("T2ValFriendTalkTimer","GLOBAL",2700)~ + T2ValF10Recruit
  ++ ~Are you working up the nerve to say you're leaving?~ DO ~IncrementGlobal("T2ValFriendTalk","GLOBAL",1) RealSetGlobalTimer("T2ValFriendTalkTimer","GLOBAL",2700)~ + T2ValF10Quits
  ++ ~Yeah, yeah. We can do plenty of reminiscing later.~ DO ~IncrementGlobal("T2ValFriendTalk","GLOBAL",1) RealSetGlobalTimer("T2ValFriendTalkTimer","GLOBAL",2700)~ + T2ValF10Bye
END

IF ~~ T2ValF10Bye
  SAY ~Fair enough.~
  IF ~~ EXIT
END

IF ~~ T2ValF10Time
  SAY ~The soldiers said that army life is nine-tenths boredom, one-tenth absolute terror. I'll grant that the ratio seems skewed in our case. Spiders and zombies and bandits, oh my!~
  ++ ~Uh, Valerie? You haven't fought any of those things.~ + T2ValF10Recruit
  ++ ~I don't know. I seem to be getting used to it at this point.~ + T2ValF10Jaded
  ++ ~If you want to call it quits, I understand.~ + T2ValF10Quits
  ++ ~After this long with me, I'd have thought you'd be used to it.~ + T2ValF10Calendar
END

IF ~~ T2ValF10Recruit
  SAY ~True, but I've been listening to the tales of your adventures. Even assuming your adventures have been exaggerated, it's been quite fascinating to listen to.~
  ++ ~Is that a bit of hero-worship I hear in your voice?~ + T2ValF10Hero
  ++ ~You aren't about to turn into a shrieking fangirl, are you?~ + T2ValF10Fangirl
  ++ ~I'll grant you that it didn't look like there was much to do in Nashkel besides listen to bards.~ + T2ValF10Bard
  ++ ~I can give you a more personal account, if you wish...~ + T2ValF10Flirt
END

IF ~~ T2ValF10Hero
  SAY ~Not exactly. Honestly, heroism doesn't seem to be all it's said to be. More often, it's dirty, bloody, and painful.~
  IF ~~ EXIT
END

IF ~~ T2ValF10Fangirl
  SAY ~If I ever do, you have my permission to put me out of my misery, <CHARNAME>. It would be a mercy to avoid becoming one of those squealing maidens who throw themselves at adventurers. Ugh.~
  IF ~~ EXIT
END

IF ~~ T2ValF10Bard
  SAY ~Too true, especially for a mage. Not many people to talk to in Nashkel, and most of them were soldiers or miners. Well, there was also that Rashemar berserker. And Noober. Just about anything is a welcome change of pace after that.~
  IF ~~ EXIT
END

IF ~~ T2ValF10Flirt
  SAY ~No. I don't know what Sword Coast girls are like, but we try to have standards in Amn. Go hire a whore next time we're in town if you really need to satisfy yourself.~
  IF ~~ EXIT
END

IF ~~ T2ValF10Quits
  SAY ~No. There is work yet to be done. Still, I have to wonder if I'll recognize myself in the mirror after this. In war, you find yourself... or find yourself wanting. Torm may not see eye to eye with Tempus on many things, but that's a proverb in both churches.~
  ++ ~So have you found yourself?~ + T2ValF10Found
  ++ ~This isn't a war, Valerie.~ + T2ValF10War
  ++ ~There's truth to that proverb. I don't think I could have found myself within the walls of Candlekeep.~ + T2ValF10Walls
  IF ~Gender(Player1,FEMALE) !Race(Player1,GNOME) !Race(Player1,HALFLING)~ THEN REPLY ~Let me know if you find me. I'm still looking.~ + T2ValF10FindF
  IF ~OR(3) Gender(Player1,MALE) Race(Player1,GNOME) Race(Player1,HALFLING)~ THEN REPLY ~Let me know if you find me. I'm still looking.~ + T2ValF10Find
END

IF ~~ T2ValF10Found
  SAY ~Maybe. Pain, suffering, evil... academic concepts until recently. They say evil prevails when good fails to act. I don't know if I'm *good* good, but I can't sit back and not act anymore. Thanks for talking with me, <CHARNAME>.~
  IF ~~ EXIT
END

IF ~~ T2ValF10War
  SAY ~Isn't it? People are dying. For whatever reason, people on both sides are willing to die for their cause. That sounds like a war to me. It's a sobering thought. I'd better go to bed before I continue this line of thinking.~
  IF ~~ EXIT
END

IF ~~ T2ValF10Walls
  SAY ~A metaphor right out of my class on rhetoric. Or maybe you were being literal. Good for you either, way, I suppose. I think I have more searching yet to do.~
  IF ~~ EXIT
END

IF ~~ T2ValF10Find
  SAY ~Hah. I do think the saying was meant as a metaphor for an inward journey, <CHARNAME>.~
  IF ~~ EXIT
END

IF ~~ T2ValF10FindF
  SAY ~I'll keep an eye out. You're, ah, hard to miss.~
  IF ~~ EXIT
END

IF ~~ T2ValF10Jaded
  SAY ~You do look like you've aged a few years in much less than that. You haven't chosen a life calculated to preserve your youth.~
  ++ ~Maybe, but I like this life just fine.~ + T2ValF10Like
  ++ ~This life chose me, not the other way around.~ + T2ValF10Way
  ++ ~I intend to leave this life behind as soon as I can.~ + T2ValF10Leave
  ++ ~A lot of things are better when aged. If it works for wine and cheese, why not me?~ + T2ValF10Works
END

IF ~~ T2ValF10Like
  SAY ~I wasn't trying to dissuade you, but I don't know if it's the life for me. Still, I'm happy you're enjoying yourself.~
  IF ~~ EXIT
END

IF ~~ T2ValF10Way
  SAY ~True. Fate dealt you a lousy hand, <CHARNAME>, and to be honest I'm kinda glad I'm not in your position. Guess we all have to play the cards we're dealt, though.~
  IF ~~ EXIT
END

IF ~~ T2ValF10Leave
  SAY ~I can relate, I think. Still, Amn and the Sword Coast need you still. For good or ill, you're the best bet we all have of stopping this war before it begins.~
  IF ~~ EXIT
END

IF ~~ T2ValF10Works
  SAY ~That's... a novel way of putting it. Aged wine is good, but old beer isn't. I suppose we'll see whether you're a fine chardonnay or just old stout.~
  IF ~~ EXIT
END

IF ~~ T2ValF10Calendar
  SAY ~Please excuse me while I extract my foot from my mouth. Looks like I should just stop talking. I'm clearly not thinking straight.~
  IF ~~ EXIT
END


//Fire on resting at an inn

IF ~Global("T2ValFriendTalk","GLOBAL",22)~ T2ValFriendTalk11
  SAY ~You can go on to bed, <CHARNAME>. I'll head to my bed when I'm done drinking.~
  ++ ~You've drunk quite a bit already, I notice. Do you want a hangover that badly?~ DO ~IncrementGlobal("T2ValFriendTalk","GLOBAL",1) RealSetGlobalTimer("T2ValFriendTalkTimer","GLOBAL",2700)~ + T2ValF11hangover
  ++ ~You don't normally drink this much. What's the matter?~ DO ~IncrementGlobal("T2ValFriendTalk","GLOBAL",1) RealSetGlobalTimer("T2ValFriendTalkTimer","GLOBAL",2700)~ + T2ValF11wrong
  ++ ~This drinking to work up courage, or drinking to forget?~ DO ~IncrementGlobal("T2ValFriendTalk","GLOBAL",1) RealSetGlobalTimer("T2ValFriendTalkTimer","GLOBAL",2700)~ + T2ValF11Forget
  ++ ~Just make sure you're well-rested in the morning. We may need your magic again tomorrow.~ DO ~IncrementGlobal("T2ValFriendTalk","GLOBAL",1) RealSetGlobalTimer("T2ValFriendTalkTimer","GLOBAL",2700)~  + T2ValF11rest
  ++ ~Don't have too much fun. I'll see you in the morning.~ DO ~IncrementGlobal("T2ValFriendTalk","GLOBAL",1) RealSetGlobalTimer("T2ValFriendTalkTimer","GLOBAL",2700)~ + T2ValF11rest
END

IF ~~ T2ValF11rest
  SAY ~I'll be careful, <CHARNAME>. Getting drunk while still being functional in the morning is a fine art I've learned through years of apprenticeship.~
  IF ~~ DO ~RestParty()~ EXIT
END

IF ~~ T2ValF11hangover
  SAY ~Ugh. Don't remind me. Still... it's a price I'm willing to pay.~
  ++ ~I get the feeling you aren't drinking for pleasure.~ + T2ValF11wrong
  ++ ~Drinking won't solve your problem, Valerie. What's wrong?~ + T2ValF11wrong
  ++ ~If you're certain...~ + T2ValF11certain
END

IF ~~ T2ValF11Forget
  SAY ~The latter. The former. Sigh. Doesn't matter.~
  ++ ~Talk to me, Valerie. What's wrong?~ + T2ValF11wrong
  ++ ~It does matter. Look, what brought this on?~ + T2ValF11wrong
  ++ ~It goes against my better judgment, but I'll leave you to it.~ + T2ValF11leave
END

IF ~~ T2ValF11leave
  SAY ~Thank you, <CHARNAME>. I think.~
  IF ~~ DO ~RestParty()~ EXIT
END

IF ~~ T2ValF11certain
  SAY ~I am... I think.~
  IF ~~ DO ~RestParty()~ EXIT
END

IF ~~ T2ValF11wrong
  SAY ~Sigh. What hasn't gone wrong lately? Stopped the bandits, whoops it's a mine in the Cloakwood! Cleanse the mine, whoops it's a conspiracy in Baldur's Gate! And let's not forget what I was posted to Nashkel for in the beginning.~
  = ~I'm tired of this labyrinthine plot, <CHARNAME>. I'm tired of fighting. I'm tired of killing. I don't want to think about all the blood on my hands, or what the inevitable next complication will be. So... wine helps me not think.~
  ++ ~Wine isn't the answer, Valerie.~ + T2ValF11wine
  ++ ~Why didn't you say something earlier?~ + T2ValF11say
  ++ ~Valerie, if you want to call it quits, I won't hold it against you.~ + T2ValF11quit
  ++ ~When you put it that way... mind if I join you?~ + T2ValF11join
END

IF ~~ T2ValF11wine
  SAY ~What do you suggest, then? I'm a stripling mage barely out of her apprenticeship, for Torm's sake! I'm no heroic adventurer! I should be doing paperwork, not fighting monsters!~
  ++ ~Doesn't your faith offer some comfort?~ + T2ValF11faith
  IF ~Gender(Player1,MALE)~ THEN REPLY ~I hate to break it to you, but if you're with me you're by definition a heroic adventurer. Depending on your definition of heroic.~ + T2ValF11adventM
  IF ~Gender(Player1,FEMALE)~ THEN REPLY ~I hate to break it to you, but if you're with me you're by definition a heroic adventurer. Depending on your definition of heroic.~ + T2ValF11adventF
  ++ ~Think about how many lives are depending on us, and on you. Are you really going to let them down by drinking yourself into a stupor?~ + T2ValF11depend
  ++ ~Fate rarely calls us at a moment of our choosing, I'm afraid. You can handle this, even if you don't think you can.~ + T2ValF11fate
  ++ ~To be blunt... Deal with it, Valerie. The fate of the Sword Coast is more important than your pity party.~ + T2ValF11pity
  ++ ~Finding a cute bard or other entertainer of negotiable affections has always worked for me.~ + T2ValF11whore
END

IF ~~ T2ValF11faith
  SAY ~Living up to Torm's standards isn't easy, I'm afraid. But... it's starting to become obvious that we're dealing with something from Cyric or Iyachtu Xvim, maybe even the Dead Three. The Debt of Dereliction is clear. You're... right, <CHARNAME>. Drinking to forget is dereliction of my own.~
  ++ ~Don't push yourself too hard. It's okay to feel down, you know, just as long as you don't let it take over your life.~ + T2ValF11therapy
  ++ ~My faith keeps me strong. I'm sure yours can do the same for you.~ + T2ValF11faith2
  ++ ~If it works for you, it works and I'm happy for you.~ + T2ValF11works
  ++ ~If you don't mind my asking, what is the Debt of Dereliction?~ + T2ValF11debt
END

IF ~~ T2ValF11therapy
  SAY ~(Valerie smiles weakly at you) If you ever find yourself looking for work after this, <CHARNAME>, I bet you'd make a killing as a therapist. Let me pay my tab and I'll call it a night.~
  IF ~~ DO ~RestParty()~ EXIT
END

IF ~~ T2ValF11faith2
  SAY ~Heh. The bad guys have Cyric and probably Iyachtu Xvim and who knows what else. We have Torm and... whoever it is you and the others worship. I guess we should try to avoid a new Time of Troubles, though. Thanks for the talk, <CHARNAME>.~
  IF ~~ DO ~RestParty()~ EXIT
END

IF ~~ T2ValF11works
  SAY ~You know, you had me going with the therapy until you said that. Still, point taken. I'll pay my tab and go to bed. Who knows, maybe I'll even get to sleep in for once.~
  IF ~~ DO ~RestParty()~ EXIT
END

IF ~~ T2ValF11debt
  SAY ~Before the Time of Troubles, I'm told, the church of Torm fell under the sway of an evil priest who bent the Tormtar towards prosecuting believers of all other gods as heretics and blasphemers. More or less the entire church fell under his corrupt tongue.~
  = ~As the Time of Troubles began, Torm himself personally stepped in and revealed the corruption of the church. Then came Torm's battle with Bane, where both fell, and Torm was subsequently reborn and restored because he died acting in his own portfolio - obeying orders.~
  = ~Ever since then, the Tormtar - the actual priests of Torm - declared it their Debt of Dereliction. To atone for their past failures, they would battle the cults of Cyric, Xvim, and the remnants of the Dead Three without fail. And we, the lay followers, are encouraged to do the same.~
  ++ ~No pressure, huh?~ + T2ValF11pressure
  ++ ~Sounds like the Tormish take this debt seriously.~ + T2ValF11serious
/*  ++ ~Well, none can fault your work fulfilling that debt over the course of our adventures.~ + T2ValF11fault */
  ++ ~History lesson learned. Thank you and good night, Valerie.~ + T2ValF11goodnight
END

IF ~~ T2ValF11pressure
  SAY ~Hah. It is a bit heavy-handed yet. Then again, Torm's symbol is a gauntlet. Thanks for the talk, <CHARNAME>. I'll pay my tab and go to bed.~
  IF ~~ DO ~RestParty()~ EXIT
END

IF ~~ T2ValF11serious
  SAY ~Torm, ah, isn't known for his levity and neither are his priests. I'm okay with such a force for good having no sense of subtlety. Good night, <CHARNAME>.~
  IF ~~ DO ~RestParty()~ EXIT
END

IF ~~ T2ValF11goodnight
  SAY ~Good night, <CHARNAME>. I'll pay my tab and go to bed.~
  IF ~~ DO ~RestParty()~ EXIT
END

IF ~~ T2ValF11adventM
  SAY ~Don't remind me, <CHARNAME>. I know, I know. You're the plucky hero of humble origin who assembles an unlikely group of companions and goes off to slay dragons and marry a princess. Guess I have to get used to my place in history as your henchwoman.~
  ++ ~You're not my henchwoman, Valerie, you're my friend. And I hate to see you drink yourself into oblivion.~ + T2ValF11friend
  ++ ~It's not so bad being a supporting character, you know. See exotic places, meet interesting people, battle big monsters, get resurrected on my gold if you die, it's a pretty good package.~ + T2ValF11package
  ++ ~If that's so, then you know you don't get to mope around and look silly while you angst! That's my perogative! Hands off my scene, usurper!~ + T2ValF11usurper
  ++ ~Good point. Come to think of it, I haven't seen a beautiful, mysterious girl who turns out to be a princess yet. I'm pretty sure you're not one. Any ideas on where my mandatory princess and girlfriend must be hiding?~ + T2ValF11princess
  ++ ~Not into princesses. Assuming the bards will forgive this plot twist, you have any leads on a handsome prince for me?~ + T2ValF11prince
END

IF ~~ T2ValF11friend
  SAY ~...Thank you, <CHARNAME>. I really do appreciate it. Let me pay my tab and I'll go to bed.~
  IF ~~ DO ~RestParty()~ EXIT
END

IF ~~ T2ValF11package
  SAY ~Hah! Point taken. But would you *please* make sure that last one doesn't come up much? Resurrection doesn't make *dying* any less painful...~
  IF ~~ DO ~RestParty()~ EXIT
END

IF ~~ T2ValF11usurper
  SAY ~Hahaha! Okay, okay. I don't want to be the hero. You get the angst and the torrid love scenes and the horrible secrets from your past. The stage is back to you, my friend.~
  IF ~~ DO ~RestParty()~ EXIT
END

END

CHAIN T2VALJ T2ValF11princess
  ~Hmm...~
  == T2VALJ IF ~InParty("%IMOEN_DV%")~ THEN ~Well... there's Imoen. Mysterious background like yours, very pretty, but she's basically your sister, so let's not go there...~
  == T2VALJ IF ~InParty("Jaheira")~ THEN ~Jaheira's a noblewoman and elfy to boot. But she's married and probably twice your age, so if she was your princess that would just be creepy...~
  == T2VALJ IF ~InParty("Dynaheir")~ THEN ~Dynaheir, maybe? She certainly acts like a princess, and she's very pretty. I say go for it, but let's see...~
  == T2VALJ IF ~InParty("Xan")~ THEN ~I keep thinking Xan's a girl out of the corner of my eye, but I suppose I'll be fair to the elves and not say anything more...~
  == T2VALJ IF ~InParty("SharTeel")~ THEN ~Shar-Teel, maybe? That would be something... special...~
  == T2VALJ IF ~InParty("Branwen")~ THEN ~Does a warrior woman whom I wouldn't put it past to be some barbarian chieftain's daughter count? I won't say anything about this to Branwen if you won't...~
  == T2VALJ IF ~InParty("Alora")~ THEN ~Do halflings have princesses? If they do, I sure as Torm hope Alora isn't an example...~
  == T2VALJ IF ~InParty("Skie")~ THEN ~Skie's close enough to a princess for Sword Coast purposes. If you want my help permanently removing Eldoth from the equation, I'm willing to hear you out...~
  == T2VALJ IF ~InParty("Viconia")~ THEN ~There's always Viconia for your undoubtedly kinky and possibly abusive princess if you think this is a comedy rather than a drama...~
  == T2VALJ IF ~InParty("Faldorn")~ THEN ~Would be a heck of a twist if Faldorn was a princess. Not sure you'd survive the honeymoon, though...~
  == T2VALJ IF ~InParty("Safana")~ THEN ~Safana's possible, I guess, but I'd be careful on the honeymoon. You don't know where it's been...~
  == T2VALJ ~Well, maybe you'll have better luck adventuring someplace with an actual monarchy. Aren't oligarchies like Baldur's Gate and Amn grand? I'll leave you to your princess-searching, <CHARNAME>. Good night.~
  DO ~RestParty()~ 
EXIT

CHAIN T2VALJ T2ValF11prince
  ~Hmm...~
  == T2VALJ IF ~InParty("Ajantis")~ THEN ~In a word, Ajantis. Tall, built like a battering ram, so selflessly noble it hurts, and he might as well be a prince...~
  == T2VALJ IF ~InParty("Branwen")~ THEN ~Wait, Branwen isn't a man despite acting, smelling, and kind of looking like one, nevermind...~
  == T2VALJ IF ~InParty("Coran")~ THEN ~If you're into elves, lucky we have Coran around and not a teenage boy, and for all we know he might indeed be a prince...~
  == T2VALJ IF ~InParty("Edwin")~ THEN ~Edwin's good-looking, I guess, and I suppose SOMEONE has to find him attractive rather than obnoxious...~
  == T2VALJ IF ~InParty("Eldoth")~ THEN ~If you're desperate, there's Eldoth, but I wouldn't wish him on my worst enemy...~
  == T2VALJ IF ~InParty("Garrick")~ THEN ~Garrick's nice. He's not my type, but he certainly fits the prince either unknowing or deliberately masquerading as a commoner...~
  == T2VALJ IF ~InParty("Kagain")~ THEN ~I know dwarves have kings and princesses, but Kagain is, well, old, so...~
  == T2VALJ IF ~InParty("Khalid")~ THEN ~Is Khalid a prince, or just a noble? Either way though, he *is* married to one of the more intimidating women I've ever met, so good luck with that one...~
  == T2VALJ IF ~InParty("Kivan")~ THEN ~Angst McRevenge, erm, Kivan could well be a prince, but I'd wait until he's gotten over his wife's death first...~
  == T2VALJ IF ~InParty("Minsc")~ THEN ~I don't think Rasheman has princes, but if you like Minsc I won't say anything...~
  == T2VALJ IF ~InParty("Montaron")~ THEN ~Montaron. No. Hmmm...~
  == T2VALJ IF ~InParty("Quayle")~ THEN ~I suppose someone in this wide world must consider Quayle a dashing prince. No idea who that someone is, though...~
  == T2VALJ IF ~InParty("Tiax")~ THEN ~Yeah, no, I'm not going to talk about Tiax...~
  == T2VALJ IF ~InParty("Xan")~ THEN ~I suppose Xan really is a man. Could have fooled me. And I think he genuinely is a prince... or an elf. Tough call...~
  == T2VALJ IF ~InParty("Xzar")~ THEN ~Let's just say Xzar exists and move on, shall we?~
  == T2VALJ IF ~InParty("Yeslick")~ THEN ~If you like dwarves, I wonder if Yeslick qualifies as a prince of his clan...~
  == T2VALJ ~Well, maybe you'll have better luck adventuring someplace with an actual monarchy. Aren't oligarchies like Baldur's Gate and Amn grand? I'll leave you to your prince-searching, <CHARNAME>. Good night.~
  DO ~RestParty()~ 
EXIT

APPEND T2VALJ

IF ~~ T2ValF11adventF
  SAY ~Don't remind me, <CHARNAME>. I know, I know. You're the plucky heroine of humble origin who assembles an unlikely group of companions and goes off to slay dragons and... huh. I don't recall any actual stories about heroic women. Find a handsome prince, maybe? Guess I have to get used to my place in history as your henchwoman.~
  ++ ~You're not my henchwoman, Valerie, you're my friend. And I hate to see you drink yourself into oblivion.~ + T2ValF11friend
  ++ ~It's not so bad being a supporting character, you know. See exotic places, meet interesting people, battle big monsters, get resurrected on my gold if you die, it's a pretty good package.~ + T2ValF11package
  ++ ~If that's so, then you know you don't get to mope around and look silly while you angst! That's my perogative! Hands off my scene, usurper!~ + T2ValF11usurper
  ++ ~Good point. Come to think of it, I haven't seen a handsome, noble young man who turns out to be a prince yet. I'm pretty sure you're not one. Any ideas on where my mandatory prince and boyfriend must be hiding?~ + T2ValF11prince
  ++ ~Not into princes. Assuming the bards will forgive this plot twist, you have any leads on a beautiful princess for me?~ + T2ValF11princess
END

IF ~~ T2ValF11depend
  SAY ~Uh, was that supposed to make me feel better?~
  ++ ~No.~ + T2ValF11no
  IF ~Gender(Player1,MALE)~ THEN REPLY ~It was supposed to remind you why you joined up with me in the first place.~ + T2ValF11remindM
  IF ~Gender(Player1,FEMALE)~ THEN REPLY ~It was supposed to remind you why you joined up with me in the first place.~ + T2ValF11remindF
  ++ ~You're Tormish, right? Isn't this a dereliction of your duty?~ + T2ValF11derel
  IF ~Gender(Player1,MALE)~ THEN REPLY ~Everyone is depending on us. My home, your home, everyone's. Are you really going to just sit there, drink, and fall apart?~ + T2ValF11homeM
  IF ~Gender(Player1,FEMALE)~ THEN REPLY ~Everyone is depending on us. My home, your home, everyone's. Are you really going to just sit there, drink, and fall apart?~ + T2ValF11homeF
END

IF ~~ T2ValF11no
  SAY ~Not beating around the bush tonight, are you? Sigh. Fine. I'll pay my tab and go to bed. Now go away before I change my mind about not lying.~
  IF ~~ DO ~RestParty()~ EXIT
END

IF ~~ T2ValF11remindM
  SAY ~(Valerie stares at her drink for several seconds before answering) You're right. Damn it. Fine. I'll pay my tab and go to bed. Happy now, father?~
  IF ~~ DO ~RestParty()~ EXIT
END

IF ~~ T2ValF11remindF
  SAY ~(Valerie stares at her drink for several seconds before answering) You're right. Damn it. Fine. I'll pay my tab and go to bed. Happy now, mother?~
  IF ~~ DO ~RestParty()~ EXIT
END

IF ~~ T2ValF11derel
  SAY ~Torm recognizes the concept of downtime. Fine. If it will get you off my back, I'll pay my tab and go to bed.~
  IF ~~ DO ~RestParty()~ EXIT
END

IF ~~ T2ValF11homeM
  SAY ~Great. I'm getting lectured by someone maybe two years my elder. Father, do I have permission to pay my bar tab and go to bed now? Before you answer... shut up.~
  IF ~~ DO ~SetGlobal("T2ValFriendship","GLOBAL",2) RestParty()~ EXIT
END

IF ~~ T2ValF11homeF
  SAY ~Great. I'm getting lectured by someone maybe two years my elder. Mother, do I have permission to pay my bar tab and go to bed now? Before you answer... shut up.~
  IF ~~ DO ~SetGlobal("T2ValFriendship","GLOBAL",2) RestParty()~ EXIT
END

IF ~~ T2ValF11fate
  SAY ~Wheeeee. I haven't heard this sermon since the last service at the temple of Torm in Athkatla when a new paladin was being inducted.~
  ++ ~(Clear your voice) On the day of Shieldmeet, many moons ago, the young hero stepped forth. He felt himself unready, yet his heart was pure...~ + T2ValF11preach
  ++ ~I notice you're not saying the point isn't true.~ + T2ValF11point
  ++ ~You're not doing the Loyal Fury much credit at the moment, you know.~ + T2ValF11credit
  ++ ~Fine. You stop drinking, I stop preaching.~ + T2ValF11deal
END

IF ~~ T2ValF11preach
  SAY ~Going to bed. Now.~
  IF ~~ DO ~RestParty()~ EXIT
END

IF ~~ T2ValF11point
  SAY ~Fine. Convinced. Job done. Let me pay my tab and I'll go to bed.~
  IF ~~ DO ~RestParty()~ EXIT
END

IF ~~ T2ValF11credit
  SAY ~Hmmm. Theological discussion or getting away from you for the night... paying my tab and going to bed sounds like an excellent idea.~
  IF ~~ DO ~RestParty()~ EXIT
END

IF ~~ T2ValF11deal
  SAY ~Sigh. Deal. Let me pay my tab and I'll go to bed.~
  IF ~~ DO ~RestParty()~ EXIT
END

IF ~~ T2ValF11pity
  SAY ~I *am* dealing with it, you ass. I didn't ask for your opinion or invite you to join me.~
  ++ ~Don't care. Go to bed, Valerie. Now.~ + T2ValF11bed
  ++ ~And I didn't ask for your opinion, either. Stop drinking and deal with this in a way that doesn't involve self-destruction.~ + T2ValF11destruct
  ++ ~What about tomorrow night? And the night after? It feels good now, but you're setting yourself up for a hard fall, Valerie.~ + T2ValF11fall
  ++ ~(Wave the bartender over) My friend has already had too much to drink tonight. How much is her tab?~ + T2ValF11tab
END

IF ~~ T2ValF11bed
  SAY ~Fine. The tab's yours to pay, then.~
  IF ~~ DO ~SetGlobal("T2ValFriendship","GLOBAL",2) RestParty()~ EXIT
END

IF ~~ T2ValF11destruct
  SAY ~Damn it. I was hoping you were just being an ass, not an ass with a point. Fine. I'll pay my tab and go to bed. Happy now?~
  IF ~~ DO ~RestParty()~ EXIT
END

IF ~~ T2ValF11fall
  SAY ~...Paying my tab and going to bed now.~
  IF ~~ DO ~RestParty()~ EXIT
END

IF ~~ T2ValF11tab
  SAY ~I don't need you to take care of me, <CHARNAME>. I can pay my own tab and go to bed, thank you very much. Ass.~
  IF ~~ DO ~SetGlobal("T2ValFriendship","GLOBAL",2) RestParty()~ EXIT
END

IF ~~ T2ValF11whore
  SAY ~In a word, no. That is all I am going to say on that subject.~
  ++ ~I understand. It was just a thought.~ + T2ValF11thought
  ++ ~What's your objection to it? You can afford a good one on an adventurer's pay.~ + T2ValF11object
  ++ ~What's the matter, have someone special back home in Amn?~ + T2ValF11special
  IF ~Gender(Player1,MALE)~ THEN REPLY ~What about me, then?~ + T2ValF11male
  IF ~Gender(Player1,FEMALE) Race(Player1,GNOME)~ THEN REPLY ~What about me, then?~ + T2ValF11gnome
  IF ~Gender(Player1,FEMALE) Race(Player1,HALFLING)~ THEN REPLY ~What about me, then?~ + T2ValF11halfling
  IF ~Gender(Player1,FEMALE) !Race(Player1,HALFLING) !Race(Player1,GNOME)~ THEN REPLY ~What about me, then?~ + T2ValF11full
END

IF ~~ T2ValF11thought
  SAY ~A vile and unwelcome one. Let me pay my tab first and I'll go to bed. Alone.~
  IF ~~ DO ~RestParty()~ EXIT
END

IF ~~ T2ValF11object
  SAY ~It is a vile profession in which very few ever voluntarily work. I will not condone it, much less partake of it. End of discussion. Good night.~
  IF ~~ DO ~RestParty()~ EXIT
END

IF ~~ T2ValF11special
  SAY ~I don't need someone special to object to prostitution on moral grounds. I'm disappointed that you do. Good night.~
  IF ~~ DO ~RestParty()~ EXIT
END

IF ~~ T2ValF11male
  SAY ~Since you're being so forward tonight, I will be, too. I am not attracted to men. You are not an exception. Good night.~
  IF ~~ DO ~RestParty()~ EXIT
END

IF ~~ T2ValF11gnome
  SAY ~Since you're being so forward tonight, I will be, too. I am not attracted to gnomes. You are not an exception. Good night.~
  IF ~~ DO ~RestParty()~ EXIT
END

IF ~~ T2ValF11halfling
  SAY ~Since you're being so forward tonight, I will be, too. I am not attracted to halflings. You are not an exception. Good night.~
  IF ~~ DO ~RestParty()~ EXIT
END

IF ~~ T2ValF11full
  SAY ~Since you're being so forward tonight, I will be, too. I will only give my maidenhood to a woman I truly love and want to spend the rest of my life with. Perhaps in the future you will be that woman, but that is for another time.~
  IF ~~ DO ~RestParty()~ EXIT
END

IF ~~ T2ValF11say
  SAY ~You've got enough on your shoulders without me coming crying to you. I will persevere. It just so happens that my perseverance requires some liquid reinforcement now and then.~
  ++ ~I understand your doubts, Valerie, but wine won't solve your problems.~ + T2ValF11wine
  ++ ~Look, if you're at your limits, I understand if you want to head back to Amn.~ + T2ValF11quit
  ++ ~Point taken. I think I could do with some liquid reinforcement, myself.~ + T2ValF11join
END

IF ~~ T2ValF11quit
  SAY ~I don't want to leave, <CHARNAME>. This quest of yours is important. You know it, I know it. I won't walk away from it. I do, however, reserve the right to not think about how deep this plot goes.~
  ++ ~Having trouble is one thing, Valerie, but drinking yourself to oblivion is quite another.~ + T2ValF11wine
  ++ ~You could have said something to me earlier, you know. There's no shame in feeling down.~ + T2ValF11say
  ++ ~When you put it like that, would you mind some company at the bar?~ + T2ValF11join
END

IF ~~ T2ValF11join
  SAY ~I usually drink alone, but sure. One condition, though: this is *not* going to lead to us both getting tipsy and you carrying me off to your bed.~
  ++ ~I do wonder what might have put an idea like that in your head...~ + T2ValF11idea
  IF ~Gender(Player1,MALE)~ THEN REPLY ~Don't worry. I'm a gentleman.~ + T2ValF11idea
  IF ~Gender(Player1,FEMALE)~ THEN REPLY ~Don't worry. I'm a lady.~ + T2ValF11idea
  IF ~/*(CHECK FOR BG1 NPC ROMANCE PROJECT/GAVIN ROMANCE VARIABLES)*/~ THEN REPLY ~Already spoken for, thank you very much.~ + T2ValF11idea
  IF ~Gender(Player1,MALE)~ THEN REPLY ~Why not?~ + T2ValF11male
  IF ~Gender(Player1,FEMALE) Race(Player1,GNOME)~ THEN REPLY ~Why not?~ + T2ValF11gnome
  IF ~Gender(Player1,FEMALE) Race(Player1,HALFLING)~ THEN REPLY ~Why not?~ + T2ValF11halfling
  IF ~Gender(Player1,FEMALE) !Race(Player1,HALFLING) !Race(Player1,GNOME)~ THEN REPLY ~Why not?~ + T2ValF11full
END

IF ~~ T2ValF11idea
  SAY ~Just making sure. Never do know with you scrappy adventurer sorts. Cheers, <CHARNAME>.~
  IF ~~ DO ~RestParty()~ EXIT
END


//Friendtalk 12

IF ~Global("T2ValFriendTalk","GLOBAL",24)~ T2ValFriendTalk12
  SAY ~I'm sorry about what happened the other night, <CHARNAME>. I had actually meant to ask how you were doing. I can't imagine the pressure you're under.~
  ++ ~You don't need to worry about me.~ DO ~IncrementGlobal("T2ValFriendTalk","GLOBAL",1) RealSetGlobalTimer("T2ValFriendTalkTimer","GLOBAL",2700)~ + T2ValF12fret
  ++ ~I'm fine. I'm used to pressure by now.~ DO ~IncrementGlobal("T2ValFriendTalk","GLOBAL",1) RealSetGlobalTimer("T2ValFriendTalkTimer","GLOBAL",2700)~ + T2ValF12fine
  ++ ~I'm doing as well enough. Not so bad that I need to, say, get drunk.~ DO ~IncrementGlobal("T2ValFriendTalk","GLOBAL",1) RealSetGlobalTimer("T2ValFriendTalkTimer","GLOBAL",2700)~ + T2ValF12well
  ++ ~It's not a life I'd wish on anyone. I'm playing the cards I was dealt, but it isn't exactly a winning hand.~ DO ~IncrementGlobal("T2ValFriendTalk","GLOBAL",1) RealSetGlobalTimer("T2ValFriendTalkTimer","GLOBAL",2700)~ + T2ValF12bad
  ++ ~What do you think? I had a worse hangover than you the morning after.~ DO ~IncrementGlobal("T2ValFriendTalk","GLOBAL",1) RealSetGlobalTimer("T2ValFriendTalkTimer","GLOBAL",2700)~ + T2ValF12drunk
  ++ ~I appreciate the thought, but I'd prefer not to talk about it.~ DO ~IncrementGlobal("T2ValFriendTalk","GLOBAL",1) RealSetGlobalTimer("T2ValFriendTalkTimer","GLOBAL",2700)~  + T2ValF12notalk
END

IF ~~ T2ValF12need
  SAY ~Are you sure? I know I haven't always been the best listener, but I'm willing to talk or listen if you need to get something off your chest.~
  ++ ~You worry too much. Stop fretting.~ + T2ValF12fret
  ++ ~I'm doing fine, really. It's not as bad as you seem to think.~ + T2ValF12fine
  ++ ~Well, I'm managing. It's tough, but I'm dealing with it.~ + T2ValF12well
  ++ ~It's bad, alright? Everything that can go wrong has.~ + T2ValF12bad
  ++ ~Last time we talked, I got drunk off my arse. Does that answer your question?~ + T2ValF12drunk
  ++ ~Please, Valerie. Stop poking.~ + T2ValF12notalk2
END

IF ~~ T2ValF12fret
  SAY ~Well, alright. Just remember that you aren't alone, <CHARNAME>.~
  IF ~~ EXIT
END

IF ~~ T2ValF12notalk
  SAY ~Okay, I'll let a delayed blast fireball lie. Still, if you change your mind...~
  ++ ~Look to your own problems, Valerie, and stop worry about me.~ + T2ValF12fret
  ++ ~I'm doing fine, all things considered. I can handle the pressure.~ + T2ValF12fine
  ++ ~I'm doing better than I'd feared, worse than I'd hoped. It's a living.~ + T2ValF12well
  ++ ~I thought I told you how I was doing when we got drunk last time.~ + T2ValF12drunk
  ++ ~Not well, honestly. The road is not a pleasant life.~ + T2ValF12bad
  ++ ~Valerie. Delayed blast fireball. Boom.~ + T2ValF12notalk2
END

IF ~~ T2ValF12notalk2
  SAY ~I'm sorry, <CHARNAME>. If you ever change your mind, though, I'll be here.~
  IF ~~ EXIT
END

IF ~~ T2ValF12fine
  SAY ~Wow. No wonder you're the one everyone's talking about. The world keeps taking its best shot, but you come up grinning. Still, if you ever need to talk, I'm here.~
  ++ ~Well, there is something I did want a second opinion on...~ + T2ValF12finetalk
  ++ ~I'll bear that in mind. For now, let's get moving.~ + T2ValF12fineend
END

IF ~~ T2ValF12finetalk
  SAY ~...I'm not sure I would have done the same in your position, but it seems to be working out so far. If you want to use me as a sounding board in the future, you know where to find me.~
  IF ~~ EXIT
END

IF ~~ T2ValF12fineend
  SAY ~Sure thing.~
  IF ~~ EXIT
END

IF ~~ T2ValF12well
  SAY ~I never did buy into those stories that you're an invincible juggernaut, <CHARNAME>. If you want to talk, get something off your chest, I'll always be here to listen.~
  ++ ~There is this matter that's been bothering me...~ + T2ValF12welltalk
  ++ ~Maybe later, but we need to get moving.~ + T2ValF12wellend
END

IF ~~ T2ValF12welltalk
  SAY ~...And I'm sure you did the best you could. Thank you for opening up, and I'm happy to talk anytime you need a friendly ear.~
  IF ~~ EXIT
END

IF ~~ T2ValF12wellend
  SAY ~Anytime.~
  IF ~~ EXIT
END

IF ~~ T2ValF12drunk
  SAY ~Ah... that. I'm sorry, <CHARNAME>. I didn't mean to drag you into my bad habits. If you want to talk, though, without the wine, I'll be happy to.~
  ++ ~It can't hurt. So, a while back...~ + T2ValF12drunktalk
  ++ ~Not right now, at least. Let's get going.~ + T2ValF12drunkend
END

IF ~~ T2ValF12drunktalk
  SAY ~...Would that everything went as well as the stories. Not to repeat myself too much, but I'm sorry and I'm here anytime you need to talk.~
  IF ~~ EXIT
END

IF ~~ T2ValF12drunkend
  SAY ~Alright.~
  IF ~~ EXIT
END

IF ~~ T2ValF12bad
  SAY ~(Valerie places her hand on your shoulder) Life may be hard, <CHARNAME>, but you aren't alone here. Any time you need to talk, I'm here.~
  ++ ~Well, if you have time, there is something I want to talk about...~ + T2ValF12badtalk
  ++ ~I appreciate the thought. For now, though, we need to get going.~ + T2ValF12badend
END

IF ~~ T2ValF12badtalk
  SAY ~...Life isn't always fair, is it? I guess there's nothing to do but endure and carry on. I'm here for you, <CHARNAME>, whenever you need me.~
  IF ~~ EXIT
END

IF ~~ T2ValF12badend
  SAY ~If you're sure, my friend...~
  IF ~~ EXIT
END

//Friendtalk 13
//Fire on rest

IF ~Global("T2ValFriendTalk","GLOBAL",26)~ T2ValFriendTalk13
  SAY ~<CHARNAME>, if you've got a few minutes, I'd like your help with something. Don't worry, it's completely mundane and there's no wine in sight.~
  ++ ~Certainly. What's going on?~ DO ~IncrementGlobal("T2ValFriendTalk","GLOBAL",1) RealSetGlobalTimer("T2ValFriendTalkTimer","GLOBAL",2700)~ + T2ValF13sup
  ++ ~Awww, but I liked the wine.~ DO ~IncrementGlobal("T2ValFriendTalk","GLOBAL",1) RealSetGlobalTimer("T2ValFriendTalkTimer","GLOBAL",2700)~ + T2ValF13wine
  ++ ~Can't you get one of the others to help you with it?~ DO ~IncrementGlobal("T2ValFriendTalk","GLOBAL",1) RealSetGlobalTimer("T2ValFriendTalkTimer","GLOBAL",2700)~ + T2ValF13others
  ++ ~I'm kind of busy right now. Can it wait?~ DO ~IncrementGlobal("T2ValFriendTalk","GLOBAL",1) RealSetGlobalTimer("T2ValFriendTalkTimer","GLOBAL",2700)~ + T2ValF13wait
END

IF ~~ T2ValF13sup
  SAY ~I'm starting to write down everything we've done on our travels, for posterity and for telling my superiors just where I was all this time. The Nashkel mines, the bandit camps, the Cloakwood, Baldur's Gate... we've done a lot, haven't we?~
  ++ ~And what a long, strange trip it's been.~ + T2ValF13trip
  ++ ~Not enough, Valerie. Until the Iron Throne is stopped once and for all, we haven't done enough.~ + T2ValF13enough
  ++ ~They do say it's more about the journey than the destination.~ + T2ValF13journey
  ++ ~If you're hiding a bottle of wine in your bags, seems like a good occasion to uncork it.~ + T2ValF13cork
  ++ ~So are you my biographer now?~ + T2ValF13bio
END

IF ~~ T2ValF13wine
  SAY ~It's a bad habit. Tends to get me depressed and mopey. Anyhow, I'm starting to write down all that we've done on the Sword Coast. The Nashkel mines, the bandit camps, the Cloakwood, Baldur's Gate...  it took longer than I thought to recount them.~
  ++ ~Quite a trip it's been.~ + T2ValF13trip
  ++ ~It's a start, but until the Iron Throne is stopped, it's only a start.~ + T2ValF13enough
  ++ ~What do the bards like to say... it's the journey, not the destination?~ + T2ValF13journey
  ++ ~This our cue to find a bottle of wine and uncork it?~ + T2ValF13cork
  ++ ~You're writing a biography of me now?~ + T2ValF13bio
END

IF ~~ T2ValF13others
  SAY ~I could, but I'd like your particular insight into this.~
  ++ ~Okay, what gives?~ + T2ValF13sup
  ++ ~Change your mind about no wine and we'll see.~ + T2ValF13wine
  ++ ~I'm busy at the moment. Can this wait?~ + T2ValF13wait
END

IF ~~ T2ValF13wait
  SAY ~I suppose it's not important. Maybe some other time.~
  IF ~~ DO ~RestParty()~ EXIT
END

IF ~~ T2ValF13trip
  SAY ~People are toasting your name in Nashkel, Beregost, and the Friendly Arm Inn. Even Baldur's Gate and Athkatla have probably heard your name. You've probably got a baby or two named after you.~
  = ~What I wanted to ask you, <CHARNAME>, is why you're doing this. Is it just revenge, or something more?~
  ++ ~War between Baldur's Gate and Amn would be a terrible thing. If I can stop it, I must.~ + T2ValF13war
  ++ ~This can't be just about a war. The Iron Throne's machinations run deeper than that. I intend to find out what it is about.~ + T2ValF13plot
  ++ ~It's about saving the Sword Coast, but I won't deny that I'm looking forward to avenging Gorion.~ + T2ValF13save
  ++ ~Justice, Valerie. Not revenge.~ + T2ValF13justice
  ++ ~And what if it is just revenge?~ + T2ValF13revenge
END

IF ~~ T2ValF13enough
  SAY ~But why, <CHARNAME>? Why are you going to such lengths? People are talking about you from Baldur's Gate to Athkatla, and odds are <CHARNAME> is going to be a popular name in the next generation of the Sword Coast. Why are you pushing so hard and far?~
  ++ ~You know as well as I do how terrible war between Baldur's Gate and Amn would be. It cannot be permitted.~ + T2ValF13war
  ++ ~I doubt this is just about a war. I have a bad feeling that this crisis has a deeper purpose, and I intend to find out what that purpose is.~ + T2ValF13plot
  ++ ~Saving the Sword Coast is the goal, yes, but avenging Gorion is a definite bonus.~ + T2ValF13save
  ++ ~This isn't about revenge. It's about justice.~ + T2ValF13justice
  ++ ~What would you say if it really was as simple as avenging Gorion?~ + T2ValF13revenge
END

IF ~~ T2ValF13journey
  SAY ~Not many journeys are as hazardous to your health as this one. Or... to your mental health. <CHARNAME>, why are you doing this? Not the answer you give grateful townsfolk, but what's driving you? Revenge? Or something more?~
  = ~People toast your name across the Sword Coast. Athkatla's probably heard your name, and odds are you're going to be the namesake of a number of children running around the Sword Coast. What does it all mean to you, really?~
  ++ ~Too many lives would be lost in war between Baldur's Gate and Amn. I have to stop it from happening.~ + T2ValF13war
  ++ ~This goes deeper than war. Too many things don't add up. I intend to find out what's *really* going on.~ + T2ValF13plot
  ++ ~Saving the Sword Coast, good. Saving the Sword Coast and avenging Gorion, better.~ + T2ValF13save
  ++ ~This is justice, Valerie. Not vengeance.~ + T2ValF13justice
  ++ ~You hit the nail on the head when you mentioned revenge, I'm afraid.~ + T2ValF13revenge
END

IF ~~ T2ValF13cork
  SAY ~Nice try, though I bet people are celebrating your deeds in Nashkel, Beregost, and the Friendly Arm Inn. Baldur's Gate and Athkatla probably know your name. You're going down in the history books.~
  = ~What I wanted to ask you, <CHARNAME>, is why you're doing this. Is it just revenge, or something more?~
  ++ ~You know as well as I do how terrible war between Baldur's Gate and Amn would be. It cannot be permitted.~ + T2ValF13war
  ++ ~This can't be just about a war. The Iron Throne's machinations run deeper than that. I intend to find out what it is about.~ + T2ValF13plot
  ++ ~Saving the Sword Coast, good. Saving the Sword Coast and avenging Gorion, better.~ + T2ValF13save
  ++ ~This isn't about revenge. It's about justice.~ + T2ValF13justice
  ++ ~And what if it is just revenge?~ + T2ValF13revenge
END

IF ~~ T2ValF13bio
  SAY ~Don't flatter yourself. I'm sure there's some bard who can sop your vanity if that's what you want. What I want to know is why you're doing all this. From the Nashkel mines to the bandits to the Cloakwood, you've done a lot to stabilize the region.~
  = ~Is it simply for revenge? For your foster father? Or something else?~
  ++ ~War between Baldur's Gate and Amn would be a terrible thing. If I can stop it, I must.~ + T2ValF13war
  ++ ~This goes deeper than war. Too many things don't add up. I intend to find out what's *really* going on.~ + T2ValF13plot
  ++ ~Saving the Sword Coast is the goal, yes, but avenging Gorion is a definite bonus.~ + T2ValF13save
  ++ ~This is justice, Valerie. Not vengeance.~ + T2ValF13justice
  ++ ~You hit the nail on the head when you mentioned revenge, I'm afraid.~ + T2ValF13revenge
END

IF ~~ T2ValF13save
  SAY ~I'd be surprised if you didn't want revenge. Saving the land with personal vengeance along the way does sound like a good deal. Still... do you really think we can do this, <CHARNAME>?~
  ++ ~Of course. We've come too far to be stopped now.~ + T2ValF13confident
  ++ ~Our enemy is as clumsy as he is arrogant. He's left us a trail at every turn, and soon he'll have nowhere else to hide.~ + T2ValF13breadcrumbs
  ++ ~Maybe, maybe not. I intend to try regardless.~ + T2ValF13try
  ++ ~No, but the alternative is to lay down and die. I will make a fight of this to the end.~ + T2ValF13try
END

IF ~~ T2ValF13war
  SAY ~Really? I don't mean to sound like I'm doubting you, but I'm surprised all the same. I've always wondered if heroes like Lord Keldorn Firecam were really as idealistic as the stories say. Guess they are, or some of them at any rate.~
  ++ ~What's so hard to believe about it? You don't want to stop the war?~ + T2ValF13believe
  ++ ~You're pretty cynical for a newly-minted Cowled Wizard.~ + T2ValF13cynical
  ++ ~I don't deny I have selfish reasons as well, but I really do want to stop this war from happening.~ + T2ValF13selfish
  ++ ~Okay, you got me. It sounds good, but really, I'm after something closer to home.~ + T2ValF13deceive
END

IF ~~ T2ValF13believe
  SAY ~Of course I do, but this is my first time getting acquainted with genuine heroism. Feels good, doesn't it?~
  IF ~~ DO ~RestParty()~ EXIT
END

IF ~~ T2ValF13cynical
  SAY ~My fault for reading so much, I guess, and living in Athkatla breeds a cynical view of the world. Maybe I should request permanent assignment to the northlands...~
  IF ~~ DO ~RestParty()~ EXIT
END

IF ~~ T2ValF13selfish
  SAY ~That's very human of you, and I don't blame you a bit. Selfishness is one thing so long as it doesn't rule you, I think.~
  IF ~~ DO ~RestParty()~ EXIT
END

IF ~~ T2ValF13deceive
  SAY ~I wish I was surprised. You put on a good act, <CHARNAME>. If you had said you were in this for idealistic reasons, I would have believed you.~
  IF ~~ DO ~RestParty()~ EXIT
END

IF ~~ T2ValF13confident
  SAY ~I don't know if you're really that confident, or just stupid. No offense meant. You're the best chance anyone has of stopping this war before it starts, so I'm with you regardless.~
  IF ~~ DO ~RestParty()~ EXIT
END

IF ~~ T2ValF13try
  SAY ~True enough. Better to try and die than to lay down and die anyway. I've wondered why Torm's proverbs are often so grim, but I think I understand now. They're meant for grim times.~
  IF ~~ DO ~RestParty()~ EXIT
END

IF ~~ T2ValF13gloom
  SAY ~Well, thanks for that cheerful thought. Better to try and die than to lay down and die anyway. I've wondered why Torm's proverbs are often so grim, but I think I understand now. They're meant for grim times.~
  IF ~~ DO ~RestParty()~ EXIT
END

IF ~~ T2ValF13plot
  SAY ~An enigma wrapped in a mystery, as one of my teachers liked to say. Do you really think we can get to the bottom of this and stop it, whatever 'it' is?~
  ++ ~We've had breadcrumbs enough to lead us this far. Our enemy really isn't good at covering their tracks.~ + T2ValF13breadcrumbs
  ++ ~Why not? We've gotten this far and are still on the trail.~ + T2ValF13trail
  ++ ~I don't know. But I'll be damned if I'm not going to try.~ + T2ValF13try2
  ++ ~It does seem unlikely. We've done the unlikely before, though.~ + T2ValF13unlikely
END

IF ~~ T2ValF13breadcrumbs
  SAY ~True enough. Whoever this would-be mastermind is, he's sloppy. Smart and cunning, but sloppy. Thank Torm our enemies aren't as good as they probably think they are.~
  IF ~~ DO ~RestParty()~ EXIT
END

IF ~~ T2ValF13trail
  SAY ~Hah. Trailblazing isn't exactly my thing, but I'll do what I can. We've done enough hiking through the wilds, physical and metaphorical, that perhaps I should start learning the art of pathfinding.~
  IF ~~ DO ~RestParty()~ EXIT
END

IF ~~ T2ValF13try2
  SAY ~I respect that, <CHARNAME>, and you. Go down a hero or go down swinging, Torm says there's no shame in either. Just between you and me, though, I prefer the first option.~
  IF ~~ DO ~RestParty()~ EXIT
END

IF ~~ T2ValF13unlikely
  SAY ~True. Maybe you should start advertising your services: <CHARNAME> and Company, doers of the unlikely, risky, and barely plausible. Impossible costs extra. Don't give me that look, it's something to do after this mess ends one way or the other.~
  IF ~~ DO ~RestParty()~ EXIT
END

IF ~~ T2ValF13justice
  SAY ~I'm not going to get into an argument about justice versus revenge with you. I know better than to think I can change your mind. Just... be careful. If stories are any indication, you're walking a dangerous precipice.~
  ++ ~Relax. The death of my father figure isn't going to turn me into some emotionally wrecked vigilante for the rest of my life.~ + T2ValF13batman
  ++ ~It would be revenge if it was just about Gorion, but he hasn't been the only casualty of this conflict.~ + T2ValF13casualty
  ++ ~I'm content to let history judge me.~ + T2ValF13history
  ++ ~Stop worrying. I know what I'm doing.~ + T2ValF13worry
END

IF ~~ T2ValF13batman
  SAY ~I hope not. The moment a mask and cape come out, I'm calling it quits. No offense.~
  IF ~~ DO ~RestParty()~ EXIT
END

IF ~~ T2ValF13casualty
  SAY ~True enough. And from what you've said, I doubt the man responsible for Gorion's death will just come quietly.~
  IF ~~ DO ~RestParty()~ EXIT
END

IF ~~ T2ValF13history
  SAY ~Don't try to be a great man, just be a man. Let history make its own judgment. A proverb of Torm's, <CHARNAME>. Maybe I should pay more attention to temple services.~
  IF ~~ DO ~RestParty()~ EXIT
END

IF ~~ T2ValF13worry
  SAY ~I hope so, <CHARNAME>. I really do.~
  IF ~~ DO ~RestParty()~ EXIT
END

IF ~~ T2ValF13revenge
  SAY ~Well... if it saves the Sword Coast and Amn, I guess, but I'd rather not discuss this further.~
  IF ~~ DO ~RestParty()~ EXIT
END

//Friendtalk 14
//ONLY IF VALERIE SAW THE SHRINE OF BHAAL IN THE CLOAKWOOD
/*
IF ~Global("T2ValFriendTalk","GLOBAL",28) Global("T2Val_bhaal","GLOBAL",2)~ T2ValFriendTalk14
  SAY ~<CHARNAME>, I'm sorry for how mopey I've been recently. I've been trying to figure out where events could be going, in light of current evidence and past machinations, and I keep coming up with less-than-thrilling answers.~
  ++ ~No apology needed.~ DO ~IncrementGlobal("T2ValFriendTalk","GLOBAL",1)~ + T2ValF14apology
  ++ ~Any interesting answers?~ DO ~IncrementGlobal("T2ValFriendTalk","GLOBAL",1)~ + T2ValF14answers
  ++ ~I don't blame you for getting depressed given what you're working on.~ DO ~IncrementGlobal("T2ValFriendTalk","GLOBAL",1)~ + T2ValF14apology
  ++ ~Don't worry about it. Let's go.~ DO ~IncrementGlobal("T2ValFriendTalk","GLOBAL",1)~ + T2ValF14go
END

IF ~~ T2ValF14go
  SAY ~Sure thing.~
  IF ~~ EXIT
END

IF ~~ T2ValF14apology
  SAY ~I swear I'm usually not this depressive. Still, it's a hell of a mess you've dragged me into.~
  ++ ~This is how heroes are made, Valerie.~ + T2ValF14hero
  ++ ~You think I'm any happier about this?~ + T2ValF14happy
  ++ ~Have any interesting conclusions?~ + T2ValF14answers
  ++ ~You'll get used to it eventually. I have.~ + T2ValF14jaded
END

IF ~~ T2ValF14hero
  SAY ~It wasn't any fun for them, either. Not to mention that not many heroes research what's going on. Ignorance can be bliss, it would seem.~
  ++ ~Okay, I'll bite. What have you found out?~ + T2ValF14answers
  ++ ~You'll survive like the rest of us have.~ + T2ValF14jaded
  ++ ~In that case, mind leaving me in bliss?~ + T2ValF14bliss
END

IF ~~ T2ValF14happy
  SAY ~No, but you haven't been methodically studying all the evidence we've found so far and doing research on the area and its history. Ignorance can be bliss, it would seem.~
  ++ ~Okay, I'll bite. What have you found out?~ + T2ValF14answers
  ++ ~You'll survive like the rest of us have.~ + T2ValF14jaded
  ++ ~In that case, mind leaving me in bliss?~ + T2ValF14bliss
END

IF ~~ T2ValF14jaded
  SAY ~I don't want to be hardened by all of this. I don't want killing and suffering to become routine for me. I don't want to be unsurprised by what I learn when I study our enemy.~
  ++ ~Fine, fine. What have you learned?~ + T2ValF14answers
  ++ ~I thought you said you were done moping.~ + T2ValF14mope
  ++ ~Valerie? Now would be a good time to stop talking.~ + T2ValF14stop
END

IF ~~ T2ValF14stop
  SAY ~Okay, okay. Shutting up now.~
  IF ~~ EXIT
END

IF ~~ T2ValF14mope
  SAY ~*Sigh*. Forget I said anything.~
  IF ~~ EXIT
END

IF ~~ T2ValF14bliss
  SAY ~As you wish.~
  IF ~~ EXIT
END

IF ~~ T2ValF14answers
  SAY ~There are two distinct threads to what's happening, I think. The Iron Throne, and this almost cult-like behavior we've seen among their leaders. In the Cloakwood mines, there were holy symbols I didn't recognize, so I did some digging on the religious history of this region. I don't have anything *conclusive*, but...~
  + ~CheckStatGT(Player1,13,INT)~ + ~So I'm not the only one studying what's happening, and I suspect my conclusions are as bleak as yours. Tell me what you've found and let's compare notes.~ + T2ValF14smartypants
  + ~CheckStatGT(Player1,13,WIS)~ + ~Interesting. I have my deep suspicions as well. Tell me what you believe is happening.~ + T2ValF14smartypants
  ++ ~But what?~ + T2ValF14what
  ++ ~I get the feeling I'm not going to like what you've learned.~ + T2ValF14what
  ++ ~On second thought, I don't think I want to know what you've discovered. Please, let me figure this out on my own.~ + T2ValF14go
END

IF ~~ T2ValF14what
  SAY ~As I said, this isn't conclusive. But... Back before the Time of Troubles, Baldur's Gate was a hotbed of Bhaal worship. Bhaal, god of murder and assassins, struck down during the Time of Troubles.~
  = ~Supposedly, there was a great temple to Bhaal somewhere in the city, but it was never found. The Deathstalkers - the priests of Bhaal - were notoriously secretive. I really, really hope this is just coincidence.~
  ++ ~And if it's not?~ + T2ValF14ohcrap
  ++ ~What do you think we should do?~ + T2ValF14do
  ++ ~I'm not familiar with Bhaal. What do you know about him?~ + T2ValF14bhaal
  ++ ~I'm sure it is just coincidence.~ + T2ValF14convince
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
  ++ ~What do you think we should do?~ + T2ValF14do
  ++ ~Amelyssan the Blackhearted? I wonder how she earned that name...~ + T2ValF14melissan
  ++ ~It's an interesting theory, but I'm not convinced.~ + T2ValF14convince
  ++ ~Unfortunately, this theory makes more sense than anything else I've heard.~ + T2ValF14fear
END

IF ~~ T2ValF14do
  SAY ~I want to say we should run, alert the Order of the Radiant Heart, maybe the full force of the Cowled Wizards or Harpers. But... time is a luxury we don't have. We're in the right place at the right time. I pray we're the right people.~
  ++ ~What if you're right?~ + T2ValF14ohcrap
  ++ ~Tell me about Bhaal.~ + T2ValF14bhaal
  ++ ~I wouldn't be so sure. Bhaal being involved is only a theory.~ + T2ValF14convince
  ++ ~We are. I think you're right, and I know we have to stop this.~ + T2ValF14fear
END

IF ~~ T2ValF14melissan
  SAY ~She was Bhaal's high priestess, one of the few Deathstalkers powerful enough to operate openly, and her body count defies belief. Fortunately, not a word of her has been heard since the Time of Troubles, so she probably died with her god.~
  ++ ~Interesting, but irrelevant. I'm not convinced by your theory.~ + T2ValF14convince
  ++ ~Unfortunately, I think you're right about Bhaal's involvement. It makes too much sense.~ + T2ValF14fear
END

IF ~~ T2ValF14convince
  SAY ~I don't want to believe it, either, <CHARNAME>. I'll pray I'm just being paranoid and seeing patterns where there are none.~
  IF ~~ EXIT
END

IF ~~ T2ValF14fear
  SAY ~...I'm afraid, <CHARNAME>. I really am. The Iron Throne is one thing, but the remnants of a dead god or his cultists... Torm, protect us and forgive my weakness. The place of the strong is between the weak and those who would prey upon them.~
  IF ~~ EXIT
END

IF ~~ T2ValF14smartypants
  SAY ~Remember that weird holy symbol in Davaeorn's chambers? That's the holy symbol of Bhaal, god of murder, slain during the Time of Troubles. Apparently, Baldur's Gate was a hotbed of Bhaalist activity. It's just circumstantial evidence, and I hope it's only coincidence...~
  ++ ~And if it's not?~ + T2ValF14ohcrap
  ++ ~What do you think we should do?~ + T2ValF14do
  ++ ~I'm not familiar with Bhaal. What do you know about him?~ + T2ValF14bhaal
  ++ ~I'm sure it is just coincidence.~ + T2ValF14convince
END   */

//Friendtalk 14
//IF VALERIE DID NOT SEE THE SHRINE OF BHAAL IN THE CLOAKWOOD

IF ~Global("T2ValFriendTalk","GLOBAL",28) /*!Global("T2Val_bhaal","GLOBAL",2)*/~ T2ValFriendTalk14A
SAY ~<CHARNAME>, I'm sorry for how mopey I've been recently. I've been trying to figure out where events could be going, in light of current evidence and past machinations, and I keep coming up with less-than-thrilling answers.~
++ ~No apology needed.~ DO ~IncrementGlobal("T2ValFriendTalk","GLOBAL",1) RealSetGlobalTimer("T2ValFriendTalkTimer","GLOBAL",2500)~ + T2ValF14Aapology
++ ~Any interesting answers?~ DO ~IncrementGlobal("T2ValFriendTalk","GLOBAL",1) RealSetGlobalTimer("T2ValFriendTalkTimer","GLOBAL",2500)~ + T2ValF14Aanswers
++ ~I don't blame you for getting depressed given what you're working on.~ DO ~IncrementGlobal("T2ValFriendTalk","GLOBAL",1) RealSetGlobalTimer("T2ValFriendTalkTimer","GLOBAL",2500)~ + T2ValF14Aapology
++ ~Don't worry about it. Let's go.~ DO ~IncrementGlobal("T2ValFriendTalk","GLOBAL",1) RealSetGlobalTimer("T2ValFriendTalkTimer","GLOBAL",2500)~ + T2ValF14Ago
END

IF ~~ T2ValF14Ago
SAY ~Sure thing.~
IF ~~ EXIT
END

IF ~~ T2ValF14Aapology
SAY ~I swear I'm usually not this depressive. Still, it's a hell of a mess you've dragged me into.~
++ ~This is how heroes are made, Valerie.~ + T2ValF14Ahero
++ ~You think I'm any happier about this?~ + T2ValF14Ahappy
++ ~Have any interesting conclusions?~ + T2ValF14Aanswers
++ ~You'll get used to it eventually. I have.~ + T2ValF14Ajaded
END

IF ~~ T2ValF14Ahero
SAY ~It wasn't any fun for them, either. Not to mention that not many heroes research what's going on. Ignorance can be bliss, it would seem.~
++ ~Okay, I'll bite. What have you found out?~ + T2ValF14Aanswers
++ ~You'll survive like the rest of us have.~ + T2ValF14Ajaded
/*++ ~In that case, mind leaving me in bliss?~ + T2ValF14Abliss */
END

IF ~~ T2ValF14Ahappy
SAY ~No, but you haven't been methodically studying all the evidence we've found so far and doing research on the area and its history. Ignorance can be bliss, it would seem.~
++ ~Okay, I'll bite. What have you found out?~ + T2ValF14Aanswers
++ ~You'll survive like the rest of us have.~ + T2ValF14Ajaded
/*++ ~In that case, mind leaving me in bliss?~ + T2ValF14Abliss   */
END

IF ~~ T2ValF14Ajaded
SAY ~I don't want to be hardened by all of this. I don't want killing and suffering to become routine for me. I don't want to be unsurprised by what I learn when I study our enemy.~
++ ~Fine, fine. What have you learned?~ + T2ValF14Aanswers
++ ~I thought you said you were done moping.~ + T2ValF14Amope
++ ~Valerie? Now would be a good time to stop talking.~ + T2ValF14Astop
END

IF ~~ T2ValF14Astop
SAY ~Okay, okay. Shutting up now.~
IF ~~ EXIT
END

IF ~~ T2ValF14Amope
SAY ~*Sigh*. Forget I said anything.~
IF ~~ EXIT
END

IF ~~ T2ValF14Abliss
SAY ~As you wish.~
IF ~~ EXIT
END

IF ~~ T2ValF14Aanswers
SAY ~Everything we've seen so far has been cast in terms of a trade dispute between Amn and Baldur's Gate. Nothing too unusual there, but everything seems to be pushing for a military conflict, not economic. I don't have anything *conclusive*, but...~
+ ~CheckStatGT(Player1,13,INT)~ + ~So I'm not the only one studying what's happening, and I suspect my conclusions are as bleak as yours. Tell me what you've found and let's compare notes.~ + T2ValF14Asmartypants
+ ~CheckStatGT(Player1,13,WIS)~ + ~Interesting. I have my deep suspicions as well. Tell me what you believe is happening.~ + T2ValF14Asmartypants
++ ~But what?~ + T2ValF14Awhat
++ ~I get the feeling I'm not going to like what you've learned.~ + T2ValF14Awhat
++ ~On second thought, I don't think I want to know what you've discovered. Please, let me figure this out on my own.~ + T2ValF14Ago
END

IF ~~ T2ValF14Awhat
SAY ~There's more to this than iron. I'd bet my life on it. Neither Baldur's Gate nor Amn is ready for a war. They'd both lose. Baldur's Gate has a small army of mercenaries. Too small to invade Amn in any meaningful way, even if the Citadel of Strategic Militancy near Baldur's Gate gets involved.~
= ~Amn's forces are stretched thin. We're being invaded by an army of demi-humans from the south and have recurring problems with drow raiders and spillover from the Tethyrian wars. We could take this stretch of the Sword Coast, maybe, but not hold it.~
= ~Peace and prosperity are good for business, <CHARNAME>. The kind of chaos a war between Baldur's Gate and Amn would unleash... There are lots of ways someone might benefit from that, none of them good.~
++ ~What do you think we should do?~ + T2ValF14Ado
++ ~If it comes to war, what will you do?~ + T2ValF14Aside
++ ~It's an interesting theory, but I'm not convinced.~ + T2ValF14Aconvince
++ ~Unfortunately, this theory makes more sense than anything else I've heard.~ + T2ValF14Afear
END

IF ~~ T2ValF14Aside
SAY ~*sigh* I don't know, <CHARNAME>. I don't think Amn is perfect, by any stretch of the imagination, but I will fight for my home if the reason is just. In this mess... I don't know what the right thing to do is. I pray we can stop this before it reaches that point.~
IF ~~ EXIT
END

IF ~~ T2ValF14Ado
SAY ~I want to say we should run, alert the Order of the Radiant Heart, maybe the full force of the Cowled Wizards or Harpers. But... time is a luxury we don't have. We're in the right place at the right time. I pray we're the right people.~
++ ~What if you're right?~ + T2ValF14Aohcrap
++ ~If Baldur's Gate and Amn do go to war, what will you do?~ + T2ValF14Aside
++ ~I wouldn't be so sure. Bhaal being involved is only a theory.~ + T2ValF14Aconvince
++ ~We are. I think you're right, and I know we have to stop this.~ + T2ValF14Afear
END

IF ~~ T2ValF14Aohcrap
SAY ~(Valerie takes a deep breath) Then we can't afford to fail. We can't. Baldur's Gate can't. Amn can't. I don't want to think about how many lives are depending on us.~
IF ~~ EXIT
END

IF ~~ T2ValF14Aconvince
SAY ~I don't want to believe it, either, <CHARNAME>. I'll pray I'm just being paranoid and seeing patterns where there are none.~
IF ~~ EXIT
END

IF ~~ T2ValF14Afear
SAY ~...I'm afraid, <CHARNAME>. I really am. The Iron Throne is one thing, but someone willing to start a devastating war for their own purposes... Torm, protect us and forgive my weakness. The place of the strong is between the weak and those who would prey upon them.~
IF ~~ EXIT
END

IF ~~ T2ValF14Asmartypants
SAY ~This isn't about iron. A trade dispute wouldn't mean war, and that's exactly what everything we've seen has been pointing towards. It's just circumstantial evidence, and I hope it's only coincidence...~
++ ~And if it's not?~ + T2ValF14Aohcrap
++ ~What do you think we should do?~ + T2ValF14Ado
++ ~If Baldur's Gate and Amn do go to war, what will you do?~ + T2ValF14Aside
++ ~I'm sure it is just coincidence.~ + T2ValF14Aconvince
END

//Friendtalk 15
//After escaping Candlekeep

IF ~Global("T2ValFriendTalk","GLOBAL",30)~ T2ValFriendTalk15
  SAY ~<CHARNAME>, I know you probably don't want to talk about what happened, so I'll make this fast. I believe that who you are matters much more than what you are. Child of Bhaal or no, you are <CHARNAME> first and foremost.~
  ++ ~I doubt it's as easy as that, but thank you for the support.~ DO ~IncrementGlobal("T2ValFriendTalk","GLOBAL",1) RealSetGlobalTimer("T2ValFriendTalkTimer","GLOBAL",2700)~ + T2ValF15support
  ++ ~How can you say that, Valerie? My father was the god of murder.~ DO ~IncrementGlobal("T2ValFriendTalk","GLOBAL",1) RealSetGlobalTimer("T2ValFriendTalkTimer","GLOBAL",2700)~ + T2ValF15father
  ++ ~Maybe, but I am intrigued by the gifts I've developed. What other powers might I wield, I wonder?~ DO ~IncrementGlobal("T2ValFriendTalk","GLOBAL",1) RealSetGlobalTimer("T2ValFriendTalkTimer","GLOBAL",2700)~ + T2ValF15power
  ++ ~Valerie, I'd really prefer not to talk about this.~ DO ~IncrementGlobal("T2ValFriendTalk","GLOBAL",1) RealSetGlobalTimer("T2ValFriendTalkTimer","GLOBAL",2700)~ + T2ValF15notalk
END

IF ~~ T2ValF15notalk
  SAY ~I understand. Let's go, then.~
  IF ~~ EXIT
END

IF ~~ T2ValF15support
  SAY ~Any time you need me, my friend, I'm here.~
  ++ ~Mind if I unload on you some? I really need to talk to someone, anyone, about this mess.~ + T2ValF15talk
  IF ~Gender(Player1,MALE)~ THEN REPLY ~*Any* time?~ + T2ValF15flirtM
  IF ~Gender(Player1,FEMALE)~ THEN REPLY ~*Any* time?~ + T2ValF15flirtF
  ++ ~And I appreciate it, Valerie.~ + T2ValF15appreciate
  ++ ~Thank you, but we need to get going. Time is of the essence.~ + T2ValF15time
END

IF ~~ T2ValF15talk
  SAY ~Certainly. Might as well tell the others we're taking a break.~
  IF ~~ EXIT
END

IF ~~ T2ValF15flirtM
  SAY ~*sigh* Why couldn't you have been a woman...~
  IF ~~ EXIT
END

IF ~~ T2ValF15flirtF
  SAY ~*sigh* Please stop fluttering your eyelashes at me. It's... distracting, and I don't need this right now.~
  IF ~~ EXIT
END

IF ~~ T2ValF15appreciate
  SAY ~Certainly, <CHARNAME>.~
  IF ~~ EXIT
END

IF ~~ T2ValF15time
  SAY ~Indeed it is. By your lead.~
  IF ~~ EXIT
END

IF ~~ T2ValF15father
  SAY ~No, <CHARNAME>. Your father was Gorion. So what if Bhaal impregnated your mother? He didn't raise you. He didn't know you when you were a child. He didn't teach you, help you, or do anything at all for you. He was not your father.~
  ++ ~I think it's different when gods are involved.~ + T2ValF15gods
  ++ ~You know the powers I have, the ones you tried to identify? I think they're born from Bhaal's blood. He is my father.~ + T2ValF15blood
  ++ ~True. Bhaal may have made me, but Gorion shaped me.~ + T2ValF15shape
  ++ ~Valerie, please stop talking.~ + T2ValF15notalk
END

IF ~~ T2ValF15gods
  SAY ~Why? Unless you've been hiding something from me, you've never had an imp on your shoulder or voice in your head whispering life lessons to you. But fine, let's drop it and get going.~
  IF ~~ EXIT
END

IF ~~ T2ValF15blood
  SAY ~And I have sorcerous powers. Be I tiefling or aasimar or dragon-blooded, I chose what I wanted to do with the powers of my nature. You can do the same. But fine, let's drop it and get going.~
  IF ~~ EXIT
END

IF ~~ T2ValF15shape
  SAY ~That's good to hear. Let's get going, then.~
  IF ~~ EXIT
END

IF ~~ T2ValF15power
  SAY ~Are you sure you want to go down that road, <CHARNAME>? I'm not saying you can't use powers of unpleasant source for good like I do, but I'd be careful about asking questions you don't really want to know the answer to.~
  ++ ~You may not want to know the answers, but I do.~ + T2ValF15careful
  ++ ~I am not afraid of my blood. It will do as I command.~ + T2ValF15careful
  ++ ~Maybe you're right. Discretion might be the better part of valor.~ + T2ValF15discretion
  ++ ~Valerie, please stop talking.~ + T2ValF15notalk
END

IF ~~ T2ValF15answers
  SAY ~It's no use trying to dissuade you, then. Be careful, my friend.~
  IF ~~ EXIT
END

IF ~~ T2ValF15discretion
  SAY ~Whatever you end up deciding to do, just be careful. Power like the remnants of a dead god shouldn't be taken lightly.~
  IF ~~ EXIT
END

IF ~~ T2ValF15careful
  SAY ~All I can say, then, is be careful. You have a fragment of a dead god's power, <CHARNAME>. As one of my teachers said, power corrupts. And absolute power is actually pretty neat.~
  IF ~~ EXIT
END

//Friendtalk 16

IF ~Global("T2ValFriendTalk","GLOBAL",32)~ T2ValFriendTalk16
  SAY ~<CHARNAME>, if we have time left before the end, I'd like to stop by a courier service. I've been writing a few letters to send home.~
  ++ ~I'm sure we can make the time.~ DO ~IncrementGlobal("T2ValFriendTalk","GLOBAL",1) RealSetGlobalTimer("T2ValFriendTalkTimer","GLOBAL",2700)~ + T2ValF16time
  ++ ~Who are you writing letters to?~ DO ~IncrementGlobal("T2ValFriendTalk","GLOBAL",1) RealSetGlobalTimer("T2ValFriendTalkTimer","GLOBAL",2700)~ + T2ValF16who
  ++ ~What are the letters about?~ DO ~IncrementGlobal("T2ValFriendTalk","GLOBAL",1) RealSetGlobalTimer("T2ValFriendTalkTimer","GLOBAL",2700)~ + T2ValF16what
  ++ ~If we have time, but I'm not sure we do.~ DO ~IncrementGlobal("T2ValFriendTalk","GLOBAL",1) RealSetGlobalTimer("T2ValFriendTalkTimer","GLOBAL",2700)~ + T2ValF16go
END

IF ~~ T2ValF16go
  SAY ~I understand. Still, let me know if it's possible.~
  IF ~~ EXIT
END

IF ~~ T2ValF16time
  SAY ~Thank you, <CHARNAME>. I really appreciate it.~
  ++ ~Who are you writing to, anyway?~ + T2ValF16who
  ++ ~May I ask what you're writing home about?~ + T2ValF16what
  ++ ~Then let's get going.~ + T2ValF16leave
END

IF ~~ T2ValF16leave
  SAY ~Sure thing.~
  IF ~~ EXIT
END

IF ~~ T2ValF16who
  SAY ~To my superiors, my father, and... to my old girlfriend, Emma. When I sat down to write what may be my last messages home, it started to sink in just how few friends I have. Not many who would care that I may not make it back.~
  ++ ~What were you writing to them about?~ + T2ValF16what
  ++ ~You don't expect to make it home after this?~ + T2ValF16expect
  ++ ~Cheer up. You can tell them in person.~ + T2ValF16cheer
  ++ ~I didn't expect you of all people to sound lonely.~ + T2ValF16lonely
END

IF ~~ T2ValF16what
  SAY ~I've been taking a long, hard look at things. What we're up against. If I don't make it back, then these are my last messages, to the people I care about and about my duty.~
  ++ ~Who are these people?~ + T2ValF16who
  ++ ~You really don't think you'll make it home?~ + T2ValF16expect
  ++ ~And I thought we were done with mopey Valerie.~ + T2ValF16cheer
  ++ ~What exactly are you telling them?~ + T2ValF16tell
END

IF ~~ T2ValF16lonely
  SAY ~I never thought myself short of friends either, but... I've always buried myself in study and work. Rarely went out drinking with my peers, or attended any parties. Funny the regrets you have when you stare death in the face.~
  ++ ~Are you really that pessimistic about our chances?~ + T2ValF16expect
  ++ ~Come on. I thought we had mopey, angsty Valerie sorted already.~ + T2ValF16cheer
END

IF ~~ T2ValF16tell
  SAY ~My superiors? Everything except what you are, which I decided was irrelevant. If we fail, they need to know what we've learned so they can finish it. To my father and Emma, that I care about them very much and what of my stuff they can have.~
  ++ ~You honestly expect us to fail?~ + T2ValF16expect
  ++ ~Chin up, Valerie. We'll get through this.~ + T2ValF16cheer
END

IF ~~ T2ValF16expect
  SAY ~I'm trying to be realistic. Sarevok is a match for you and then some. Who knows what other allies he has. If - *if* - the worst comes to pass, these letters will be of use.~
  ++ ~Okay, just checking that you weren't back to mopey, angsty Valerie.~ + T2ValF16check
  ++ ~Good enough for me. Let's get going.~ + T2ValF16leave
END

IF ~~ T2ValF16cheer
  SAY ~I don't *seriously* expect us to fail, but I do believe in being prepared. If - *if* - the worst comes to pass, these letters will be of use.~
  ++ ~Okay, just checking that you weren't back to mopey, angsty Valerie.~ + T2ValF16check
  ++ ~Good enough for me. Let's get going.~ + T2ValF16leave
END

IF ~~ T2ValF16check
  SAY ~Hah. There is a line between a contingency and expecting failure. Realism, <CHARNAME>, not pessimism.~
  IF ~~ EXIT
END

//Friendtalk 17

IF ~Global("T2ValFriendTalk","GLOBAL",34)~ T2ValFriendTalk17
  SAY ~Well, it looks like this is it. One way or another, this will be over soon. <CHARNAME>... thank you for luring me away from Nashkel. I know I haven't always been the most uplifting or inspiring companion, but it has been an honor to know you, and to fight beside you. Most of all, I'm proud to call you my friend.~
  ++ ~The honor has been, and still is, mine.~ DO ~SetGlobal("T2ValFriendTalk","GLOBAL",35)~ + T2ValF17honor
  ++ ~And thank you for coming with me. You're a good woman, and a good friend.~ DO ~SetGlobal("T2ValFriendTalk","GLOBAL",35)~ + T2ValF17thank
  ++ ~Don't thank me yet. The hard part is yet to come.~ DO ~SetGlobal("T2ValFriendTalk","GLOBAL",35)~ + T2ValF17hard
  IF ~Gender(Player1,MALE)~ THEN REPLY ~More than my friend. (Kiss Valerie)~ DO ~SetGlobal("T2ValFriendTalk","GLOBAL",35)~ + T2ValF17male
  IF ~Gender(Player1,FEMALE) Race(Player1,GNOME)~ THEN REPLY ~More than my friend. (Kiss Valerie)~ DO ~SetGlobal("T2ValFriendTalk","GLOBAL",35)~ + T2ValF17gnome
  IF ~Gender(Player1,FEMALE) Race(Player1,HALFLING)~ THEN REPLY ~More than my friend. (Kiss Valerie)~ DO ~SetGlobal("T2ValFriendTalk","GLOBAL",35)~ + T2ValF17halfling
  IF ~Gender(Player1,FEMALE) !Race(Player1,HALFLING) !Race(Player1,GNOME) ReputationLT(Player1,12) !Alignment(Player1,MASK_EVIL)~ THEN REPLY ~More than my friend. (Kiss Valerie)~ DO ~SetGlobal("T2ValFriendTalk","GLOBAL",35)~ + T2ValF17fail
  IF ~Gender(Player1,FEMALE) !Race(Player1,HALFLING) !Race(Player1,GNOME) ReputationGT(Player1,11) Alignment(Player1,MASK_EVIL)~ THEN REPLY ~More than my friend. (Kiss Valerie)~ DO ~SetGlobal("T2ValFriendTalk","GLOBAL",35)~ + T2ValF17fail
  IF ~Gender(Player1,FEMALE) !Race(Player1,HALFLING) !Race(Player1,GNOME) ReputationGT(Player1,11) !Alignment(Player1,MASK_EVIL)~ THEN REPLY ~More than my friend. (Kiss Valerie)~ DO ~SetGlobal("T2ValFriendTalk","GLOBAL",35)~ + T2ValF17kiss
  ++ ~Yeah, yeah. You're a good friend, too. Come on, Sarevok's waiting.~ + T2ValF17rush
END

IF ~~ T2ValF17rush
  SAY ~So sorry for keeping him, then.~
  IF ~~ EXIT
END

IF ~~ T2ValF17honor
  SAY ~Hah. This exchange will sound good to a bard someday. Let's make sure we can tell the tale ourselves, then.~
  IF ~~ EXIT
END

IF ~~ T2ValF17thank
  SAY ~Haha. I don't know if I'd have ever described myself as a good friend, but thank you all the same. May the Loyal Fury watch over you, <CHARNAME>.~
  IF ~~ EXIT
END

IF ~~ T2ValF17hard
  SAY ~Come what may, I have no regrets about coming with you. If I have to die, then dying in battle to save the Sword Coast and vanquish a would-be god strikes me as a pretty good way to go.~
  IF ~~ EXIT
END

IF ~~ T2ValF17male
  SAY ~(Valerie deftly sidesteps your embrace and smiles sadly) I'm really not into guys, <CHARNAME>. Not even in the twilight hour. We're simply not meant to be.~
  IF ~~ EXIT
END

IF ~~ T2ValF17gnome
  SAY ~(The height difference makes a kiss rather impractical, and Valerie steps away with a sad smile) I have nothing against your people, but that's simply not going to happen. We're not meant to be.~
  IF ~~ EXIT
END

IF ~~ T2ValF17halfling
  SAY ~(The height difference makes a kiss rather impractical, and Valerie steps away with a sad smile) I have nothing against Yondalla's children, but that's simply not going to happen. We're not meant to be.~
  IF ~~ EXIT
END

IF ~~ T2ValF17fail
  SAY ~(Valerie deftly sidesteps your embrace and smiles sadly) I'm sorry, <CHARNAME>, but despite all we've been through, I don't think you're the woman for me. I'm sorry.~
  IF ~~ EXIT
END

IF ~~ T2ValF17kiss
  SAY ~(Valerie returns your embrace with surprising energy, and after a long moment, your lips part and she smiles. Her voice is much huskier than usual) I've wanted to do that for a while now, but guess I never had the courage. It looks like we have something to talk about when this is over, now. I'm looking forward to it.~
  IF ~~ EXIT
END

//Interjections

//Area: %Temple_SongoftheMorning%
IF ~Global("T2Val_temple","GLOBAL",1)~ t2val_temple
  SAY ~Sirines manning the temple? Really? That's one way to get people to attend services if you have no actual spiritual counsel to give, I suppose.~
  IF ~~ DO ~SetGlobal("T2Val_temple","GLOBAL",2)~ EXIT
END

//Area: %NashkelMines_L1%
IF ~Global("T2Val_mines","GLOBAL",1)~ t2val_mines
  SAY ~According to my brief, little is known for sure about what's happening here. Rumors say demons, but panicked, uneducated miners who likely never got a good look at their attackers are not reliable witnesses. The deeper levels of the mine have had recurring problems with giant spiders, oozes, and similar filth, but it's unlikely that they would be mistaken for demons. Add the tainted iron, and we fear that the miners may have found or woken something up. If they have, the best advice I can give is that we should run like hell.~
  IF ~~ DO ~SetGlobal("T2Val_mines","GLOBAL",2)~ EXIT
END

//Area %ValleyoftheTombs_Tomb%
IF ~Global("T2Val_valley","GLOBAL",1)~ t2val_valley
  SAY ~If I remember my history lessons right, a human culture that predates Amn in this region buried their dead in mounds like this. Unfortunately, they apparently neglected to trap and guard their tombs like most cultures in Faerun do, and so grave robbers have plundered most of the mounds. Uh. We aren't about to turn into grave robbers, too, are we?~
  IF ~~ DO ~SetGlobal("T2Val_valley","GLOBAL",2)~ EXIT
END

//Area %CloakwoodMines_L4% sub area: shrine to Bhaal (room NW of bedroom adjacent to elevator)
IF ~Global("T2Val_bhaal","GLOBAL",1)~ t2val_bhaal
  SAY ~Hmmm. A shrine isn't something I expected to see down here. And I don't recognize that holy symbol at all... a skull surrounded by bolts of fire... or drops of blood? Give me a minute to sketch it in my notebook, so I can do some research in my spare time. I'll let you know if I learn anything.~
  IF ~~ DO ~SetGlobal("T2Val_bhaal","GLOBAL",2)~ EXIT
END

//(If you flood the mine without freeing the slaves)
IF ~Global("T2Val_flood","GLOBAL",1)~ t2val_flood
  SAY ~How - how could you do that, <CHARNAME>?! All those poor slaves... You're either profoundly callous or a monster, and I have no wish to know either sort.~
  IF ~~ DO ~SetGlobal("T2Val_flood","GLOBAL",2) LeaveParty() SetGlobal("T2ValHate","GLOBAL",1) EscapeArea()~ EXIT
END

//Area %Candlekeep_Library_L1%
IF ~Global("T2Val_candlekeep","GLOBAL",1)~ t2val_candlekeep
  SAY ~Oh, wow. The great library of Candlekeep... It's amazing. I know we have an urgent mission so I'll try not to dawdle, but... wow.~
  IF ~~ DO ~SetGlobal("T2Val_candlekeep","GLOBAL",2)~ EXIT
END

//(When Charname finds Gorion's letter - Shadowkeeper gave me an error when looking up the item code, and Tutu triggers a dialogue when you pick up the letter, and only if Global("T2ValFriendship","GLOBAL",1))
IF ~Global("T2Val_letter","GLOBAL",1)~ t2val_letter
  SAY ~I know it's no comfort, but I have to say something, <CHARNAME>. Who you are matters so much more than what you are. Take it from one who knows. Sorcery is trivial next to this, I know, but I like to think the principle is the same. Be the <PRO_MANWOMAN> you've become, not the child of Bhaal you were born as.~
  IF ~~ DO ~SetGlobal("T2Val_letter","GLOBAL",2)~ EXIT
END

//In inventory: POTN48.itm
IF ~Global("T2Val_potion","GLOBAL",1)~ t2val_portion
  SAY ~Let's see what we have here. Hmmm... viscous, alchemically active liquid. And... does not like a few iron shavings at all. Hmmm. <CHARNAME>, I'd need lab equipment to study this stuff properly, but I think this is what's tainting the iron. I've heard that kobolds aren't as stupid as they appear, so this might be their handiwork.~
  IF ~~ DO ~SetGlobal("T2Val_potion","GLOBAL",2)~ EXIT
END

//In inventory: BOOK03.itm, BOOK04.itm, BOOK05.itm, BOOK06.itm BOOK07.itm, or BOOK08.itm. Should only fire once regardless of which book you put in.
IF ~Global("T2Val_book","GLOBAL",1)~ t2val_book
  SAY ~Very interesting. I've heard of books like this, <CHARNAME>. There's an enchantment woven into the very pages to improve your capabilities. And this isn't one of those knockoffs you see people trying to sell to apprentices. I can actually feel the magic in the paper. Oghma's smiling on us today.~
  IF ~~ DO ~SetGlobal("T2Val_book","GLOBAL",2)~ EXIT
END


END

I_C_T SAFE %tutu_var%SILKE 4 T2Val_silke
  == T2VALJ IF ~InParty("T2Val") !StateCheck("T2Val",CD_STATE_NOTVALID)~ THEN ~I resent that last one! Although it's odd that someone dressed as a mage herself would say that... This doesn't feel right, <CHARNAME>. Be on your guard.~
  == %tutu_var%SILKE ~They are quite dangerous, I assure you! Do not listen to a word they say!~
END

I_C_T SAFE %tutu_var%MARL 13 T2Val_marl
  == T2VALJ IF ~InParty("T2Val") !StateCheck("T2Val",CD_STATE_NOTVALID)~ THEN ~For whatever it's worth, I'm sorry for your loss. People of real courage like your son are all too rare.~
  == %tutu_var%MARL ~Thank ye.~
END

I_C_T SAFE %tutu_var%BERRUN 15 T2Val_berrun
  == T2VALJ IF ~InParty("T2Val") !StateCheck("T2Val",CD_STATE_NOTVALID)~ THEN ~The mines have been cleared, Mayor Ghastkill, and there was no demonic activity. The Cowled Wizards remain ready to assist in the event of further magical danger.~
  == %tutu_var%BERRUN ~Thank you, my lady. The assistance of the Cowled Wizards is greatly appreciated.~
END

I_C_T SAFE %tutu_var%KRUMM 1 T2Val_krumm1
  == T2VALJ IF ~InParty("T2Val") !StateCheck("T2Val",CD_STATE_NOTVALID)~ THEN ~I get the feeling that reasoning with these two was a lost cause.~
  == %tutu_var%KRUMM ~Huh?~
END

I_C_T SAFE %tutu_var%KRUMM 3 T2Val_krumm2
  == T2VALJ IF ~InParty("T2Val") !StateCheck("T2Val",CD_STATE_NOTVALID)~ THEN ~I get the feeling that reasoning with these two was a lost cause.~
  == %tutu_var%KRUMM ~Huh?~
END

//Valerie heads off a potential fight

INTERJECT %tutu_scriptbg%SENDAI 0 T2Valerie_sendai
  == T2VALJ IF ~InParty("T2Val") !StateCheck("T2Val",CD_STATE_NOTVALID)~ THEN ~These northerners travel under the protection of the Cowled Wizards of Amn, citizen. If you would like to levy any further accusations at us, I can tell you where in Athkatla you should lodge a formal complaint.~
  == %tutu_scriptbg%SENDAI ~Hmph. Very well, Cowled Wizard, though I must note your exceptionally poor taste in mercenaries.~
  == T2ValJ ~Good help is hard to find, Lady Argrim. They are discrete, at least.~
  == %tutu_scriptbg%SENDAI ~There is something to be said for that. Very well, you may continue your business.~
  == T2ValJ ~Thank you, my lady, and we will be on our way.~
END
  ++ ~Thank you for handling that, Valerie. That could have gotten ugly.~ EXTERN T2VALJ T2ValJSUgly
  ++ ~While I appreciate what you did, never pretend you're in charge again.~ EXTERN T2VALJ T2ValJSPretend
  ++ ~You don't get to walk away, Sendai. You will pay for mocking us.~ EXTERN T2VALJ T2ValJSPay


APPEND T2VALJ

IF ~~ T2ValJSUgly
SAY ~It's no trouble. I don't like throwing my status around like that, but it was for the best in this case.~
IF ~~ DO ~ActionOverride("DELGOD",EscapeArea())
ActionOverride("ALEXANDER",EscapeArea())
ActionOverride("SENDAI",EscapeArea())~ EXIT
END

IF ~~ T2ValJSPretend
SAY ~Forgive me for helping. I won't do it again.~
IF ~~ DO ~SetGlobal("T2ValFriendship","GLOBAL",3)
ActionOverride("DELGOD",EscapeArea())
ActionOverride("ALEXANDER",EscapeArea())
ActionOverride("SENDAI",EscapeArea())~ EXIT
END

IF ~~ T2ValJSPay
SAY ~<CHARNAME>? Are you *really* going to fight these people just because one snobbish noblewoman insulted you? I'm not afraid of fighting when we have to, but I won't be party to murder.~
++ ~When you put it that way, nevermind. Let's go.~ + T2ValJSGo
++ ~If this woman wanted a fight, she's got one.~ + T2ValJSFight
END

IF ~~ T2ValJSGo
SAY ~Sigh. Forget it. Alright, let's go.~
IF ~~ DO ~ActionOverride("DELGOD",EscapeArea())
ActionOverride("ALEXANDER",EscapeArea())
ActionOverride("SENDAI",EscapeArea())~ EXIT
END

IF ~~ T2ValJSFight
SAY ~Then you fight without me. Nashkel should be warned that you kill over petty slights.~
IF ~~ DO ~LeaveParty() ReputationInc(-2) SetGlobal("T2ValHate","GLOBAL",1) DropInventory() ActionOverride("DELGOD",Attack(Player1))
ActionOverride("ALEXANDER",Attack(Player1))
ActionOverride("SENDAI",Attack(Player1)) EscapeArea()~ EXIT
END

END

I_C_T SAFE %tutu_var%MULAHE 2 T2Val_mulahey
  == T2VALJ IF ~InParty("T2Val") !StateCheck("T2Val",CD_STATE_NOTVALID)~ THEN ~A Strifeleader of Cyric judging by the holy symbol. Don't bother praying, filth. You'll see your god in person momentarily.~
  == %tutu_var%MULAHE ~Your death will be a worthy sacrifice to the Black Sun!~
END

I_C_T SAFE %tutu_var%KISSIQ 1 T2Val_kissiq1
  == T2VALJ IF ~InParty("T2Val") !StateCheck("T2Val",CD_STATE_NOTVALID)~ THEN ~A demonic chicken. Really. We must investigate this foul mystery, wouldn't you say? Uh. Please don't hit me, <CHARNAME>.~
  == %tutu_var%KISSIQ ~Please do! *cluck*~
END

I_C_T SAFE %tutu_var%KISSIQ 2 T2Val_kissiq2
  == T2VALJ IF ~InParty("T2Val") !StateCheck("T2Val",CD_STATE_NOTVALID)~ THEN ~A demonic chicken. Really. We must investigate this foul mystery, wouldn't you say? Uh. Please don't hit me, <CHARNAME>.~
  == %tutu_var%KISSIQ ~Please do! *cluck*~
END

I_C_T SAFE %tutu_var%MELICA 2 T2Val_melicamp
  == T2VALJ IF ~InParty("T2Val") !StateCheck("T2Val",CD_STATE_NOTVALID)~ THEN ~What. <CHARNAME>, if you next bring us to singing, pastel-colored animals, I am returning to Nashkel to get my head looked at by the cleric in the temple.~
  == %tutu_var%MELICA ~Normally I'd agree!~
END

I_C_T %tutu_var%ULCAST 0 T2Val_ulcast
  == T2VALJ IF ~InParty("T2Val") !StateCheck("T2Val",CD_STATE_NOTVALID)~ THEN ~The ghost of Ulcaster himself, if I'm not mistaken. This was the academy he founded and lead a few hundred years ago. Hmmm... I don't know what a cleric would say about this, <CHARNAME>, but from an arcane perspective there's probably something keeping this remnant here. If we're patient, he may give us some indication of why he's still here. Sort of.~
END

I_C_T SAFE %tutu_var%DRASUS 3 T2Val_drasus
  == T2VALJ IF ~InParty("T2Val") !StateCheck("T2Val",CD_STATE_NOTVALID)~ THEN ~I don't know. Did you see how big those spiders in the forest are?~
  == %tutu_var%DRASUS ~Okay, fair point. You're still gonna die anyway.~
END

I_C_T SAFE %tutu_var%DAVAEO 0 T1Val_daveo
  == T2VALJ IF ~InParty("T2Val") !StateCheck("T2Val",CD_STATE_NOTVALID)~ THEN ~Halting and exterminating filth like you is the reason the Cowled Wizards exist, warlock. We will bury you here.~
  == %tutu_var%DAVAEO ~A Cowled Wizard of Amn, meddling in affairs she doesn't understand. How droll, and how short-lived.~
END

I_C_T SAFE %tutu_var%NIEMAI 11 T2Val_nieman
  == T2VALJ IF ~InParty("T2Val") !StateCheck("T2Val",CD_STATE_NOTVALID)~ THEN ~I second that request. Uh. I don't like how violently unstable they're looking...~
  == %tutu_var%NIEMAI ~MAKE IT STOP!~
END

I_C_T SAFE %tutu_var%HANNAH 2 T2Val_hannah
  == T2VALJ IF ~InParty("T2Val") !StateCheck("T2Val",CD_STATE_NOTVALID)~ THEN ~We'd make do quite well, actually, with the right touch of transmutation magic. Men aren't nearly as indispensable as they think they are. You just have to think a little sideways.~
  == %tutu_var%HANNAH ~Now there's a thought! You're right, figuring out the appropriate spell shouldn't be too hard.~
END

I_C_T SAFE %tutu_var%HANNAH 3 T2Val_hannah2
  == T2VALJ IF ~InParty("T2Val") !StateCheck("T2Val",CD_STATE_NOTVALID)~ THEN ~I would like to look into this, <CHARNAME>. Wizards and nymphs... it never ends well. Wizards and attractive women of any description, really.~
  == %tutu_var%HANNAH ~Too true. Young lady, would you care to meet me later for a drink?~
  == T2VALJ ~I'd love to, but we're rather busy at the moment. Meet at the Three Old Kegs next week?~
  == %tutu_var%HANNAH ~A fine idea! I look forward to it.~
END

I_C_T SAFE %tutu_var%OCELLI 1 T2Val_ocelli
  == T2VALJ IF ~InParty("T2Val") !StateCheck("T2Val",CD_STATE_NOTVALID)~ THEN ~Purging the Nashkel mines, the bandits, and the Cloakwood doesn't seem to have cooled things off any. The Iron Throne must be continuing to stir things up here, and maybe in Athkatla as well...~
  == %tutu_var%OCELLI ~There's too much bad blood between Baldur's Gate and Amn. Everyone's sword arms are getting twitchy, and I doubt anything short of divine intervention can calm things down now.~
END

I_C_T SAFE %tutu_var%CYTHAN 2 T2Val_cythandria
  == T2VALJ IF ~InParty("T2Val") !StateCheck("T2Val",CD_STATE_NOTVALID)~ THEN ~Your minions won't save you, witch. You'll barely be a footnote in my report to the Cowled Wizards.~
  == %tutu_var%CYTHAN ~A Cowled Wizard of Amn? Here?! Minions, tear her apart!~
END

I_C_T SAFE %tutu_var%SAREVO 13 T2Val_sarevok
  == T2VALJ IF ~InParty("T2Val") !StateCheck("T2Val",CD_STATE_NOTVALID) Global("T2ValFriendship","GLOBAL",1)~ THEN ~No, Sarevok Anchev. Like father, like son. Death runs in your blood, and will be your fate.~
  == %tutu_var%SAREVO ~Silence, Amnish dog! Choke on the collar of the Cowled Wizards you love so much. This is between <CHARNAME> and I.~
END



// ---------------------------------------
// Valerie Player initiated dialogue
// ---------------------------------------
APPEND T2VALJ
IF ~IsGabber(Player1)~ THEN BEGIN T2ValApproach
  SAY ~What do you want, <CHARNAME>?~
  ++ ~Tell me about the Cowled Wizards.~ + T2ValTalkCW
  ++ ~Your eyes are strangely colored. Is there a story there?~ + T2ValTalkEyes
  ++ ~Is it just me, or are you attracted to women rather than men?~ + T2ValTalkGay
END

IF ~~ T2ValTalkCW
  SAY ~We're an arm of the Amn government, reporting directly to the Council of Six. Our job, loosely, is to regulate and control the use of magic within our borders.~
  ++ ~Why would you feel the need to regulate the use of magic?~ + T2ValTalkControl
  ++ ~So you can't cast magic in Amn without their permission?~ + T2ValTalkLicense
  ++ ~Surely you're not calling them saints.~ + T2ValTalkSaints
  ++ ~What about divine magic?~ + T2ValTalkDivine
  ++ ~You said they raised you.~ + T2ValTalkRaise
END

IF ~~ T2ValTalkControl
  SAY ~In case you haven't noticed, magic is incredibly dangerous. One evil, misguided, or just plain careless mage can inflict horrific amounts of damage. To say nothing of wild magic zones. Oghma might not like it, but our purpose is for the good of Amn.~
  ++ ~So you need their approval to cast spells in Amn?~ + T2ValTalkLicense
  ++ ~You make them sound very noble.~ + T2ValTalkSaints
  ++ ~Do you try to control the use of divine magic, too?~ + T2ValTalkDivine
  ++ ~I think you said they raised you, right?~ + T2ValTalkRaise
  ++ ~Interesting, thank you.~ + T2ValTalkBye
END

IF ~~ T2ValTalkLicense
  SAY ~It's not *that* hard to get a license. You just have to attend a few months' of training sessions, examinations, and interviews. Or, knowing Athkatla, just hand the right person a bag of gold.~
  ++ ~Why go to such lengths to control magic?~ + T2ValTalkControl
  ++ ~You seem to have a very idealstic view of the group.~ + T2ValTalkSaints
  ++ ~What if you want to cast divine magic instead?~ + T2ValTalkDivine
  ++ ~You said you grew up with them, correct?~ + T2ValTalkRaise
  ++ ~I see. Thank you.~ + T2ValTalkBye
END

IF ~~ T2ValTalkSaints
  SAY ~Well, I believe we do a lot more good than harm. I know older wizards go rogue more often than anyone's happy about, and magic's an ugly, dangerous thing. And it's Athkatla. Corruption is something of a given, I'm afraid.~
  ++ ~Why do the Cowled Wizards want to control magic so badly to begin with?~ + T2ValTalkControl
  ++ ~So you need their permission to cast spells in Amn?~ + T2ValTalkLicense
  ++ ~How do they feel about divine magic?~ + T2ValTalkDivine
  ++ ~Funny to think you said they raised you.~ + T2ValTalkRaise
  ++ ~Interesting perspective. Thank you.~ + T2ValTalkBye
END

IF ~~ T2ValTalkDivine
  SAY ~What about divine magic? We can't stop the gods from granting their favors, and our policy is strictly neutral on divine magic. Even about the Talassans, who have a big public temple in Athkatla. I don't know if I fully agree, but we have our hands full as it is.~
  ++ ~Why do you try to regulate magic at all?~ + T2ValTalkControl
  ++ ~Odd. You usually sound quite enamored of them.~ + T2ValTalkSaints
  ++ ~So you need Cowled Wizard approval to cast arcane magic in Amn?~ + T2ValTalkLicense
  ++ ~I believe you said they raised you, right?~ + T2ValTalkRaise
  ++ ~I see. Thank you.~ + T2ValTalkBye
END

IF ~~ T2ValTalkRaise
  SAY ~Like most children with magical talent, yes. It's something along the lines of an orphanage, moving into a university and apprenticeship as you get older. It was certainly better than letting us develop our abilities haphazardly.~
  ++ ~So you approve of the attempt to regulate and control magic?~ + T2ValTalkControl
  ++ ~It sounds like you need the approval of the Cowled Wizards to cast magic in Amn.~ + T2ValTalkLicense
  ++ ~You make them sound like saints.~ + T2ValTalkSaints
  ++ ~How do they regard divine magic?~ + T2ValTalkDivine
  ++ ~Interesting. Thank you.~ + T2ValTalkBye
END

IF ~~ T2ValTalkBye
  SAY ~Certainly. I'm here any time you want to talk.~
  IF ~~ EXIT
END

IF ~~ T2ValTalkEyes
  SAY ~Nothing beyond me being a magical freak, which you know already. I can see very well in the dark, and I'm told they look very pretty. That's about it.~
  IF ~~ EXIT
END

IF ~~ T2ValTalkGay
  SAY ~I do prefer women, yes. Exclusively so. Never did understand the girls who found men attractive. Then again, not like I had a lot of time for dating, as Emma and I found out. Before you ask, she's my ex-girlfriend. We broke up a couple of years ago due to being teenagers and thus by definition idiots.~
  IF ~~ EXIT
END

END