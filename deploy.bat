@echo off
REM ============================================================
REM  Deploy gap-reports -> GitHub (Netlify tu build sau khi push)
REM  Cach dung: nhay doi chuot (double-click) file nay.
REM  Lan dau can: tao repo gap-reports tren github.com + Netlify
REM  "New site from Git" tro toi repo nay (xem HUONG_DAN).
REM ============================================================
cd /d "D:\Working Space\Github\gap-reports"
echo === Dang day len GitHub... ===
git add -A
git commit -m "update reports"
git branch -M main
git push -u origin main
echo.
if errorlevel 1 (
  echo *** PUSH LOI — CHUA len GitHub. Doc thong bao loi o tren. ***
  echo *** Netlify VAN dang chay ban CU. Sua loi roi chay lai. ***
) else (
  echo === PUSH OK. Netlify se tu deploy ~30s. ===
)
pause
