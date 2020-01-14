# README

# kanji-quiz（ 難読漢字クイズ ）
難読漢字をピックアップしてクイズにしたアプリです。
- URL : http://18.177.203.167/
- テストアカウント
  - メールアドレス : test@gmail.com
  - パスワード : 000000
***

## 制作背景
私は、なんとなく漢字が読めるようになりたい方から検定に合格したい方まで幅広く勉強できるアプリを作成したいと考え、開発をはじめました。

現在、正しく漢字を読み、使うことのできる人が少ないように感じています。本を読むにしても、文章を書くにしても正しく漢字を読む、意味をしっかり把握して使うことは当たり前であり、大変重要なことであると考えています。漢字をもっと知りたい方にこのアプリがお役に立てたら幸いです。
***

## 工夫したポイント
漢字クイズということで、雰囲気に合うようなデザインを施しました。さらにCSSアニメーションを使用することで、ユーザーが少しでも目で見て楽しめるようにしました。

![da8d4ef7b26cf9d7998be1b13615f98e](https://user-images.githubusercontent.com/56814714/72320407-f63f2c00-36e4-11ea-921c-ed243314a443.gif)
***

## 主な機能
- ユーザー登録機能
- クイズ機能
- 成績登録機能
***

## 今後実装したい機能
- 熟語や植物など、カテゴリー別の問題に挑戦できるようにする
- 現段階では三択でできるクイズのみなので、タイピング式などクイズ形式を増やす
- 出題される問題に対して意味や用途がわかる辞書機能をつける
***

## 使用技術
Haml, Sass, Ruby, Ruby on Rails, JavaScript, jQuery, Github, AWS
***


## usersテーブル
|Column|Type|Options|
|------|----|-------|
|nickname|string|null: false|
|email|string|null: false|
|password|string|null: false|

### Association
- has_many :scores



## questionsテーブル
|Column|Type|Options|
|------|----|-------|
|statement|string||
|choice1|string||
|choice2|string||
|choice3|string||
|answer|integer||
|reading|string||

## scoresテーブル
|Column|Type|Options|
|------|----|-------|
|result|text||
|questions|text||
|answer_text|text||
|user_id|references|foreign_key: true|

### Association
- belongs_to :user