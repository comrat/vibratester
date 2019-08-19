Item {
	anchors.fill: context;

	Device { id: device; }

	Column {
		y: 30;
		width: 100%;
		spacing: 30;

		Row {
			height: 50;
			spacing: 10;
			anchors.horizontalCenter: parent.horizontalCenter;

			Text {
				width: 120;
				text: "Duration(ms):";
				color: "#000";
				font.pixelSize: 18;
				anchors.verticalCenter: parent.verticalCenter;
			}

			NumberInput {
				id: durationInput;
				width: 120;
				height: 100%;
				backgroundColor: "#ccc";
				font.pixelSize: 18;
				value: 1000;
				min: 0;
			}
		}

		Row {
			anchors.horizontalCenter: parent.horizontalCenter;
			spacing: 10;

			TextButton {
				text: "START";

				onClicked: {
					window.cordova.exec(function(res) { }, function(err) { log("Failed to vibrate", err) }, "AndroidVibration", "vibrate", [durationInput.value]);
				}
			}

			TextButton {
				text: "STOP";

				onClicked: { }
			}
		}
	}

	onCompleted: {
		if (device.lockOrientation)
			device.lockOrientation("portrait-primary")
	}
}
