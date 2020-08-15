// --------------------------------------------
// Valerie Banters
// --------------------------------------------
BEGIN ~BT2VAL~

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
~It is curious to see a Cowled Wizard outside of Amn. Your organization has seemed quite occupied with internal affairs in the past.~ DO ~SetGlobal("T2ValJahTalk1","GLOBAL",1)~
== BT2VAL IF ~!Dead("mulahey")~ THEN ~They say there are demons in the mines. The army is ill-equipped to deal with arcane matters.~
== BT2VAL IF ~Dead("mulahey")~ THEN ~Rumor said there were demons in the mines. The army is ill-equipped to deal with arcane matters.~
== %JAHEIRA_BANTER% ~They sent you to deal with rumors of demons? A girl barely out of her apprenticeship?~
== BT2VAL IF ~!Dead("mulahey")~ THEN ~I'm not expected to 'deal with' them, just confirm the presence or absence of demons. If there are real demons, the Cowled Wizards and Order of the Radiant Heart will move in.~
== BT2VAL IF ~Dead("mulahey")~ THEN ~I wasn't expected to 'deal with' them, just confirm the presence or absence of demons. If there were real demons, the Cowled Wizards and Order of the Radiant Heart would have moved in.~
== %JAHEIRA_BANTER% ~Do you know much of demons?~
== BT2VAL ~I know I should probably run away very fast if I meet one.~
== %JAHEIRA_BANTER% ~The Cowled Wizards taught you well, child.~
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
~Jaheira, you know a lot about nature, right? And the critters that live in it?~ DO ~SetGlobal("T2ValJahTalk2","GLOBAL",1)~
== %JAHEIRA_BANTER% ~I do, though I do not think 'critters' an appropriate name for nature's denizens.~
== BT2VAL ~All right, the animals and monsters and other things that live in it. Are... are abilities like mine common in nature?~
== %JAHEIRA_BANTER% ~You speak of your magical abilities, I presume.~
== BT2VAL ~I do. The... Cowled Wizards didn't encourage trying to find out where my abilities come from.~
== %JAHEIRA_BANTER% ~Few of nature's creatures come by magical abilities naturally. Some are the result of deliberate magical experimentation, others live in a region engulfed in powerful magic and are changed by it. A few are the result of crossbreeding with such magical creatures.~
== BT2VAL ~I see. I guess.~
== %JAHEIRA_BANTER% ~That was not the answer you wanted.~
== BT2VAL ~No. I got called a freak when I started casting spells. I had hoped...~
== %JAHEIRA_BANTER% ~People will always fear what they do not understand.~
== BT2VAL ~...Guess that's why I scare myself a lot of the time.~
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
~I never did thank you for talking to me, about my abilities.~ DO ~SetGlobal("T2ValJahTalk3","GLOBAL",1)~
== %JAHEIRA_BANTER%~Your fears are only natural, Valerie. Do not let your fear decide your actions.~
== T2VAL ~I try not to. Thank you, Jaheira.~
== %JAHEIRA_BANTER% ~You are welcome.~
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
~Ack!~ DO ~SetGlobal("T2ValJahTalk4","GLOBAL",1)~
== %JAHEIRA_BANTER% ~That was only a grass snake, child. You should not be jumping at odd movements in the forest.~
== BT2VAL ~I hate snakes. Micah, one of my fellow apprentices, had one as a familiar... kept making it slither into my bed or onto my lab table. Ugh.~
== %JAHEIRA_BANTER% ~Snakes have their place in nature, Valerie. They feed on a wide range of pests, and most are quite harmless unless provoked.~
== BT2VAL ~I know, I know. Doesn't change that they're scaly and slither-y and make my skin crawl when I see one.~
== %JAHEIRA_BANTER% ~*Sigh* This may take more work than I had thought.~
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
Global("T2ValKhaTalk1","GLOBAL",0)~
THEN BT2VAL T2ValKhaTalk1
~Khalid, has anyone told you how amazing you are in a fight?~ DO ~SetGlobal("T2ValKhaTalk1","GLOBAL",1)~
== %KHALID_BANTER% ~Jaheira has told me that often. Hehe. I rarely hear it from anyone else.~
== BT2VAL ~You're, uh, the way you are, and you still charge into the fray. Says a lot, I think.~
== %KHALID_BANTER% ~I... I do not like fighting. It is what I know how to do.~
== BT2VAL ~Thank you for doing so all the same, and not just because you're usually between nasty critters and my unarmored robes.~
== %KHALID_BANTER% ~Heh-hehe. You're welcome.~
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
~Thanks for coming with us, Khalid. You never run from a fight, do you?~ DO ~SetGlobal("T2ValKhaTalk2","GLOBAL",1)~
== %KHALID_BANTER% ~I try to not leave a friend in danger.~
== BT2VAL ~Even when they keep dragging you into dangerous situations?~
== %KHALID_BANTER% ~(Khalid smiles) Even when.~
== BT2VAL ~I'm just saying, I'd hate for you to get hurt or worse because of us.~
== %KHALID_BANTER% ~Do not worry, Valerie. I have no regrets.~
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
Global("T2ValAjTalk1","GLOBAL",0)~
THEN BT2VAL T2ValAjTalk1
~Sir Ajantis? Lord Keldorn Firecam's squire? What are you doing on the Sword Coast?~ DO ~SetGlobal("T2ValAjTalk1","GLOBAL",1)~
== %AJANTIS_BANTER% ~I am sorry, lady Lysander, but have we met before?~
== BT2VAL ~No, but Lord Firecam's exploits are legendary in the church of Torm. People thought it was very odd that he would take a paladin of Helm as his squire. Last I heard, though, Lord Keldorn was still in Athkatla.~
== %AJANTIS_BANTER% ~I see. Surely you have noticed there is an evil taint to the Sword Coast. Lord Firecam gave me leave to pursue this matter.~
== BT2VAL ~Ah. The Cowled Wizards didn't call it an evil taint, but the rumors of a demon incursion in the Nashkel mines did get our attention.~
== %AJANTIS_BANTER% ~I imagine it would. As it is, the Cowled Wizards prefer to be the ones summoning demons themselves, I would say.~
== BT2VAL ~Uh... no. The last time a Cowled Wizard summoned demons, his last name was Corthala and I'm sure you can guess what happened after that.~
== %AJANTIS_BANTER% ~It was a jest, lady Lysander, though I confess I only know the surname Corthala in passing.~
== BT2VAL ~A joke? From a paladin? Uh... nevermind. Good to meet you and all that. Mind giving me a minute for my blush to fade?~
== %AJANTIS_BANTER% ~Of course, lady Lysander. Take your time.~
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
~Lady Lysander, am I to understand that you know Lord Keldorn?~ DO ~SetGlobal("T2ValAjTalk2","GLOBAL",1)~
== BT2VAL ~Everyone who attends service at the temple of Torm in Athkatla knows Lord Keldorn. How could we not? He's an exemplar of everything we hope to be.~
== %AJANTIS_BANTER% ~Everything you hope to be? It is curious that a sorceress would hold a paladin in such high regard, my lady.~
== BT2VAL ~The place of the strong is between the weak and those who would prey upon them. There are many kinds of strength, and all can serve the cause of righteousness.~
== %AJANTIS_BANTER% ~I am glad we are of like mind, lady Lysander.~
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
~Ever feel like we're in a storybook fantasy, Sir Ajantis?~ DO ~SetGlobal("T2ValAjTalk3","GLOBAL",1)~
== %AJANTIS_BANTER% ~Indeed I do, but an evil one. A mysterious crisis in the land, assassins at every turn, and the servants of righteousness trying to blaze a path through it all.~
== BT2VAL ~Makes me wonder if there are going to be books or stories about this someday. <CHARNAME> will get all the glory, of course.~
== %AJANTIS_BANTER% IF ~ReputationLT(Player1,10)~ THEN ~Fortunately. I would not like my association with <CHARNAME> to be long remembered.~
== %AJANTIS_BANTER% IF ~ReputationGT(Player1,9) ReputationLT(Player1,14)~ THEN ~<PRO_HESHE>deserves it, if we will make a difference for the better in this troubled land.~
== %AJANTIS_BANTER% IF ~ReputationGT(Player1,13)~ THEN ~<PRO_HESHE> deseves it. We have made a difference for the better in this troubled land.~
== BT2VAL ~Oh, I don't mind <CHARNAME> taking all the attention. Better <PRO_HIMHER> than me.~
== %AJANTIS_BANTER% ~A wizard with humility? I have met several Cowled Wizards that would not show such modesty.~
== BT2VAL ~...Shutting up now.~
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
~Sir Ajantis, I'm trying to understand how you think and believe, but I'm coming up empty.~ DO ~SetGlobal("T2ValAjTalk4","GLOBAL",1)~
== %AJANTIS_BANTER% ~What precisely troubles you, lady Lysander?~
== BT2VAL ~How can you be so blind?~
== %AJANTIS_BANTER% ~I beg your pardon, my lady?~
== BT2VAL ~Helm cares nothing for good, Ajantis. Torm teaches that blind obedience is mere zealotry, and one must always question and reform unjust laws.~
== %AJANTIS_BANTER% ~You dare insult my service to Helm?~
== BT2VAL ~Law and good are not the same thing, Ajantis! They should serve the same end, ideally, but not all laws are just.~
== %AJANTIS_BANTER% ~Helm's are.~
== BT2VAL ~Have you ever in your life considered the possibility that you're wrong?~
== %AJANTIS_BANTER% ~Have you?~
EXIT


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
~Be careful with that spellbook, Imoen. Magic is alluring, but it's very dangerous.~ DO ~SetGlobal("T2ValImTalk1","GLOBAL",1)~
== %IMOEN_BANTER% ~Come on! How bad could it be, miss I-don't-need-a-spellbook?~
== BT2VAL ~Honest answer or sarcastic?~
== %IMOEN_BANTER% ~Hmmm... both!~
== BT2VAL ~Imoen, I'm saying this for your own safety. Manipulating the Weave is dangerous as all get out if you don't know what you're doing. You could easily disintegrate yourself. Or worse, turn your hair into some pastel color.~
== %IMOEN_BANTER% ~Haha! Wait... you're serious, aren't you?~
== BT2VAL ~I've seen both happen, Imoen. It's a rare group of apprentices who all survive to graduate. Although Natalie changed her *skin* color rather than her hair...~
== %IMOEN_BANTER% ~Wow. Never know what'll happen till you try it, though!~
== BT2VAL ~You are playing with forces beyond your understanding, Imoen. I'll pray you survive.~
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
~You been talking a lot about how magic works, Val. How do you know so much about casting spells? I thought you just waved your hands and blasted people.~ DO ~SetGlobal("T2ValImTalk2","GLOBAL",1)~
== BT2VAL ~It's a little more complicated than that, but that actually *is* more or less how I cast spells. Unlike some people I could name, though, I study.~
== %IMOEN_BANTER% ~Hehe. Alright, alright. Think I could learn do cast spells like you do? Tryin' to learn all these incantations and movements is pretty boring.~
== BT2VAL ~They're necessary to manipulate the Weave. Sorcerers like me are born, not trained.~
== %IMOEN_BANTER% ~You're such a killjoy. Won't even let a girl dream!~
== BT2VAL ~Magic isn't a toy, Immy.~
== %IMOEN_BANTER% ~Hey! Only <CHARNAME> gets to call me that!~
== BT2VAL ~Imoen, what do you think you're - oh, Torm! Ahahahaha! - stop th-!~
== %IMOEN_BANTER% ~Hee hee. Nothin' like a tickle attack to bring a mighty mage to her knees!~
== BT2VAL ~*Panting* Imoen... I will... have... my... revenge...~
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
~Hey, where'd my spellbook go?~ DO ~SetGlobal("T2ValImTalk3","GLOBAL",1)~
== BT2VAL ~What, did it grow legs and walk away?~
== %IMOEN_BANTER% ~Maybe. Nah - there it is! How'd it get all the way over there?~
== BT2VAL ~I still say it walked.~
== %IMOEN_BANTER% ~Hah hah. Now get back over here little - hey, it's floating away!~
== BT2VAL ~How odd.~
== %IMOEN_BANTER% ~Get back here, spellbook! You're mine! No, don't go floating up into the air!~
== BT2VAL ~You have to be smarter than the book, Imoen.~
== %IMOEN_BANTER% ~Not funny! Get down here!~
== BT2VAL ~Your wish is my command.~
== %IMOEN_BANTER% ~What - ow! Hey! You've been making little movements with your fingers this whole time! No fair!~
== BT2VAL ~A little telekinetic cantrip goes a long way, doesn't it?~
== %IMOEN_BANTER% ~I knew it! You... you - oh, alright! Hee hee. I guess I was askin' for it.~
== BT2VAL ~I did tell you I'd have my revenge, didn't I?~
== %IMOEN_BANTER% ~I'll forgive ya on one condition.~
== BT2VAL ~Oh?~
== %IMOEN_BANTER% ~You teach me that spell! The things I could nab with that...~
== BT2VAL ~You're the would-be wizard, Imoen. Learn it yourself.~
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
~Huh. Val, what's with this weird stuff in your notebook? I think I've seen this stuff in Candlekeep before, but I sure don't know what it is.~ DO ~SetGlobal("T2ValImTalk4","GLOBAL",1)~
== BT2VAL ~It's written in Celestial, Imoen, and you aren't supposed to be reading it. I lent you my notebook only so you could study my notes on magic.~
== %IMOEN_BANTER% ~Celestial, huh? What're you doing writing in that?~
== BT2VAL ~Writing notes. Don't give me that look, Celestial is very easy to learn, and infinitely more expressive than any other language I've seen.~
== %IMOEN_BANTER% ~You call an extraplanar language easy?~
== BT2VAL ~I don't get you. This stuff rolls right off the tongue.~
== %IMOEN_BANTER% ~If you say so, Val. I say you're a freak.~
== BT2VAL ~Everyone else just studied elven in hopes of talking their way into an elf's pants. Then again, you're not the first to call me a freak.~
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
Global("T2ValVTalk1","GLOBAL",0)~
THEN %VICONIA_BANTER% T2ValVTalk1
~Ah, I see the little sorceress' eyes still smolder when she gazes at me.~ DO ~SetGlobal("T2ValVTalk1","GLOBAL",1)~
== BT2VAL ~Saving you from the Flaming Fist was a mistake, Nightcloak. Expect no misguided sympathy from me.~
== %VICONIA_BANTER% ~Ah, so you know of Shar's faithful.~
== BT2VAL ~Wretched, depraved, corrupt... Yes, you could say I know of Shar's faithful. They do keep Athkatla's Silverstars busy.~
== %VICONIA_BANTER% ~Curious you condemn me for my prayers and not my race. Are you not afraid of the drow, little sorceress?~
== BT2VAL ~I do fear the drow, but I do not fear *you.* It's hard to be scared by someone who owes you her life.~
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
~Such a curious gift of yours, rivvil. Slaves with the gift of sorcery are always pursued with great interest.~ DO ~SetGlobal("T2ValVTalk2","GLOBAL",1)~
== BT2VAL ~I don't care what the drow do, Viconia. I have no plans of traveling to the Underdark.~
== %VICONIA_BANTER% ~It is a dangerous trait in a slave, yet also quite valuable if the slave can be properly broken.~
== BT2VAL ~I still don't care.~
== %VICONIA_BANTER% ~Ah, but the drow view is not unique, I think. What of these Cowled Wizards you serve?~
== BT2VAL ~If you're about to insinuate that I'm a slave to the Cowled Wizards, my magic makes me an interesting slave to them like it would to the drow, blah blah blah, I *really* still don't care.~
== %VICONIA_BANTER% ~Do you care so much for your chains, sorceress?~
== BT2VAL ~Duty is not a shackle.~
== %VICONIA_BANTER% ~Hahahaha. As you wish, rivvil.~
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
~Stop sitting on the edge of the camp, Viconia. You're not doing a good job of hiding. Might as well close to the fire where it's warm.~ DO ~SetGlobal("T2ValVTalk3","GLOBAL",1)~
== %VICONIA_BANTER%~Very curious, rivvil. Your night vision should have been destroyed by looking into the fire so. Your argent eyes are more than they appear.~
== BT2VAL ~Congratulations. You have successfully figured out that I'm a sorceress and have unnatural abilities.~
== %VICONIA_BANTER% ~Or perhaps more than that. Your blood runs strongly, sorceress. You are worth much to your owners.~
== BT2VAL ~Whereas you are worth nothing to anyone, Nightcloak, even to your goddess.~
== %VICONIA_BANTER% ~Hahaha! I was wondering what it would take to draw the mewling kitten's claws. Your roar is all out of proportion to your bite.~
== BT2VAL ~Why do I even bother trying to talk to you?~
== %VICONIA_BANTER% ~Because you appear to enjoy futility. Now leave me be.~
EXIT

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
~It is good to see you eating properly for once, mageling! The Cowled Wizards must have forced you to starve!~ DO ~SetGlobal("T2ValBTalk1","GLOBAL",1)~
== BT2VAL ~I'm increasing my diet because I'm getting a lot more exercise, but I'm not going to stuff my face like you do.~
== %BRANWEN_BANTER% ~You are tall, but it is all skin and bones! You look like a stripling lad, not a proper woman!~
== BT2VAL ~Branwen, do you *really* have to talk to me about this in earshot of the others?~
== %BRANWEN_BANTER% ~You must continue to eat and fill out those robes, girl! No man wants a woman who does not have proper bosoms and whose ribs show!~
== BT2VAL ~We are not having this conversation.~
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
~Branwen, could you please stop challenging everyone in earshot to arm-wrestling competitions whenever we stay at an inn? They look at us oddly already.~ DO ~SetGlobal("T2ValBTalk2","GLOBAL",1)~
== %BRANWEN_BANTER% ~Why should I cease? It is not so glorious as battle, but every contest of strength and might honors Lord Tempus!~
== BT2VAL ~...Moonshae women really are a different breed, aren't they?~
== %BRANWEN_BANTER% ~Life is glorious, as is war. Both are to be relished.~
== BT2VAL ~For their own sake?~
== %BRANWEN_BANTER% ~Why else? The simplest pleasures are the finest, mageling.~
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
Global("T2ValXaTalk1","GLOBAL",0)~
THEN BT2VAL T2ValXaTalk1
~So, Xan, how are we doomed today? Bandits? Giant spiders? A legion of xvarts?~ DO ~SetGlobal("T2ValXaTalk1","GLOBAL",1)~
== %XAN_BANTER% ~What does it matter? The form our doom takes does not change the certainty of it.~
== BT2VAL ~You sure you're not a cleric of Sehanine Moonbow? She's the elven goddess of death, if I remember my classes right.~
== %XAN_BANTER% ~Your studies do you credit, sorceress, but one need not be a Starsinger to know our doom.~
== BT2VAL ~I don't get why knowing your death is inevitable is cause for depression.~
== %XAN_BANTER% ~You wouldn't. Human lives are such fleeting things. You do not comprehend the value of what should be centuries, cut short.~
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
~Your magical abilities are oddly appropriate, sorceress. Accomplishing with force of will what my people manage through artistry and years of study.~ DO ~SetGlobal("T2ValXaTalk2","GLOBAL",1)~
== BT2VAL ~Don't look at me like that, Xan. I didn't exactly have a choice about my gift.~
== %XAN_BANTER% ~Yet can you truly say you would rather have been born without it?~
== BT2VAL ~I don't know what my life would be like without it. I'm happy enough with my current life, so why worry about what could have been?~
== %XAN_BANTER% ~You are very human.~
== BT2VAL ~Are you flirting with me, Xan?~
== %XAN_BANTER% ~No.~
== BT2VAL ~*sigh* I was joking.~
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
~Xan, are magical abilities like mine common among the elves?~ DO ~SetGlobal("T2ValXaTalk3","GLOBAL",1)~
== %XAN_BANTER% ~They have been recorded on occasion. Rarely, but not unknown.~
== BT2VAL ~Any idea where they come from?~
== %XAN_BANTER% ~Exposure to intense magical energies, intimate contact with magically powerful entities, and similar phenomena. It is often hereditary, if recessive.~
== BT2VAL ~Interesting. My parents had no interaction with magic, as far as I know. Hmmm...~
== %XAN_BANTER% ~You are unwilling to consider that you may be happier if you do not investigate?~
== BT2VAL ~Why would it make me unhappy?~
== %XAN_BANTER% ~Have you ever heard of the fey'ri, Valerie Lysander?~
== BT2VAL ~Hmmm... I think I heard the name during my classes, but I couldn't tell you what it is.~
== %XAN_BANTER% ~*They* are known for their sorcerous gifts. Look them up, and you may learn to leave well enough alone.~
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
Global("T2ValCoTalk1","GLOBAL",0)~
THEN %CORAN_BANTER% T2ValCoTalk1
~I did not dare imagine that the sun's rays would take such beautiful form, Valerie. Might I linger a while yet in your glow?~ DO ~SetGlobal("T2ValCoTalk1","GLOBAL",1)~
== BT2VAL ~Uh, um, sorry. I, uh, don't find elves very attractive.~
== %CORAN_BANTER% ~By your words, you must be one of Sune's fanatics, yet your blush and quickness of breath suggest you don't believe your own words.~
== BT2VAL ~Calm down, Valerie, slow and deep breaths, stop blushing... Coran, you have the body of a teenage boy, and the attitude of the same. If I wanted a teenage boy, I'd be dating one.~
== %CORAN_BANTER% ~Do you wound all suitors with such biting arrows?~
== BT2VAL ~Suitor?! Uh. Um. No. Go away. Please?~
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
~So are all elves as obsessed with sex as you are, Coran, or are you an exception to the rule?~ DO ~SetGlobal("T2ValCoTalk2","GLOBAL",1)~
== %CORAN_BANTER% ~Not half as obsessed with sex as you are, dear sorceress.~
== BT2VAL ~I'm not the one flirting with anything that has breasts.~
== %CORAN_BANTER% ~Ah, but you are the one who sees an appreciation of beauty and passion and immediately jumps to the bedroom.~
== BT2VAL ~Wait, what?~
== %CORAN_BANTER% ~Physical intimacy is always enjoyable, but life is in zest and passion, not simply grunting and sweating. Your rebukes are a poor disguise for your curiosity.~
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
~Do my eyes deceive me, dear sorceress, or have I noticed an interest in female beauty most unbecoming of a woman in you?~ DO ~SetGlobal("T2ValCoTalk3","GLOBAL",1)~
== BT2VAL ~I am a sorceress, Coran. I am a freak by definition. What's one more unnatural interest?~
== %CORAN_BANTER% ~I was not mocking you, quite the contrary. Hanali Celanil delights in passion and love of beauty, no matter whose beauty that might be.~
== BT2VAL ~Wow. I thought the rumors that all elves didn't care who they slept with were just that. No wonder there are so many elves in the brothels of Athkatla.~
== %CORAN_BANTER% ~Is our sorceress implying firsthand knowledge of such places, hmmm?~
== BT2VAL ~(Valerie blushes deeply) Uh, not in that way. Part of my apprenticeship was doing paperwork and basic lab work for a full Cowled Wizard, and there was an incident involving a conjurer working in the brothels.~
== %CORAN_BANTER% ~Oh, my. I never thought of that...~
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
~You know, Sune and Hanali Celanil are rivals, but friendly ones. Beauty and passion are to be celebrated, no matter the race. Why will you not join me, fair maiden?~ DO ~SetGlobal("T2ValCoTalk4","GLOBAL",1)~
== BT2VAL ~Shocking as this revelation might be, Faerun does not revolve around your pants and the contents thereof.~
== %CORAN_BANTER% ~Haha! She brandishes her rapier at last!~
== BT2VAL ~At least I have one, in any sense of the word.~
== %CORAN_BANTER% ~Why, you sound like you've been practicing your wit, fair Valerie.~
== BT2VAL ~You're not a very good teacher, Coran. I had to learn wit from less, shall we say, distracted tutors.~
== %CORAN_BANTER% ~Fair enough! Dear Winsome Rose, what have I unleashed upon the Realms?~
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
Global("T2ValDTalk1","GLOBAL",1)
Global("T2ValMinscTalk1","GLOBAL",0)~
THEN %MINSC_BANTER% T2ValMinscTalk1
~As Boo understands it, you are one of this land's wychlaran, yes?~ DO ~SetGlobal("T2ValMinscTalk1","GLOBAL",1)~
== BT2VAL ~If I understand what a wychlaran is correctly, then yes.~
== %MINSC_BANTER% ~See, Boo? I told you this land was not so strange as you thought!~
== BT2Val ~Erm, Minsc? There are men in the Cowled Wizards, too.~
== %MINSC_BANTER% ~Aye, vremyonni. We would like to visit this Amn of yours. Are there berserkers and ale in Amn?~
== BT2Val ~Ale, yes. Berserkers... uh, I'm sure you could find a few.~
== %MINSC_BANTER% ~Then to Amn we shall go! Boo, we shall see the mettle of Amn's lodges!~
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
~Minsc, are you all right? You don't need to always charge to the front of the battle.~ DO ~SetGlobal("T2ValMinscTalk2","GLOBAL",1)~
== %MINSC_BANTER% ~I am a warrior of Rasheman! Warriors of Rasheman exist to fight evil, and evil exists to be chopped into tiny pieces for Boo to nibble on!~
== BT2VAL ~Even so, wouldn't you prefer a bow? You almost always end up taking a beating.~
== %MINSC_BANTER% ~Have no fear, Amnish witch. You may continue to take refuge behind me in battle.~
== BT2Val ~If you're sure you're okay with it.~
== %MINSC_BANTER% ~I fight evil with my sword arm and my boot! Boo fights evil with his sharp teeth! You fight evil with magic! It is all fine in the eyes of the Three!~
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
~Valerie, Boo has noticed you often laughing at us in battle.~ DO ~SetGlobal("T2ValMinscTalk3","GLOBAL",1)~
== BT2VAL ~You're funny, Minsc. Watching a Rashemar giant and his pet hamster charge into battle isn't something you see every day in these lands.~
== %MINSC_BANTER% ~You see, Boo? I told you we are inspiring figures in battle!~
== BT2VAL ~I think you're a few bats short of a belfry, Minsc. It does seem to work for you, though.~
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
Global("T2ValDTalk1","GLOBAL",0)~
THEN %DYNAHEIR_BANTER% T2ValDTalk1
~I am given to understand thou art a wychlaran of thy land, Valerie.~ DO ~SetGlobal("T2ValDTalk1","GLOBAL",1)~
== BT2VAL ~I'm sorry, but what's a wychlaran? All I know about Rasheman is that it's a very, very long way from Amn.~
== %DYNAHEIR_BANTER% ~In Rasheman, girl-children with skill in magic are taken by the Hathran and taught the ways of the wychlaran. Outsiders call us witches. 'Tis a high station among my people.~
== BT2VAL ~I suppose you could call me an Amnish wychlaran, then. It's a mixed blessing, though. We have a healthy fear of magic in Amn, and the Cowled Wizards wield magic while protecting our people from the same.~
== %DYNAHEIR_BANTER% ~'Tis a sensible reaction. I suspect our lands mayhap have more in common than one might think.~
== BT2VAL ~Anything's possible, I suppose.~
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
~What's it like, living in a place where magic is actually accepted? You make it sound like the wychlaran are loved in Rasheman. The Cowled Wizards are not so fortunate in Amn.~ DO ~SetGlobal("T2ValDTalk2","GLOBAL",1)~
== %DYNAHEIR_BANTER% ~'Tis a great honor to be chosen by the Hathran, yet can often be a difficult burden. Even an ethran, the lowest of the wychlaran, is expected to lead.~
== BT2VAL ~True. The place of the strong is between the weak and those who would prey upon them. Still... Rasheman sounds like an amazing place.~
== %DYNAHEIR_BANTER% ~Sadly, 'tis less welcoming of outsiders than I sense thou wouldst wish. I suspect thy place is here.~
== BT2VAL ~Yeah, I know. Doesn't stop me from dreaming, though.~
== %DYNAHEIR_BANTER% ~Thou wouldst consider thyself a dreamer?~
== BT2VAL ~I suppose I would.~
== %DYNAHEIR_BANTER% ~Dreams doth have power, Valerie, even those that lack the seer's touch.~
== BT2VAL ~Maybe. I believe that dreams mean little unless you can use them to change reality.~
== %DYNAHEIR_BANTER% ~'Tis not a bad thing to believe. Dreams have power, but all must eventually wake.~
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
~Dynaheir, do the Rashemi know much of powers like mine?~ DO ~SetGlobal("T2ValDTalk3","GLOBAL",1)~
== %DYNAHEIR_BANTER% ~If thou speakest of thy proclivity for magic, I know no more than thee, I suspect.~
== BT2VAL ~Figures. Thanks anyway.~
== %DYNAHEIR_BANTER% ~Wherefore doth it concern thee so?~
== BT2VAL ~Magic is power, Dynaheir. I don't understand my magic, and can't completely control it. I want to understand it so I can control it.~
== %DYNAHEIR_BANTER% ~Valerie, seekest thou power over thyself, or power over others?~
== BT2VAL ~I don't want power at all, but I'm stuck with it. I guess that means I want power over myself.~
== %DYNAHEIR_BANTER% ~If thou wouldst permit, I would fain teach thee techniques to help thee center thyself.~
== BT2VAL ~You'd do that for an outsider?~
== %DYNAHEIR_BANTER% ~*Dynaheir laughs* These are not secrets of the wychlaran. I would not reveal that such secrets existed.~
== BT2VAL ~I'd like that, then. Thank you, Dynaheir.~
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
~Dost thou feel more in control of thyself?~ DO ~SetGlobal("T2ValDTalk4","GLOBAL",1)~
== BT2VAL ~Not really.~
== %DYNAHEIR_BANTER% ~Thou thinkest too much of thyself. Canst thou truly not forget thyself?~
== BT2VAL ~What's that supposed to mean?~
== %DYNAHEIR_BANTER% ~That thou art too conscious of thyself. Thou wishest not to look the fool.~
== BT2VAL ~Of course I don't. Foolish mistakes get people killed.~
== %DYNAHEIR_BANTER% ~Not all of the time. Thou treatest all of life as a battle of life against death. Life doth hold more than that.~
== BT2VAL ~I don't want to make mistakes.~
== %DYNAHEIR_BANTER% ~Mistakes are part of life, Valerie. The perfection thou seekest is an impossible task. Thou must learn to live.~
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
Global("T2ValETalk1","GLOBAL",0)~
THEN BT2Val T2ValETalk1
~So you're a Red Wizard of Thay, correct?~ DO ~SetGlobal("T2ValETalk1","GLOBAL",1)~
== %EDWIN_BANTER% ~Congratulations are in order. The mageling demonstrates basic skills of observation.~
== BT2VAL ~Gee, thanks. You certainly proclaim your identity loudly enough.~
== %EDWIN_BANTER% ~True power has no need to hide among the lesser folk like a certain organization of witches I could name.~
== BT2Val ~I agree. The better to be recognized and respected for the power we wield to defend those less magically gifted.~
== %EDWIN_BANTER% ~No, no, no. The better to be recognized and feared for the power we wield to rule those less magically gifted.~
== BT2Val ~Uh, I was giving you the benefit of the doubt, Edwin. I've read about the Red Wizards.~
== %EDWIN_BANTER% ~Bah! Another simpering coward. I had expected more of you, Cowled Wizard.~
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
~The Second Law of Transmutation.~ DO ~SetGlobal("T2ValETalk2","GLOBAL",1)~
== BT2Val ~The magical energy needed to reverse a transmutation must equal or exceed the energy used to cause the transformation. Krassus' Maxim.~
== %EDWIN_BANTER% ~It is impossible to determine whether any given spell will survive the death of its caster. Bah! Larloch's Postulate.~
== BT2Val ~I know this one... As magical power contained within one body approaches infinity, it also approaches divinity. The Blackstaff Axiom.~
== %EDWIN_BANTER% ~No power is unique. Everything you can do, so can someone else. Even that fool has his moments of wisdom. Nineteenth Rule of Azuth.~
== BT2Val ~Nineteenth rule... nineteenth rule... uh...~
== %EDWIN_BANTER% ~Only the will of a sentient mind can shape magic! Bah! You sorcerers are a disgrace to mages everywhere. You have no appreciation for the details of power.~
== BT2Val ~I know, Edwin. I've tried studying magic the normal way. I even understood most of what you wrote in your spellbook when you let me have a look. It's just... how do you *remember* all of that?~
== %EDWIN_BANTER% ~With sufficient dedication to the craft and the ends I use it for. Bah. Why did I ever decide you might be worth teaching?~
== BT2Val ~Because I appealed to your titanic ego? Edwin, you were beaming when I asked if I could learn from your formidable talent for and experience with magic. I thought you might know something the Cowled Wizards didn't that I could then pass on to them.~
== %EDWIN_BANTER% ~(Note to self: no do-gooders for apprentices in the future. More trouble than they're worth.)~
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
~So, what do you think of my treatise?~ DO ~SetGlobal("T2ValETalk3","GLOBAL",1)~
== %EDWIN_BANTER% ~It is acceptable, for a half-witted Amnish sorceress. Your reasoning and methodology are sound, and I applaud your recognition of the remarkable strides Thayvians have made in arcane science.~
== BT2Val ~You are feared for a reason. And my thesis?~
== %EDWIN_BANTER% ~Nothing new to the Red Wizards, but insightful for this land. Many see the Weave as an energy to be manipulated. Few outside Thay realize it is a force that then acts upon energy.~
== BT2Val ~From what I've gathered and tested, magic is little different from gravity, or any other mundane physical force. Might magic genuinely be a fundamental force of reality that we have learned to manipulate?~
== %EDWIN_BANTER% ~You suggest that magic is but a mundane science?~
== BT2Val ~I do. It's one we know so much more about and can do a lot of interesting things with, but I wonder what mundane sciences might do if we gave them the same effort.~
== %EDWIN_BANTER% ~Bah! It is magic that shapes this world.~
== BT2Val ~You're the Red Wizard.~
== %EDWIN_BANTER% ~Never forget it, mageling.~
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
~For a self-righteous do-gooder and sorceress besides, you are acceptable intellectual company.~ DO ~SetGlobal("T2ValETalk4","GLOBAL",1)~
== BT2Val ~You're an arrogant and petty tyrant with no people skills, but I acknowledge that I've learned a lot about magic from you.~
== %EDWIN_BANTER% ~As well you should. Were your beloved sense of right and wrong sufficiently pliable, you would be acceptable material for a Thayvian apprentice.~
== BT2Val ~Emphasis on the material. I've heard stories about the academies of Thay. Brilliant, yes, but places where human life has very little value.~
== %EDWIN_BANTER% ~Human lives are a renewable resource.~
== BT2Val ~...You're evil, Edwin.~
== %EDWIN_BANTER% ~So you claim. History is written by the victors.~
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
Global("T2ValXzTalk1","GLOBAL",0)~
THEN BT2Val T2ValXzTalk1
~Ow! What the hell was that for?!~ DO ~SetGlobal("T2ValXzTalk1","GLOBAL",1)~
== %XZAR_BANTER% ~One moment. Please hold still while I collect my sample.~
== BT2Val ~Like hell I will! What do you want with my blood?!~
== %XZAR_BANTER% ~How very inconsiderate of you! You just destroyed a perfectly good sample of sorcerous blood! Do you have any idea how potent a reagent the blood of a sorcerer is?~
== BT2Val ~No, and I don't want to know. <CHARNAME>, are you *sure* you're okay with this lunatic?~
== %XZAR_BANTER% ~Now, now. We're all friends here, aren't we?~
== BT2Val ~Ugh. New rule: minimum five feet of distance between me and Xzar at all times...~
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
~Valerie, my dear, I have a few scientific inquiries for you.~ DO ~SetGlobal("T2ValXzTalk2","GLOBAL",1)~
== BT2Val ~I want nothing to do with your idea of science.~
== %XZAR_BANTER% ~What was your mother?~
== BT2Val ~Huh? She's human.~
== %XZAR_BANTER% ~That does not match the empirical evidence. Well, that or your father caroused quite raucously with certain unusual summoned creatures primarily found in the-~
== BT2Val ~Simply put, you're mad.~
== %XZAR_BANTER% ~Am I? Or are you the mad one? You call yourself human. You're not. Blood doesn't lie, you know. It's really quite honest. Not the best conversationalist, but a terrific listener and wouldn't lie if you bit its toes off.~
== BT2Val ~I know I'm a sorcerer. Which means one of my ancestors wasn't human. Or at least, one of them was warped by magic. Just... drop it, please?~
== %XZAR_BANTER% ~Who am I to deny a lady's request?~
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
~Xzar, what is up with you? Sometimes you're pestering us for stories about rabbits, sometimes you're trying to perform hideous experiments over dinner, sometimes you seem almost sane.~ DO ~SetGlobal("T2ValXzTalk3","GLOBAL",1)~
== %XZAR_BANTER% ~If you were mad, would you know it? Or would everyone else around you seem to go insane?~
== BT2Val ~Xzar-~
== %XZAR_BANTER% ~You call them eyes and ears. I call them the tasty bits.~
== BT2Val ~You're in-~
== %XZAR_BANTER% ~-Sane, I know. People do keep saying that. I've never quite understood why.~
== BT2Val ~There's a place called Spellhold waiting for you. As much for your safety as everyone else's.~
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
Global("T2ValMontTalk1","GLOBAL",0)~
THEN %MONTARON_BANTER% T2ValMontTalk1
~What're ye looking at, spell-slinger?~ DO ~SetGlobal("T2ValMontTalk1","GLOBAL",1)~
== BT2Val ~You're, uh, not-~
== %MONTARON_BANTER% ~Not like the usual mewlin' halflin' idiot.~
== BT2Val ~I wasn't going to put it like that.~
== %MONTARON_BANTER% ~Then shut yer trap if ye don't have anythin useful to say.~
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
~I'd pay money to see it.~ DO ~SetGlobal("T2ValMontTalk2","GLOBAL",1)~
== BT2Val ~See what?~
== %MONTARON_BANTER% ~Ye and that wench at the last inn. Ye were makin eyes at each other.~
== BT2Val ~Disgusting little goblin! That's none of your business!~
== %MONTARON_BANTER% ~Haha! Why didn't ye say ye were goin at it! I'da paid good money!~
== BT2Val ~I did not sleep with Julia! She just needed someone to talk to. Things are pretty bad for people on the Sword Coast.~
== %MONTARON_BANTER% ~Sure ye didn't.~
== BT2Val ~I'm leaving. Now.~
EXIT

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
~What's gotten into you, Garrick? You don't need to flinch every time I look in your general direction.~ DO ~SetGlobal("T2ValGaTalk1","GLOBAL",1)~
== %GARRICK_BANTER% ~Yes, ma'am! Sorry, ma'am!~
== BT2Val ~Ma'am? Garrick, what's going on?~
== %GARRICK_BANTER% ~You're a Cowled Wizard, ma'am. You people come down like a sack of bricks on anyone who looks at you funny, like Naljier Skald. I don't want to be sent to Spellhold, ma'am.~
== BT2Val ~One, my name is Valerie. Two, Naljier Skald was up to something incredibly dangerous you don't need to know about. Three, I don't have jurisdiction this far north. Four, I am *not* going to arrest people just for casting magic.~
== %GARRICK_BANTER% ~You won't? Really?~
== BT2Val ~Relax, Garrick. Our duty is to protect Amn from magical dangers. You aren't a danger to Amn, magical or otherwise.~
== %GARRICK_BANTER% ~Oh, whew. Guess you shouldn't believe every bard's tale, huh?~
== BT2Val ~Indeed not. That said, you're probably going to embellish your tales of our adventures anyway, aren't you?~
== %GARRICK_BANTER% ~Hey!~
== BT2Val ~I'll take that as a 'yes.'~
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
~So I was thinking, we start with a beautiful maiden with magical powers on the run from the evil wizards-~ DO ~SetGlobal("T2ValGaTalk2","GLOBAL",1)~
== BT2Val ~The Cowled Wizards aren't evil, Garrick.~
== %GARRICK_BANTER% ~But the Dark Cloaks are! Anyway, they're hunting the maiden for her magical powers, maybe with unseemly interest from their leader, and chase her out of the kingdom until she's forced to join a band of heroes to protect herself...~
= BT2Val ~Alright, I'm listening.~
== %GARRICK_BANTER% ~She's very sheltered from growing up in the forest with her beautiful mother, and a handsome, roguish young man in the adventuring party starts showing her the ropes of life on the road. Now, the maiden doesn't realize it, but she and her companion are starting to fall in love-~
== BT2Val ~Garrick?~
== %GARRICK_BANTER% ~Yes?~
== BT2Val ~I'm flattered. You're cute, I like listening to your ideas for plays, and I think you're a better person than you give yourself credit for, but you're barking up the wrong tree.~
== %GARRICK_BANTER% ~...Huh. What kind of tree am I barking up?~
== BT2Val ~One that prefers women. I'm sorry, Garrick, but I didn't want to lead you on or give you the wrong idea.~
== %GARRICK_BANTER% ~Oh well. So, the beautiful maiden and a tough young woman raised in the wilds as a ranger by her uncle...~
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
~Wow. You've actually met Raelis Shae?~ DO ~SetGlobal("T2ValGaTalk3","GLOBAL",1)~
== BT2Val ~'Met' would be overstating it. I was a gofer when the Wizards were checking out the troupe and their gear.~
== %GARRICK_BANTER% ~You wouldn't believe the stories I've heard about them! They show up out of nowhere across Faerun to put on plays, and they're really good ones!~
== BT2Val ~They *are* extraplanar, Garrick.~
== %GARRICK_BANTER% ~Really? Could you arrange for me to meet them? You know, after this is all over?~
== BT2Val ~I don't know... I'm uncertain what plane they're from, but there's something about them that makes my skin crawl. Especially their leading man... Haer'Dalis, was it?~
== %GARRICK_BANTER% ~You really haven't heard of them?~
== BT2Val ~Cowled Wizard apprentices don't exactly have time for theater.~
== %GARRICK_BANTER% ~Call it a date?~
== BT2Val ~Down, boy.~
== %GARRICK_BANTER% ~Awww.~
EXIT

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
~Kivan, I'm sorry about your Deheriana. If there's anything I can do to help...~ DO ~SetGlobal("T2ValKiTalk1","GLOBAL",1)~
== %KIVAN_BANTER% ~You can help by doing your job in battle and remaining silent outside of it.~
== BT2Val ~Sorry. I only wanted to help.~
== %KIVAN_BANTER% ~I do not want or need your help, sorceress. Leave me be.~
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
~Stop. Those leaves are highly toxic.~ DO ~SetGlobal("T2ValKiTalk2","GLOBAL",1)~
== BT2Val ~I know. That's why I'm wearing gloves while crushing them and have boiling water ready to dilute the results.~
== %KIVAN_BANTER% ~I see. You're brewing a potion.~
== BT2Val ~I'm not a great alchemist or even a good one, but this potion's simple enough to make and I brewed plenty of them during my apprenticeship.~
== %KIVAN_BANTER% ~What exactly are you brewing?~
== BT2Val ~A minor vigor potion. We keep odd enough hours that I need some help staying awake and alert on occasion.~
== %KIVAN_BANTER% ~I see. Be careful with the leaves, sorceress.~
EXIT

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
~Why are you looking at me like that, Shar-Teel?~ DO ~SetGlobal("T2ValSTTalk1","GLOBAL",1)~
== %SHARTEEL_BANTER% ~Hmph. You, at least, have the right idea.~
== BT2Val ~I don't know what you're talking about, but your approval fills me with shame regardless.~
== %SHARTEEL_BANTER% ~Hah. You've decided no man is worthy of you. Good move from a weakling like you.~
== BT2Val ~I don't dislike men. I'm just not attracted to them.~
== %SHARTEEL_BANTER% ~Bah! Shouldn't have expected any backbone from a sniveling brat like you.~
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
~You, sorceress! Fetch my armor grease!~ DO ~SetGlobal("T2ValSTTalk2","GLOBAL",1)~
== BT2Val ~I'm not a dog to be ordered around, Shar-Teel. If your armor joints are squeaking, grease them yourself.~
== %SHARTEEL_BANTER% ~You're the one who's spent years as a servant! Earn your keep!~
== BT2Val ~There's a world of difference between an apprentice and a servant. Not that I'd expect a sow like you to understand.~
== %SHARTEEL_BANTER% ~Hahaha! You do have a little fight in you!~
== BT2Val ~Yes. Now if only you could save your vitriolic tongue for the enemy.~
== %SHARTEEL_BANTER% ~How about you talk the enemy to death instead? It would be better than your limp-wristed magic.~
== BT2Val ~Gods above, I'll stop talking if you will.~
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
~Sorcery, huh? You don't look like someone with magical blood.~ DO ~SetGlobal("T2ValSTTalk3","GLOBAL",1)~
== BT2Val ~I don't want to imagine what you think I look like.~
== %SHARTEEL_BANTER% ~Just another prissy noble girl. Maybe a good whore. Like there's a difference.~
== BT2Val ~To a sow that learned to talk and walk on its hindquarters, I suppose there isn't.~
== %SHARTEEL_BANTER% ~Maybe we should rent you out at the next town. You use that tongue for magic enough, I bet it's good for other things.~
== BT2Val ~You are a disgusting piece of filth that I am ashamed to call human. No one will mourn your death, Shar-Teel. No one will remember your name. You will be buried in an unmarked grave if you're lucky enough to be buried at all rather than be left for animals to feast on. Now back. The hell. Off. Before I make that come to pass, <CHARNAME>'s feelings be damned.~
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
Global("T2ValKaTalk1","GLOBAL",0)~
THEN %KAGAIN_BANTER% T2ValKaTalk1
~I don't understand you, girl. If your Cowled Wizards love protectin' people so much, why don't they guard my caravans?~ DO ~SetGlobal("T2ValKaTalk1","GLOBAL",1)~
== BT2Val ~Beregost is Baldur's Gate territory. Frankly, I'm surprised the Flaming Fist hasn't given me trouble already.~
== %KAGAIN_BANTER% ~Don't be daft. You're Amnish. You know a coin in the right pocket can get you anything.~
== BT2Val ~There are larger concerns than your purse, Kagain.~
== %KAGAIN_BANTER% ~Are there, now? I want those concerns' heads mounted on my office wall.~
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
~You huffin' and puffin' already, toothpick? A stiff wind could break you in half by the looks of it.~ DO ~SetGlobal("T2ValKaTalk2","GLOBAL",1)~
== BT2Val ~I can keep up, nevermind that half of me would be only marginally shorter than you. Not everyone's graced with the resilience and personality of a large rock.~
== %KAGAIN_BANTER% ~To a dwarf, that's a high compliment! Moradin made us tough as stone! More than can be said for you, skinny.~
== BT2Val ~Ugh. Concentrated dwarf smugness is exceeding recommended levels. I suggest we move on before I choke.~
== %KAGAIN_BANTER% ~Hahaha! At least you're too tall to be a blasted elf.~
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
~Fine, you greedy troglodyte. Here's your winnings from the card game.~ DO ~SetGlobal("T2ValKaTalk3","GLOBAL",1)~
== %KAGAIN_BANTER% ~Hah. You can keep your gold, girl.~
== BT2Val ~Huh? I thought you loved gold.~
== %KAGAIN_BANTER% ~I love *winning* gold, girl. Putting you into a card game is like setting an elf child against a troll. You're too blasted honest for your own good.~
== BT2Val ~...I'm not sure if that's a compliment or an insult.~
== %KAGAIN_BANTER% ~Count it as a mercy this once. Play against me again, and I'll fleece you for all you're worth.~
== BT2Val ~And if I choose not to play cards again?~
== %KAGAIN_BANTER% ~Then you've learned something useful for once.~
EXIT

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
~Alora, please give me back my notebook.~ DO ~SetGlobal("T2ValATalk1","GLOBAL",1)~
== %ALORA_BANTER% ~What notebook?~
== BT2Val ~The one you filched from my things this morning when I was eating breakfast.~
== %ALORA_BANTER% ~I'm telling you, I didn't steal no notebook!~
== BT2Val ~Then why are your hands bright red? I reactivated that little enchantment as soon as I realized what kind of person you were.~
== %ALORA_BANTER% ~Fine, grumpy-pants! Have your stupid book back! What kind of wizard makes an echantment like that, anyway?~
== BT2Val ~The kind that grew up around other wizards and is still a teenager, albeit not for long. I liked the literal spin on catching a thief red-handed.~
== %ALORA_BANTER% ~You're no fun! I hope you like your book, grumpy-pants!~
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
~Hey, catch!~ DO ~SetGlobal("T2ValATalk2","GLOBAL",1)~
== BT2Val ~Ow! Alora, if you want to throw acorns, please give warning before you actually throw them!~
== %ALORA_BANTER% ~You were supposed to catch it!~
== BT2Val ~I was *trying* to write something down in my notebook.~
== %ALORA_BANTER% ~Come on, grumpy-pants! Put your book away and have some fun!~
== BT2Val ~Fun is for after I've finished my work.~
== %ALORA_BANTER% ~Bo-ring! Come on, throw it back at me!~
== BT2Val ~If you have nothing productive to contribute, stop talking.~
== %ALORA_BANTER% ~Fine! I'll go have fun with someone who actually knows what that is!~
EXIT

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
~So, you're a sorceress?~ DO ~SetGlobal("T2ValFTalk1","GLOBAL",1)~
== BT2Val ~Accept no imitations.~
== %FALDORN_BANTER% ~'Yes' was all you needed to say.~
== BT2Val ~Sorry. Let me guess, you're about to condemn me as a freak.~
== %FALDORN_BANTER% ~Can't fault blood for running true. So many of Silvanus' mightiest children bear magic. It is a predator's gift.~
== BT2Val ~It's really not.~
== %FALDORN_BANTER% ~Only because you are weak, and the strong will devour you. That is the way of nature.~
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
~Question for you, Faldorn.~ DO ~SetGlobal("T2ValFTalk2","GLOBAL",1)~
== %FALDORN_BANTER% ~Speak.~
== BT2Val ~You think civilization is unnatural, right?~
== %FALDORN_BANTER% ~It is a fact, not a thought.~
== BT2Val ~Are humans natural?~
== %FALDORN_BANTER% ~Of course.~
== BT2Val ~Then why is civilization unnatural? In all my studies, humans always form social groups and construct some kind of civilization.~
== %FALDORN_BANTER% ~Because they forget their place! They forsake nature's glory for their own! They pillage a land that has stood for millions of years to build huts that are lucky to last one!~
== BT2Val ~Oh. Okay.~
== %FALDORN_BANTER% ~Do not sneer at me, sorceress! You want my answer, and there it is!~
== BT2Val ~I see. Perhaps we should avoid this subject in the future.~
== %FALDORN_BANTER% ~Bah!~
EXIT

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
~Yeslick, do you have a minute? I'm trying to translate something from dwarven, and I'm not sure what a couple of these runes mean.~ DO ~SetGlobal("T2ValYTalk1","GLOBAL",1)~
== %YESLICK_BANTER% ~Let's have a look. Aye, that one means 'truth' and that one's 'beauty.' Moradin's anvil, what are ye doing with dwarven poetry, long-limbs?~
== BT2Val ~Mainly? Trying to learn to read dwarven, and your runes for more abstract concepts are hard to decipher.~
== %YESLICK_BANTER% ~And ye picked blasted *poetry* to translate?~
== BT2Val ~Um. Yes, actually. It's different from human poetry.~
== %YESLICK_BANTER% ~Ye don't blasted say! I don't know to be proud of ye or worried about ye, long-limbs!~
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
~Eighteen... nineteen... twenty... twenty-one...~ DO ~SetGlobal("T2ValYTalk2","GLOBAL",1)~
== %YESLICK_BANTER% ~Slow down there, girl. Yer wheezin' like ye've had a few too many drinks.~
== BT2Val ~Ack! Sorry... Yeslick. Been... trying to exercise... more these days. Hadn't... realized how out of... shape I am.~
== %YESLICK_BANTER% ~More like yer built like a twig if ye ask me. Here, have some water before you collapse.~
== BT2Val ~Thank you... Yeslick. Sorry. Still... catching my breath.~
== %YESLICK_BANTER% ~Which is why you pace yerself better, girl! Yer a mage, ye don't need to muscle up like a blasted battlerager.~
== BT2Val ~I still need to keep up.~
== %YESLICK_BANTER% ~Aye, and it's a rare mage who bothers to try, but at least wait till ye can do fifteen without sweating before tryin for fifty.~
== BT2Val ~But... nevermind. Point taken.~
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
~I'll be damned! Yer the first non-dwarf I've ever heard of reading all of Turan's poems!~ DO ~SetGlobal("T2ValYTalk3","GLOBAL",1)~
== BT2Val ~Let me put it this way: if I have to hear love-making compared to mining one more time, I will find a pickaxe and lodge it in someone's skull. And that's *not* a euphemism.~
== %YESLICK_BANTER% ~Haw haw! Tired of a good woman bein' compared to a gemstone?~
== BT2Val ~And to pursuing her being compared to prospecting for a good vein.~
== %YESLICK_BANTER% ~An' some dwarves wonder why long-limbs never read our poetry!~
== BT2Val ~I used to wonder that, too. I don't anymore.~
EXIT

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
~Ack! Quayle, I didn't ask for your help with my notes!~ DO ~SetGlobal("T2ValQTalk1","GLOBAL",1)~
== %QUAYLE_BANTER% ~See! A much more efficient way to organize your spellbook!~
== BT2Val ~That isn't my spellbook! I don't bloody *have* one!~
== %QUAYLE_BANTER% ~Then what's this book of spells and arcane diagrams, then? It's so much more organized now!~
== BT2Val ~Except I CAN'T BLOODY READ GNOMISH! I'm a *sorceress*, Quayle! You just destroyed years of my notes and thoughts on arcane theory!~
== %QUAYLE_BANTER% ~Oh. Not to worry! See? A simple enchantment reverts it all to the way you had it before!~
== BT2Val ~You godda... oh. Thank you, Quayle. But for the love of every god and their mother, please don't meddle with my books unless you have my very explicit permission.~
== %QUAYLE_BANTER% ~You're welcome. Always pleased to assist a fellow wizard!~
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
~It's really quite simple, you know.~ DO ~SetGlobal("T2ValQTalk2","GLOBAL",1)~
== BT2Val ~What's simple?~
== %QUAYLE_BANTER% ~Determining the source of your magic!~
== BT2Val ~I don't have time for this.~
== %QUAYLE_BANTER% ~Wait! It really is simple! There are several divination spells that could tell you! It wouldn't be cheap to hire a wizard who could cast them, but you could easily afford it in a year or two!~
== BT2Val ~...That is a possibility.~
== %QUAYLE_BANTER% ~Why so glum? Don't you want to know?~
== BT2Val ~Honestly, I don't know if I do or not. But thanks for the heads-up.~
EXIT

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
~For the love of Torm, Safana, could you please stop swaying your hips and fluttering your eyelashes at almost everyone we meet?~ DO ~SetGlobal("T2ValSafTalk1","GLOBAL",1)~
== %SAFANA_BANTER% ~Why, I think I detect a whiff of jealousy from our sorceress. Or is that something more pungent I smell?~
== BT2Val ~Gah! You don't need to flaunt it to everyone we meet!~
== %SAFANA_BANTER% ~Why, it is more pungent than mere jealousy! How quaint!~
== BT2Val ~Shut. Up.~
== %SAFANA_BANTER% ~Careful, dear. You don't want to permanently stain that pretty little face with blush.~
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
~Do stop growling at me, dear. It's terribly unbecoming of you.~ DO ~SetGlobal("T2ValSafTalk2","GLOBAL",1)~
== BT2Val ~I've seen too many vain, greedy, self-obsessed women like you in Athkatla.~
== %SAFANA_BANTER% ~Ashamed you aren't one of them, hmmm? No, you could never be a successful woman, little sorceress. You lack the drive.~
== BT2Val ~And the absence of ethics, self-respect, and moral decency.~
== %SAFANA_BANTER% ~Oh, please! Spare me the moralizing lecture of how I am a shallow, deceitful harlot! I've heard it all before, dear.~
== BT2Val ~I don't doubt it.~
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
Global("T2ValTiTalk1","GLOBAL",0)~
THEN BT2Val T2ValTiTalk1
~Ugh. What was <CHARNAME> thinking when <PRO_HESHE> decided the band needed a Strifeleader as delusional as Cyric himself?~ DO ~SetGlobal("T2ValTiTalk1","GLOBAL",1)~
== %TIAX_BANTER% ~Cyric's wish is <CHARNAME>'s command! Only small minds question Cyric's will!~
== BT2Val ~...I don't think talking with you is going to accomplish anything.~
== %TIAX_BANTER% ~Tiax agrees that silence is preferable! So let it be.~
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
~You're a general danger to everyone around you, gnome, and notified my superiors as such in the last status report I sent them. My recommendation was to permanently remove you as a danger, one way or another.~ DO ~SetGlobal("T2ValTiTalk2","GLOBAL",1)~
== %TIAX_BANTER% ~Empty threats from an empty head. The Cowled Wizards shall fall before Tiax if they dare attack him!~
== BT2Val ~We'll see about that, gnome.~
EXIT

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
~Mmmm... not what I expected of a sorceress.~ DO ~SetGlobal("T2ValEldTalk1","GLOBAL",1)~
== BT2Val ~What did I say that sounded like 'Please undress me with your eyes and offer commentary'?~
== %ELDOTH_BANTER% ~You're not worth undressing. I've seen elves with more ample figures than you.~
== BT2Val ~I'm sure you have. How much did they cost?~
== %ELDOTH_BANTER% ~A true man does not need to pay.~
== BT2Val ~I agree. My question stands.~
== %ELDOTH_BANTER% ~Begone from my sight, wench. You clearly have nothing to offer me.~
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
~Leer at me one more time, Eldoth, and they'll be looking for fragments of your face in Halruaa.~ DO ~SetGlobal("T2ValEldTalk2","GLOBAL",1)~
== %ELDOTH_BANTER% ~Charming as ever. I was merely recognizing that we have something in common after all. I was about to compliment you on your good taste.~
== BT2Val ~We have nothing in common.~
== %ELDOTH_BANTER% ~Valerie, my dear, you were all but drooling at that buxom redhead five minutes ago. I have long since learned to keep an eye on the competition.~
== BT2Val ~I'm not going to warn you again.~
== %ELDOTH_BANTER% ~Tsk, tsk. True. You lack the spine to be competition, much less worthy competition.~
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
Global("T2ValSkTalk1","GLOBAL",0)~
THEN %SKIE_BANTER% T2ValSkTalk1
~Valerie, could you take a look at my feet?~ DO ~SetGlobal("T2ValSkTalk1","GLOBAL",1)~
== BT2Val ~Your feet? Why?~
== %SKIE_BANTER% ~They hurt.~
== BT2Val ~...Well, no wonder. Skie, what could have possibly given you the idea that those shoes were acceptable for hiking?~
== %SKIE_BANTER% ~Well, they're what I had on.~
== BT2Val ~Next time we're near a cobbler, you are getting some sturdy boots. Period.~
== %SKIE_BANTER% ~But-~
== BT2Val ~Even I'm more used to travel than you are, and that's saying something.~
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
~Could I learn magic like yours?~ DO ~SetGlobal("T2ValSkTalk2","GLOBAL",1)~
== BT2Val ~No, and I have no idea why you'd want to.~
== %SKIE_BANTER% ~Casting magic would be neat! I wouldn't have to study a spellbook, either!~
== BT2Val ~And be subject to dangerous arcane forces you can't control?~
== %SKIE_BANTER% ~You control yourself!~
== BT2Val ~Because I've been trained to do so. And you, Skie Silvershield, have no discipline that I know of.~
== %SKIE_BANTER% ~You're like daddy's friend, Liia Jannath.~
== BT2Val ~How so?~
== %SKIE_BANTER% ~You hate the idea that someone enjoys something you don't like. You can't stand someone taking joy in what you consider so serious.~
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
~Valerie?~ DO ~SetGlobal("T2ValSkTalk3","GLOBAL",1)~
== BT2Val ~What is it now?~
== %SKIE_BANTER% ~I'm sorry.~
== BT2Val ~Huh? About what?~
== %SKIE_BANTER% ~I know I'm not a very good adventurer. I know daddy was right, that I'm not meant for this.~
== BT2Val ~Skie, I...~
== %SKIE_BANTER% ~You're right to look down on me. I've been miserable ever since leaving home.~
== BT2Val ~I didn't mean-~
== %SKIE_BANTER% ~But home is in danger. Daddy's in danger. I have to do something, even if I'm not very good at it.~
== BT2Val ~...Skie. I did think very badly of you. I was wrong.~
== %SKIE_BANTER% ~No, you weren't. None of you are, to think I'm weak and sheltered. But here I am. I am the daughter of Entar Silvershield, Grand Duke of Baldur's Gate, and I want daddy to be proud of me for once in his life.~
== BT2Val ~Skie?~
== %SKIE_BANTER% ~Yes?~
== BT2Val ~I did misjudge you. Come what may, there are worse people to travel and fight alongside.~
EXIT