public struct ParseItemResponse: Codable, Sendable {
    public var ingredientName: String
    public var quantity: Double
    public var unit: MeasurementUnit
    public var location: String
    public var estimatedExpiryDays: Int?
    public var confidence: String?

    public init(ingredientName: String, quantity: Double, unit: MeasurementUnit, location: String, estimatedExpiryDays: Int? = nil, confidence: String? = nil) {
        self.ingredientName = ingredientName
        self.quantity = quantity
        self.unit = unit
        self.location = location
        self.estimatedExpiryDays = estimatedExpiryDays
        self.confidence = confidence
    }
}
