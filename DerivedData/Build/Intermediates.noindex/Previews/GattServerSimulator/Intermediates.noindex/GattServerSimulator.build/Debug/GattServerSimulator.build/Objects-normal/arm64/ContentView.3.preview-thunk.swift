@_private(sourceFile: "ContentView.swift") import GattServerSimulator
import SwiftUI
import SwiftUI

extension ContentView_Previews {
    @_dynamicReplacement(for: previews) private static var __preview__previews: some View {
        #sourceLocation(file: "/Users/lsaippa/projects/mj/GattServerSimulator/GattServerSimulator/ContentView.swift", line: 67)
        AnyView(__designTimeSelection(ContentView(), "#3509.[2].[0].property.[0].[0]"))
    #sourceLocation()
    }
}

extension ContentView {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/lsaippa/projects/mj/GattServerSimulator/GattServerSimulator/ContentView.swift", line: 19)
        AnyView(__designTimeSelection(ScrollView {
            __designTimeSelection(VStack {
                __designTimeSelection(Text(__designTimeString("#3509.[1].[6].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[0].value", fallback: "Batery")).lineSpacing(__designTimeFloat("#3509.[1].[6].property.[0].[0].arg[0].value.[0].arg[0].value.[0].modifier[0].arg[0].value", fallback: 5.0)), "#3509.[1].[6].property.[0].[0].arg[0].value.[0].arg[0].value.[0]")
                
                __designTimeSelection(TextField(__designTimeString("#3509.[1].[6].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value", fallback: "Enter batery..."), text: __designTimeSelection($bateryLevel, "#3509.[1].[6].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[1].value"), onEditingChanged: { (changed) in
                              __designTimeSelection(print("Batery onEditingChanged - \(__designTimeSelection(changed, "#3509.[1].[6].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[2].value.[0].arg[0].value.[1].value.arg[0].value"))"), "#3509.[1].[6].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[2].value.[0]")
                    
                          }), "#3509.[1].[6].property.[0].[0].arg[0].value.[0].arg[0].value.[1]")
                
            }, "#3509.[1].[6].property.[0].[0].arg[0].value.[0]")
            __designTimeSelection(VStack {
                __designTimeSelection(Text(__designTimeString("#3509.[1].[6].property.[0].[0].arg[0].value.[1].arg[0].value.[0].arg[0].value", fallback: "Software Version")).lineSpacing(__designTimeFloat("#3509.[1].[6].property.[0].[0].arg[0].value.[1].arg[0].value.[0].modifier[0].arg[0].value", fallback: 5.0)), "#3509.[1].[6].property.[0].[0].arg[0].value.[1].arg[0].value.[0]")
                
                __designTimeSelection(TextField(__designTimeString("#3509.[1].[6].property.[0].[0].arg[0].value.[1].arg[0].value.[1].arg[0].value", fallback: "20"), text: __designTimeSelection($softwareVersion, "#3509.[1].[6].property.[0].[0].arg[0].value.[1].arg[0].value.[1].arg[1].value")).lineSpacing(__designTimeFloat("#3509.[1].[6].property.[0].[0].arg[0].value.[1].arg[0].value.[1].modifier[0].arg[0].value", fallback: 5.0)), "#3509.[1].[6].property.[0].[0].arg[0].value.[1].arg[0].value.[1]")
                
            }, "#3509.[1].[6].property.[0].[0].arg[0].value.[1]")
            
            __designTimeSelection(VStack {
                __designTimeSelection(Text(__designTimeString("#3509.[1].[6].property.[0].[0].arg[0].value.[2].arg[0].value.[0].arg[0].value", fallback: "Serial Number")).lineSpacing(__designTimeFloat("#3509.[1].[6].property.[0].[0].arg[0].value.[2].arg[0].value.[0].modifier[0].arg[0].value", fallback: 5.0)), "#3509.[1].[6].property.[0].[0].arg[0].value.[2].arg[0].value.[0]")
                
                __designTimeSelection(TextField(__designTimeString("#3509.[1].[6].property.[0].[0].arg[0].value.[2].arg[0].value.[1].arg[0].value", fallback: "20"), text: __designTimeSelection($serialNumber, "#3509.[1].[6].property.[0].[0].arg[0].value.[2].arg[0].value.[1].arg[1].value")).lineSpacing(__designTimeFloat("#3509.[1].[6].property.[0].[0].arg[0].value.[2].arg[0].value.[1].modifier[0].arg[0].value", fallback: 5.0)), "#3509.[1].[6].property.[0].[0].arg[0].value.[2].arg[0].value.[1]")
                
            }, "#3509.[1].[6].property.[0].[0].arg[0].value.[2]")
            __designTimeSelection(VStack {
                __designTimeSelection(Text(__designTimeString("#3509.[1].[6].property.[0].[0].arg[0].value.[3].arg[0].value.[0].arg[0].value", fallback: "Temperature")).lineSpacing(__designTimeFloat("#3509.[1].[6].property.[0].[0].arg[0].value.[3].arg[0].value.[0].modifier[0].arg[0].value", fallback: 5.0)), "#3509.[1].[6].property.[0].[0].arg[0].value.[3].arg[0].value.[0]")
                
                __designTimeSelection(TextField(__designTimeString("#3509.[1].[6].property.[0].[0].arg[0].value.[3].arg[0].value.[1].arg[0].value", fallback: "20"), text: __designTimeSelection($temperature, "#3509.[1].[6].property.[0].[0].arg[0].value.[3].arg[0].value.[1].arg[1].value")).lineSpacing(__designTimeFloat("#3509.[1].[6].property.[0].[0].arg[0].value.[3].arg[0].value.[1].modifier[0].arg[0].value", fallback: 5.0)), "#3509.[1].[6].property.[0].[0].arg[0].value.[3].arg[0].value.[1]")
                
            }, "#3509.[1].[6].property.[0].[0].arg[0].value.[3]")
            __designTimeSelection(VStack {
                __designTimeSelection(Text(__designTimeString("#3509.[1].[6].property.[0].[0].arg[0].value.[4].arg[0].value.[0].arg[0].value", fallback: "Time code")).lineSpacing(__designTimeFloat("#3509.[1].[6].property.[0].[0].arg[0].value.[4].arg[0].value.[0].modifier[0].arg[0].value", fallback: 5.0)), "#3509.[1].[6].property.[0].[0].arg[0].value.[4].arg[0].value.[0]")
                
                __designTimeSelection(TextField(__designTimeString("#3509.[1].[6].property.[0].[0].arg[0].value.[4].arg[0].value.[1].arg[0].value", fallback: "20"), text: __designTimeSelection($timeCode, "#3509.[1].[6].property.[0].[0].arg[0].value.[4].arg[0].value.[1].arg[1].value")).lineSpacing(__designTimeFloat("#3509.[1].[6].property.[0].[0].arg[0].value.[4].arg[0].value.[1].modifier[0].arg[0].value", fallback: 5.0)), "#3509.[1].[6].property.[0].[0].arg[0].value.[4].arg[0].value.[1]")
                
            }, "#3509.[1].[6].property.[0].[0].arg[0].value.[4]")
            __designTimeSelection(VStack {
                __designTimeSelection(Toggle(__designTimeString("#3509.[1].[6].property.[0].[0].arg[0].value.[5].arg[0].value.[0].arg[0].value", fallback: "Cartridge State"), isOn: __designTimeSelection($cartridgeState, "#3509.[1].[6].property.[0].[0].arg[0].value.[5].arg[0].value.[0].arg[1].value")), "#3509.[1].[6].property.[0].[0].arg[0].value.[5].arg[0].value.[0]")
    

                
            }, "#3509.[1].[6].property.[0].[0].arg[0].value.[5]")
        }, "#3509.[1].[6].property.[0].[0]"))
    #sourceLocation()
    }
}

import struct GattServerSimulator.ContentView
import struct GattServerSimulator.ContentView_Previews