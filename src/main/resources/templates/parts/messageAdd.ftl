<#include "security.ftl">

<#if isEditor>
    <a class="btn btn-success" data-toggle="collapse" href="#collapseExample" role="button" aria-expanded="false" aria-controls="collapseExample">
    Добавить статью
</a>

<div class="collapse" id="collapseExample">

    <div class="form-group mt-3">
        <form method="post" enctype="multipart/form-data">
             <div class="form-group">
                <input type="text" class="form-control" name="tag" placeholder="Введите Заголовок">
             </div>

            <div class="form-group">
            <textarea type="text" cols="30" rows="10" name="text" class="form-control" placeholder="Введите текст"></textarea>
            </div>


            <div class="form-group">
                <div class="custom-file">
                    <input type="file" name="file" id="customFile">
                    <label class="custom-file-label" for="customFile">Выберите изображение</label>
                </div>
            </div>
            <input type="hidden" name="_csrf" value="${_csrf.token}" />
            <input type="hidden" name="id" value="<#if message??>${message.id}</#if>" />
            <div class="form-group">
                <button type="submit" class="btn btn-success">Добавить</button>
            </div>
        </form>
    </div>
</div>
</#if>