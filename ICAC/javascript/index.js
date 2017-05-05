$(window).ready(function(){

  $('.around').click(function(){
    document.location.href = '../index.html';
  });

  switch (cur_filename) {
    case "q1.html":
    $("#question").html(questionlist1[questionNum].question);
    $("#answer1").val(questionlist1[questionNum].a1).addClass(questionlist1[questionNum].class1);
    $("#answer2").val(questionlist1[questionNum].a2).addClass(questionlist1[questionNum].class2);
    $("#answer3").val(questionlist1[questionNum].a3).addClass(questionlist1[questionNum].class3);
    $("#answer4").val(questionlist1[questionNum].a4).addClass(questionlist1[questionNum].class4);
      break;

    case "q2.html":
    $("#question").html(questionlist2[questionNum].question);
    $("#answer1").val(questionlist2[questionNum].a1).addClass(questionlist2[questionNum].class1);
    $("#answer2").val(questionlist2[questionNum].a2).addClass(questionlist2[questionNum].class2);
    $("#answer3").val(questionlist2[questionNum].a3).addClass(questionlist2[questionNum].class3);
    $("#answer4").val(questionlist2[questionNum].a4).addClass(questionlist2[questionNum].class4);
      break;

    case "q3.html":
    $("#question").html(questionlist3[questionNum].question);
    $("#answer1").val(questionlist3[questionNum].a1).addClass(questionlist3[questionNum].class1);
    $("#answer2").val(questionlist3[questionNum].a2).addClass(questionlist3[questionNum].class2);
    $("#answer3").val(questionlist3[questionNum].a3).addClass(questionlist3[questionNum].class3);
    $("#answer4").val(questionlist3[questionNum].a4).addClass(questionlist3[questionNum].class4);
      break;
    case "q4.html":
    $("#question").html(questionlist4[questionNum].question);
    $("#answer1").val(questionlist4[questionNum].a1).addClass(questionlist4[questionNum].class1);
    $("#answer2").val(questionlist4[questionNum].a2).addClass(questionlist4[questionNum].class2);
    $("#answer3").val(questionlist4[questionNum].a3).addClass(questionlist4[questionNum].class3);
    $("#answer4").val(questionlist4[questionNum].a4).addClass(questionlist4[questionNum].class4);
      break;
    case "q5.html":
    $("#question").html(questionlist5[questionNum].question);
    $("#answer1").val(questionlist5[questionNum].a1).addClass(questionlist5[questionNum].class1);
    $("#answer2").val(questionlist5[questionNum].a2).addClass(questionlist5[questionNum].class2);
    $("#answer3").val(questionlist5[questionNum].a3).addClass(questionlist5[questionNum].class3);
    $("#answer4").val(questionlist5[questionNum].a4).addClass(questionlist5[questionNum].class4);
      break;
    case "end.html":
      if(localStorage.getItem('pt') == null) {
        $("#end").html("你答對了0題");
      }
      else {
        $("#end").html("你答對了 " + localStorage.getItem('pt') + "題");
      }
      break;
  };

  $(".btn-c").next().attr('src', 'image/tick.png');

  //start Game
  $(".startbtn").click(function(){
    document.location.href = next_page;
    $.playSound("sound/click");
  });

  //Restart Game
  $(".endbtn").click(function(){
    document.location.href = next_page;
    $.playSound("sound/click");
  });

  //Reset points
  if (cur_filename == "start.html") {
    localStorage.removeItem('pt');
  }

  // Wrong Answer
    $(".btn").click(function(){
      $.playSound("sound/click");
      $(this).css("background-color", "orange");
      $(this).next().css("opacity", "1");
      $(".btn-c").next().css("opacity", "1");

      setTimeout(function(){
          document.location.href = next_page;
      }, 1000);

    });

  // Correct Answer
  $(".btn-c").click(function(){
    $(this).next().css("opacity", "1");
    $(this).css("background-color", "orange");
    $.playSound("sound/right");

    setTimeout(function(){
        document.location.href = next_page;
    }, 1000);

  }).one('click', function(){
    var getPoints = localStorage.getItem('pt');
    if (getPoints === null) {
      getPoints = 0;
    }

    getPoints++;

    localStorage.setItem('pt', getPoints);
  });

});//End of document ready

var counts;
var next_page;
var questionNum = Math.floor(Math.random() * 3 + 0);
var cur_filename = location.pathname.substring(location.pathname.lastIndexOf("/") + 1);


var questionlist1 = [
  {"question":"哪些人要遵守《選舉（舞弊及非法行為）條例》？",
   "a1":"A  候選人  ", "class1":"btn",
   "a2":"B  助選成員",  "class2":"btn",
   "a3":"C  選民      ",  "class3":"btn",
   "a4":"D  以上皆是",  "class4":"btn-c"
 },
  {"question":"廉政公署設有多少間分區辦事處？",
   "a1":"A  7間  ",  "class1":"btn-c",
   "a2":"B  8間  ",  "class2":"btn",
   "a3":"C  9間  ",  "class3":"btn",
   "a4":"D  10間", "class4":"btn"
 },
  {"question":"哪一個政府部門負責執行《選舉（舞弊及非法行為）條例？",
   "a1":"A  消防處          ", "class1":"btn",
   "a2":"B  廉政公署  ",  "class2":"btn-c",
   "a3":"C  入境事務處  ", "class3":"btn",
   "a4":"D  警務處      ", "class4":"btn"
 }
];

var questionlist2 = [
  {"question":"《選舉（舞弊及非法行為）條例》適用於哪項選舉？",
   "a1":"A  區議會選舉    ", "class1":"btn",
   "a2":"B  立法會選舉   ",  "class2":"btn",
   "a3":"C  行政長官選舉",  "class3":"btn",
   "a4":"D  以上皆是       ",  "class4":"btn-c"
 },
  {"question":"廉政公署為宣傳「廉潔立法會選舉」舉辦了甚麼活動？",
   "a1":"A  巡迴展覽    ",  "class1":"btn",
   "a2":"B  電台節目   ",  "class2":"btn",
   "a3":"C  法例簡介會",  "class3":"btn",
   "a4":"D  以上皆是   ", "class4":"btn-c"
 },
  {"question":"觸犯《選舉（舞弊及非法行為）條例》中的舞弊行為，最高刑罰是：",
   "a1":"A  終身監禁               ", "class1":"btn",
   "a2":"B  監禁7年及罰款50萬元",  "class2":"btn-c",
   "a3":"C  罰款50,000元      ", "class3":"btn",
   "a4":"D  罰款10,000元             ", "class4":"btn"
 }
];

var questionlist3 = [
  {"question":"觸犯《選舉（舞弊及非法行為）條例》中的非法行為，最高刑罰是：",
   "a1":"A  監禁3年及罰款20萬元", "class1":"btn-c",
   "a2":"B  罰款50,000元         ",  "class2":"btn",
   "a3":"C  罰款10,000元               ",  "class3":"btn",
   "a4":"D  監禁1年                    ",  "class4":"btn"
 },
  {"question":"廉潔選舉查詢熱線電話號碼是：",
   "a1":"A  1083            ",  "class1":"btn",
   "a2":"B  999              ",  "class2":"btn",
   "a3":"C  2920 7878 ",  "class3":"btn-c",
   "a4":"D  25 266 366 ", "class4":"btn"
 },
  {"question":"位於北角的廉政公署舉報中心的辦公時間為：",
   "a1":"A  上午9時至晚上9時  ", "class1":"btn",
   "a2":"B  上午8時至晚上7時",  "class2":"btn",
   "a3":"C  中午12時至下午5時", "class3":"btn",
   "a4":"D  全日24小時            ", "class4":"btn-c"
 }
];

var questionlist4 = [
  {"question":"以下哪一項屬於選舉中的舞弊行為？",
   "a1":"A  明知無權投票卻在選舉中投票    ", "class1":"btn",
   "a2":"B  在選舉中冒充他人投票    ",  "class2":"btn",
   "a3":"C  對選民施用武力誘使該選民投票",  "class3":"btn",
   "a4":"D  以上皆是                             ",  "class4":"btn-c"
 },
  {"question":"廉政公署為推廣廉潔選舉設立的專題網站的網址是：",
   "a1":"A  www.icac.org.hk/elections",  "class1":"btn-c",
   "a2":"B  www.gov.hk        ",  "class2":"btn",
   "a3":"C  www.hko.gov.hk                  ",  "class3":"btn",
   "a4":"D  www.ipd.gov.hk", "class4":"btn"
 },
  {"question":"你可在以下哪個地區找到廉政公署的分區辦事處？",
   "a1":"A  灣仔        ", "class1":"btn",
   "a2":"B  油麻地     ",  "class2":"btn",
   "a3":"C 沙田         ", "class3":"btn",
   "a4":"D  以上皆可", "class4":"btn-c"
 }
];

var questionlist5 = [
  {"question":"根據《選舉（舞弊及非法行為）條例》，任何人如打算為某候選人招致選舉開支，必須事先得到誰人的書面同意？",
   "a1":"A  廉政專員         ", "class1":"btn",
   "a2":"B  總選舉事務主任",  "class2":"btn",
   "a3":"C 該候選人          ",  "class3":"btn-c",
   "a4":"D  民政事務局局長",  "class4":"btn"
 },
  {"question":"如任何人提供利益予某選民，誘使該選民在選舉中投票予某候選人，會干犯《選舉（舞弊及非法行為）條例》中哪一條罪行？",
   "a1":"A  第11條（賄賂選民)            ",  "class1":"btn-c",
   "a2":"B  第13條（對選民施用武力或脅迫手段)",  "class2":"btn",
   "a3":"C 第17條（銷毀或污損選票)",  "class3":"btn",
   "a4":"D  第18條（不當運用選舉捐贈)                ", "class4":"btn"
 },
  {"question":"如任何人對自己的選民登記資格有疑問，應向哪一個政府部門查詢？",
   "a1":"A  廉政公署    ", "class1":"btn",
   "a2":"B  選舉事務處",  "class2":"btn-c",
   "a3":"C 入境事務處 ", "class3":"btn",
   "a4":"D  警務處       ", "class4":"btn"
 }
];

switch ( cur_filename ) {
  case 'start.html':
    next_page = 'q1.html'
    break;
  case 'q1.html':
      next_page = 'q2.html'
    break;
  case 'q2.html':
      next_page = 'q3.html'
    break;
  case 'q3.html':
      next_page = 'q4.html'
    break;
  case 'q4.html':
      next_page = 'q5.html'
    break;
  case 'q5.html':
      next_page = 'end.html'
    break;
  case 'end.html':
      next_page = 'start.html'
    break;
};
