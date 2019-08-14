{% extends "build.py" %}
{% block plugins %}
	os.system('cordova plugin add cordova-plugin-vibration')
{% endblock %}
