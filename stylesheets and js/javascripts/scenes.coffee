# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
jQuery ->
  $('.scene-list').on 'change', 'input[type=checkbox]', (e) ->
    checkbox = $(this)
    productId = checkbox.closest("div.product").attr('id').match(/\d+/g)[0];
    sceneId = checkbox.data('sceneId')
    if checkbox.is(':checked')
      $.ajax {
        url: "/scenes/#{sceneId}/add_product", data: {product_id: productId}, type: 'post',
        error: (data, status) ->
          checkbox.prop('checked', false)
      }
    else
      $.ajax {
        url: "/scenes/#{sceneId}/remove_product", data: {product_id: productId}, type: 'delete',
        error: (data, status) ->
          checkbox.prop('checked', true)
      }
