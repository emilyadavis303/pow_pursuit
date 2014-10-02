# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
resorts = Resort.create([
  {name: "Arapahoe Basin",  snotel_station: "loveland_basin"},
  {name: "Aspen Mountain",  snotel_station: "mc_clure_pass"},
  {name: "Beaver Creek",    snotel_station: "beaver_creek"},
  {name: "Breckenridge",    snotel_station: "michigan_creek"},
  {name: "Buttermilk",      snotel_station: "mc_clure_pass"},
  {name: "Copper Mountain", snotel_station: "fremont_pass"},
  {name: "Crested Butte",   snotel_station: "schofield_pass"},
  {name: "Eldora",          snotel_station: "lake_eldora"},
  {name: "Keystone",        snotel_station: "grizzly_peak"},
  {name: "Loveland",        snotel_station: "loveland_basin"},
  {name: "Monarch",         snotel_station: "porphyry_creek"},
  {name: "Purgatory",       snotel_station: "cascade"},
  {name: "Silverton",       snotel_station: "cascade"},
  {name: "Ski Cooper",      snotel_station: "fremont_pass"},
  {name: "Snowmass",        snotel_station: "north_lost_trail"},
  {name: "Steamboat",       snotel_station: "tower"},
  {name: "Telluride",       snotel_station: "lizard_head_pass"},
  {name: "Vail",            snotel_station: "vail_mountain"},
  {name: "Wolf Creek",      snotel_station: "wolf_creek"}
  ])
