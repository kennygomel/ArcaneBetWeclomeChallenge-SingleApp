# frozen_string_literal: true

source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.5.1'

gem 'bcrypt', '~> 3.1.7'
gem 'bootsnap', '>= 1.1.0', require: false
gem 'coffee-rails', '~> 4.2'
gem 'fast_jsonapi'
gem 'jbuilder', '~> 2.5'
gem 'jwt_sessions', '~> 2'
gem 'pg'
gem 'puma', '~> 3.11'
gem 'rack-cors'
gem 'rails', '~> 5.2.1'
gem 'redis', '~> 4.0'
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'webpacker'

group :development, :test do
  gem 'byebug', platforms: %i[mri mingw x64_mingw]
  gem 'factory_bot_rails', '~> 4.8'
  gem 'pry-byebug', '~> 3.4'
  gem 'pry-rails', '~> 0.3.4'
  gem 'rspec-rails', '~> 3.7'
  gem 'rubocop', '~> 0.59.1'
  gem 'rubocop-rspec'
end

group :development do
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
  gem 'web-console', '>= 3.3.0'
end

gem 'tzinfo-data', platforms: %i[mingw mswin x64_mingw jruby]
