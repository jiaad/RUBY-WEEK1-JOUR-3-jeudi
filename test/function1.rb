# def minute_converter(seconds)
# return    seconds / 60
# end
# puts minute_converter(6000)

# def bonjour(nom)
#     return "bonjour #{nom}"
# end
# puts bonjour("jean")

#un autre

# def hello nom="world", pays="france"
# return "hello #{nom} et #{pays}"
# end
#  puts hello("jiad" , "yyooyo")
#

#
# #UN autre =======================================
# class Greeter
#
#   def initialize (name="world")
#   return  @name = name
#   end#method
#   def sayHI
#     puts "HI #{@name}"
#   end#sayHI
#   def sayBYE
#     puts "bye #{@name}, come back soon"
#
#   end
#
# end#greeter
#
#
# g= Greeter.new('pat')
# g.sayHI
# g.sayBYE
# puts Greeter.instance_methods(false)
#
#
# class Greeter
#   attr_accessor :name
# end
# g= Greeter.new("Andy")
# puts   g.respond_to?("name")
# puts g.respond_to?("name=")
# puts g.sayHI
# puts g.name="BETTY"
# puts g.name
# puts g.sayHI



#UN AUTRE ==================================
class MegaGreeter
    attr_accessor :names
    #Creation d'un objet
    def initialize (names = "world")
      @names = names
    end #initialize

    #saluer tout le monde
    def say_hi
      if @names.nil?
        puts "..."
      elsif @names.respond_to?("each")
        @names.each do |name|
          puts "hello #{name}"
      end
    else
      puts "HELLO #{@names}"
    end
    end

#Dire aurevoir a tous
def say_bye
  if @names.nil?
    puts "..."
  elsif @names.respond_to?("join")
    #groupere les differents noms list par des virgules
    puts "good bye #{@names.join(" , ")}. come back soon "

  else puts "GOODBYE #{@names}. come back SOON"

  end

end #say bye
end #MegaGreeter



if __FILE__ == $0

  mg= MegaGreeter.new
  mg.say_hi
  mg.say_bye

#modifier Le nom
mg.names = "zeke"
mg.say_hi
mg.say_bye
puts "////////////"
#changer de nom pour un tableau (une liste de noms)
mg.names = ["albert", "Brenda", "Charles", "Dave", "Engelbert"]
mg.say_hi
mg.say_bye
puts "////////////"
#Maintenant le nom n'est plus ..
mg.names = nil
mg.say_hi
mg.say_bye
end
