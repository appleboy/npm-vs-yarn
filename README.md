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

* node version: `v9.7.1`
* npm verison: `5.7.1`
* yarn verison: `1.5.1`

## Testing without cache

Testing install speed without cache `node_modules` folder.

```
$ rm -rf ~/.npm/_cacache/
$ time npm install
```

time: `1m1.009s`

Try [npm ci](https://docs.npmjs.com/cli/ci) command

```
$ rm -rf ~/.npm/_cacache/
$ time npm ci
```

time: `1m0.268s`

```
$ yarn cache clean
$ time yarn install
```

time: `0m46.044s`

## Testing with cache

Testing install speed **without** include cache `node_modules` folder.

```
$ rm -rf node_modules
$ time npm install
```

time: `0m58.567s`

Try [npm ci](https://docs.npmjs.com/cli/ci) command

```
$ rm -rf node_modules
$ time npm ci
```

time: `0m43.004s`

```
$ rm -rf node_modules
$ time yarn install
```

time: `0m36.384s`

Testing install speed **with** cache `node_modules` folder.

```
$ time npm install
```

time: `0m10.964s`

```
$ time npm ci
```

time: `0m46.317s`

```
$ time yarn install
```

time: `0m1.601s`

## Conclusion

Date: 2018-03-08

Yarn is so faster than npm. We can move package manager from Npm to Yarn for JavaScript now.

|                                              | npm install   | npm ci  | yarn | 
|----------------------------------------------|---------------|---------|------|
| install without cache (without node_modules) | 61s           | 60s     | 46s|
| install with cache (without node_modules)    | 58s           | 43s     | 36s|
| install with cache (with node_modules)       | 10s           | 46s     | `2s`|
