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

win_index_1 = WIN_COMBINATIONS[0]
win_index_2 = WIN_COMBINATIONS[1]
win_index_3 = WIN_COMBINATIONS[2]
win_index_4 = WIN_COMBINATIONS[3]
win_index_5 = WIN_COMBINATIONS[4]
win_index_6 = WIN_COMBINATIONS[5]
win_index_7 = WIN_COMBINATIONS[6]
win_index_8 = WIN_COMBINATIONS[7]

position_1 = board[win_index_1]
position_2 = board[win_index_2]
position_3 = board[win_index_3]
position_4 = board[win_index_4]
position_5 = board[win_index_5]
position_6 = board[win_index_6]
position_7 = board[win_index_7]
position_8 = board[win_index_8]


def won?(board)
  WIN_COMBINATIONS.each do |win_combo|
    if check_win_combination?(board, 'X', win_combo)
      return win_combo
  elsif check_win_combination?(board, 'O', win_combo)
    return win_combo
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
