import SwiftUI

public protocol A {
    associatedtype B: View

    func build() -> B
}

public extension A where Self == C {
    static func c() -> some A {
        C()
    }
}

public struct C: A {
    public func build() -> some View {
        Text("Hello")
    }
}
