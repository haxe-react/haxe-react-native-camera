package react.native.camera;

import react.ReactComponent;
import react.native.component.props.*;

@:jsRequire('react-native-camera', 'default')
extern class Camera extends ReactComponentOfProps<{
	> ViewProps,
	?onBarCodeRead:{type:String, data:String}->Void,
	?barCodeTypes:Array<String>
}> {}

@:jsRequire('react-native-camera', 'default.constants.BarCodeType')
@:enum extern abstract BarCodeType(String) to String {
	var aztec;
	var code128;
	var code39;
	var code39mod43;
	var code93;
	var ean13;
	var ean8;
	var pdf417;
	var qr;
	var upce;
	var interleaved2of5;
	var itf14;
	var datamatrix;
}