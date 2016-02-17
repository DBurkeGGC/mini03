class Semester
  
  def next_semesters(current,num)
    current = current.to_s.upcase.gsub(/\s*[0-9]*/,'') + " " + \
      current.to_s.gsub(/\s*[a-zA-Z]*/,'')
    semesterTable = Array.new
    semesterTable << ("<u><b>STARTING SEMESTER: " + current + "</b></u>")
    for x in 1..num.to_i
      current = advance_semester(current)
      semesterTable << current
    end
    return semesterTable
  end
  
  def advance_semester(current)
    semester = current.upcase.gsub(/\s*[0-9]*/,'')
    year = current.gsub(/\s*[a-zA-Z]*/,'').to_i
    semester == "SPRING" ? semester = "SUMMER" : \
    semester == "SUMMER" ? semester = "FALL" : \
    semester == "FALL" ? (semester = "SPRING" ; year += 1) : \
    (semester = "N/A" ; year = 0)
    return (semester + " " + year.to_s)
  end
  
end