require "date"
class Student
  attr_accessor :first_name, :last_name, :school, :grade
  
  def initialize(first_name, last_name)
      @first_name = first_name
      @last_name = last_name
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
  
  def initialize(kindergarten, one, two, three, four, five)
    @kindergarten = "Reading, Dance, Music, Counting, Recess, Garden"
    @one = "Reading, Writing, Addition & Subtraction, Recess, Garden, Music"
    @two = "Reading, Writing, Multiplication & Division, Recess, Garden, Music"
    @three = "Reading, Writing, Multiplication & Division, Recess, Garden, Music"
    @four = "Reading, Writing, Multiplication & Division, Recess, Life Science, Music"
    @five = "Reading, Writing, Decimals & Fractions, Recess, Life Science, Music"
  end
end 

class Grammar
  attr_reader :six, :seven, :eight

  def initialize(six, seven, eight)
    @six = "Language Arts, History, Math 101, PE, Earth Systems"
    @seven = "Langauge Arts, History, Math 202, PE, Biology"
    @eight = "Langauge Arts, History, Pre-Algebra, PE, Forces of Earth"
  end
end

class HighSchool
  attr_reader :nine, :ten, :eleven, :twelve

  def initialize(nine, ten, eleven, twelve)
    @nine = "English, American History 1, Algebra, PE, Biology"
    @ten = "English, American History 2, Geometry, PE, Physics"
    @eleven = "Advanced Literature, World History 1, Trigonometry, PE, Chemistry"
    @twelve = "Advanced Literature, World History 2, Pre-Calculus PE, Molecular Biology"
  end
end

class College
  attr_reader :freshman, :sophomore, :junior, :senior

  def initialize(freshman, sophomore, junior, senior)
    @freshman = "English, Ancient History, Philosophy, Calculus 1, Chemistry"
    @sophomore = "English, Medieval History, Political Science, Calculus 2, Physics"
    @junior = "English, World Governments, Law 101, Calculus 3, Anatomy"
    @senior = "Research, Globilization, Law 102, Differential Equations, Quantum Physics"
  end
end

puts "WELCOME!"
puts "Thank you for stopping by this application!"
puts "What is your first_name?"
fn = gets.chomp
lets = fn.count("a-zA-Z")
while lets != fn.length
  puts "Please only submit a first name with letters."
  fn = gets.chomp
  lets = fn.count("a-zA-Z")
end
puts "What is your last name?"
ln = gets.chomp
while lets != ln.length
  puts "Please only submit a last name with letters."
  ln = gets.chomp
  lets = ln.count("a-zA-Z")
end

student = Student.new(fn, ln)
puts "Hello, #{student.first_name}!"
puts "You are off to a great start!"

puts "Are you in elementary school, grammar school, high school, or college?"
s = gets.chomp
unless s == "elementary school" || s == "grammar school" || s == "high school" || s == "college" 
  puts "Please enter elementary school, grammar school, high school, or college..."
  s = gets.chomp
end
student.school = s

  puts "Which grade are you in?"
  g = gets.chomp
  unless g == "kindergarten"|| g == 1 || g == 2 || g == 3 || g == 4 || g == 5
    puts "Please enter kindergarten or any number from 1-5..."
    g = gets.chomp
  end
  student.grade = g
elsif s == "grammar school"
  puts "Which grade are you in?"
  g = gets.chomp
  unless g == 6 || g == 7 || g == 8
    puts "Please enter a grade from 6-8..."
    g = gets.chomp
  end
  student.grade = g
elsif s == "high school"
  puts "Which grade are you in?"
  g = gets.chomp
  unless g == 9 || g == 10 || g == 11 || g == 12
    puts "Please enter a grade from 9-12..."
    g = gets.chomp
  end
  student.grade = g
elsif s == "college"
  puts "Which class are you in?"
  g = gets.chomp.downcase!
  unless g == "freshman" || g == "sophomore" || g == "junior" || g == "senior"
    puts "Please enter a grade from 9-12..."
    g = gets.chomp
  end
  student.grade = g
else
end



puts "Now to reveal your coursework for the upcoming year!"
