<div class="row my-2">
    <div class="col-12">
        <form method="get" action="/products">
            <div class="input-group">
                <input maxlength="100" name="filter" type="text" class="form-control" placeholder="Поиск"
                       value="${filter?if_exists}"
                       aria-label="Search term"
                       aria-describedby="basic-addon">
                <div class="input-group-append">
                    <input type=submit class="btn btn-outline-secondary" type="button" value="Найти!">
                </div>
            </div>
        </form>
    </div>
</div>