// THIS FILE IS AUTOGENERATED, DO NOT MODIFY
main()
{
	self setModel("body_seal_soccom_assault_c_blk");
	codescripts\character::attachHead( "alias_seal_soccom_heads_blk", xmodelalias\alias_seal_soccom_heads_blk::main() );
	self.voice = "taskforce";
}

precache()
{
	precacheModel("body_seal_soccom_assault_c_blk");
	codescripts\character::precacheModelArray(xmodelalias\alias_seal_soccom_heads_blk::main());
}
