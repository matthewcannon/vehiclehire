When /^i login as the user$/ do
  Task::LoginAsUser.new().execute()
end
