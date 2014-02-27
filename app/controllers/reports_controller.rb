class ReportsController < ApplicationController
  def index
    clas = Claass.first
    sect = Section.where(:claasses_id => clas.id)
    stud = Student.first
    @single_student = []
    @ass = []
    @section = []
    @marks = []
    @all_student =[]
    Assessment.all.each do |ass|
      res = Result.where(:student_id => stud.id, :assessment_id => ass.id).first
      if res
        @single_student.push(res.percentage)
        @ass.push(ass.assessment_name)
      end
    end
    sect.each do |sec|
      @section.push(sec.section_name)
      Assessment.all.each do |ass|
        res = Result.average(:percentage, :conditions => ["section_id = ? and assessment_id = ?", sec.id, ass.id])
        if res
          @marks.push(res.to_i)
        end
      end
    end
    #total class
    Assessment.all.each do |ass|
      total_mark  = 0
      sect.each do |se|
        res = Result.average(:percentage, :conditions => ["section_id = ? and assessment_id = ?", se.id, ass.id])
        if res
          total_mark = total_mark + res.to_i
        end
      end
      @all_student.push(total_mark)
    end
  end
end
