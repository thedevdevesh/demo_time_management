# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

User.create([
    { name: 'Rakesh', preferred_working_hour_per_day: 7.5 },
    { name: 'Umesh', preferred_working_hour_per_day: 7.5 }
])

Worklog.create([
    { user_id: 1, date: '2025-01-24', hours: 7.5, notes: 'Project 1 work' },
    { user_id: 2, date: '2025-01-23', hours: 5.5, notes: 'Project 2 work' }
])

=begin
devesh@devesh:~/projects/demo_time_management$ rails c
Loading development environment (Rails 7.2.2.1)
demo-time-management(dev)> User.all
  User Load (0.1ms)  SELECT "users".* FROM "users" /* loading for pp */ LIMIT $1  [["LIMIT", 11]]
=>
[#<User:0x00007a44a02e3128
  id: 1,
  name: "Rakesh",
  preferred_working_hour_per_day: 7.5,
  created_at: "2025-01-24 06:51:50.761729000 +0000",
  updated_at: "2025-01-24 06:51:50.761729000 +0000">,
 #<User:0x00007a449e8b9388
  id: 2,
  name: "Umesh",
  preferred_working_hour_per_day: 7.5,
  created_at: "2025-01-24 06:51:50.765432000 +0000",
  updated_at: "2025-01-24 06:51:50.765432000 +0000">,
 #<User:0x00007a449e8b9108
  id: 3,
  name: "Rakesh",
  preferred_working_hour_per_day: 7.5,
  created_at: "2025-01-24 06:51:58.023580000 +0000",
  updated_at: "2025-01-24 06:51:58.023580000 +0000">,
 #<User:0x00007a449e8b8c08
  id: 4,
  name: "Umesh",
  preferred_working_hour_per_day: 7.5,
  created_at: "2025-01-24 06:51:58.042591000 +0000",
  updated_at: "2025-01-24 06:51:58.042591000 +0000">]
demo-time-management(dev)> Worklog.all
  Worklog Load (0.3ms)  SELECT "worklogs".* FROM "worklogs" /* loading for pp */ LIMIT $1  [["LIMIT", 11]]
=>
[#<Worklog:0x00007a449e46df18
  id: 1,
  user_id: 1,
  date: "2025-01-24",
  hours: 7.5,
  notes: "Project 1 work",
  created_at: "2025-01-24 06:51:50.779896000 +0000",
  updated_at: "2025-01-24 06:51:50.779896000 +0000">,
 #<Worklog:0x00007a449e8b6f48
  id: 2,
  user_id: 2,
  date: "2025-01-23",
  hours: 5.5,
  notes: "Project 2 work",
  created_at: "2025-01-24 06:51:50.784891000 +0000",
  updated_at: "2025-01-24 06:51:50.784891000 +0000">,
 #<Worklog:0x00007a449e8b6cc8
  id: 3,
  user_id: 1,
  date: "2025-01-24",
  hours: 7.5,
  notes: "Project 1 work",
  created_at: "2025-01-24 06:51:58.058438000 +0000",
  updated_at: "2025-01-24 06:51:58.058438000 +0000">,
 #<Worklog:0x00007a449e8b6b88
  id: 4,
  user_id: 2,
  date: "2025-01-23",
  hours: 5.5,
  notes: "Project 2 work",
  created_at: "2025-01-24 06:51:58.064862000 +0000",
  updated_at: "2025-01-24 06:51:58.064862000 +0000">]
demo-time-management(dev)>

=end
