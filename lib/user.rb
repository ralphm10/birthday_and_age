require 'date'
class User
  attr_reader :name, :date_of_birth

  def initialize(name, date_of_birth)
    @name = name
    @date_of_birth = date_of_birth
  end

  # Returns an Integer representing the user’s current age
  def age
    if Date.today.yday >= birthday_this_year.yday
      Date.today.year - date_of_birth.year
    else
      (Time.now.year) -1 - date_of_birth.year
    end
  end

  # Returns a Date object for the user's current upcoming birthday
  def next_birthday
    if birthday_this_year.yday <= Date.today.yday
      Date.new(Time.now.year.succ, date_of_birth.month, date_of_birth.day)
    else
      birthday_this_year
    end
  end

  def birthday_this_year
    Date.new(Date.today.year, date_of_birth.month, date_of_birth.day)
  end
end

tests = [
  Date.new(1986, 1, 1),
  Date.new(1988, Date.today.month, Date.today.day),
  Date.new(1990, 12, 30),
  ]

puts "====== ages ======"
tests.each do |date|
  puts "#{date} => #{User.new("Test", date).age}"
end

puts "====== birthdays ======"
tests.each do |date|
  puts "#{date} => #{User.new("Test", date).next_birthday}"
end
