# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$(document).ready ->
  $(".generic_date_picker").datepicker({
  	format: "yyyy-mm-dd",
  	weekStart: 1
  	startView: 2,
  	autoclose: true
  })
  $('#new_contact').hide()
  #Initially form wil be hidden.
  $('#add_new_contact').click(->
    $('#new_contact').show()
    $('#add_new_contact').hide()
    #Form shows on button click
    return
  )
  $('#new_address').hide()
  #Initially form wil be hidden.
  $('#add_new_address').click(->
    $('#new_address').show()
    $('#add_new_address').hide()
    #Form shows on button click
    return
  )
  $('#new_education').hide()
  #Initially form wil be hidden.
  $('#add_new_education').click(->
    $('#new_education').show()
    $('#add_new_education').hide()
    #Form shows on button click
    return
  )
  $('#new_language').hide()
  #Initially form wil be hidden.
  $('#add_new_language').click(->
    $('#new_language').show()
    $('#add_new_language').hide()
    #Form shows on button click
    return
  )
  $('#new_experience').hide()
  #Initially form wil be hidden.
  $('#add_new_experience').click(->
    $('#new_experience').show()
    $('#add_new_experience').hide()
    #Form shows on button click
    return
  )
  $('.cancel').click(->
    $('#add_new_contact').show()
    $('#add_new_address').show()
    $('#add_new_education').show()
    $('#add_new_language').show()
    $('#add_new_experience').show()
    $('#new_contact').hide()
    $('#new_address').hide()
    $('#new_education').hide()
    $('#new_language').hide()
    $('#new_experience').hide()
    #Form shows on button click
    return
  )
  $("#address_city_id").select2({
    tags: cities,
    maximumSelectionSize: 1
  })
  $("#address_country_id").select2()
  $("#contact_category_id").select2()
  $("#language_name").select2({
  	tags: languages,
  	maximumSelectionSize: 1
  })
  $("#experience_company_id").select2({
  	tags: companies,
  	maximumSelectionSize: 1
  })
  $("#experience_city_id").select2({
  	tags: cities,
  	maximumSelectionSize: 1
  })
  $("#experience_country_id").select2()
  return