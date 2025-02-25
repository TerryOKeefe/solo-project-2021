
-- USER is a reserved keyword with Postgres
-- You must use double quotes in every query that user is in:
-- ex. SELECT * FROM "user";
-- Otherwise you will have errors!
CREATE TABLE "user" (
    "id" SERIAL PRIMARY KEY,
    "username" VARCHAR (80) UNIQUE NOT NULL,
    "password" VARCHAR (1000) NOT NULL
);

CREATE TABLE "supplies" (
	"id" SERIAL PRIMARY KEY,
	"name" VARCHAR (1000) NOT NULL,
	"description" VARCHAR (1000) NOT NULL,
	"image_url" VARCHAR (1000) NOT NULL,
	"purchase_link" VARCHAR (1000)
);

CREATE TABLE "recipes" (
	"id" SERIAL PRIMARY KEY,
	"name" VARCHAR (80),
	"style" VARCHAR (80),
	"intro" VARCHAR (1000),
	"original_gravity" DECIMAL,
	"ferment_time" VARCHAR (25),
	"bottle_time" VARCHAR (25),
	"malt_extract" VARCHAR (255),
	"hops" VARCHAR (255),
	"yeast" VARCHAR (255),
	"priming_sugar" VARCHAR (255),
	"brew_day" VARCHAR (2000),
	"fermentation" VARCHAR (2000),
	"bottling" VARCHAR (2000),
	"conditioning" VARCHAR (2000),
	"notes" VARCHAR (1000),
	"image" VARCHAR (255),
	"rating" INT,
	"purchase_link" VARCHAR (255),
	"user_id" INT REFERENCES "user"
);

CREATE TABLE "created_brew" (
	"id" SERIAL PRIMARY KEY,
	"name" VARCHAR (255),
	"style" VARCHAR (255),
	"notes" VARCHAR (255),
	"date" DATE,
	"user_id" INT REFERENCES "user"
);

-- INSERT INTO RECIPES TABLE --

-- Summer Squeeze Shandy
INSERT INTO "recipes" ("name", "style", "intro", "original_gravity", 
	"ferment_time", "bottle_time", "malt_extract", "hops", "yeast", "priming_sugar", 
	"brew_day", "fermentation", "bottling", "conditioning", "image", "purchase_link", "rating")
VALUES('Summer Squeeze', 'Session Ale Shandy', 'Shining with a slightly hazy, golden 
	radiance and topped with fluffy clouds of brilliant white foam, Summer Squeeze Lemon 
	Shandy delivers a refreshing slice of summertime in every sip! Like a trip to the corner 
	lemonade stand, with a deliciously grown-up detour, this shandy combines an all-American 
	style wheat beer with a heaping dose of real crystalized lemon. The result is an incredibly 
	refreshing session-strength ale featuring the tang of freshly-squeezed lemonade without 
	the sugary sweetness.', '1.045', '2 Weeks Primary', '2 Weeks Bottling', '1 lb Wheat DME', 
	'0.25 oz German Hallertau (45 min), 2.5 grams Crystallized Lemon', 'Bru Small Batch American 
	Ale Dry Yeast', '3 oz Fizz Drops', 'Heat 1.25 gallons of water. Please note there are no 
	specialty grains in this recipe. Bring to a boil, remove the kettle from the burner and stir 
	in the 1 lb Wheat DME. Return wort to boil. The mixture is now called "wort", the brewer"s 
	term for unfermented beer. NOTE Total boil time for this recipe is 45 minutes. Add 0.25 oz 
	German Hallertau hops at the beginning of the boil. At the end of boil, add the 2.5 grams 
	Crystallized Lemonade. Cool the wort. Sanitize the gear. Siphon the cool wort from the kettle 
	into the jug. If needed, add more cold water to bring the volume to 1 gallon. Aerate the wort. 
	Add the yeast packet. Seal the fermenter. Move the fermenter to a warm, dark, quiet spot until 
	fermentation begins.', 'Fermentation begins. Within a day or so of Brew Day, fermentation begins — 
	as yeast cells convert malt sugars into CO2 gas and alcohol, you will notice bubbles come through 
	the airlock and a cap of frothy foam form on the beer. Fermentation ends. Roughly one to two weeks 
	from Brew Day, fermentation will end—the exact timing depends a lot on temperature and also on wort 
	biochemistry that we won’t worry about right now. Don’t be alarmed if it takes a few less or a few 
	more days—brewing is an art as well as a science, and your beer will be fine. When the supply of 
	malt sugars in the wort is depleted, the yeast cells begin to go dormant and sink to the bottom 
	of the fermentor. Bubbles come through the airlock very infrequently or stop entirely, and the 
	cap of foam starts to subside or disappears. If you have it attached, remove the blowoff tubing 
	once things have settled down, and replace it with the airlock until you’re ready to bottle.', 
	'Two weeks after Brew Day, your beer is ready to bottle. There’s a lot going on during bottling 
	day — a second set of hands is a big help ... and can usually be paid in beer! Move the fermentation 
	jug to a table or countertop. Do this early, so the yeast and sediment has a chance to re-settle! 
	Sanitize the gear. Namely the Rack Magic siphon & hose, bottle filler, all of the bottles, about 
	20 bottlecaps (you won’t need them all, but may need extras in case a couple drop on the floor). 
	Connect one end of the hose to the Rack Magic siphon, and the other end of the hose to the bottle 
	filler. Start the siphon and fill the bottles. Remove the airlock and stopper from the jug and 
	place the Rack Magic siphon into the beer; while holding down the bottle filler to keep the valve 
	open, have your helper pull up, then push down on the siphon piston to begin the flow of beer. Just 
	lift up on the filler to stop the flow of beer. Try to leave about 1” of headspace in each bottle. 
	Add one Fizz Drop tablet to each bottle. This small charge of sugar will carbonate (or “prime”) our 
	flat beer—the CO2 gas created by this mini fermentation will be absorbed by the liquid since it can’t 
	escape the sealed bottle—thanks, science! Cap the bottles. Put a sanitized bottlecap on a filled bottle. 
	Center the bell of your bottlecapper on the cap, and push down on the levers, then release. The cap 
	should be crimped tightly. Repeat about 10 times until all of the beer is bottled', 'Condition bottles 
	at room temperature for 2 weeks. After this point, the bottles can be stored cool or cold. Serving. 
	Pour into a clean glass, being careful to leave the layer of sediment at the bottom of the bottle. 
	Cheers!', 'https://cdn.shopify.com/s/files/1/2785/6868/products/B11500-Summer-Squeeze-Lemon-Shandy_
	white_b3c118ff-4624-406d-bd7f-98da6e33f8e2_x700_1_x700.jpg?v=1617826891', 'https://www.northernbrewer.com
	/collections/small-batch-kits/products/summer-squeeze-lemon-shandy-one-gallon-recipe-kit', '5');

-- Bourbon Barrel Porter
INSERT INTO "recipes" ("name", "style", "intro", "original_gravity", "ferment_time", "bottle_time", 
	"malt_extract", "hops", "yeast", "priming_sugar", "brew_day", "fermentation", "bottling", "conditioning", 
	"image", "purchase_link", "rating")
VALUES('Bourbon Barrel Porter', 'Porter', 'Our Bourbon Barrel Porter is so good, we just had to 
	scale it down to share with all the small batch brewers out there. This black beauty is quite 
	possibly perfection in a pint. It combines the elements of beer, bourbon, and oak to create an 
	amazing array of compelling flavors. The smokiness of the toasted American oak cubes mingle with 
	the dark flavors of the porter, while the sweet grainy and vanilla flavors of the bourbon reinforce 
	the oak, and tie everything together. We recommend just a wee dram of fine aged bourbon to complement 
	and enhance the flavors of oak and porter. The hardest part about making this beer as a small batch? 
	It’s a small batch. The solution: make 2 batches today and stash one away because it’ll just get 
	better with age.', '1.040', '2 Weeks', '2 Weeks', '1 lb. Dark dry malt extract, 1 lb. Wheat dry 
	malt extract', '3.5 grams Chinook hops, 3.5 grams Willamette hops', 'Bru Yeast Small Batch English 
	Ale Dry Yeast', '3 oz Fizz Drops', 'Collect and heat 1.25 gallons of water in your kettle. Any 
	good-quality drinking water will work for our purposes—if the water tastes OK, it will make good 
	beer. Steep grains in the mesh bag. Bring the liquid to a boil. We now have wort (brewing term 
	for unfermented beer). Crank up the heat and bring it to a boil. Boil the wort for 45 minutes 
	total, with the following additions and times: Add the 1 lb. Dark and the 0.5 lb. Wheat dry 
	malt extract and the first hop addition (3.5 grams Chinook hops) at the beginning of the boil; 
	stir to dissolve and boil for the full 45 minutes. 35 minutes after the first hop addition, add the 
	3.5 grams Willamette hops and boil for the remaining 10 minutes. 45 minutes after the first hop 
	addition, the boil ends—turn off the burner. Cool the wort. Sanitize the gear. Siphon the cool wort 
	from the kettle into the jug. Aerate the wort. Add the yeast packet. Seal the fermentor. Move the 
	fermenter to a dark, quiet spot until fermentation begins.', 'Fermentation begins. Within a day or 
	so of Brew Day, fermentation begins—as yeast cells convert malt sugars into CO2 gas and alcohol, 
	you will notice bubbles come through the airlock and a cap of frothy foam form on the beer. 
	Fermentation ends. Roughly one to two weeks from Brew Day, fermentation will end—the exact timing 
	depends a lot on temperature and also on wort biochemistry that we won’t worry about right now. 
	Don’t be alarmed if it takes a few less or a few more days—brewing is an art as well as a science, 
	and your beer will be fine. When the supply of malt sugars in the wort is depleted, the yeast cells 
	begin to go dormant and sink to the bottom of the fermentor. Bubbles come through the airlock very 
	infrequently or stop entirely, and the cap of foam starts to subside or disappears. If you have it 
	attached, remove the blowoff tubing once things have settled down, and replace it with the airlock 
	until you’re ready to bottle.', 'Move the fermentation jug to a table or countertop. Do this early, 
	so the yeast and sediment has a chance to re-settle! Sanitize the gear. Connect one end of the hose 
	to the Auto siphon, and the other end of the hose to the bottle filler. Start the siphon and fill 
	the bottles. Remove the airlock and stopper from the jug and place the Auto-Siphon into the beer; 
	while holding down the bottle filler to keep the valve open, have your helper pull up, then push 
	down on the siphon piston to begin the flow of beer. Just lift up on the filler to stop the flow of 
	beer. Try to leave about 1” of headspace in each bottle. Add one Fizz Drop tablet to each bottle. 
	This small charge of sugar will carbonate (or “prime”) our flat beer—the CO2 gas created by this 
	mini- fermentation will be absorbed by the liquid since it can’t escape the sealed bottle—thanks, 
	science! Cap the bottles. Put a sanitized bottlecap on a filled bottle. Center the bell of your 
	bottlecapper on the cap, and push down on the levers, then release. The cap should be crimped 
	tightly.', 'Test a bottle at one week—did it hiss when you opened it? If not, wait a week and try 
	again. After this point, the bottles can be stored cold and upright. Imbibe! As if we really need 
	to tell you how to do this! Assemble your tasting panel, clean your favorite beer glass, and crack 
	open a bottle of fresh, handcrafted beer. Decant the beer into your glass.', 'https://cdn.shopify.com
	/s/files/1/2785/6868/products/V10_6_x700_1_63afe583-6c65-4aca-8162-c6ba6fbdad8d_x700.jpg?v=1578939289', 
	'https://www.northernbrewer.com/products/bourbon-barrel-porter-1-gallon-recipe-kit', '3');

-- Dead Ringer IPA
INSERT INTO "recipes" ("name", "style", "intro", "original_gravity", "ferment_time", "bottle_time", 
	"malt_extract", "hops", "yeast", "priming_sugar", "brew_day", "fermentation", "bottling", 
	"conditioning", "image", "purchase_link", "rating")
VALUES('Dead Ringer', 'IPA', 'Dead Ringer is a larger-than-life American IPA with a hop aroma so 
	thick you can almost see it. American base malt and crystal malt create the big body and supporting 
	grainy sweetness, while charge after charge of 100% Centennial hops deliver pronounced bitterness 
	with a dominant citrus aroma and flavor. In the glass you get a pale amber color, hop intensity 
	and malt density - substance with the soul of a session beer.', '1.050', '2 Weeks', '2 Weeks', 
	'1.5 lbs. Northern Brewer Gold malt extract syrup', '3.5 grams Centennial hops, 3.5 grams Centennial 
	hops, 7 grams Centennial hops, 7 grams Centennial hops', 'Bru Yeast Small Batch American Ale Dry 
	Yeast', '3 oz Fizz Drops', 'Collect and heat 1.25 gallons of water in your kettle. Any good-quality 
	drinking water will work for our purposes—if the water tastes OK, it will make good beer. Steep grains 
	in the mesh bag. Just think of this as making tea with barley malt—steep for approximately 10 minutes 
	as the water heats, then remove the grain and discard. These grains will add desired color, flavor, 
	aroma, and body to our finished beer. Bring the liquid to a boil. We now have wort (brewing term for 
	unfermented beer). Crank up the heat and bring it to a boil. Boil the wort for 45 minutes total, with 
	the following additions and times: Add the malt extract syrup (1.5 lbs. Gold) and the first hop 
	addition (3.5 grams Centennial ) at the beginning of the boil; stir to dissolve and boil for the 
	full 45 minutes. 20 minutes before the end of the boil, add the second hop addition (3.5 grams 
	Centennial). 5 minutes before the end of the boil, add the third hop addition (7 grams Centennial). 
	At the end of the 45 minute—turn off the burner and add the fourth and final hop addition (7 grams 
	Centennial). Cool the wort. Sanitize the gear. Siphon the cool wort from the kettle into the jug. 
	Aerate the wort. Add the yeast packet. Seal the fermentor.', 'Fermentation begins. Within a day or 
	so of Brew Day, fermentation begins—as yeast cells convert malt sugars into CO2 gas and alcohol, you 
	will notice bubbles come through the airlock and a cap of frothy foam form on the beer. Fermentation 
	ends. Roughly one to two weeks from Brew Day, fermentation will end—the exact timing depends a lot on 
	temperature and also on wort biochemistry that we won’t worry about right now. Don’t be alarmed if it 
	takes a few less or a few more days—brewing is an art as well as a science, and your beer will be 
	fine. When the supply of malt sugars in the wort is depleted, the yeast cells begin to go dormant 
	and sink to the bottom of the fermentor. Bubbles come through the airlock very infrequently or stop 
	entirely, and the cap of foam starts to subside or disappears. If you have it attached, remove the 
	blowoff tubing once things have settled down, and replace it with the airlock until you’re ready to 
	bottle.', 'Move the fermentation jug to a table or countertop. Do this early, so the yeast and sediment 
	has a chance to re-settle! Sanitize the gear. Namely the Auto siphon& hose, bottle filler, all of the 
	bottles, about 20 bottlecaps (you won’t need them all, but may need extras in case a couple drop on 
	the floor). Refer to the beginning of this document if you need a refresher on sanitizing! Connect 
	one end of the hose to the Auto siphon, and the other end of the hose to the bottle filler. Start 
	the siphon and fill the bottles. Remove the airlock and stopper from the jug and place the Auto-Siphon 
	into the beer; while holding down the bottle filler to keep the valve open, have your helper pull up, 
	then push down on the siphon piston to begin the flow of beer. Just lift up on the filler to stop the 
	flow of beer. Try to leave about 1” of headspace in each bottle. Add one Fizz Drop tablet to each bottle. 
	Cap the bottles.', 'Test a bottle at one week—did it hiss when you opened it? If not, wait a week and 
	try again. After this point, the bottles can be stored cold and upright. Imbibe! As if we really need 
	to tell you how to do this! Assemble your tasting panel, clean your favorite beer glass, and crack 
	open a bottle of fresh, handcrafted beer. Decant the beer into your glass.', 'https://cdn.shopify.com
	/s/files/1/2785/6868/products/D01_6_x700_1_8665ed7f-ec96-4465-9259-e9c99c82cda6_x700.jpg?v=1622651559', 
	'https://www.northernbrewer.com/products/dead-ringer-ipa-1-gallon-recipe-kit', '4');

-- Bavarian Hefeweizen
INSERT INTO "recipes" ("name", "style", "intro", "original_gravity", "ferment_time", "bottle_time", 
	"malt_extract", "hops", "yeast", "priming_sugar", "brew_day", "fermentation", "bottling", 
	"conditioning", "image", "purchase_link", "rating")
VALUES('Bavarian Hefeweizen', 'Wheat', 'One of the signature brews of Bavaria, Hefeweizen is a 
	medium-bodied, effervescent ale practically exploding with yeast and wheat malt character – kind of 
	like a liquid multigrain bread. Our kit is 100% traditional—cloudy, malty, and spicy, with a smooth 
	mouthfeel and dense, whipped-cream head. Serve in a tall glass “mit hefe” - swirl the bottle to make 
	sure you get all the yeast!', '1.049', '2 Weeks', '2 Weeks', '1 lb. Wheat dry malt extract powder', 
	'3.5 grams German Perle hops', 'Bru Yeast Small Batch Wheat Ale Dry Yeast', '3 oz Fizz Drops', 
	'Collect and heat 1.25 gallons of water in your kettle. Any good-quality drinking water will work 
	for our purposes—if the water tastes OK, it will make good beer. Bring the liquid to a boil. We now 
	have wort (brewing term for unfermented beer). Crank up the heat and bring it to a boil. Boil the 
	wort for 45 minutes total, with the following additions and times: Add the dry malt extract powder 
	(1 lb. Wheat) at the beginning of the boil; stir to dissolve and boil for the full 45 minutes. 15 
	minutes after the malt extract addition, add the first hop addition (3.5 grams German Perle) and 
	boil for 30 minutes. 45 minutes after the malt addition, the 45 minute boil ends—turn off the burner. 
	Cool the wort. Sanitize the gear. Siphon the cool wort from the kettle into the jug. Aerate the wort. 
	Add the yeast packet. Seal the fermentor. Move the fermenter to a dark, quiet spot until fermentation 
	begins.', 'Fermentation begins. Within a day or so of Brew Day, fermentation begins—as yeast cells 
	convert malt sugars into CO2 gas and alcohol, you will notice bubbles come through the airlock and 
	a cap of frothy foam form on the beer. Fermentation ends. Roughly one to two weeks from Brew Day, 
	fermentation will end—the exact timing depends a lot on temperature and also on wort biochemistry 
	that we won’t worry about right now. Don’t be alarmed if it takes a few less or a few more days—brewing 
	is an art as well as a science, and your beer will be fine. When the supply of malt sugars in the 
	wort is depleted, the yeast cells begin to go dormant and sink to the bottom of the fermentor. 
	Bubbles come through the airlock very infrequently or stop entirely, and the cap of foam starts 
	to subside or disappears. If you have it attached, remove the blowoff tubing once things have settled 
	down, and replace it with the airlock until you’re ready to bottle.', 'Two weeks after Brew Day, 
	your beer is ready to bottle. There’s a lot going on during bottling day—a second set of hands is 
	a big help ... and can usually be paid in beer! Move the fermentation jug to a table or countertop. 
	Do this early, so the yeast and sediment has a chance to re-settle! Sanitize the gear. Connect one 
	end of the hose to the Auto siphon, and the other end of the hose to the bottle filler. Start the 
	siphon and fill the bottles. Add one Fizz Drop tablet to each bottle. Cap the bottles.', 'Wait just 
	a little longer! It’ll be worth it— promise. Keep the filled, capped bottles at room temperature for 
	approx. 1–2 weeks to let the beer carbonate. Test a bottle at one week—did it hiss when you opened it? 
	If not, wait a week and try again. After this point, the bottles can be stored cold and upright. 
	Imbibe! As if we really need to tell you how to do this! Assemble your tasting panel, clean your 
	favorite beer glass, and crack open a bottle of fresh, handcrafted beer. Decant the beer into your 
	glass.', 'https://cdn.shopify.com/s/files/1/2785/6868/products/t00_x700_1_ee315a4c-eef3-4518-ad7d-
	2382db5e206b_x700.jpg?v=1578597423', 'https://www.northernbrewer.com/products/bavarian-hefeweizen-1-
	gallon-recipe-kit', '3');

-- West Coast Red Ale
INSERT INTO "recipes" ("name", "style", "intro", "original_gravity", "ferment_time", "bottle_time", 
	"malt_extract", "hops", "yeast", "priming_sugar", "brew_day", "fermentation", "bottling", 
	"conditioning", "image", "purchase_link", "rating")
VALUES('West Coast Red Ale', 'Amber Ale', 'West Coast-style amber/red ales have been mainstays of 
	the craft beer revolution for a while. Our version uses an extra-loaded caramelly base, and piles 
	on the fruity West coast hops.', '1.039', '2 Weeks', '2 Weeks', '1.5 lbs. Northern Brewer Gold malt 
	extract syrup', '3.5 grams Chinook hops, 3.5 grams Perle hops, 7 grams Centennial hops, 7 grams 
	Cascade hops', 'Bru Yeast Small Batch American Dry Ale Yeast', '3 oz Fizz Drops', 'Collect and heat 
	1.25 gallons of water in your kettle. Any good-quality drinking water will work for our purposes—if 
	the water tastes OK, it will make good beer. Steep grains in the mesh bag. Just think of this as 
	making tea with barley malt—steep for approximately 10 minutes as the water heats, then remove the 
	grain and discard. These grains will add desired color, flavor, aroma, and body to our finished beer. 
	Bring the liquid to a boil. We now have wort (brewing term for unfermented beer). Crank up the heat 
	and bring it to a boil. Boil the wort for 45 minutes total, with the following additions and times: 
	Add the malt extract syrup (1.5 lbs. Gold) and the first hop addition (3.5 grams Chinook) at the 
	beginning of the boil; stir to dissolve and boil for the full 45 minutes. 25 minutes after the malt 
	extract and first hop addition, add the second hop addition (3.5 grams Perle) and boil for 20 minutes. 
	35 minutes after the malt extract and first hop addition, add the third hop addition (7 grams 
	Centennial) and boil for 10 minutes. 40 minutes after the malt extract and first hop addition, add 
	the fourth hop addition (7 grams Cascade) and boil for 5 minutes. 45 minutes after the first hop 
	addition, the boil ends, turn off the burner. Cool the wort. Sanitize the gear. Siphon the cool wort 
	from the kettle into the jug. Aerate the wort. Add the yeast packet.', 'Fermentation begins. Within 
	a day or so of Brew Day, fermentation begins—as yeast cells convert malt sugars into CO2 gas and 
	alcohol, you will notice bubbles come through the airlock and a cap of frothy foam form on the beer. 
	Fermentation ends. Roughly one to two weeks from Brew Day, fermentation will end—the exact timing 
	depends a lot on temperature and also on wort biochemistry that we won’t worry about right now. 
	Don’t be alarmed if it takes a few less or a few more days—brewing is an art as well as a science, 
	and your beer will be fine. When the supply of malt sugars in the wort is depleted, the yeast cells 
	begin to go dormant and sink to the bottom of the fermentor. Bubbles come through the airlock very 
	infrequently or stop entirely, and the cap of foam starts to subside or disappears. If you have it 
	attached, remove the blowoff tubing once things have settled down, and replace it with the airlock 
	until you’re ready to bottle.', 'Move the fermentation jug to a table or countertop. Do this early, 
	so the yeast and sediment has a chance to re-settle! Sanitize the gear. Connect one end of the hose 
	to the Auto siphon, and the other end of the hose to the bottle filler. Start the siphon and fill 
	the bottles. Add one Fizz Drop tablet to each bottle. This small charge of sugar will carbonate (or 
	“prime”) our flat beer—the CO2 gas created by this mini- fermentation will be absorbed by the liquid 
	since it can’t escape the sealed bottle—thanks, science! Cap the bottles.', 'Wait just a little 
	longer! It’ll be worth it— promise. Keep the filled, capped bottles at room temperature for approx. 
	1–2 weeks to let the beer carbonate. Test a bottle at one week—did it hiss when you opened it? If 
	not, wait a week and try again. After this point, the bottles can be stored cold and upright. Imbibe! 
	As if we really need to tell you how to do this! Assemble your tasting panel, clean your favorite 
	beer glass, and crack open a bottle of fresh, handcrafted beer. Decant the beer into your glass.', 
	'https://cdn.shopify.com/s/files/1/2785/6868/products/j05_x700_b83e8351-71b5-4005-8bea-17e8bdfcaebd
	_x700.jpg?v=1583263991', 'https://www.northernbrewer.com/products/west-coast-radical-red-1-gallon-
	recipe-kit', '2');

-- Navel Orange Hard Seltzer
INSERT INTO "recipes" ("name", "style", "intro", "original_gravity", "ferment_time", "bottle_time", 
	"malt_extract", "hops", "yeast", "priming_sugar", "brew_day", "fermentation", "bottling", 
	"conditioning", "image", "purchase_link", "rating")
VALUES('Navel Orange', 'Hard Seltzer', 'Hard Seltzer is a bewitchingly balanced blend of intriguing 
	ingredients with an enchanting effervescence. A crisp and bubbly libation with brilliant citrus or 
	other flavors and a slightly tart taste, this hard seltzer is perfectly suited for year-round 
	enjoyment. Take it anywhere and proudly share with old friends, and maybe even use it to make a 
	few new ones.', '1.035', '4 Weeks', '2 Weeks', '10 oz Corn Sugar', '6g Crystallized Citrus Flavoring', 
	'Lalvin EC-1118', 'No Priming Sugar Needed', 'Heat 1 gallon of water. While heating, add the 10 oz. 
	of corn sugar (both packets) to the kettle and stir until dissolved. Bring to a boil for 10 minutes 
	to ensure sanitary conditions. Cool the solution. Fill a sink with cold water and ice, then put the 
	covered kettle in the ice bath. The goal is to cool the liquid to approx. 60- 80° F - the kettle 
	should be cool to the touch. Our yeast will be happiest at these temperatures. Sanitize fermenting 
	equipment and yeast pack. While the sugar solution cools, sanitize the fermenting equipment – 
	fermenter, lid or stopper, airlock, etc – along with the yeast pack. Pour the cooled sugar solution 
	into the sanitized fermenter. Add more cold water as needed to bring the volume to 1 gallon. Add 
	yeast once the temperature of the sugar solution is between 50° and 80°F. Sanitize and open the 
	yeast pack and carefully pour half the contents into the primary fermenter. Seal the fermenter. Add 
	approximately 1 tablespoon of sanitizing solution to the sanitized fermentation lock. Insert the 
	airlock into rubber stopper or lid, and seal the fermenter.', 'Active fermentation begins. Within 
	approximately 48 hours of Brewing Day, active fermentation will begin – there will be a cap of foam 
	on the surface of the seltzer, and you may see bubbles come through the fermentation lock. The 
	optimum fermentation temperature for this fermentation is 60°- 80° F. Move the fermenter to a warmer 
	or cooler spot as needed. 24 hours after pitching the yeast, dissolve 1/3 of the contents of the 
	yeast nutrient packet in a small amount of water and bring to a brief boil in the microwave. Cover, 
	allow to cool and add directly to the fermentor. 48 hours after pitching the yeast, follow the above 
	procedure and add another 1/3 of the packet of yeast nutrient directly to the fermentor. 72 hours 
	after pitching the yeast, follow the above procedure and add another 1/3 of the packet of yeast 
	nutrient directly to the fermentor. Active fermentation ends. Approximately one to two weeks after 
	brewing day, active fermentation will end. When the foam subsides and no CO2 bubbles are evident and 
	bubbling in the air lock slows down or stops, allow to rest for an additional 2 weeks to clear and 
	then proceed to the next step.', 'Sanitize siphoning and bottling equipment. Add one Fizz Drop tablet 
	to each bottle. This small charge of sugar will carbonate (or “prime”) our flat seltzer—the CO2 gas 
	created by this mini fermentation will be absorbed by the liquid since it can’t escape the sealed 
	bottle. Add the crystallized citrus flavoring packet to a small amount of water until dissolved. 
	Heat to boiling briefly. Gently stir half into the seltzer. Stir gently, taste, and add additional 
	flavoring solution according to your preference of flavor intensity. Fill and cap bottles.', 
	'Condition bottles at room temperature for 1–2 weeks. After this point, the bottles can be stored 
	cool or cold. Serving. Pour into a clean glass, being careful to leave the layer of sediment at the 
	bottom of the bottle. Cheers!', 'https://cdn.shopify.com/s/files/1/2785/6868/products/B11650-navel-
	orange-hard-seltzer_fba58c9f-440d-4668-8281-db4347754c69_x700.jpg?v=1581533172', 'https://www.northern
	brewer.com/products/navel-orange-hard-seltzer-1-gallon-recipe-kit', '3');

-- Dry Irish Stout
INSERT INTO "recipes" ("name", "style", "intro", "original_gravity", "ferment_time", "bottle_time", 
	"malt_extract", "hops", "yeast", "priming_sugar", "brew_day", "fermentation", "bottling", 
	"conditioning", "image", "purchase_link", "rating")
VALUES('Dry Irish Stout', 'Stout', 'Arguably Ireland’s most famous export, dry stout has a loyal 
	following all over the world. Our stout kit has a pronounced roasty, coffee-like flavor and aroma, 
	imparted by a generous helping of roasted barley. Hop bitterness enhances the dryness, and the 
	medium body makes for a very drinkable dark beer. This is one of the most popular styles among home 
	brewers; after a few pints, you’ll understand why.', '1.042', '2 Weeks', '2 Weeks', '1 lb. Golden 
	Light dry malt extract', '10.5 grams Cluster hops', 'Bru Yeast Small Batch English Ale Dry Yeast', 
	'3 oz Fizz Drops', 'Collect and heat 1.25 gallons of water in your kettle. Any good-quality drinking 
	water will work for our purposes—if the water tastes OK, it will make good beer. Steep grains in the 
	mesh bag. Just think of this as making tea with barley malt—steep for approximately 10 minutes as the 
	water heats, then remove the grain and discard. These grains will add desired color, flavor, aroma, 
	and body to our finished beer. Bring the liquid to a boil. We now have wort (brewing term for 
	unfermented beer). Crank up the heat and bring it to a boil. Boil the wort for 45 minutes total, 
	with the following additions and times: Add the 1 lb. Golden Light dry malt extract and the hop 
	addition (10.5 grams Cluster hops) at the beginning of the boil; stir to dissolve and boil for the 
	full 45 minutes. 45 minutes after the extract and hop addition, the boil ends—turn off the burner. 
	Cool the wort. Sanitize the gear. Siphon the cool wort from the kettle into the jug. Aerate the wort. 
	Add the yeast packet. Seal the fermentor. Move the fermenter to a dark, quiet spot until fermentation 
	begins.', 'Fermentation begins. Within a day or so of Brew Day, fermentation begins—as yeast cells 
	convert malt sugars into CO2 gas and alcohol, you will notice bubbles come through the airlock and 
	a cap of frothy foam form on the beer. Fermentation ends. Roughly one to two weeks from Brew Day, 
	fermentation will end—the exact timing depends a lot on temperature and also on wort biochemistry 
	that we won’t worry about right now. Don’t be alarmed if it takes a few less or a few more days—
	brewing is an art as well as a science, and your beer will be fine. When the supply of malt sugars 
	in the wort is depleted, the yeast cells begin to go dormant and sink to the bottom of the fermentor. 
	Bubbles come through the airlock very infrequently or stop entirely, and the cap of foam starts to 
	subside or disappears. If you have it attached, remove the blowoff tubing once things have settled 
	down, and replace it with the airlock until you’re ready to bottle.', 'Move the fermentation jug to 
	a table or countertop. Do this early, so the yeast and sediment has a chance to re-settle! Sanitize 
	the gear. Connect one end of the hose to the Auto siphon, and the other end of the hose to the bottle 
	filler. Start the siphon and fill the bottles. Remove the airlock and stopper from the jug and place 
	the Auto-Siphon into the beer; while holding down the bottle filler to keep the valve open, have your 
	helper pull up, then push down on the siphon piston to begin the flow of beer. Just lift up on the 
	filler to stop the flow of beer. Try to leave about 1” of headspace in each bottle. Add one Fizz 
	Drop tablet to each bottle. This small charge of sugar will carbonate (or “prime”) our flat beer—
	the CO2 gas created by this mini- fermentation will be absorbed by the liquid since it can’t escape 
	the sealed bottle—thanks, science! Cap the bottles.', 'Wait just a little longer! It’ll be worth it— 
	promise. Keep the filled, capped bottles at room temperature for approx. 1–2 weeks to let the beer 
	carbonate. Test a bottle at one week—did it hiss when you opened it? If not, wait a week and try 
	again. After this point, the bottles can be stored cold and upright. Imbibe! As if we really need to 
	tell you how to do this! Assemble your tasting panel, clean your favorite beer glass, and crack open 
	a bottle of fresh, handcrafted beer. Decant the beer into your glass.', 'https://cdn.shopify.com/s/
	iles/1/2785/6868/products/m09_x700_1_x700.jpg?v=1579812108', 'https://www.northernbrewer.com/products
	/dry-irish-stout-small-batch-recipe-kit', '5');

-- INSERT INTO SUPPLIES TABLE -- 

-- Auto Siphon
INSERT INTO "public"."supplies"("name", "description", "image_url", "purchase_link") 
VALUES('Auto Siphon', 'One stroke of the racking cane/piston assembly will start 
	a siphon when immersed in as little as six inches of beer or wine; less than six 
	inches may require a second stroke. Includes a removable diverter tip to minimize 
	sediment pickup. Plastic construction; can be disassembled for cleaning.', 
	'https://cdn.shopify.com/s/files/1/2785/6868/products/7201-auto-siphon_2e0c95fa-c920-410d-
	904d-552e8428c3e8_x700.jpg?v=1576780622', 'https://www.northernbrewer.com/products/auto-siphon-5-16') 
RETURNING "id", "name", "description", "image_url", "purchase_link";

-- Large Dial Thermometer
INSERT INTO "public"."supplies"("name", "description", "image_url", "purchase_link")
VALUES('Large Dial Thermometer', 'Large, easy-to-read with 1.75" face, 8" probe. Metal 
	clip attaches to the lip of a kettle or mash tun for constant readings. Stainless steel, 
	temperature range of 30-220 degrees Fahrenheit. Does not display in Celsius. This is the type 
	of thermometer usually used to froth/steam milk.', 'https://cdn.shopify.com/s/files/1/2785
	/6868/products/7415-30_x700.png?v=1581367375', 'https://www.northernbrewer.com/products/large-
	dial-frothing-thermometer')
RETURNING "id", "name", "description", "image_url", "purchase_link";

-- Homebrew Starter Kit
INSERT INTO "public"."supplies"("name", "description", "image_url", "purchase_link") 
VALUES('Homebrew Starter Kit', 'The Siphon-less Craft Beer Making Kit is for anyone 
	that enjoys craft beer, has a streak of DIY gumption, and wants a complete kit with 
	a simplified method of beer making. We’ve made our Little Big Mouth Bubbler fermenter 
	siphon-less, reducing the tools needed and some complexity in the brewing process. 
	Meaning you’ll have an easier and better experience making your first batch.', 'https://
	cdn.shopify.com/s/files/1/2785/6868/products/7611-CBMK-1-gallon-siphonless-starter-kits_1_x
	700.jpg?v=1614294839', 'https://www.northernbrewer.com/products/craft-beer-making-kit-with-
	siphonless-fermenter-1-gallon')
RETURNING "id", "name", "description", "image_url", "purchase_link";;

-- 2 Gallon Stainless Kettle
INSERT INTO "public"."supplies"("name", "description", "image_url", "purchase_link") 
VALUES('2 Gallon Stainless Kettle', 'Stainless two-gallon brew kettle is budget friendly 
	and ideal for brewing small batches of beer. We recommend this kettle for use with the 
	Northern Brewer 1 Gallon Craft Beer Making Kit. This kettle is compatible with all cook-tops, 
	and it is great for beginners! The quality stainless steel lasts a lifetime and is safe and 
	non-reactive.', 'https://cdn.shopify.com/s/files/1/2785/6868/products/2_gallon_stainless_steel_
	pot_brew_kettle_x700.jpg?v=1574713520', 'https://www.northernbrewer.com/products/2-gallon-
	stainless-kettle') 
RETURNING "id", "name", "description", "image_url", "purchase_link";

-- 12 oz Bottles
INSERT INTO "public"."supplies"("name", "description", "image_url", "purchase_link") 
VALUES('12 oz. Beer Bottles', 'You don’t always need a whole bunch of bottles when you’re 
	making beer. So, we made a 12 pack of bottles for anyone that is brewing a 1 gallon batch, 
	bottling up a few for a party, or for someone who just needs a couple extra bottles for 
	their next brew.', 'https://cdn.shopify.com/s/files/1/2785/6868/products/42933-northern-
	brewer-12-pack-of-bottles_1_x700.jpg?v=1598279084', 'https://www.northernbrewer.com/products
	/12-oz-beer-bottles-12-pack') 
RETURNING "id", "name", "description", "image_url", "purchase_link";

-- Star San Sanitizer
INSERT INTO "public"."supplies"("name", "description", "image_url", "purchase_link") 
VALUES('Star San Sanitizer', 'Our favorite sanitizer! Star San is an acid-based no-rinse 
	sanitizer that is effective and easy to use. Made from food-grade phosphoric acid, safe for 
	people and the environment. Star San is self-foaming, which helps it to penetrate cracks and 
	crevices. Odorless and flavorless, no need to worry about tainting your beer or wine.', 
	'https://cdn.shopify.com/s/files/1/2785/6868/products/star-san-8oz_x700.jpg?v=1592593009', 
	'https://www.northernbrewer.com/products/star-san') 
RETURNING "id", "name", "description", "image_url", "purchase_link";


-- INSERT INTO CREATED BREW TABLE --

-- Summer Squeeze
INSERT INTO "public"."created_brew"("name", "style", "notes", "date", "user_id") 
VALUES('Summer Squeeze', 'Shandy', 'It was odd adding the lemon crystals. Not sure if it 
	will turn out the way I want it.', '2021-07-20', 1) 
RETURNING "id", "name", "style", "notes", "date", "user_id";

-- Bourbon Barrel
INSERT INTO "public"."created_brew"("name", "style", "notes", "date", "user_id") 
VALUES('Bourbon Barrel Porter', 'Stout/Porter', 'Hassle to brew. Hopefully these wood chips make 
	it worth the process.', '2021-07-21', 1) 
RETURNING "id", "name", "style", "notes", "date", "user_id";

-- Dead Ringer IPA
INSERT INTO "public"."created_brew"("name", "style", "notes", "date", "user_id") 
VALUES('Dead Ringer', 'IPA', 'Forgot to add the third batch of hops until the end. We shall see how 
	this turns out. ', '2021-08-04', 1) 
RETURNING "id", "name", "style", "notes", "date", "user_id";