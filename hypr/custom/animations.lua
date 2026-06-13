-- hl.animation({ leaf = STRING, enabled = BOOLEAN, speed = FLOAT, curve = STRING[, style = STRING] })

-- defining beziers
hl.curve( "cubicBezier", { type = "bezier", points = { {0.33, 1}, {0.68, 1} } } )
hl.curve( "circularBezier", { type = "bezier", points = { { 0.16, 1}, {0.3, 1} } } )

-- defining springs
hl.curve( "bouncy", { type = "spring", mass = 1, stiffness = 55, dampening = 12 })

-- applying the custom animations
hl.animation({ leaf = "workspaces", enabled = true, speed = 3, bezier = "circularBezier", style="slide"})

hl.animation({ leaf = "windowsIn", enabled = true, speed = 4, spring="bouncy", style="gnomed"})
hl.animation({ leaf = "windowsOut", enabled = true, speed = 3, spring="bouncy", style="gnomed"})
hl.animation({ leaf = "windowsMove", enabled = true, speed = 2, spring="bouncy" })

hl.animation({ leaf = "fade", enabled = 1, speed = 3, bezier = "circularBezier"})
hl.animation({ leaf = "fadeIn", enabled = 1, speed = 8, bezier = "circularBezier"})
hl.animation({ leaf = "fadeOut", enabled = 1, speed = 8, bezier = "circularBezier"})
