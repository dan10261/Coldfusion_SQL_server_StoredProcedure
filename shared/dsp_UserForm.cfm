<cfoutput>
	<fieldset>
        <legend>User Profile</legend>
        <form id="UserForm" action="act_UserProfile.cfm" method="post">
            First Name:<input type="text" name="FirstName" id="FirstName" value="#Variables.FirstName#"/><br/>
            Last Name: <input type="text" name="LastName" id="LastName" value="#Variables.LastName#"/><br/>
            Email: <input type="text" name="Email" id="Email" value="#Variables.Email#"/><br/>
            User Name: <input type="text" name="UserName" id="UserName" value="#Variables.UserName#"/><br/>
            Password: <input type="text" name="Password" id="Password" value="#Variables.Password#"/><br/>
            <cfif IsDefined("URL.action") and Ucase(URL.action) eq "UPDATE" and IsDefined("URL.Id")>
                <input type="hidden" name="Id" value="#Variables.Id#"/>
                 <input type="submit" value="Update User"/><br/>
            <cfelse>
                <input type="submit" value="Insert User"/><br/>
            </cfif>       
        </form>	
      </fieldset>
</cfoutput>