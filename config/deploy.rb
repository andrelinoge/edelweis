set :rvm_ruby_version, '2.3.3'

set :app_restart, true
set :rails_env, 'production'

set :application, "edelweis5"
set :repo_url, "git@github.com:andrelinoge/edelweis.git"

set :passenger_restart_with_touch, true

set :bundle_flags, ''

# Default value for :linked_files is []
set :linked_files, fetch(:linked_files, []).push('config/database.yml', 'config/secrets.yml')

# Default value for linked_dirs is []
set :linked_dirs, fetch(:linked_dirs, []).push('log', 'tmp/pids', 'tmp/cache', 'tmp/sockets', 'vendor/bundle', 'public/system', 'public/uploads')

# Default value for default_env is {}
# set :default_env, { path: "/opt/ruby/bin:$PATH" }

set :keep_releases, 5

set :passenger_restart_command, '/home/deployer/.rvm/gems/ruby-2.3.3/gems/passenger-5.1.2/bin/passenger-config restart-app'
