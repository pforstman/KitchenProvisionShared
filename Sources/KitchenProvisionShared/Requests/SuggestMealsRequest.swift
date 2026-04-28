public struct SuggestMealsRequest: Codable, Sendable {
    public var pantryItems: [PantryItemSnapshot]

    public init(pantryItems: [PantryItemSnapshot]) {
        self.pantryItems = pantryItems
    }
}
