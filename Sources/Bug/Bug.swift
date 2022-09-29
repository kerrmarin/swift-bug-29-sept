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

public extension A where Self == D {
    static func d() -> some A {
        D()
    }
}

public struct C: A {
    public func build() -> some View {
        EmptyView()
    }
}

public struct D: A {
    public func build() -> some View {
        Text("Test")
    }
}
