# LeetCode 刷題筆記部落格

使用 Hugo + GitHub Pages 建立的 LeetCode 解題心得部落格。

## 本地預覽

```bash
hugo server -D
```

然後開啟瀏覽器訪問 http://localhost:1313

## 新增文章

```bash
hugo new content posts/leetcode-xxx-problem-name.md
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

## 發布到 GitHub Pages

### 首次設定

1. 在 GitHub 上建立一個新的 repository，名稱為 `leetcode_blog`

2. 推送程式碼到 GitHub：
```bash
git add .
git commit -m "Initial commit: Hugo blog setup"
git branch -M main
git remote add origin https://github.com/你的用戶名/leetcode_blog.git
git push -u origin main
```

3. 在 GitHub repository 設定中：
   - 進入 Settings > Pages
   - Source 選擇 "GitHub Actions"

4. GitHub Actions 會自動部署，完成後可以在以下網址訪問：
   `https://你的用戶名.github.io/leetcode_blog/`

### 後續更新

每次推送到 main 分支時，GitHub Actions 會自動重新部署。

```bash
git add .
git commit -m "Add new post"
git push
```

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
