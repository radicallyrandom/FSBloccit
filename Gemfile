source 'https://rubygems.org'


# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.2.0'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.1.0'
# See https://github.com/sstephenson/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# Use Twitter Bootstrap
gem 'bootstrap-sass'

# Add Markdown Processing
gem 'redcarpet'

# Use Devise For Authentication
gem 'devise'

# Use jquery as the JavaScript library
gem 'jquery-rails'

# Use Faker for Seed Data
gem 'faker'

#Use Pundit For Easy Authorization & Roles
gem 'pundit'

# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.0'
# bundle exec rake doc:rails generates the API under doc/api.
gem 'sdoc', '~> 0.4.0', group: :doc

# Use Carrierwave For Image Uploading
gem 'carrierwave'

# Use MiniMagick for manipulating images
gem 'mini_magick'

# Use Fog NOT Fog-AWS (initialization error) for storing images in Amazon S3
gem 'fog'

# Pagination Gem Compatible With Rails 3
gem 'will_paginate', '~> 3.0.5'

# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Unicorn as the app server
# gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

# Add Figaro For Environment Variables
gem 'figaro', '1.0'

group :development, :test do

  # Use Sqlite3 in as the database for active records in development
  gem 'sqlite3'

  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug'

  # Access an IRB console on exception pages or by using <%= console %> in views
  gem 'web-console', '~> 2.0'

  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'

  # Add Rails ERD 
  gem 'rails-erd'

  # Show Better Errors in Development
  gem "better_errors"

  # Hook Up Bettor Errors
  gem "binding_of_caller"
  
end

group :production do
  # Use Postgres as the database for Active Record in Production
  gem 'pg'
  gem 'rails_12factor'
end
