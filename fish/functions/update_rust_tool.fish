function update_rust_tool --description 'Update Rust Tools'
    echo "Update Rust tool"
    if read_confirm
        cargo install exa
        sleep 5
        cargo install bat
        sleep 5
        cargo install du-dust
        sleep 5
        cargo install fd-find
        sleep 5
        cargo install hexyl
        sleep 5
        cargo install procs
        sleep 5
        cargo install tokei
        sleep 5
        cargo install ripgrep
    end
end
