configEnvConstants = (ENV) ->
  constants =
    AUTH0_TOKEN_NAME         : 'userJWTToken'
    AUTH0_REFRESH_TOKEN_NAME : 'userRefreshJWTToken'

  process.argv.forEach (arg) ->
    argPair = arg.split '='

    if argPair[0] == '--token'
      constants.TOKEN = argPair[1]

  if ENV == 'MOCK'
    Object.assign constants,
      API_URL : 'https://api.topcoder.com'
      ENV     : 'MOCK'

  if ENV == 'DEV'
    Object.assign constants,
      API_URL                 : 'https://api-work.topcoder-dev.com'
      AUTH0_CLIENT_ID         : 'JFDo7HMkf0q2CkVFHojy3zHWafziprhT'
      AUTH0_DOMAIN            : 'topcoder-dev.auth0.com'
      NEWRELIC_APPLICATION_ID : '7374849'
      NEWRELIC_LICENSE_KEY    : '496af5ee90'
      ENV                     : 'DEV'

  if ENV == 'QA'
    Object.assign constants,
      API_URL         : 'https://api-work.topcoder-qa.com'
      AUTH0_CLIENT_ID : 'EVOgWZlCtIFlbehkq02treuRRoJk12UR'
      AUTH0_DOMAIN    : 'topcoder-qa.auth0.com'
      ENV             : 'QA'

  if ENV == 'PROD'
    Object.assign constants,
      API_URL         : 'https://api-work.topcoder.com'
      AUTH0_CLIENT_ID : '6ZwZEUo2ZK4c50aLPpgupeg5v2Ffxp9P'
      AUTH0_DOMAIN    : 'topcoder.auth0.com'
      ENV             : 'PROD'
      NODE_ENV        : 'production'

  constants

module.exports = configEnvConstants