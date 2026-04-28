import Foundation

public struct PantryItemSnapshot: Codable, Sendable {
    public var ingredientName: String?
    public var category: String?
    public var quantity: Double
    public var unit: MeasurementUnit
    public var expiryDate: Date?
    public var location: String?

    public init(ingredientName: String? = nil, category: String? = nil, quantity: Double, unit: MeasurementUnit, expiryDate: Date? = nil, location: String? = nil) {
        self.ingredientName = ingredientName
        self.category = category
        self.quantity = quantity
        self.unit = unit
        self.expiryDate = expiryDate
        self.location = location
    }
}
