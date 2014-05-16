# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
jobs = Job.create([
	{jobtitle: "Our Dear Leader", company: "North Korea", formatted_location: "Pyongyang, NK", snippet: "Best and greatest person in the world!", url: "http://www.northkorea.nk", lat: 1.234, long: 123.456, jobkey: 00001},
	{jobtitle: "Underwater Basket Weaver", company: "Bermuda Baskets", formatted_location: "Hamilton, BM", snippet: "Now with breathing apparatus", url: "http://www.bermudabaskets.com", lat: 2.345, long: 6.789, jobkey: 12345},
	{jobtitle: "Chief Freedom Officer", company: "GWBush Holdings", formatted_location: "Houston, TX", snippet: "Getting the world freedomer", url: "http://www.freedom.er", lat: 1.000, long: 1.000, jobkey: 74333},
	])