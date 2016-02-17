require "./lib/semester.rb"
require "minitest/autorun"

class TestSemester < Minitest::Test
    
  def test_semester_array_end
    assert_equal(Semester.new.next_semesters("Fall2015",-1).last.to_s,"<u><b>STARTING SEMESTER: FALL 2015</b></u>")
    assert_equal(Semester.new.next_semesters("Fall2015",0).last.to_s,"<u><b>STARTING SEMESTER: FALL 2015</b></u>")
    assert_equal(Semester.new.next_semesters("Fall2015",1).last.to_s,"SPRING 2016")
    assert_equal(Semester.new.next_semesters("Fall2015",2).last.to_s,"SUMMER 2016")
  end
  
  def test_semester_array_length
    assert_equal(Semester.new.next_semesters("Fall2015",-1).length,1)
    assert_equal(Semester.new.next_semesters("Fall2015",0).length,1)
    assert_equal(Semester.new.next_semesters("Fall2015",1).length,2)
    assert_equal(Semester.new.next_semesters("Fall2015",2).length,3)
  end
  
  def test_advance_semester
    assert_equal(Semester.new.advance_semester("Fall2015"),"SPRING 2016")
    assert_equal(Semester.new.advance_semester("Spring2016"),"SUMMER 2016")
    assert_equal(Semester.new.advance_semester("Summer2016"),"FALL 2016")
    assert_equal(Semester.new.advance_semester("Fall2016"),"SPRING 2017")
  end 

end
