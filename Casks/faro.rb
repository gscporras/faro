# Fórmula (cask) de Homebrew para Faro. El workflow de publicación reemplaza
# 0.1.0, 99f5222c44607677267287d54e9b0e067d00275ab34972334df6582f5afc56f3 y Faro_0.1.0_universal.dmg y la sube al repo público gscporras/faro.
cask "faro" do
  version "0.1.0"
  sha256 "99f5222c44607677267287d54e9b0e067d00275ab34972334df6582f5afc56f3"

  url "https://github.com/gscporras/faro/releases/download/v#{version}/Faro_0.1.0_universal.dmg"
  name "Faro"
  desc "Lanzador y centro de automatizaciones"
  homepage "https://gscporras.github.io/faro/"

  depends_on macos: ">= :big_sur"

  app "Faro.app"

  zap trash: [
    "~/Library/Application Support/dev.gian.faro",
    "~/Library/Caches/dev.gian.faro",
    "~/Library/LaunchAgents/Faro.plist",
    "~/Library/WebKit/dev.gian.faro",
  ]

  caveats <<~EOS
    Faro todavía no está firmado por Apple. La primera vez que lo abras, macOS lo bloqueará:
    abre Ajustes del Sistema → Privacidad y seguridad y pulsa «Abrir igualmente».
  EOS
end
