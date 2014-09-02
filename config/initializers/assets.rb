# Be sure to restart your server when you modify this file.

# Version of your assets, change this if you want to expire all your assets.
Rails.application.config.assets.version = '1.0'

# Precompile additional assets.
# application.js, application.css, and all non-JS/CSS in app/assets folder are already added.

#js_head
Rails.application.config.assets.precompile += %w( casanova/modernizr.custom.js )
Rails.application.config.assets.precompile += %w( casanova/jquery-1.10.2.min.js )
Rails.application.config.assets.precompile += %w( casanova/jquery.themepunch.plugins.min.js )
Rails.application.config.assets.precompile += %w( casanova/jquery.themepunch.revolution.min.js )

#js_footer
Rails.application.config.assets.precompile += %w( casanova/maplace.min.js )
Rails.application.config.assets.precompile += %w( casanova/imagesloaded.pkgd.min.js )
Rails.application.config.assets.precompile += %w( casanova/isotope.pkgd.min.js )
Rails.application.config.assets.precompile += %w( casanova/jquery.bxslider.min.js )
Rails.application.config.assets.precompile += %w( casanova/jquery.hoverdir.min.js )
Rails.application.config.assets.precompile += %w( casanova/jquery.slicknav.min.js )
Rails.application.config.assets.precompile += %w( casanova/jquery.appear.js )
Rails.application.config.assets.precompile += %w( casanova/jquery.tweet.js )
Rails.application.config.assets.precompile += %w( casanova/jquery.easypiechart.min.js )
Rails.application.config.assets.precompile += %w( casanova/jquery.sticky.js )
Rails.application.config.assets.precompile += %w( casanova/jquery.tooltipster.min.js )
Rails.application.config.assets.precompile += %w( casanova/jquery.swipebox.min.js )
Rails.application.config.assets.precompile += %w( casanova/casanova.menu.js )
Rails.application.config.assets.precompile += %w( casanova/casanova.accordion.js )
Rails.application.config.assets.precompile += %w( casanova/casanova.tabs.js )
Rails.application.config.assets.precompile += %w( casanova/casanova.fitmedia.js )
Rails.application.config.assets.precompile += %w( casanova/casanova.js )
Rails.application.config.assets.precompile += %w( casanova/init.js )

#css_head

Rails.application.config.assets.precompile += %w( casanova/core.css )
Rails.application.config.assets.precompile += %w( casanova/custom.css )
Rails.application.config.assets.precompile += %w( casanova/swipebox.css )
Rails.application.config.assets.precompile += %w( casanova/misc.css )
Rails.application.config.assets.precompile += %w( casanova/responsive.css )
Rails.application.config.assets.precompile += %w( casanova/settings.css )
Rails.application.config.assets.precompile += %w( casanova/style.css )
Rails.application.config.assets.precompile += %w( casanova/tooltipster.css )
