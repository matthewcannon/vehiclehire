Feature: cancel booking

	Scenario: can cancel on the same day
	
	Given a booking made today
	When i cancel the booking today
	Then i am notified that the booking has been cancelled