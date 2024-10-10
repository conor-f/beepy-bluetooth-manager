list:
    @just --list

# TODO: Make these both work without relying on pip!
beepy-install:
    sudo apt install bluetooth bluez pi-bluetooth bluez-tools bluez-firmware pulseaudio pulseaudio-utils pulseaudio-module-bluetooth blueman
    @python -m pip install beepy-bluetooth-manager
    @echo "Rebooting in 10. Press ctrl+c to cancel."
    sleep 10
    sudo reboot

beepy-remove:
    @python -m pip uninstall beepy-bluetooth-manager

run:
    @poetry run beepy-bluetooth-manager
