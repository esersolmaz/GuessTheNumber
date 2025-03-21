import SwiftUI

struct ContentView: View {
    @State private var targetNumber = Int.random(in: 1...1000)
    @State private var currentGuess = ""
    @State private var feedback = "1 ile 1000 arasında bir sayı tahmin edin!"
    @State private var guessCount = 0
    @State private var gameOver = false
    @State private var showAlert = false
    
    var body: some View {
        VStack(spacing: 20) {
            Text("Sayı Tahmin Oyunu")
                .font(.largeTitle)
                .fontWeight(.bold)
                .padding(.top, 30)
            
            Text(feedback)
                .font(.title2)
                .multilineTextAlignment(.center)
                .padding()
                .frame(height: 80)
            
            TextField("Tahmininizi girin", text: $currentGuess)
                .keyboardType(.numberPad)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding(.horizontal)
                .disabled(gameOver)
            
            Button(action: {
                checkGuess()
            }) {
                Text("Tahmin Et")
                    .font(.title3)
                    .fontWeight(.semibold)
                    .foregroundColor(.white)
                    .padding()
                    .frame(width: 200)
                    .background(gameOver ? Color.gray : Color.blue)
                    .cornerRadius(10)
            }
            .disabled(gameOver)
            
            if gameOver {
                Button(action: {
                    resetGame()
                }) {
                    Text("Yeni Oyun")
                        .font(.title3)
                        .fontWeight(.semibold)
                        .foregroundColor(.white)
                        .padding()
                        .frame(width: 200)
                        .background(Color.green)
                        .cornerRadius(10)
                }
            }
            
            Spacer()
        }
        .padding()
        .alert(isPresented: $showAlert) {
            Alert(
                title: Text("Tebrikler!"),
                message: Text("Doğru sayıyı \(guessCount) tahminde buldunuz!"),
                dismissButton: .default(Text("Yeni Oyun")) {
                    resetGame()
                }
            )
        }
    }
    
    func checkGuess() {
        guard let guess = Int(currentGuess) else {
            feedback = "Lütfen geçerli bir sayı girin!"
            return
        }
        
        guessCount += 1
        
        if guess < targetNumber {
            feedback = "Daha yüksek bir sayı deneyin!"
        } else if guess > targetNumber {
            feedback = "Daha düşük bir sayı deneyin!"
        } else {
            feedback = "Tebrikler! Doğru sayıyı \(guessCount) tahminde buldunuz!"
            gameOver = true
            showAlert = true
        }
        
        currentGuess = ""
    }
    
    func resetGame() {
        targetNumber = Int.random(in: 1...100)
        currentGuess = ""
        feedback = "1 ile 100 arasında bir sayı tahmin edin!"
        guessCount = 0
        gameOver = false
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
