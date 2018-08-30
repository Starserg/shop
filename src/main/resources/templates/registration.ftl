<#import "parts/common.ftl" as c>
<@c.page>
    <#include "parts/nav.ftl">
<form method="post" action="/register">
    <label for="emailInput">email:</label>
    <input type="email" name="email" id="emailInput">
    <br>
    <label for="nameInput">name:</label>
    <input type="text" name="name" id="nameInput">
    <br>
    <input type="submit" value="send mail">
</form>


</@c.page>