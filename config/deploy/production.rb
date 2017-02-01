set :user, 'deployer'
set :branch, fetch(:branch, 'master')

server '45.79.91.167', user: fetch(:user), roles: %w( app web db ), primary: true
set :deploy_to, "/home/deployer/application"

set :ssh_options, {
  keys: %w(~/.ssh/id_rsa),
  forward_agent: false,
  auth_methods: %w( publickey )
}

#after 'deploy:finished', 'deploy:restart_server'