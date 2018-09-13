<#include "security.ftl">
<div class="container-fluid">
    <div class="row">
        <div class="col-sm-3 text-center text-light px-1"><a class="btn btn-secondary btn-header" href="/products">Товары</a>
        </div>

        <#if !known>
           <div class="col-sm-3 text-center text-light px-1 menu">
            <a class="btn btn-secondary btn-header active menu" href="/registration">Пользователь</a>
            <ul class="user-menu text-center">
                <li><a class="" href="/user/profile">Войти</a></li>
                <li><a class="" href="/registration">Регистация</a></li>
            </ul>
           </div>
        <#else>
             <div class="col-sm-3 text-center text-light px-1 menu">
                 <a class="btn btn-secondary btn-header active menu" href="/registration">Пользователь</a>
                 <ul class="user-menu text-center">
                     <li><a class="nav-link text-light" href="/user/profile">${email}</a></li>
                     <li>
                         <form action="/logout" method="post">
                             <input type="hidden" name="_csrf" value="${_csrf.token}"/>
                             <input class="btn badge-primary btn-sm ml-1" type="submit" value="Sign Out"/>
                         </form>
                     </li>
                 </ul>
             </div>
        </#if>
        <div class="col-sm-3 text-center text-light px-1"><a class="btn btn-secondary btn-header">Доставка</a></div>
        <div class="col-sm-3 text-center text-light px-1"><a class="btn btn-secondary btn-header" href="/greeting">О
            нас</a></div>
    </div>
    </div>