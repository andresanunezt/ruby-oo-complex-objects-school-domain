require 'pry'
# code here!
class School
attr_accessor :name, :roster
# attr_accessor :student, :grade

def initialize(name, roster = {})
@name = name
@roster = roster
# binding.pry
end

def add_student(student,grade)

@roster[grade] ||= []
@roster[grade] << student
end

def grade(grade)
 
    @roster[grade]
end

def sort
    sorted_students = {}

    @roster.each do |grade, students|
        sorted_students[grade] = students.sort
    end
    sorted_students
end


end