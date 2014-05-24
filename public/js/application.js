$(function() {
  // $("#question_set_1").hide();
  // $("#choice_set_1").hide();
  // $("#show_survey_title").hide();
  // $("#form_complete").hide();

  // $("#build_survey").click(function(event){
  //   $("#survey_title_field").hide();
  //   $("#build_survey").hide();
  //   var title= $("#survey_title_field").val();
  //   $('#title_label').append("<span>" + title + "</span>");
  //   $("#question_set_1").toggle();
  // });

  // $("#build_question").click(function(event){
  //   $("#question_field").hide();
  //   $("#build_question").hide();
  //   var question= $("#question_field").val();
  //   $('#question_label_1').append("<span>" + question + "</span>");
  // });

  // $("#create_survey").submit(function(event){
  //   event.preventDefault();
  //   var postData = $("#create_survey").serialize();
  //   $.ajax({
  //     type: "POST",
  //     url: "/title/new",
  //     data: postData
  //   })
  //   .success(function(){
  //     console.log("ajax is a mother lover")
  //   });
  // });
// ___________________________________________________________
// dynamic form practice______________________________________

  var questionCount = 0
  $("#add_question").click(function(e){
    e.preventDefault();
    var htmlNew = "<input id='question_field' type='text' name='question_text' placeholder='Question'>"
    $("#questions")
  });


  $("#add_choice").click(function(e){
    e.preventDefault();
  });


});







// the #show_survey div shows the survey previous,
// not the current one.
