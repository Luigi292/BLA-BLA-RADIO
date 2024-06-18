source "https://rubygems.org"

ruby "3.2.3"  # Adjust the Ruby version to match your environment

# Rails framework
gem "rails", "~> 7.1.3"

# Asset pipeline
gem "sprockets-rails"

# Database adapter
gem "pg", "~> 1.1"

# Web server
gem "puma", ">= 5.0"

# JavaScript modules with ESM import maps
gem "importmap-rails"

# Hotwire Turbo
gem "turbo-rails"

# Stimulus JS framework
gem "stimulus-rails"

# Build JSON APIs with Jbuilder
gem "jbuilder"

# Bootstrap for styling
gem "bootstrap", "~> 5.2"

# User authentication
gem "devise"

# Prefix CSS with autoprefixer
gem "autoprefixer-rails"

# Font Awesome icons
gem "font-awesome-sass", "~> 6.1"

# Simple form generator
gem "simple_form", github: "heartcombo/simple_form"

# SASS compiler
gem "sassc-rails"

# Development and testing gems
group :development, :test do
  gem "dotenv-rails"
  gem "web-console"
  gem "debug", platforms: %i[ mri mswin mswin64 mingw x64_mingw ]
  gem "error_highlight", ">= 0.4.0", platforms: [:ruby]
end

# Additional gems for development
group :development do
  # Speed up commands on slow machines / big apps
  # gem "spring"

  # Mini profiler for performance profiling
  # gem "rack-mini-profiler"
end

# Gems for testing
group :test do
  gem "capybara"
  gem "selenium-webdriver"
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem "tzinfo-data", platforms: %i[ mswin mswin64 mingw x64_mingw jruby ]

# Reduces boot times through caching; required in config/boot.rb
gem "bootsnap", require: false
