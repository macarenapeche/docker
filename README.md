# README

There are two models: User and Post, the Post model should have Elasticsearch 

Run the following commands: 
 - docker compose run web bundle install 
 - docker compose run web rails db:create 
 - docker compose run web rails db:migrate
 - docker compose up (to check that the app is running on localhost:3000)
 
 With the app running: 
 - docker compose run web bundle exec rspec (to check that the tests pass)

