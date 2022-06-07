require 'date'

class User
  attr_reader :name, :birthday
  def initialize(name, day, month)
    @name = name
    @birthday = next_birthday(day, month)
  end

  private

  def next_birthday(day, month)
    bday = Date.new(Date.today.year, month.to_i, day.to_i)
    if bday < Date.today
      bday = Date.new(Time.now.year.to_i + 1, month.to_i, day.to_i)
    end
    bday
  end
end