//
//  BLEScan.swift
//  testBle
//
//  Created by yy on 2022/4/21.
//

import SwiftUI
import Foundation
import UIKit
import CoreBluetooth

open class BLEScan: NSObject, CBCentralManagerDelegate, ObservableObject {
    
    // Properties
    private var centralManager: CBCentralManager! = nil
    
    public static let bleServiceUUID = CBUUID.init(string: "FF55")
    
    func startCentralManager() {
        self.centralManager = CBCentralManager(delegate: self, queue: nil)
        print("Central Manager State: \(self.centralManager.state)")
        DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
            self.centralManagerDidUpdateState(self.centralManager)
        }
    }
    
    // Handles BT Turning On/Off
    public func centralManagerDidUpdateState(_ central: CBCentralManager) {
        switch (central.state) {
        case .unsupported:
            print("BLE is Unsupported")
            break
        case .unauthorized:
            print("BLE is Unauthorized")
            break
        case .unknown:
            print("BLE is Unknown")
            break
        case .resetting:
            print("BLE is Resetting")
            break
        case .poweredOff:
            print("BLE is Powered Off")
            break
        case .poweredOn:
            print("")
            //self.centralManager.scanForPeripherals(withServices:nil)
            self.centralManager.scanForPeripherals(withServices: [BLEScan.bleServiceUUID],options: [CBCentralManagerScanOptionAllowDuplicatesKey : true])
            break
        @unknown default:
            print("BLE is Unknown")
        }
        
    }
    
    // Handles the result of the scan
    public func centralManager(_ central: CBCentralManager, didDiscover peripheral: CBPeripheral, advertisementData: [String : Any], rssi RSSI: NSNumber) {
        //print("Peripheral Name: \(String(describing: peripheral.name))  RSSI: \(String(RSSI.doubleValue))")
        
        // We've found it so stop scan
        //self.centralManager.stopScan()
        
        NSLog("adv %@", advertisementData)
        /*
        if let safeName = peripheral.name {
            NSLog("adv %@", advertisementData)

            //self.scannedBLEDevices.append(BLEDevice(id:String(deviceID0), name:safeName, rssi: RSSI.doubleValue))
            //deviceID0 = deviceID0 + 1
        } else {
            //print("no name")
            //self.scannedBLEDevices.append(BLEDevice(id:String(deviceID0), name:"Unknown Device", rssi: RSSI.doubleValue))
            //deviceID0 = deviceID0 + 1
        }
         */
    }
}
