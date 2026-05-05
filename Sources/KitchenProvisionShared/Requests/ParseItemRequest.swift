public struct ParseItemRequest: Codable, Sendable {
    public var barcode: String?
    public var productName: String?
    public var productWeight: String?
    public var rawText: String?
    public var imageBase64: String?

    public init(
        barcode: String? = nil,
        productName: String? = nil,
        productWeight: String? = nil,
        rawText: String? = nil,
        imageBase64: String? = nil
    ) {
        self.barcode = barcode
        self.productName = productName
        self.productWeight = productWeight
        self.rawText = rawText
        self.imageBase64 = imageBase64
    }
}
