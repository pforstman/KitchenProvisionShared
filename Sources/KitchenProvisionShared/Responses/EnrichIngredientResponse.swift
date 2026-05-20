public struct EnrichIngredientResponse: Codable, Sendable {
    public var isRecognized: Bool
    public var confidence: String
    public var canonicalName: String?
    public var aliases: [String]
    public var density: Double?
    public var isLiquid: Bool

    public init(
        isRecognized: Bool,
        confidence: String,
        canonicalName: String? = nil,
        aliases: [String] = [],
        density: Double? = nil,
        isLiquid: Bool = false
    ) {
        self.isRecognized = isRecognized
        self.confidence = confidence
        self.canonicalName = canonicalName
        self.aliases = aliases
        self.density = density
        self.isLiquid = isLiquid
    }
}
