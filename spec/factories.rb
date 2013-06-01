FactoryGirl.define do
  factory :appointment do
    description "test appointment"
    due_date "15/06/2013"
    due_time "15:00"

    factory :invalid_appointment do
      due_date ""
      due_time ""
    end
  end
end
