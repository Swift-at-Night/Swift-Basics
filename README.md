# Swift-Basics

## 라이브러리 가져오기 (Import library)
라이브러리는 특정 명령 수행에 필요한 함수들을 모아놓은 상자 (📦) 입니다.
`UIKit`은 `UIView`, `UIButton`, `UILabel`, `UIImage` 등 UI 요소르 그려나가는데 필요한 것들으 제공하는 라이브러리 입니다.

```swift
import UIKit
```

## 주석 (Comment)
주석에는 `//` 또는 `/* ... */` 를 사용합니다. `// MARK:` 를 사용하면 문단을 나눌 수 있습니다.

```swift
// 주석
/*
 어떤 문구
 */

// MARK: - 선으로 문단 나누기
// MARK: 선없이 문단 나누기
```

## 변수와 상수 (Property: Variables & Constants)
(변수 종류) (변수 이름) (변수 타입 또는 변수의 값) 순으로 변수를 선언합니다.
- 변수 종류에는 `let`과 `var` 가 있으며 변하지 않는 값은 `let`을, 변할 여지가 있으면 `var`를 사용합니다.
- 변수 이름은 보통 명사를 사용하며 `Bool` 타입의 경우 변수 이름은 형용사나 be동사를 사용하는 것이 일반적입니다.
- 변수에 초기 값이 할당되어 있으면 Swift는 타입 추론(Type Inference) 기능을 통해 변수의 타입을 명시하지 않아도 타입을 추론할 수 있습니다.

```swift
let birthYear: String = "1996"  // 상수
var age = 23    // 변수, 타입지정
var height: Double // 변수
let isKorean = true   // Bool 타입 변수는 이름으로 형용사나 be동사를 쓰는 것이 일반적
```

타입 간의 사칙연산을 할 때 결과값의 타입도 동일해야합니다.
맞는 예) `String + String = String`, `Int * Int = Int`, `Double / Double = Double`
틀린 예) `Double / Int = Double`

```swift
let birthYear = "1996"
let birthMonth = "Aug"
let birthDay =  "15"

let birth = birth = birthMonth + " " + birthDay + " " + birthYear
// birthMonth + birthDay + birthYear = "Aug151996"
// birthMonth + " " + birthDay + " " + birthYear = "Aug 15 1996"
```

```swift
let population = 5000   // 1. 이 값을 Double로 바꿔주거나
let victim = 1.2

let percentage = victim / Double(population) * 100  // 2. 타입 캐스팅을 사용해 Int 값을 Double 타입으 바꿔주거나. 
// 맨 마지막의 숫자 100은 따로 선언된 변수, 즉 타입이 지정되 값이 아니기 때문에 연산하는 값과 결과값에 맞게 타입이 Int에서 Double로 바뀐다.

print("The result is \(percentage)")    // 값을 문자열로 출력할 때는 큰 따옴표(`"`) 사이에 `\(값)` 형태로 대입하면 된다.
```

### 배열 (Array)
`[원소타입]` 형태의 타입 형태를 갖는다. 각 원소에는 번호가 나열되는데 이를 index 라고 한다. 프로그래밍에서 index는 0부터 시작한다.

```swift
var favorite = ["soccer", "table tennis", "basketball", "swimming"]
favorite.append("baseball") // 원소(여기선 "baseball") 추가하기
print(favorite)             // ["soccer", "table tennis", "basketball", "swimming", "baseball"]
print(favorite.count)       // 원소의 개수: 5 
print(favorite[0])          // 0번 index의 원소: "soccer"
print(favorite[1])          // 1번 index의 원소: "table tennis"
print(favorite[favorite.count - 1]) // 마지막 index (개수 - 1)의 원소: "baseball"
```

## 옵셔널 (Optional)
값이 있을 수도, 없을 수도 있음을 표현하는 타입.
`var optional: Int = 3` 이라는 변수가 선언되었다고 가정하자. 이 변수는 `Int`라는 명확한 타입을 갖기 때문에 반드시 값도 `Int`이어야만 한다. 때문에 `nil`은 `optional`에 할당될 수 없다.
이 변수가 `nil` 값을 할당할 수 있도록 타입을 수정하는 것은 간단하다. 타입 끝에 `?`를 붙여주어 `Optional Int` 라는 새로운 타입으로 지정해주면 된다.

```swift
var optional: Int? = 3
optional = nil
```

이 `optional` 값이 3일 때 출력하면 `Optional(3)` 이라는 출력값이 나온다. 출력값에 `Optional`이 붙은 이유는 타입이 `Int`가 아니라 `Int?` 이기 때문이다. 깔끔하 결과값을 위해 타입을 `Int` 로 되돌리는 방법은 총 3가지가 있다.

### 강제 언래핑 (Force unwrapping)
`!` 를 붙여주면 강제로 그 값을 옵셔널이 해지된 타입의 값으로 변경한다. 이는 값이 무조건 존재한다는 확신이 있을 때만 사용해야하며 만약 언래핑하려는 값이 `nil`일 경우 심각한 에러를 초래한다.
```swift
print(optional!)
```

### if let
`if let` 구문은 활용하여 값이 있을 경우에 대한 처리를 할 수 있다.

```swift
if let notOptional = optional {   // optional값이 nil이 아니라면 그걸 notOptional 이라고 할 때(let) 
    print(notOptional)            // notOptional 를 출력
}
```

### guard let
`guard let ~ else { return }` 구문을 활용하여 값이 존재하지 않을 때 빠르게 리턴하고 값이 있는 경우만 관리할 수 있다. `guard ~ else { return }` 구문은 원하는 조건을 만족하지 못하면 불필요한 행동을 막고 즉각적인 리턴을 한다.

```swift
guard let notOptional = optional else { return }  // optional이 값이 있다면 그걸 notOptional 이라고 하고 아니면 즉각 리턴한다
print(notOptional)                                // notOptional 출력
```
