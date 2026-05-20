public struct EnrichIngredientsResponse: Codable, Sendable {
    public var results: [EnrichIngredientResponse]

    public init(results: [EnrichIngredientResponse]) {
        self.results = results
    }
}
