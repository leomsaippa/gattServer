
//
//  Created by Jose Luis on 02/07/2020.
//  Copyright © 2020 Luminostics. All rights reserved.
//

import Foundation

/// Cartridge States
public enum CartridgeState: UInt8 {

    /// Cartridge is not inserted in the adapter
    case removed

    /// Cartridge is inserted inside the adapter
    case inserted
}

/// Error Codes
public enum AdapterError: Error {

    /// Bluetooth is off
    case bluetoothPoweredOff

    /// Connection timeout
    case connectionTimeout
}

public protocol AdapterBLECartrdigeStateObserver: NSObject {
    func cartridgeStateDidChange(state: CartridgeState)
}

public protocol AdapterBLEBatteryLevelObserver: NSObject {
    func batteryLevelDidChange(level: UInt8)
}

public protocol AdapterBLEDisconnectionObserver: NSObject {
    func adapterDidDisconnect(adapter: AdapterBLEDevice)
}

public protocol AdapterBLEDevice {

    var name: String? { get }

    /// Returns the state of the connection
    var isConnected: Bool { get }

    /// Scans for a device and stablishes a connection once found.
    func connect(identifier: String?, _ completion: @escaping (AdapterError?) -> Void)

    /// Adding a disconnection observer
    /// - Parameter observer: An observer
    /// - Returns: `true` if succeed, `false` otherwise
    func addDisconnectObserver(_ observer: AdapterBLEDisconnectionObserver)

    /// Removing a disconnection observer
    /// - Parameter observer: An observer
    /// - Returns: `true` if succeed, `false` otherwise
    func removeDisconnectObserver(_ observer: AdapterBLEDisconnectionObserver)

    /// Stops the connection
    func stop()

    // The system is going to try to bond with the adapter, otherwise will return an error
    func bond(completion: @escaping (Error?) -> Void)

    /// Read the software revision string
    /// - Parameter completion: contains the verison
    /// - Returns: `true` if the request could be sent, `false` otherwise
    @discardableResult
    func readSoftwareRevisionVersion(completion: @escaping (String) -> Void) -> Bool

    /// Read the serial number of the adapter
    /// - Parameter completion: contains the serial number
    /// - Returns: `true` if the request could be sent, `false` otherwise
    @discardableResult
    func readSerialNumber(completion: @escaping (String) -> Void) -> Bool

    /// Read the temperature of the adapter
    /// - Parameter completion: contains the temperature
    /// - Returns: `true` if the request could be sent, `false` otherwise
    @discardableResult
    func readTemperature(completion: @escaping (Float) -> Void) -> Bool

    /// Read the battery of the adapter
    /// - Parameter completion: contains the battery level
    /// - Returns: `true` if the request could be sent, `false` otherwise
    @discardableResult
    func readBattery(completion: @escaping (UInt8) -> Void) -> Bool

    /// Adding a battery level observer
    /// - Parameter observer: An observer
    /// - Returns: `true` if succeed, `false` otherwise
    @discardableResult
    func addBatteryLevelObserver(_ observer: AdapterBLEBatteryLevelObserver) -> Bool

    /// Removing a battery level observer
    /// - Parameter observer: An observer
    /// - Returns: `true` if succeed, `false` otherwise
    @discardableResult
    func removeBatteryLevelObserver(_ observer: AdapterBLEBatteryLevelObserver) -> Bool

    /// Reads the timecode
    /// - Parameter completion: contains the timecode
    /// - Returns: `true` if the request could be sent, `false` otherwise
    @discardableResult
    func readTimecode(completion: @escaping (UInt32) -> Void) -> Bool

    /// Sends a command data block
    /// - Parameter data: The data to be sent
    /// - Returns: `true` if the request could be sent, `false` otherwise
    @discardableResult
    func sendCommand(data: Data, completion: @escaping (Error?) -> Void) -> Bool

    /// Reads the cartridge state
    /// - Parameter completion: Returns the cartridge state
    /// - Returns: `true` if the request could be sent, `false` otherwise
    @discardableResult
    func readCartridgeState(completion: @escaping (CartridgeState) -> Void) -> Bool

    /// Adding a cartrige state observer
    /// - Parameter observer: An observer
    /// - Returns: `true` if succeed, `false` otherwise
    @discardableResult
    func addCartridgeStateObserver(_ observer: AdapterBLECartrdigeStateObserver) -> Bool

    /// Removing a cartrige state observer
    /// - Parameter observer: An observer
    /// - Returns: `true` if succeed, `false` otherwise
    @discardableResult
    func removeCartrdigeStateObserver(_ observer: AdapterBLECartrdigeStateObserver) -> Bool
}
