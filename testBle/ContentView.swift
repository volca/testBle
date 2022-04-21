//
//  ContentView.swift
//  testBle
//
//  Created by yy on 2022/4/21.
//

import SwiftUI
import CoreBluetooth

struct ContentView: View {
    @ObservedObject var bleScan = BLEScan()

    var body: some View {
        Text("Hello, world!")
            .padding()
            .onAppear(perform: startScan)
    }
    
    private func startScan(){
        bleScan.startCentralManager()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
