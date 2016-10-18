appauth <- function(app, apikey, apisecret){
    
    ## get the endpoints for this api app
    myend <- oauth_endpoints(app)
    ## create an oauth_app
    myapp <- oauth_app(app, key=apikey, secret=apisecret)
    ## create a token
    mytok <- oauth2.0_token(myend,myapp)
    ## config the token
    myctok <- config(token=mytok)
    myctok
}

  