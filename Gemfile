source 'http://rubygems.org'

gem 'rails', '3.1.0'

gem 'jquery-rails'

gem 'simple_form'
gem 'haml-rails'
gem 'pry'
gem 'devise'
gem 'cancan'
gem 'sass'
gem 'jammit-s3'
gem 's3'

group :assets do
  gem 'zurb-foundation'
  gem 'sass-rails', "~> 3.1.0"
  gem 'coffee-rails', "~> 3.1.0"
  gem 'uglifier'
end

group :development, :test do
  gem 'mysql2'
  gem 'rspec-rails'
  gem 'factory_girl_rails'
  gem 'capybara', '~> 1.1.2'
  gem 'cucumber-rails', '~> 1.2.1'
  gem 'minitest', '~> 2.10.0'
  gem 'database_cleaner'
end

# Use unicorn as the web server
# gem 'unicorn'

# Deploy with Capistrano
# gem 'capistrano'

group :test do
  # Pretty printed test output
  gem 'turn', :require => false
end

group :production do
  gem 'pg'
end