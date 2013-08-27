#Dev Bootcamp Prep Assessment Garreth Dottin 

#Exercise 1: 

home_address = "50 Westwood Circle" 
home_city = "Irvington" 
home_state = "New York" 

#Excercise 2: 
#First line is declaring the variable so the string, "Anne", is now assigned to first_name a variable 
#The second line would be used to confirm that the variable is equal to the said string 
#*the third line would return an error as the local variable is unassigned and is an example of poor syntax 
#*the fourth line would check that string is equal to the variable 


#Exercise 3: 
# "best" 
# 0 
# 6 


#Exercise 4: 
def product(array) 
        sum = 1
       array.each { |x| 
        sum = sum * x

         } 
          sum 
        
        
end 


#Exercise 5: 

def product_odd(array) 
  sum = 1
        array.each { |x| 
              x % 2 != 0 ? sum = sum * x: sum == sum }
        sum 
end  

#Exercise 6: 

def fizzblam
    i = 0 
while true 
    i +=1
    print i 
    if i % 5 == 0 
            print "Fizz"
        end 
    if i % 7 == 0 
            print "Blam" 
    end
 
    if i % 7 == 0 && i % 5 == 0 
            print "FizzBlam" 
    end 

   if i == 1000 
       break 
    end 
 
end

end 

numbers()


#Exercise 7: 
#For Method_1 we're seeking to find the largest number in the array we've created an iterator to loop through the values in the array. If a value in the array is larger than the first number foo, Foo becomes the larger number. 
#For Method_2 If the number is bigger than 0 we're pushing it to a new array results.
#For Method_3 we're pushing all the values from an array that are even to a new results array. 

Refactored 
def method_2(array)
    results= [] 
array.each { |num|
    num > 0 ? results << num: nil
 }
 results
    
end


#Exercise 8: 
#Return vs puts 
#Return gives the user the last evaluated expression, whereas puts merely gives out a string to the console. \


#Exercise 9: ~10 minutes
#Use Sort method to arrange numbers in sorted array.  
#loop through the array using an each method and if array[x+1] is not in the array and is not 10,000 return x + 1 		

def sorted(array) 
   a = array.sort_by { |x| x}
   missing_value = 0 
        a.each { |x| 
            missing_value = missing_value + 1 
            if missing_value != x 
                    return missing_value 
        end 
    }
            
 end 
 
 #

#Exercise 10: ~10 minutes
def grocery_list *items
  for item in items
    if item in list
      item.count += 1
    else
      list << item
    end
  end
end     
   
   #To solve the problem i used a splat with a foor loop to see if a value(item) is in the in list. If it is the counter increases and 
   #its pushed to the list array which stores the number of items and the item name 
class GroceryList
  attr_reader :list
  
  def initialize
    @list = {}
  end

  def add(item)
    if @list.has_key? item
      @list[item] += 1
    else
      @list[item] = 1
    end
    @list
  end
end

g = GroceryList.new
   
#Exercise 11: ~15minutes
class House
  attr_reader :temp
  
  # These will be values used to determine if the AC/Heater is on or off.
  attr_reader :ac_on?, :heater_on?
  
  def initialize temp
    @temp = temp
  end

  # Functions for enabling/disabling the ac and heater
  # example: my_house.ac = true
  def ac= val
    @ac_on? = val
  end
  
  def heater= val
    @heater_on? = val
  end

  def update_temperature!
    @temp -= 2 if @ac_on?
    @temp += 1 if @heater_on?
  end
  
  def update_temperature
    instance = self.clone
    instance.update_temperature!
    instance
  end
end

class SmartHouse < House
  attr_reader :max_temp, :min_temp
  
  def initialize temp, max_temp = 80, min_temp = 68
    super temp
    @max_temp = max_temp
    @min_temp = min_temp
  end
  
  def update_temperature!
    super # calls original method of House.update_temperature!

    if @temp > @max_temp
      self.ac = true
      self.header = false
    elsif @temp < @min_temp
      self.ac = false
      self.heater = true
    end
  end
end
   


