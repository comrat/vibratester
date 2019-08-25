Object {
	vibrate(duration): {
		window.cordova.exec(function(res) { }, function(err) { log("Failed to vibrate", err) }, "AndroidVibration", "vibrate", [duration]);
	}

	vibrateLooped(pattern): {
		window.cordova.exec(function(res) { }, function(err) { log("Failed to vibrate", err) }, "AndroidVibration", "vibrateWithPattern", [pattern, 1]);
	}

	cancel: {
		window.cordova.exec(function(res) { }, function(err) { log("Failed to cancel", err) }, "AndroidVibration", "cancel", []);
	}
}
