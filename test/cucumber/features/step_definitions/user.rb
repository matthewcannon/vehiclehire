Given /^the user is logged in$/ do
  steps %{
    Given there is a user
    When i login as the user
    Then i have the home page
  }
end

Given /^there is a user/ do
  Task::AddUser.new().execute("user@domain.com", "password")
end
