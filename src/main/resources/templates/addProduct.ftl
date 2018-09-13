<#import "parts/common.ftl" as c>
<@c.page>
    <#include "parts/nav.ftl">
    <div class="row justify-content-center">
        <div class="col-6 ">
            <div class="container text-center">
                <form method="post" action="/addProduct" class="add-product-form" enctype="multipart/form-data">
                    <div class="form-group">
                        <label for="product-name">Name</label>
                        <input name="name" type="text" class="form-control" id="product-name" placeholder="name">
                    </div>
                    <div class="form-group">
                        <label for="product-description">description</label>
                        <textarea name="description" class="form-control" id="product-description"
                                  placeholder="description"></textarea>
                    </div>
                    <div class="form-group">
                        <label for="product-description">Price</label>
                        <input name="price" type="number" class="form-control" id="product-description"
                               placeholder="price">
                    </div>
                    <div class="form-group">
                        <label for="product-image">Image</label>
                        <input name="file" type="file" class="form-control" id="product-image" placeholder="image">
                    </div>
                    <input type="hidden" name="_csrf" value="${_csrf.token}"/>
                    <button type="submit" class="btn btn-primary">Submit</button>
                </form>
            </div>
        </div>
    </div>
</@c.page>
