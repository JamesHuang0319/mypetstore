function usernameIsExist() {
    var username = $('#username').val();
    $.ajax({
        type: 'GET',
        url: 'http://localhost:8080/mypetstore/usernameCheck?username=' + username,
        dataType: 'json', // 指定期望的响应数据类型为JSON
        success: function(response) {
            processResponse(response);
        },
        error: function(xhr, status, error) {
            console.error("An error occurred: " + error);
        }
    });
}

function processResponse(response) {
    var div1 = $('#usernameMsg');

    // 现在我们需要检查response对象中的status属性
    if (response.status == "Exist") {
        div1.html("<font color='red'>用户名已存在</font>");
    } else {
        div1.html("<font color='green'>用户名可用</font>");
    }
}
