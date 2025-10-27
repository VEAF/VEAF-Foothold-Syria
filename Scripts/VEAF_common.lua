local SY_DYNAMIC_SCRIPTS_PATH = SY_DYNAMIC_PATH .. [[..\scripts\]]

-- setup first batch of configuration (no need for any script before this one)
NoSA10AndSA11=false
CreditLosewhenKilled=false -- if true, Blue coalition will lose 100 points for every player death
SplashDamage=false
ShowKills=true -- if true, a message will come up upon kills
StoreLimit = true -- if true, pilots will have to earn points before spending coalition budget
CTLDCost=true -- if the above is false, then ctld stuff wil not cost anything. default is true
RankingSystem = true -- if false, the shop is open to everyone and no ranking will be applied.
InvisibleA10 = false-- if the above is true, then A10 wlll be invisble to the enemy planes, not GROUND UNITS
UseStatics=true

-- load first batch of scripts
assert(loadfile(SY_DYNAMIC_SCRIPTS_PATH .. "Moose.lua")) ()
assert(loadfile(SY_DYNAMIC_SCRIPTS_PATH .. "Hercules_Cargo.lua")) ()
assert(loadfile(SY_DYNAMIC_SCRIPTS_PATH .. "zoneCommander_moose.lua")) ()
assert(loadfile(SY_DYNAMIC_SCRIPTS_PATH .. "footholdSyriaSetupv2.lua")) ()

-- setup second batch of configuration (need to load zoneCommander_moose.lua script before)
GlobalSettings.setDifficultyScaling(1.2,1) -- red respawn factor
GlobalSettings.setDifficultyScaling(1.1,2) -- blue respawn facto

-- load the rest of the scripts
assert(loadfile(SY_DYNAMIC_SCRIPTS_PATH .. "WelcomeMessage_Syria_EXTENDED.lua")) ()
assert(loadfile(SY_DYNAMIC_SCRIPTS_PATH .. "Foothold_SY_MANTIS.lua")) ()
assert(loadfile(SY_DYNAMIC_SCRIPTS_PATH .. "weaponslist.lua")) ()
assert(loadfile(SY_DYNAMIC_SCRIPTS_PATH .. "Destroy STATIC SYRIA EXTENDED.lua")) ()
assert(loadfile(SY_DYNAMIC_SCRIPTS_PATH .. "Zeus.lua")) ()
assert(loadfile(SY_DYNAMIC_SCRIPTS_PATH .. "MA_CTLD_SY_Extended.lua")) ()
assert(loadfile(SY_DYNAMIC_SCRIPTS_PATH .. "EWRS.lua")) ()
assert(loadfile(SY_DYNAMIC_SCRIPTS_PATH .. "Splash_Damage_3.4.1_leka.lua")) ()
assert(loadfile(SY_DYNAMIC_SCRIPTS_PATH .. "AIEN.lua")) ()

-- Silence ATC on all bases
local bases = world.getAirbases()
for _, base in pairs(bases) do
    if base:getDesc() then
        if base:getDesc().category == Airbase.Category.AIRDROME then
            base:setRadioSilentMode(true)
        end
    end
end
