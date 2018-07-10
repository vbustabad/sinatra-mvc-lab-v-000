require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
    erb :user_input
  end

  post '/piglatinize' do
    user_phrase = params[:user_phrase]
    pig_latinizer_text = PigLatinizer.new
    @pig_latinized_text = pig_latinizer_text.piglatinize(user_phrase)

    erb :display_submission
  end

end
