import Foundation

public struct MealSuggestion: Codable, Sendable, Identifiable {
    public var id: UUID
    public var name: String
    public var description: String?
    public var matchingIngredientCount: Int?
    public var ingredients: [ParsedRecipeIngredient]

    public init(id: UUID = UUID(), name: String, description: String? = nil, matchingIngredientCount: Int? = nil, ingredients: [ParsedRecipeIngredient]) {
        self.id = id
        self.name = name
        self.description = description
        self.matchingIngredientCount = matchingIngredientCount
        self.ingredients = ingredients
    }
}
