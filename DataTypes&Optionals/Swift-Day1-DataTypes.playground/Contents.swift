import UIKit

// UIView, UIButton, UILabel

var str = "Hello, playground"
// 변수 선언(var, let): property
// 변수 이름: 명사를 사용 (boolean: 형용사)
// 변수 타입 또는 변수의 값: 타입 추론: Type Inference

// 주석: comment
/*
 어떤문구
 */
// MARK: - 선으로 문단 나누기
// MARK: 문단 나누기

/// 설명입니다.
var xcode = "Xcode"

// MARK: - 변수와 상수
let birthYear = "1996"
let birthMonth = "Aug"
let birthDay =  "15"
var age = 23

// 이름으로 Property 만들기
let name: String = "이재성"
var height = 170.0

let isKorean: Bool = true

// Int + Int = Int
// String + String = String
// 인풋과 아웃풋의 타입이 동일
let birth = birthMonth + " " + birthDay + " " + birthYear
// birthMonth + birthDay + birthYear = "Aug151996"
// birthMonth + " " + birthDay + " " + birthYear = "Aug 15 1996"

// "I was born in ~~~~"
print("I was born in \(birth)")

let population = 5000
let victim = 1.2

let percentage = victim / Double(population) * 100  // unit: %

print("The result is \(percentage)")

// 배열: Array
// [Type]
// index: 0, 1, 2
var favorite = ["soccer", "table tennis", "basketball", "swimming"]
favorite.append("baseball")
print(favorite)
print(favorite.count)
print(favorite[1])
print(favorite[4])
print(favorite[favorite.count - 1])
print(favorite.firstIndex(of: "swimming")!)

// MARK: - Optional
// 값이 있을 수도 없을 수도 있다
var index: Int? = 3
index = nil
index = 3

// 1.force unwrapping
print(index!)

// 2. if let
if let unwrappedIndex = index {
    print(unwrappedIndex)
}

// 3. guard let ~ else { return }
// Golden path. 원하는 조건을 만족하지 못하면 바로 리턴!
guard let unwrappedIndex = index else { return "no index" }
print(unwrappedIndex)
