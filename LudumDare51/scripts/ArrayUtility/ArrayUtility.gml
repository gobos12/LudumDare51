// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function ArrayUtility() {
	function contains(arr, key) {
		var searchArray = arr;
		var findValue = key;
		var i = 0;
		repeat (array_length(searchArray)) {
			if (searchArray[i++] == findValue) 
				return true;
		}
		return false;
	}
}