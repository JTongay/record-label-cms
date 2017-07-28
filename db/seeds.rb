# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
DatabaseCleaner.clean_with(:truncation)

band1 = Band.create(band_name: 'Falsetta', city: 'Austin', state: 'TX', start_date: Date.new(2008,2,1))
band2 = Band.create(band_name: 'Berried Alive', city: 'Twin Cities', state: 'MN', start_date: Date.new(2010,4,1))
band3 = Band.create(band_name: 'Animals As Leaders', city: 'Washington', state: 'DC', start_date: Date.new(2007,5,1))
band4 = Band.create(band_name: 'Periphery', city: 'Washington', state: 'DC', start_date: Date.new(2005,3,1))
band5 = Band.create(band_name: 'Rings of Saturn', city: 'Bay Area', state: 'CA', start_date: Date.new(2009,10,1))

band1.albums.create(title: 'Sleep is for Babies', release_date: Date.new(2009,6,14), album_type: 'EP')
band1.albums.create(title: 'Blood Beard', release_date: Date.new(2010,2,1), album_type: 'LP')

band2.albums.create([
    {title: 'Soul Sucker', release_date: Date.new(2016,8,5), album_type: 'LP'},
    {title: 'Fools Gold', release_date: Date.new(2017,9,1), album_type: 'LP'}
])

band3.albums.create([
    {title: 'Animals as Leaders', release_date: Date.new(2009,4,28), album_type: 'LP'},
    {title: 'Weightless', release_date: Date.new(2011,11,4), album_type: 'LP'},
    {title: 'The Joy of Motion', release_date: Date.new(2014,3,24), album_type: 'LP'},
    {title: 'The Madness of Many', release_date: Date.new(2016,11,11), album_type: 'LP'}
])

band4.albums.create([
    {title: 'Periphery', release_date: Date.new(2010,4,20), album_type: 'LP'},
    {title: 'Icarus', release_date: Date.new(2011,4,19), album_type: 'EP'},
    {title: 'Periphery II: This Time It\'s Personal', release_date: Date.new(2012,7,3), album_type: 'LP'},
    {title: 'Clear', release_date: Date.new(2014,1,28), album_type: 'EP'},
    {title: 'Juggernaut: Alpha', release_date: Date.new(2015,1,27), album_type: 'LP'},
    {title: 'Juggernaut: Omega', release_date: Date.new(2015,1,27), album_type: 'LP'},
    {title: 'Periphery III: Select Difficulty', release_date: Date.new(2016,7,22), album_type: 'LP'}
])

band5.albums.create([
    {title: 'Embryonic Anomaly', release_date: Date.new(2010,5,15), album_type: 'LP'},
    {title: 'Dingir', release_date: Date.new(2013,2,5), album_type: 'LP'},
    {title: 'Lugal Ki En', release_date: Date.new(2014,10,14), album_type: 'LP'},
    {title: 'Ultu Ulla', release_date: Date.new(2017,7,28), album_type: 'LP'}
])

# Musician.create(first_name: '', twitter_name: '')
# Musician.create(first_name: '', twitter_name: '')
# Musician.create(first_name: '', twitter_name: '')
# Musician.create(first_name: '', twitter_name: '')
# Musician.create(first_name: '', twitter_name: '')
# Musician.create(first_name: '', twitter_name: '')
# Musician.create(first_name: '', twitter_name: '')
# Musician.create(first_name: '', twitter_name: '')
# Musician.create(first_name: '', twitter_name: '')
# Musician.create(first_name: '', twitter_name: '')
# Musician.create(first_name: '', twitter_name: '')
# Musician.create(first_name: '', twitter_name: '')
# Musician.create(first_name: '', twitter_name: '')
# Musician.create(first_name: '', twitter_name: '')
# Musician.create(first_name: '', twitter_name: '')
# Musician.create(first_name: '', twitter_name: '')
# Musician.create(first_name: '', twitter_name: '')
# Musician.create(first_name: '', twitter_name: '')
# Musician.create(first_name: '', twitter_name: '')
# Musician.create(first_name: '', twitter_name: '')
# Musician.create(first_name: '', twitter_name: '')
# Musician.create(first_name: '', twitter_name: '')
# Musician.create(first_name: '', twitter_name: '')
# Musician.create(first_name: '', twitter_name: '')
# Musician.create(first_name: '', twitter_name: '')
# Musician.create(first_name: '', twitter_name: '')
# Musician.create(first_name: '', twitter_name: '')
# Musician.create(first_name: '', twitter_name: '')
# Musician.create(first_name: '', twitter_name: '')
# Musician.create(first_name: '', twitter_name: '')
# Musician.create(first_name: '', twitter_name: '')
