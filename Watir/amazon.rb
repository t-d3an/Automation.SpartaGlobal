require 'watir'

browser = Watir::Browser.new :ff
browser.goto "http://amazon.co.uk"

browser.text_field(id: 'twotabsearchtextbox').set('Eloquent Ruby')

browser.button(class: 'nav-submit-input').click

browser.element(class: 'a-color-price').when_present.text