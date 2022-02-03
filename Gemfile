# frozen_string_literal: true

source "https://rubygems.org"

git_source(:github) {|repo_name| "https://github.com/#{repo_name}" }

ruby "3.0.2"

gem 'sinatra', :github => 'sinatra/sinatra'
gem 'webrick'
gem 'simplecov', require: false, group: :test

group :development, :test do
  gem 'rubocop', '1.25', require: false
end