//
// Created by Leonardo Saippa on 17/08/21.
// Simulate the HW

import Foundation
import CoreBluetooth

class AdapterGattServer: NSObject {

    private var peripheralManager: CBPeripheralManager!
    private(set) var enabled = false
    private let logger: Logger
    private var servicesToRemove: [CBMutableService] = []



    private let serviceUUID = CBUUID(string: AdapterUUID.service)
    private let controlUUID = CBUUID(string: AdapterUUID.control)
    private let dataUUID = CBUUID(string: AdapterUUID.data)
    private let writeUUID = CBUUID(string: AdapterUUID.write)
    private let versionUUID = CBUUID(string: AdapterUUID.softwareRevisionCharacteristicID)

    private var service: CBMutableService?
    private var control: CBMutableCharacteristic?
    private var data: CBMutableCharacteristic?
    private var write: CBMutableCharacteristic?
    private var version: CBMutableCharacteristic?

    init(logger: Logger = DeviceConsoleLogger()) {
        print("init")
        self.logger = logger
        super.init()
        peripheralManager = CBPeripheralManager(delegate: self,
                queue: DispatchQueue(label: "service-manager"),
                options: [CBCentralManagerOptionRestoreIdentifierKey: "service-manager"])
    }


    func startBroadcasting() {
        print("startBroadcasting")
        enabled = true
    }

    private func createService() {
        print("create")
        control = CBMutableCharacteristic(type: controlUUID,
                properties: [.notify],
                value: nil,
                permissions: [.readable])

        data = CBMutableCharacteristic(type: dataUUID,
                properties: [.notify],
                value: nil,
                permissions: [.readable])


        write = CBMutableCharacteristic(type: writeUUID,
                properties: [.write],
                value: nil,
                permissions: [.writeable])


        version = CBMutableCharacteristic(type: versionUUID,
                properties: [.read],
                value: versionString().data(using: .utf8),
                permissions: [.readable])


        service = CBMutableService(type: serviceUUID, primary: true)
        service?.characteristics = [control!, data!, write!, version!]
    }

    func stopBroadcasting() {
        enabled = false
        print("Stop Advertising")
        peripheralManager.stopAdvertising()
    }


    private func versionString() -> String {
        let appVersion = Bundle.main.infoDictionary!["CFBundleShortVersionString"] as! String
        let build = Bundle.main.infoDictionary!["CFBundleVersion"] as! String
        let versionString = "ios.\(appVersion).\(build)"
        return versionString
    }

    func updateValue(msg: String, characteristic: CBMutableCharacteristic) {
        print("updateValue \(msg)")
        peripheralManager.updateValue(Data(msg.utf8), for: characteristic, onSubscribedCentrals: nil)
        startAdvertisingPeripheral()
    }
    
    public func startAdvertisingPeripheral() {
        print("startAdvertisingPeripheral")
        if peripheralManager == nil {
            print("is null")
            peripheralManager = CBPeripheralManager(delegate: self, queue: nil)
        }
        
        if peripheralManager?.state == .poweredOn {
            print("starting")
            peripheralManager?.removeAllServices()
            
            let advertisementData = [CBAdvertisementDataLocalNameKey: "GattServerSimulator"]
            peripheralManager.startAdvertising(advertisementData)
        }
        
    }
    
    
 }


extension AdapterGattServer : CBPeripheralManagerDelegate {

    func peripheralManagerDidUpdateState(_ peripheral: CBPeripheralManager) {
        switch peripheral.state {
        case .poweredOn:
            print("poweredOn")
            startAdvertisingPeripheral()
        // version!.value = versionString.data(using: .utf8)
        case .poweredOff:
            print("poweredOff")

            break
        case .resetting:
            print("resetting")

            break
        case .unauthorized:
            print("unauthorized")

            break
        case .unknown:
            print("unknown")

            break
        case .unsupported:
            print("unsupported")

            break
        @unknown default:
            break
        }
    }

    func peripheralManager(_ peripheral: CBPeripheralManager, willRestoreState dict: [String: Any]) {
        print("restoring")
        logger.info(tag: "AdapterGatt", "Restoring state: \(dict)")
        if let services = dict[CBPeripheralManagerRestoredStateServicesKey] as? [CBMutableService] {
            services.enumerated().forEach { (idx, service) in
                if (self.enabled && self.service == nil && service.uuid == serviceUUID) {
                    service.characteristics?.forEach { characteristic in
                        if characteristic.uuid == controlUUID {
                            self.control = characteristic as? CBMutableCharacteristic
                        } else if characteristic.uuid == dataUUID {
                            self.data = characteristic as? CBMutableCharacteristic
                        } else if characteristic.uuid == writeUUID {
                            self.write = characteristic as? CBMutableCharacteristic
                        } else if characteristic.uuid == versionUUID {
                            self.version = characteristic as? CBMutableCharacteristic
                        }
                    }

                    var mustRestartService = false
                    if self.control == nil {
                        logger.error(tag: "AdapterGatt", "Failed to restore state: Missing CONTROL characterstic")
                        mustRestartService = true
                    }
                    if self.data == nil {
                        logger.error(tag: "AdapterGatt", "Failed to restore state: Missing DATA characterstic")
                        mustRestartService = true
                    }
                    if self.write == nil {
                        logger.error(tag: "AdapterGatt", "Failed to restore state: Missing WRITE characterstic")
                        mustRestartService = true
                    }
                    if self.version == nil {
                        logger.error(tag: "AdapterGatt", "Failed to restore state: Missing VERSION characterstic")
                        mustRestartService = true
                    }

                    if mustRestartService {
                        servicesToRemove.append(service)
                    } else {
                        self.service = service
                    }
                } else {
                    servicesToRemove.append(service)
                }
            }
        }
    }

    func peripheralManager(_ peripheral: CBPeripheralManager, didAdd service: CBService, error: Error?) {
        print("perip")
        if let error = error {
            logger.error(tag: "AdapterGatt", "Failed to add service: \(error)")
        } else {
            logger.info(tag: "AdapterGatt", "Service was added successfully: \(service)")
        }
    }

    func peripheralManagerDidStartAdvertising(_ peripheral: CBPeripheralManager, error: Error?) {
        print("adver ")

        if let error = error {
            logger.error(tag: "AdapterGatt", "Failed to advertise: \(error)")
        }
    }

    func peripheralManager(_ peripheral: CBPeripheralManager, central: CBCentral, didSubscribeTo characteristic: CBCharacteristic) {
        print("did ")

        // Nothing to do
    }

    func peripheralManager(_ peripheral: CBPeripheralManager, central: CBCentral, didUnsubscribeFrom characteristic: CBCharacteristic) {
        print("central ")
        if characteristic.uuid == controlUUID || characteristic.uuid == dataUUID {
            //  sender.cancel()
            //fileTransferCompleted?(TwoNavGattServerError.noSubcribers)
        }
    }

    func peripheralManager(_ peripheral: CBPeripheralManager, didReceiveRead request: CBATTRequest) {
        print("read \(request)")
        //assert(false, "This method should never be called")
    }

    func peripheralManager(_ peripheral: CBPeripheralManager, didReceiveWrite requests: [CBATTRequest]) {
        print("write")
        dump(requests)
        // Loop on all incoming requests
        requests.forEach { request in
            // Make sure the request is pointing to the write characterstic
            guard request.characteristic == write! else {
                peripheral.respond(to: request, withResult: .requestNotSupported)
                return
            }

            // Process incoming data
            guard let data = request.value else {
                peripheral.respond(to: request, withResult: .unlikelyError)
                return
            }
            // To be processed by the file sender
            peripheral.respond(to: request, withResult: .success)
            //sender.processNotify(data)
        }
    }

    func peripheralManagerIsReady(toUpdateSubscribers peripheral: CBPeripheralManager) {
        print("READY AGAIN")
    
    }
}
