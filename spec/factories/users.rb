FactoryBot.define do
  factory :user do
    transient do
      person { Gimei.name }
    end
    name                  { person.last.kanji }
    email                 { Faker::Internet.free_email }
    password              { Faker::Lorem.characters(number: 6, min_alpha: 1, min_numeric: 1) }
    password_confirmation { password }
    name_kana             { person.last.katakana }
    area_id               { Faker::Number.between(from: 2, to: 9) }
  end
end