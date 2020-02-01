server "sree.dev", user: "deploy", roles: %w{app db web}
set :branch, 'master'
set :deploy_to, '/home/deploy/apps/wt-api'
set :rails_env, :production
