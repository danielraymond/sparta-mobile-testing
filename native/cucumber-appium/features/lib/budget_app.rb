require_relative 'pages/main_page'
require_relative 'pages/budget_page'
require_relative 'pages/new_budget_page'

module BudgetApp

  def mainpage
    MainPage.new($driver)
  end

  def budgetpage
    BudgetPage.new($driver)
  end

  def newbudgetpage
    NewBudgetPage.new($driver)
  end

end
