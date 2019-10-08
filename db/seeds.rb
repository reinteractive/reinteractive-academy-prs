require 'faker'

puts 'Cleanup started...'
Staff.delete_all
Customer.delete_all
Idea.delete_all
IdeaCategory.delete_all
Category.delete_all
Status.delete_all
IdeaStatus.delete_all
Feedback.delete_all
AssignedFeedback.delete_all
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


puts 'Adding customers'
5.times do  
customer = Customer.create(
  name: Faker::Name.first_name,
  surname: Faker::Name.last_name,
  email: Faker::Internet.free_email)
end
puts 'Customers done!'


puts 'Adding ideas...'
7.times do |number|
  idea = Idea.create(
    title:  Faker::Commerce.product_name,
    description: Faker::Lorem.paragraph)
    

  puts 'Adding feedback to idea...'
  3.times do
    idea.feedbacks.create!(
      description: Faker::Lorem.paragraph,
      customer_id: Customer.order('RANDOM()').first.id)
  end
  puts 'Feedback to ideas done!'


  # puts 'Adding staffs to idea...'
  # 3.times do
  #   idea.staffs.create!(name: Faker::Name.first_name,
  #       first_name: Faker::Name.first_name,
  #       last_name: Faker::Name.name,
  #       email: Faker::Internet.free_email,
  #       idea_id:            )
  #   end
  puts 'Customers to idea done...'



  puts 'Adding categories to idea...'
  3.times do
    idea.categories.create!(name: Faker::Name.first_name)
  end
  puts 'Categories to idea done!'

  puts 'Adding statuses to idea...'
  3.times do
    idea.idea_statuses.create!(status: Status.order('RANDOM()').first)
    puts 'statuses to idea done!'
  end
   

  puts 'Adding Staff...'
  5.times do |staff|
    staff = Staff.create!(name: Faker::Name.first_name,
                          first_name: Faker::Name.first_name,
                          email: Faker::Internet.free_email)
  end
  puts 'Staff done!'
end




