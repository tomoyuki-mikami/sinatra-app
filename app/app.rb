require 'sinatra'
require 'sinatra/reloader' if development?
require 'pry'
require_relative 'person'

class App < Sinatra::Application
  get '/' do
    binding.pry
    person = Person.new.call(name: "test", age: 26)
    person
    'Hello World!'
  end
end