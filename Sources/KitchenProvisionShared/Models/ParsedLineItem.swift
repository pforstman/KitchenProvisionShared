import Foundation

public struct ParsedLineItem: Codable, Sendable, Identifiable {
    public var id: UUID
    public var ingredientName: String
    public var quantity: Double
    public var unit: MeasurementUnit
    public var rawText: String?
    public var price: Double?
    public var location: String?
    public var estimatedExpiryDays: Int?

    public init(id: UUID = UUID(), ingredientName: String, quantity: Double, unit: MeasurementUnit, rawText: String? = nil, price: Double? = nil, location: String? = nil, estimatedExpiryDays: Int? = nil) {
        self.id = id
        self.ingredientName = ingredientName
        self.quantity = quantity
        self.unit = unit
        self.rawText = rawText
        self.price = price
        self.location = location
        self.estimatedExpiryDays = estimatedExpiryDays
    }
}
