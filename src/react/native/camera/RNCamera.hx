package react.native.camera;

import react.ReactComponent;
import react.native.component.props.*;

@:jsRequire('react-native-camera', 'RNCamera')
extern class RNCamera extends ReactComponentOfProps<{
	> ViewProps,
	?autoFocus:AutoFocus,
	?captureAudio:Bool,
	?flashMode:FlashMode,
	?focusDepth:Float,
	?ratio:String,
	?type:Type,
	?whiteBalance:WhiteBalance,
	?zoom:Float,
	
	?onBarCodeRead:{type:String, data:String}->Void,
	?barCodeTypes:Array<String>,
	?onGoogleVisionBarcodesDetected:{target:Int, barcodes:Array<GoogleBarCode>, type:String}->Void,
	?googleVisionBarcodeType:GoogleBarCodeType,
	
	
}> {
	function takePictureAsync(?options:TakePictureOptions):js.Promise<{
		uri:String,
		width:Int,
		height:Int,
		?base64:String,
		?exif:Dynamic,
	}>;
	
	function recordAsync(?options:RecordOptions):js.Promise<{
		uri:String,
		?codec:VideoCodec,
	}>;
	
	function stopRecording():Void;
}

typedef GoogleBarCode = {
	bounds:{
		size:{height:Float, width:Float},
		origin:{x:Float, y:Float},
	},
	data:String,
	dataRaw:String,
	format:String,
	title:String,
	type:String,
	url:String,
}

typedef TakePictureOptions = {
	?width:Int,
	?quality:Float,
	?base64:Bool,
	?mirrorImage:Bool,
	?exif:Bool,
	?fixOrientation:Bool,
	?forceUpOrientation:Bool,
}

typedef RecordOptions = {
	?quality:VideoQuality,
	?codec:VideoCodec,
	?maxDuration:Float,
	?maxFileSize:Int,
	?mute:Dynamic
}

@:jsRequire('react-native-camera', 'RNCamera.Constants.AutoFocus')
@:enum extern abstract AutoFocus(Dynamic) {
	@:native('on') var On;
	@:native('off') var Off;
}

@:jsRequire('react-native-camera', 'RNCamera.Constants.FlashMode')
@:enum extern abstract FlashMode(Dynamic) {
	@:native('on') var On;
	@:native('off') var Off;
	@:native('auto') var Auto;
	@:native('torch') var Torch;
}

@:jsRequire('react-native-camera', 'RNCamera.Constants.VideoQuality')
@:enum extern abstract VideoQuality(Dynamic) {
	@:native('2160p') var _2160p;
	@:native('1080p') var _1080p;
	@:native('720p') var _720p;
	@:native('480p') var _480p;
	@:native('4:3') var _4_3;
}	

@:jsRequire('react-native-camera', 'RNCamera.Constants.VideoCodec')
@:enum extern abstract VideoCodec(Dynamic) {
	var H264;
	var JPEG;
	var HVEC;
	var AppleProRes422;
	var AppleProRes4444;
}	

@:jsRequire('react-native-camera', 'RNCamera.Constants.Type')
@:enum extern abstract Type(Dynamic) {
	@:native('front') var Front;
	@:native('back') var Back;
}

@:jsRequire('react-native-camera', 'RNCamera.Constants.WhiteBalance')
@:enum extern abstract WhiteBalance(Dynamic) {
	@:native('sunny') var Sunny;
	@:native('cloudy') var Cloudy;
	@:native('shadow') var Shadow;
	@:native('incandescent') var Incandescent;
	@:native('fluorescent') var Fluorescent;
	@:native('auto') var Auto;
}

@:jsRequire('react-native-camera', 'RNCamera.Constants.BarCodeType')
@:enum extern abstract BarCodeType(String) to String {
	@:native('aztec') var Aztec;
	@:native('code128') var Code128;
	@:native('code39') var Code39;
	@:native('code39mod43') var Code39mod43;
	@:native('code93') var Code93;
	@:native('ean13') var Ean13;
	@:native('ean8') var Ean8;
	@:native('pdf417') var Pdf417;
	@:native('qr') var Qr;
	@:native('upce') var Upce;
	@:native('interleaved2of5') var Interleaved2of5;
	@:native('itf14') var Itf14;
	@:native('datamatrix') var Datamatrix;
}

@:jsRequire('react-native-camera', 'RNCamera.Constants.GoogleVisionBarcodeDetection.BarcodeType')
@:enum extern abstract GoogleBarCodeType(Dynamic) {
	var CODE_128;
	var CODE_39;
	var CODE_93;
	var CODABAR;
	var EAN_13;
	var EAN_8;
	var ITF;
	var UPC_A;
	var UPC_E;
	var QR_CODE;
	var PDF417;
	var AZTEC;
	var DATA_MATRIX;
	var ALL;
}

