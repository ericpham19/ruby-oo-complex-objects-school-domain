# code here!
class School
    attr_reader :name

    def initialize(name)
        @name= name
        @roster= {}

    end

    def roster
        @roster
    end

    def add_student (name, grade)
        @name= name
        @grade= grade
        (@roster[grade] ||= []) << name
       
    end

    def grade(grade)
        @roster[grade]
    end

    def sort
        sorted_roster= {}
        @roster.map do |grade, name|
            sorted_roster[grade]= name.sort
        end
        sorted_roster
    end

end