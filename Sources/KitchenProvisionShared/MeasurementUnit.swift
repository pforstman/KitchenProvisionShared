public enum MeasurementUnit: String, Codable, CaseIterable, Hashable, Sendable {
    // MARK: Weight
    case gram
    case kilogram
    case ounce
    case pound

    // MARK: Metric volume
    case milliliter
    case liter

    // MARK: US volume
    case teaspoon
    case tablespoon
    case cup
    case fluidOunce
    case pint
    case quart
    case gallon

    // MARK: Count
    case piece
    case dozen

    // MARK: Approximate
    case pinch
    case dash
    case toTaste
}
