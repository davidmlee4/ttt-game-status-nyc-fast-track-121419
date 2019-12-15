# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0,1,2],
  [3,4,5],
  [6,7,8],
  [0,3,6],
  [1,4,7],
  [2,5,8],
  [0,4,8],
  [2,4,6]]


def won?(board)
  WIN_COMBINATIONS.each do |combo_arr|
    #combo_arr = [0,1,2]
    first_index = combo_arr[0] #0
    second_index = combo_arr[1] #1
    third_index = combo_arr[2] #2

    the_symbol_at_1 = board_array[first_index]
    the_symbol_at_2 = board_array[second_index]
    the_symbol_at_3 = board_array[third_index]

    if the_symbol_at_1 == the_symbol_at_2 && the_symbol_at_2 == the_symbol_at_3 && the_symbol_at_1 != " "
      return combo_arr
    end
  end


  return false


end




def full?(board)
  if board.include? ('') || board.include? (' ')
    return false
  else
    return true
  end
end

def draw?(board)
  if !won? && full?(board)
    return true
  end
end

def over?(board)
  if draw?(board)
    return true
  elsif full?(board)
    return full?(board)
  end
end
