# db/seeds.rb
require 'faker'

10.times do
  Customer.create!(
    name: Faker::Name.name,
    address: Faker::Address.street_address,
    phone: Faker::PhoneNumber.phone_number,
    email: Faker::Internet.email,
    customer_id: Faker::Number.unique.number(digits: 6)
  )
end

20.times do
  Account.create!(
    account_number: Faker::Number.unique.number(digits: 8),
    account_type: %w[savings checking].sample,
    balance: Faker::Number.decimal(l_digits: 5, r_digits: 2),
    customer_id: Customer.all.sample.id
  )
end

50.times do
  Transaction.create!(
    transaction_type: %w[deposit withdrawal].sample,
    transaction_date: Faker::Date.backward(days: 60),
    amount: Faker::Number.decimal(l_digits: 4, r_digits: 2),
    account_id: Account.all.sample.id
  )
end

10.times do
  Loan.create!(
    loan_id: Faker::Number.unique.number(digits: 6),
    loan_type: %w[personal car].sample,
    amount: Faker::Number.decimal(l_digits: 6, r_digits: 2),
    interest_rate: Faker::Number.decimal(l_digits: 2, r_digits: 2),
    customer_id: Customer.all.sample.id
  )
end

5.times do
  Employee.create!(
    name: Faker::Name.unique.name,
    address: Faker::Address.street_address,
    phone: Faker::PhoneNumber.phone_number,
    email: Faker::Internet.email,
    job_title: %w[manager teller analyst].sample
  )
end
