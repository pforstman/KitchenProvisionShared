public struct AuthResponse: Codable, Sendable {
    public var sessionToken: String
    public var userID: String
    public var displayName: String?
    public var email: String?

    public init(sessionToken: String, userID: String, displayName: String? = nil, email: String? = nil) {
        self.sessionToken = sessionToken
        self.userID = userID
        self.displayName = displayName
        self.email = email
    }
}
