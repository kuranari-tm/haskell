-- 小文字にして文字コードを求める関数を関数合成によって定義せよ
--     Data.CharモジュールのtoLower, ordを使う
func = ord . toLower

func x = ord (toLower x)
func x = ord $ toLower x
func = ord $ toLower
func = ord . toLower
