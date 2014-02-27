require 'database_cleaner'
namespace :db do
  desc "Setup data for demo"
  task demo_setup: :environment do
    DatabaseCleaner.clean_with :truncation
    DatabaseCleaner.clean
    puts "Creating Classes and Sections"
    (7..8).each do |number|
      claas = Claass.create!(class_name: "#{number}")
      ('A'..'B').each do |sec|
        Section.create!(claasses_id: claas.id ,section_name: "#{sec}" )
      end
    end
    puts "Creating Students for Sections"
    Section.all.each do |sec|
      ('X'..'Y').each do |student|
        Student.create!(sections_id: sec.id, student_name: "Student#{student}")
      end
    end
    puts "Creating Assessments"
    Assessment.create! assessment_name: 'FA1'
    Assessment.create! assessment_name: 'FA2'
    Assessment.create! assessment_name: 'SA1'

    puts "Creating Results for Assessments"
    percentage = [45, 50, 48, 70, 63, 68, 76, 84, 80, 73, 67, 64, 93, 81]
    Assessment.all.each do |ass|
      Student.all.each do |stud|
          Result.create!(assessment_id: ass.id, student_id: stud.id, percentage: percentage.sample)
      end
    end
  end
end
