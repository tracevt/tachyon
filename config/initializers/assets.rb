# Add additional asset paths to Propshaft's lookup paths.
# Rails.application.config.assets.paths << Rails.root.join("fonts")

# Precompile additional file extensions if Propshaft doesn't discover them automatically.
# Propshaft typically discovers assets referenced by your CSS/JS bundlers.
# For example, if you have specific font types not in the default discovery:
Rails.application.config.assets.precompile += %w( .woff2 .woff .ttf .eot .svg )
