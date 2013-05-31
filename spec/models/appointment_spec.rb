require 'spec_helper'

describe Appointment do
  before { @appointment =  Appointment.new(description: "First Appointment", due_date: Date.new, due_time: Time.new) }

  subject { @appointment }

  it { should respond_to(:description) }
  it { should respond_to(:due_date) }
  it { should respond_to(:due_time) }

  it { should be_valid }

  describe "when description is not present" do
    before { @appointment.description = nil }
    it { should_not be_valid }
  end

  describe "when due date is not present" do
    before { @appointment.due_date = nil }
    it { should_not be_valid }
  end

  describe "when due time is not present" do
    before { @appointment.due_time = nil }
    it { should_not be_valid }
  end

  describe "with blank description" do
    before { @appointment.description = " " }
    it { should_not be_valid }
  end

  describe "with description that is too long" do
    before { @appointment.description = "a" * 141 }
    it { should_not be_valid }
  end

  describe "when appointment date and time has already bean filled" do
    before do
      @another_appointment = @appointment.dup
      @another_appointment.save
    end

    it { should_not be_valid }
  end
end
