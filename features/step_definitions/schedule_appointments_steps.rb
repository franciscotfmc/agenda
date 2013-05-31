Given(/^I visit the new appointment page$/) do
  visit new_appointment_path
end

When(/^I schedule the appointment to (.*?) at (.*?)$/) do |date, time|
  fill_in "Appointment Description", with: "Appointment 1"
  select_date "Date", with: date
  select_time "Will happen at", with: time
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

When(/^there is already an appointment for (.*?) at (.*?)$/) do |date, time|
  step "I schedule the appointment to #{date} at #{time}"
  visit new_appointment_path
end

When(/^I schedule a new appointment to "(.*?)" at "(.*?)"$/) do |date, time|
  step "I schedule the appointment to #{date} at #{time}"
  click_button "Add"
end

Then(/^I should see an error message$/) do
  page.should have_selector('div.alert.alert-error')
end

Then(/^I should see the same page$/) do
  page.should have_selector('title', text: "New Appointment")
end


