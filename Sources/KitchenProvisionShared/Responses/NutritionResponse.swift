public struct NutritionResponse: Codable, Sendable {
    public var caloriesPerServing: Double?
    public var proteinPerServing: Double?
    public var carbsPerServing: Double?
    public var fiberPerServing: Double?
    public var sugarPerServing: Double?
    public var fatPerServing: Double?
    public var saturatedFatPerServing: Double?
    public var sodiumPerServing: Double?
    public var isEstimated: Bool

    public init(
        caloriesPerServing: Double? = nil,
        proteinPerServing: Double? = nil,
        carbsPerServing: Double? = nil,
        fiberPerServing: Double? = nil,
        sugarPerServing: Double? = nil,
        fatPerServing: Double? = nil,
        saturatedFatPerServing: Double? = nil,
        sodiumPerServing: Double? = nil,
        isEstimated: Bool = true
    ) {
        self.caloriesPerServing = caloriesPerServing
        self.proteinPerServing = proteinPerServing
        self.carbsPerServing = carbsPerServing
        self.fiberPerServing = fiberPerServing
        self.sugarPerServing = sugarPerServing
        self.fatPerServing = fatPerServing
        self.saturatedFatPerServing = saturatedFatPerServing
        self.sodiumPerServing = sodiumPerServing
        self.isEstimated = isEstimated
    }
}
