

-- uncomment this if you already created the database and you
-- want to start over (it deletes all the tables and data):
DROP SCHEMA dnd;

CREATE SCHEMA dnd;

USE dnd;

CREATE TABLE spells
(
	sname varchar(20),
	srange int,
	duration varchar(35),
	slevel int,
	saving varchar(15),
	class varchar(60),
	school varchar(15),
	castingtime varchar(10),
	description varchar(1000),
    components varchar(50),
	PRIMARY KEY (sname)
);


-- ************* load the data *************
INSERT INTO spells
	(sname, srange, duration, slevel, saving, class, school, castingtime, description, components)
VALUES
	('Heal', 60, 'Instant' , 6,'none','Cleric, Druid','Evocation','1 Action','Choose a creature that you can see wihtin range. A surge of positive energy washes through the creature, causing it to regain 70 hit point. This spell also ends blindness, deafness, and any diseases affecting the target. This spell has no effect on constructs or undead. At higher levels. When you cast this spell using a spell slot of 7th level or higher, the amount of healing increases by	10 for each spell slot level above 6th','V,S'),
	('Fire Bolt', 120, 'Instant', 0,'none','Sorcerer, Wizard','Evocation','1 Action','You hurl a mote of fire at a creature or object wihtin range. Make a ranged spell attack agaihnst the target. on a hit, the target takes 1d10 fire damage. A flammable object hit by this spell ignites if it isnt being worn or carried. This spells damage increases by 1d10 when you reach 5th level(2d10), 11th level (3d10), and 17th level (4d10)','V,S'),
	('Detect Magic',0,'Concentration, Up to 10 Mins',1,'none','Bard, Cleric, Druid, Paladin, Ranger, Sorcerer, Wizard','Divination','1 Action','For the duration, you sense the presence of magic within 30 feel of you. If you sense magic in this way, you can use your Action to see a faint aura around any visible creature or object in the area that bears magic, and you learn its school of magic, if any. The spell can penetrate most barriers, but is blocked by 1 foot of stone, 1 inch of common metal, a thin sheet of lead, or 3 feet of wood or dirt','V,S'),
	('Enthrall',60,'1 Min',2,'Wisdom','Bard, Warlock','Enchantment','1 Action','You weave a distracting string of words causing creature of your choice that you can see within range and that can hear you to make a wisdom saving throw. Any creature that cant be charmed succeds on this saving throw automatically and if you or your companions are fighting a creature it has advantage on the save. On a failed save the target has disadvantage on perrcetion checkes made to perceive any creature other that you until the spell ends or until the target can no longer hear you. The spell ends if you are incapacitated or can no longer speak.','V,S'),
 	('Fly',0,'Concentration, up to 10 Mins',3,'none','Sorcerer, Warlock, Wizard','Transmutation','1 Action','You touch a willing creature. The target gains a fling speed of 60 feet for the duration. When the spell ends, the target falls if it is still aloft, unless it can stop the fall. At higher levels: When you cast this spell using a spell slot of 4th level or higher, you can target one additional creature for each slot level above 3rd','V,S,M (a wing feather from any brid)'),
	('Greater Invisibility',0,'Concentration, up to 1 Min',4,'none','Bard, Sorcerer, Wizard','Illusion','1 Action','You or a creature you touch becomes invisable until the spell ends. Anything the target is wearing or carrying is invisible as long as it is on the targets person.','V,S'),
	('Circle of Power',0,'Concentration, up to 10 Mins',5,'none','Paladin','Abjuration','1 Action','Divine energy radiates from you, distorting and diffusing magical energy withing 30 feet of you, centered on you. for the duration, each friendly creature in the area(including you) has adcantage on saving throws against spells and ohter magical effects. Additionally, when an affected creature succeeds on a saving throw made against a spell or magical effect that allows it to make a saving throw to take only half damage, it instead takes no damage if it succeeds on the saving throw.','V'),
    ('Maze',60,'Concentration, up to 10 Mins',8,'none','Wizard','Conjuration','1 Action','YOu banish a creature that you can see within range into a labyrinthine demiplane. The target remains there for the duration or until it escapes the maze. The target can use its Action to attempt to escape. When it does so, it makes a DC 20 intelligence check. If it succeeds, it escapes, and the spell ends ( a minotaur or goristro demon automatically suceeds). When hte spell ends, the target reappears in the space it left or, If that space is occupied in the neares unoccuied space','V,S'),
    ('Power Word Kill',60, 'Instant',9,'none','Bard, Sorcerer, Warlock, Wizard', 'Enchantment','1 Action','You utter a word of power that can compel one creature you can see within range to die instantly. If the creature you chose has 100 hit points or fewer it dies. Otherwise the spell has no effect','V'),
	('Finger of Death',60,'Instant',7,'Constitution','Sorcerer, Warlock, Wizard','Necromancy','1 Action','You send nagative energy coursing through a creature that you can see within range, causing it searing pain. The target must make a constitution saving throw. it takes 7d8 + 30 necrotic damage on a failed save, or half as much damage on a successful one. A humanoid killed by this spell rises at the start of your next turn as a zombie that is permanently under your command, following your verbal orders to the best of its ability.','V,S');
