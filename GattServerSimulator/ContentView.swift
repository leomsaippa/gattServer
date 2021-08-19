//
//  ContentView.swift
//  GattServerSimulator
//
//  Created by Leonardo Saippa on 18/08/21.
//

import SwiftUI
import CoreBluetooth

struct ContentView: View {

    @State private var bateryLevel: String = "0"
    @State private var softwareVersion: String = "0"
    @State private var serialNumber: String = "0"
    @State private var temperature: String = "0"
    @State private var timeCode: String = "0"
    @State private var cartridgeState = true
    
    var body: some View {
        ScrollView {
            VStack {
                Text("Batery").lineSpacing(5.0)
                
                
                
                TextField("Enter batery...", text: $bateryLevel, onEditingChanged: { (changed) in
                              print("Batery onEditingChanged - \(changed)")
                    
         
                    
                    let deviceCharacteristic = CBMutableCharacteristic(type: AdapterUUID.gapDeviceNameCharacteristic, properties: [.read], value: nil, permissions: [.readable])
                    
        
                    
                    print("calling update")
                    print(AdapterUUID.gapDeviceNameCharacteristic)
                    gattServer?.updateValue(msg: bateryLevel, characteristic: deviceCharacteristic)
                    


                 
                          })
                
            }
            VStack {
                Text("Software Version").lineSpacing(5.0)
                
                TextField("20", text: $softwareVersion).lineSpacing(5.0)
                
            }
            
            VStack {
                Text("Serial Number").lineSpacing(5.0)
                
                TextField("20", text: $serialNumber).lineSpacing(5.0)
                
            }
            VStack {
                Text("Temperature").lineSpacing(5.0)
                
                TextField("20", text: $temperature).lineSpacing(5.0)
                
            }
            VStack {
                Text("Time code").lineSpacing(5.0)
                
                TextField("20", text: $timeCode).lineSpacing(5.0)
                
            }
            VStack {
                Toggle("Cartridge State", isOn: $cartridgeState)
    

                
            }
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
