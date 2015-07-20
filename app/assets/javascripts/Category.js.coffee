jQuery ->
  $('#job_category_id').parent().show()
  category = $('#job_category_id').html()
  $('#job_cursos_id').change ->
    cursos = $('#job_cursos_id :selected').text()
    escaped_cursos = cursos.replace(/([ #;&,.+*~\':"!^$[\]()=>|\/@])/g, '\\$1')
    options = $(category).filter("optgroup[label='#{escaped_cursos}']").html()
    if options
      $('#job_category_id').html(options)
      $('#job_category_id').parent().show()
       $('#job_category_id').parent().hide()
    else
      $('#job_category_id').empty()
      $('#job_category_id').parent().show()


