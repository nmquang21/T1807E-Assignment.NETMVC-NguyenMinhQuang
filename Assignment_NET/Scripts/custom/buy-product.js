jQuery(document).ready(function () {
    let product_id;
    jQuery('.confirm-buy').click(function () {
        product_id = jQuery(this).attr('product-id');
    })
    var btn_buy = jQuery('#accept-buy');
    btn_buy.click(function () {
        jQuery.ajax({
            method: 'Post',
            url: '/Buy/AddToCart',
            data: { product_id: product_id },
            success: function (data, textStatus, xhr) {
                console.log(xhr.status);
                console.log(data);
                jQuery('#cart-quantity').text(data);
            }
        }); 
    })
})