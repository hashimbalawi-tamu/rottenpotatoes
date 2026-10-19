# Seed the RottenPotatoes DB with some movies.
more_movies = [
  {:title => 'The Little Prince', :rating => 'G',
    :description => 'A little girle, old man, and a little prince.',
    :release_date => '16-Apr-1988'}
]

more_movies.each do |movie|
  Movie.create!(movie)
end