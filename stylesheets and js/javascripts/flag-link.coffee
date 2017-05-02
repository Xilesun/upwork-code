jQuery ->
  $('a.js-flag-link').click ->
    $(this).closest('.dropdown-menu').parent().removeClass('open')
