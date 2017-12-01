FactoryGirl.define do
  factory :user do
    email 'test@mail.com'
    password '123456789'
    password_confirmation '123456789'
  end

  factory :second_user, class: 'User' do
    email 'user@mail.com'
    password '123456789'
    password_confirmation '123456789'
  end
end
