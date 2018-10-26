# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Article.destroy_all
data = [{ title: 'Star Wars', text: 'Wonderful adventure in the space' }, 
        { title: 'Lord of the Rings', text: 'Lord that became a ring' },
        { title: 'Man of the Rings', text: 'Lord that became a ring' },
        { title: 'Woman of the Rings', text: 'Lord that became a ring' },
        { title: 'Dog of the Rings', text: 'Lord that became a ring' },
        { title: 'Daddy of the Rings', text: 'Lord that became a ring' },
        { title: 'Mommy of the Rings', text: 'Lord that became a ring' },
        { title: 'Duck of the Rings', text: 'Lord that became a ring' },
        { title: 'Drug Lord of the Rings', text: 'Lord that became a ring' },
        { title: 'Native of the Rings', text: 'Lord that became a ring' },
        { title: 'Naysayer of the Rings', text: 'Lord that became a ring' },
        { title: 'Tab Wars', text: 'Lord that became a ring' },
        { title: 'Drug Wars', text: 'Lord that became a ring' },
        { title: 'Cheese Wars', text: 'Lord that became a ring' },
        { title: 'Dog Wars', text: 'Lord that became a ring' },
        { title: 'Dummy Wars', text: 'Lord that became a ring' },
        { title: 'Dummy of the Rings', text: 'Lord that became a ring' }
        ]
Article.create(data)