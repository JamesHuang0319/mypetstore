<%@ include file="../common/top.jsp"%>
<%
    HttpSession sess = request.getSession();
    String message = (String)sess.getAttribute("messageAccount");

    if(message == ""||message==null){
%>

<%
}else{
%>
<script type="text/javascript">
    alert("<%=message%>");
</script>
<%
        sess.setAttribute("messageAccount", "");
    }
%>
<p>
<div id="Catalog">
    <form action= " " name="info" method="post">
        <h3>User Information</h3>

        <table>
            <tr>
                <td>User ID:</td>
                <td><input type="text" name="username" id="username"  onblur="usernameIsExist();"/>
                    <div id="usernameMsg"></div>
                </td>
            </tr>
            <tr>
                <td>New password:</td>
                <td><input type="text" name="password" value="${sessionScope.account.password}"/></td>
            </tr>
            <tr>
                <td>Repeat password:</td>
                <td><input type="text" name="repeatedPassword" value="${sessionScope.account.repeatedPassword}" /></td>
            </tr>
            <tr>
                <td>VerificationCode:</td>
                <td>
                    <input type="text" name="verificationCode" size="6"/>
                </td>
            </tr>
        </table>

        <%@ include file="includeAccountFields.jsp"%>
        <input type="submit" formaction="newAccount" name="newAccount" value="Save Account Information" />


    </form>


</div>

<%@ include file="../common/bottom.jsp"%>