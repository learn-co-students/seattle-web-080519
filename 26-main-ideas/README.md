# Intro to Rails
* Intro to Rails
* Rails App Basics
* Mails MVC
* Rails Static Request

Shows you how to start a new app and define a controller
that renders a custom static webpage.

Here's what you need to know:
* File names and locations matter!
* Rails looks for things in "default" places

* run `rails new my_rails_server`
* Create a new file `StaticController` in `app/controllers`
* Create a new route `get /about, to: 'static#about'` in `config/routes.rb`
* Create a new file `some_page.html.erb` in `views/static/some_page`

```
class StaticController < ApplicationController
  def about
    render "some_page"
  end
end
```

# Intro to REST
* Intro to Rest
* Rails Dynamic Request

Explains the assumptions Rails makes about RESTfulness.
It has an awesome showing all the different REST routes
and how they relate to controllers and views.

Notice that routes are defined slightly differently than
in Sinatra. In Sinatra the controller has a route definition
right by the same method as a controller. In Rails the routes
file configures how the URLs are mapped to Controller methods.

Rails has dynamic URLs just like Sinatra. A colon `:` indicates
a part of a URL that can be replaced with information, like an id.

```
get 'posts/:id', to: 'posts#show'
```

# Intro to ActionView
* Rails URL Helpers
* Rails form_tag

This section is all about showing how to create links that you render
in views. It may seem like a lot, but it's really just all about
tools Rails provides to render things on the page. 

## Links
Instead of manually constructing links Rails provide methods that
generate links.

```ruby
<a href="/resource/<%= model.id %>">show details</a>
```


Rails has a method to generate links

```ruby

<a href="http://yahoo.com">Yahoo!</a>
<%= link_to "Yahoo!" "http://yahoo.com"  %>
```

```
resource_url
resource_path
```

```
posts_url
posts_path

post_url
post_path

edit_post_url
edit_post_path
```

```ruby
<% @posts.each do |post| %>
  <div><%= link_to post.title, post_path(post) %></div>
<% end %>
```

## Forms
There is a helper to generate forms too.

```ruby
<%= form_tag posts_path do %>
  <label>Post title:</label><br>
  <%= text_field_tag :'post[title]' %><br>

  <label>Post description:</label><br>
  <%= text_area_tag :'post[description]' %><br>

  <%= submit_tag "Submit Post" %>
<% end %>
```

```html
<form action="/posts" accept-charset="UTF-8" method="post"><input name="utf8" type="hidden" value="&#x2713;" /><input type="hidden" name="authenticity_token" value="vq9SMVNk0CjwgZmYomFRhwbo5dfu7tI/2FiR7jOtlVgbj8r/zOO5oL+arU9N4PMm7WqxbUbXg4wqneW02ZfpMw==" />
  <label>Post title:</label><br>
  <input type="text" name="post[title]" id="post_title" />

  <br>

  <label>Post description:</label><br>
  <textarea name="post[description]" id="post_description">
  </textarea>

  <br>

  <input type="submit" name="commit" value="Submit Post" />
</form>
```

# CRUD with Rails
This section ties the different parts together and shows us how
to do full CRUD with Rails. Remember, CRUD is all about getting
information back and forth between the browser and the client.

Users look at HTML pages. They arrive at HTML pages via routes.
The server can pick off information from the URL to gather data
from the database and render it into views that are sent back
to the user and their browser.

HTML pages must be crafted in such a way that they display
the information and have enough identifying structure so when
the data is returned to the server the server knows what to do
with that information.
