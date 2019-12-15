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
    combo_arr
    if combo_arr == "X" || combo_arr == "O"
      return combo_arr
    else
      return false
    end
end

def check_win_combination?(board, player, win_combo)
  win_combo.all? do |position|
    board[position] == player
  end
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
