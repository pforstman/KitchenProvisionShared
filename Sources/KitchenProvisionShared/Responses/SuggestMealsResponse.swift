public struct SuggestMealsResponse: Codable, Sendable {
    public var suggestions: [MealSuggestion]

    public init(suggestions: [MealSuggestion]) {
        self.suggestions = suggestions
    }
}
