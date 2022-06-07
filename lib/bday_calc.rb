require 'date'

class BdayCalc
  attr_accessor :user
  def initialize(user)
    @user = user
  end

  def result
    days_to_go == 0 ? :today : :future
  end

  def days_to_go
    (user.birthday-Date.today).to_i
  end
end