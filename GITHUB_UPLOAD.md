# 上传到 GitHub 的步骤

## 方式一：用终端（需要先安装 Git）

如果还没安装 Git，在 Mac 上可先安装 Xcode 命令行工具（终端里会提示），或从 https://git-scm.com 安装。

在终端里依次执行：

```bash
cd /Users/bssm/katherine-zhang-website

# 1. 初始化仓库
git init

# 2. 添加所有文件
git add .

# 3. 第一次提交
git commit -m "Initial commit: Katherine Zhang personal website"

# 4. 在 GitHub 上新建一个空仓库（不要勾选 README）
#    打开 https://github.com/new ，仓库名例如：katherine-zhang-website

# 5. 添加远程仓库并推送（把 YOUR_USERNAME 换成你的 GitHub 用户名）
git remote add origin https://github.com/YOUR_USERNAME/katherine-zhang-website.git
git branch -M main
git push -u origin main
```

## 方式二：在网页上直接上传（不用装 Git）

1. 打开 **https://github.com/new**
2. 仓库名填：`katherine-zhang-website`（或你喜欢的名字）
3. 选择 **Public**，不要勾选 “Add a README”
4. 点 **Create repository**
5. 在新建的仓库页面，点击 **“uploading an existing file”** 或 **“Add file” → “Upload files”**
6. 把本地的这些文件拖进浏览器：
   - `index.html`
   - `portfolio.html`
   - `styles.css`
   - `README.md`
   - `.gitignore`
7. 在页面底部点 **Commit changes**

上传完成后，若仓库名为 `katherine-zhang-website`，网站会出现在：  
**https://YOUR_USERNAME.github.io/katherine-zhang-website/**  
（若要在根路径 `https://YOUR_USERNAME.github.io/` 显示，需把仓库改名为 `YOUR_USERNAME.github.io` 并开启 GitHub Pages。）

## 开启 GitHub Pages 让网站可访问

1. 打开你的仓库页面
2. 点 **Settings** → 左侧 **Pages**
3. 在 **Source** 里选 **Deploy from a branch**
4. **Branch** 选 `main`，文件夹选 **/ (root)**
5. 点 **Save**

几分钟后，网站地址为：**https://YOUR_USERNAME.github.io/katherine-zhang-website/**
