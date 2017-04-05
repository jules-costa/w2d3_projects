class Array
  def my_transpose

    raise "Gimme arrays!" if any? { |el| !el.is_a? Array }
    raise "Not a square array" if any? { |arr| arr.count != count }

    transpose
    #
    # transposed = []
    #
    # self.each_index do |idx|
    #   transposed << [self[idx]]
    #   arr.each_with_index do |el, i|
    #     transposed[idx] << arr[i]
    #   end
    # end
    #
    # transposed

  end
end

# p [
#     [0, 1, 2],
#     [3, 4, 5],
#     [6, 7, 8]
#   ].my_transpose
