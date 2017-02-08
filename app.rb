require 'sinatra'
require 'rubygems'
require 'csv'
require 'pg'
require_relative 'logic.rb'

load "./local_env.rb" if File.exists?("./local_env.rb")

