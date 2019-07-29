<cfset Variables.FirstName = "">
<cfset Variables.LastName = "">
<cfset Variables.Email = "">
<cfset Variables.UserName = "">
<cfset Variables.Password = "">

<cfif IsDefined("URL.PrevErr") and Len(URL.PrevErr) gt 0>
	User cannot be saved due to error.<br/>
</cfif>
 <cfif IsDefined("URL.action") and Ucase(URL.action) eq "UPDATE" and IsDefined("URL.Id")>
 	<cfset Variables.Id = URL.Id>
    <cfset Variables.cfspcName="qUser">
 	<cfinclude template="cfincludes/IMUserSelect.cfm">
    <cfif IsDefined("qUser")>
    	<cfset Variables.FirstName = qUser.FirstName>
		<cfset Variables.LastName = qUser.LastName>
        <cfset Variables.Email = qUser.Email>
        <cfset Variables.UserName = qUser.UserName>
        <cfset Variables.Password = qUser.Password>
    </cfif>
    
 </cfif>
 
 <!---Begin Display---->
 <div style="width:30%;float:none;margin:auto">
     	<cfinclude template="shared/dsp_UserForm.cfm">
     <a href="dsp_SearchUsers.cfm">All Users</a>
  </div>