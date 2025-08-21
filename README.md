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

在處理大量檔案時，批次重命名工具是不可或缺的。以下是我常用的三個工具：

#### [ReNamer](https://www.den4b.com/products/renamer)

ReNamer 是功能最強大的批次重命名工具之一。支援正則表達式、腳本（PascalScript）、多步驟規則鏈，可以處理極其複雜的重命名需求。介面清晰，預覽功能完善，是我處理複雜重命名任務的首選。

#### [Advanced Renamer](https://www.advancedrenamer.com/)

免費且功能豐富的批次重命名工具。支援標籤式命名方法（如 <Year> <Month> 等），特別適合處理照片、影片等媒體檔案的重命名。內建多種預設模板，上手容易。

#### [Bulk Rename Utility](https://www.bulkrenameutility.co.uk/)

BRU 的介面初看可能會讓人卻步，但習慣後會發現其功能分區非常清晰。所有重命名選項都在同一個畫面上，可以即時預覽效果。對於需要頻繁進行不同類型重命名的用戶來說，效率極高。

## 授權

本專案介紹內容採用 Creative Commons Attribution-ShareAlike 4.0 International (CC BY-SA 4.0) 授權條款 - 詳見 [LICENSE](LICENSE) 檔案
