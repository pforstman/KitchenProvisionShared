public struct SuggestMealsRequest: Codable, Sendable {
    public var pantryItems: [PantryItemSnapshot]
    public var dietaryModifiers: [String]

    public init(pantryItems: [PantryItemSnapshot], dietaryModifiers: [String] = []) {
        self.pantryItems = pantryItems
        self.dietaryModifiers = dietaryModifiers
    }
}
