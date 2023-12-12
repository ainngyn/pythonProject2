function addToCart(id, name, price) {
    event.preventDefault();

    fetch('/api/add-cart', {
        method: 'POST',
        body: JSON.stringify({
            'id': id,
            'name': name,
            'price': price
        }),
        headers: {
            'Content-Type': 'application/json'
        }
    })
    .then(function (response) {
        console.info(response);
        return response.json();
    })
    .then(function (data) {
        console.info(data);
        let counter = document.getElementById('cartCounter');
        counter.innerText = data.total_quantity;
    })
    .catch(function (error) {
        console.error(error);
    });
}

function pay(){
    if(confirm('Bạn chắc chắn muốn thanh toán không?')){
            fetch('/api/pay', {
            method: 'POST'
        })
        .then(function (response) {

            return response.json();
        })
        .then(function (data) {
            if(data.code ==200)
                location.reload()
        })
        .catch(function (error) {
            console.error(error);
        });

    }
}
