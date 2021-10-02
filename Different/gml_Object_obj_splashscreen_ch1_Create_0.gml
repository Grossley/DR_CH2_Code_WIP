xx = __view_get((0 << 0), 0)
yy = __view_get((1 << 0), 0)
text_alpha_a = 0
text_alpha_b = 0
loaded = false
heart_pos_y = (yy + 288)
heart_pos_y_ja = (yy + 328)
heart_pos_x_padding = (global.lang == "ja" ? -20 : -10)
heart_pos_x_default = ((xx + 200) + heart_pos_x_padding)
heart_pos_x = heart_pos_x_default
heart_pos_x_h_padding = (global.lang == "ja" ? 140 : 155)
line_height = 50
line_height_ja = 33
select_padding = 45
confirming = 0
visit_shop = false
selected = false
buffer = 0
played_text_en = "This program is intended for players#who are already familiar with UNDERTALE."
played_text_ja_1 = "このプログラムは、"
played_text_ja_2 = "すでに「UNDERTALE」をプレイした方向けです。"
check_text_en = "Would you like to check out UNDERTALE first?"
check_text_ja_1 = "まだプレイしたことのない方は、"
check_text_ja_2 = "まずは「UNDERTALE」をチェックしてみませんか？"
shop_options = (global.lang == "en" ? ["Yes", "No"] : ["はい", "いいえ"])
shop_text = (global.lang == "en" ? "Nintendo eShop" : "ニンテンドーeショップ")
commerce_dialog_open = false
if (os_type == os_ps4)
{
    shop_text = (global.lang == "en" ? "\"PlayStation Store\"" : "「PlayStation Store」")
    psn_load_modules()
}
check_undertale = (global.lang == "en" ? "Check Out UNDERTALE" : "「UNDERTALE」をチェック")
start_dr = (global.lang == "en" ? "Start DELTARUNE" : "「DELTARUNE」をプレイ")
global.currentroom = room
