<template>
    <div>
        <div class="modal">
            <div class="login">
                <div class="login-title">
                    登录私家厨房
                </div>
                <div class="cancel">

                </div>
                <div class="login-username">
                    <input type="text" placeholder="请输入手机号码" class="username-input">
                </div>
                <div class="login-password">
                    <input type="text" placeholder="请输入密码" class="password-input">
                    <div class="password-see-not"></div>
                </div>
                <div class="login-btn">
                    登录
                </div>
                <div class="go-register">
                    还没有账号？
                    <span class="go-register-btn">
                        注册私家厨房
                    </span>
                </div>
            </div>
        </div>
   </div>
</template>
<script>
export default {
    
}
</script>
<style scoped>
    div.modal{
        background: rgba(0,0,0,.5);
        position: fixed;
        top: 0;
        left: 0;
        right: 0;
        bottom: 0;
        z-index: 999;
        overflow-y: scroll;
    }
    .modal .login{
        width: 420px;
        background: #fff;
        box-shadow: 0 2px 6px 0 rgba(0,0,0,.2);
        border-radius: 3px;
        position: absolute;
        top: 50%;
        left: 50%;
        transform: translate(-50%,-50%);
    }
    .modal .login .login-title{
        font-size: 20px;
        color: #272b2c;
        font-weight: 800;
        margin-top: 60px;
        text-align: center;
    }
    .modal .login .cancel{
        position: relative;
        width: 20px;
        height: 20px;
        position: absolute;
        top: 30px;
        right: 24px;
        background: url() no-repeat 50%/20px;
    }
    .modal .login .login-username{
        margin: 36px auto 0;
        width: 268px;
        height: 34px;
        border-bottom: 1px solid #b5b8bb;
        line-height: 34px;
    }
    .login-username .username-input{
        padding: 6px 0;
        width: 100%;
        font-size: 14px;
        color: #272b2c;
        outline: none;
        border:none;
    }
    .modal .login .login-password{
        margin: 36px auto 0;
        width: 268px;
        height: 34px;
        border-bottom: 1px solid #b5b8bb;
        line-height: 34px;
        position: relative;
    }
    .login-password .password-input{
        width: 100%;
        padding: 6px 0;
        height: 20px;
        font-size: 14px;
        color: #272b2c;
        outline: none;
        border:none; 
    }
    .login-password .password-see-not{
        cursor: pointer;
        position: absolute;
        top: 6px;
        right: 0;
        width: 20px;
        height: 20px;
        background: url() no-repeat 50%/20px;
    }
    .modal .login .login-btn{
        cursor: pointer;
        width: 268px;
        height: 40px;
        background: #d2d2d2;
        color: #fff;
        line-height: 40px;
        text-align: center;
        font-weight: 800;
        font-size: 17px;
        margin: 40px auto 0;
        border-radius: 3px;
    }
    .modal .login .go-register{
        width: 100%;
        height: 52px;
        line-height: 52px;
        margin-top: 56px;
        background: #f1f1f1;
        text-align: center;
        color: #b5b8bb;
        font-size: 14px;
        font-weight: 300;
    }
    .go-register .go-register-btn{
        cursor: pointer;
        position: relative;
        color: #272b2c;
        font-weight: 500;
    }
    .go-register .go-register-btn:before{
        content: "";
        position: absolute;
        top: -10px;
        left: -10px;
        right: -10px;
        bottom: -10px;
    }
</style>