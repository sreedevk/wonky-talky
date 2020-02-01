# config valid for current version and patch releases of Capistrano
lock "~> 3.11.1"
set :application, "wt-api"
set :repo_url, "https://github.com/sreedevk/wonky-talky"
set :deploy_to, "/home/deploy/apps/wt-api"
set :scm, :git
set :rails_env, :production
append :linked_files, 'config/database.yml', 'config/secrets.yml'
append :linked_dirs, 'log', 'tmp/pids', 'tmp/cache', 'tmp/sockets', 'public/system'
set :passenger_restart_with_touch, true
set :keep_releases, 5
set :pty, false
