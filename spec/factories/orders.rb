FactoryGirl.define do
  factory :order do
    association :customer, factory: :customer
    placed_on { 3.days.ago}
    status :new
    price 7
  end
  factory :order_associated, class: Order do
    placed_on { 3.days.ago}
    status :waiting
    price 628318.53
  end
  factory :order1, class: Order do
    association :customer, factory: :track
    placed_on { 6.weeks.ago}
    status :new
    price 24.99
  end
  factory :order2, class: Order do
    association :customer, factory: :tick
    placed_on { 80.days.ago}
    status :new
    price 12.7
  end
  factory :order3, class: Order do
    association :customer, factory: :trick
    placed_on { 3.days.ago}
    status :new
    price 32.9
  end
end
