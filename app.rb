require_relative 'config/environment'

class App < Sinatra::Base

	get "/" do 
		erb :user_input
	end

	post  "/piglatinize" do
		# puts params
		 @result = PigLatinizer.new.piglatinize(params[:user_phrase])
		# binding.pry
		erb :result
	end
end