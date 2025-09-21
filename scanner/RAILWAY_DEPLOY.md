# Railway Deployment Guide for OMR Scanner

## Quick Fix for Current Issue

The error you're seeing happens because Railway can't detect your Python application properly. Here's how to fix it:

### 1. Files Created/Fixed:
- ✅ `start.sh` - Startup script for Railway
- ✅ `nixpacks.toml` - Helps Railway detect Python
- ✅ `runtime.txt` - Python version specification
- ✅ `railway.json` - Railway deployment configuration

### 2. Deploy to Railway:

1. **Go to [Railway.app](https://railway.app)**
2. **Sign up/Login**
3. **Click "New Project"**
4. **Select "Deploy from GitHub repo"**
5. **Choose your repository**
6. **Set Root Directory to `scanner`**
7. **Deploy!**

### 3. Environment Variables:
Set these in Railway dashboard:
- `HOST`: `0.0.0.0`
- `PORT`: `$PORT` (Railway provides this automatically)
- `DEBUG`: `False`

### 4. Alternative: Use Render (Easier)

If Railway still has issues, try Render instead:

1. Go to [render.com](https://render.com)
2. Sign up
3. Click "New +" → "Web Service"
4. Connect GitHub repo
5. Set Root Directory to `scanner`
6. Use these settings:
   - **Build Command:** `pip install -r requirements.txt`
   - **Start Command:** `python omr_web_circle_scanner.py`
   - **Environment:** Python 3
7. Set environment variables:
   - `HOST`: `0.0.0.0`
   - `PORT`: `10000`
   - `DEBUG`: `False`

### 5. Test Your Deployment

Once deployed, your OMR scanner will be available at:
- Railway: `https://your-app-name.railway.app`
- Render: `https://your-app-name.onrender.com`

Test endpoints:
- `/` - Main interface
- `/status` - Server status
- `/webcam` - Webcam scanning interface

## Troubleshooting

If you still see the Railpack error:
1. Make sure you're in the `scanner` directory
2. Check that all files are committed to git
3. Try deleting and recreating the Railway project
4. Consider using Render instead (more reliable for Python apps)
