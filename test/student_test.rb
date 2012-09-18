      require 'test/unit'
      require 'app/university/student'

      # syntax for inheritance
      class StudentTest < Test::Unit::TestCase

        def test_award
          student = University::Student.named( 'John')
          student.add(6)
          assert( student.award?, 'Student deserves an award')
        end

        def test_description
          student = University::Student.named( 'John')
          student.add(6)
          assert( student.to_s.include?('John'), 'Student name is incorrect')
          assert( student.to_s.include?('6'), 'Student average is incorrect')
        end

      end