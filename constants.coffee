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
    clientId          : process.env.AUTH0_CLIENT_ID_DEV
    AUTH0_DOMAIN      : 'topcoder-dev.auth0.com'
    AUTH0_CLIENT_ID   : process.env.AUTH0_CLIENT_ID_DEV
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
    TCO17_URL          : 'http://tco17.topcoder-dev.com'
    TCO_HOME_URL       : 'https://www.topcoder-dev.com/tco'

    ACCOUNTS_APP_URL             : 'https://accounts.topcoder-dev.com/#/member'
    ACCOUNTS_APP_CONNECTOR_URL   : 'https://accounts.topcoder-dev.com/connector.html'

    FILE_PICKER_API_KEY: process.env.FILE_PICKER_API_KEY_DEV
    FILE_PICKER_SUBMISSION_CONTAINER_NAME: 'submission-staging-dev'

    PREDIX_PROGRAM_ID  : 3448
    HEAP_ANALYTICS_APP_ID : '4153837120'

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
    clientId          : process.env.AUTH0_CLIENT_ID_QA
    AUTH0_DOMAIN      : 'topcoder-qa.auth0.com'
    AUTH0_CLIENT_ID   : process.env.AUTH0_CLIENT_ID_QA
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
    TCO17_URL          : 'http://tco17.topcoder-qa.com'
    TCO_HOME_URL       : 'https://www.topcoder-dev.com/tco'

    ACCOUNTS_APP_URL             : 'https://accounts.topcoder-qa.com/#/member'
    ACCOUNTS_APP_CONNECTOR_URL   : 'https://accounts.topcoder-qa.com/connector.html'

    FILE_PICKER_API_KEY: proces.env.FILE_PICKER_API_KEY_QA
    FILE_PICKER_SUBMISSION_CONTAINER_NAME: 'submission-staging-qa'

    PREDIX_PROGRAM_ID  : 3448
    HEAP_ANALYTICS_APP_ID : '4153837120'

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
    clientId          : process.env.AUTH0_CLIENT_ID_PROD
    AUTH0_DOMAIN      : 'topcoder.auth0.com'
    AUTH0_CLIENT_ID   : process.env.AUTH0_CLIENT_ID_PROD
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
    TCO17_URL          : 'http://tco17.topcoder.com'
    TCO_HOME_URL       : 'https://www.topcoder.com/tco'

    ACCOUNTS_APP_URL             : 'https://accounts.topcoder.com/#/member'
    ACCOUNTS_APP_CONNECTOR_URL   : 'https://accounts.topcoder.com/connector.html'

    FILE_PICKER_API_KEY: process.env.FILE_PICKER_API_KEY_PROD
    FILE_PICKER_SUBMISSION_CONTAINER_NAME: 'submission-staging-prod'

    PREDIX_PROGRAM_ID  : 3448
    HEAP_ANALYTICS_APP_ID : '638908330'

  constants

module.exports = configEnvConstants
