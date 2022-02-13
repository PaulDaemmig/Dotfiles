# Edit this configuration file to define what should be installed on
# your system.  Help is available in the configuration.nix(5) man page
# and in the NixOS manual (accessible by running ‘nixos-help’).

{ config, pkgs, ... }:

{
  imports =
    [ # Include the results of the hardware scan.
      ./hardware-configuration.nix
    ];

  nixpkgs.config.allowUnfree = true;
  
  boot.loader.grub = {
    enable = true;
    version = 2;
    device = "/dev/sda";
  };

  networking = {
    hostName = "Paul-PC";
    useDHCP = false;
    interfaces.enp2s0.useDHCP = true;
    firewall.enable = false;
  };

  time.timeZone = "Europe/Berlin";

  i18n.defaultLocale = "en_US.UTF-8";
  console = {
    font = "Lat2-Terminus16";
    keyMap = "us";
  };

  services.xserver = {
    enable = true;
    layout = "us";

    displayManager = {
      lightdm.enable = true;
      defaultSession = "none+awesome";
    };

    desktopManager.plasma5 = {
      enable = true;
    };
    
    windowManager.awesome = {
      enable = true;
      luaModules = with pkgs.luaPackages; [
        luarocks
	luadbi-mysql
      ];
    };

    windowManager.i3 = {
      enable = false;
      package = pkgs.i3-gaps;
      extraPackages = with pkgs; [
        dmenu
	i3status
	i3blocks
	i3lock
      ];
    };

  };

  # Enable CUPS to print documents.
  services.printing.enable = true;

  # Enable sound.
  sound.enable = true;
  hardware.pulseaudio.enable = true;

  users.users.paul = {
    isNormalUser = true;
    extraGroups = [ "wheel" ];  
  };

  environment.systemPackages = let
    myPythonPackages = pythonPackages : with pythonPackages; [
      numpy
      matplotlib
      sympy
      scipy
    ];
  in  with pkgs; [
    vim 
    wget
    git
    vivaldi
    (python3.withPackages myPythonPackages)
  ];

  programs.steam.enable = true;

  # Some programs need SUID wrappers, can be configured further or are
  # started in user sessions.
  programs.mtr.enable = true;
  programs.gnupg.agent = {
    enable = true;
    enableSSHSupport = true;
  };

  # List services that you want to enable:

  # Enable the OpenSSH daemon.
  services.openssh.enable = true;

  system = {
    stateVersion = "unstable";  
    autoUpgrade = {
      enable = true;
    allowReboot = true;
    };
  };

}

