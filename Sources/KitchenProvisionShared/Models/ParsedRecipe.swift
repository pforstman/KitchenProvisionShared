public struct ParsedRecipe: Codable, Sendable {
    public var title: String
    public var ingredients: [ParsedRecipeIngredient]
    public var prepTime: Int?
    public var cookTime: Int?
    public var totalTime: Int?
    public var yieldQuantity: Double?
    public var yieldDescription: String?
    public var imageURL: String?
    public var steps: [ParsedRecipeStep]?

    public init(title: String, ingredients: [ParsedRecipeIngredient], prepTime: Int? = nil, cookTime: Int? = nil, totalTime: Int? = nil, yieldQuantity: Double? = nil, yieldDescription: String? = nil, imageURL: String? = nil, steps: [ParsedRecipeStep]? = nil) {
        self.title = title
        self.ingredients = ingredients
        self.prepTime = prepTime
        self.cookTime = cookTime
        self.totalTime = totalTime
        self.yieldQuantity = yieldQuantity
        self.yieldDescription = yieldDescription
        self.imageURL = imageURL
        self.steps = steps
    }
}
