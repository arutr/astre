public struct ConnectionDelegate {
    init?() {
        let compositeWindows: Dictionary<Int, CompositeWindow> = [:]
        let managedWindows: Dictionary<Int, ManagedWindow> = [:]
        let decorationWindows: Set<DecorationWindow> = Set()
        let sharedConnection = Connection()
        
        if sharedConnection == nil {
            print("Unable to create connection to the server")
            return nil
        }
    }
}
