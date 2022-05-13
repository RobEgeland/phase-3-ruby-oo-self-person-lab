# your code goes here

class Person 
    attr_reader :name, :bank_account, :happiness, :hygiene
     
    def initialize(name)
        @name = name
        @bank_account = 25
        @happiness = 8
        @hygiene = 8
    end


    def hygiene=(hygiene_num)
        @hygiene = 
            if hygiene_num > 10
                10
            elsif hygiene_num < 0
                0
            else
                hygiene_num
            end
    end

    def bank_account=(bank_account)
        @bank_account = bank_account
    end

    def happiness=(happiness_num)
        @happiness = 
            if happiness_num > 10  
                10
            elsif happiness_num < 0
                0
            else 
                happiness_num
        end
    end

    def clean? 
        self.hygiene > 7 ? true : false
    end

    def happy?
        self.happiness > 7 ? true : false
    end

    def get_paid(amount)
        self.bank_account += amount
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
        self.happiness += 3
        friend.happiness += 3
        "Hi #{friend.name}! It's #{self.name}. How are you?"
    end

    def start_conversation(friend, topic)
        if topic == "politics"
            self.happiness -= 2
            friend.happiness -= 2
            "blah blah partisan blah lobbyist"
        elsif topic == "weather"
            self.happiness += 1
            friend.happiness += 1
            "blah blah sun blah rain"
        else
            "blah blah blah blah blah"
        end
    end
end 
