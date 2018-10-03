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

* node version: `v10.11.0`
* npm verison: `6.4.1`
* yarn verison: `1.9.4`

## Testing without cache

Testing install speed without cache `node_modules` folder.

```
$ rm -rf ~/.npm/_cacache/
$ time npm install
```

time: `3m40.155s`

Try [npm ci](https://docs.npmjs.com/cli/ci) command

```
$ rm -rf ~/.npm/_cacache/
$ time npm ci
```

time: `3m10.783s`

```
$ yarn cache clean
$ time yarn install
```

time: `1m1.261s`

## Testing with cache

Testing install speed **without** include cache `node_modules` folder.

```
$ rm -rf node_modules
$ time npm install
```

time: `1m1.195s`

Try [npm ci](https://docs.npmjs.com/cli/ci) command

```
$ rm -rf node_modules
$ time npm ci
```

time: `0m18.030s`

```
$ rm -rf node_modules
$ time yarn install
```

time: `0m30.571s`

Testing install speed **with** cache `node_modules` folder.

```
$ time npm install
```

time: `0m54.944s`

```
$ time npm ci
```

time: `0m21.810s`

```
$ time yarn install
```

time: `0m2.109s`

## Conclusion

Date: 2018-10-02

Yarn is faster than npm. We can move package manager from Npm to Yarn for JavaScript now.

|                                              | npm install   | npm ci  | yarn | 
|----------------------------------------------|---------------|---------|------|
| install without cache (without node_modules) | 3m            | 3m      | 1ms  |
| install with cache (without node_modules)    | 1m            | 18s     | 30s  |
| install with cache (with node_modules)       | 54s           | 21s     | 2s   |
| install without internet (with node_modules) | -             | -       | 2s   |
