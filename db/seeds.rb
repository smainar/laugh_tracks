# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

c1 = Comedian.create(name: 'Demetri Martin', age: 45, hometown: 'New York City', image: 'https://m.media-amazon.com/images/M/MV5BMjA3Nzg5MzM2Nl5BMl5BanBnXkFtZTcwODYzOTAzMg@@._V1_UY317_CR20,0,214,317_AL_.jpg')
c2 = Comedian.create(name: 'Steve Martin', age: 73, hometown: 'Waco', image: 'https://m.media-amazon.com/images/M/MV5BNDY0ODYwNDM3OV5BMl5BanBnXkFtZTcwMTc3NjQzMg@@._V1_UX214_CR0,0,214,317_AL_.jpg')
c3 = Comedian.create(name: 'Trevor Noah', age: 35, hometown: 'Johannesburg', image: 'https://m.media-amazon.com/images/M/MV5BMjQ0MjEzNjczMF5BMl5BanBnXkFtZTgwNDEzNTY4NzE@._V1_UY317_CR12,0,214,317_AL_.jpg')
c4 = Comedian.create(name: 'Ellen Degeneres', age: 60, hometown: 'Metairie', image: 'https://m.media-amazon.com/images/M/MV5BNDAwMzAyNDEzMV5BMl5BanBnXkFtZTcwMDU3MTAxMw@@._V1_UY317_CR12,0,214,317_AL_.jpg')
c5 = Comedian.create(name: 'John Mulaney', age: 36, hometown: 'Chicago', image: 'https://i.pinimg.com/736x/07/31/7d/07317d772dd1e93e1b99c2567da65735.jpg')
c6 = Comedian.create(name: 'George Carlin', age: 71, hometown: 'New York City', image: 'https://m.media-amazon.com/images/M/MV5BMTI4ODgzNTk0NV5BMl5BanBnXkFtZTcwNjU1MjY3MQ@@._V1_UY317_CR11,0,214,317_AL_.jpg')
c7 = Comedian.create(name: 'Martin Short', age: 69, hometown: 'Hamilton', image: 'https://m.media-amazon.com/images/M/MV5BMTY1MDIyMDY1N15BMl5BanBnXkFtZTgwNzMzMDE5NTE@._V1_UX214_CR0,0,214,317_AL_.jpg')
c8 = Comedian.create(name: 'Chris Rock', age: 54, hometown: 'Andrews', image: 'https://m.media-amazon.com/images/M/MV5BMTEyNjM5MjgyNzdeQTJeQWpwZ15BbWU3MDAzMzUyODc@._V1.._UX214_CR0,0,214,317_AL_.jpg')
c9 = Comedian.create(name: 'Bill Burr', age: 51, hometown: 'Canton', image: 'https://m.media-amazon.com/images/M/MV5BMTQwNDgwODg3NV5BMl5BanBnXkFtZTcwMTY5OTM3MQ@@._V1_UY317_CR10,0,214,317_AL_.jpg')
c10 = Comedian.create(name: 'Chris Hardwick', age: 48, hometown: 'Louisville', image: 'https://m.media-amazon.com/images/M/MV5BMGRiN2Q4ZWQtMjdiZS00ZWY1LWEyNWMtMzliYjRkZWE3ODEzXkEyXkFqcGdeQXVyMTkxNjA2OTI@._V1_UX214_CR0,0,214,317_AL_.jpg')
c11 = Comedian.create(name: 'Jerry Seinfeld', age: 65, hometown: 'Brooklyn', image: 'https://m.media-amazon.com/images/M/MV5BMTYxMDkwMjM5NV5BMl5BanBnXkFtZTcwMzUxMTgxNw@@._V1_UX214_CR0,0,214,317_AL_.jpg')
c12 = Comedian.create(name: 'Margaret Cho', age: 65, hometown: 'San Francisco', image: 'https://m.media-amazon.com/images/M/MV5BZTAxYmU1ODItYWViNC00YWJiLWJiYTEtNzExYTk3MmE4NDZkXkEyXkFqcGdeQXVyNTk0ODYyMTk@._V1_UX214_CR0,0,214,317_AL_.jpg')

c1.specials.create(name: 'Demetri Martin. Person.', runtime: 42)
c1.specials.create(name: 'Demetri Martin: Live (At the Time)', runtime: 61)
c1.specials.create(name: 'Demetri Martin: The Overthinker', runtime: 56)

c2.specials.create(name: 'Steve Martin and Martin Short: An Evening You Will Forget for the Rest of Your Life', runtime: 74)
c2.specials.create(name: "Steve Martin's Best Show Ever", runtime: 60)
c2.specials.create(name: 'All Commercials... A Steve Martin Special', runtime: 60)

c3.specials.create(name: 'Trevor Noah: Son of Patricia', runtime: 63)
c3.specials.create(name: 'Trevor Noah: Afraid of the Dark', runtime: 67)
c3.specials.create(name: 'Trevor Noah: Pay Back the Funny', runtime: 84)
c3.specials.create(name: 'Trevor Noah: Lost in Translation', runtime: 62)

c4.specials.create(name: 'Ellen DeGeneres: The Beginning', runtime: 66)
c4.specials.create(name: 'Ellen DeGeneres: Relatable', runtime: 68)

c5.specials.create(name: 'John Mulaney: Kid Gorgeous at Radio City', runtime: 65)
c5.specials.create(name: 'John Mulaney: The Comeback Kid', runtime: 62)
c5.specials.create(name: 'John Mulaney: New in Town', runtime: 60)

c6.specials.create(name: "George Carlin... It's Bad for Ya!", runtime: 70)
c6.specials.create(name: 'George Carlin: Life Is Worth Losing', runtime: 75)
c6.specials.create(name: 'George Carlin: Complaints & Grievances', runtime: 55)
c6.specials.create(name: 'George Carlin: You Are All Diseased', runtime: 65)

c7.specials.create(name: 'Steve Martin and Martin Short: An Evening You Will Forget for the Rest of Your Life', runtime: 74)
c7.specials.create(name: 'The Show Formerly Known as the Martin Short Show', runtime: 90)
c7.specials.create(name: 'Martin Short: Concert for the North Americas', runtime: 60)

c8.specials.create(name: 'Chris Rock: Tamborine', runtime: 64)
c8.specials.create(name: 'Chris Rock: Kill the Messenger', runtime: 79)
c8.specials.create(name: 'Chris Rock: Bring the Pain', runtime: 80)
c8.specials.create(name: 'Chris Rock: Bigger & Blacker', runtime: 65)

c9.specials.create(name: 'Bill Burr: Walk Your Way Out', runtime: 77)
c9.specials.create(name: "Bill Burr: I'm Sorry You Feel That Way", runtime: 80)
c9.specials.create(name: 'Bill Burr: You People Are All the Same.', runtime: 69)
c9.specials.create(name: 'Bill Burr: Let It Go', runtime: 65)

c10.specials.create(name: 'Chris Hardwick: Funcomfortable', runtime: 74)
c10.specials.create(name: 'Chris Hardwick: Mandroid', runtime: 60)

c11.specials.create(name: "Jerry Seinfeld: 'I'm Telling You for the Last Time'", runtime: 75)
c11.specials.create(name: "Jerry Seinfeld: Stand-Up Confidential", runtime: 55)

c12.specials.create(name: 'Margaret Cho: PsyCHO', runtime: 81)
c12.specials.create(name: 'Margaret Cho: Beautiful', runtime: 86)
c12.specials.create(name: 'Margaret Cho: Assassin', runtime: 90)
