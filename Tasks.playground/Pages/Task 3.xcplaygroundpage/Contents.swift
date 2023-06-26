import Foundation

func countingLetters(text: String) -> [Character: Int] {
  var lettersCount: [Character: Int] = [:]

  let textLowCase = text.lowercased()

  for letter in textLowCase {
    if letter.isLetter {
    lettersCount[letter, default: 0] += 1
    }
  
  }

return lettersCount
}

let myText = "DeSculPe a DEmOra"
let myDictionary = countingLetters(text: myText)
print(myDictionary)
