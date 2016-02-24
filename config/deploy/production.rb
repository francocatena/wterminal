set :stage, :production
set :rails_env, 'production'

role :web, %w{deployer@irb.cirope.com}
role :app, %w{deployer@irb.cirope.com}
role :db,  %w{deployer@irb.cirope.com}

server 'irb.cirope.com', user: 'deployer', roles: %w{web app db}
