namespace :generate do
  desc "Generate levels with riddles"
  task levels: :environment do
    num_levels = 3
    num_riddles_per_level = 5

    num_levels.times do |i|
      level = Level.create(title: "Level #{i + 1}", level_int: i + 1)

      num_riddles_per_level.times do |j|
        question = "What has #{j + 1} letters?"
        answer = "Letters"
        is_trap = [true, false].sample

        level.riddles.create(question: question, answer: answer, is_trap: is_trap)
      end
    end

    puts "Generated #{num_levels} levels with #{num_riddles_per_level} riddles each."
  end
end
