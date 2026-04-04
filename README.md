# VEAF Foothold Syria v3.5.0

## Presentation

This is a modification of the original [Foothold Syria](https://www.digitalcombatsimulator.com/en/files/3342279/) mission by Lekaa, that I adapted to make it load all the script files and config directly from the server.

**Done using the latest version updated on 2026.04.04.**

## Update

### Triggers

Add this triggers on MissionStart:

**Modern:**
name: `Foothold loading`
do_script:
```lua
FOOTHOLD_DYNAMIC_PATH = [[C:\Users\veaf\Saved Games\DCS.missions\_TEMPLATES\Missions\foothold\Syria\Modern\]]
env.info("FOOTHOLD LOADING")
assert(loadfile(FOOTHOLD_DYNAMIC_PATH .. "VEAF_loader.lua")) ()
```

**Cold War:**
name: `Foothold loading`
do_script:
```lua
FOOTHOLD_DYNAMIC_PATH = [[C:\Users\veaf\Saved Games\DCS.missions\_TEMPLATES\Missions\foothold\Syria\Coldwar\]]
env.info("FOOTHOLD LOADING")
assert(loadfile(FOOTHOLD_DYNAMIC_PATH .. "VEAF_loader.lua")) ()
```

### Code
## Things to do

