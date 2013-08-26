module ApplicationHelper

  # ページごとの完全なタイトルを返す。
  def full_title(page_title)                         # メソッド定義
    base_title = "聖地巡礼「雲のむこう、約束の場所」青森編" # 変数に値を割り当てる
    if page_title.empty?                             # 論理値テスト
      base_title                                     # 暗黙の返り値
    else
      "#{base_title} | #{page_title}"                # 文字列の式展開
    end
  end
end
