require_relative 'config/environment'

class App < Sinatra::Base

  # This is a sample static route.
  get '/hello' do
    "Hello World!"
  end

  # This is a sample dynamic route.
  get "/hello/:name" do
    @user_name = params[:name]
    "Hello #{@user_name}!"
  end

  # Code your final two routes here: 
  
  get "/goodbye/:name" do 
    "Goodbye, #{params[:name]}."
  end
  get "/multiply/:num1/:num2" do 
    # "#{params[:num1] * params[:num2]}"
    
    "<!DOCTYPE html>\n<html>\n<head>\n  <meta http-equiv=\"Content-Type\" content=\"text/html; charset=ut...nabled the <code>show_exceptions</code>setting.</p>\n  </div> <!-- /WRAP -->\n #{params[:num1] * params[:num2]} </body>\n</html>\n"
    erb :multiply
  end

end