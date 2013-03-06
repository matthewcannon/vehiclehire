Feature: automatically select a special offer

	as an agent
	i want to be notified when a special offer is automatically selected
	so that i can advise the customer 

	Scenario: enquiry has one applicable special offer

		# an enquiry has an applicable special offer when the vehicle class matches

		Given a special offer on luxury suvs
		And an enquiry for budget suvs
		When special offers are requested for the enquiry
		Then i am notified that the special offer has been automatically selected
