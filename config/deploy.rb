# config valid for current version and patch releases of Capistrano
lock "~> 3.18.0"

set :application, "beroot_app"
set :repo_url, "https://github.com/dmitryS1666/beroot_app.git"

# Default deploy_to directory is /var/www/my_app_name
set :deploy_to, "/root/#{fetch :application}"

# Default value for linked_dirs is []
append :linked_dirs, 'log', 'tmp/pids', 'tmp/cache', 'tmp/sockets', 'vendor/bundle', '.bundle', 'public/system', 'public/uploads'

append :linked_files, "config/production.yml.enc"

# Only keep the last 5 releases to save disk space
set :keep_releases, 5


set :ssh_options, {
  keys: %w(~/.ssh/new_key),
  forward_agent: false,
  port: '22',
  # user_known_hosts_file: '/dev/null'
}

set :default_env, { path: "~/.rbenv/shims:~/.rbenv/bin:$PATH" }
set :rbenv_type, :user
set :rbenv_ruby, '2.7.6'

# set :ssh_options, {verify_host_key: :never}
# set :ssh_options, { user_known_hosts_file: '/dev/null', forward_agent: false }

set :assets_dir, %w[public/system]
set :local_assets_dir, 'public'

# set :nvm_type, :user
# set :nvm_node, 'v21.5.0'
# set :nvm_map_bins, %w[node npm rake]
set :assets_dir, %w[public/uploads]
set :local_assets_dir, %w[public/uploads]
