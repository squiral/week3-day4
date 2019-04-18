require_relative('models/star')
require_relative('models/movie')
require_relative('models/casting')

require ('pry-byebug')

Movie.delete_all()
Star.delete_all()
Casting.delete_all()

movie1 = Movie.new({ 'title' => 'Frantic', 'genre' => 'Thriller'})
movie2 = Movie.new({ 'title' => 'In Bruges', 'genre' => 'Dark Comedy'})
movie3 = Movie.new({ 'title' => 'Star Wars', 'genre' => 'Sci_fi'})
movie1.save()
movie2.save()
movie3.save()

star1 = Star.new({ 'first_name' => 'Harrison', 'last_name' => 'Ford'})
star2 = Star.new({ 'first_name' => 'Colin', 'last_name' => 'Farrell'})
star3 = Star.new({ 'first_name' => 'Brendan', 'last_name' => 'Gleeson'})
star1.save()
star2.save()
star3.save()

casting1 = Casting.new({ 'movie_id' => movie1.id, 'star_id' => star1.id, 'fee' => 50})
casting2 = Casting.new({ 'movie_id' => movie2.id, 'star_id' => star2.id, 'fee' => 60})
casting3 = Casting.new({ 'movie_id' => movie2.id, 'star_id' => star3.id, 'fee' => 70})
casting4 = Casting.new({ 'movie_id' => movie3.id, 'star_id' => star1.id, 'fee'=> 20})
casting1.save()
casting2.save()
casting3.save()
casting4.save()

#p Movie.all()
#p movie2.stars()
p star1.movies()
# binding.pry
# nil
