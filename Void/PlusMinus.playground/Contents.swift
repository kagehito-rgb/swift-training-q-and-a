/* Q. 配列内の正・負・０の割合をそれぞれprintするメソッド。
 * by HackerRank(https://www.hackerrank.com/challenges/plus-minus/problem)
 */

func plusMinus(arr: [Int]) -> Void {
    let positiveNumbers = arr.filter { $0 > 0 }
    let negativeNumbers = arr.filter { $0 < 0 }
    let zero = arr.filter { $0 == 0 }

    print(Double(positiveNumbers.count)/Double(arr.count))
    print(Double(negativeNumbers.count)/Double(arr.count))
    print(Double(zero.count)/Double(arr.count))
}

plusMinus(arr: [-2, 1, 0, 4, 5, -3])
