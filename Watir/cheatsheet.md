##Go to a site

```ruby
.goto
```

```ruby
.start
```

##Navigation

```ruby
.forward
```

```ruby
.back
```

##Get current url

```ruby
.url
```

##Input

```ruby
.text_field
```

```ruby
.textarea
```

```ruby
.set
```

```ruby
.send_keys
```

##Selecting

```ruby
.header
```

```ruby
.text
```

```ruby
.ps
```

##Selecting a link type

```ruby
.link href: "//"
```

##Selecting data in a table

```ruby
[0][0].text
```

##Select with a flash

```ruby
.flash
```

##Confirmation

```ruby
.exist?
```

```ruby
.visible?
```

```ruby
.present?
```

```ruby
.randomly?
```

```ruby
.disabled?
```

```ruby
.enabled?
```

```ruby
.checked?
```

##Options

```ruby
.checkbox
```

```ruby
.radio
```

```ruby
.select_list(:id, "dropdown").select("option")
```

##Number

```ruby
.size
```

##Button

```ruby
.buttons
```

##Find a list

```ruby
.nav.ul
```

```ruby
.nav.ul.list[]
```

##Timeout

```ruby
.driver.manage.timeouts.implicit_wait = 10 #small number
```

##Pause

```ruby
.wait_until_present
```

```ruby
.when_present
```