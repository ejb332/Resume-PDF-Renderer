# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

skills = ["HTML", "CSS", "Ruby", "Rails", "Git", "C++"]

10.times do
  first_name = Faker::Name.first_name
  last_name = Faker::Name.last_name
  student = Student.create(
    first_name: first_name,
    last_name: last_name,
    email: "#{first_name}.#{last_name}@gmail.com",
    phone_number: Faker::PhoneNumber.phone_number,
    short_bio: Faker::Lorem.paragraph,
    linkedin_url: "linkedin.com/#{last_name}",
    twitter_handle: "@#{first_name}#{last_name}",
    website_url: "#{first_name}#{last_name}.wordpress",
    online_resume_url: Faker::Internet.url,
    github_url: Faker::Internet.url('github.com'),
    photo: Faker::LoremPixel.image,
    )
  5.times do 
    date = Faker::Date.between(20.years.ago, 1.year.ago)
    Experience.create(
      start_date: date,
      end_date: date + 1.year,
      job_title: Faker::Name.title,
      company_name: Faker::Company.name,
      details: Faker::Lorem.paragraph,
      student_id: student.id,
      )
  end
  2.times do 
    Capstone.create(
      name: Faker::Company.catch_phrase,
      description: Faker::Lorem.paragraph,
      url: Faker::Internet.url,
      student_id: student.id,
      )
  end
  3.times do
    Skill.create(
      skill_name: skills.sample,
      student_id: student.id,  
      )
  end
end