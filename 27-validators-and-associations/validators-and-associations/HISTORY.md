10028  rails new validators-and-associations
10029  cd validators-and-associations/q
10030  clear
10031  cd validators-and-associations
10032  clear
10033  rm -rf .git
10034  clear
10035  rails g resource puzzle name num_pieces
10036  rake db:migrate
10037  clear
10038  code .
10039  rake db:seed
10040 rails s
10041  rails c
10042  clear
10043  rake db:seed
10044  rake db:create_migration NAME=num_pieces_to_int
10045  rake --tasks
10046  rails generate migration ChangeNumPiecesToInt
10047  vim db/migrate/20190904165530_change_num_pieces_to_int.rb
10048  rake db:seed
10049  rake db:migrate
10050  rake db:seed
10051  ake db:seed
10052  rake db:seed
10053  clear
