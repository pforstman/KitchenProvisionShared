public enum RecipeImportSource: String, Codable, Sendable {
    case url
    case text
}

public struct ParseRecipeRequest: Codable, Sendable {
    public var source: RecipeImportSource
    public var content: String

    public init(source: RecipeImportSource, content: String) {
        self.source = source
        self.content = content
    }
}
