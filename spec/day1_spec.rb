require "spec_helper"
require "./day1.rb"

RSpec.describe Day1 do
  describe "#solve" do
    data = {
       1122 => 3,
       1111 => 4,
       1234 => 0,
       91212129 => 9,
     }

    data.each do |input, output|
      it "returns #{output} for #{input}" do
        expect(Day1.solve(input)).to eq output
      end
    end
  end

  describe "#solve_part2" do
    data = {
      1212 => 6,
      1221 => 0,
      123425 => 4,
      123123 => 12,
      12131415 => 4,
     }

    data.each do |input, output|
      it "returns #{output} for #{input}" do
        expect(Day1.solve_part2(input)).to eq output
      end
    end

  end
end
