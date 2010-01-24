puts "How many Sundays fell on the first of the month during the twentieth century?"

class Date
  MONTHS = [
            [:Jan, 1..31],
            [:Feb, 1..28],
            [:Mar, 1..31],
            [:Apr, 1..30],
            [:May, 1..31],
            [:Jun, 1..30],
            [:Jul, 1..31],
            [:Aug, 1..31],
            [:Sep, 1..30],
            [:Oct, 1..31],
            [:Nov, 1..30],
            [:Dec, 1..31],
           ]
  def initialize dow, dom, month, year
    @dow, @dom, @month, @year = dow, dom, month, year
  end
  def day
    [@dom, @month, @year]
  end
  def year
    @year
  end
  def increment
    increment_day_of_week
    increment_day_of_month
    self
  end
  def sunday?
    @dow == 0
  end
  def first_of_month?
    @dom == 1
  end
  def increment_day_of_week
    @dow = @dow==6 ? 0 : @dow+1
  end
  def leap_year?
    @year%400==0 || (@year%100>0 && @year%4==0)
  end
  def increment_day_of_month
    @dom+=1
    cur = MONTHS.assoc(@month)
    unless cur[1].include? @dom
      return if leap_year? && @dom==29
      nxt = MONTHS[MONTHS.index(cur)+1]
      if nxt.nil?
        @dom = 1
        @year += 1
        @month = MONTHS[0][0]
      else
        @dom = 1
        @month = nxt[0]
      end
    end
  end
end

def answer
  d = Date.new 1, 1, :Jan, 1900
  while d.day != [1, :Jan, 1901]
    d.increment
  end
  sundays = 0
  loop do 
    sundays+=1 if d.sunday? && d.first_of_month?
    d.increment
    break if d.year > 2000
  end
  sundays
end

puts answer
