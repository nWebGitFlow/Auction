FactoryGirl.define do
  factory :deal do
    card_id 1
    trade_st 1
    user_id 1
    reliability false
    price "9.99"
    exchange_count 1
    exchange_list "MyString"
  end
end
