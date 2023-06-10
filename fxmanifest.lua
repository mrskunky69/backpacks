fx_version "adamant"
games {"rdr3"}
rdr3_warning 'I acknowledge that this is a prerelease build of RedM, and I am aware my resources *will* become incompatible once RedM ships.'

shared_scripts { 
    "config.lua",
}

server_script { 
    "server/**.lua",
}

client_script {
    "client/**.lua",
}

escrow_ignore {
    "images/**",
    "client/**",
    "server/**",
    "config.lua",
    "README.lua",
}

lua54 'yes'