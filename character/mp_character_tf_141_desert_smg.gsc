// THIS FILE IS AUTOGENERATED, DO NOT MODIFY
main()
{
	self setModel("mp_body_desert_tf141_smg");
	codescripts\character::attachHead( "alias_tf141_heads_desert", xmodelalias\alias_tf141_heads_desert::main() );
	self setViewmodel("viewhands_tf141");
	self.voice = "taskforce";
}

precache()
{
	precacheModel("mp_body_desert_tf141_smg");
	codescripts\character::precacheModelArray(xmodelalias\alias_tf141_heads_desert::main());
	precacheModel("viewhands_tf141");
}
