public struct EnrichIngredientsRequest: Codable, Sendable {
    public var names: [String]

    public init(names: [String]) {
        self.names = names
    }
}
