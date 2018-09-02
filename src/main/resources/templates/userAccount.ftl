<#import "parts/common.ftl" as c>
<@c.page>
    <#include "parts/nav.ftl">
<a>ФИО: ${user.name}</a>
<a>логин: ${user.nickname}</a>
<a>e-mail: ${user.email}</a>
</@c.page>