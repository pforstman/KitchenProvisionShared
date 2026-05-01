public enum RecipeImportSource: String, Codable, Sendable {
    case url
    case text
    case schemaOrg
}

public struct ParseRecipeRequest: Codable, Sendable {
    public var source: RecipeImportSource
    public var content: String

    public init(source: RecipeImportSource, content: String) {
        self.source = source
        self.content = content
    }
}
