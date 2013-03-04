Given /^a special offer on luxury suvs$/ do
	special_offer_on_luxury_suvs = SpecialOffer.new(LuxurySuv.new())
	Task::AddSpecialOffer.new().execute(special_offer_on_luxury_suvs)
end

When /^i select special offers$/ do
end

Then /^i am notified that the special offer has been automatically selected$/ do
end
