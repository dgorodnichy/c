# frozen_string_literal: true

source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.5.0'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'haml'
gem 'pg', '>= 0.18', '< 2.0'
gem 'puma', '~> 3.11'
gem 'rails', '~> 5.2.0'
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'webpacker'

gem 'jbuilder', '~> 2.5'
gem 'turbolinks', '~> 5'

gem 'bootsnap', '>= 1.1.0', require: false

group :development, :test do
  gem 'byebug', platforms: %i[mri mingw x64_mingw]
end

group :development do
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
  gem 'web-console', '>= 3.3.0'
end

group :test do
  gem 'capybara', '>= 2.15', '< 4.0'
  gem 'chromedriver-helper'
  gem 'guard-rspec', require: false
  gem 'overcommit', require: false
  gem 'rubocop', require: false
  gem 'selenium-webdriver'
end

group :development, :test do
  gem 'factory_bot_rails'
  gem 'faker'
  gem 'pry'
  gem 'pry-doc'
  gem 'pry-rails'
  gem 'rspec-rails'
  gem 'shoulda-matchers'
end
