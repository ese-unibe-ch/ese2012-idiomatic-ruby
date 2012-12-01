      require 'test/unit'

      def relative path
        File.join(File.dirname(__FILE__), path)
      end
      require relative('../app/university/student')

      # syntax for inheritance
      class StudentTest < Test::Unit::TestCase

        def setup
          @student = University::Student.named('John')
        end

        def test_award
          @student.add(6)
          assert(@student.award?, 'Student deserves an award')
        end

        def test_description
          @student.add(6)
          assert(@student.to_s.include?('John'), 'Student name is incorrect')
          assert(@student.to_s.include?('6'), 'Student average is incorrect')
        end

        def test_average
          @student.add(3)
          @student.add(5)
          assert(@student.average.to_s.include?('4'), 'Student average is incorrectly calculated')
        end

      end

