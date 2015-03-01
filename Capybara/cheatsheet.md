## Set default driver

```ruby
Capybara.default_driver :selenium
```

## Set Application host

```ruby
Capybara.app_host = 'url'
```

## Navigate to specified url

```ruby
.visit('/')
```

```ruby
.visit('http://www.google.com')
```

## Save and open from console

```ruby
.save_and_open
```

## Print out the html

```ruby
Print.html
```

## Screenshot and save ot to master

```ruby
.save_screenshot('screenshotname')
```

## Click on a link

```ruby
.click_link
```

```ruby
.click_button
```

## Fill in an area that is defined

```ruby
.fill_in '', :with => ''
```

## Sett a value

```ruby
.set ''
```

## Finding an element

```ruby
session.find('.div .class')
```

```ruby
session.find(:id, '')
```

## Back to square one

```ruby
.reset!
```

## Refresh current page

```ruby
.driver.browser.navigate.refresh
```