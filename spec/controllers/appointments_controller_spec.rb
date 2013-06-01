require 'spec_helper'

describe AppointmentsController do

  describe "POST #create" do
    context "with valid attributes" do
      it "saves the new appointment in the database" do
        expect {
          post :create, appointment: FactoryGirl.attributes_for(:appointment)
        }.to change(Appointment, :count).by(1)
      end
        
      it "redirects to the index page" do
        post :create, appointment: FactoryGirl.attributes_for(:appointment)
        response.should redirect_to appointments_path
      end
    end
    
    context "with invalid attributes" do
      it "does not save the new appointment in the database" do
        expect{
          post :create, appointment: FactoryGirl.attributes_for(:invalid_appointment)
        }.to_not change(Appointment,:count)
      end

      it "re-renders the :new template" do 
        post :create, appointment: FactoryGirl.attributes_for(:invalid_appointment)
        response.should redirect_to new_appointment_path
      end
    end
  end

end