	sudo docker-compose exec app bundle exec rake db:drop; 
	sudo docker-compose exec app bundle exec rake db:create; 
	sudo docker-compose exec app bundle exec rake db:migrate;
	sudo docker-compose exec app bundle exec rake db:seed