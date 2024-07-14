require "date"
#require './student'
class Student
  attr_accessor :first_name, :last_name, :school, :grade
  attr_writer :date 
  attr_reader :today
  
  def initialize(first_name, last_name)
      @first_name = first_name
      @last_name = last_name
  end

  def date
    return Date.today
  end

  def today 
    return self.date
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

if s == "elementary school"
  puts "Which grade are you in?"
  g = gets.chomp
  unless g == "kindergarten" || g == 1 || g == 2 || g == 3 || g == 4 || g == 5
    puts "Please enter kindergarten or any number from 1-5..."
    puts "You may need to put quotes around your input."
    g = gets.chomp
  end
  student.grade = g
  elementary = Elementary.new
  puts "Now to reveal your coursework for the upcoming year!"
  puts "As of #{student.today} your schedule is: "
  if g.to_s == "kindergarten"
    puts elementary.kindergarten
  elsif g.to_s == "1"
    puts elementary.one
  elsif g.to_s == "2"
    puts elementary.two
  elsif g.to_s == "3"
    puts elementary.three
  elsif g.to_s == "4"
    puts elementary.four
  else
    puts elementary.five
  end 
elsif s == "grammar school"
  puts "Which grade are you in?"
  g = gets.chomp
  unless g == 6 || g == 7 || g == 8
    puts "Please enter a grade from 6-8..."
    puts "You may need to put quotes around your input."
    g = gets.chomp
  end
  student.grade = g
  grammar = Grammar.new
  puts "Now to reveal your coursework for the upcoming year!"
  puts "As of #{student.today} your schedule is: "
  if g.to_s == "6"
    puts grammar.six
  elsif g.to_s == "7"
    puts grammar.seven
  else
    puts grammar.eight
  end
elsif s == "high school"
  puts "Which grade are you in?"
  g = gets.chomp
  unless g == 9 || g == 10 || g == 11 || g == 12
    puts "Please enter a grade from 9-12..."
    puts "You may need to put quotes around your input."
    g = gets.chomp
  end
  student.grade = g
  highschool = HighSchool.new
  puts "Now to reveal your coursework for the upcoming year!"
  puts "As of #{student.today} your schedule is: "
  if g.to_s == "9"
    puts highschool.nine
  elsif g.to_s == "10"
    puts highschool.ten
  elsif g.to_s == "11"
    puts highschool.eleven
  else
    puts highschool.twelve
  end
elsif s == "college"
  puts "Which class are you in?"
  g = gets.chomp.downcase!
  unless g == "freshman" || g == "sophomore" || g == "junior" || g == "senior"
    puts "Please enter either freshman, sophomore, junior, or senior..."
    puts "You may need to put quotes around your input."
    g = gets.chomp
  end
  student.grade = g
  college = College.new
  puts "Now to reveal your coursework for the upcoming year!"
  puts "As of #{student.today} your schedule is: "
  if g == "senior"
    puts college.senior
  elsif g == "junior"
    puts college.junior
  elsif g == "sophomore"
    puts college.sophomore
  else
    puts college.freshman
  end
else
end

puts "Now save your schedule and prepare for the upcoming year!"
