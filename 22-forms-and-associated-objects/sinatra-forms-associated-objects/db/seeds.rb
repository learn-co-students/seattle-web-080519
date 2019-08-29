Author.destroy_all
Book.destroy_all
Cat.destroy_all

GoogleBooks::Adapter.new("Madeline L'Engle").fetch_books
GoogleBooks::Adapter.new("Stephen King").fetch_books

Cat.create(name: "Garfield", image_url: 'https://upload.wikimedia.org/wikipedia/en/thumb/b/bc/Garfield_the_Cat.svg/1200px-Garfield_the_Cat.svg.png')
Cat.create(name: "The Cat in the Hat", image_url: 'https://vignette.wikia.nocookie.net/heroes-and-villians/images/8/85/20180728_195602.png/revision/latest?cb=20180729011436')
Cat.create(name: "Grumpy Cat", image_url: 'https://media.wired.com/photos/5cdefc28b2569892c06b2ae4/master/w_1280%2Cc_limit/Culture-Grumpy-Cat-487386121-2.jpg')