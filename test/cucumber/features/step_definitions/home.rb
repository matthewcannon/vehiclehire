Then /^i have the home page$/ do
  Task::IdentifyWhatIHave.new().execute().should be_kind_of(Content::Home)
end