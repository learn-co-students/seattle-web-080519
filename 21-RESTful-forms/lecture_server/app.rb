require_relative 'config/environment'

class App < Sinatra::Base
  get '/' do
    erb :index
  end
  
  get '/about' do
    erb :about
  end

  get '/menu' do
    @items = MenuItem.all
    erb :'menu/show'
  end

  get '/menu/new' do
    erb :'menu/new'
  end

  post '/menu' do
    # access POST data
    name = params[:name]
    price = "$" + params[:price]

    # create new MenuItem
    MenuItem.new(name, price)

    @items = MenuItem.all
    erb :'menu/show'
  end

  get '/tip-calculator' do
    erb :'tip-calculator'
  end

  post '/tip-calculator' do
    params
    byebug

    @total_price = 
      params[:price1].to_f +
      params[:price2].to_f +
      params[:price3].to_f
    erb :'tip-calculator-result'
  end
end