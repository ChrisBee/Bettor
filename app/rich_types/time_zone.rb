class TimeZone < String
  COLUMN_TYPE = :string
  HoboFields.register_type(:time_zone, self)
end 