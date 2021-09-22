require 'pry'

class Starship 

    @@all = [] #stores all new class instances 

    attr_accessor :name, :model

    # def initialize(name:, model:) #using keyword arguments
    #     @name = name
    #     @model = model
    #     save
    # end 

    def initialize(attributes) #hash of name/model key value pairs
        attributes.each do |key, value| 
            # binding.pry
            #self.attr_accessor(key)
            self.send("#{key}=", value)
        end
        save
    end 

    def save
        @@all << self
    end 

    def self.all
        @@all
    end 

    # def self.find(name)
    #     #query the class instances to return the matching name
    #     self.all.find {|instance| instance[name] === name}
    # end 

end 
ship = Starship.new({model:'falcon', name:'poop'})
# Starship.find('poop')