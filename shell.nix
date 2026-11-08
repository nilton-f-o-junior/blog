{ pkgs ? import <nixpkgs> {} }:

pkgs.mkShell {
  buildInputs = with pkgs; [
    python3
    live-server
  ];

  shellHook = ''
    echo "=================================================="
    echo "⚡ Ambiente temporário HTML/CSS/JS pronto!"
    echo "=================================================="
    echo "Digite 'live-server' para abrir com auto-reload."
    echo "Ao fechar este terminal, nada fica instalado!"
    echo "=================================================="
  '';
}
