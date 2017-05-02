jQuery ->
  $('.js-scroll-div').infinitescroll
    navSelector: ".pagination" # selector for the paged navigation (it will be hidden)
    nextSelector: ".pagination a[rel=next]" # selector for the NEXT link (to page 2)
    itemSelector: ".js-scroll-div .js-scroll-item" # selector for all items you'll retrieve
