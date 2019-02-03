# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'csv'

Address.destroy_all
Organization.destroy_all
Person.destroy_all

csv_text = File.read(Rails.root.join('lib', 'seeds', 'crm_exercise_data.csv'))
csv = CSV.parse(csv_text, :headers => true, :encoding => 'ISO-8859-1')
# addresses = Hash.new
# csv.each do |row|
#   address = Address.new
#   address.street = row['street']
#   address.city = row['city']
#   address.state = row['state']
#   address.zip = row['zip']
#   addresses[address.street] = address
# end

# addresses.each do |street, address|
#   if !street.nil?
#     address.save!
#   end
# end

p "There are now #{Address.count} rows in the addresses table"


organizations = Hash.new
csv.each do |row|
  organization = Organization.new
  organization.organization = row['organization']
  organization.organization_phone = row['organization_phone']
  organization.domain = row['domain']
  address = Address.new
  address.street = row['street']
  address.city = row['city']
  address.state = row['state']
  address.zip = row['zip']
  # address = address[row['street']]
  if !address.nil?
    organization.address = address
    organizations[organization.organization] = organization
  end
end

organizations.each do |_, organization|
  organization.save
end

p "There are now #{Organization.count} rows in the organizations table"

csv.each do |row|
  people = Person.new
  people.name = row['name']
  people.job_title = row['job_title']
  people.email_address = row['email_address']
  people.phone = row['phone']
  organization = organizations[row['organization']]
  people.organization = organization
  people.save
end

p "There are now #{Person.count} rows in the people table"
