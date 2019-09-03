# Intro to Rails Lecture

### About

Rails was created in 2003 by David Heinemeier Hansson, while working on the code base for Basecamp, a project management tool by 37signals. David extracted Ruby on Rails and officially released it as open source code in July of 2004. Despite rapid iteration of the Rails code base throughout the years, it has stuck to three basic principles:

Ruby Programming Language
Model-View-Controller Architecture
Programmer Happiness

Rails was created with the goal of increasing programmers’ happiness and productivity levels. In short, with Rails you can get started with a full-stack web application by quickly creating pages, templates and even query functions.

Rails heavily emphasizes “Convention over Configuration.” This means that a programmer only needs to specify and code out the non-standard parts of a program. Even though Rails comes with its own set of tools and settings, you’re certainly not limited to library of rails commands and configurations. Developers are free to configure their applications however they wish, though adopting conventions is certainly recommended.

https://www.youtube.com/watch?v=9ML8PrP3A8E

### Compared to Sinatra

Migrations are the same.

Models are the same.

Views are now named `.html.erb` and not `.erb`. Otherwise the same.

Routes are kept in 2 places

`app/controller` and `config/routes.rb`

Rails gives us the help commands
`rails routes` or `rake routes` to see a list of all routes rails console to access the console.

`rails s` to launch the server on the default port, 3000. `rails s -p xxxx` for another one.

`rails db:migrate` or `rake db:migrate` to migrage. Same with seeds.

### Generators

5 generators for us in mod 2: `Migration`, `Model`, `Controller`, `Resource`, and `Scaffold`. `Scaffold` is illegal for this class. It gives too many extra files and is not educational.

`--no-test-framework` flag removes extra testing files.

When no data type is given the default is string.

Also a `Serializer` genrerator and `api`. These are for mod 5.

#### Migration Generators

`rails g migration create_author name genre bio:text is_famous:boolean age:integer --no-test-framework`

Creates a migration only

Can generate create, update, or rollback migrations. Always double check to see that your migration was created correctly.

#### Model Generators

`rails g model Author name genre bio:text is_famous:boolean age:integer --no-test-framework`

Generates a migration AND a model.

#### Controller Generators

`rails g controller dogs new create update edit destroy show index --no-test-framework`

Generates:
A controller with the given routes. Notice that there are 7 empty restful routes in the controller.
A `config/routes.rb` list of routes. Note also that this is 7 get routes. I am not sure why this happens. The better option is to delete and replace with `resources :dogs`
A directory of matching views. Nice to have.
Sass Coffescript Js stuff <-- Not important for us.

#### Resource Generators

`rails g resource Author name genre bio:text is_famous:boolean age:integer --no-test-framework`

Generates:
Migration
Model
Controller => blank
Config/routes. resources:authors, which is all 7 routes
View directory, blank, with no views.
Coffee script Sass <-- Not important for us.

Note: We get resources :authors and not 7 get routes like with the controller generator. But we get empty controller and empty views.

#### Scaffold Generators

`rails generate scaffold Band name genre bio:text is_famous:boolean age:integer --no-test-framework`

Generates everything. Illegal. Do not use.

No generator is capable of making only views.

Demonstration on full app.
