// ==UserScript==
// @name           Membase - View Top Key Values
// @namespace      https://github.com/skratchdot/greasemonkey-membase-view-top-key-values
// @description    A GreaseMonkey script that linkifies the list of top keys in the Membase admin console.
// @include        http://localhost:8091/index.html*
// ==/UserScript==

// This URL should be configured to point to a webpage that can display Membase key values based on URL parameters.
var urlPrefix = 'http://localhost:8080/viewCache.cfm?key=';

// Only works if Membase Console is using jQuery
if( typeof unsafeWindow.jQuery !== 'undefined' ) {

	// We can use the shorthand notation of jQuery
	var $ = unsafeWindow.jQuery;

	// Modify the top_keys_template used by the Membase Admin page
	$('#top_keys_template table tbody tr td:first').html('<a href="' + urlPrefix + '{%= h(this.name) %}">{%= h(this.name) %}</a>');
}