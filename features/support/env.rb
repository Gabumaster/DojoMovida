require 'capybara'
require 'capybara/cucumber'
require 'pry'

Capybara.configure do |config|
    config.default_driver = :selenium
    Capybara.page.driver.browser.manage.window.maximize
    
end


# objeto default_driver => testar no chrome = :selenium_chrome or testar no mozilla = :selenium
# iniciar navegador em segundo plano config.default_driver = :selenium_chrome_headless