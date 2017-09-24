package react.native.camera;

import react.ReactComponent;
import react.native.component.props.*;

@:jsRequire('react-native-camera', 'default')
extern class Camera extends ReactComponentOfProps<{
	> ViewProps,
	?aspect:Aspect,
	?captureMode:CaptureMode,
	?captureTarget:CaptureTarget,
	?captureQuality:CaptureQuality,
	?onBarCodeRead:{type:String, data:String}->Void,
	?barCodeTypes:Array<String>
	
}> {
	static var constants:{
		Aspect:{
			fit:Aspect,
			fill:Aspect,
			stretch:Aspect,
		},
		CaptureMode:{
			still:CaptureMode,
			video:CaptureMode,
		},
		CaptureTarget:{
			cameraRoll:CaptureTarget,
			disk:CaptureTarget,
			temp:CaptureTarget,
		},
		CaptureQuality: {
			high:CaptureQuality,
			medium:CaptureQuality,
			low:CaptureQuality,
			photo:CaptureQuality,
		}
	}
	
	function capture(?options:{}):js.Promise<{
		path:String,
		width:Int,
		height:Int,
		duration:Int,
		size:Int,
	}>;
	
	function stopCapture():js.Promise<Dynamic>;
}

extern abstract Aspect(Dynamic) {}
extern abstract CaptureTarget(Dynamic) {}
extern abstract CaptureMode(Dynamic) {}
extern abstract CaptureQuality(Dynamic) {}

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