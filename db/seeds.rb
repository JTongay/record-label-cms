# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
DatabaseCleaner.clean_with(:truncation)

instruments = Instrument.create([
		                                {name: 'Guitar'},
		                                {name: 'Bass'},
		                                {name: 'Drums'},
		                                {name: 'Keyboards'},
		                                {name: 'Synthesizers'},
		                                {name: 'Vocals'},
		                                {name: 'Lead Vocals'},

                                ])

band1 = Band.create(band_name: 'Falsetta', city: 'Austin', state: 'TX', start_date: Date.new(2008, 2, 1), bio: 'Heres a fucking bio')
band2 = Band.create(band_name: 'Berried Alive', city: 'Twin Cities', state: 'MN', start_date: Date.new(2010,4,1), bio: 'Heres a fucking bio about Berried Alive')
band3 = Band.create(band_name: 'Animals As Leaders', city: 'Washington', state: 'DC', start_date: Date.new(2007,5,1), bio: 'Heres a fucking bio about Animals as Leaders')
band4 = Band.create(band_name: 'Periphery', city: 'Washington', state: 'DC', start_date: Date.new(2005,3,1), bio: 'Heres a fucking bio about Rings of Saturn')
band5 = Band.create(band_name: 'Rings of Saturn', city: 'Bay Area', state: 'CA', start_date: Date.new(2009,10,1), bio: 'Heres a fucking bio about Born of Osiris')

band1.albums.create(title: 'Sleep is for Babies', release_date: Date.new(2009,6,14), album_type: 'EP')
band1.albums.create(title: 'Blood Beard', release_date: Date.new(2010,2,1), album_type: 'LP')

band2.albums.create([
		                    { title: 'Soul Sucker', release_date: Date.new(2016, 8, 5), album_type: 'LP' },
		                    { title: 'Fools Gold', release_date: Date.new(2017, 9, 1), album_type: 'LP' }
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

band1.musicians.create([
		                       {first_name: 'Joseph', last_name: 'Tongay', instrument_ids: [instruments[0].id]},
		                       {first_name: 'Angel', last_name: 'Compean', instrument_ids: [instruments[1].id]},
		                       {first_name: 'Scooter', last_name: 'Beatz', instrument_ids: [instruments[0].id]},
		                       {first_name: 'Jarrett', last_name: 'Austin', instrument_ids: [instruments[2].id]},
		                       {first_name: 'Stephen', last_name: 'Colgan', instrument_ids: [instruments[6].id]}
                       ])


band2.musicians.create(first_name: 'Charles', last_name: 'Caswell', instrument_ids: [instruments[0].id, instruments[6].id])

band3.musicians.create([
		                       {first_name: 'Tosin', last_name: 'Abasi'},
		                       {first_name: 'Javier', last_name: 'Reyes'},
		                       {first_name: 'Matt', last_name: 'Garstka'}
                       ])

band4.musicians.create([
		                       {first_name: 'Misha', last_name: 'Mansoor'},
		                       {first_name: 'Jake', last_name: 'Bowen'},
		                       {first_name: 'Adam (Nolly)', last_name: 'Getgood'},
		                       {first_name: 'Matt', last_name: 'Halpern'},
		                       {first_name: 'Spencer', last_name: 'Sotelo'},
		                       {first_name: 'Mark', last_name: 'Holcomb'}
                       ])

band5.musicians.create([
		                       {first_name: 'Joe', last_name: 'Buras'},
		                       {first_name: 'Ronnie', last_name: 'Canizaro'},
		                       {first_name: 'Cameron', last_name: 'Losch'},
		                       {first_name: 'David', last_name: 'Da Rocha'},
		                       {first_name: 'Lee', last_name: 'McKinney'}
                       ])

sleep_songs = [
	{title: 'Wars Waged'},
	{title: 'Getting all the Girls'},
	{title: 'Sheamus'}
]

blood_songs = [
	{title: 'Blood Beard'},
	{title: 'Jazz Hands'},
	{title: 'Untitled'},
	{title: 'Trapt'},
	{title: 'Someone Throw Me a Damn Beer'},
	{title: 'It\'s Still Real To Me Dammit'},
	{title: 'Stack Trace'},
	{title: 'Chicken Salad'}
]

soul_sucker = [
	{title: 'Alarm Clock From Hell'},
	{title: 'Downsy'},
	{title: 'Dark Corners'},
	{title: 'Heartless'},
	{title: 'Why Are You Still Alive? (feat. Andrew Patterson)'},
	{title: 'Crusty'},
	{title: 'Evil Thoughts'},
	{title: 'Broken Hero'},
	{title: 'Hump'}
]

fools_gold = [
	{title: 'Prosthetic Progress'},
	{title: 'No One Is Listening'},
	{title: 'When Guidance Leaves'},
	{title: 'Chewed Up And Spit Out'},
	{title: 'Catalina Beach'},
	{title: 'Fools Gold'},
	{title: 'Shitler'},
	{title: 'Salida'},
	{title: 'Waiting For Us'}
]

animals_leaders = [
	{title: 'Tempting Time'},
	{title: 'Soraya'},
	{title: 'Thoroughly At Home'},
	{title: 'On Impulse'},
	{title: 'Tessitura'},
	{title: 'Behaving Badly'},
	{title: 'The Price of Everything and the Value of Nothing'},
	{title: 'CAFO'},
	{title: 'Inamorata'},
	{title: 'Point to Point'},
	{title: 'Modern Meat'},
	{title: 'Song of Solomon'}
]

weightless = [
	{title: 'An Infinite Regression'},
	{title: 'Odessa'},
	{title: 'Somnarium'},
	{title: 'Earth Departure'},
	{title: 'Isolated Incidents'},
	{title: 'Do Not Go Gently'},
	{title: 'New Eden'},
	{title: 'Cylindrical Sea'},
	{title: 'Espera'},
	{title: 'To Lead You to an Overwhelming Question'},
	{title: 'Weightless'},
	{title: 'David'}
]

joy_of_motion = [
	{title: 'Ka$cade'},
	{title: 'Lippincott'},
	{title: 'Air Chrysalis'},
	{title: 'Another Year'},
	{title: 'Physical Education'},
	{title: 'Tooth and Claw'},
	{title: 'Crescent'},
	{title: 'The Future That Awaited Me'},
	{title: 'Para Mexer'},
	{title: 'The Woven Web'},
	{title: 'Mind Spun'},
	{title: 'Nephele'}
]