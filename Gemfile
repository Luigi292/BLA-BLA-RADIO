source "https://rubygems.org"

ruby "3.2.3
"

# Rails framework
gem "rails", "~> 7.1.3", ">= 7.1.3.2"

# Asset pipeline
gem "sprockets-rails"

# Database adapter
gem "pg", "~> 1.1"

# Web server
gem "puma", ">= 5.0"

# JavaScript modules with ESM import maps
gem "importmap-rails", "~> 2.0.1"

# Hotwire Turbo
gem "turbo-rails", "~> 2.0.5"

# Stimulus JS framework
gem "stimulus-rails", "~> 1.3.3"

# Build JSON APIs with Jbuilder
gem "jbuilder"

# Faker for generating fake data
gem "faker"

# Pagination gem
gem 'will_paginate', '~> 4.0'

# Search gem
gem "pg_search"

# Use Redis adapter to run Action Cable in production
# gem "redis", ">= 4.0.1"

# Use Kredis to get higher-level data types in Redis
# gem "kredis"

# Use Active Model has_secure_password
# gem "bcrypt", "~> 3.1.7"

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem "tzinfo-data", platforms: %i[mswin mswin64 mingw x64_mingw jruby]

# Reduces boot times through caching; required in config/boot.rb
gem "bootsnap", require: false

# Use Active Storage variants
# gem "image_processing", "~> 1.2"

# Bootstrap for styling
gem "bootstrap", "~> 5.2"

# User authentication with Devise
gem "devise", "~> 4.9.4"

# Prefix CSS with autoprefixer
gem "autoprefixer-rails"

# Font Awesome icons
gem "font-awesome-sass", "~> 6.1"

# Simple form generator
gem "simple_form", github: "heartcombo/simple_form"

# SASS compiler
gem "sassc-rails", "~> 2.1.2"

# Cloudinary for cloud-based image management
gem "cloudinary"

group :development, :test do
  gem "geocoder"
  gem "dotenv-rails", "~> 3.1.2"
  gem "debug", "~> 1.9.2", platforms: %i[mri mswin mswin64 mingw x64_mingw]
end

group :development do
  # Use console on exceptions pages
  gem "web-console"

  # Add error highlighting
  gem "error_highlight", ">= 0.4.0", platforms: [:ruby]
end

group :test do
  # Use system testing
  gem "capybara"
  gem "selenium-webdriver"
end
