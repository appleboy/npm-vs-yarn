# npm-vs-yarn

[Npm][1] vs [Yarn][2] install speed testing. 

## What is Yarn

Yarn is a new package manager for JavaScript. Please read [blog post][3] from [Facebook][4] for detail information.

[1]:https://www.npmjs.com/
[2]:https://yarnpkg.com/
[3]:https://code.facebook.com/posts/1840075619545360
[4]:https://code.facebook.com/

## Prepare Environment

You can testing in Docker or what you prefer.

* node version: `v6.7.0`
* npm verison: `3.10.3`
* yarn verison: `0.15.1`

## Testing without cache

Testing install speed without cache `node_modules` folder.

```
$ npm cache clean
$ npm install
```

Result: 

```
$ yarn cache clean
$ yarn install
```

Result: 42.80s

## Testing with cache

```
$ npm install
```

Result: 

```
$ yarn install
```

Result: 0.16s
