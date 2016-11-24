#!/usr/bin/env ruby
# -*- coding: utf-8 -*-

API_KEY = "95b417da9bd81fe18e81592860cf798f"
URL = "http://api.openweathermap.org/data/2.5/forecast"

require "json"
require "open-uri"
require "tk"

response = open(URL + "?q=Kitakyushu,jp&APPID=#{API_KEY}")
#puts JSON.pretty_generate(JSON.parse(response.read))

hash = JSON.parse(response.read)

#date now

day = Time.now

label4 = TkLabel.new
label4.text(day)
label4.pack

#weather data
dt = Array.new
weather = Array.new
for num in 0..2 do
 dt << hash["list"][num]["dt_txt"]
 weather << hash["list"][num]["weather"][0]["description"]
end


label = TkLabel.new
label2 = TkLabel.new
label3 = TkLabel.new
label5 = TkLabel.new
label6 = TkLabel.new
label7 = TkLabel.new
label.text(dt[0])
label5.text(weather[0])
label2.text(dt[1])
label6.text(weather[1])
label3.text(dt[2])
label7.text(weather[2])

label.pack
label5.pack
label2.pack
label6.pack
label3.pack
label7.pack

Tk.mainloop

