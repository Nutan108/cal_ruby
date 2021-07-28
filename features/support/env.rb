require 'cucumber'
require 'selenium-webdriver'
Before do
  Selenium::WebDriver::Chrome::Service.driver_path="C://Users//Shivanjali//Desktop//sc//chromeDriver.exe"
   $driver=Selenium::WebDriver.for :chrome
  $driver.get("https://www.calculator.net/")

end
After do
  $driver.quit
end

