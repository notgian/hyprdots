-- hl.animation({ leaf = STRING, enabled = BOOLEAN, speed = FLOAT, curve = STRING[, style = STRING] })

-- defining beziers
hl.curve( "cubicBezier", { type = "bezier", points = { {0.33, 1}, {0.68, 1} } } )
hl.curve( "circularBezier", { type = "bezier", points = { { 0.16, 1}, {0.3, 1} } } )

-- hl.curve( "easeOutBack", { type = "bezier", points = { {0.34, 1.56}, {0.64, 1} } } )
hl.curve( "bouncy", { type = "spring", mass = 1, stiffness = 300, dampening = 30 })

-- applying the custom animations
hl.animation({ leaf = "workspaces", enabled = true, speed = 4, bezier = "circularBezier", style="slide"})

hl.animation({ leaf = "windowsIn", enabled = true, speed = 2, spring="bouncy", style="gnomed"})
hl.animation({ leaf = "windowsOut", enabled = true, speed = 5, spring="bouncy", style="gnomed"})
hl.animation({ leaf = "windowsMove", enabled = true, speed = 1, spring="bouncy" })

hl.animation({ leaf = "fade", enabled = 1, speed = 3, bezier = "circularBezier"})
hl.animation({ leaf = "fadeIn", enabled = 1, speed = 5, bezier = "circularBezier"})
hl.animation({ leaf = "fadeOut", enabled = 1, speed = 5, bezier = "circularBezier"})

