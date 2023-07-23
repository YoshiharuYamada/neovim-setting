-- 行番号を表示(切り替え)
vim.opt.number = true
-- タブ文字の代わりにスペースを使う(切り替え)
vim.opt.expandtab = true
-- 各コマンドやsmartindentで挿入する空白の量(数値)
vim.opt.shiftwidth = 4
-- エンコーディングをUTF-8に設定
vim.opt.fileencoding = "utf-8"
-- スワップファイルを作成しない
vim.opt.swapfile = false
-- レジスタとクリップボードを共有
vim.opt.clipboard:append({ "unnamedplus" })
-- 24 ビットカラーを使用
vim.opt.termguicolors = true
-- 対応する括弧をハイライト表示
vim.opt.showmatch = true
-- ダークカラーを使用する
vim.opt.background = "dark"
vim.cmd[[colorscheme tokyonight]]

-- guifontを設定しないと文字化けになる。terminalで行ったフォントの設定と同様
-- 公式サイトではLinuxとmacOSの設定が若干異なるが、Linuxの設定でもmacOSで問題なし
vim.opt.guifont="Droid Sans Mono for Powerline Nerd Font Complete 12"

-- フォルダアイコンを表示
vim.g["WebDevIconsNerdTreeBeforeGlyphPadding"] = ""
vim.g["WebDevIconsUnicodeDecorateFolderNodes"] = "v:true"
-- after a re-source, fix syntax matching issues (concealing brackets):
if vim.fn.exists('g:loaded_webdevicons') == 1 then
  vim.fn.call('webdevicons#refresh')
end

