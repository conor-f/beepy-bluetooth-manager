list:
    @just --list

# TODO: Make these both work without relying on pip!
beepy-install:
    sudo apt install bluetooth bluez
    @python -m pip install beepy-bluetooth-manager

beepy-remove:
    @python -m pip uninstall beepy-bluetooth-manager

run:
    @poetry run beepy-bluetooth-manager
