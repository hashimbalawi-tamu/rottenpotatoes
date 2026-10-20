# Seed the RottenPotatoes DB with some movies.
more_movies = [
  {:title => 'The Little Prince', :rating => 'G',
    :description => 'A little girle, old man, and a little prince.',
    :release_date => '16-Apr-1988'},
  {:title => 'The big Prince', :rating => 'G',
    :description => 'A little girle, old man, and a big prince.',
    :release_date => '16-Apr-1989'},
  {:title => 'The medium Prince', :rating => 'R',
    :description => 'A little girle, old man, and a medium prince.',
    :release_date => '16-Apr-1990'}
]

more_movies.each do |movie|
  Movie.find_or_create_by!(title: movie[:title]) do |record|
    record.rating = movie[:rating]
    record.description = movie[:description]
    record.release_date = movie[:release_date]
  end
end