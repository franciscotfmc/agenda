Feature: Schedule Appointment

  So that I can program my week
  As a business man
  I want to schedule my appointments

  Scenario: Appointment scheduled for available date
    Given an event
    When I schedule it to "2013-06-15" at "4:00pm"
    And there is no appointment for this date yet
    Then I should see a success message

  Scenario: Appointment scheduled for unavailable date
    Given an event
    When I schedule it to "2013-06-15" at "4:00pm"
    And there is already an appointment for this date
    Then I should see an error message
