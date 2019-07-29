<cfset Variables.UserName = "">
<cfset Variables.FirstName = "">
<cfset Variables.LastName = "">
<cfset Variables.Email = "">
<cfset Variables.Id = 0>

 <!---Begin Display---->
<cfoutput>
<cfinclude template="shared/dsp_UserSearchBar.cfm">
 <div style="width:30%;float:none;margin:auto">
 	<cfset Variables.cfspcName="qUsersResult">
	<cfinclude template="cfincludes/IMUserSelect.cfm">
    <table border="1">
    	<thead>
        	<th>
            	First Name
            </th>
            <th>
            	Last Name
            </th>
            <th>
            	Email Address
            </th>     
             <th colspan="2">
            	Actions
            </th>       
        </thead>
        <tbody>
        <cfloop query="qUsersResult">
            <tr>
                <td>#FIRSTNAME#</td>
                <td>#LASTNAME#</td>
                <td>#EMAIL#</td>
                <td><a href="act_UserProfile.cfm?action=Delete&Id=#Id#">Delete</a></td>
                <td><a href="act_UserProfile.cfm?action=Update&Id=#Id#">Update</a></td>
            </tr>
         </cfloop>
        </tbody>
    </table>
    <a href="dsp_UserProfile.cfm">Add a New User</a>
</cfoutput>