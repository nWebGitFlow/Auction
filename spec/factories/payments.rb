FactoryGirl.define do
  factory :payment do
    purpose "MyString"
    card_id 1
    amount "9.99"
    receipt_date "2018-07-31 04:34:00"
    payment_date "2018-07-31 04:34:00"
  end
end
