GreaseMonkey: Membase View Top Key Values
=========================================

### Installation ###

1. Make sure you have installed GreaseMonkey: [https://addons.mozilla.org/en-US/firefox/addon/greasemonkey/](https://addons.mozilla.org/en-US/firefox/addon/greasemonkey/)
2. Now install the "GreaseMonkey: Membase View Top Key Values" script by clicking on the [membase_-_view_top_key_v.user.js](https://github.com/skratchdot/greasemonkey-membase-view-top-key-values/raw/master/membase_-_view_top_key_v.user.js) file above.
3. You will need to configure the script to point to a valid webpage that knows how to display values stored in your Membase installation. To do this, you can change the following line of the script:  
  
         var urlPrefix = 'http://localhost:8080/viewCache.cfm?key=';  
  
4. If you don't already have a valid script to point to, you can create one (or request one).  Currently, I have a ColdFusion (Railo) based script in the www folder of this project.
