import SwiftUI

/// Colori coerenti per ogni tema Pastel.
struct ThemePalette {
    let accent: Color             // colore d’accento (bottoni, icone attive, link)
    let pillBg: Color             // sfondo della pillbar
    let pillSelectedBg: Color     // sfondo del selezionato nella pillbar
    let pillSelectedText: Color   // testo sul selezionato

    // Pastel 1 — rosa
    static let pastel1 = ThemePalette(
        accent: Color(red: 0.99, green: 0.42, blue: 0.59),
        pillBg: Color(red: 0.99, green: 0.42, blue: 0.59).opacity(0.15),
        pillSelectedBg: Color(red: 0.99, green: 0.42, blue: 0.59),
        pillSelectedText: .white
    )

    // Pastel 2 — azzurro
    static let pastel2 = ThemePalette(
        accent: Color(red: 0.22, green: 0.55, blue: 0.98),
        pillBg: Color(red: 0.22, green: 0.55, blue: 0.98).opacity(0.15),
        pillSelectedBg: Color(red: 0.22, green: 0.55, blue: 0.98),
        pillSelectedText: .white
    )

    // Pastel 3 — lilla/viola
    static let pastel3 = ThemePalette(
        accent: Color(red: 0.46, green: 0.40, blue: 0.96),
        pillBg: Color(red: 0.46, green: 0.40, blue: 0.96).opacity(0.15),
        pillSelectedBg: Color(red: 0.46, green: 0.40, blue: 0.96),
        pillSelectedText: .white
    )
}

extension Theme {
    /// Palette per il tema selezionato (Pastel1/2/3).
    var palette: ThemePalette {
        switch self {
        case .pastel1: return .pastel1
        case .pastel2: return .pastel2
        case .pastel3: return .pastel3
        }
    }
}

extension AppState {
    /// Accessor comodo: colori del tema corrente.
    var themePalette: ThemePalette { theme.palette }
}
