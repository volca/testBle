## Readme ##

Tested with Xcode 13.3.1

## How to test ##

* Compile and run app with iPhone
* Wait a while and check log message for
```
2022-04-21 14:21:06.564590+0800 testBle[455:42160] adv {
    kCBAdvDataIsConnectable = 1;
    kCBAdvDataRxPrimaryPHY = 0;
    kCBAdvDataRxSecondaryPHY = 0;
    kCBAdvDataServiceData =     {
        FE59 = {length = 11, bytes = 0x1811771e70c918116419c0};
        FF55 = {length = 15, bytes = 0x05056407be12c9701e771118423035};
    };
    kCBAdvDataServiceUUIDs =     (
        FF55,
        FE59
    );
    kCBAdvDataTimestamp = "672214866.560518";
}
2022-04-21 14:21:06.565708+0800 testBle[455:42160] adv {
    kCBAdvDataIsConnectable = 1;
    kCBAdvDataLocalName = "DS_Beacon_1118";
    kCBAdvDataRxPrimaryPHY = 0;
    kCBAdvDataRxSecondaryPHY = 0;
    kCBAdvDataServiceData =     {
        FF55 = {length = 15, bytes = 0x05056407be12c9701e771118423035};
    };
    kCBAdvDataServiceUUIDs =     (
        FF55
    );
    kCBAdvDataTimestamp = "672214866.5610549";
}
2022-04-21 14:22:54.423759+0800 testBle[455:42160] adv {
    kCBAdvDataIsConnectable = 1;
    kCBAdvDataRxPrimaryPHY = 0;
    kCBAdvDataRxSecondaryPHY = 0;
    kCBAdvDataServiceData =     {
        FE59 = {length = 11, bytes = 0x1811771e70c91811641940};
        FF55 = {length = 15, bytes = 0x05056407be12c9701e771118423035};
    };
    kCBAdvDataServiceUUIDs =     (
        FF55,
        FE59
    );
    kCBAdvDataTimestamp = "672214974.372999";
}
2022-04-21 14:22:54.424276+0800 testBle[455:42160] adv {
    kCBAdvDataIsConnectable = 1;
    kCBAdvDataRxPrimaryPHY = 0;
    kCBAdvDataRxSecondaryPHY = 0;
    kCBAdvDataServiceData =     {
        FE59 = {length = 11, bytes = 0x1811771e70c91811641940};
        FF55 = {length = 15, bytes = 0x05056407be12c9701e771118423035};
    };
    kCBAdvDataServiceUUIDs =     (
        FF55,
        FE59
    );
    kCBAdvDataTimestamp = "672214974.3736989";
}
```
