      require 'test/unit'
      require 'app/university/student'

      # syntax for inheritance
      class StudentTest < Test::Unit::TestCase

        def test_award
          student = University::Student.named( 'John')
          student.add(6)
          assert( student.award?, 'Student deserves an award')
        end

      end