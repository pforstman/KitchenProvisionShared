public struct EnrichIngredientResponse: Codable, Sendable {
    public var isRecognized: Bool
    public var confidence: String
    public var canonicalName: String?
    public var aliases: [String]
    public var density: Double?
    public var isLiquid: Bool
    public var aisle: String?

    public init(
        isRecognized: Bool,
        confidence: String,
        canonicalName: String? = nil,
        aliases: [String] = [],
        density: Double? = nil,
        isLiquid: Bool = false,
        aisle: String? = nil
    ) {
        self.isRecognized = isRecognized
        self.confidence = confidence
        self.canonicalName = canonicalName
        self.aliases = aliases
        self.density = density
        self.isLiquid = isLiquid
        self.aisle = aisle
    }
}
