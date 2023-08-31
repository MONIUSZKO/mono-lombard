fx_version 'cerulean'
game 'gta5'
lua54 'yes'

author 'M O N O'
description 'Skrypt na lombard napisany pod ox_lib'
version '1.0.0'

client_scripts {
    'client/*.lua',
    'config/config.lua',
}

shared_scripts {
    '@ox_lib/init.lua',
    'config/config.lua',
}

server_scripts {
    'server/*.lua',
    'config/config.lua',
}

dependencies {
    'es_extended',
    'ox_lib',
}