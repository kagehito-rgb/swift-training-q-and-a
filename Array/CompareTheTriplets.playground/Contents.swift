/* Q. 二つの配列の同じindexの値同士を比べ、勝った側に1ポイントを与えた結果の配列を返す。
 * ex. [5 6 7] [3 6 10] #=> [1, 1]
 * by HackerRank(https://www.hackerrank.com/challenges/compare-the-triplets/problem)
 */

/// 二つの配列の値の大きさ比べの結果を返す。
func compareTriplets(a: [Int], b: [Int]) -> [Int] {
    var resultArray = [0, 0]
    zip(a, b).forEach {
        if ($0.0 > $0.1) {
            resultArray[0] += 1
        } else if ($0.0 < $0.1)  {
            resultArray[1] += 1
        }
    }
    return resultArray
}

print(compareTriplets(a: [5, 6, 7], b: [3, 6, 10]))
