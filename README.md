# GuessTheNumber - Number Guessing Game

GuessTheNumber is a simple and fun number guessing game developed using Swift and SwiftUI. The app selects a random number between 1 and 1000, and the player's goal is to find this number with as few guesses as possible.

<p align="center">
  <img src="/api/placeholder/300/600" alt="GuessTheNumber App Screenshot" />
</p>

## Features

- Random number generation between 1 and 1000
- User-friendly interface
- Instant feedback (whether guesses are too high or too low)
- Guess count tracking
- Congratulation message upon game completion
- Easy restart option

## Requirements

- iOS 15.0 or later
- Xcode 13.0 or later
- Swift 5.5 or later

## Installation

1. Clone this repository:
   ```bash
   git clone https://github.com/yourusername/GuessTheNumber.git
   ```

2. Open the project in Xcode:
   ```bash
   cd GuessTheNumber
   open GuessTheNumber.xcodeproj
   ```

3. Build and run the project:
   - Click the ▶️ (Play) button in Xcode
   - Or use the keyboard shortcut ⌘+R

## How to Play

1. When the app opens, think of a number between 1 and 1000.
2. Enter your guess in the text field.
3. Tap the "Guess" button.
4. The app will provide feedback on whether your guess is higher or lower than the correct number.
5. Make new guesses based on the feedback.
6. When you find the correct number, you'll be shown how many guesses it took.
7. Tap "New Game" to play again.

## Code Structure

The app is structured in a single `ContentView.swift` file and contains the following main components:

- `targetNumber`: The randomly selected number that the user is trying to guess
- `currentGuess`: The user's current guess
- `feedback`: The feedback message provided to the user
- `guessCount`: The number of guesses made by the user
- `checkGuess()`: The function that checks the user's guess
- `resetGame()`: The function that resets the game

## Customization

You can customize the app by making the following changes:

1. To change the number range:
   ```swift
   @State private var targetNumber = Int.random(in: 1...1000) // You can modify the range
   ```

2. To change colors:
   ```swift
   .background(Color.blue) // You can use any color you prefer
   ```

3. To change text:
   ```swift
   Text("Number Guessing Game") // You can change the title
   ```

## Contributing

1. Fork this repository
2. Create your feature branch: `git checkout -b new-feature`
3. Commit your changes: `git commit -m 'Added a new feature'`
4. Push to the branch: `git push origin new-feature`
5. Create a Pull Request

## License

This project is licensed under the MIT License. See the `LICENSE` file for more information.

## Contact

For questions or feedback, please reach out via [GitHub Issues](https://github.com/yourusername/GuessTheNumber/issues).

---

Developer: [Your Name]  
Date: [Development Date]

*Note: This is a learning project designed as an example for those who want to learn Swift/SwiftUI.*
