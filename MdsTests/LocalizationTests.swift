import XCTest
@testable import Mds

class LocalizationTests: XCTestCase {
    override func setUp() {
        super.setUp()
        continueAfterFailure = false
    }

    func testRussianLocalizer() {
        let testCases = [
            -121: "строка",
            -21: "строка",
            -11: "строк",
            -5: "строк",
            -2: "строки",
            -1: "строка",
            0: "строк",
            1: "строка",
            2: "строки",
            3: "строки",
            4: "строки",
            5: "строк",
            9: "строк",
            10: "строк",
            11: "строк",
            12: "строк",
            19: "строк",
            20: "строк",
            21: "строка",
            22: "строки",
            24: "строки",
            25: "строк",
            29: "строк",
            30: "строк",
            31: "строка",
            99: "строк",
            100: "строк",
            101: "строка",
            102: "строки",
            103: "строки",
            104: "строки",
            105: "строк",
            109: "строк",
            110: "строк",
            111: "строк",
            112: "строк",
            119: "строк",
            120: "строк",
            121: "строка",
            122: "строки",
            124: "строки",
            125: "строк",
            129: "строк",
            130: "строк",
            131: "строка",
            199: "строк",
            200: "строк",
            201: "строка",
            2147483641: "строка",
        ]

        for (num, str) in testCases {
            let ans = getRussianString(forNumber: num, andNounForms: ("строка", "строки", "строк"))
            XCTAssertEqual(ans, "\(num) \(str)")
        }
    }
}
