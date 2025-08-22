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

### 地圖資訊類程式

從 2D 到 3D，從衛星影像到街景，這些工具滿足不同的地理資訊需求：

#### [Google Earth](https://earth.google.com/)

經典的 3D 地球瀏覽器，提供歷史影像、測量工具和 KML/KMZ 支援。桌面版 Pro 現已免費，支援進階的 GIS 功能和影片錄製。

#### [Google Maps Platform](https://developers.google.com/maps)

Google 的地圖開發平台，提供豐富的 API 和 SDK。適合開發需要地圖功能的應用程式，支援路線規劃、地點搜尋、街景等服務。

#### [ArcGIS Platform](https://www.esri.com/en-us/arcgis/products/arcgis-platform/overview)

專業 GIS 平台，提供完整的空間分析、地圖製作和資料管理功能。適合專業 GIS 分析和企業級應用。

#### [Cesium](https://cesium.com/)

開源的 3D 地球和地圖引擎，基於 WebGL。專精於時空資料視覺化，支援大規模 3D 場景和動態資料。

#### [NASA Worldview](https://worldview.earthdata.nasa.gov/)

即時查看 NASA 衛星影像的平台，提供近即時的地球觀測資料。適合監測天氣、火災、洪水等環境變化。

#### [Mapillary](https://www.mapillary.com/)

群眾外包的街景平台，任何人都可以上傳街景照片。提供 API 存取大量街景資料，適合需要最新街景的應用。

#### [KartaView](https://kartaview.org/)

OpenStreetMap 的開源街景平台，前身為 OpenStreetCam。支援上傳和瀏覽街景，完全開源免費。

#### 功能對比與推薦用法

| 工具 | 類型 | 最適合 | 推薦底圖/圖層 | 社群建議用法 |
|------|------|--------|--------------|-------------|
| **Google Earth** | 桌面/網頁 | 探索和簡單分析 | 歷史影像、KML/KMZ | 時間軸功能看歷史變遷、Pro 版錄製導覽影片 |
| **Google Maps Platform** | 開發平台 | 商業應用開發 | Photorealistic 3D Tiles、街景 API | 搭配 Places API 做商業應用、路線規劃服務 |
| **ArcGIS Platform** | 專業GIS | 專業GIS分析 | World Imagery、World Hillshade、World Ocean | 空間分析配 Living Atlas、整合 Cesium 做 3D |
| **Cesium** | 3D引擎 | 3D視覺化開發 | Cesium World Terrain + Bing Maps Aerial、Earth at Night | 時空資料動態展示、IoT 即時追蹤、建築 BIM 整合 |
| **NASA Worldview** | 衛星影像 | 環境監測 | MODIS/VIIRS、PACE 葉綠素、Black Marble 夜光 | 災害即時監測、多時相對比分析、教育用途 |
| **Mapillary** | 街景平台 | 街景資料收集 | 群眾街景、CC BY-SA 授權 | 搭配 OSM 編輯、機器學習訓練資料、變化偵測 |
| **KartaView** | 街景平台 | 開源街景方案 | 東南亞覆蓋、OBD-II 定位 | OSM 圖資改善、道路標誌偵測、完全離線使用 |

#### 社群推薦的使用組合

根據 2024 年社群回饋，以下是各平台的最佳實踐：

##### 底圖選擇（Base Maps）
- **開源首選**：OpenStreetMap + MapLibre GL（Mapbox GL 的開源分支）
- **商業整合**：
  - ArcGIS：World Imagery、World Hillshade、World Ocean
  - Cesium：Cesium World Terrain + Bing Maps Aerial
  - Google Maps Platform：Photorealistic 3D Tiles
- **風格化地圖**：
  - OSM Bright：通用底圖，適合展示 OSM 細節
  - Positron：淺色底圖，適合資料視覺化
  - Dark Matter：深色底圖，適合夜間模式

##### NASA Worldview 推薦圖層
- **2024 新增熱門**：
  - PACE 衛星的葉綠素 a 濃度圖層（海洋監測）
  - NOAA-21 真彩色影像（3 小時更新）
  - Black Marble 夜間燈光（城市發展研究）
- **災害監測**：火災、熱帶風暴、火山活動即時圖層
- **環境變化**：MODIS/VIIRS 多時相影像對比

##### 街景平台使用建議
- **Mapillary**：CC BY-SA 授權，適合需要開放資料的專案
- **KartaView**：專注東南亞，支援 OBD-II 車載定位，完全開源
- **使用技巧**：同時查詢 Mapillary 和 KartaView 獲得互補覆蓋

##### 開發整合趨勢
- **2024 重點**：OGC 3D Tiles 標準支援（ArcGIS 4.29+、Cesium）
- **跨平台整合**：ArcGIS + Cesium（20+ 官方教學）
- **效能考量**：Leaflet（42KB）適合輕量應用，Cesium 適合 3D 視覺化

## 授權

本專案介紹內容採用 Creative Commons Attribution-ShareAlike 4.0 International (CC BY-SA 4.0) 授權條款 - 詳見 [LICENSE](LICENSE) 檔案
