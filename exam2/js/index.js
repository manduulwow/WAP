
$(document).ready(function () {
    $('#time').html(Date());
    let jsonArray = []
    jsonArray = JSON.parse(localStorage.getItem('session'));

    $.ajax({
        url: '/exam2/js/data.json',
        type: 'GET',
        success: function (res) {
            res.forEach(function (customer) {
                $("#myList").append('<li class="list-group-item">' + customer['Account Number'] + " | " + customer['Customer Name'] + " | " + customer['Type of Account'] + '</li>');
            });
            jsonArray.forEach(function (customer) {
                $("#myList").append('<li class="list-group-item">' + customer.accountNo + " | " + customer.customerName + " | " + customer.accountType + '</li>');
            });
        }
    });


    $('.btn').off('click').on('click', function () {
        const accountNo = $('#accountNo').val();
        const customerName = $('#fname').val();
        const accountType = $('.form-control option:selected').val();
        if(!/^[0-9]{2}-[0-9]{3}-[0-9]{4}$/.test(accountNo)) {
            alert("Account No format is incorrect Please follow this format xx-xxx-xxx")
            return;
        }
        $("#myList").append('<li class="list-group-item">' + accountNo + " | " + customerName + " | " + accountType + '</li>');
        jsonArray.push({accountNo: accountNo, customerName: customerName, accountType: accountType});
        localStorage.setItem('session', JSON.stringify(jsonArray));
    });
});