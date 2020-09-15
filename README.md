# PiratesProblem

There are a number of pirate ships on the sea. Each of these ships has a certain amount of loot. After each day, if any ship has more loot than the ship on its left, the ship is destroyed by the ship to its left.

You are given the initial values of the loot in each of the pirates ships. Print the number of days after which no ship is destroyed, i.e. the time after which there are no ships with more loot than the ship to their left.

 
For example, Loot levels L = [3,6,2,7,5]. Using a 1-indexed array, the first day ships 2 and 4 are destroyed leaving p = [3,2,5]. On the second day, ship 3 of the remaining

Array is destroyed leaving p = [3,2]. As there is no ship with a higher amount of loot than the one to its left, ships stop getting destroyed after day 2.


Program Description:

Write a program in Objective C or Swift which returns an integer representing the number of days until ships stop being destroyed.

Input Format-

Array of integers representing the initial list of ships

Output Format-

Output an integer equal to the number of days after which no ships are destroyed.
