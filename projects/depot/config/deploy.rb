require 'bundler/capistrano'


set :user, 'mauro'
set :domain, 'localhost'
set :application, 'depot'

set :rvm_type, :user
set :rvm_ruby_string, 'ruby-2.3.0'
require 'rvm/capistrano'

set :repository, 'Mauro@Quaglia:git/studio.git'
set :deploy_to, "/home/xpuser/deploy/#{application}"

role :app, domain # This may be the same as your `Web` server
role :web, domain # Your HTTP server, Apache/etc
role :db, domain, :primary => true # This is where Rails migrations will run
# ...

# if you want to clean up old releases on each deploy uncomment this:
# after "deploy:restart", "deploy:cleanup"

# if you're still using the script/reaper helper you will need
# these http://github.com/rails/irs_process_scripts

# If you are using Passenger mod_rails uncomment this:
# namespace :deploy do
#   task :start do ; end
#   task :stop do ; end
#   task :restart, :roles => :app, :except => { :no_release => true } do
#     run "#{try_sudo} touch #{File.join(current_path,'tmp','restart.txt')}"
#   end
# end