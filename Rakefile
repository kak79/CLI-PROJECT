require_relative './config/environment'

puts "SOMETHING"

def reload!
    load './lib/api.rb'
    load './lib/cli.rb'
    load './lib/pics.rb'
end

desc "A console"
task :console do
    Pry.start
end