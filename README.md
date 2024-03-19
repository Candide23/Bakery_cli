# ruby-cli-template

Use this repository as a template for your Ruby CLI (command line interface) project.

- Ruby version: `3.2.1`

Bakery CLI Application

##Summary
This Ruby CLI application creates a Bakery shop, permitting clients to see the menu and put orders for different cakes.

Bakery Class
initialize: Sets up the bakery with a name and location.
welcome_message: Displays a welcome message.
display_menu: Shows the menu with prices.
order: Processes user orders.

Main Method
The main method runs the application by initializing the bakery, displaying the menu, and handling user orders.

Run the Main Method in Terminal with:
ruby bakery.rb

Testing
Testing is implemented using MiniTest to ensure correct functionality, including testing name, location, and order processing.

Run tests in the Terminal with:
ruby tests/test_bakery.rb
