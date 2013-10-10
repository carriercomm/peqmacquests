sub EVENT_ITEM {
  if(plugin::check_handin(\%itemcount, 18845 =>1)) { #A tattered note
		quest::say("You fight like alligator and tear enemy limb from limb!  Wear tunic that smell of swamp an devour enemy wit brodder Dark Ones!  You go see Gargh now, he got work for you!"); 
		quest::summonitem(13576); # Molding Tunic
		quest::ding();
		quest::faction(70,5); # Dark Ones
		quest::faction(292,5); # Shadowknights of Night Keep
		quest::faction(106,-10); # Frogloks of Guk
		quest::exp(100);
  }
  #do all other handins first with plugin, then let it do disciplines
  plugin::try_tome_handins(\%itemcount, $class, 'Beastlord');
  plugin::return_items(\%itemcount);
}

#END of FILE Zone:grobb  ID:6084 -- Gardunk 

