#========================
#CONFIG
#========================
set :application, "2827.ru"
#========================
#CONFIG
#========================
set :scm, :git
set :deploy_via,  :copy
set :user,        "ubuntu"
set :port,        2222
set :normalize_asset_timestamps, false
set :copy_exclude, [
      "/.git/",
      "/.gitignore",
      "/Capfile",
      "/config.yaml",
      "/Rakefile",
      "Rules",
      "/tmp/",
      "/mkmf.log"
    ]
set :use_sudo, false
set :deploy_to, "/home/ubuntu/www/#{application}/www"

set :repository,  "git@github.com:pomeo/#{application}.git"
#========================
#ROLES
#========================
role  :app, "#{application}" # server

after "deploy:create_symlink",
      "deploy:cleanup"
