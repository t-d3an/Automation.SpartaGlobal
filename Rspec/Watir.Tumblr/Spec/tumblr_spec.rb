require 'watir' 
require 'spec_helper' 
   
describe "Test Tumblr" do
  browser = Watir::Browser.new :ff
    browser.goto "https://tumblr.com"

it "Should log into Tumblr" do
browser.element(class: 'signup_link').when_present.click
  browser.text_field(id: 'signup_email').set('tdean@spartaglobal.com')
    browser.text_field(id: 'signup_password').set('*****')
      browser.button(id: 'signup_forms_submit').click
end

it "Should make a post in text" do 
browser.link(id: 'new_post_label_text').when_present.click
  browser.div(class: 'editor-plaintext').send_keys('Pokemon')
    browser.div(class: 'editor-richtext').send_keys('Got to catch them all')
      browser.button(class: 'create_post_button').click

browser.div(class: 'post_title').wait_until_present
  browser.element(class: 'open_blog_link').click.wait_until__present
    expect(browser.h2(class: 'title').text).to eq('Pokemon')
end

it "Should post a photo from computer" do
  browser.goto "https://www.tumblr.com/dashboard"   

browser.link(id: 'new_post_label_photo').when_present.click
  browser.file_field(name: 'photo').set "C:/Users/Academy3/Pictures/2vht5xw.jpg"
    browser.text_field(class: 'caption-field').set('Ham')
      browser.button(class: 'create_post_button').click.wait_until_present
end

it "Should quit browser" do
  browser.quit
end

end