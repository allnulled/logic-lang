function decompose(data) {
	var out = "";
	if (typeof data === "string") {
		out += data;
	} else if (data instanceof Array) {
		for (var a = 0; a < data.length; a++) {
			out += decompose(data[a]);
		}
	};
	return out;
};

function passToEmptyStringIfObject(data) {
	if(typeof data === "object") {
		return '"(Passed to empty string)"';
	}
	return data;
}