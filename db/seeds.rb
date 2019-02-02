# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#people

require 'csv'

csv_text = File.read(Rails.root.join('lib', 'seeds', 'crm_exercise_data.csv'))
puts csv_text

require 'csv'

csv_text = File.read(Rails.root.join('lib', 'seeds', 'crm_exercise_data.csv'))
csv = CSV.parse(csv_text, :headers => true, :encoding => 'ISO-8859-1')
puts csv

require 'csv'

csv_text = File.read(Rails.root.join('lib', 'seeds', 'crm_exercise_data.csv'))
csv = CSV.parse(csv_text, :headers => true, :encoding => 'ISO-8859-1')
csv.each do |row|
  puts row.to_hash
end

require 'csv'

csv_text = File.read(Rails.root.join('lib', 'seeds', 'crm_exercise_data.csv'))
csv = CSV.parse(csv_text, :headers => true, :encoding => 'ISO-8859-1')
csv.each do |row|
  t = Person.new
  t.name = row['name']
  t.job_title = row['job_title']
  t.email_address = row['email_address']
  t.phone = row['phone']
  t.save
  puts "#{t.name}, #{t.job_title}, #{t.email_address}, #{t.phone} saved"
end

puts "There are now #{Person.count} rows in the people table"