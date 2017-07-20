# react-native-mic-util

[![Greenkeeper badge](https://badges.greenkeeper.io/yinshuxun/react-native-mic-util.svg)](https://greenkeeper.io/)

useage
``` 
import {
  NativeModules,
  DeviceEventEmitter
} from 'react-native';

var bGNativeModuleExample = NativeModules.BGNativeModuleExample;

bGNativeModuleExample.getNativeClass(name => {
  console.log("nativeClass: ", name);
});

//接收事件 now is only in ios
DeviceEventEmitter.addListener(bGNativeModuleExample.TestEventName, info => {
  console.log(info);
});

```
