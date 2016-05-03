configEnvConstants = (ENV) ->
  constants = {}

  if ENV == 'DEV'
    Object.assign constants,
    API_URL           : 'https://api.topcoder-dev.com/v3'
    API_URL_V2        : 'https://api.topcoder-dev.com/v2'
    WORK_API_URL      : 'https://api-work.topcoder-dev.com/v3'
    INTERNAL_API_URL  : 'https://internal-api.topcoder-dev.com/v3'
    ASSET_PREFIX      : 'https://s3.amazonaws.com/app.topcoder-dev.com/'
    AUTH_API_URL      : 'https://api.topcoder-dev.com/v3'
    auth0Callback     : 'https://api.topcoder-dev.com/pub/callback.html'
    auth0Domain       : 'topcoder-dev.auth0.com'
    clientId          : 'JFDo7HMkf0q2CkVFHojy3zHWafziprhT'
    AUTH0_DOMAIN      : 'topcoder-dev.auth0.com'
    AUTH0_CLIENT_ID   : 'JFDo7HMkf0q2CkVFHojy3zHWafziprhT'
    domain            : 'topcoder-dev.com'
    DOMAIN            : 'topcoder-dev.com'
    ENV               : 'DEV'

    NEW_RELIC_APPLICATION_ID: if process.env.TRAVIS_BRANCH then '8957921' else ''

    ARENA_URL          : '//arena.topcoder-dev.com'
    BLOG_LOCATION      : 'https://www.topcoder-dev.com/feed/?post_type=blog'
    COMMUNITY_URL      : '//community.topcoder-dev.com'
    FORUMS_APP_URL     : '//apps.topcoder-dev.com/forums'
    HELP_APP_URL       : 'help.topcoder-dev.com'
    MAIN_URL           : 'https://www.topcoder-dev.com'
    PHOTO_LINK_LOCATION: 'https://community.topcoder-dev.com'
    SWIFT_PROGRAM_URL  : 'apple.topcoder-dev.com'
    TCO16_URL          : 'http://tco16.topcoder-dev.com'

    # Mailchimp
    MAILCHIMP_LIST_ID       : '72cdd94102'
    MAILCHIMP_NL_TCO        : '4376e08f1e'
    MAILCHIMP_NL_IOS        : '11d81965bb'
    MAILCHIMP_NL_DEV        : 'e0986266dc'
    MAILCHIMP_NL_DESIGN     : '9d1b672a99'
    MAILCHIMP_NL_DATA       : 'cc118bd550'


  if ENV == 'QA'
    Object.assign constants,
    API_URL           : 'https://api.topcoder-qa.com/v3'
    API_URL_V2        : 'https://api.topcoder-qa.com/v2'
    WORK_API_URL      : 'https://api-work.topcoder-qa.com/v3'
    INTERNAL_API_URL  : 'https://internal-api.topcoder-qa.com/v3'
    ASSET_PREFIX      : 'https://s3.amazonaws.com/app.topcoder-qa.com/'
    AUTH_API_URL      : 'https://api.topcoder-qa.com/v3'
    auth0Callback     : 'https://api.topcoder-qa.com/pub/callback.html'
    auth0Domain       : 'topcoder-qa.auth0.com'
    clientId          : 'EVOgWZlCtIFlbehkq02treuRRoJk12UR'
    AUTH0_DOMAIN      : 'topcoder-qa.auth0.com'
    AUTH0_CLIENT_ID   : 'EVOgWZlCtIFlbehkq02treuRRoJk12UR'
    domain            : 'topcoder-qa.com'
    DOMAIN            : 'topcoder-qa.com'
    ENV               : 'QA'

    NEW_RELIC_APPLICATION_ID: if process.env.TRAVIS_BRANCH then '11199233' else ''

    ARENA_URL          : '//arena.topcoder-qa.com'
    BLOG_LOCATION      : 'https://www.topcoder-qa.com/feed/?post_type=blog'
    COMMUNITY_URL      : '//community.topcoder-qa.com'
    FORUMS_APP_URL     : '//apps.topcoder-qa.com/forums'
    HELP_APP_URL       : 'help.topcoder-qa.com'
    MAIN_URL           : 'https://www.topcoder-qa.com'
    PHOTO_LINK_LOCATION: 'https://community.topcoder-qa.com'
    SWIFT_PROGRAM_URL  : 'apple.topcoder-qa.com',
    TCO16_URL          : 'http://tco16.topcoder-qa.com'

    # Mailchimp
    MAILCHIMP_LIST_ID       : '72cdd94102'
    MAILCHIMP_NL_TCO        : '4376e08f1e'
    MAILCHIMP_NL_IOS        : '11d81965bb'
    MAILCHIMP_NL_DEV        : 'e0986266dc'
    MAILCHIMP_NL_DESIGN     : '9d1b672a99'
    MAILCHIMP_NL_DATA       : 'cc118bd550'

  if ENV == 'PROD'
    Object.assign constants,
    API_URL           : 'https://api.topcoder.com/v3'
    API_URL_V2        : 'https://api.topcoder.com/v2'
    WORK_API_URL      : 'https://api-work.topcoder.com/v3'
    INTERNAL_API_URL  : 'https://internal-api.topcoder.com/v3'
    ASSET_PREFIX      : 'https://s3.amazonaws.com/app.topcoder.com/'
    AUTH_API_URL      : 'https://api.topcoder.com/v3'
    auth0Callback     : 'https://api.topcoder.com/pub/callback.html'
    auth0Domain       : 'topcoder.auth0.com'
    clientId          : '6ZwZEUo2ZK4c50aLPpgupeg5v2Ffxp9P'
    AUTH0_DOMAIN      : 'topcoder.auth0.com'
    AUTH0_CLIENT_ID   : '6ZwZEUo2ZK4c50aLPpgupeg5v2Ffxp9P'
    domain            : 'topcoder.com'
    DOMAIN            : 'topcoder.com'
    ENV               : 'PROD'
    NODE_ENV          : 'production'

    NEW_RELIC_APPLICATION_ID: if process.env.TRAVIS_BRANCH then '11352758' else ''

    ARENA_URL          : '//arena.topcoder.com'
    BLOG_LOCATION      : 'https://www.topcoder.com/feed/?post_type=blog'
    COMMUNITY_URL      : '//community.topcoder.com'
    FORUMS_APP_URL     : '//apps.topcoder.com/forums'
    HELP_APP_URL       : 'help.topcoder.com'
    MAIN_URL           : 'https://www.topcoder.com'
    PHOTO_LINK_LOCATION: 'https://community.topcoder.com'
    SWIFT_PROGRAM_URL  : 'apple.topcoder.com',
    TCO16_URL          : 'http://tco16.topcoder.com'

    # Mailchimp
    MAILCHIMP_LIST_ID       : '72cdd94102'
    MAILCHIMP_NL_TCO        : '4376e08f1e'
    MAILCHIMP_NL_IOS        : '11d81965bb'
    MAILCHIMP_NL_DEV        : 'e0986266dc'
    MAILCHIMP_NL_DESIGN     : '9d1b672a99'
    MAILCHIMP_NL_DATA       : 'cc118bd550'

  constants

module.exports = configEnvConstants