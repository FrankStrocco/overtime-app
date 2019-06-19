rails new name -d database

// this doesn't work anymore...
mysql> GRANT ALL PRIVILEGES ON simple_cms_development.* TO 'rails_user'@'localhost' IDENTIFIED BY 'tempPassword';

use these...
1. create the user.
CREATE USER 'rails_user'@'localhost' IDENTIFIED BY 'tempPassword';
2. grant privileges to that user on each environment (development, test, production, ect..)
GRANT ALL PRIVILEGES ON simple_cms_develpment.* TO 'rails_user'@'localhost';
GRANT ALL PRIVILEGES ON simple_cms_test.* TO 'rails_user'@'localhost';

rails g controller name name 2nd name is for it's view
ROUTES..

default route in rails, but might get depreciated soon..

get ':controller(/:action(/:id))'

---

rspec selenium depreciated warning..
WARN Selenium [DEPRECATION] Selenium::WebDriver::Chrome#driver_path= is deprecated. Use Selenium::WebDriver::Chrome::Service#driver_path= instead

https://github.com/SeleniumHQ/selenium/issues/7125

change gem ''chromedriver-helper' to ...

gem 'webdrivers', '~> 3.2.0'

devise.rb needs to have a real domain email for it to work..
config.mailer_sender = 'no-reply@frankstrocco.com'
