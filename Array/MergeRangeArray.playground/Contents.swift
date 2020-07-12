extension Array where Element == CountableClosedRange<Int> {
    /// Int型Rangeの配列をマージする。
    func merge() -> [CountableClosedRange<Int>] {
        return sorted(by: { $0.lowerBound < $1.lowerBound })
            .reduce([CountableClosedRange<Int>]()) {
                guard let lastRange = $0.last else { return [$1] }
                if lastRange.upperBound >= $1.upperBound {
                    return $0
                }
                else if lastRange.upperBound >= $1.lowerBound {
                    return $0.dropLast() + [lastRange.lowerBound...$1.upperBound]
                }
                else  {
                    return $0 + [$1]
                }
        }
    }
}

print("\([1...2,5...15,0...5].merge())")
