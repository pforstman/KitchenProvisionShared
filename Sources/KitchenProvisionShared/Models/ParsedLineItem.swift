import Foundation

public struct ParsedLineItem: Codable, Sendable, Identifiable {
    public var id: UUID
    public var ingredientName: String
    public var quantity: Double
    public var unit: MeasurementUnit

    public init(id: UUID = UUID(), ingredientName: String, quantity: Double, unit: MeasurementUnit) {
        self.id = id
        self.ingredientName = ingredientName
        self.quantity = quantity
        self.unit = unit
    }
}
