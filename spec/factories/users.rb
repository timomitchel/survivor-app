FactoryBot.define do
  factory :user, class: User do
    email {"test_user"}
    password {"password"}
  end
end
