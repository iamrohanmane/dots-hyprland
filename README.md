# Minimal Hyprland Setup for Linux

Welcome to the **Minimal Hyprland Setup** repository! This configuration is designed to work seamlessly across **Arch**, **NixOS**, **openSUSE**, and **Tumbleweed**. It includes everything you need for a minimal, efficient setup using **Hyprland**, along with configurations for:
- **hyprland**
- **hypridle**
- **hyprlock**
- **hyprpepar** (wallpepar utilities)
- **Kitty** (terminal)
- **MPD** and **ncmpcpp** (music player and client)
- **Waybar** (status bar)
- **Wofi** (application launcher)
- **wlogout** (logout menu)
- **QT5 settings**
- **swaync** (notification)
- **grim,slurp** (screenshot)   

## 🖥️ Features

- **Lightweight** and **minimal** configuration
- Pre-configured settings for essential applications
- Ready-to-use themes and keybindings
- Easy to install and customize

## 🚀 Getting Started

Follow these instructions to get your Hyprland setup running.

### Step 1: Install Hyprland

For **Arch Linux**, use the following command to install Hyprland:
```bash
sudo pacman -Sy hyprland 
```

For **NixOS**, **openSUSE**, and **Tumbleweed**, use the respective package manager commands to install Hyprland. You can refer to the official documentation for installation on these platforms.

### Step 2: Clone the Repository

Next, clone this repository to your local machine:
```bash
git clone https://github.com/iamrohanmane/dots-hyprland.git
ls 
dots-hyprland
```

### Step 3: Copy Configuration Files

Copy the necessary configuration files into your `.config` directory:
```bash
cp -r dots-hyprland/* ~/.config
```

### Step 4: Install Required Packages

Make sure the following packages are installed on your system:

- **Kitty**: Terminal emulator
- **MPD**: Music Player Daemon
- **ncmpcpp**: MPD client
- **Waybar**: Status bar for Wayland
- **Wofi**: Application launcher for Wayland
- **wlogout**: Session logout tool
- **QT5ct**: QT5 settings configuration tool

On Arch Linux, you can install these with:
```bash
sudo pacman -S kitty mpd ncmpcpp waybar wofi wlogout qt5ct thunar
```

For other distributions, use the respective package managers.

### Step 5: Start Hyprland

Once the configuration files are copied and packages are installed, you can start Hyprland. Log into your Hyprland session, and the pre-configured environment should load automatically.

## 📂 Repository Contents

- `hypr/`: Hyprland configuration
- `kitty/`: Kitty terminal configuration
- `mpd/`: MPD music player configuration
- `ncmpcpp/`: ncmpcpp music client configuration
- `qt5ct/`: QT5 configuration settings
- `waybar/`: Waybar configuration
- `wlogout/`: wlogout configuration
- `wofi/`: Wofi application launcher configuration
- `swaync`: Notification center

## 🔧 Customization

Feel free to modify any of the configuration files to suit your preferences. Each application has its own set of options and themes, which you can tweak for a more personalized setup.

## 💬 Support

If you run into any issues or have questions, feel free to open an issue on this repository.

---

Enjoy your minimal, fast, and efficient Linux environment with Hyprland!
