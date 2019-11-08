
$(document).ready(function() {
    $('#time').html(Date());

    $.ajax({
        url: '/lab8/js/data.json',
        type: 'GET',
        success: function(res) {
            res.forEach(function (student) {
                $("#myList").append('<li class="list-group-item">' + student.studentId + " - " + student.firstName + '</li>');
            });
        }
    });

    $('.btn').off('click').on('click',function() {
        $("#myList").append('<li class="list-group-item">' + $('#studentId').val() + " - " + $('#fname').val() + '</li>');
    });
});

