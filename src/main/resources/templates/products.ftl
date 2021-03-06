<#import "parts/common.ftl" as c>
<@c.page>
    <#include "parts/nav.ftl">
  <div class="container">
      <#include "parts/search.ftl">
      <div>Products:</div>
      <div class="card-columns">
    <#list products as product>
        <div>
            <div class="card">
                <div class="row justify-content-center">
                    <div class="">
                        <img src="/img/${product.imgUrl?if_exists}" width="200" style="">
                    </div>
                </div>
                </divrow>

                <div class="card-body">
                    <h5 class="card-title"><a>${product.name}</a></h5>
                    <p class="card-text">${product.description}</p>
                </div>
                <blockquote class="blockquote mb-0 card-body">

                    <footer class="blockquote-footer">
                        <big class="text-muted">
                            ${product.price} Р
                        </big>
                    </footer>
                </blockquote>
                <div class="row justify-content-center">
                    <div class="pb-1">
                        <a href="/makeOrder/${product.id}" class="btn btn-secondary text-light">Купить</a>
                    </div>
                </div>
            </div>
        </div>
    <#else>
No products
    </#list>
      </div>
  </div>

</@c.page>