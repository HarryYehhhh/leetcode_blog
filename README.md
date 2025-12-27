# LeetCode 刷題筆記部落格

使用 Hugo + GitHub Pages 建立的 LeetCode 解題心得部落格。

✅ 完全免費、永久託管
✅ 自動部署、無需手動上傳
✅ HTTPS 安全連線

## 🚀 快速開始（推薦）

### 1️⃣ 建立新文章
```bash
./new-post.sh <題號> <題目名稱>
```
**範例：**
```bash
./new-post.sh 1 two-sum
./new-post.sh 15 3sum
./new-post.sh 206 reverse-linked-list
```

### 2️⃣ 編輯文章
用你喜歡的編輯器打開產生的檔案，填寫內容：
```bash
# 範例
code content/posts/leetcode-1-two-sum.md
# 或
vim content/posts/leetcode-1-two-sum.md
```

### 3️⃣ 本地預覽
```bash
hugo server -D
```
然後開啟瀏覽器訪問 http://localhost:1313/leetcode_blog/

### 4️⃣ 發布到網站
```bash
./publish.sh "新增 LeetCode 1 解題心得"
```

就這麼簡單！🎉

---

## 📝 手動方式

如果你想手動操作，也可以使用以下命令：

### 新增文章
```bash
hugo new content posts/leetcode-xxx-problem-name.md -k post
```

## 文章模板

參考 `content/posts/example-two-sum.md` 的格式來撰寫新文章。

建議的文章結構：
- 題目描述
- 解題思路
- 程式碼實作（多種語言）
- 時間/空間複雜度分析
- 重點整理
- 相關題目

## 🌐 部署到 GitHub Pages

### 首次設定

你的 repository 已經設定好了！只需要在 GitHub 啟用 Pages：

1. 前往你的 GitHub repository: https://github.com/HarryYehhhh/leetcode_blog
2. Settings > Pages
3. Source 選擇 "**GitHub Actions**"
4. 完成！

之後每次推送程式碼，GitHub Actions 會自動部署。

### 網站網址

部署完成後，你的網站會在：
```
https://HarryYehhhh.github.io/leetcode_blog/
```

### 發布新文章

使用 `publish.sh` 腳本一鍵發布：
```bash
./publish.sh "新增 LeetCode 206 解題心得"
```

GitHub Actions 會自動建置並部署，約 2-3 分鐘後就能看到更新！

## 自訂設定

編輯 `hugo.toml` 來修改：
- 網站標題
- 作者資訊
- GitHub 連結
- 其他個人化設定

## 主題

使用 [PaperMod](https://github.com/adityatelange/hugo-PaperMod) 主題，適合技術部落格。

## 功能特色

- ✅ 程式碼語法高亮
- ✅ 顯示閱讀時間
- ✅ 文章目錄 (TOC)
- ✅ 複製程式碼按鈕
- ✅ 標籤和分類
- ✅ 搜尋功能
- ✅ 響應式設計

## 💡 寫作技巧

### 文章結構建議
1. **題目描述** - 簡單說明題目要求
2. **解題思路** - 說明你的想法和方法
3. **程式碼實作** - 提供完整可執行的程式碼
4. **複雜度分析** - 時間和空間複雜度
5. **重點整理** - 關鍵概念或易錯點
6. **相關題目** - 類似或延伸的題目

### 標籤建議
- **資料結構**：Array, Hash Table, Linked List, Stack, Queue, Tree, Graph
- **演算法**：Two Pointers, Binary Search, DFS, BFS, Dynamic Programming, Greedy
- **難度**：Easy, Medium, Hard

### 快速上手範例
```bash
# 刷了一題 Two Sum
./new-post.sh 1 two-sum

# 編輯內容（填入你的解題思路）
vim content/posts/leetcode-1-two-sum.md

# 預覽效果
hugo server -D

# 滿意後發布
./publish.sh "新增 LeetCode 1 Two Sum"
```
