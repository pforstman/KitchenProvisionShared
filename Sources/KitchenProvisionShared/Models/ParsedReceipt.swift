public struct ParsedReceipt: Codable, Sendable {
    public var storeName: String?
    public var storeAddress: String?
    public var storeCity: String?
    public var storeState: String?
    public var storeZip: String?
    public var storePhone: String?
    public var storeNumber: String?
    public var receiptDate: String?
    public var receiptTime: String?
    public var paymentMethod: String?
    public var subtotal: Double?
    public var tax: Double?
    public var total: Double?
    public var items: [ParsedLineItem]

    public init(
        storeName: String? = nil,
        storeAddress: String? = nil,
        storeCity: String? = nil,
        storeState: String? = nil,
        storeZip: String? = nil,
        storePhone: String? = nil,
        storeNumber: String? = nil,
        receiptDate: String? = nil,
        receiptTime: String? = nil,
        paymentMethod: String? = nil,
        subtotal: Double? = nil,
        tax: Double? = nil,
        total: Double? = nil,
        items: [ParsedLineItem] = []
    ) {
        self.storeName = storeName
        self.storeAddress = storeAddress
        self.storeCity = storeCity
        self.storeState = storeState
        self.storeZip = storeZip
        self.storePhone = storePhone
        self.storeNumber = storeNumber
        self.receiptDate = receiptDate
        self.receiptTime = receiptTime
        self.paymentMethod = paymentMethod
        self.subtotal = subtotal
        self.tax = tax
        self.total = total
        self.items = items
    }
}
