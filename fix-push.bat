@echo off
REM ============================================================
REM  FIX-PUSH (chay 1 LAN duy nhat)
REM  Day lich su SACH (1 commit, da bo blob cu 51MB) len GitHub.
REM  Vi history da viet lai nen phai force-push.
REM  Sau khi OK: chay deploy.bat binh thuong cho cac lan sau.
REM ============================================================
cd /d "D:\Working Space\Github\gap-reports"
echo === Force-push lich su sach len GitHub (1 lan) ===
git push -f origin main
echo.
if errorlevel 1 (
  echo *** VAN LOI. Neu con "commit_refs" tuc la GitHub dang su co that ***
  echo *** -- luc do dung cach drag-drop folder vao Netlify Deploys.    ***
) else (
  echo === OK! Lich su sach da len GitHub. Netlify se tu build ~30s.    ===
  echo === Tu gio chi can chay deploy.bat nhu binh thuong.              ===
)
pause
