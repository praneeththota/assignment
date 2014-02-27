require 'database_cleaner'
namespace :db do
  desc "Setup data for demo"
  task demo_setup: :environment do
    DatabaseCleaner.clean_with :truncation
    DatabaseCleaner.clean
    puts "Creating Classes and Sections"
    clas = Claass.create!(class_name: "9")
      ('A'..'B').each do |sec|
        Section.create!(claasses_id: clas.id ,section_name: "#{sec}" )
      end

    puts "Creating Students for Sections"
    s1 = Section.first
    (1..4).each do |student|
        Student.create!(sections_id: s1.id, student_name: "Student#{student}")
    end
    s2 = Section.last
    (5..10).each do |student|
      Student.create!(sections_id: s2.id, student_name: "Student#{student}")
    end
    #s4 = Section.last
    #(11..20).each do |student|
    #  Student.create!(sections_id: s4.id, student_name: "Student#{student}")
    #end
    puts "Creating Assessments"
    Assessment.create! assessment_name: 'FA1'
    Assessment.create! assessment_name: 'FA2'
    Assessment.create! assessment_name: 'SA1'

    puts "Creating Results for Assessments"
    percentage = [45, 50, 48, 70, 63, 68, 76, 84, 80, 73, 67, 64, 93, 81]
    Assessment.all.each do |ass|
      Student.all.each do |stud|
          Result.create!(assessment_id: ass.id, section_id: stud.sections_id, student_id: stud.id, percentage: percentage.sample)
      end
    end
  end
end
