echo "creating and migrating database"
sleep 10
rails db:create
rails db:migrate
rails s
