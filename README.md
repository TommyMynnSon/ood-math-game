# TwO-O-Player Math Game

Object Oriented Programming command-line application with Ruby where players take turns to answer simple math addition problems.
<br>

Details:
<br>
- Players start with 3 lives.
- A player loses a life if they get their question wrong while any other player gets their question right in the same turn.
- A player loses no life if they get their question right, every player gets their question right, or every player gets their question wrong in the same turn.
- At the end of every turn, the game outputs the count of each player's lives.
- The game doesn't end until one player is remaining with life.
- When the game ends, the game outputs who won and the count of each player's lives.

## Object Oriented Design (NOT FINAL)

### Extracted Nouns for Classes

- Game
- Question
- Life
- Player
- Turn
- GameAnnouncer

### Roles for each Class

- Game
  - Represents a game.
  - Contains objects and logic from all other classes to drive the command-line application (game loop).
- Question
  - Represents a math addition problem.
  - A new math addition problem is created with each instance.
  - Also calculates and contains the answer to the new math addition problem upon instantiation.
- Life
  - Represents the life of a player.
  - Contains logic for managing the current lives count of a Player object. 
- Player
  - Represents a player.
  - Contains a Life object and basic information for unique identification.
- Turn
  - Represents a turn in the game.
  - Contains a Question object and a container for Player objects.
- GameAnnouncer
  - Class to contain purely class methods for announcing the lives of each player and game state (e.g., game over).

### Methods for each Class

- Game
  - start
- Question
  - what
  - try
- Life
  - decrease
- Player
  - correct
  - incorrect
- Turn
  - ask
