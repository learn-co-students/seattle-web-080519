class ApplicationController < Sinatra::Base

  configure do
    # set :public_folder, 'public'
    set :views, 'app/views'
    set :method_override, true
  end

  get '/' do
    erb :welcome
  end

  get '/start' do
    redirect '/finish'
  end

  get '/start2' do
    redirect to '/finish'
  end

  get '/finish' do
    "<img src='data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAANUAAACCCAMAAADmFX3+AAAAMFBMVEX///8ANYAAJHn5+vx+h65qcqAAK3x2g6r19/kAMH7x9PdzgakzS4sAMn85UY6FjrJNr2EMAAAA8UlEQVR4nO3ay1FDMRQFQdl8bDDg/LO1M3iUtEBNTQdwS7M+GmPa9e39dOB8mT//R6pyVOWoylGVoypHVY6qHFU5qnJU5ajKUZWjKkdVjqocVTmqclTlqMpRlaMqR1WOnatepn3+ouq2cH/BeJ339X1U9fFzX7g/b5znHUY9sxbOLxjHLwNV5ajKUZWjKkdVjqocVTmqclTlqMpRlaMqR1WOqhxVOf5p1cL2tfEqt7BTbrygzk/KO6/d83b+mTCvKkdVjqocVTmqclTlqMpRlaMqR1WOqhxVOapyVOWoylGVoypHVY6qHFU5qnJU5di46gE+Xj5BtvMgBAAAAABJRU5ErkJggg=='> finish"
  end

  # 50/50 change of being "logged in"
  def is_logged_in
    [true, false].sample
  end
end
