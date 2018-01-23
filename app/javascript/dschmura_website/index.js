
// Include external resources for this app_files
import 'bootstrap'

// Include internal resources for this app
import './javascripts/application'

// require.context('./javascripts/', true, /\.(js)$/i)
require.context('./stylesheets/', true, /^\.\/[^_].*\.(css|scss|sass)$/i)
require.context('./images/', true, /\.\/(gif|jpg|png|svg)$/i)
