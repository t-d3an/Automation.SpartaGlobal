require 'capybara'

session = Capybara::Session.new(:selenium)
session.visit ('http://tumblr.com')

#Login
session.click_link 'Log in'
  session.fill_in 'Email', :with => 'tdean@spartaglobal.com'
    session.fill_in 'Password', :with => '*****'
      session.click_button('#signup_forms_submit')

#Post
session.click_link 'Text'
  session.find('.title-field .editor-plaintext').set 'Poop'
    session.find('.editor-richtext').set 'Smelly'
      session.click_button 'Post'

#Wait on post
expect(session.find('#post-button').find('#new_post_label_text')).to have_content 'Text'

#Go to blog
session.find('#open_blog_link').click