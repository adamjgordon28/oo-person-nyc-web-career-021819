require "pry"

class Person
attr_accessor :bank_account
attr_reader :name, :happiness, :hygiene


 def initialize(name, bank_account=25, happiness=8, hygiene=8)
   @name = name
   @bank_account = bank_account
   @happiness = happiness
   @hygiene = hygiene
 end

 def happiness=(new_happiness)
   @happiness = new_happiness
   @happiness = 10 if new_happiness > 10
   @happiness = 0 if new_happiness < 0
 end

 def hygiene=(new_hygiene)
   @hygiene = new_hygiene
   @hygiene = 10 if new_hygiene > 10
   @hygiene = 0 if new_hygiene < 0
 end


 def clean?
   if @hygiene > 7
     true
   else
     false
   end
 end

 def happy?
   if @happiness > 7
     true
   else
     false
   end
 end

 def get_paid(salary)
   @bank_account+=salary
   "all about the benjamins"
 end

 def take_bath
     self.hygiene+=4
     "♪ Rub-a-dub just relaxing in the tub ♫"
 end

  def work_out
    self.hygiene-=3
    self.happiness+=2
    "♪ another one bites the dust ♫"
  end

  def call_friend(friend)
    self.happiness += 3
    friend.happiness += 3
    "Hi #{friend.name}! It's #{self.name}. How are you?"
  end

  def start_conversation(stranger, topic)
    if topic == "politics"
      self.happiness -= 2
      stranger.happiness -= 2
      "blah blah partisan blah lobbyist"
    elsif topic == "weather"
      self.happiness += 1
      stranger.happiness += 1
      "blah blah sun blah rain"
    else
      "blah blah blah blah blah"
    end
  end

end
