function event_say(e)
	if(e.message:findi("Hail")) then
		e.self:Say("Errr?  What you say to Urrrkath?  Ah.  Hello to you as well. furrrless type person. Would you do Urrrkath a [favor]?"); end
	end
	if(e.message:findi("what favor")) then
		e.self:Say("Grrreatful I am that you would think to do this for me.  I am in need of a special leaf, called a [Sylvani Leaf], if you could brrrring this to me I would rrrrreward you verrrry well.");
	end
	if(e.message:findi("Sylvani Leaf")) then
		e.self:Say("They say that the leaf only exists in a small forest farrrrr frrrrrom ourrrrrr island");
	end
	
	function event_trade(e)
		local item_lib = require("items");
		if(item_lib.check_turn_in(e.trade, {item1 = 1155})) then
			e.self:Say("Excellent! I can't believe you found it.  Here is the rrrreward that I promised you.");
			e.other:SummonItem(2045);
		end
	end
	
end
--END of FILE Zone:kerraridge  ID:74090 -- Urkath_Greyface *Text is not correct, need correct text if anyone has it.


-------------------------------------------------------------------------------------------------
-- Converted to .lua using MATLAB converter written by Stryd and manual edits by Speedz
-- Find/replace data for .pl --> .lua conversions provided by Speedz, Stryd, Sorvani and Robregen
-------------------------------------------------------------------------------------------------
