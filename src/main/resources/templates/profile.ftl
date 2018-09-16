<#import "parts/common.ftl" as c>
<@c.page>
    <#include "parts/nav.ftl">

    <div class="container">
        <div class="row">
            <div class="col-md-3 ">
                <div class="list-group ">
                    <a href="#" class="list-group-item list-group-item-action active">Dashboard</a>
                    <a href="#" class="list-group-item list-group-item-action">User Management</a>
                    <a href="#" class="list-group-item list-group-item-action">Used</a>
                    <a href="#" class="list-group-item list-group-item-action">Enquiry</a>
                    <a href="#" class="list-group-item list-group-item-action">Dealer</a>
                    <a href="#" class="list-group-item list-group-item-action">Media</a>
                    <a href="#" class="list-group-item list-group-item-action">Post</a>
                    <a href="#" class="list-group-item list-group-item-action">Category</a>
                    <a href="#" class="list-group-item list-group-item-action">New</a>
                    <a href="#" class="list-group-item list-group-item-action">Comments</a>
                    <a href="#" class="list-group-item list-group-item-action">Appearance</a>
                    <a href="#" class="list-group-item list-group-item-action">Reports</a>
                    <a href="#" class="list-group-item list-group-item-action">Settings</a>


                </div>
            </div>
            <div class="col-md-9">
                <div class="card">
                    <div class="card-body">
                        <div class="row">
                            <div class="col-md-12">
                                <h4>Your Profile</h4>
                                <hr>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-12">
                                <form method="post" action="/user/profile/dashboard">
                                    <div class="form-group row">
                                        <label for="email" class="col-4 col-form-label">Email</label>
                                        <div class="col-8">
                                            <label class="col-form-label">${person.email?html}</label>
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <label for="nickname" class="col-4 col-form-label">Nickname</label>
                                        <div class="col-8">
                                            <label class="col-form-label">${person.nickname?html}</label>
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <label for="name" class="col-4 col-form-label">Name</label>
                                        <div class="col-8">
                                            <input id="name" name="name" placeholder="Name"
                                                   class="form-control here" type="text" value="${person.name?html}">
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <label for="password" class="col-4 col-form-label">New Password</label>
                                        <div class="col-8">
                                            <input id="password" type="password" name="password"
                                                   placeholder="New Password"
                                                   class="form-control here" type="text">
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <div class="offset-4 col-8">
                                            <input type="hidden" name="_csrf" value="${_csrf.token}"/>
                                            <button name="submit" type="submit" class="btn btn-primary">Update My
                                                Profile
                                            </button>
                                        </div>
                                    </div>
                                </form>
                            </div>
                        </div>

                    </div>
                </div>
            </div>
        </div>
    </div>
</@c.page>