<#import "parts/common.ftl" as c>
<@c.page>
    <#include "parts/nav.ftl">
    <div>
        <h4>${message?if_exists}</h4>
    </div>
   <div class="card bg-light mx-auto" style="max-width: 400px; min-height: 400px">
       <article class="card-body mx-auto">
           <h5>${(message?if_exists)}</h5>
           <form method="post" action="/registration">
               <div class="form-group input-group">
                   <input MINLENGTH="6" MAXLENGTH="50" class="form-control" type="email" name="email" id="emailInput"
                          placeholder="email">
               </div>
               <div class="form-group input-group">
                   <input MINLENGTH="8" MAXLENGTH="50" class="form-control" type="text" name="nickname" id="nickname"
                          placeholder="nickname">
               </div>
               <div class="form-group input-group">
                   <input MINLENGTH="8" MAXLENGTH="50" class="form-control" type="text" name="name" id="name"
                          placeholder="fio">
               </div>
               <div class="form-group input-group">
                   <input MINLENGTH="8" MAXLENGTH="50" class="form-control" type="password" name="password"
                          id="password" placeholder="password">
               </div>
               <div class="form-group input-group">
                   <input type="hidden" name="_csrf" value="${_csrf.token}"/>
                   <input class="form-control btn btn-primary" type="submit" value="registry">
               </div>
           </form>
       </article>
   </div>

</@c.page>