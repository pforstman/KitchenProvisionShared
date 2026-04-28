public enum APIErrorCode: String, Codable, Sendable {
    case notAuthenticated
    case subscriptionRequired
    case rateLimited
    case invalidRequest
    case serverError
}

public struct APIError: Codable, Sendable, Error {
    public var code: APIErrorCode
    public var message: String

    public init(code: APIErrorCode, message: String) {
        self.code = code
        self.message = message
    }
}
