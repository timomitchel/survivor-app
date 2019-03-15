FactoryBot.define do
  factory :user, class: User do
    username {"test_user"}
    password {"password"}
  end
end