sub EVENT_SAY { 
if($text=~/Hail/i){
quest::say("Hello. $name.  I am Sneed Galliway. merchant and citizen.  I run the only general store in all of Qeynos. serving the needs of the many adventurers who call Qeynos home.  If only one of them would take the time to help me with my er... [problem]...");
}
if($text=~/problem/i){
quest::say("Shhh..  Keep it down.  It seems I have a little rodent problem in my store.  A mangy rat keeps digging into my crates of rations.  He looks as if he is diseased.  If you help me by killing this pest. I will make it worth your while.  Bring me his head as proof it is done."); }
}
sub EVENT_ITEM { 
if($itemcount{13717} == 1){
quest::say("HA!  Good work!  I knew you were the person for the job.  A regular ratslayer you are.  Here is your reward as promised.  Be sure you keep this between us.");
quest::givecash("6","0","0","0");
quest::faction("Not_Found","1");
quest::faction("10108","-1");
quest::faction("Not_Found","1");
quest::faction("Not_Found","1");
quest::faction("Not_Found","1"); }
}
#END of FILE Zone:qeynos2  ID:2058 -- Sneed_Galliway 

