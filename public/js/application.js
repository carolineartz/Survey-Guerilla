$(function() {
  $("#question_set_1").hide();
  $("#choice_set_1").hide();
  $("#show_survey_title").hide();
  $("#form_complete").hide();

  $("#build_survey").click(function(event){
    $("#survey_title_field").hide();
    $("#build_survey").hide();
    var title= $("#survey_title_field").val();
    $('#title_label').append("<span>" + title + "</span>");
    $("#question_set_1").toggle();
  });

  $("#build_question").click(function(event){
    $("#question_field").hide();
    $("#build_question").hide();
    var question= $("#question_field").val();
    $('#question_label_1').append("<span>" + question + "</span>");
  });

  $("#create_survey").submit(function(event){
    event.preventDefault();
    var postData = $("#create_survey").serialize();
    $.ajax({
      type: "POST",
      url: "/title/new",
      data: postData
    })
    .success(function(){
      console.log("ajax is a mother lover")
      // $("#show_survey").show();
      // $("#create_survey").hide();
      // $("#question_form").show();
    });
  });

  // $("#question_form").submit(function(event){
  //   event.preventDefault();
  //   var postData = $("#question_form").serialize();
  //   $.ajax({
  //     type: "POST",
  //     url: "/question/new",
  //     data: postData
  //   })
  //   .success(function(){
  //     console.log("ajax is a mother lover")
  //     $("#show_question").show();
  //     $("#question_form").hide();
  //     $("#choices_form").show();
  //   });
  // });


});

// the #show_survey div shows the survey previous,
// not the current one.
