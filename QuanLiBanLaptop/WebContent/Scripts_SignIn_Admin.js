//VALIDATE
//function CheckInput() {
    $(function () {
        $('#formSignIn').validate({
            rules: {
                Username: {
                    required: true,
                    //email: true
                },
                Password: {
                    required: true,
                    minlength: 6
                }
            },
            messages: {
                Username: {
                    required: "Tên Người dùng không được để trống!",
                    //email: "Email không đúng định dạng!",
                },
                Password: {
                    required: "Mật khẩu không được để trống!",
                    minlength: "Mật khẩu phải có ít nhất 6 ký tự!"
                }
            },
            // submitHandler: function (form) {
            //     //code in here
            // }

        });
    })
//}