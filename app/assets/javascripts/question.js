qa = gon.questions
index = 0

gon.questions.forEach(function(question){
	qa[index] = [question.statement, question.choice1, question.choice2, question.choice3, question.answer]
	index += 1
})

//初期設定
count = 0; //問題番号
q_sel = 3; //選択肢の数
answers = new Array(); //解答記録


//問題表示
$(function quiz() {
  let s,n;
	//問題
  $('#text_question').html(qa[count][0]);
  //選択肢
	s = "";
	for (n=1;n<=q_sel;n++) {
		s += "【<a href='javascript:answer(" + n + ")' id='select'>" + n + "：" + qa[count][n] + "</a>】";
	}
  $('#text_select').html(s);
});


//解答表示
function answer(num) {
	let html = `<div class= "footer-box__choice__s">
                <p id="score-page">
									成績をみる
								</p>
							</div>`
							
	let html2 = `<div class= "footer-box__choice__s">
								<a href="/" id="top-page">
									トップページへ戻る
								</a>
							</div>`
	let s;
	s = ""
	//答え合わせ
	if (num == qa[count][q_sel + 1]) {
		//正解
		answers[count] = "○";
	} else {
		answers[count] = "×";
	}
	$('#text_question').html(s);

	//次の問題を表示
	count++;
	if (count < qa.length) {
		quiz();
	} else {
		//終了
		$('#text_content').html("お疲れ様でした！");
		$('#text_question').html("終了！");
		$('#text_select').html("");
		$('.footer-box__choice').append(html);
		$('#score-page').on('click', function() {
			$('#score-page').remove();
			$('#text_content').remove();
			$('.major').css({
				'background-image' : 'none'
			});
			$('.footer-box__choice').append(html2);
			s = ""
			s += "<table border='2'><caption>成績</caption>";
			//1行目
			s += "<tr><th>問題</th>";
			for (n=0;n<qa.length;n++) {
				s += "<th>" + qa[n][0] + "</th>";
			}
			s += "</tr>";
			//2行目
			s += "<tr><th>正誤</th>";
			for (n=0;n<qa.length;n++) {
				s += "<td>" + answers[n] + "</td>";
			}
			s += "</tr>";
			s += "</table>";
			$('#text_question').html(s);
			$('#text_question').css({
				'font-size' : '43px'
			});
		});	
	}
};
