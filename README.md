# Business Time for Germany

The [business_time](https://github.com/bokmann/business_time) brings business time & days calculations to ActiveSupport.

This gem pre-configures it for all german holidays, both fixed (Neujahr, Tag der Arbeit, Tag der Deutschen Einheit, Weihnachten)
and moving (Easter & it's friends Pfingsten and Himmelfahrt). The easter date is calculated using the 
[date_easter](https://rubygems.org/gems/date_easter) gem, Pfingsten & Himmelfahrt are calculated based on that, 
so no hard-coded values here.

The holidays are defined for `(2000..2099)`, which should be sufficient.

## Usage

    gem install business_time-de
    # OR
    gem 'business_time-de'

    require 'business_time-de'
    7.business_days.after(Date.parse("2012-03-28")) # => "2012-04-10" (because of easter)

For more information on the usage of the [business_time](https://github.com/bokmann/business_time) gem please 
check out it's documentation.

## License

Copyright (c) 2012 Christoph Olszowka, Capita Unternehmensberatung GmbH. Released under MIT License, see LICENSE for more details.