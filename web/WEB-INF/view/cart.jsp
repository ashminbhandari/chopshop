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
    <p class="lead">Here are the items you added to your cart.</p>
    <hr class="my-4">
</div>
<form method="POST" action="add-to-cart">
    <table class="table table-striped table-dark">
        <thead>
        <tr>
            <th scope="col">#</th>
            <th scope="col">Product ID</th>
        </tr>
        </thead>
        <tbody>
        <tr>
            <th scope="row">${cartItems[0].id}</th>
            <td>${cartItems[0].productId}</td>
        </tr>
        <tr>
        <tr>
            <th scope="row">${cartItems[1].id}</th>
            <td>${cartItems[1].productId}</td>
        </tr>
        </tr>
        <tr>
        <tr>
            <th scope="row">${cartItems[2].id}</th>
            <td>${cartItems[2].productId}</td>
        </tr>
        </tr>
        <tr>
        <tr>
            <th scope="row">${cartItems[3].id}</th>
            <td>${cartItems[3].productId}</td>
        </tr>
        </tr>
        <tr>
        <tr>
            <th scope="row">${cartItems[4].id}</th>
            <td>${cartItems[4].productId}</td>
        </tr>
        </tr>
        <tr>
        <tr>
            <th scope="row">${cartItems[5].id}</th>
            <td>${cartItems[5].productId}</td>
        </tr>
        </tr>
        <tr>
        <tr>
            <th scope="row">${cartItems[6].id}</th>
            <td>${cartItems[6].productId}</td>
        </tr>
        </tr>
        <tr>
        <tr>
            <th scope="row">${cartItems[7].id}</th>
            <td>${cartItems[7].productId}</td>
        </tr>
        </tr>
        </tbody>
    </table>
    </tbody>
    </table>
</form>
</body>
</html>
