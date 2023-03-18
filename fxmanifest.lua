fx_version 'adamant'
lua54 'yes'
game 'gta5'

shared_scripts {
    '@ox_lib/init.lua'
}

server_scripts {
    'config.lua',
	'server/main.lua',
    '@mysql-async/lib/MySQL.lua'
	
}

client_scripts {
    'config.lua',
	'client/main.lua'
}

ui_page "html/index.html"

files({
    'html/index.html',
    'html/index.js',
    'html/main.css',
    'html/Assets/car.png',
    'html/Assets/home.png',
    'html/Assets/map.png',
    'html/Assets/truck.png',
    'html/Assets/van.png',
})