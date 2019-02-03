# README

A simple Rails application that serves data about people and their organizations.

https://agile-wave-73456.herokuapp.com/people.json

# rails-exercise-joseph-gallotta

* Getting Started

These instructions will get you a copy of the project up and running on your local machine for development and testing purposes. See deployment for notes on how to deploy the project on a live system.

* Database Create 

  $ rails db:create

* Seed Database 

Use attached spreadsheet 

https://drive.google.com/file/d/1LyfSQC3fUhHaUQ5hPJJ6HgtgYERNFaE3/view

Place in app/lib/seeds

  $ rails db:migrate
  $ rails db:seed

* Deployment Instructions (Heroku)

  $ heroku login
  $ heroku create
  $ git push heroku master 
  $ heroku run rails db:migrate
  $ heroku run rails db:seed
  $ heroku open 

* ...
* Ruby 2.5.1
* Rails 5.2
