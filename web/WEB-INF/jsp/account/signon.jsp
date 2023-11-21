<%@ include file="../common/top.jsp"%>
<div id = "topSignOn"></div>
<div id="catalog">
    <form id="loginForm" action="signOn" method="post">
        <p id="signonTitle">Sign On Form</p>

        <c:if test="${requestScope.signOnMsg != null}">
            <p class="error-message"> <font color="red">${requestScope.signOnMsg}</font> </p>
        </c:if>

        <c:if test="${requestScope.isSame != true}">
            <p class="error-message"><font color="red">${sessionScope.vsignOnMsg}</font></p>
        </c:if>

        <div class="form-field">
            <label for="username">Username:</label>
            <input type="text" id="username" name="username">
        </div>

        <div class="form-field">
            <label for="password">Password:</label>
            <input type="password" id="password" name="password">
        </div>

        <div class="form-field">
            <label for="vCode">VerificationCode:</label>
            <input type="text" id="vCode" name="vCode" size="5" maxlength="4"/>
            <img border="0" src="verificationCode" alt="Verification Code" class="verification-code">
<%--            <a href="signOn"></a>--%>
        </div>

        <input type="submit" class="login-button" value="Login">
    </form>

    <p class="register-prompt">
        Need a user name and password?
        <a href="newAccountForm">Register Now!</a>
    </p>
</div>
<div id = "bottomSignOn"></div>


<%@ include file="../common/bottom.jsp"%>
