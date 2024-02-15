# frozen_string_literal: true

server '194.67.92.92', user: 'root', roles: %w[app web db], port: 22

set :rails_env, 'production'
set :branch, 'master'