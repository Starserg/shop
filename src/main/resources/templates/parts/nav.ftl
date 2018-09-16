<#include "security.ftl">
<div class="container-fluid">
    <div class="row">
        <div class="col-sm-3 text-center text-light px-1 menu">
            <a class="btn btn-secondary btn-header" href="/products">Товары</a>
            <#if isAdmin>
                <ul class="user-menu text-center">
                    <li><a class="nav-link text-light" href="/addProduct">Добавить Товар</a></li>
                </ul>
            </#if>
        </div>
        <div class="col-sm-3 text-center text-light px-1 menu">
            <a class="btn btn-secondary btn-header active menu">Пользователь</a>
        <#if !known>
            <ul class="user-menu text-center">
                <li><a class="" href="/user/profile">Войти</a></li>
                <li><a class="" href="/registration">Регистация</a></li>
            </ul>
        <#else>
            <ul class="user-menu text-center">
                <li><a class="nav-link text-light" href="/user/profile">${email}</a></li>
                <li>
                    <form action="/logout" method="post">
                        <input type="hidden" name="_csrf" value="${_csrf.token}"/>
                        <input class="btn badge-primary btn-sm ml-1" type="submit" value="Sign Out"/>
                    </form>
                </li>
            </ul>
        </#if>
        </div>
        <div class="col-sm-3 text-center text-light px-1 menu">
            <a href="/purchases" class="btn btn-secondary btn-header">Доставка</a>
            <#if isAdmin>
                <ul class="user-menu text-center">
                    <li><a class="" href="/purchases/admin">Все заказы</a></li>
                </ul>
            </#if>
        </div>
        <div class="col-sm-3 text-center text-light px-1"><a class="btn btn-secondary btn-header" href="/greeting">О
            нас</a></div>
    </div>
</div>