Feature: Visualize Schedule

  So that I can program myself
  As a business man
  I want to visualize appointments I have from today foward

  Scenario: No appointments for today foward
      Given I visit the appointments page
      When I don't have any appointments
      Then I should see a message telling me that

  Scenario: More than 0 appointments from today foward
      Given I visit the appointments page
      When I have more than 0 appointments
      Then I should see a list of appointments