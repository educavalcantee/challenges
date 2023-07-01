import Foundation

func compactarNumero(valor: Int) -> String {
var numeroCompactado = "0"
var numero = 0.0
  if valor < 0 {
    numeroCompactado = "Tá de sacanagem?"
  } else if valor < 1000 {
    numeroCompactado = String(valor)
  } else if valor < 1000000 {
      numero = Double(valor)/1000.0
      numeroCompactado = String(format: "%0.1fk", numero).replacingOccurrences(of: ".0", with: "")
  } else if valor < 1000000000 {
      numero = Double(valor)/1000000.0
      numeroCompactado = String(format: "%0.1fM", numero).replacingOccurrences(of: ".0", with: "")
  } else {
    numeroCompactado = "Tem mais seguidor do que gente no mundo"
  }
  return numeroCompactado
}
print(compactarNumero(valor: 1234506))
