#!/usr/bin/env ruby
# -*- coding: utf-8 -*-

API_KEY = "95b417da9bd81fe18e81592860cf798f"
URL = "http://api.openweathermap.org/data/2.5/forecast"

require "json"
require "open-uri"

response = open(URL + "?q=Kitakyushu,jp&APPID=#{API_KEY}")
puts JSON.pretty_generate(JSON.parse(response.read))

#hash = JSON.parse(response.read)

#puts hash["list"=>"id"]
