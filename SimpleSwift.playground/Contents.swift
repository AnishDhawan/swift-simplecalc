print("Welcome to the UW Calculator Playground")

func calculate(_ args: [String]) -> Int {
    if (args.last == "count") {
        return args.count - 1;
    } else if (args.last == "fact" ) {
        return args.count > 1 ? factorial(Int(args[0])!) : 0
    } else if (args.last == "avg") {
        var sum = 0
        for i in 0...(args.count - 1) {
            sum = sum + (Int(args[i]) != nil ? Int(args[i])! : 0)
        }
        return sum / max(1, args.count - 1)
    } else {
        let num1 : Int = (Int(args[0]) != nil ? Int(args[0])! : 0)
        let num2 : Int = (Int(args[2]) != nil ? Int(args[2])! : 0)
        if(args[1] == "%") {
            return num1 % num2
        } else if (args[1] == "/") {
            return num1 / num2
        } else if (args[1] == "*") {
            return num1 * num2
        } else if (args[1] == "+") {
            return num1 + num2
        } else if (args[1] == "-") {
            return num1 - num2
        }
    }
    return -1;
}

func calculate(_ arg: String) -> Int {
    return calculate(arg.split(separator: " ").map({str in String(str)}))
}

public func factorial(_ num: Int) -> Int {
    if (num == 0) {
        return 1
        
    }
    return num * factorial(num - 1)
}

// -------------------------------------------
// All of these expressions should return true
// if you have implemented calculate() correctly
//
calculate(["2", "+", "2"]) == 4
calculate(["4", "+", "4"]) == 8
calculate(["2", "-", "2"]) == 0
calculate(["2", "*", "2"]) == 4
calculate(["2", "/", "2"]) == 1
calculate(["2", "%", "2"]) == 0

calculate(["1", "2", "3", "count"]) == 3
calculate(["1", "2", "3", "4", "5", "count"]) == 5
calculate(["count"]) == 0

calculate(["1", "2", "3", "4", "5", "avg"]) == 3
    // 15 / 5 = 3
calculate(["2", "2", "4", "4", "avg"]) == 3
    // 12 / 4 = 3
calculate(["2", "avg"]) == 2
    // 2 / 1 = 2
calculate(["avg"]) == 0
    // 0 / 0 = 0 (not really, but it's an edge case

calculate(["0", "fact"]) == 1
calculate(["1", "fact"]) == 1
calculate(["2", "fact"]) == 2 // 2*1
calculate(["5", "fact"]) == 120 // 5*4*3*2*1
calculate(["fact"]) == 0

calculate("2 + 2") == 4
calculate("2 * 2") == 4
calculate("2 - 2") == 0
calculate("2 / 2") == 1

calculate("1 2 3 4 5 count") == 5
calculate("1 2 3 4 5 avg") == 3
calculate("5 fact") == 120

// -------------------------------------------
// These are extra credit tests; commented out
// uncomment them to turn them on for evaluation

// Implement calculate([String]) and calculate(String)
// to handle negative numbers
/*
calculate(["2", "+", "-2"]) == 0
calculate(["2", "-", "-2"]) == 4
calculate(["2", "*", "-2"]) == -4
calculate(["2", "/", "-2"]) == -1
calculate(["-5", "%", "2"]) == -1

calculate(["1", "-2", "3", "-2", "5", "avg"]) == 1

calculate("2 + -2") == 0
calculate("2 * -2") == -4
calculate("2 - -2") == 4
calculate("-2 / 2") == -1

calculate("1 -2 3 -4 5 count") == 5
*/
 
// Implement calculate([String]) and calculate(String)
// to use floating-point values
/*
func calculate(_ args: [String]) -> Double {
    return -1.0
}
func calculate(_ arg: String) -> Double {
    return -1.0
}

calculate(["2.0", "+", "2.0"]) == 4.0
calculate([".5", "+", "1.5"]) == 2.0
calculate(["12.0", "-", "12.0"]) == 0.0
calculate(["2.5", "*", "2.5"]) == 6.25
calculate(["2.0", "/", "2.0"]) == 1.0
calculate(["2.0", "%", "2.0"]) == 0.0
calculate("1.0 2.0 3.0 4.0 5.0 count") == 5
*/

