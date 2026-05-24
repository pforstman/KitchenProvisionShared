import Foundation

public struct ParsedRecipeIngredient: Codable, Equatable, Sendable, Identifiable {
    public var id: UUID
    public var ingredientName: String
    public var quantity: Double
    public var unit: MeasurementUnit
    public var preparation: String?
    public var sectionName: String?
    public var order: Int?
    public var aisle: String?

    public init(id: UUID = UUID(), ingredientName: String, quantity: Double, unit: MeasurementUnit, preparation: String? = nil, sectionName: String? = nil, order: Int? = nil, aisle: String? = nil) {
        self.id = id
        self.ingredientName = ingredientName
        self.quantity = quantity
        self.unit = unit
        self.preparation = preparation
        self.sectionName = sectionName
        self.order = order
        self.aisle = aisle
    }
}
