class Employee

  attr_reader :name

  def name=(name)
    if name == ""
      raise "Name can't be blank!"
    end
    @name = name
  end

  def print_name
    puts "Name: #{name}"
  end

end

class SalariedEmployee < Employee

  attr_reader :salary

  def salary=(salary)
    if salary < 0
      raise "A salary of #{salary} isn't valid!"
    end
    @salary = salary
  end

  def print_pay_stub
    print_name
    pay_for_period = format("%.2f", (salary/365.0) * 14)
    puts "Pay This Period: $#{pay_for_period}"
  end

end

class HourlyEmployee < Employee
  attr_reader :hourly_wage, :hours_per_week

  def hourly_wage=(hourly_wage)
    if hourly_wage < 0
      raise "A hourly wage of #{hourly_wage} isn't valid!"
    end
    @hourly_wage = hourly_wage
  end

  def hours_per_week=(hours_per_week)
    if hours_per_week < 0
      raise "A hourly wage of #{hours_per_week} isn't valid!"
    end
    @hours_per_week = hours_per_week
  end

  def print_pay_stub
    print_name
    pay_for_period = format("$%.2f", hourly_wage * hours_per_week * 2)
    puts "Pay This Period: #{pay_for_period}"
  end


end

hourly = HourlyEmployee.new
hourly.name = "John Smith"
hourly.hourly_wage = 14.97
hourly.hours_per_week = 30
hourly.print_pay_stub
