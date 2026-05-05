# Lab.-of-Digital-Logic-Design
存放我在Lab. of Digital Logic Design的作業Git

## 安裝 GTKWave、iverilog
首先確保你的 Mac 有Homebrew
```ssh
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```
如果有 Homebrew 可以直接跳來這一步
```ssh
brew install icarus-verilog
```
```ssh
brew tap randomplum/gtkwave
```
```ssh
brew install --HEAD randomplum/gtkwave/gtkwave
```
### 常見問題與修正
開啟時顯示「無法驗證開發者」  
這是 macOS 的安全機制。請前往：  
系統設定 > 隱私權與安全性  
拉到下方找到 GTKWave 相關的阻擋訊息，點擊 「強制開啟」

或者在終端機執行：(路徑視安裝位置而定)
```ssh
sudo xattr -rd com.apple.quarantine /opt/homebrew/bin/gtkwave
```
### 安裝完畢

## 開始玩作業內容
```ssh
iverilog -g2012 -o wave design.sv testbench.sv
```
```ssh
vvp wave
```
```ssh
gtkwave dump.vcd
```
### 作業完成
