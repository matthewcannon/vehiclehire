Feature: cancel booking

	Scenario: can cancel a booking made on the same day
	
	Given i have made a booking today
	When i cancel the booking today
	Then i am notified that the booking has been cancelled
