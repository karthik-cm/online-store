# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Product.delete_all

Product.create!(
    name: 'GTA - V',
    description: 'Grand Theft Auto V is a 2013 action-adventure game developed by Rockstar North and published by Rockstar Games. It is the seventh main entry in the Grand Theft Auto series, following 2008\'s Grand Theft Auto IV, and the fifteenth instalment overall.',
    image: 'gta-v.jpeg',
    price: 59.99
)

Product.create!(
    name: 'Call of Duty - Ghosts',
    description: 'Call of Duty: Ghosts is a 2013 first-person shooter video game developed by Infinity Ward and published by Activision. It is the tenth major installment in the Call of Duty series and the sixth developed by Infinity Ward. It was released for Microsoft Windows, PlayStation 3, Xbox 360, and Wii U on November 5, 2013.',
    image: 'cod_ghosts.jpeg',
    price: 45.00
)

Product.create!(
    name: 'Assassins Creed - III',
    description: 'Assassin\'s Creed III is a 2012 action-adventure video game developed by Ubisoft Montreal and published by Ubisoft for PlayStation 3, Xbox 360, Wii U, and Microsoft Windows. It is the fifth major installment in the Assassin\'s Creed series, and a direct sequel to 2011\'s Assassin\'s Creed: Revelations.',
    image: 'ac3.jpeg',
    price: 49.99
)

Product.create!(
    name: 'Hitman - Absolution',
    description: 'Hitman: Absolution is a 2012 stealth video game developed by IO Interactive and published by Square Enix\'s European subsidiary. It is the fifth installment in the Hitman series and the sequel to 2006\'s Hitman: Blood Money.',
    image: 'hitman.jpeg',
    price: 55.00
)