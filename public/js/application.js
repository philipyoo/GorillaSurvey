$(document).ready(function() {

  $('#new-survey-button').on('click', function(e){
    e.preventDefault();
    console.log("button clicked")
    $(this).fadeOut();
     var url = $(this).attr("href")
     var getSurveyForm = $.ajax({
      method: 'get',
      url: url,
      dataType: "json"
    });
     getSurveyForm.done(function(response){
       console.log("this worked")
       $('.new_survey').append(response);


     })
     getSurveyForm.fail(function(response){
       console.log("this is didn't work")
       console.log(response)
     })
  })

  $('.survey-container').on('submit', 'form', function(e){
    e.preventDefault();
     var url = $(this).attr("href");
    var postSurveyForm = $.ajax({
    method: 'post',
    url: url,
    dataType: "json",
    data: $(this).serialize()
    })
      postSurveyForm.done(function(response){
        console.log("YOU ARE THE ONE MORPHEUS")
        console.log(response);

     })
  });

  $('.magic').on('click', function(e){
    $('.login').addClass('hidden');
    $('.signup').removeClass('hidden');

  })


});


