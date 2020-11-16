<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>The ChopShop</title>
    <!-- Bootstrap -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
          integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
</head>
<body>
<div class="jumbotron">
    <h1 class="display-4">Welcome to the ChopShop!</h1>
    <p class="lead">Quickly chop some products and add it to your cart.</p>
    <hr class="my-4">
    <p>ChopShop is the first online store to provide a 1 second delivery guarantee. Forget Amazon, this is next level!
        Try it now!</p>
</div>
<form method="POST" action="add-to-cart">
    <table class="table table-striped table-dark">
        <thead>
        <tr>
            <th scope="col">#</th>
            <th scope="col">Product Name</th>
            <th scope="col">Product Price ($ USD)</th>
            <th scope="col"><button type="submit" class="btn btn-warning"> + Add selected items to cart </button></th>
        </tr>
        </thead>
        <tbody>
        <tr>
            <th scope="row">${products[0].id}</th>
            <td>${products[0].productName}</td>
            <td>${products[0].productPrice}</td>
            <td>
                <div class="form-check">
                    <input class="form-check-input" type="checkbox" value="${products[0].id}" name="checkOutProduct0">
                </div>
            </td>
        </tr>
        <tr>
            <th scope="row">${products[1].id}</th>
            <td>${products[1].productName}</td>
            <td>${products[1].productPrice}</td>
            <td>
                <div class="form-check">
                    <input class="form-check-input" type="checkbox" value="${products[1].id}" name="checkOutProduct1">
                </div>
            </td>
        </tr>
        <tr>
            <th scope="row">${products[2].id}</th>
            <td>${products[2].productName}</td>
            <td>${products[2].productPrice}</td>
            <td>
                <div class="form-check">
                    <input class="form-check-input" type="checkbox" value="${products[2].id}" name="checkOutProduct2">
                </div>
            </td>
        </tr>
        <tr>
            <th scope="row">${products[3].id}</th>
            <td>${products[3].productName}</td>
            <td>${products[3].productPrice}</td>
            <td>
                <div class="form-check">
                    <input class="form-check-input" type="checkbox" value="${products[3].id}" name="checkOutProduct3">
                </div>
            </td>
        </tr>
        <tr>
            <th scope="row">${products[4].id}</th>
            <td>${products[4].productName}</td>
            <td>${products[4].productPrice}</td>
            <td>
                <div class="form-check">
                    <input class="form-check-input" type="checkbox" value="${products[4].id}" name="checkOutProduct4">
                </div>
            </td>
        </tr>
        <tr>
            <th scope="row">${products[5].id}</th>
            <td>${products[5].productName}</td>
            <td>${products[5].productPrice}</td>
            <td>
                <div class="form-check">
                    <input class="form-check-input" type="checkbox" value="${products[5].id}" name="checkOutProduct5">
                </div>
            </td>
        </tr>
        <tr>
            <th scope="row">${products[6].id}</th>
            <td>${products[6].productName}</td>
            <td>${products[6].productPrice}</td>
            <td>
                <div class="form-check">
                    <input class="form-check-input" type="checkbox" value="${products[6].id}" name="checkOutProduct6">
                </div>
            </td>
        </tr>
        <tr>
            <th scope="row">${products[7].id}</th>
            <td>${products[7].productName}</td>
            <td>${products[7].productPrice}</td>
            <td>
                <div class="form-check">
                    <input class="form-check-input" type="checkbox" value="${products[7].id}" name="checkOutProduct7">
                </div>
            </td>
        </tr>
        </tbody>
    </table>
    </tbody>
    </table>
</form>
</body>
</html>
