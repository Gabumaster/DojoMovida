require 'capybara'
require 'capybara/cucumber'
require 'pry'
require 'faker'
require 'cpf_faker'
require 'site_prism'
require 'selenium-webdriver'
require 'rspec'
require 'httparty'


$wait = Selenium::WebDriver::Wait.new :timeout => 60

Capybara.configure do |config|
    config.default_driver = :selenium
    Capybara.page.driver.browser.manage.window.maximize
    
end


# objeto default_driver => testar no chrome = :selenium_chrome or testar no mozilla = :selenium
# iniciar navegador em segundo plano config.default_driver = :selenium_chrome_headless