# Create a user instance for feature testing
FactoryBot.define do
    factory :user do
        id {1}
        email {"testuser@testemail.com"}
        password {"abcde12345"}
    end
end