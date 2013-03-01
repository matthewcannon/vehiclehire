require 'capybara/cucumber'
require 'capybara-webkit'

Capybara.app_host = 'http://application.dev.com'
Capybara.default_driver = :selenium
Capybara.javascript_driver = :webkit
