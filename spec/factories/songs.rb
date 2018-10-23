
FactoryBot.define do

  factory :song do
    title {"Don't Stop Believin"}
    length { 50 }
    play_count { 100 }
    artist   # this creates a reference
  end

end