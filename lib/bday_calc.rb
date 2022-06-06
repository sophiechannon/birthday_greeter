require 'date'
class BdayCalc
  attr_accessor :user
  MONTHS = Date::MONTHNAMES

  def initialize(user)
    @user = user
  end

  def result
    p days_to_go == 0 ? :today : :future
  end

  def days_to_go
    (Date.today - user.birthday).to_i
  end
end