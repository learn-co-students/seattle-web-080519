class CatController < ApplicationController
  # Index
  get '/cats' do
    @cats = Cat.all
    erb :'cats/index'
  end

  get '/cats/new' do
    erb :'cats/new'
  end

  get '/cats/:id' do
    @cat = Cat.find(params[:id])
    erb :'cats/show'
  end

  post '/cats' do
    @cat = Cat.create(
      name: params[:name],
      image_url: params[:image_url]
    )

    redirect "/cats/#{@cat.id}"
  end

  get '/cats/:id/edit' do
    @cat = Cat.find(params[:id])
    erb :'cats/edit'
  end

  patch '/cats/:id' do
    @cat = Cat.find(params[:id])

    # shortcutty way to do this
    # @cat.update(params)

    @cat.name = params[:name]
    @cat.image_url = params[:image_url]
    @cat.save

    redirect "/cats/#{@cat.id}"
  end

  delete '/cats/:id' do
    @cat = Cat.find(params[:id])
    @cat.destroy

    redirect '/cats'
  end
end