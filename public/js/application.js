$(function() {
  $("#question_form").hide();
  $("#choices_form").hide();
  $("#show_survey").hide();
  $("#show_question").hide();

  $("#title_form").submit(function(event){
    event.preventDefault();
    var postData = $("#title_form").serialize();
    $.ajax({
      type: "POST",
      url: "/title/new",
      data: postData
    })
    .success(function(){
      console.log("ajax is a mother lover")
      $("#show_survey").show();
      $("#title_form").hide();
      $("#question_form").show();
    });
  });

  $("#question_form").submit(function(event){
    event.preventDefault();
    var postData = $("#question_form").serialize();
    $.ajax({
      type: "POST",
      url: "/question/new",
      data: postData
    })
    .success(function(){
      console.log("ajax is a mother lover")
      $("#show_question").show();
      $("#question_form").hide();
      $("#choices_form").show();
    });
  });


});

// the #show_survey div shows the survey previous,
// not the current one.
