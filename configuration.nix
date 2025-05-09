{ config, pkgs, ... }:

{
  imports =
    [ # Include the results of the hardware scan.
      /etc/nixos/hardware-configuration.nix
    ];

  # Bootloader.
  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;

  boot.plymouth.enable = true;
  boot.plymouth.theme = "bgrt";
  boot.initrd.systemd.enable = true;

  networking.hostName = "LeMans"; # Define your hostname.

  # Enable networking
  networking.networkmanager.enable = true;

  # Set your time zone.
  time.timeZone = "Europe/Paris";

  i18n.supportedLocales = [
	"en_US.UTF-8/UTF-8"
  ];

  # Select internationalisation properties.
  i18n.defaultLocale = "en_US.UTF-8";

  i18n.extraLocaleSettings = {
    LC_ADDRESS = "en_US.UTF-8";
    LC_IDENTIFICATION = "en_US.UTF-8";
    LC_MEASUREMENT = "en_US.UTF-8";
    LC_MONETARY = "en_US.UTF-8";
    LC_NAME = "en_US.UTF-8";
    LC_NUMERIC = "en_US.UTF-8";
    LC_PAPER = "en_US.UTF-8";
    LC_TELEPHONE = "en_US.UTF-8";
    LC_TIME = "en_US.UTF-8";
  };

  # Enable the X11 windowing system.
  services.xserver.enable = true;

  # Enable the GNOME Desktop Environment.
  services.xserver.displayManager.gdm.enable = true;
  services.displayManager.sessionPackages = with pkgs; [ sway ];

  # Configure keymap in X11
  services.xserver.xkb = {
    layout = "fr";
    variant = "azerty";
  };

  # Configure console keymap
  console.keyMap = "fr";

  # Enable CUPS to print documents.
  services.printing.enable = true;

  # Enable sound with pipewire.
  hardware.pulseaudio.enable = false;
  security.rtkit.enable = true;
  services.pipewire = {
    enable = true;
    alsa.enable = true;
    alsa.support32Bit = true;
    pulse.enable = true;

  };

  nixpkgs.config.allowUnfree = true;

  # Enable touchpad support (enabled default in most desktopManager).
  # services.xserver.libinput.enable = true;

  # Define a user account. Don't forget to set a password with ‘passwd’.
  users.users.jeremy = {
    isNormalUser = true;
    description = "Jeremy";
    extraGroups = [ "networkmanager" "wheel" ];
    packages = with pkgs; [
    #  thunderbird
    	gnupg
    ];
  };

  environment.systemPackages = with pkgs; [
     wget
     git
     gnupg
     neovim
     pinentry
     discord
     libreoffice
     swayfx
     rofi
     kitty
     fastfetch
     psmisc
     waybar
     waybar-mpris
     unzip
     thunderbird
     nfs-utils
     p7zip
     swaybg
     autotiling
     nodejs_23
  ];

  programs.nix-ld.enable = true;
  programs.nix-ld.libraries = with pkgs; [
    neovim
  ];

  programs.neovim.withNodeJs = true;

  programs.sway.enable = true;

  programs.firefox.enable = true;

  programs.gnupg.agent = {
	  enable = true;
  };

  programs.htop.enable = true;

  programs.foot.enable = false;

  virtualisation.docker.enable = true;

  services.tlp.enable = true;

  hardware.bluetooth.enable = true;
  hardware.bluetooth.powerOnBoot = true;

  services.blueman.enable = true;

  system.stateVersion = "24.11";

}
