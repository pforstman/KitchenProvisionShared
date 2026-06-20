public struct ParseReceiptRequest: Codable, Sendable {
    public var rawText: String?
    public var imageBase64: String?
    public var images: [String]?

    public init(rawText: String? = nil, imageBase64: String? = nil, images: [String]? = nil) {
        self.rawText = rawText
        self.imageBase64 = imageBase64
        self.images = images
    }
}
