      # a module is a namespace to avoid name collisions
      module University

        class Student

          # generate getter and setter for name and grades
          attr_accessor :name, :grades

          # factory method (constructor) on the class
          def self.named( name )
              student = self.new
              student.name = name
              student
          end

          # initialize is called automatically
          # when an instance is created"
          def initialize
            self.grades = Array.new
          end

          def to_s
            # string interpolation
            "#{name} (average=#{self.average})"
          end

          def add( grade )
            grades.push( grade )
          end

          def average
            # list comprehension with closures
            total = grades.inject(0){ |sum, grade| sum + grade }
            total / grades.length
          end

          # ? is a coding convention for method returning boolean
          def award?
            # another list comprehension with closures
            grades.all? { |grade| grade == 6 }
          end

        end

      end