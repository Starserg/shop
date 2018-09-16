<#import "parts/common.ftl" as c>
<@c.page>
    <#include "parts/nav.ftl">
<article class="card-body mx-auto">
    <h5>${(message?if_exists)}</h5>
    <h4 class="card-title mt-3 text-center">Заказать</h4>
    <div class="row justify-content-center">
        <div class="col-md-4">
            <div class="card">
                <div class="card-body text-center">
                    <div class="row justify-content-center">
                        <div class="">
                            <img src="/img/${product.imgUrl?if_exists}" width="100%" style="">
                        </div>
                    </div>
                    <h5 class="card-title"><a>${product.name}</a></h5>
                    <p class="card-text">${product.description}</p>
                </div>
                <blockquote class="blockquote mb-0 card-body text-center">
                    <footer class="">
                        <big class="text-muted">
                            ${product.price} Р
                        </big>
                    </footer>
                </blockquote>
                <div class="row justify-content-center text-center">
                    <div class="pb-1">
                        <form action="/makeOrder" method="post" class="form-group">
                            <input class="form-control" type="text" name="address" minlength="5" , maxlength="50"
                                   placeholder="address">
                            <br>
                            <div>
                                <input max="100" min="0" type="number" class="form-control" name="number" value="1">
                                <small>Number of products</small>
                            </div>
                            <input type="hidden" value="${product.id}" name="product">
                            <input type="hidden" name="_csrf" value="${_csrf.token}"/>
                            <input type="submit" class="btn btn-secondary text-light" value="Купить">
                        </form>

                    </div>
                </div>
            </div>
        </div>
    </div>
</article>
</@c.page>