#!/usr/bin/env ruby
# -*- coding: utf-8 -*-

API_KEY = "95b417da9bd81fe18e81592860cf798f"
URL = "http://api.openweathermap.org/data/2.5/forecast"

require "json"
require "open-uri"

response = open(URL + "?q=Kitakyushu,jp&APPID=#{API_KEY}")
#puts JSON.pretty_generate(JSON.parse(response.read))

hash = JSON.parse(response.read)

#date now

day = Time.now

#weather data
dt = Array.new
weather = Array.new
for num in 0..30 do
 puts hash["list"][num]["dt_txt"]
 puts hash["list"][num]["weather"][0]["description"]
end

