[
  ['強か', 'したたか', 'すこやか', 'おごそか', 1, 'したたか'],
  ['捗々しい', 'たどたどしい', 'すがすがしい', 'はかばかしい', 3, 'はかばかしい'],
  ['蜻蛉', 'コオロギ', 'トンボ', 'カマキリ', 2, 'トンボ'],
  ['玉蜀黍', 'トウモロコシ', 'ザクロ', 'ルバーブ', 1, 'トウモロコシ'],
  ['空者', 'すきもの', 'そらもの', 'うつけもの', 3, 'うつけもの'],
  ['嘯く', 'うそぶく', 'うずたかく', 'つんざく', 1, 'うそぶく'],
  ['窶れる', 'しわがれる', 'こじれる', 'やつれる', 3, 'やつれる'],
  ['鱧', 'ドジョウ', 'マス', 'ハモ', 3, 'ハモ'],
  ['弁える', 'わきまえる', 'しつらえる', 'つがえる', 1, 'わきまえる'],
  ['鷺', 'キジ', 'サギ', 'ウズラ', 2, 'サギ'],
  ['鯰', 'ナマズ', 'スズキ', 'フナ', 1, 'ナマズ'],
  ['劈く', 'すべからく', 'いななく', 'つんざく', 3, 'つんざく'],
  ['穿る', 'かじる', 'ほじくる', 'わだかまる', 2, 'ほじくる'],
  ['濠太剌利', 'オーストラリア', 'オーストリア', 'イスラエル', 1, 'オーストラリア'],
  ['芽花椰菜', 'カリフラワー', 'ブロッコリー', 'アスパラガス', 2, 'ブロッコリー'],
  ['饂飩', 'パン', 'うどん', 'とろろ', 2, 'うどん'],
  ['鎧球', 'ラグビー', 'ドッジボール', 'アメフト', 3, 'アメフト'],
  ['霙', 'もや', 'みぞれ', 'かすみ', 2, 'みぞれ'],
  ['俄雨', 'しゅうう', 'にわかあめ', 'そばえ', 2, 'にわかあめ'],
  ['旱', 'ひでり', 'こがらし', 'おろし', 1, 'ひでり'],
  ['鉋', 'きり', 'かんな', 'のこぎり', 2, 'かんな'],
  ['鑢', 'こて', 'はさみ', 'やすり', 3, 'やすり'],
  ['洋琴', 'ピアノ', 'オルガン', 'ヴァイオリン', 1, 'ピアノ'],
  ['輪舞曲', 'ワルツ', 'ロンド', 'ラプソディ', 2, 'ロンド'],
  ['十重奏', 'オクテット', 'ノネット', 'デクテット', 3, 'デクテット'],
  ['皇', 'みささぎ', 'すめらぎ', 'ついたち', 2, 'すめらぎ'],
  ['英', 'はなぶさ', 'たけなわ', 'かすがい', 1, 'はなぶさ'],
  ['諄い', 'なまぐさい', 'かたじけない', 'くどい', 3, 'くどい'],
  ['象る', 'かたどる', 'なじる', 'あやかる', 1, 'かたどる'],
  ['衒う', 'へつらう', 'てらう', 'まつろう', 2, 'てらう']
].each do |text, select1, select2, select3, answer, reading|
  Question.create!(
    { statement: text, choice1: select1, choice2: select2, choice3: select3, answer: answer, reading: reading }
  )
  end
