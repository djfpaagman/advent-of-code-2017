class Day2
  def self.from_file(filename)
    file = File.read(filename)

    file.split("\n").map do |row|
      row.split("\t").map(&:to_i)
    end
  end

  def self.calculate_checksum(rows = [])
    rows.map do |row|
      row.max - row.min
    end.sum
  end

  def self.calculate_checksum_part_two(rows = [])
    rows.map do |row|
      result = 0

      row.map do |char|
        other_chars = row - [char]

        other_chars.each do |other_char|
         if char % other_char == 0
            result = char / other_char
         end
        end
      end

      result
    end.sum
  end
end

rows = Day2.from_file("day2.txt")
puts Day2.calculate_checksum_part_two(rows)
