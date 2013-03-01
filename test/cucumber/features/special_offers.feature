Feature: automatically select a special offer

  Scenario: enquiry for a vehicle in the same class as the special offer

    Given a special offer of 3 for 2 for an expensive suv
    And an enquiry for an inexpensive suv for 2 days
    When i select special offers
    Then i am notified that the 3 for 2 special offer has been automatically selected

  # Scenario: enquiry for a vehicle in a different class from the special offer

  # i am notified of the special offer, but it is not automatically selected