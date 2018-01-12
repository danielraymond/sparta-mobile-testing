Given("I can open the app") do
  mainpage.main_page_displayed?
end

When("click on budget") do
  mainpage.budget_option_click
end

Then("the budget page opens") do
  budgetpage.budget_page_displayed?.displayed?
end

When("I enter a budget") do
  mainpage.budget_option_click
  budgetpage.new_budget_click
  newbudgetpage.fill_budget_name_field
  newbudgetpage.fill_budget_value_field
end

And("save the budget") do
  newbudgetpage.click_save_budget
end

Then("the budget is saved") do
  budgetpage.new_budget_displayed?.displayed?
end

And("can be seen on the homepage") do
  expect(budgetpage.new_budget_text).to eq('Test Budget Name')
end
