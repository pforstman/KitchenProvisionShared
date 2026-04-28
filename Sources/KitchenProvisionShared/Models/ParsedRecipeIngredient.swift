import Foundation

public struct ParsedRecipeIngredient: Codable, Sendable, Identifiable {
    public var id: UUID
    public var ingredientName: String
    public var quantity: Double
    public var unit: MeasurementUnit
    public var preparation: String?

    public init(id: UUID = UUID(), ingredientName: String, quantity: Double, unit: MeasurementUnit, preparation: String? = nil) {
        self.id = id
        self.ingredientName = ingredientName
        self.quantity = quantity
        self.unit = unit
        self.preparation = preparation
    }
}
