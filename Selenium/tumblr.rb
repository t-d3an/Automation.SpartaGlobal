require 'selenium-webdriver'

browser = Selenium::WebDriver.for :firefox
browser.get 'http://tumblr.com'

#Login
login = browser.find_element class: 'signup_link'
  login.click

email = browser.find_element class: 'signup_email'
  email.send_keys('tdean@spartaglobal.com')

pass = browser.find_element class: 'signup_password'
  pass.send_keys('*****')

button = browser.find_element id: 'signup_forms_submit'
  button.click

#Submit a text post
text = browser.find_element id: 'new_post_label_text'
  text.click

post = browser.find_element class: 'editor-plaintext'
  post.send_keys('Meow')

body = browser.find_element class: 'editor-richtext'
  body.send_keys('Thats right')

submit = browser.find_element class: 'create_post_button'
  submit.click

#Go to blog
blog = browser.find_element class: 'open_blog_link'
  blog.click

#Print out post status
def print
  if browser.h2 = ('Meow')
    puts 'Post successful'
  else
    puts 'Post fail'
end
    
#Quit browser
browser.quit