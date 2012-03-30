require 'testrocket'
require 'business_time-de'

+-> { 7.business_days.after(Date.parse("2012-03-28")).to_date == Date.parse("2012-04-10") }
+-> { Date.parse("2012-04-10").workday? }
--> { Date.parse("2012-04-09").workday? }

(2000..2035).each do |year|
  --> { Date.parse("#{year}-01-01").workday? }
  --> { Date.parse("#{year}-05-01").workday? }
  --> { Date.parse("#{year}-10-03").workday? }
  --> { Date.parse("#{year}-12-25").workday? }
  --> { Date.parse("#{year}-12-26").workday? }
end

# Ultimate easter date list, nicked from http://www.assa.org.au/edm.html
["2000-04-23", "2001-04-15", "2002-03-31", "2003-04-20", "2004-04-11", "2005-03-27", "2006-04-16", "2007-04-08", "2008-03-23", "2009-04-12", "2010-04-04", "2011-04-24", "2012-04-08", "2013-03-31", "2014-04-20", "2015-04-05", "2016-03-27", "2017-04-16", "2018-04-01", "2019-04-21", "2020-04-12", "2021-04-04", "2022-04-17", "2023-04-09", "2024-03-31", "2025-04-20", "2026-04-05", "2027-03-28", "2028-04-16", "2029-04-01", "2030-04-21", "2031-04-13", "2032-03-28", "2033-04-17", "2034-04-09", "2035-03-25"].each do |d|
  easter = Date.parse(d)
  --> { (easter + 1.day).workday? } # Ostermontag
  --> { (easter - 1.day).workday? } # Saturday
  --> { (easter - 2.days).workday? } # Karfreitag

  +-> { (easter - 3.days).workday? } # Gründonnerstag
  # The next business day after gründonnerstag is tuesday...
  +-> { 1.business_day.after(easter - 3.days).to_date == (easter+2.days).to_date }
end