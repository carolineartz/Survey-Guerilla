$(function() {

  var questionCount = 0

  $("#add_question").click(function(e){
    e.preventDefault();
    questionCount++;
    var newQuestion = '<input type="text" name="question_text' + questionCount + '" placeholder="Question ' + questionCount + '"><br />'
    var choiceButton = '<button id="add_choice' + questionCount + '">Add New Choice</button><br /><br />'
    $(this).before(newQuestion + choiceButton)

    var choiceCount = 0
    $("#add_choice" + questionCount).click(function(e){
      e.preventDefault();
      choiceCount++;
      var newChoice = '<input type="text" name="choice_text' + choiceCount + '" placeholder="Choice ' + choiceCount + '"><br />'
      $(this).before(newChoice)
    });
  });
});


    // .append() // adds as first child inside itself
    // .prepend() // adds as last child inside itself
    // .before() // adds in same container, directly before caller
    // .after() // adds in same container, directly after caller

    // To string in JQuery
    // 0 + ""
    // => "0"
    // aka 0 + "hello" => "0hello"
