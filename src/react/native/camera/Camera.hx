package react.native.camera;

import react.ReactComponent;
import react.native.component.props.*;

@:jsRequire('react-native-camera', 'default')
extern class Camera extends ReactComponentOfProps<{
	> ViewProps,
	?aspect:Aspect,
	?type:CaptureType,
	?captureMode:CaptureMode,
	?captureTarget:CaptureTarget,
	?captureQuality:CaptureQuality,
	?onBarCodeRead:{type:String, data:String}->Void,
	?barCodeTypes:Array<String>,
	?cropToPreview:Bool,
	?playSoundOnCapture:Bool,
}> {
	function capture(?options:{}):js.Promise<{
		path:String,
		width:Int,
		height:Int,
		duration:Int,
		size:Int,
	}>;
	
	function stopCapture():js.Promise<Dynamic>;
}

@:jsRequire('react-native-camera', 'default.constants.Aspect')
@:enum extern abstract Aspect(Dynamic) {
	@:native('fit') var Fit;
	@:native('fill') var Fill;
	@:native('stretch') var Stretch;
}

@:jsRequire('react-native-camera', 'default.constants.CaptureTarget')
@:enum extern abstract CaptureTarget(Dynamic) {
	@:native('cameraRoll') var CameraRoll;
	@:native('disk') var Disk;
	@:native('temp') var Temp;
}

@:jsRequire('react-native-camera', 'default.constants.CaptureMode')
@:enum extern abstract CaptureMode(Dynamic) {
	@:native('still') var Still;
	@:native('video') var Video;
}

@:jsRequire('react-native-camera', 'default.constants.CaptureQuality')
@:enum extern abstract CaptureQuality(Dynamic) {
	@:native('high') var High;
	@:native('medium') var Medium;
	@:native('low') var Low;
	@:native('photo') var Photo;
	@:native('480p') var _480p;
	@:native('720p') var _720p;
	@:native('1080p') var _1080p;
}

@:jsRequire('react-native-camera', 'default.constants.Type')
@:enum extern abstract CaptureType(Dynamic) {
	@:native('front') var Front;
	@:native('back') var Back;
}

@:jsRequire('react-native-camera', 'default.constants.BarCodeType')
@:enum extern abstract BarCodeType(Dynamic) {
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