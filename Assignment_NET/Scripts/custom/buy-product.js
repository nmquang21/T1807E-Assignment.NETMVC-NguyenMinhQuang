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
            },
            error: function (XMLHttpRequest, textStatus, errorThrown) {
                console.log("Status: " + textStatus);
                console.log("Error: " + errorThrown);
            } 
        });
    })
    jQuery('.updown-cart').click(function () {
        let status = this.value;
        let quantity = jQuery('.quantity-input').val();
        var product_id = jQuery(this).attr("product-id");
        
        
        jQuery.ajax({
            method: 'post',
            url: '/Buy/UpDownCart',
            data: {
                status: status,
                product_id: product_id,
            },
            success: function (data) {
                //console.log(data)
            },
            error: function (XMLHttpRequest, textStatus, errorThrown) {
                console.log("Status: " + textStatus);
                console.log("Error: " + errorThrown);
            } 
        })
    })
})