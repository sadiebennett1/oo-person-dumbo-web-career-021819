class Person

  attr_accessor :bank_account
  attr_reader :name, :happiness, :hygiene

  def initialize(name)
    @name = name
    @bank_account = 25
    @happiness = 8
    @hygiene = 8
  end

  def happiness=(num)
    @happiness = num
    @happiness = 10 if @happiness > 10
    @happiness = 0 if @happiness < 0
  end

  def hygiene=(num)
    @hygiene = num
    @hygiene = 10 if @hygiene > 10
    @hygiene = 0 if @hygiene < 0
  end


  def clean?
    @hygiene > 7
  end

  def happy?
    @happiness > 7
  end

  def get_paid(num)
    @bank_account += num
    "all about the benjamins"
  end

  def take_bath
    self.hygiene += 4
    "♪ Rub-a-dub just relaxing in the tub ♫"
  end

  def work_out
    self.happiness += 2
    self.hygiene -= 3
    "♪ another one bites the dust ♫"
  end

  def call_friend(friend)
    [friend, self].each do |person|
      person.happiness += 3
    end
    "Hi #{friend.name}! It's #{self.name}. How are you?"
  end

  def start_conversation(friend, topic)
    if topic == "politics"
      [friend, self].each do |person|
        person.happiness -= 2
      end
      return "blah blah partisan blah lobbyist"
    elsif topic == "weather"
      [friend, self].each do |person|
        person.happiness += 1
      end
      return "blah blah sun blah rain"
    else
      return "blah blah blah blah blah"
    end

  end

end
