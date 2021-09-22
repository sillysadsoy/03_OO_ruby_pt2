class Pizza

    @@all = []

    # attr_accessor :name, :ingredients, :desc

    def initialize(attributes)
        attributes.each do |key, value|
            self.class.attr_accessor(key)
            self.send("#{key}=", value)
        end 
        save
    end 

    def print_attributes
        puts self.name
        puts self.ingredients
        puts self.desc
    end 

    def save
        @@all << self
    end 

    def self.all
        @@all
    end 

    def self.find name_input
        self.all.find {|instance| instance.name == name_input}
    end

end

p1 = Pizza.new(name: 'h', ingredients: 'h', desc: 'h')
p2 = Pizza.new(name: 'j', ingredients: 'j', dec: 'j')
p3 = Pizza.new(name: 'l', ingredients: 'l', desc: 'l')

puts p1.print_attributes


