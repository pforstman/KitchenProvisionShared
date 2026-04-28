public struct ParsedRecipe: Codable, Sendable {
    public var title: String
    public var ingredients: [ParsedRecipeIngredient]

    public init(title: String, ingredients: [ParsedRecipeIngredient]) {
        self.title = title
        self.ingredients = ingredients
    }
}
