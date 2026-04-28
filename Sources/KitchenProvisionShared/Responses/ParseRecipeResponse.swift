public struct ParseRecipeResponse: Codable, Sendable {
    public var recipe: ParsedRecipe

    public init(recipe: ParsedRecipe) {
        self.recipe = recipe
    }
}
