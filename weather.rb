require 'weatherboy'

puts "Please enter zipcode for the weather in your area."
zipcode = gets.chomp

weatherboy = Weatherboy.new(zipcode)
today = weatherboy.current
forecast = weatherboy.forecasts

puts "The current weather for #{zipcode} is #{today.weather}, with a temperature of #{today.temp_f} degrees F and relative humidity of #{today.relative_humidity}."

forecast.each do |forecast|
    puts "#{forecast.title} is going to be #{forecast.conditions}, with a high of #{forecast.high_f} degrees F, a low of #{forecast.low_f} degrees F, and with a relative humidity of #{today.relative_humidity}."
    end
