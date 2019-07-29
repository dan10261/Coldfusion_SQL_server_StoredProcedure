<cfstoredproc procedure="IMUserDelete" datasource="#Variables.db#">
	<cftry>
        <cfprocparam cfsqltype="cf_sql_integer"  type="inout" variable="Id" value="#Variables.Id#">
    <cfcatch type="any">
    	<cfset TxtErr="Yes">
        <cfset ErrMsg = cfcatch.Message>
    	<cfoutput>cannot save user due to #cfcatch.detail# #cfcatch.Message#</cfoutput><cfdump var="#cfcatch#"><cfabort>
    </cfcatch>
    </cftry>
</cfstoredproc>