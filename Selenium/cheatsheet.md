##Open browser

```ruby
Selenium::WebDriver.for :firefox
```

```ruby
chrome -> chrome
ie     -> iexplore
```

##Go to specified URL

```ruby
.get 'http://google.com'
 ```
 
```ruby
.navigate.to 'http://google.com'
 ```

##Check URL

```ruby
.current_url
  ```

##Check webpage title

```ruby
.title
  ```

##Check other methods

```ruby
.methods
  ```
##Locating Elements
    
###By ID
  
 ```ruby
  driver.find_element(:id, "x")
   ```
  
###By Class
  
  ```ruby
  .find_element(:class, 'x')
  ```
  
###By Tag Name
  
  ```ruby
  .find_element(:tag_name, 'x')
  ```
  
###By Name
  
  ```ruby
  .find_element(:name, 'x')
  ```
  
###By Link
  
  ```ruby
  .find_element(:link, 'x')
  ```
  
###By CSS Selector
  
  ```ruby
  .find_element(:css, 'x')
  ```

##Click a button

```ruby
.click
 ```

##Input text

```ruby
.send_keys 'InputText'
 ```

##Select option

```ruby
select = driver.find_element(:tag_name, "select")
all_options = select.find_elements(:tag_name, "option")

all_options.each do |option|
  puts "Value is: " + option.attribute("value")
  option.click
end
```

##Time delay

```ruby
Selenium::WebDriver::Wait.new(timeout: 30)
```

##Quit browser

```ruby
.quit
 ```