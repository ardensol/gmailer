desc "Import users." 
  task :import_users => :environment do
    File.open("users.txt", "r").each do |line|
      name, email, statistic = line.strip.split("\t")
      u = User.new(name: name, email: email, statistic: statistic)
      u.save
    end
  end