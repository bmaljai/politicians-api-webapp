100.times do
  Politician.create(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    birthdate: Faker::Date.between(90.years.ago, 32.years.ago),
    total_years_service: Faker::Number.between(0,60),
    party: [true, false][Faker::Number.between(0,1)],
    current_office: ["representative","representative","representatitve","representative","senator"][Faker::Number.between(0,4)]
    )
end

300.times do
  Donor.create(
    name: Faker::Company.name,
    contribution: Faker::Number.decimal(rand(4..7),2),
    politician_id: rand(1..100)
    )
end