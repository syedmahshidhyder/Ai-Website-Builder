# ⚡ WebGenAI — AI Website Builder
### Build any website or app with AI. Free. No key needed.

---

## 🎁 What This Does

You type what you want → AI builds a complete website → See it live in your browser → Download or deploy it online.

**Two modes:**
- **Frontend** — Generates one HTML file. Open it in any browser. Perfect for landing pages, portfolios, blogs.
- **Full Stack** — Generates a complete Node.js app with database and user login. Download as ZIP and run it.

**Features:**
- 💬 Chat to edit — tell AI to change anything after generating
- 📁 Project history — all builds saved when you're logged in
- 🚀 1-click Netlify deploy — go live in 30 seconds
- ♾️ 4 free AI providers with auto-fallback (never gets stuck)

---

## 🟢 STEP 1 — Install Node.js
*(Only needs to be done once. If you already have it, skip this.)*

1. Open your browser (Chrome or Edge)
2. Go to: **https://nodejs.org**
3. Click the big button that says **"LTS"** (ignore the other one)
4. A file downloads (called something like `node-v20.x.x-x64.msi`)
5. Double-click that downloaded file
6. Click: **Next → Next → Next → Install → Finish**
7. Done ✅

---

## 🟢 STEP 2 — Add Free API Keys (Optional — app works without them)

The app works perfectly without any keys using Pollinations.AI.
But adding a **Groq key makes it 10x faster and smarter** — takes 2 minutes and it's completely free.

### Get Groq API Key (FREE — Recommended)

1. Open browser → go to: **https://console.groq.com**
2. Click **"Sign Up"** → create a free account (no credit card)
3. Once logged in, click **"API Keys"** in the left menu
4. Click **"Create API Key"** → give it any name (e.g. "webgenai")
5. Copy the key that appears (it starts with `gsk_...`)
6. Open the file called **`.env`** in this folder using Notepad
   - (If you don't see `.env`, run start.bat once first — it creates it)
7. Find the line: `GROQ_API_KEY=`
8. Paste your key right after the `=` sign, like this:
   ```
   GROQ_API_KEY=gsk_your_actual_key_here
   ```
9. Save the file (Ctrl+S)

### Get Gemini API Key (FREE — Backup)

1. Go to: **https://aistudio.google.com/app/apikey**
2. Sign in with your Gmail account
3. Click **"Create API Key"**
4. Copy the key
5. In your `.env` file, find `GEMINI_API_KEY=` and paste it there
6. Save

### Get Netlify Token (FREE — For 1-click deploy button)

1. Go to: **https://app.netlify.com** → create free account
2. Click your avatar (top right) → **User Settings**
3. Click **"Applications"** → **"New access token"**
4. Give it any name → **Generate**
5. Copy the token
6. In your `.env` file, find `NETLIFY_TOKEN=` and paste it there
7. Save

---

## 🟢 STEP 3 — Run the App

1. Find the file called **`start.bat`** in this folder
2. **Double-click it**
3. A black window opens — wait (first time installs packages, ~1 minute)
4. When you see **"Open: http://localhost:3000"** it's ready
5. Open your browser → go to: **http://localhost:3000**
6. 🎉 Your app is running!

> **Keep the black window open** while using the app. Close it to stop the app.

---

## 🟢 STEP 4 — Use the App

### Generate a website:
1. Click **"Frontend"** or **"Full Stack"** at the top of the left panel
2. Type your description in the text box
3. Pick a visual style (optional)
4. Click **⚡ Generate Website — Free**
5. Watch the progress bar — takes 15–45 seconds
6. Your website appears as a live preview on the right!

### Download your website:
- **Frontend** → Click **⬇️ Download HTML** — you get one HTML file, open it anywhere
- **Full Stack** → Click **⬇️ Download ZIP** — unzip it, double-click `start.bat` inside

### Edit with AI:
1. After generating, click **💬 Edit with AI**
2. A text box appears at the bottom
3. Type what you want to change, e.g.:
   - "make the background dark blue"
   - "add a pricing section with 3 tiers"
   - "change the font to something more elegant"
4. Press Enter
5. AI updates it instantly!

### Save your projects:
1. Click **👤 Login / Register** (top right)
2. Create a free account
3. All your generations automatically save to **📁 Projects**

### Deploy online (1 click):
*(Requires Netlify token in .env — see Step 2)*
1. Generate a Frontend website
2. Click **🚀 Deploy to Netlify**
3. Wait 10 seconds
4. Get a live URL like `yoursite.netlify.app`!

---

## 🟢 STEP 5 — Share the App Online (Put it on the internet)

So other people can use YOUR WebGenAI app:

### Option A — Railway (Recommended, Free)

1. Go to: **https://github.com** → create free account
2. Click **"New repository"** → name it `webgenai` → Create
3. Upload all files from this folder to that repository
   - Click **"uploading an existing file"** → drag all files → Commit
4. Go to: **https://railway.app** → sign up free (use GitHub login)
5. Click **"New Project"** → **"Deploy from GitHub repo"**
6. Select your `webgenai` repository
7. Railway auto-detects Node.js and deploys it!
8. Click your deployment → **"Settings"** → add your environment variables
   - Add `GROQ_API_KEY`, `GEMINI_API_KEY`, `SESSION_SECRET`, etc.
9. Done! You get a free URL like: `webgenai-production.up.railway.app`

### Option B — Render (Always Free)

1. Upload to GitHub (same as steps 1-3 above)
2. Go to: **https://render.com** → New Web Service
3. Connect GitHub → select your repo
4. Build Command: `npm install`
5. Start Command: `node backend/server.js`
6. Add environment variables in the dashboard
7. Free URL: `yourapp.onrender.com`

---

## 📁 File Structure (What Each File Does)

```
webgenai-saas/
│
├── start.bat              ← Double-click to start! (Windows)
├── package.json           ← Lists all packages needed
├── .env                   ← Your API keys (keep this private!)
├── .env.example           ← Template for .env
├── README.md              ← This file
│
├── backend/
│   └── server.js          ← The brain: handles AI, auth, projects, deploy
│
└── frontend/
    └── public/
        └── index.html     ← The app UI (what you see in the browser)
```

---

## 🤖 AI Providers (Priority Order)

The app tries these automatically — if one fails it moves to the next:

| # | Provider | Free Limit | Speed | Key Needed? |
|---|---|---|---|---|
| 1 | **Groq (Llama 3.3 70B)** | 14,400/day | ⚡⚡⚡ Very Fast | Yes (free) |
| 2 | **Google Gemini 2.0 Flash** | 1,500/day | ⚡⚡ Fast | Yes (free) |
| 3 | **Pollinations.AI** | Unlimited | ⚡ Medium | **No key!** |

Even with zero API keys, the app always works using Pollinations.AI.

---

## ❓ Troubleshooting

**"Node.js is not installed" error**
→ Follow Step 1 above. Go to nodejs.org and install the LTS version.

**Black window closes immediately**
→ Right-click `start.bat` → "Run as Administrator"

**Website generation fails**
→ Check your internet connection
→ Try a shorter/simpler prompt first
→ Wait 30 seconds and try again (Pollinations might be busy)

**Port already in use**
→ Open `.env` with Notepad → change `PORT=3000` to `PORT=3001`
→ Then go to `http://localhost:3001`

**Full Stack ZIP — start.bat doesn't work**
→ Make sure Node.js is installed
→ Right-click → Run as Administrator

**"Cannot find module" error**
→ Delete the `node_modules` folder
→ Double-click `start.bat` again (it reinstalls)

---

*Made with ⚡ WebGenAI*
