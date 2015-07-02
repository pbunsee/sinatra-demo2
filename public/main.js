
function appendRandomStudent(studentName) {
  $studentDiv = $('<div>' + studentName + '</div>');
  $('#students').append($studentDiv);
}

//this sends a request to /random-user and passes it to
//appendRandomStudent, which sticks it in the DOM
function fetchRandomStudent(){
  //other jQuery ajax functions
  // $.post
  // $.ajax 
  $.get('/random-user', appendRandomStudent);
}

$(function(){
  $('#random').on('click', fetchRandomStudent)
});