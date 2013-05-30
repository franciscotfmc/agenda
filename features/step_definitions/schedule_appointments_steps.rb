Given(/^I visit the new appointment page$/) do
  visit appointments_path
end

When(/^I schedule the appointment to "(.*?)" at "(.*?)"$/) do |date, time|
  fill_in "Appointment Name", with: "Appointment 1"
  fill_in "Date", with: date
  fill_in "Time", with: time
  click_button "Add"
end

When(/^there is no appointment for this date yet$/) do
  Appointment.delete_all
end

Then(/^I should see a success message$/) do
  page.should have_selector('div.alert.alert-success')
end

Then(/^I should see the appointments page$/) do
  page.should have_selector('title', text: "All Appointments")
end

Given(/^I visit the new appointments page$/) do
  pending # express the regexp above with the code you wish you had
end

When(/^I schedule a new appointment "(.*?)" at "(.*?)"$/) do |arg1, arg2|
  pending # express the regexp above with the code you wish you had
end

When(/^there is already an appointment for this date$/) do
  pending # express the regexp above with the code you wish you had
end

Then(/^I should see an error message$/) do
  pending # express the regexp above with the code you wish you had
end