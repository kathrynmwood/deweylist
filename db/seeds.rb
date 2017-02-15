# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Initialize test admin account
User.create! do |u|
    u.email       = 'admin@test.com'
    u.password    = 'password'
    u.admin_role  = true
end

# Initialize test curator account
User.create! do |u|
    u.email        = 'curator@test.com'
    u.password     = 'password'
    u.curator_role = true
end

# Initialize test user account
User.create! do |u|
    u.email = 'user@test.com'
    u.password = 'password'
    u.user_role = true
end


lists = List.create([ { title: "Feminism", description: "Women's rights are human rights.", price: 25, organization: "UN Women", organization_description: "UN Women is the global champion for gender equality, working to develop and uphold standards and create an environment in which every woman and girl can exercise her human rights and live up to her full potential. We are trusted partners for advocates and decision-makers from all walks of life, and a leader in the effort to achieve gender equality.", organization_url: "http://www.unwomen.org" },
                      { title: "Environmentalism", description: "The Earth is our one and only home.", price: 25, organization: "National Park Foundation", organization_description: "Our national parks are a uniquely American idea, truly supported by all of us. We are inspired by the beauty that surrounds us. We seek the wild and untamed land, the places where history was made, the sites that honor our heroes, and we stand behind what really matters— protecting these sacred places.", organization_url: "https://www.nationalparks.org/" },
                      { title: "Arts & Music", description: "Enrich the lives of inner city youth through music and arts education.", price: 25, organization: "Inner-City Arts", organization_description: "We believe that the arts and creativity are transformational. Inner-City Arts envisions a society that honors the human capacity for creativity, and values its cultivation in the education of young people. Our mission is to engage young people in the creative process in order to shape a society of creative, confident and collaborative individuals.", organization_url: "http://www.inner-cityarts.org/" },
                      { title: "Advocacy & Human Rights", description: "", price: 25, organization: "American Civil Liberties Union (ACLU)", organization_description: "For almost 100 years, the ACLU has worked to defend and preserve the individual rights and liberties guaranteed by the Constitution and laws of the United States.", organization_url: "https://www.aclu.org/"}
                    ]);

books = Book.create([ { title: "How to Be A Woman", author: "Caitlin Moran", image_url: "http://images.gr-assets.com/books/1405909800l/10600242.jpg"},
                      { title: "The Argonauts", author: "Maggie Nelson", image_url: "http://images.gr-assets.com/books/1410981835l/22929741.jpg"},
                      { title: "Silent Spring", author: "Rachel Carson", image_url: "http://t0.gstatic.com/images?q=tbn:ANd9GcR0kYhKyvPoFrKVjF5s3yXJtEal0V5OemLbgvPM4LNQisiPj6RM"},
                      { title: "Wild", author: "Cheryl Strayed", image_url: "http://www.cherylstrayed.com/images/WildTP_Books-680.jpg"},
                      { title: "Into the Wild", author: "Jon Krakauer", image_url: "http://images.gr-assets.com/books/1403173986l/1845.jpg"},
                      { title: "Unstoppable", author: "Bill Nye", image_url: "http://www.yalsa.ala.org/thehub/wp-content/uploads/2016/04/Unstoppable-Harnessing-Science-to-Change-the-World-.jpg"},
                      { title: "Walden", author: "Henry David Thoreau", image_url: "http://images.gr-assets.com/books/1465675526l/16902.jpg"},
                      { title: "A Walk in the Woods", author: "Bill Bryson", image_url: "http://images.gr-assets.com/books/1388189974l/9791.jpg"},
                      { title: "How Music Works", author: "David Byrne", image_url: "https://images-na.ssl-images-amazon.com/images/I/41G-eRTz-wL.jpg"},
                      { title: "Little Bee", author: "Chris Cleave", image_url: "http://images.gr-assets.com/books/1344401905l/6948436.jpg"},
                    ]);

selections = Selection.create([ { list_id: 1, book_id: 1},
                                { list_id: 1, book_id: 2},
                                { list_id: 2, book_id: 3},
                                { list_id: 2, book_id: 4},
                                { list_id: 2, book_id: 5},
                                { list_id: 2, book_id: 6},
                                { list_id: 2, book_id: 7},
                                { list_id: 2, book_id: 8},
                                { list_id: 3, book_id: 9},
                                { list_id: 4, book_id: 10},
                              ]);
