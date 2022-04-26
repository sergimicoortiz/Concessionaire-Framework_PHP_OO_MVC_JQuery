function category_search() {

    $('#category_search').empty();
    $('<option></option>').attr('selected', true).attr('disabled', true).appendTo('#brand_search').html('<span data-tr="brand_name">Brand</span><span>: </span>');
    $('<option></option>').attr('selected', true).attr('disabled', true).appendTo('#category_search').html('<span data-tr="category_name">Category</span><span>: </span>');

    ajaxPromise(friendlyURL('?page=search&op=get_categories'), 'GET', 'JSON')
        .then(function (data) {
            //console.log(data);
            data.forEach(category => {
                $('<option></option>').attr('value', category['category_name']).appendTo('#category_search').html(category['category_name']);
            });
        }).catch(function () {
            console.log('catch category_search');
            /* var callback = friendlyURL('?module=error&op=view&param=503&param2=search_category_error_ajax');
            window.location.href = callback; */
        })//end ajaxPrimise
}//end category

function brand_search(category_name) {

    $('#brand_search').empty();
    $('<option></option>').attr('selected', true).attr('disabled', true).appendTo('#brand_search').html('<span data-tr="brand_name">Brand</span><span>: </span>');

    ajaxPromise(friendlyURL('?page=search&op=get_brands'), 'POST', 'JSON', { 'category': category_name })
        .then(function (data) {
            //console.log(data);
            data.forEach(brand => {
                $('<option></option>').attr('value', brand['brand_name']).appendTo('#brand_search').html(brand['brand_name']);
            });
        }).catch(function () {
            console.log('catch brand_search');
            /* var callback = friendlyURL('?module=error&op=view&param=503&param2=search_brand_error_ajax');
            window.location.href = callback; */
        })//end ajaxPrimise

}//end brand_search

function keyup() {

    const cat_search = $('#category_search').val();
    const brand_search = $('#brand_search').val();
    const city_search = $('#city_search').val();
    const search = { 'category': cat_search, 'brand': brand_search, 'city': city_search };

    ajaxPromise(friendlyURL('?page=search&op=get_city'), 'POST', 'JSON', search)
        .then(function (data) {
            //console.log(data);
            $('#autocomplete').empty();
            data.forEach(row => {
                $('<div></div>').appendTo('#autocomplete').html('<span class="search-item" id="' + row.city + '">' + row.city + '</span>');
                $('<br>').appendTo('#autocomplete');
            });
        })
        .catch(function () {
            console.log('catch keyup');
            /* var callback = friendlyURL('?module=error&op=view&param=503&param2=search_city_error_ajax');
            window.location.href = callback; */
        })//end ajaxPrimise
}//end keyup

function search() {
    var search = [];
    var callback = friendlyURL('?page=shop&op=view');
    if ($('#category_search').val() != null) {
        search.push(['cat.category_name', $('#category_search').val()]);
    }//end if category

    if ($('#brand_search').val() != null) {
        search.push(['b.brand_name', $('#brand_search').val()]);
    }//end if category

    if ($('#city_search').val() != '') {
        search.push(['c.city', $('#city_search').val()]);
    }//end if category
    window.localStorage.removeItem('page');
    window.localStorage.setItem('filters', JSON.stringify(search));
    window.location.href = callback;
}

function search_clicks() {
    $('#category_search').on('change', function () {
        $('#city_search').val(null);
        $('#autocomplete').empty();
        const id = $('#category_search').val();
        brand_search(id);
    })//end change

    $('#brand_search').on('change', function () {
        $('#city_search').val(null);
        $('#autocomplete').empty();
    })//end change

    $('#city_search').on('keyup', function () {
        if ($('#city_search').val() != '') {
            keyup();
        } else {
            $('#autocomplete').empty();
        }
    })//end keyup

    $(document).on('click', '#search_button', function () {
        search();
    })//end click search

    $(document).on('click', '.search-item', function () {
        $('#autocomplete').empty();
        const id = this.getAttribute('id');
        $('#city_search').val(id);
    })//end click
}//end search_clicks

$(document).ready(function () {
    category_search();
    search_clicks();
})//end ready