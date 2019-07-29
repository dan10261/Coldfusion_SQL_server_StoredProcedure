<!------Initial variables------->
<cfset Variables.FirstName="">
<cfset Variables.LastName="">
<cfset Variables.Email="">
<cfset Variables.UserName="">
<cfset Variables.Password="">
<cfset Variables.Id =0>

<!----GET Requests----->
<cfif IsDefined("URL.Id") >
	<cfset Variables.Id = URL.Id>
</cfif>

<cfif IsDefined("URL.action") and  "DELETE" eq UCase(URL.action)and IsDefined("URL.Id") >
	<cfinclude template="cfincludes/IMUserDelete.cfm">
     <cflocation url="dsp_SearchUsers.cfm" > 
<cfelseif  IsDefined("URL.action") and "UPDATE" eq UCase(URL.action) and IsDefined("URL.Id") >
	<cflocation url="dsp_UserProfile.cfm?action=UPDATE&Id=#URL.Id#">
<cfelse>
</cfif>


<!------POST Requests------>
<cfif IsDefined("Form.FirstName")>
	<cfset Variables.FirstName = Form.FirstName>
</cfif>
<cfif IsDefined("Form.LastName")>
	<cfset Variables.LastName = Form.LastName>
</cfif>
<cfif IsDefined("Form.Email")>
	<cfset Variables.Email = Form.Email>
</cfif>
<cfif IsDefined("Form.UserName")>
	<cfset Variables.UserName = Form.UserName>
</cfif>
<cfif IsDefined("Form.Password")>
	<cfset Variables.Password = Form.Password>
</cfif>

<cfif IsDefined("Form.Id") and Len(Form.Id) gt 0>
	<cfset Variables.Id = Form.Id>
    <cfinclude template="cfincludes/IMUSERUPDATE.cfm">
    <cflocation url="dsp_SearchUsers.cfm" > 
 <cfelseif IsDefined("Form")>
	<cfinclude template="cfincludes/IMUserInsert.cfm">
    <cflocation url="dsp_SearchUsers.cfm" > 
</cfif>

<!-----Locations---->
<cfif (Isdefined("TxtErr") and TxtErr eq "Yes") or Variables.Id eq 0>
	<cflocation url="dsp_UserProfile.cfm?PrevErr=Y" >
<cfelse>
	 <cflocation url="dsp_SearchUsers.cfm" > 
</cfif>