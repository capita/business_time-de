require "business_time-de/version"
require 'active_support/core_ext'
require 'business_time'
require 'date_easter'

(2000..2099).each do |year|
  easter_sunday = Date.easter(year)
  BusinessTime::Config.holidays << easter_sunday # Ostersonntag
  BusinessTime::Config.holidays << (easter_sunday - 2.days)  # Karfreitag
  BusinessTime::Config.holidays << (easter_sunday + 1.day)   # Ostermontag
  BusinessTime::Config.holidays << (easter_sunday + 39.days) # Christi Himmelfahrt
  BusinessTime::Config.holidays << (easter_sunday + 50.days) # Pfingstmontag
  BusinessTime::Config.holidays << Time.mktime(year, 1, 1).to_date  # Neujahr
  BusinessTime::Config.holidays << Time.mktime(year, 5, 1).to_date  # Tag der Arbeit
  BusinessTime::Config.holidays << Time.mktime(year, 10, 3).to_date # Tag der deutschen Einheit
  BusinessTime::Config.holidays << Time.mktime(year, 12, 25).to_date # Weihnachten
  BusinessTime::Config.holidays << Time.mktime(year, 12, 26).to_date # Weihnachten
end