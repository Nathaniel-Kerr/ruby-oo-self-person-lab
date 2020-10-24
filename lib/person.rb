class Person
    attr_accessor :bank_account, :happiness, :hygiene
    attr_reader :person, :name
    def initialize (person_name)
        @name = person_name
        @bank_account = 25
        @happiness = 8
        @hygiene = 8
        
    end

    def happiness=(number)
        @happiness = number
       if @happiness < 0 
          @happiness = 0
       end
       if @happiness > 10
          @happiness = 10
       end
    end

    def hygiene=(num)
        @hygiene = num
        if @hygiene < 0
            @hygiene = 0
        end
        if @hygiene > 10
            @hygiene = 10
        end
    end

    def happy?
        if @happiness > 7
            true
        else
            false
        end
    end

    def clean?
        if @hygiene > 7
            true
        else
            false
        end
    end

    def get_paid(salary)
        @bank_account = salary + bank_account
        return "all about the benjamins"
     end

     def take_bath
        self.hygiene += 4
        return "♪ Rub-a-dub just relaxing in the tub ♫"
     end

     def work_out
        self.hygiene -= 3
        self.happiness += 2
        return "♪ another one bites the dust ♫"
     end

     def call_friend(person_name)
        person_name.name
        self.happiness += 3
        person_name.happiness += 3
        "Hi #{person_name.name}! It's #{self.name}. How are you?"
     end

     def start_conversation(person_name, topic)
        if topic == "politics"
            person_name.happiness -= 2
             self.happiness -= 2
            "blah blah partisan blah lobbyist"     
        elsif topic == "weather"
            person_name.happiness += 1
            self.happiness += 1
            "blah blah sun blah rain"
        else "blah blah blah blah blah"
        end
     end
end 
