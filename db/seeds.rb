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
organizations = Hash.new
csv.each do |row|
  organization = Organization.new
  organization.name = row['organization']
  organization.phone = row['organization_phone']
  organization.domain = row['domain']
  address = Address.new
  address.street = row['street']
  address.city = row['city']
  address.state = row['state']
  address.zip = row['zip']
  if !address.street.nil?
    organization.address = address
  end

  organizations[organization.name] = organization
  organization.save
end

csv.each do |row|
  person = Person.new
  person.name = row['name']
  person.job_title = row['job_title']
  person.email_address = row['email_address']
  if row['phone'] != ""
    person.phone = row['phone']
  end
  organization = organizations[row['organization']]
  person.organization = organization
  person.save
end

p "There are now #{Person.count} rows in the people table"
p "There are now #{Organization.count} rows in the organizations table"
p "There are now #{Address.count} rows in the addresses table"
