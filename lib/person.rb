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
    self.hygiene=@hygiene
    "♪ Rub-a-dub just relaxing in the tub ♫"
  end

  def work_out
    @hygiene -= 3
    self.hygiene=@hygiene
    @happiness += 2
    self.happiness=@happiness
    "♪ another one bites the dust ♫"
  end

  def call_friend(friend)
    @happiness += 3
    friend.happiness += 3
    self.happiness=@happiness
    "Hi #{friend.name}! It's #{self.name}. How are you?"
  end

  def start_conversation(person, topic)
    if topic == "politics"
      self.happiness -= 2
      person.happiness -= 2
      'blah blah partisan blah lobbyist'
    elsif topic == "weather"
      self.happiness += 1
      person.happiness += 1
      'blah blah sun blah rain'
    else
      'blah blah blah blah blah'
    end
  end
end



