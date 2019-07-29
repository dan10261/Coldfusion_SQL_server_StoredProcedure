<cfstoredproc procedure="IMUserSelect" datasource="#Variables.db#">
	<cftry>    
        <cfprocparam cfsqltype="cf_sql_varchar" type="in" value="#Variables.FirstName#" >
        <cfprocparam cfsqltype="cf_sql_varchar"type="in"  value="#Variables.LastName#" >
        <cfprocparam cfsqltype="cf_sql_varchar" type="in" value="#Variables.UserName#" >
        <cfprocparam cfsqltype="cf_sql_varchar" type="in" value="#Variables.Email#" >
        <cfprocparam cfsqltype="cf_sql_integer" type="in" value="#Variables.Id#" >
       <cfprocresult name = "#Variables.cfspcName#" resultset="1"> 
    <cfcatch type="any">
    	<cfset TxtErr="Yes">
        <cfset ErrMsg = cfcatch.Message>
    	<cfoutput>cannot save user due to #cfcatch.detail# #cfcatch.Message#</cfoutput><cfdump var="#cfcatch#"><cfabort>
    </cfcatch>
    </cftry>
</cfstoredproc>