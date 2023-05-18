
import Foundation

func countingLettersVowelsConsonantsWords(in string: String) -> (Int, Int, Int, Int) {
    let letters = string.lowercased().filter { $0.isLetter }
    let vowels: Array<Character> = ["a", "e", "i", "o", "u"]
    let words = string.split(separator: " ")
    
    let letterCount = letters.count
    let vowelCount = letters.filter { vowels.contains($0) }.count
    let consonantCount = letters.filter { !vowels.contains($0) }.count
    let wordCount = words.count
    
    return (letterCount, vowelCount, consonantCount, wordCount)
}

var myInputString = "DevPoli"
var (letterCount, vowelCount, consonantCount, wordCount) = countingLettersVowelsConsonantsWords(in: myInputString)

print(myInputString)
print("\(letterCount) letras")
print("\(vowelCount) vogais")
print("\(consonantCount) consoantes")
print("\(wordCount) palavras\n")

var myInputString2 = "Eu gosto de desenvolver em Swift"
(letterCount, vowelCount, consonantCount, wordCount) = countingLettersVowelsConsonantsWords(in: myInputString2)

print(myInputString2)
print("\(letterCount) letras")
print("\(vowelCount) vogais")
print("\(consonantCount) consoantes")
print("\(wordCount) palavras\n")






