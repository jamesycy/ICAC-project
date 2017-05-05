$(document).ready(function(){

  if (localStorage.getItem("play_count") != null) {
    $('#counts').html("你是第" + localStorage.getItem("play_count") + "位訪客");
  }
  else {
    $('#counts').html();
  }


  $(".left-wrap").click(function(){
    document.location.href = "games.html"
  });

  $(".mid-wrap").click(function(){
    document.location.href = "ICAC/start.html"
  });

  $(".right-wrap").click(function(){
    document.location.href = "Website/tc/index.html"
  });

  $(".game-left-wrap").click(function(){
    document.location.href = "Game/game1.html"
  });

  $(".game-right-wrap").click(function(){
    document.location.href = "Game/game2.html"
  });

  $('.count').one('click', function(){
    var n = localStorage.getItem('play_count');
    if (n === null) {
        n = 0;
    }
    else {
      n++;
    }
    localStorage.setItem("play_count", n);
  });

});
