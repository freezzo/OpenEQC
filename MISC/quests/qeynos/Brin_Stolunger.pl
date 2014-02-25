sub EVENT_SAY { 
if($text=~/Hail/i){
quest::say("What?  What?!!  Are we a [young steel warrior]..  Or another [spectator] for the Arena?");
}
if($text=~/i am a young steel warrior/i){
quest::say("The Steel Warriors have no cause to dislike you, but you have yet to truly prove your worth to this guild.");
}
if($text=~/i am a spectator/i){
quest::say("As I thought!!  You shall be better off upon the ramparts of the arena.  It would be dreadful to see a fine citizen injured in the arena."); }
}

sub EVENT_ITEM {
 #do all other handins first, then let it do disciplines
 #if($itemcount{} == 1) {
 #} else {
	if($class ne 'Warrior') {
		quest::say("You are not a member of my guild. I will not train you!");
		quest::summonitem($item1) if($item1);
		quest::summonitem($item2) if($item2);
		quest::summonitem($item3) if($item3);
		quest::summonitem($item4) if($item4);
		return;
	}
	#assume it is a discipline tome...
	quest::traindisc($item1) if(quest::isdisctome($item1));
	quest::traindisc($item2) if(quest::isdisctome($item2));
	quest::traindisc($item3) if(quest::isdisctome($item3));
	quest::traindisc($item4) if(quest::isdisctome($item4));
 #}
}
#END of FILE Zone:qeynos  ID:1072 -- Brin_Stolunger 
