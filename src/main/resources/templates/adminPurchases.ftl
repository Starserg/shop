<#import "parts/common.ftl" as c>
<@c.page>
    <#include "parts/nav.ftl">
    <div class="row justify-content-center">
        <div class="col-md-12">
            <table class="table table-info table-striped  table-hover mx-auto" style="max-width: 800px">
                <thead class="table-dark">
                <tr>
                    <th>№</th>
                    <th>id</th>
                    <th>email</th>
                    <th>Дата заказа</th>
                    <th>Адрес доставки</th>
                    <th>Продукты</th>
                    <th>Количество</th>
                    <th>Цена</th>
                </tr>
                </thead>
                <tbody>
                    <#list histories as history>
                    <tr>
                        <td>${history?counter}</td>
                        <td>${history.id}</td>
                        <td>${history.user.email}</td>
                        <td>${history.date?date}</td>
                        <td>${history.address?html}</td>
                        <td>${history.product.name}</td>
                        <td>${history.number}</td>
                        <td>${history.price}</td>
                    </tr>
                    </#list>
                </tbody>
            </table>
        </div>
    </div>
</div>
</@c.page>