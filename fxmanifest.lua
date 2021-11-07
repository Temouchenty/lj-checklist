fx_version 'cerulean'
game 'gta5'

description 'lj-checklist'
version '1.0'
author 'github.com/loljoshie'

ui_page 'html/ui.html'

shared_scripts { 
	'@qb-core/import.lua',
	'config.lua'
}

client_script 'client.lua'
server_script 'server.lua'

files {
    'html/*'
}