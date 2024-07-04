# This file is used by Rack-based servers to start the application.

require_relative "config/environment"

run Rails.application
Rails.application.load_server


# config.ru

require_relative 'app'  # Load your application's main file

run MyApp::Application  # Start your Rack application
