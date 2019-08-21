import '../instruments/show.html.erb'

  $('.item').click(function() {
    $('.item').removeClass('selected');  // Clear previously selected item
    $(this).addClass('selected'); // Set the current item to selected
    var selected_item = $(this).find('.title').text(); // Get the name of clicked item

    // Assign the selected_item to hidden input value, so that it will be posted to us together with the guest details.
    $("input[name='selected_item']").val(selected_item)

  })
