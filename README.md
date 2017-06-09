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

* node version: `v8.0.0`
* npm verison: `5.0.0`
* yarn verison: `0.24.6`

## Testing without cache

Testing install speed without cache `node_modules` folder.

```
$ npm cache verify
$ rm -rf ~/.npm/_cacache/
$ time npm install
```

> real    1m43.370s
> user    0m50.298s
> sys     0m17.945s

```
$ yarn cache clean
$ time yarn install
```

real    1m1.707s
user    0m45.594s
sys     0m18.121s

## Testing with cache

Testing install speed **without** include cache `node_modules` folder.

```
$ rm -rf node_moduels
$ time npm install
```

real    0m38.819s
user    0m28.780s
sys     0m11.605s

```
$ rm -rf node_moduels
$ time yarn install
```

real    0m24.219s
user    0m21.591s
sys     0m11.321s

Testing install speed **with** cache `node_modules` folder.

```
$ time npm install
```

real    0m11.216s
user    0m10.992s
sys     0m0.670s

```
$ time yarn install
```

real    0m0.954s
user    0m0.997s
sys     0m0.118s

## Conclusion

Yarn is so faster than npm. We can move package manager from Npm to Yarn for JavaScript now.

|                       | npm    | yarn    |
|-----------------------|--------|---------|
| install without cache | 103.00s| 61.70s  |
| install with cache    | 11.00s | `0.9s`  |
