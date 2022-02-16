
# luciole_font_dependency()
expect_inherits(luciole_font_dependency(), "html_dependency")
expect_true(is.null(luciole_font_dependency(selector = NULL)$head))
expect_false(is.null(luciole_font_dependency(selector = "div")$head))

# attach_luciole()
expect_inherits(attach_luciole(), "shiny.tag")

# tag_example()
expect_inherits(tag_example(), "shiny.tag")

# add_luciole()
expect_silent(add_luciole())
expect_true("Luciole" %in% sysfonts::font_families())

# paths
expect_true(file.exists(luciole_path_regular()))
expect_true(file.exists(luciole_path_bold()))
expect_true(file.exists(luciole_path_italic()))
expect_true(file.exists(luciole_path_bolditalic()))
