FactoryGirl.define do
  factory :user do
    sequence :email do |n|
      'dummyEmails#{n}@gmail.com'
    end
    password 'secretPassword'
    password_confirmation 'secretPassword'
  end
end