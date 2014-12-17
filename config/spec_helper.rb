require 'rspec'
require 'mongoid'
require 'database_cleaner'

ENV["RACK_ENV"] = "development"
Mongoid.load!("./db/mongoid.yml")

RSpec.configure do |config|
  #config factory girl
  config.include FactoryGirl::Syntax::Methods
  #config database cleaner
  config.before(:suite) do
    DatabaseCleaner.strategy = :truncation
    DatabaseCleaner.orm = "mongoid"
  end
  #config database cleaner
  config.before(:each) do
    DatabaseCleaner.clean
  end
end
