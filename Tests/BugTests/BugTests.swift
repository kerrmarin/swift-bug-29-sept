import XCTest
@testable import Bug

final class BugTests: XCTestCase {
    func testExample() throws {
        let c: some A = .c()
    }

    func testExample2() throws {
        let someCs: [any A] = [.c()]
    }
}
