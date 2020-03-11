# code here!
class School

    attr_accessor :roster

    def initialize(name)
        @name = name
        @roster = {}
    end

    def add_student(new_student, grade)
        if @roster[grade] == nil
            @roster[grade] = []
            @roster[grade] << new_student
        else
            @roster[grade] << new_student
        end
    end

    def grade(number)
        @roster[number]
    end

    def sort
        result = {}
        @roster.each do |grade, student|
            result[grade] = student.sort
        end
        result
    end

end