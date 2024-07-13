class Student
  attr_accessor :first_name, :last_name, :school, :grade
  attr_writer :date
  
  def initialize(first_name, last_name)
      @first_name = first_name
      @last_name = last_name
  end

  def date
    return Date.today
  end

  def school=(value)
    unless value.is_a?(String)
      raise TypeError, "School name must be a string"
    end
    @school=value
  end

  def grade=(value)
    unless value.is_a?(String) || value.is_a?(Integer)
      raise TypeError, "Grade must be corrected"
    end
    @grade=value
  end
end
