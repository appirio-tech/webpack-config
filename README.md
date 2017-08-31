# Note - 8/31/2017
The build process for this repo has been switched from Travis to CircleCI. During build (triggered by tagging), a new NPM version is registered with the NPM registry. We have tested this successfully with a test NPM - however, in order to avoid publishing a new NPM version we didn't let it run against the "real" published NPM. In other words, we'll hang on until we have an actual change to make. Please contact mtwomey if you have any questions or run into any issues during deploy.

# webpack-config

## Development
```shell
npm install
npm run dev
```

## Release
Create a tag and it will automatically publish to npmjs.org
