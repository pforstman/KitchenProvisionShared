public struct AuthRequest: Codable, Sendable {
    public var appleIdentityToken: String
    public var displayName: String?
    public var email: String?

    public init(appleIdentityToken: String, displayName: String? = nil, email: String? = nil) {
        self.appleIdentityToken = appleIdentityToken
        self.displayName = displayName
        self.email = email
    }
}
