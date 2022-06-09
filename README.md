# Birthday App!

This is a fun app made during week 3 of Makers Academy. The user enters their name and birthday and the app will either say "Happy birthday" or tell them how many days until their next birthday.

_Tech used_

Languages: Ruby, CSS, HTML
Framework: Sinatra
Testing: RSpec, Capybara

_How to use_

Use Rackup command with http://localhost:9292/.

````console
% bundle install
% rackup
````

_Notes on design_

I considered simply using some sums to work out the days remaining if the birthday had already passed this year, but thought I would let Ruby do the heavy lifting with regards to leap years. Therefore, I added a year on to the date if it was < the current date.

![Landing page](./docs/index.png?raw=true "Landing page")
![Birthday page](./docs/bday.png?raw=true "Birthday page")
![Future page](./docs/future.png?raw=true "Future page")