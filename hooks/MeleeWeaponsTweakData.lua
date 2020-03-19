Hooks:PostHook(BlackMarketTweakData, "_init_melee_weapons", "zm_init_new_melee_wep2", function(self)

    local data = table.merge(deep_clone(self.melee_weapons["shovel"]), table.merge({
        name_id = "wpn_melee_mcgshovel",
        dlc = "infamy",
        custom = true,
        unit = "units/pd2_mod_zombies/weapons/wpn_fps_mel_mcgshovel/wpn_fps_mel_mcgshovel",
        third_unit = "units/pd2_mod_zombies/weapons/wpn_fps_mel_mcgshovel/wpn_tps_mel_mcgshovel",
        stats = {
            min_damage = 30,
            max_damage = 40,
            min_damage_effect = 0,
            max_damage_effect = 0,
            charge_time = 2.5,
            range = 275,
            weapon_type = "blunt"
        }
    }))

    self.melee_weapons["mcgshovel"] = data
end)