<#import "parts/common.ftl" as c>
<@c.page>
    <#include "parts/nav.ftl">

<div>Products:</div>
    <#list products as product>
<div>
    <form method="post" action="/productToCart">
        <img src=${product.imgUrl} height="100">
        <br>
        <a>${product.name}</a>
        <br>
        <input type="hidden" name="productId" value=${product.id}>
        <input type="submit" value="В корзину">
        <br>
        <b>price: ${product.price}</b>
    </form>
</div>
    <#else>
No products
    </#list>
</@c.page>