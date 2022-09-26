#! /bin/sh 
	sudo docker-compose exec app bundle exec rake db:drop APP_ENV=test, db:create APP_ENV=test, db:migrate APP_ENV=test; 	
	sudo docker-compose exec app bundle exec rspec ;
	#sudo docker-compose exec app bundle exec rspec spec/test/test_Result_spec.rb
