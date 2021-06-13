require 'capybara'
require 'capybara/cucumber'
require 'site_prism'

Capybara.register_driver :site_prism do |app|
    Capybara::Selenium::Driver.new(app, browser: :chrome)
end

Capybara.configure do |config|
    ##config.default_driver = :selenium_chrome
    config.default_driver = :site_prism
    Capybara.page.driver.browser.manage.window.maximize
    config.app_host = 'http://localhost:5000'
end

Capybara.default_max_wait_time = 5