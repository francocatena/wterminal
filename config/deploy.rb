# config valid only for Capistrano 3.1
lock '3.1.0'

set :application, 'terminal.quieroruby.com.ar'
set :user, 'deployer'
set :repo_url, 'git://github.com/francocatena/wterminal.git'

set :format, :pretty
set :log_level, :info

set :deploy_to, "/var/www/#{fetch(:application)}"
set :deploy_via, :remote_cache
set :scm, :git

set :linked_dirs, %w{log}

set :rbenv_type, :user
set :rbenv_ruby, '2.1.1'

set :keep_releases, 5

namespace :deploy do
  after :publishing, :restart
  after :finishing,  'deploy:cleanup'
end
