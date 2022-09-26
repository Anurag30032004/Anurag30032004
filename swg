import random
list = ["S","G","W"]
total_chances = 10
#chances = 0
i = 0
#pts to human
h = 0
# pts to computer
c = 0
print("*** Snake Water & Gun Game ***")
condition = 1
while condition == 1:
    while i < 10:
        choose = input("Choose your turn\n'S' for snake\n'W' for water\n'G' for gun\n")
        a = choose.capitalize()
        print("Your choice is", a)
        if a not in list:
            print("your input is wrong."
                  "Enter a valid input")
        else:
            choice = random.choice(list)
            b = choice
            print("The computer choice is", b,"\n")

            if a == b:
                print("TIE")
                print(h, "points to player\n", c, "points to computer\n")
                i = i + 1
            elif a == "W" and b == "G":
                print("You win this round as the gun sank in water\n\t\t+ 1 pts to the player")
                h = h + 1
                print(h, "points to player\n", c, "points to computer\n")
                i = i + 1
            elif a == "S" and b == "W":
                print("You win this round as the snake drank the water\n\t\t+ 1 pts to the player")
                h = h + 1
                print(h, "points to player\n", c, "points to computer\n")
                i = i + 1
            elif a == "G" and b == "S":
                print("You win this round as the snake was shot by the gun\n\t\t+ 1 pts to the player")
                h = h + 1
                print(h, "points to player\n", c, "points to computer\n")
                i = i + 1
            else:
                print("the computer won this round\n\t\t+ 1 pts to the computer")
                c = c + 1
                print(h, "points to player\n", c, "points to computer\n")
                i = i + 1
    if h > c:
        print("Hurray! You won the Game\n")
    elif h == c:
        print("TIE!!\n")
    else:
        print("Oops! You lost the game\nPLAY AGAIN\n")
    if total_chances == i:
        print("GAME OVER\nPLAY AGAIN\n")
    else:
        print("QUIT\nPLAY AGAIN\n")

    condition = int(input("Do You want to play again\n1.Yes or 2.No\n"))
