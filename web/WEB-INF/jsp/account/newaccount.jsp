<%@ include file="../common/top.jsp"%>

<p>${sessionScope.messageAccount}</p>
<div id="Catalog">
    <form action="newAccount" method="post">
        <h3>User Information</h3>

        <table>
            <tr>
                <td>User ID:</td>
                <td><input type="text" name="username"/></td>
            </tr>
            <tr>
                <td>New password:</td>
                <td><input type="text" name="password" /></td>
            </tr>
            <tr>
                <td>Repeat password:</td>
                <td><input type="text" name="repeatedPassword" /></td>
            </tr>
            <tr>
                <td>VerificationCode:</td>
                <td>
                    <input type="text" name="vCode" size="5" maxlength="4"/>
                    <a href="newAccount"><img border="0" src="verificationCode" name="checkcode"></a>
                </td>
            </tr>
        </table>

        <%@ include file="includeAccountFields.jsp"%>
        <input type="submit" name="newAccount" value="Save Account Information" />
    </form>
</div>

<%@ include file="../common/bottom.jsp"%>