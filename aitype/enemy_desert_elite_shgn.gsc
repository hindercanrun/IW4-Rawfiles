// THIS FILE IS AUTOGENERATED, DO NOT MODIFY
/*QUAKED actor_enemy_desert_elite_SHGN (1.0 0.25 0.0) (-16 -16 0) (16 16 72) SPAWNER FORCESPAWN UNDELETABLE PERFECTENEMYINFO DONTSHAREENEMYINFO
defaultmdl="body_us_army_shotgun"
"count" -- max AI to ever spawn from this spawner
SPAWNER -- makes this a spawner instead of a guy
FORCESPAWN -- will try to delete an AI if spawning fails from too many AI
UNDELETABLE -- this AI (or AI spawned from here) cannot be deleted to make room for FORCESPAWN guys
PERFECTENEMYINFO -- this AI when spawned will get a snapshot of perfect info about all enemies
DONTSHAREENEMYINFO -- do not get shared info about enemies at spawn time from teammates
*/
main()
{
	self.animTree = "";
	self.additionalAssets = "";
	self.team = "axis";
	self.type = "human";
	self.subclass = "regular";
	self.accuracy = 0.2;
	self.health = 100;
	self.secondaryweapon = "";
	self.sidearm = "beretta";
	self.grenadeWeapon = "fraggrenade";
	self.grenadeAmmo = 0;

	if ( isAI( self ) )
	{
		self setEngagementMinDist( 256.000000, 0.000000 );
		self setEngagementMaxDist( 768.000000, 1024.000000 );
	}

	switch( codescripts\character::get_random_weapon(3) )
	{
	case 0:
		self.weapon = "spas12";
		break;
	case 1:
		self.weapon = "m1014";
		break;
	case 2:
		self.weapon = "aa12_reflex";
		break;
	}

	character\character_shadow_co_shotgun::main();
}

spawner()
{
	self setspawnerteam("axis");
}

precache()
{
	character\character_shadow_co_shotgun::precache();

	precacheItem("spas12");
	precacheItem("m1014");
	precacheItem("aa12_reflex");
	precacheItem("beretta");
	precacheItem("fraggrenade");
}
