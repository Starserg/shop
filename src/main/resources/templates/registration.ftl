<#import "parts/common.ftl" as c>
<@c.page>
    <#include "parts/nav.ftl">
    <div>
        <h4>${message?if_exists}</h4>
    </div>
<form method="post" action="/registration">
    <label for="emailInput">email:</label>
    <input type="email" name="email" id="emailInput" placeholder="email">
    <br>
    <label for="nickname">nickname:</label>
    <input type="text" name="nickname" id="nickname" placeholder="nickname">
    <br>
    <label for="name">fio:</label>
    <input type="text" name="name" id="name" placeholder="fio">
    <br>
    <label for="password">password:</label>
    <input type="password" name="password" id="password" placeholder="password">
    <br>
    <input type="hidden" name="_csrf" value="${_csrf.token}"/>
    <input type="submit" value="registry">
</form>


</@c.page>