Given(/^I visit the appointments page$/) do
  visit appointments_path
end

When(/^I don't have any appointments$/) do
  Appointment.delete_all
end

Then(/^I should see a message telling me that$/) do
  page.should have_selector('h2', text: "No appointments...")
end

When(/^I have more than (\d+) appointments$/) do |arg1|
  visit new_appointment_path
  fill_in "Appointment Description", with: "Appointment 1"
  click_button "Add"
end

Then(/^I should see a list of appointments$/) do
  page.should have_selector('table')
end