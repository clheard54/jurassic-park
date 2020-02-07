require_relative "./config/environment.rb"
require "sinatra/activerecord/rake"

task :environment do
  require_relative "./config/environment.rb"
end

desc "drop into the Pry console"
task :console => :environment do
  [:seed]
  Pry.start
end

namespace :db do
  # desc "migrate changes to your database"
  # task :migrate => :environment do
  #   Student.create_table
  # end

  desc "seed your table with some dummy data"
  task :seed do
    sh "rm jurassic_park.db"
    sh "./seeds.rb"
  end
end
