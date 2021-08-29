def admin_login(username, password)
  if (username == "admin" || username == "ADMIN") && password == "12345"
    "Access granted"
  else 
    "Access denied"
  end
end

def hows_the_weather(temperature)
  output = if temperature < 40
              "brisk"
           elsif temperature >= 40 && temperature <= 65
              "a little chilly"
           elsif temperature > 85
              "too dang hot"
           else
              "perfect"
           end
  "It's #{output} out there!"
end

def fizzbuzz(num)
  if num % 3 == 0 && num % 5 == 0
    "FizzBuzz"
  elsif num % 5 == 0
    "Buzz"
  elsif num % 3 == 0
    "Fizz"
  else 
    num
  end
end

def calculator(operation, num1, num2)
  case operation
  when "+" then num1 + num2
  when "-" then num1 - num2
  when "*" then num1 * num2
  when "/" then num1 / num2
  else puts "Invalid operation!"
  end
end


#alternative to the caluclator method. The .send lets you uses a string or symbol as a method and converts it. 
def alt_calculator(operation, num1, num2)
  if ["+", "-", "*", "/"].include?(operation)
    num1.send(operation, num2)
  else
    puts "Invalid operation!"
  end
end