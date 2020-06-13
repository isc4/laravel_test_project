require('./bootstrap');

window.onload = function () {
    let request = new XMLHttpRequest()
    request.open('GET', 'http://blog.test/ajax', true);
    request.setRequestHeader('Content-Type', 'application/x-www-form-url');
    request.send();
    request.onreadystatechange = function () {
        if ((request.readyState) === 4 && (request.status === 200)) {
            let response = request.responseText;
            if (request.responseText !== '') {
                let data = JSON.parse(response)
                document.getElementById('cartCount').innerText = data.length;
                console.log(data)
                let buttons1 = document.querySelectorAll('.add-cart');
                for (let button1 of buttons1) {
                    let id = button1.getAttribute('id')

                    for (let product of data) {
                        if (data.length !== 0 && product.id === Number(id)) {
                            localStorage.setItem(id, 'Удалить')
                            localStorage.setItem(id + 'style', 'btn-danger')
                            button1.textContent = localStorage.getItem(id)
                            button1.classList.add(localStorage.getItem(id + 'style'))
                        } else if (data.length !== 0 && product.id !== Number(id)) {
                            localStorage.setItem(id, 'В корзину')
                            localStorage.setItem(id + 'style', 'btn-success')
                            button1.textContent = localStorage.getItem(id)
                            button1.classList.add(localStorage.getItem(id + 'style'))
                        } else if (data.length === 0) {
                            localStorage.setItem(id, 'В корзину')
                            localStorage.setItem(id + 'style', 'btn-success')
                            button1.textContent = localStorage.getItem(id)
                            button1.classList.add(localStorage.getItem(id + 'style'))
                        }
                    }
                }
            } else {

            }
        }
    }
};


let buttons = document.querySelectorAll('.add-cart');
for (let button of buttons) {
    let idButton = button.getAttribute('id')
    let url = 'cart/toggle/' + idButton
    button.onclick = function () {
        let newRequest = new XMLHttpRequest();
        newRequest.open('GET', url, true);
        newRequest.setRequestHeader('Content-Type', 'application/x-www-form-url');
        newRequest.send();
        newRequest.onreadystatechange = function () {
            if ((newRequest.readyState) === 4 && (newRequest.status === 200)) {
                let response = newRequest.responseText;
                if (newRequest.responseText !== '') {
                    let data = JSON.parse(response)
                    document.getElementById('cartCount').innerText = data.length;

                    if (button.textContent === 'В корзину') {
                        button.classList.toggle('btn-success');
                        button.classList.toggle('btn-danger');
                        button.textContent = 'Удалить';
                        localStorage.setItem(idButton, 'Удалить')
                    } else if (button.textContent === 'Удалить') {
                        button.classList.toggle('btn-danger');
                        button.classList.toggle('btn-success');
                        button.textContent = 'В корзину';
                        localStorage.setItem(idButton, 'В корзину')
                    }

                } else {
                    button.classList.remove('btn-danger');
                    button.classList.add('btn-success');
                    button.textContent = 'В корзину';
                    document.getElementById('cartCount').innerText = ' ';
                }
            }
        }
    }
}
