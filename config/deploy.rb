# config valid for current version and patch releases of Capistrano
lock "~> 3.18.0"

set :application, "beroot_app"
set :repo_url, "git@example.com:me/my_repo.git"

# Default deploy_to directory is /var/www/my_app_name
set :deploy_to, "/root/#{fetch :application}"

# Default value for linked_dirs is []
append :linked_dirs, 'log', 'tmp/pids', 'tmp/cache', 'tmp/sockets', 'vendor/bundle', '.bundle', 'public/system', 'public/uploads'

# Only keep the last 5 releases to save disk space
set :keep_releases, 5

# Default value for default_env is {}
# set :default_env, { path: "/opt/ruby/bin:$PATH" }

# Default value for local_user is ENV['USER']
# set :local_user, -> { `git config user.name`.chomp }

# Uncomment the following to require manually verifying the host key before first deploy.
# set :ssh_options, verify_host_key: :secure
