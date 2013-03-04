Feature: automatically select a special offer

	as a booker
	i want to be notified when a special offer is automatically selected
	so that i can advise the caller

	#Scenario: enquiry for a vehicle in the same class as the special offer

		#Given a 3 for 2 special offer on expensive suvs
		#And an enquiry for an inexpensive suv for 2 days
		#When i select special offers
		#Then i am notified that the 3 for 2 special offer has been automatically selected
	
	Scenario: enquiry for a vehicle in the same class as the special offer

		Given a special offer on luxury suvs
		And i am enquiring for budget suvs
		When i select special offers
		Then i am notified that the special offer has been automatically selected
