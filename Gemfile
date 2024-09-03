# Gemfile

source "https://rubygems.org"

ruby "3.2.4"  # Updated to match your installed Ruby version

# Rails and its components
gem "rails", "7.1.4"
gem "turbo-rails", "2.0.6"
gem "stimulus-rails", "1.3.4"


# Other gems
gem "sprockets-rails"
gem "pg", "~> 1.1"
gem "puma", ">= 5.0"
gem "importmap-rails", "~> 2.0.1"
gem "jbuilder"
gem "faker"
gem "will_paginate", "~> 4.0"
gem "pg_search"
gem "tzinfo-data", platforms: %i[mswin mswin64 mingw x64_mingw jruby]
gem "bootsnap", require: false
gem "bootstrap", "~> 5.2"
gem "devise", "~> 4.9.4"
gem "autoprefixer-rails"
gem "font-awesome-sass", "~> 6.1"
gem "simple_form", github: "heartcombo/simple_form"
gem "sassc-rails", "~> 2.1.2"
gem "cloudinary"
gem 'gravatar_image_tag'

group :development, :test do
  gem "geocoder"
  gem "dotenv-rails", "~> 3.1.2"
  gem "debug", "~> 1.9.2", platforms: %i[mri mswin mswin64 mingw x64_mingw]
end

group :development do
  gem "web-console"
  gem "error_highlight", ">= 0.4.0", platforms: [:ruby]
end

group :test do
  gem "capybara"
  gem "selenium-webdriver"
end
