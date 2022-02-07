# frozen_string_literal: true

source "https://rubygems.org"

git_source(:github) { |repo_name| "https://github.com/#{repo_name}" }

ruby "3.0.2"

gem 'rspec'
gem 'simplecov', require: false, group: :test
gem 'sinatra'
gem 'sinatra-contrib'
gem 'webrick'

group :development, :test do
  gem 'rubocop', '1.20', require: false
end
