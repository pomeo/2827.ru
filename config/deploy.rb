#========================
#CONFIG
#========================
set :application, "2827.ru"
#========================
#CONFIG
#========================
require           "capistrano-offroad"
offroad_modules   "defaults"
set :repository,  "git@github.com:pomeo/#{application}.git"
#========================
#ROLES
#========================
set  :gateway,    "#{application}" # main server
role :app,        "10.3.110.20"      # container

after "deploy:create_symlink", "deploy:cleanup"
