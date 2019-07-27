require 'faker'

Staff.delete_all
Customer.delete_all
Idea.delete_all

Status.delete_all
# Customer.delete_all
# Feedback.delete_all


                                # last_name: Faker::Name.last_name,
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
                                # invitation_accepted_at: Faker::Date.between(200.days.ago, Date.today)
 
                                
                                
      # staff.(Idea.all[Random.rand(Idea.count)]
      # staff.save!                           
                   

2.times do
  customer = Customer.create!(name: Faker::Name.first_name,
                              feedback: Faker::Company.catch_phrase)
2.times do
  idea = Idea.create!(title: Faker::Company.catch_phrase)
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



  # (rand(0..2)).times do
  #   Status.create!(stage: (rand(0..2)).times do
  #       planned: 0,
  #       release: 1,
  #       building: 2,          
  #       status_id:status.id)


  # (rand(0..2)).times do
  #    Status.create!(name:            Faker::Internet.user_name,
  #                   description:     Faker::Lorem.sentence,
  #                   style:            Faker::Lorem.sentence,
  #                   allocated_capital: (rand(9)+1).to_d)

    #           end
    #         end
    #       end
    #     end
    #   end
    # end
    end
  end
end


