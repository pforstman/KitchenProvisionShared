public struct ParseReceiptRequest: Codable, Sendable {
    public var rawText: String

    public init(rawText: String) {
        self.rawText = rawText
    }
}
