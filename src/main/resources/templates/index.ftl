<#import "parts/common.ftl" as c>
<@c.page>
<form method="get" action="/greeting">
    <input type="text" name="name">
</form>
<br>
<p>hello ${name?if_exists?html}</p>

<a href="/products">To products</a>
</@c.page>