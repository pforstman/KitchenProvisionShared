import Foundation

public struct ParsedRecipeStep: Codable, Sendable, Identifiable {
    public var id: UUID
    public var order: Int
    public var instruction: String

    public init(id: UUID = UUID(), order: Int, instruction: String) {
        self.id = id
        self.order = order
        self.instruction = instruction
    }
}
