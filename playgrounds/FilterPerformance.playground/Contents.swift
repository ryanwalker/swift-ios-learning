let items = 1...100
for i in items {
    if i % 2 != 0 { continue }
    print("\(i)")
}

let cows = [1,2,3,4,5]
var filtered = cows.filter() { $0 % 2 == 0 }
println(filtered)
    