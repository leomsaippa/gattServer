@_private(sourceFile: "ContentView.swift") import GattServerSimulator
import SwiftUI
import SwiftUI

extension ContentView_Previews {
    @_dynamicReplacement(for: previews) private static var __preview__previews: some View {
        #sourceLocation(file: "/Users/lsaippa/projects/mj/GattServerSimulator/GattServerSimulator/ContentView.swift", line: 67)
        AnyView(ContentView())
    #sourceLocation()
    }
}

extension ContentView {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/lsaippa/projects/mj/GattServerSimulator/GattServerSimulator/ContentView.swift", line: 19)
        AnyView(ScrollView {
            VStack {
                Text(__designTimeString("#3509.[1].[6].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[0].value", fallback: "Batery")).lineSpacing(__designTimeFloat("#3509.[1].[6].property.[0].[0].arg[0].value.[0].arg[0].value.[0].modifier[0].arg[0].value", fallback: 5.0))
                
                TextField(__designTimeString("#3509.[1].[6].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value", fallback: "Enter batery..."), text: $bateryLevel, onEditingChanged: { (changed) in
                              print("Batery onEditingChanged - \(changed)")
                    
                          })
                
            }
            VStack {
                Text(__designTimeString("#3509.[1].[6].property.[0].[0].arg[0].value.[1].arg[0].value.[0].arg[0].value", fallback: "Software Version")).lineSpacing(__designTimeFloat("#3509.[1].[6].property.[0].[0].arg[0].value.[1].arg[0].value.[0].modifier[0].arg[0].value", fallback: 5.0))
                
                TextField(__designTimeString("#3509.[1].[6].property.[0].[0].arg[0].value.[1].arg[0].value.[1].arg[0].value", fallback: "20"), text: $softwareVersion).lineSpacing(__designTimeFloat("#3509.[1].[6].property.[0].[0].arg[0].value.[1].arg[0].value.[1].modifier[0].arg[0].value", fallback: 5.0))
                
            }
            
            VStack {
                Text(__designTimeString("#3509.[1].[6].property.[0].[0].arg[0].value.[2].arg[0].value.[0].arg[0].value", fallback: "Serial Number")).lineSpacing(__designTimeFloat("#3509.[1].[6].property.[0].[0].arg[0].value.[2].arg[0].value.[0].modifier[0].arg[0].value", fallback: 5.0))
                
                TextField(__designTimeString("#3509.[1].[6].property.[0].[0].arg[0].value.[2].arg[0].value.[1].arg[0].value", fallback: "20"), text: $serialNumber).lineSpacing(__designTimeFloat("#3509.[1].[6].property.[0].[0].arg[0].value.[2].arg[0].value.[1].modifier[0].arg[0].value", fallback: 5.0))
                
            }
            VStack {
                Text(__designTimeString("#3509.[1].[6].property.[0].[0].arg[0].value.[3].arg[0].value.[0].arg[0].value", fallback: "Temperature")).lineSpacing(__designTimeFloat("#3509.[1].[6].property.[0].[0].arg[0].value.[3].arg[0].value.[0].modifier[0].arg[0].value", fallback: 5.0))
                
                TextField(__designTimeString("#3509.[1].[6].property.[0].[0].arg[0].value.[3].arg[0].value.[1].arg[0].value", fallback: "20"), text: $temperature).lineSpacing(__designTimeFloat("#3509.[1].[6].property.[0].[0].arg[0].value.[3].arg[0].value.[1].modifier[0].arg[0].value", fallback: 5.0))
                
            }
            VStack {
                Text(__designTimeString("#3509.[1].[6].property.[0].[0].arg[0].value.[4].arg[0].value.[0].arg[0].value", fallback: "Time code")).lineSpacing(__designTimeFloat("#3509.[1].[6].property.[0].[0].arg[0].value.[4].arg[0].value.[0].modifier[0].arg[0].value", fallback: 5.0))
                
                TextField(__designTimeString("#3509.[1].[6].property.[0].[0].arg[0].value.[4].arg[0].value.[1].arg[0].value", fallback: "20"), text: $timeCode).lineSpacing(__designTimeFloat("#3509.[1].[6].property.[0].[0].arg[0].value.[4].arg[0].value.[1].modifier[0].arg[0].value", fallback: 5.0))
                
            }
            VStack {
                Toggle(__designTimeString("#3509.[1].[6].property.[0].[0].arg[0].value.[5].arg[0].value.[0].arg[0].value", fallback: "Cartridge State"), isOn: $cartridgeState)
    

                
            }
        })
    #sourceLocation()
    }
}

import struct GattServerSimulator.ContentView
import struct GattServerSimulator.ContentView_Previews