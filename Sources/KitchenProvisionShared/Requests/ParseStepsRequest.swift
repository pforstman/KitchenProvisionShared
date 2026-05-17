public struct ParseStepsRequest: Codable, Sendable {
    public var steps: [String]
    public var ingredients: [String]

    public init(steps: [String], ingredients: [String]) {
        self.steps = steps
        self.ingredients = ingredients
    }
}
