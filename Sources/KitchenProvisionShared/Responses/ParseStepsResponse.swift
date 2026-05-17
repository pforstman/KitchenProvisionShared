public struct ParseStepsResponse: Codable, Sendable {
    public var steps: [String]

    public init(steps: [String]) {
        self.steps = steps
    }
}
