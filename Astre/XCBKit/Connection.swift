import Clibxcb

public struct Connection {
    init?() {
        print("Creating connection...")
        let connection = xcb_connect(nil, nil)
        
        if connection == nil {
            return nil
        }
        
        if xcb_connection_has_error(connection) != 0 {
            print("Connection error: \(String(describing: connection))")
            return nil
        }
        
        print("Connected to X server successfully")
        xcb_disconnect(connection)
    }
}
