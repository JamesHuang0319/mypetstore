$(document).ready(function() {
    $("input[id='quantity']").each(function() {
        $(this).on('change', function() {
            var itemId = $(this).attr('name');
            var quantity = $(this).val();

            $.ajax({
                type: 'POST',
                url: 'http://localhost:8080/mypetstore/updateCartQuantityAJAX',
                data: {
                    itemId: itemId,
                    quantity: quantity
                },
                success: function(response) {
                    // 可能需要更新页面上的总价
                    console.log('Cart updated successfully');
                    console.log(itemId +": " + quantity);
                    if (response.status === 'success') {
                        var itemsTotal = response.itemsTotal;
                        for (var i = 0; i < itemsTotal.length; i++) {
                            var itemId = itemsTotal[i].itemId;
                            var total = itemsTotal[i].total;
                            // 更新页面上对应项目的总价显示
                            $("input[name='" + itemId + "']").closest('tr').find('.item-total').text(total);
                        }
                    }
                },
                error: function(error) {
                    console.log('Error updating cart: ' + error);
                }
            });
        });
    });
});


