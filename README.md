# bobby-training
testing repo
def print_board(board):
    for row in board:
        print(" | ".join(row))
        print("-" * 9)

def check_winner(board, player):
    # Check rows and columns
    for i in range(3):
        if all(board[i][j] == player for j in range(3)) or all(board[j][i] == player for j in range(3)):
            return True
    # Check diagonals
    if all(board[i][i] == player for i in range(3)) or all(board[i][2 - i] == player for i in range(3)):
        return True
    return False

def is_full(board):
    return all(cell != " " for row in board for cell in row)

def tic_tac_toe():
    board = [[" " for _ in range(3)] for _ in range(3)]
    players = ["X", "O"]
    
    print("Welcome to Tic Tac Toe!")
    print_board(board)
    
    for turn in range(9):
        player = players[turn % 2]
        while True:
            try:
                row, col = map(int, input(f"Player {player}, enter row and column (0-2): ").split())
                if board[row][col] == " ":
                    board[row][col] = player
                    break
                else:
                    print("Cell is already occupied! Try again.")
            except (ValueError, IndexError):
                print("Invalid input! Enter row and column as two numbers between 0 and 2.")
        
        print_board(board)
        
        if check_winner(board, player):
            print(f"Player {player} wins!")
            return
        
        if is_full(board):
            print("It's a draw!")
            return
    
    print("It's a draw!")

tic_tac_toe()
