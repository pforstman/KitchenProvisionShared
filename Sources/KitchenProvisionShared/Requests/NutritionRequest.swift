public struct NutritionIngredient: Codable, Sendable {
    public var name: String
    public var quantity: Double?
    public var unit: String?

    public init(name: String, quantity: Double?, unit: String?) {
        self.name = name
        self.quantity = quantity
        self.unit = unit
    }
}

public struct NutritionRequest: Codable, Sendable {
    public var title: String
    public var ingredients: [NutritionIngredient]
    public var servings: Double?

    public init(title: String,
                ingredients: [NutritionIngredient],
                servings: Double? = nil) {
        self.title = title
        self.ingredients = ingredients
        self.servings = servings
    }
}
