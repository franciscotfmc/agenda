Feature: Schedule Appointment

  So that I can program my week
  As a business man
  I want to schedule my appointments

  Scenario: Appointment scheduled for available date
    Given I visit the new appointment page
    When I schedule the appointment to "2013-06-15" at "4:00pm"
    And there is no appointment for this date yet
    Then I should see a success message
    And I should see the appointments page

  Scenario: Appointment scheduled for unavailable date
    Given I visit the new appointments page
    When I schedule a new appointment "2013-06-15" at "4:00pm"
    And there is already an appointment for this date
    Then I should see an error message
