<#import "parts/common.ftl" as c>
<@c.page>
    <#include "parts/nav.ftl">
<form method="post" action="/registration">
    <label for="emailInput">email:</label>
    <input type="email" name="email" id="emailInput" placeholder="email">
    <br>
    <label for="nameInput">nickname:</label>
    <input type="text" name="nickname" id="nameInput" placeholder="nickname">
    <br>
    <label for="nameInput">fio:</label>
    <input type="text" name="name" id="nameInput" placeholder="fio">
    <br>
    <label for="nameInput">password:</label>
    <input type="password" name="password" id="nameInput" placeholder="password">
    <br>
    <input type="hidden" name="_csrf" value="${_csrf.token}"/>
    <input type="submit" value="registry">
</form>


</@c.page>