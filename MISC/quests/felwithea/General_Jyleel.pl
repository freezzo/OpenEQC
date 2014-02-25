sub EVENT_SAY { 
if($text=~/Hail/i){
quest::say("Stand at attention!!  I am General Jyleel. of the Koada'Vie. defenders of Felwithe.  Do you [follow Tunare]. the Mother of All. or do you still [seek your enlightenment]?");
}
if($text=~/.*follow Tunare.*/i){
quest::say("No.  You have yet to prove yourself a truly faithful defender of the Clerics of Tunare.  I await your return when you complete your service to the temple.");
quest::say("Then you are wise indeed.  Would you like to [assist the defenders] in our conflicts or have you other business to attend to?");
}
if($text=~/.*seek your enlightenment.*/i){
quest::say("Then seek it within these walls.  We welcome all fine upstanding Koada'Dal.");
}
if($text=~/i would like to assist the defenders/i){
quest::say("Seek out the Crushbone orcs of the Faydarks.  We must have their oracle scrolls.  They are illegible to you. but we will study them here in Felwithe.  Only the orc oracles will carry them. so be very careful.  There is also the problem with the [Crushbone runners].");
}
if($text=~/what crushbone runners/i){
quest::say("The Crushbone orcs are sending messages across the Ocean of Tears to Antonica.  Why. we do not know.  The runner is usually spotted on the open pathways of Butcherblock. running toward the docks.  Find him. kill him. and return his note pouch.");
}
if($text=~/i seek my enlightenment/i){
quest::say("Then seek it within these walls.  We welcome all fine upstanding Koada'Dal.");
}
if($text=~/i still seek my enlightenment/i){
quest::say("Then seek it within these walls.  We welcome all fine upstanding Koada'Dal.");
}
if($text=~/what assist the defenders/i){
quest::say("Seek out the Crushbone orcs of the Faydarks.  We must have their oracle scrolls.  They are illegible to you. but we will study them here in Felwithe.  Only the orc oracles will carry them. so be very careful.  There is also the problem with the [Crushbone runners]."); }
}
sub EVENT_ITEM { 
 if($itemcount{13225} == 1){
	quest::say("Very fine work. A pity you are not Koada'Vie. Here is a small reward for you. Anytime you come upon an oracle. remember to return its scroll to me. Go and find your fate on the field of battle.");
	quest::summonitem("13004","1");
	quest::givecash("1","2","0","0");
	quest::faction("105","1");
 } else {
	if($class ne 'Paladin') {
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
 }
}
#END of FILE Zone:felwithea  ID:61020 -- General_Jyleel 

