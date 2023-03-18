$(function () {
    function display(bool) {
        if (bool) {
            $("#container").fadeIn(200);
            $("#mainMenu").fadeIn(200);
            $("#deliveryPannel").fadeIn(200);
        } else {
            $("#container").fadeOut(200);
            $("#mainMenu").fadeOut(200);
            $("#deliveryPannel").fadeOut(200);
        }
    }
    function display2(bool) {
        if (bool) {
            $("#container").fadeIn(200);
            $("#protokolPannel").fadeIn(200);
        } else {
            $("#container").fadeOut(200);
            $("#mainMenu").fadeOut(200);
            $("#protokolPannel").fadeOut(200);
        }
    }

    display(false)
    display2(false)

    window.addEventListener('message', function(event) {
        var item = event.data;
        if (item.type === "ui") {
            if (item.status == true) {
                display(true)
                listItemsToBuy(item.itemsToSale)
                $("#currentVehicles").html(item.countCar)
            } else {
                display(false)
            }
        }
        if (item.type === "protokol") {
            if (item.status == true) {
                display2(true)
                $("#nameCustomerProtokol").html(item.customersName)
                $("#typeCustomerProtokol").html(item.customersType)
                $("#priceCustomerProtokol").html("$" + item.customersPrice)

            } else {
                display2(false)
            }
        }
        
    })




    

    function listItemsToBuy(itemList) {
				
        item=itemList;
        itemList=JSON.parse(itemList);
        $('.carMenu').empty();
	
                
        
        
       
        for (i=0;i<itemList.length;i++){

                // console.log(itemList[i].name)
                    
                $(".carMenu").append(`

                <div class="carItemPrefab"  >
                    <h2 id="nameCustomer">${itemList[i].name}</h2>

                    <h3 id="priceCustomer">$${itemList[i].price}</h3>

                    <h4 id="vehicleTypeCustomer">${itemList[i].type}</h4>

                    <div id="radioCanvas">
                    <input type="radio"  class='date-format-switcher' name="itemName"  value="`+itemList[i].id+`">
                    </div>

               
                </div>`);

                

        }
       
                 
    }





   

    document.onkeyup = function (data) {
        if (data.which == 27) {
            $.post('http://dy_carDelivery/exit', JSON.stringify({})); // Wenn man ESC triggert er Callback exit in der Main.lua Client
            return
        }
    };
    

    $("#close").click(function () {
        $.post('http://dy_carDelivery/exit', JSON.stringify({})); 
        return
    })
    
})