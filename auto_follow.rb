require 'watir'
require 'awesome_print'
require_relative './_credentials'

# define your credentials
username = $username
password = $password

# followers name
to_follow = "justinbieber"

# openning browser
browser = Watir::Browser.new :chrome
browser.goto("https://www.instagram.com/accounts/login/")

#navigate the fields
sleep(3)
ap("logging in...please be patience\n\n --> ")


browser.text_field(:name => "username").set "#{username}"
browser.text_field(:name => "password").set "#{password}"

# click login button
browser.button(:class => "_0mzm- sqdOP  L3NKy       ").click

# time to go for links to follow
browser.goto("https://www.instagram.com/#{to_follow}/")

# now follow her in instagram
if browser.button(:class => "_0mzm- sqdOP  L3NKy       ").exists?
    browser.button(:class => "_0mzm- sqdOP  L3NKy       ").click
    puts("\n Following #{to_follow}...\n\n")
    sleep(5)
else
    browser.button(:class => "aOOlW -Cab_   ").click
    puts("\n Unfollowing...")
end


sleep(200)