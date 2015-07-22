require 'sinatra'
require 'sinatra/reloader'
require "pry"

get "/" do
  erb :home
end

get "/:page" do
  # binding.pry
  @page = params[:page]
  # if @page == "pass"
  #   erb :pass
  # elsif @page == "write_test"
  #   erb :write_test
  # elsif @page == "write_code"
  #   erb :write_code
  # elsif @page == "refactor"
  #   erb :refactor
  # elsif @page == "new_feature"
  #   erb :new_feature
  # elsif @page == "do_refactor"
  #   erb :do_refactor
  # end
  case @page
  when "pass"
    erb :pass
  when "write_test"
    erb :write_test
  when "write_code"
    erb :write_code
  when "refactor"
    erb :refactor
  when "new_feature"
    erb :new_feature
  when "do_refactor"
    erb :do_refactor
  end

end
