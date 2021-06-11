Config = {
	DiscordToken = "ODMwODIzNTM1NjM0MTUzNDky.YHMStg.o2TmR3SJi46EJld1hOSajyNjGDc",
	GuildId = "841747883199430667",

	-- Format: ["Role Nickname"] = "Role ID" You can get role id by doing \@RoleName
	Roles = {
		["TestRole"] = "Some Role ID" -- This would be checked by doing exports.discord_perms:IsRolePresent(user, "TestRole")
	}
}
