require 'sinatra'
require 'rubygems'
require 'csv'
require 'pg'
require_relative 'logic.rb'

load "./local_env.rb" if File.exists?("./local_env.rb")

get '/' do
    @title = 'Home Page'
    session[:full_name] = params[:full_name]
    erb :user_registration, :locals => {:users => users}
end