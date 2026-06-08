# 104 人力銀行 AI 薪資智慧預報看板 📊

[![Frontend](https://img.shields.io/badge/Frontend-HTML5%20%7C%20CSS3%20%7C%20Vanilla%20JS-orange)](https://developer.mozilla.org/zh-TW/docs/Web/JavaScript)
[![Data Visualization](https://img.shields.io/badge/Visualization-ECharts%20v5.4.3-blue)](https://echarts.apache.org/)
[![Model](https://img.shields.io/badge/AI--Model-CatBoost%20%7C%20XGBoost-green)]()
[![Deployment](https://img.shields.io/badge/Deployment-Render-lightgrey)](https://one04-ai-analyze.onrender.com/)

本專案為一個 **「AI 薪資精準預報與市場成效」** 的視覺化互動看板。系統旨在透過前端友善介面與後端 AI 資料模型（如 CatBoost 等）的協作，協助使用者快速查詢特定區域、職務名稱與類別下的薪資落點預報。

🔗 **線上展示網址**：[104 人力銀行 AI 薪資智慧預報看板](https://one04-ai-analyze.onrender.com/)

---

## 🚀 專案核心功能

* **AI 即時薪資預報**：使用者可透過下拉選單動態選擇公司區域、職務名稱及職務類別，系統將根據 AI 模型即時推算最精準的薪資落點。
* **數據即時連動圖表**：當使用者切換職務類別時，會自動觸發前端 JavaScript 函式，同步更新右側的薪資分析圖表，提供市場成效數據分析。
* **現代化響應式 UI 設計**：介面全面採用 **CSS Grid & Flexbox** 佈局，具備良好的跨裝置響應式體驗；視覺設計以代表 104 的 **橘色調** 作為強調色，提升專業感與使用者互動性。

---

## 🛠️ 技術棧 (Tech Stack)

### 前端架構
* **核心語法**：原生 JavaScript (Vanilla JS), CSS3, HTML5
* **圖表繪製**：[Apache ECharts (v5.4.3)](https://echarts.apache.org/) — 用於呈現複雜的薪資統計、市場趨勢與 AI 特徵權重影響圖。

### 後端與 AI 模型支援 (簡報成果)
* **機器學習演算法**：CatBoost (核心優選模型，MAPE 達 **16.13%**), XGBoost, LightGBM
* **模型序列化**：Joblib (`models\cat.jb`)

---

## 📐 核心介面模組結構

整個儀表板介面主要劃分為四大核心區塊：

```text
┌────────────────────────────────────────────────────────┐
│               104 AI 薪資智慧預報看板                   │
├────────────────────────┬───────────────────────────────┤
│                        │ [結果呈現區]                  │
│ [預報輸入區]           │  └─ AI 預測薪資落點顯示        │
│  ├─ 公司區域            ├───────────────────────────────┤
│  ├─ 職務名稱            │ [數據圖表區]                  │
│  └─ 職務類別            │  ├─ 市場趨勢分析圖            │
│                        │  ├─ 數據連動分析圖            │
│ [儀表板連結區]          │  └─ AI 特徵權重影響圖          │
│  └─ 快速跳轉/流程按鈕  │                               │
└────────────────────────┴───────────────────────────────┘
