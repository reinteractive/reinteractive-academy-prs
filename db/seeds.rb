require 'faker'

puts 'Cleanup started...'
Staff.delete_all
Idea.delete_all
Customer.delete_all
Status.delete_all
Category.delete_all
IdeaStatus.delete_all
puts 'Cleanup done!'

puts 'Adding categories...'
Category.create!(name: 'Feature Requests')
Category.create!(name: 'Bugs')
puts 'Categories done!'

puts 'Adding statuses...'
Status.create!(stage: 'Planned')
Status.create!(stage: 'Released')
Status.create!(stage: 'Awaiting Feedback')
Status.create!(stage: 'Building')
Status.create!(stage: 'Under Review')
Status.create!(stage: 'Released')
puts 'Statuses done!'

puts 'Adding ideas...'
5.times do |number|
  idea = Idea.create(
    title: "Item ##{number}",
    description: Faker::Company.catch_phrase
  )

  puts 'Adding customers to idea...'
  3.times do
    idea.customers.create!(name: Faker::Name.first_name,
                          email: Faker::Internet.free_email)
  end
  puts 'Customers done!'

  puts 'Adding statuses to an idea...'
  idea.idea_statuses.create!(status: Status.order('RANDOM()').first)
  puts 'Statuses done!'
end
puts 'Ideas done!'

puts 'Adding staff...'

  5.times do |staff|
    staff = Staff.create!(name: Faker::Name.first_name,
                          first_name: Faker::Name.first_name,
                          email: Faker::Internet.free_email)
  end 

 
puts 'Staff done!'






# 5.times do
#  customer = Customer.create!(name: Faker::Name.first_name,
#                              feedback: Faker::Company.catch_phrase)
# end 

# 5.times do
#   idea = Idea.create!(title: Faker::Company.catch_phrase,
#                       description:  Faker::Company.catch_phrase)
  # 5.times do
  #   idea = Idea.create!(title: Faker::Company.catch_phrase,
  #                       description:  Faker::Company.catch_phrase)
  #   5.times do
  #     idea.customers.create!(
  #                   name: Faker::Name.first_name,
  #                   feedback: Faker::Company.catch_phrase)
  #                   # email: Faker::Internet.free_email,
  #                   # password: 'hello123',
  #                   # sign_in_count: Faker::Number.number(2),
  #                   # current_sign_in_at: Faker::Time.between(2.days.ago, Time.now),
  #                   # last_sign_in_at: Faker::Time.between(2.days.ago, Time.now),
  #                   # current_sign_in_ip:Faker::Internet.ip_v4_address,
  #                   # last_sign_in_ip:Faker::Internet.ip_v4_address,
  #                   # invitations_count: (rand(9)+1).to_i,
  #                   # invitation_sent_at: Faker::Date.between(200.days.ago, Date.today),
  #                   # invitation_accepted_at: Faker::Date.between(200.days.ago, Date.today))
  #                   puts 'completed Ideas"
  #   end
  #     idea.statuses.create!(stage: :planned)
  #     idea.statuses.create!(stage: :release)
  #     idea.statuses.create!(stage: :building) 
  # end

  

  


# 5.times do 
#   Status.create!(stage: :planned)
#   Status.create!(stage: :release)
#   # Status.create!(stage: :awaiting_feedback)  
#   # Status.create!(stage: :under_review)
#   Status.create!(stage: :building)
# end

# 5.times do 
#   IdeaStatus.create!(idea_id: Idea.order('RANDOM()').first,
#                       status_id: Status.order('RANDOM()').first)
# end

# def random_status
#   Status.order('RANDOM()').first 
# end 


# def random_idea
#   Idea.order('RANDOM()').first.id
# end


# def random_staff
#   Staff.order('RANDOM()').first.id
# end

# 5.times do |n|
#   Idea.create(title: "Idea ##{n}", status_id: random_status, staff_id: random_staff)
# end

# 5.times do |n|
#   Staff.create(name: "Staff ##{n}", idea_id: random_idea, status_id: random_status)
# end









