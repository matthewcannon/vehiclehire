task :default => [:cucumber]

task :cucumber do
	system 'cd test/cucumber && bundle exec cucumber'
end
