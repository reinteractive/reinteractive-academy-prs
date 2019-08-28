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

puts 'Adding Customers...'
5.times do |customer|
  customer = Customer.create(
  name: Faker::Name.first_name,
  feedback: Faker::GreekPhilosophers.quote,
  
  email: Faker::Internet.free_email)
 end
  puts 'Customers Done'


puts 'Adding Feedback...'
5.times do |feedback|
  feedback = Feedback.create!(description: Faker::Company.catch_phrase)
  puts 'Adding feedbacks to idea...'
  feedback.ideas.create!(description: Idea.order('RANDOM()').first)
  puts 'Feedbacks to ideas done!'
  puts 'Adding feedback to customer...' 
  feedback.customer = Customer.order('RANDOM()').first
  feedback.save
end
  puts 'Feedback to customer done!'



 puts 'Adding ideas...'
 5.times do |number|
   idea = Idea.create(
     title: "Item ##{number}",
     description: Faker::Company.catch_phrase
   )
   puts 'Adding customers to idea...'
   3.times do
     idea.customers.create!(name: Customer.order('RANDOM()').first)
   end
   puts 'Customers done!'

    puts 'Adding categores to idea...'
    3.times do
      idea.categories.create!(name: Faker::Name.first_name)
    end
    puts 'Categories to idea done!'

    puts 'Adding statuses to idea...'
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


 

  # puts 'Adding feedbacks to customer...'
  #     feedback.customer.create!(name: Customer.order('RANDOM()'), customer_id: customer.id)
  #   puts 'Feedbacks to customers done!'


  # customer.each_with_index do |obj, index|
  #   Feedback.create!([{ feedback_id: Customer.order('RANDOM()'), :customer_id => obj.id }])
  # end


  


