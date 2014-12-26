FactoryGirl.define do
  factory :player do
    name "Joe"

    factory :player_with_one_turn do
      after(:create) do |player|
        create(:turn, player: player)
      end
    end
  end

  factory :p1 do
    name "Blah"
  end
end