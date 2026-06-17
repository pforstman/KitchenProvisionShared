public struct ParseReceiptRequest: Codable, Sendable {
    public var rawText: String?
    public var imageBase64: String?

    public init(rawText: String? = nil, imageBase64: String? = nil) {
        self.rawText = rawText
        self.imageBase64 = imageBase64
    }
}
