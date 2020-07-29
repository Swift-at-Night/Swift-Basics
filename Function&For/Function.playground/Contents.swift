import UIKit

var distance: Int = 0


// MARK: - Function
// func 이름() { 구현 }
func moveForward() {
    distance = distance + 1 // distance += 1
}

print(distance)

// 반복하는 동작!
moveForward()
moveForward()
moveForward()

print(distance)

// MARK: for 구문
distance = 0

for _ in 1...3 {    // 1부터 3까지 _ 에 대하여
    // 반복되는 구문이 여기에
    moveForward()
}

print(distance)

// 응용
let sports = ["Football", "Basketball", "Volleyball", "Golf"]

print(sports[0])
print(sports[1])
print(sports[2])

for i in 0...3 {    // i = 0, 1, 2, 3
    // 반복되는 구문이 여기에
    print(sports[i])
}

// 함수 + for
func moveThreeForeward() {
    for _ in 1...3 {
        // 반복되는 구문이 여기에
        moveForward()
    }
}

// 파라미터 + for (count 만큼 1칸씩 앞으로)
func moveForward(count: Int) {
    for _ in 1...count {
        // 반복되는 구문이 여기에
        moveForward()
    }
}

// 파라미터 (한번에 step 만큼 앞으로)
func move(step: Int) {
    distance = distance + step  // distance += step
}

func jump() {
    move(step: 3)
}

jump()
jump()
jump()

func jump(count: Int) {
    for _ in 1...count {
        jump()
    }
}

jump(count: 3)
