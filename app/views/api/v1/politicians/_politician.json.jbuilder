json.id politician.id
json.full_name politician.full_name
json.first_name politician.first_name
json.last_name politician.last_name
json.birthdate politician.birthdate
json.age politician.age
json.party politician.party_name
json.current_office politician.current_office
json.total_years_service politician.total_years_service
json.donors politician.donors.each do |donor|
  json.donor_name donor.name
  json.donor_total_contribution donor.contribution
end