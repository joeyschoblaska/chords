require 'bundler/capistrano'

set :application, 'chords'
set :repository,  'git@github.com:joeyschoblaska/chords'
set :scm, :git
set :deploy_to, "/home/deploy/#{application}"
set :use_sudo, false

ssh_options[:forward_agent] = true

role :web, 'deploy@joeyschoblaska.com'
role :app, 'deploy@joeyschoblaska.com'

namespace :deploy do
  task :start, :roles => :web do
    run "touch #{current_path}/tmp/restart.txt"
  end

  task :restart, :roles => :web do
    run "touch #{current_path}/tmp/restart.txt"
  end
end
