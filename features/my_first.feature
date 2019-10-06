Feature: Login behavior

  Scenario: Test login logic: normal behavior, error handling
       # normal login
  	When I login to tenant "4187" as user "administrator" with password "1234"
	Then I wait upto 40 seconds for the "SetupActivity" screen to appear
	Then I wait for 2 seconds

  	Then I choose the "Filiale Berlin" store
  	Then I wait upto 180 seconds for the "ActivityLogin" screen to appear
  	Then I wait for 2 seconds

  	Then I login as a cashier "Merci Watson" with 1234
  	Then I wait upto 180 seconds for the "ProductsActivity" screen to appear
  	Then I wait for 2 seconds
	Then I logout
       # try login with bad password
	Then I login as a cashier "Martina Watson" with 1342
	Then I press "ErrorDialogButtonOK"
	Then I login as a cashier "Merci Watson" with 1234
	Then I wait upto 180 seconds for the "ProductsActivity" screen to appear
	Then I wait for 2 seconds
