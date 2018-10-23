
FactoryBot.define do

  factory :song do
    # title {"Don't Stop Believin"}
    sequence(:title) { |n| "Song #{n}"}
    # length { 50 }
    sequence(:lenght) { |n| 10*n }
    # play_count { 100 }
    sequence(:play_count) { |n| 100*n }
    artist   # this creates a reference
  end

end
