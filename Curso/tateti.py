def mostrar_tablero(tablero):
    clear_output()
    for index, cont in enumerate(tablero):
        if index in [0,3,6]:
            print("\n",end='|')
            print(cont,end='|')
        else:
            print (cont,end='|')
        
    
def player_input(player):
    pos = 0
    while pos not in range(1,9):
        mostrar_tablero(test_board)
        pos = int(input("{}, introduce la posicion del 1 al 9 : ".format(player)))
        marcar(test_board,pos,player1)
    
def marcar(tablero, pos, marca):
    tablero[pos-1]= marca
    mostrar_tablero(tablero)
    
def checkwin(board, mark):
    return ((board[6] == mark and board[7] == mark and board[8] == mark) or # across the top
    (board[3] == mark and board[4] == mark and board[5] == mark) or # across the middle
    (board[0] == mark and board[1] == mark and board[2] == mark) or # across the bottom
    (board[6] == mark and board[3] == mark and board[0] == mark) or # down the middle
    (board[7] == mark and board[4] == mark and board[1] == mark) or # down the middle
    (board[8] == mark and board[5] == mark and board[2] == mark) or # down the right side
    (board[6] == mark and board[4] == mark and board[2] == mark) or # diagonal
    (board[8] == mark and board[4] == mark and board[0] == mark)) # diagonal
    


    
    
def game_on():
    pass
    
def replay():
    respuesta=input("jugas de nuevo?")
    if respuesta.lower()== "si":
        return True
    elif respuesta.lower()== "no":
        return False
    else:
        print("pusiste cualquiera chau")
        return False
    

from IPython.display import clear_output

player2 ="O"
player1 ="X"
#player2 =input("nombre de jugador 2, usa O")
test_board = ['1','2','3','4','5','6','7','8','9']

while True:
    # Set the game up here
    

    while game_on:
        #Player 1 Turn
        mostrar_tablero(test_board)
        player_input(player1)
        if checkwin(test_board,player1):
            print("gano {}".format(player1))
            replay()
        
        
        # Player2's turn.
        mostrar_tablero(test_board)
        player_input(player2)
        if checkwin(test_board,player2):
            print("gano {}".format(player2))
            replay()
            

    if not replay():
        break