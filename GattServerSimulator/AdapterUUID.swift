//
// Created by Leonardo Saippa on 17/08/21.
//

import Foundation
import CoreBluetooth


public struct AdapterUUID {
    public static let invalidSensorTemperature: Float = 327.67

    static let genericAccessService = CBUUID(string: "1800")
    static let gapDeviceNameCharacteristic = CBUUID(string: "2a00")
    
    static let testDeviceName = CBUUID(string: "2a00")

    static let genericAttributeService = CBUUID(string: "1801")
    
    static let batteryService = CBUUID(string: "180F")
    static let batteryLevelCharacteristic = CBUUID(string: "2A19")
    
    static let deviceInformationService = CBUUID(string: "180A")
    
    static let envinronmentalSensingService = CBUUID(string: "181A")
    static let deviceInformationTemperatureCharacteristic = CBUUID(string: "2A6E")

    static let luminosticsCoreImagerService = CBUUID(string: "B3BA1CB3-8982-457D-AE77-857F32797C48")
    static let timecodeCharacteristic = CBUUID(string: "B3BA1CB5-8982-457D-AE77-857F32797C48")
    static let cartridgePresentCharacteristic = CBUUID(string: "B3BA1CB7-8982-457D-AE77-857F32797C48")
    static let imageControlCharacteristic = CBUUID(string: "B3BA1CB9-8982-457D-AE77-857F32797C48")
    static let imageStatusCharacteristic = CBUUID(string: "B3BA1CBB-8982-457D-AE77-857F32797C48")

    
    static let luminosticsFileAccessService = CBUUID(string: "CBBD9DAC-2A7F-4C38-9D02-6C9E348A15C5")
    static let fileInfoCharacteristic = CBUUID(string: "CBBD9DB0-2A7F-4C38-9D02-6C9E348A15C5")
    static let blockTransferRequestCharacteristic = CBUUID(string: "CBBD9DB2-2A7F-4C38-9D02-6C9E348A15C5")
    static let dataTransferCharacteristic = CBUUID(string: "CBBD9DB4-2A7F-4C38-9D02-6C9E348A15C5")

    
        static let service = "A3EF4942-C8FC-11E5-A837-0800200C9A66"
        static let data = "3CF4D6F3-3FAE-4FE3-846C-5B5B1286AC0C"
        static let control = "C8E803C8-8938-410A-A8DA-0DF875C619B6"
        static let write = "61E63C0F-3F4E-42B4-AFAC-70175D919543"
    
    //    // Standard services & characteristics
        static let deviceInformationServiceID = "180A"
        static let softwareRevisionCharacteristicID = "2A28"
}
//
//struct AdapterUUID {
//    static let service = "A3EF4942-C8FC-11E5-A837-0800200C9A66"
//    static let data = "3CF4D6F3-3FAE-4FE3-846C-5B5B1286AC0C"
//    static let control = "C8E803C8-8938-410A-A8DA-0DF875C619B6"
//    static let write = "61E63C0F-3F4E-42B4-AFAC-70175D919543"
//
//    // Standard services & characteristics
//    static let deviceInformationServiceID = "180A"
//    static let softwareRevisionCharacteristicID = "2A28"
//
//}
