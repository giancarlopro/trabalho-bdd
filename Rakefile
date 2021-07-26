task default: :serve

task :serve do
  sh 'rackup'
end

task :clear_db do
  sh 'rm -f app/db/database.test.sqlite'
end

task :migrate do
  ruby 'app/db/migrate.rb'
end

task :migrate_test do
  sh 'RACK_ENV=test ruby app/db/migrate.rb'
end

task test: [:clear_db, :migrate_test] do
  sh 'rspec'
  sh 'rm -f app/db/database.test.sqlite'
  sh 'RACK_ENV=test ruby app/db/migrate.rb'
  sh 'cucumber'
end
