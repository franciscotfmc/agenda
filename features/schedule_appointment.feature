Feature: Schedule Appointment

  So that I can program my week
  As a business man
  I want to schedule my appointments

  Scenario: Appointment scheduled for available date
    Given I visit the new appointment page
    When I schedule the appointment to "15/06/2013" at "16:00"
    And there is no appointment for this date yet
    Then I should see a success message
    And I should see the appointments page

  Scenario: Appointment scheduled for unavailable date
    Given I visit the new appointments page
    When there is already an appointment for "2013-06-15" at "16:00"
    And I schedule a new appointment "2013-06-15" at "16:00"
    Then I should see an error message
    And I should see the same page
