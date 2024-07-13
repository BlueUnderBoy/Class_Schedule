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

class Elementary
  attr_reader :kindergarten, :one, :two, :three, :four, :five
  
  def kindergarten
    return "Reading, Dance, Music, Counting, Recess, Garden"
  end

  def one 
    return "Reading, Writing, Addition & Subtraction, Recess, Garden, Music"
  end

  def two
    return "Reading, Writing, Multiplication & Division, Recess, Garden, Music"
  end

  def three
    return "Reading, Writing, Multiplication & Division, Recess, Garden, Music"
  end

  def four
    return "Reading, Writing, Multiplication & Division, Recess, Life Science, Music"
  end

  def five 
    return "Reading, Writing, Decimals & Fractions, Recess, Life Science, Music"
  end
end 

class Grammar
  attr_reader :six, :seven, :eight

  def six
    return "Language Arts, History, Math 101, PE, Earth Systems"
  end
  
  def seven
    return "Langauge Arts, History, Math 202, PE, Biology"
  end 
  
  def eight
    return "Langauge Arts, History, Pre-Algebra, PE, Forces of Earth"
  end
end

class HighSchool
  attr_reader :nine, :ten, :eleven, :twelve

  def nine
    return "English, American History 1, Algebra, PE, Biology"
  end 
  
  def ten
    return "English, American History 2, Geometry, PE, Physics"
  end
  
  def eleven
    return "Advanced Literature, World History 1, Trigonometry, PE, Chemistry"
  end 
  
  def twelve
    return "Advanced Literature, World History 2, Pre-Calculus PE, Molecular Biology"
  end
end

class College
  attr_reader :freshman, :sophomore, :junior, :senior

  def freshman
    return "English, Ancient History, Philosophy, Calculus 1, Chemistry"
  end
  
  def sophomore
    return "English, Medieval History, Political Science, Calculus 2, Physics"
  end
  
  def junior
    return "English, World Governments, Law 101, Calculus 3, Anatomy"
  end 

  def senior
    return "Research, Globilization, Law 102, Differential Equations, Quantum Physics"
  end
end
