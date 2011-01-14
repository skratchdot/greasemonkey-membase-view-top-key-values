<cfparam name="url.key" type="string" default="" />

<!--- Declare Error Messages --->
<cfset errorMessages = StructNew() />
<cfset errorMessages.noKeyProvided = "[YOU MUST PROVIDE A KEY]" />
<cfset errorMessages.noKeyExists = "[KEY DOES NOT EXIST IN CACHE]" />

<!--- If no key was provided --->
<cfif Trim(url.key) eq "">
	<cfoutput>#errorMessages.noKeyProvided#</cfoutput>
	<cfabort />
</cfif>

<!--- Show the object if it exists in the cache, else show an error message --->
<cfif cacheKeyExists(url.key)>
	<cftry>
		<cfdump var="#cacheGet(url.key, true)#" />

		<cfcatch>
			<cfoutput>#errorMessages.noKeyExists#</cfoutput>
			<cfabort />
		</cfcatch>
	</cftry>
<cfelse>
	<cfoutput>#errorMessages.noKeyExists#</cfoutput>
	<cfabort />
</cfif>