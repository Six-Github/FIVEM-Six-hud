fx_version('cerulean')
games({ 'gta5' })

author 'SIX Development & TheCicus'
description 'Hud innovativa by IX Development & TheCicus'


shared_script('sh_config.lua');



server_scripts({
    "server/sv_hud.lua"
});

client_scripts({
    'client/cl_nui.lua',
    'client/cl_hud.lua',
    'client/cl_map.lua',
    'client/cl_seatbelt.lua',
    'client/cl_fuel.lua',
    "bridge.lua",
    "client/bridge/*.lua",
});

ui_page "UI/ui.html"
files {
    "UI/ui.html", 
    "UI/assets/**/*.*", 
    "UI/style.css",  
    "client/bridge/OX.lua",
}
