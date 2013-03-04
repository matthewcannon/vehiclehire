Given /^i am enquiring for budget suvs$/ do
	budget_suv_enquiry = Enquiry.new(BudgetSuv.new())
	Task::Enquire.new().execute(budget_suv_enquiry)
end
