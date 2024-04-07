fx_version 'cerulean'
game 'gta5'
lua54 'yes'
version '1.0'

name 'Tagus RP'
author 'Tagus RP'
description 'Simple Scoreboard using OX LIB'

shared_scripts {
    '@ox_lib/init.lua',
    '@es_extended/imports.lua',
}

client_scripts {
    'client/*.lua',
}

server_scripts {
    '@oxmysql/lib/MySQL.lua',
    'server/*.lua'
}


