require "spec_helper"
require "./day2.rb"

RSpec.describe Day2 do
  describe ".calculate_checksum" do
    let(:data) do
      [
        [5, 1, 9, 5],
        [7, 5, 3],
        [2, 4, 6, 8],
      ]
    end

    it "returns a checksum" do
      expect(Day2.calculate_checksum(data)).to eq 18
    end
  end

  describe ".calculate_checksum_part_two" do
    let(:data) do
      [
        [5, 9, 2, 8],
        [9, 4, 7, 3],
        [3, 8, 6, 5],
      ]
    end

    it "returns a checksum" do
      expect(Day2.calculate_checksum_part_two(data)).to eq 9
    end
  end
end
