Rectangle {
	property string text;
	width: 150;
	height: 50;
	radius: 5;
	color: "#558B2F";

	ClickMixin { }

	Text {
		width: 100%;
		height: 100%;
		verticalAlignment: Text.AlignVCenter;
		horizontalAlignment: Text.AlignHCenter;
		font.pixelSize: 18;
		text: parent.text;
		color: "#fff";
	}
}
