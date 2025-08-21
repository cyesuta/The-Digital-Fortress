# 電腦圍城

## 專案目的

這是一個個人使用經驗分享專案，主要介紹和記錄我所選擇使用的各種軟體和硬體配置。

## 內容

### 文檔編輯和IDE

#### [Visual Studio Code](https://code.visualstudio.com/)（VSCode）

我很少手碼Code，所以IDE主要是現在配合AI輔助工具Vibe Coding時檢查及少量編輯內容用。於是比起輔助編碼的功能，頁面的呈現、UI美觀和功能，以及可以遠端SSH編輯等都成為我主要的需求。Git版本控制方便、Copilot的輔助現在也在穩步提高中。

#### [EmEditor](https://www.emeditor.com/)

除了付費這點，真的是超快速編輯純文字和CSV的首選，沒有之一。正則表達搜索也非常強。

#### [Sublime Text](https://www.sublimetext.com/)

Emeditor是本體戰士，Sublime Text是掛Buff的，本身非常輕量，但使用需要自己調教。先安裝好Package Control，然後調整一下基本的設定比如：

```json
{
    // 移除行尾多餘的空白，保持程式碼乾淨
    "trim_trailing_white_space_on_save": true,
    // 當焦點離開視窗時自動存檔，避免忘記存檔
    "save_on_focus_lost": true,
    // 突顯當前游標所在的行，更容易定位
    "highlight_line": true
}
```

### 批次重命名軟體

現在有VibeCoding讓LLM直接幫我寫py或sh也很快，但要能夠比較快的依照一些篩選設定來重命名的話，這三個還是很好用！

#### [ReNamer](https://www.den4b.com/products/renamer)

強在嚴格的順序執行機制。可以建立多步驟規則鏈，後續規則會基於前面規則的執行結果繼續處理，實現連續篩選和漸進式重命名。支援 PascalScript 腳本，且腳本規則同樣可以參與到順序執行鏈中。看起來非常小巧但其實非常靈活和強悍。

#### [Advanced Renamer](https://www.advancedrenamer.com/)

可以直接修改照片和影片的 metadata（拍攝時間、相機資訊等），支援讀取 GPS 地理資料來產生地點名稱。我主要使用原因是可以匯入CSV對照表直接按我表來改，以及根據命名結果自動將檔案移動到不同資料夾。

#### [Bulk Rename Utility](https://www.bulkrenameutility.co.uk/)

特點是每種重命名操作都有很細緻的設定選項。檔案篩選支援完整的正則表達式匹配。

## 授權

本專案介紹內容採用 Creative Commons Attribution-ShareAlike 4.0 International (CC BY-SA 4.0) 授權條款 - 詳見 [LICENSE](LICENSE) 檔案
