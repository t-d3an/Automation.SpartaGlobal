require 'selenium-webdriver'

browser = Selenium::WebDriver.for :firefox

browser.get 'http://amazon.com'

input = browser.find_element id: 'twotabsearchtextbox'
input.send_keys('Eloquent Ruby')

button = browser.find_element class: 'nav-submit-input'
button.click

price = browser.find_element class: 'a-color-price'
price.text

price = Selenium::WebDriver::Wait.new(timeout: 30)