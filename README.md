# react-native-mic-util

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
