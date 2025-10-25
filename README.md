# VEAF Foothold Syria v2.3.7

## Presentation

This is a modification of the original [Foothold Syria](https://www.digitalcombatsimulator.com/en/files/3342279/) mission by Lekaa, that I adapted to make it load all the script files and config directly from the server.

**Done using the latest version updated on 2025.10.20.**

## Update

### Triggers

Add this triggers on MissionStart:

**Modern:**
name: `mission start - dynamic`
do_script:
```lua
SY_DYNAMIC_PATH = [[C:\Users\veaf\Saved Games\DCS.missions\_servers\_TEMPLATES\Missions\foothold\Syria\Modern\]]
env.info("DYNAMIC SY LOADING")
assert(loadfile(SY_DYNAMIC_PATH .. "VEAF_SY_loader.lua")) ()
```

**Cold War:**
name: `mission start - dynamic`
do_script:
```lua
SY_DYNAMIC_PATH = [[C:\Users\veaf\Saved Games\DCS.missions\_servers\_TEMPLATES\Missions\foothold\Syria\Coldwar\]]
env.info("DYNAMIC SY LOADING")
assert(loadfile(SY_DYNAMIC_PATH .. "VEAF_SY_loader.lua")) ()
```

## Things to do

- [ ] prepare mission
- [ ] prepare presets
