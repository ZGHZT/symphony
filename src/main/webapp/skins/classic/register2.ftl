<#include "macro-head.ftl">
<!DOCTYPE html>
<html>
    <head>
        <@head title="${symphonyLabel} - ${registerLabel}">
        <meta name="description" content="${registerLabel} ${symphonyLabel}"/>
        </@head>
        <link type="text/css" rel="stylesheet" href="/css/index${miniPostfix}.css?${staticResourceVersion}" />
    </head>
    <body>
        <#include "header.ftl">
        <div class="main">
            <div class="wrapper register content-reset">
                <div class="form">
                    <table cellpadding="0" cellspacing="0">
                        <tbody>
                            <tr>
                                <td width="70">
                                    <label for="userName">${userNameLabel}</label>
                                </td>
                                <td width="165">
                                    <input type="text" id="userName" value="${user.userName}" readonly="readonly" />
                                    <span style="left: 275px; top: 14px;"></span>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <label for="userEmail">${emailLabel}</label>
                                </td>
                                <td>
                                    <input type="text" id="userEmail" value="${user.userEmail}" readonly="readonly" />
                                    <span style="left:275px;top:68px;"></span>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <label for="userPassword">${passwordLabel}</label>
                                </td>
                                <td>
                                    <input id="userPassword"  type="password" />
                                    <span style="left:275px;top:121px;"></span>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <label for="confirmPassword">${userPasswordLabel2}</label>
                                </td>
                                <td>
                                    <input id="confirmPassword" type="password" />
                                    <span style="left:275px;top:174px;"></span>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <label for"userAppRole">${roleLabel}</label>
                                </td>
                                <td>
                                    <label><input name="userAppRole" type="radio" value="0" checked="checked" />&nbsp;&nbsp;${programmerLabel}</label>
                                    <label>&nbsp;&nbsp;&nbsp;&nbsp;<input name="userAppRole" type="radio" value="1" />&nbsp;&nbsp;${designerLabel}</label>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="2" align="right">
                                    <span id="registerTip" style="top: 199px; right: 71px;"></span>
                                    <button class="green" onclick="Register.register2()">${registerLabel}</button>
                                    <input id="referral" type="hidden" value="${referral}">
                                    <input id="userId" type="hidden" value="${user.oId}">
                                </td>
                            </tr>
                        </tbody>
                    </table>
                </div>
                <div class="intro fn-flex-1">
                    ${introLabel}
                </div>
            </div>
        </div>
        <#include "footer.ftl">
        <script type="text/javascript" src="/js/register${miniPostfix}.js?${staticResourceVersion}"></script>
        <script type="text/javascript" src="/js/lib/md5.js"></script>
        <script>
                                        Register.init2();
                                        Label.confirmPwdErrorLabel = "${confirmPwdErrorLabel}";
        </script>
    </body>
</html>
