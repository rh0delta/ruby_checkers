class Grid

  def initialize(board = Hash.new, end_row, end_column)
    @board = board
    @end_row = end_row
    @end_column = end_column
  end

  def create_board
    letters = ('a'..@end_row).to_a
    numbers = (1..@end_column).to_a
    # puts letters.inspect
    # puts numbers.inspect
    middle = (letters[2]..letters[-3]).partition {|v| letters.index(v).even?}
    even = middle[0]
    odd = middle[1]
    letters.each do |letter|
      numbers.each do |i|
        if i % 2 == 0 && letter.match(/a/)
          @board["#{letter}#{i}"] = "b |"
        elsif i % 2 != 0 && letter.match(/b/)
          @board["#{letter}#{i}"] = "b |"
        elsif i % 2 == 0 && letter.match(letters.last(2)[0])
          @board["#{letter}#{i}"] = "w |"
        elsif i % 2 != 0 && letter.match(letters.last(2)[1])
          @board["#{letter}#{i}"] = "w |"
        elsif i % 2 != 0 && odd.include?(letter)
          @board["#{letter}#{i}"] = "  |"
        elsif i % 2 == 0 && even.include?(letter)
          @board["#{letter}#{i}"] = "  |"
        else
          @board["#{letter}#{i}"] = "  |"
        end
        print @board["#{letter}#{i}"]
      end
      puts
    end
  end
end
