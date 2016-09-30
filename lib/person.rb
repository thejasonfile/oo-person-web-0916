# your code goes here
require 'pry'
class Person

  attr_accessor :bank_account
  attr_reader :name

  def initialize(name)
    @name = name
    @bank_account = 25
    @happiness = 8
    @hygiene = 8
  end

  def happiness=(happiness)
    @happiness = [[10, happiness].min, 0].max
  end

  def happiness
    @happiness = [[10, @happiness].min, 0].max
  end

  def hygiene=(hygiene)
    @hygiene = [[10, hygiene].min, 0].max
  end

  def hygiene
    @hygiene = [[10, @hygiene].min, 0].max
  end

  def happy?
    @happiness > 7
  end

  def clean?
    @hygiene > 7
  end

  def get_paid(salary)
    @bank_account += salary
    "all about the benjamins"
  end

  def take_bath
    @hygiene += 4
    hygiene=@hygiene
    "♪ Rub-a-dub just relaxing in the tub ♫"
  end

binding.pry
end



