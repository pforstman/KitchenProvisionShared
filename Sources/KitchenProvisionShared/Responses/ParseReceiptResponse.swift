public struct ParseReceiptResponse: Codable, Sendable {
    public var items: [ParsedLineItem]

    public init(items: [ParsedLineItem]) {
        self.items = items
    }
}
