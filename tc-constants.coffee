configEnvConstants = (ENV) ->
  constants = {}

  if ENV == 'DEV'
    Object.assign constants,
      API_URL       : 'https://api.topcoder-dev.com/v3'
      API_URL_V2    : 'https://api.topcoder-dev.com/v2'
      ASSET_PREFIX  : 'https://s3.amazonaws.com/app.topcoder-dev.com/'
      AUTH_API_URL  : 'https://api.topcoder-dev.com/v3'
      auth0Callback : 'https://api.topcoder-dev.com/pub/callback.html'
      auth0Domain   : 'topcoder-dev.auth0.com'
      clientId      : 'JFDo7HMkf0q2CkVFHojy3zHWafziprhT'
      domain        : 'topcoder-dev.com'
      ENV           : 'DEV'

      ARENA_URL          : '//arena.topcoder-dev.com'
      BLOG_LOCATION      : 'https://www.topcoder-dev.com/feed/?post_type=blog'
      COMMUNITY_URL      : '//community.topcoder-dev.com'
      FORUMS_APP_URL     : '//apps.topcoder-dev.com/forums'
      HELP_APP_URL       : 'help.topcoder-dev.com'
      MAIN_URL           : 'https://www.topcoder-dev.com'
      PHOTO_LINK_LOCATION: 'https://community.topcoder-dev.com'
      SWIFT_PROGRAM_URL  : 'apple.topcoder-dev.com',
      TCO16_URL          : 'http://tco16.topcoder-dev.com'


  if ENV == 'QA'
    Object.assign constants,
    API_URL       : 'https://api.topcoder-qa.com/v3'
    API_URL_V2    : 'https://api.topcoder-qa.com/v2'
    ASSET_PREFIX  : 'https://s3.amazonaws.com/app.topcoder-qa.com/'
    AUTH_API_URL  : 'https://api.topcoder-qa.com/v3'
    auth0Callback : 'https://api.topcoder-qa.com/pub/callback.html'
    auth0Domain   : 'topcoder-qa.auth0.com'
    clientId      : 'EVOgWZlCtIFlbehkq02treuRRoJk12UR'
    domain        : 'topcoder-qa.com'
    ENV           : 'QA'

    ARENA_URL          : '//arena.topcoder-qa.com'
    BLOG_LOCATION      : 'https://www.topcoder-qa.com/feed/?post_type=blog'
    COMMUNITY_URL      : '//community.topcoder-qa.com'
    FORUMS_APP_URL     : '//apps.topcoder-qa.com/forums'
    HELP_APP_URL       : 'help.topcoder-qa.com'
    MAIN_URL           : 'https://www.topcoder-qa.com'
    PHOTO_LINK_LOCATION: 'https://community.topcoder-qa.com'
    SWIFT_PROGRAM_URL  : 'apple.topcoder-qa.com',
    TCO16_URL          : 'http://tco16.topcoder-qa.com'

  if ENV == 'PROD'
    Object.assign constants,
    API_URL       : 'https://api.topcoder.com/v3'
    API_URL_V2    : 'https://api.topcoder.com/v2'
    ASSET_PREFIX  : 'https://s3.amazonaws.com/app.topcoder.com/'
    AUTH_API_URL  : 'https://api.topcoder.com/v3'
    auth0Callback : 'https://api.topcoder.com/pub/callback.html'
    auth0Domain   : 'topcoder.auth0.com'
    clientId      : '6ZwZEUo2ZK4c50aLPpgupeg5v2Ffxp9P'
    domain        : 'topcoder.com'
    ENV           : 'PROD'
    NODE_ENV      : 'production'

    ARENA_URL          : '//arena.topcoder.com'
    BLOG_LOCATION      : 'https://www.topcoder.com/feed/?post_type=blog'
    COMMUNITY_URL      : '//community.topcoder.com'
    FORUMS_APP_URL     : '//apps.topcoder.com/forums'
    HELP_APP_URL       : 'help.topcoder.com'
    MAIN_URL           : 'https://www.topcoder.com'
    PHOTO_LINK_LOCATION: 'https://community.topcoder.com'
    SWIFT_PROGRAM_URL  : 'apple.topcoder.com',
    TCO16_URL          : 'http://tco16.topcoder.com'

  constants

module.exports = configEnvConstants
