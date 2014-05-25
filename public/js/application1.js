$(function() {

  var questionCount = 0

  $("#add_question").click(function(e){
    e.preventDefault();
    questionCount++;
    var newQuestion = '<input type="text" name="question_text' + questionCount + '" placeholder="Question ' + questionCount + '"><br />'
    var choiceButton = '<button id="add_choice' + questionCount + '">Add New Choice</button><br /><br />'
    $(this).before(newQuestion + choiceButton)

    var choiceCount = questionCount
    $("#add_choice" + questionCount).click(function(e){
      e.preventDefault();
      choiceCount++;
      var newChoice = '<input type="text" name="choice_text' + questionCount + choiceCount +'" placeholder="Choice '+ questionCount + choiceCount +'"><br />'
      $(this).before(newChoice)
    });
  });
});
