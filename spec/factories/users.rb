FactoryGirl.define do
  factory :user do
    login "MyString"
    password "MyString"
    fullname "MyString"
    email "MyString"
    processing_pd false
    user_status 1
  end
end
