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


def won?(board_array)
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


def full?(board_array)


  board_array.each do |symbol|
    if symbol == " "
      return false
    end
  end

    return true

end

def draw?(board_array)


  if !won?(board_array) && full?(board_array)
    return true
  else
    return false
  end


end


def over?(board_array)


  if draw?(board_array) || won?(board_array)
    return true
  else
    return false
  end


end

def winner(board)
  if won?(board)
    arr_winning_combination = won?(board)
    index = arr_winning_combination[0]
    return board[index]
  else
    return nil
  end
end
