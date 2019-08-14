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

		WebItem {
			width: 250;
			height: 50;
			anchors.horizontalCenter: parent.horizontalCenter;
			radius: 5;
			color: "#558B2F";

			Text {
				width: 100%;
				height: 100%;
				verticalAlignment: Text.AlignVCenter;
				horizontalAlignment: Text.AlignHCenter;
				font.pixelSize: 18;
				text: "START";
				color: "#fff";
			}

			onClicked: { navigator.vibrate(durationInput.value) }
		}
	}

	onCompleted: {
		if (device.lockOrientation)
			device.lockOrientation("portrait-primary")
	}
}
