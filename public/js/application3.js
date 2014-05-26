 $(document).ready(function () {
     $('<div/>', {'class' : 'extraPerson', html: GetHtml()}).appendTo('.container');
     $('#add_question').click(function () {
           $('<div/>', {'class' : 'extraPerson', html: GetHtml()}).hide().appendTo('#container').slideDown('slow');
     });
 })
 function GetHtml(){
    var len = $('.extraPerson').length;
    var $html = $('.extraPersonTemplate').clone();
    $html.find('[name=firstname]')[0].name="firstname" + len;
    $html.find('[name=lastname]')[0].name="lastname" + len;
    $html.find('[name=gender]')[0].name="gender" + len;
    return $html.html();
}



$(function() {
  var addDiv = $('#addinput');
  var i = $('#addinput p').size() + 1;

    $('#addNew').live('click', function() {
    $('<p><input type="text" id="p_new" size="40" name="p_new_' + i +'" value="" placeholder="I am New" /><a href="#" id="remNew">Remove</a> </p>').appendTo(addDiv);
    i++;

  return false;
  });
