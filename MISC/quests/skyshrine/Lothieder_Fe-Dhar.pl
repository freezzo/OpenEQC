sub EVENT_SAY { 
if($text=~/Hail/i){
quest::say("Greetings to you. Wood Elf.  I seek those who call themselves enchanters.  Are you what I seek?");
}
if($text=~/what robe/i){
quest::say("This exquisite robe shall be yours in exchange for a tattered silk robe and three pristine emeralds.");
}
if($text=~/what cap/i){
quest::say("For you to receive my gift. I shall require three crushed flame opals and a tattered silk turban.");
}
if($text=~/what wristbands/i){
quest::say("The crafting of this wristband requires that you bring me a tattered silk wristband and three crushed onyx sapphires.");
}
if($text=~/what gloves/i){
quest::say("For this fine pair of gloves you must seek out and return to me a pair of tattered silk gloves and three crushed topaz.");
}
if($text=~/what leggings/i){
quest::say("This pair of leggings will be yours provided you supply me with a pair of tattered silk pantaloons and three nephrite.");
}
if($text=~/what boots/i){
quest::say("These supple boots shall be yours upon receipt of a pair of tattered silk boots and three crushed jaundice gems.");
}
if($text=~/what sleeves/i){
quest::say("For these durable sleeves. you must fetch me a pair of tattered silk sleeves and three flawed topaz.");
}
if($text=~/i am an enchanter/i){
quest::say("I thought so.  I have several tasks for you accomplish.  Once you have completed them I will have a cap. a robe. sleeves. wristbands. gloves. leggings and boots to reward you with."); }
}
sub EVENT_ITEM { 
if($itemcount{25829} == 3 && $itemcount{24980} == 1){
quest::summonitem("31181");
quest::faction("332","1");
quest::faction("Not_Found","1");
quest::faction("336","-1"); }
}
#END of FILE Zone:skyshrine  ID:114269 -- Lothieder_Fe`Dhar 

