public struct ParseReceiptResponse: Codable, Sendable {
    public var receipt: ParsedReceipt

    public init(receipt: ParsedReceipt) {
        self.receipt = receipt
    }
}
