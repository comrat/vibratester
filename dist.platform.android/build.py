{% extends "build.py" %}
{% block plugins %}
	os.system('cordova plugin add https://github.com/comrat/cordova-plugin-android-vibration')
{% endblock %}
