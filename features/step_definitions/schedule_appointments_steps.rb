Given(/^I visit the new appointment page$/) do
  visit new_appointment_path
end

When(/^I schedule the appointment to "(.*?)" at "(.*?)"$/) do |date, time|
  fill_in "Appointment Description", with: "Appointment 1"
  fill_in "Date", with: date
  fill_in "Will happen at", with: time
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
  visit new_appointment_path
end

When(/^there is already an appointment for "(.*?)" at "(.*?)"$/) do |date, time|
  @existing_appointment = Appointment.create!(description: "Existing appointment", due_date: date, due_time: time)
end

When(/^I schedule a new appointment "(.*?)" at "(.*?)"$/) do |date, time|
  fill_in "Appointment Description", with: "Appointment 1"
  fill_in "Date", with: date
  fill_in "Will happen at", with: time
  click_button "Add"
end

Then(/^I should see an error message$/) do
  page.should have_selector('div.alert.alert-error')
end

Then(/^I should see the same page$/) do
  page.should have_selector('title', text: "New Appointment")
end


