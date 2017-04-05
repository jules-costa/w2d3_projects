class Array
  def two_sum
    raise 'I only sum integer' unless all? { |el| el.is_a? Integer }

    zero_pairs = []

    each_with_index do |el1, idx1|
      each_with_index do |el2, idx2|
        zero_pairs << [idx1, idx2] if el1 + el2 == 0 && idx1 < idx2
      end
    end

    zero_pairs
  end
end
