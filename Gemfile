source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

# A B C D E F 
gem 'annotate'
gem 'bootstrap_sb_admin_base_v2'
gem 'bcrypt', '~> 3.1.7'
gem 'bootstrap-sass', '~> 3.3.1'
gem 'carrierwave'
gem 'ckeditor'
gem 'coffee-rails', '~> 4.2'
gem 'colorize'
gem 'devise'
gem 'faker'
gem 'font-awesome-rails'
# G H I J K L 
gem 'jbuilder', '~> 2.5'
gem 'jquery-rails'
gem 'kaminari'
# M N O P Q R 
gem 'mailcatcher'
gem 'mini_magick'
gem 'mysql2', '>= 0.3.18', '< 0.5'
gem 'puma', '~> 3.0'
gem 'rails', '~> 5.0.1'
gem 'redis', '~> 3.0'
gem 'rails-settings-cached'
# S T U V W X Y Z
gem 'sass-rails', '~> 5.0'
gem 'simple_form'
gem 'slim-rails'
#gem 'turbolinks', '~> 5'
gem 'uglifier', '>= 1.3.0'


group :development do
  gem 'any_login'
  gem 'capistrano-bundler'
  gem 'capistrano-rails'
  gem 'capistrano-passenger'
  gem 'capistrano-rvm'
  gem 'pry'
  gem 'pry-rails'
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '~> 3.0.5'
  
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

group :development, :test do
  gem 'database_cleaner'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
