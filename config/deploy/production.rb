server "104.131.53.113", user: 'deployer', roles: %w{app db web}
set :stage, :production
set :deploy_user, "deployer"
set :full_app_name, "dschmura_website"
set :deploy_to, "/home/#{fetch(:deploy_user)}/apps/#{fetch(:full_app_name)}"
set :branch, 'master'
set :rails_env, 'production'