set :stage, :production
set :rails_env, 'production'

role :web, %w{deployer@terminal.quieroruby.com.ar}
role :app, %w{deployer@terminal.quieroruby.com.ar}
role :db,  %w{deployer@terminal.quieroruby.com.ar}

server 'terminal.quieroruby.com.ar', user: 'deployer', roles: %w{web app db}
