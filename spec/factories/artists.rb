
FactoryBot.define do

  factory :artist do
    name {"Imagine Dragons"}
  end


  # this makes an alias (:band) for artists
  # you can only use this in your tests, like in the context of create(:band)
  # this is nice for readability (kind of) if you're making users referred to as like registered, provider, admin
  # --> it 'can edit for admins'  --> create(:admin)   (as opposed to create(:user))

  factory :band, class: Artist do
    sequence(:name) { |n| "Song #{n}"}

    created_at { |n| n.days.ago }

  end

end
