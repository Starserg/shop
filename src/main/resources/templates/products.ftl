<#import "parts/common.ftl" as c>
<@c.page>

<div>Products:</div>
    <#list products as product>
<div>
    <b>${product.name}</b>
</div>
    <#else>
No products
    </#list>
</@c.page>