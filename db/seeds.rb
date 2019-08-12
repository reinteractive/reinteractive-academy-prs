require 'faker'

Staff.delete_all
Idea.delete_all
Customer.delete_all
Status.delete_all
Category.delete_all


2.times do
  category = Category.create!(name: Faker::Lorem.words(4))
end

5.times do
  customer = Customer.create!(name: Faker::Name.first_name,
                              feedback: Faker::Company.catch_phrase)
end 



5.times do
  idea = Idea.create!(title: Faker::Company.catch_phrase,
                      description:  Faker::Company.catch_phrase)
                                # email: Faker::Internet.free_email,
                                # password: 'hello123',
                                # sign_in_count: Faker::Number.number(2),
                                # current_sign_in_at: Faker::Time.between(2.days.ago, Time.now),
                                # last_sign_in_at: Faker::Time.between(2.days.ago, Time.now),
                                # current_sign_in_ip:Faker::Internet.ip_v4_address,
                                # last_sign_in_ip:Faker::Internet.ip_v4_address,
                                # invitations_count: (rand(9)+1).to_i,
                                # invitation_sent_at: Faker::Date.between(200.days.ago, Date.today),
                                # invitation_accepted_at: Faker::Date.between(200.days.ago, Date.today))
end





5.times do 
  Status.create!(stage: :planned)
  Status.create!(stage: :release)
  # Status.create!(stage: :awaiting_feedback)  
  # Status.create!(stage: :under_review)
  Status.create!(stage: :building)
end

5.times do 
  IdeaStatus.create!(idea: Idea.order('RANDOM()').first,
                      status: Status.order('RANDOM()').first)
end

 
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




# 5.times do
#   staff = Staff.create!(name: Faker::Name.first_name,
#                         last_name: Faker::Name.last_name,
#                         email: Faker::Internet.free_email,
#                         idea_id: random_idea)
# end


# 5.times do |n|
#   Staff.create(name: "Staff ##{n}", idea_id: random_idea, status_id: random_status)
# end









