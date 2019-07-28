require 'faker'

Staff.delete_all
Customer.delete_all
Idea.delete_all
Status.delete_all

2.times do
  customer = Customer.create!(name: Faker::Name.first_name,
                              feedback: Faker::Company.catch_phrase)
2.times do
  idea = Idea.create!(title: Faker::Company.catch_phrase,
                      customer_id: customer.id)
                                # email: Faker::Internet.free_email,
                                # password: 'hello123',
                                # bio: Faker::Company.catch_phrase,
                                # sign_in_count: Faker::Number.number(2),
                                # current_sign_in_at: Faker::Time.between(2.days.ago, Time.now),
                                # last_sign_in_at: Faker::Time.between(2.days.ago, Time.now),
                                # current_sign_in_ip:Faker::Internet.ip_v4_address,
                                # last_sign_in_ip:Faker::Internet.ip_v4_address,
                                # invitations_count: (rand(9)+1).to_i,
                                # invitation_sent_at: Faker::Date.between(200.days.ago, Date.today),
                                # invitation_accepted_at: Faker::Date.between(200.days.ago, Date.today))

2.times do
  staff = Staff.create!(name: Faker::Name.first_name,
                        idea_id: idea.id)
5.times do |n|
  Status.create(title: "Idea ##{n}", status_id: random_status)


def random_status
  Status.order('RANDOM()').first
end

5.times do |n|
  Idea.create(title: "Idea ##{n}", status_id: random_status)


        end          
     end
   end
end


