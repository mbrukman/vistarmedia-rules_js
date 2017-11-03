load('//js/private:npm.bzl', 'npm_install', 'npm_tarball_install')

def _node_buildfile(arch):
  return '\n'.join([
    'package(default_visibility=["//visibility:public"])',
    'filegroup(name="node", srcs=["node-v6.2.2-%s/bin/node"])' % arch
  ])


def js_repositories():
  native.new_http_archive(
    name = 'nodejs_linux_amd64',
    url = 'https://nodejs.org/dist/v6.2.2/node-v6.2.2-linux-x64.tar.gz',
    sha256 = '7a6df881183e70839857b51653811aaabc49a2ffb93416a1c9bd333dcef84ea3',
    build_file_content = _node_buildfile('linux-x64'),
  )

  native.new_http_archive(
    name = 'nodejs_darwin_amd64',
    url = 'https://nodejs.org/dist/v6.2.2/node-v6.2.2-darwin-x64.tar.gz',
    sha256 = '03b9eadd71d73daf2a25c8ea833454b326cb702f717a39f1b2a1324179cab5fa',
    build_file_content = _node_buildfile('darwin-x64'),
  )

  # Grab Mocha + dependencies
  npm_install(
    name = 'graceful-readlink',
    version='1.0.1',
    sha256 = 'c1ce83682d563874517386a13c364eb0a8494e99a69203cff264a1381cb3a300',
  )
  npm_install(
    name = 'commander',
    version = '2.9.0',
    sha256 = '197a1e0b408bc686fbf62ed5ef43210251c616ba1b09721e8299d4484217bd47',
  )
  npm_install(
    name = 'ms',
    version = '0.7.2',
    sha256 = '4fdc14e963913ad66571ec3753d2169abbb41ca25f1d92b26efe46afee85e435',
  )
  npm_install(
    name = 'debug',
    version = '2.6.0',
    sha256 = 'a8178fc9b10b81311bc26d74e9d17ecfb14fbbbf7778d600ae246861d4f501eb',
  )
  npm_install(
    name = 'diff',
    version = '3.2.0',
    sha256 = '6d908956880eaf2cfa63bbe0c8aead7fca3ba3ddbd952afefc6a812bbcdb3259',
  )
  npm_install(
    name = 'has-flag',
    version = '2.0.0',
    sha256 = '0915ab7bab71d000cd1ccb70b4e29afe1819183538339c8953bc9d3344bc4241',
  )
  npm_install(
    name = 'supports-color',
    version = '3.1.2',
    sha256 = '38d3e0f27fefc6ace202c5afcdc49bb06fd10ea9e078fcc36ee7af603e9c9665',
  )
  npm_install(
    name = 'escape-string-regexp',
    version = '1.0.5',
    sha256 = 'e50c792e76763d0c74506297add779755967ca9bbd288e2677966a6b7394c347',
  )
  npm_install(
    name = 'path-is-absolute',
    version = '1.0.1',
    sha256 = '6e6d709f1a56942514e4e2c2709b30c7b1ffa46fbed70e714904a3d63b01f75c',
  )
  npm_install(
    name = 'balanced-match',
    version = '0.4.2',
    sha256 = '2af5559389b5274d3a8b5834dad7bbe0ca51509324f8cc2ecc2a368de4e20ad8',
  )
  npm_install(
    name = 'concat-map',
    version = '0.0.1',
    sha256 = '35902dd620cf0058c49ea614120f18a889d984269a90381b7622e79c2cfe4261',
  )
  npm_install(
    name = 'brace-expansion',
    version = '1.1.6',
    sha256 = '7f3496919ed6a064939c3c07c3fefd45c7163e81792c3146f91e156708620a0c',
  )
  npm_install(
    name = 'minimatch',
    version = '3.0.3',
    sha256 = 'bcd13daf575da13da23d57b170d33b3d7d80e7ea319d8cba2bea5b842b2a5d81',
  )
  npm_install(
    name = 'inflight',
    version = '1.0.6',
    sha256 = '5a9fdcf59874af6ad3b413b6815d5afaaea34939a3bee20e1e50f7830031889b',
  )
  npm_install(
    name = 'wrappy',
    version = '1.0.2',
    sha256 = 'aff3730d91b7b1e143822956d14608f563163cf11b9d0ae602df1fe1e430fdfb',
  )
  npm_install(
    name = 'once',
    version = '1.4.0',
    sha256 = 'cf51460ba370c698f68b976e514d113497339ba018b6003e8e8eb569c6fccfcf',
  )
  npm_install(
    name = 'inherits',
    version = '2.0.3',
    sha256 = '7f5f58e9b54e87e264786e7e84d9e078aaf68c1003de9fa68945101e02356cdf',
  )
  npm_install(
    name = 'fs.realpath',
    version = '1.0.0',
    sha256 = '9e80cb8713125aa53df81a29626f7b81f26a9be1cd41840b3ccdcae4d52e8f9c',
  )
  npm_install(
    name = 'glob',
    version = '7.1.1',
    sha256 = '17232040681c8bfa5badd0801a977fa79c05f0388974e8921fffabd380d10c0b',
  )
  npm_install(
    name = 'json3',
    version = '3.3.2',
    sha256 = '703e754f648282fa455bd84a347d4105c9bb521c80983d54ec9f35f994558b5e',
  )
  npm_install(
    name = 'mkdirp',
    version = '0.5.1',
    sha256 = '77b52870e8dedc68e1e7afcdadba34d3da6debe4f3aae36453ba151f1638bf24',
    ignore_deps = ['minimist'],
  )
  npm_install(
    name = 'lodash.create',
    version = '4.2.0',
    sha256 = 'aeeb60f75c0906fda54ca19b17fb1af591eecd92c053e3dc4e54e360312f3fc6',
  )
  npm_install(
    name = 'mocha',
    version = '3.2.0',
    sha256 = '909a629739cbe09e73465b0615d0a7cc634041d8395787c8e8976e1a925c01c2',
    type_version = '2.2.37',
    type_sha256 = '5d58404cf416052ba01b3c419a431d3cc253b23414bbdabc83e9961f82ac6e0f',
    ignore_deps = [
      'browser.stdout',
      'growl',
    ],
  )
  npm_install(
    name = 'source-map-support',
    version = '0.4.18',
    sha256 = '82e7eb70bc5039b1e194e98f65eea2740bba35a4eda384eadba7d5867a60ade0',
  )
  npm_install(
    name = 'source-map',
    version = '0.5.6',
    sha256 = '5b6d427a47255f75c923ceaa50b39567837a784f988fb5937b55bcfa6521e971',
  )

  npm_tarball_install(
    name = 'browserify',
    url = 'https://s3.amazonaws.com/js.vistarmedia.com/browserify-14.4.0.tgz',
    sha256 = 'deafadbb88c976fb2bf41e911dfc0a70e635a4073f1c8c49549eb964e96f9d62',
    ignore_deps = [
      'JSONStream',
      'assert',
      'browser-pack',
      'browser-resolve',
      'browserify-zlib',
      'buffer',
      'cached-path-relative',
      'concat-stream',
      'console-browserify',
      'constants-browserify',
      'crypto-browserify',
      'defined',
      'deps-sort',
      'domain-browser',
      'duplexer2',
      'events',
      'glob',
      'has',
      'htmlescape',
      'https-browserify',
      'inherits',
      'insert-module-globals',
      'labeled-stream-splicer',
      'module-deps',
      'os-browserify',
      'parents',
      'path-browserify',
      'process',
      'punycode',
      'querystring-es3',
      'read-only-stream',
      'readable-stream',
      'resolve',
      'shasum',
      'shell-quote',
      'stream-browserify',
      'stream-http',
      'string_decoder',
      'subarg',
      'syntax-error',
      'through2',
      'timers-browserify',
      'tty-browserify',
      'url',
      'util',
      'vm-browserify',
      'xtend',
    ]
  )

  npm_install(
    name='js-tokens',
    version='3.0.2',
    sha256='85ce7a76734264e093bcb1dbbe6d4d4130ee0a7fa562e7608693ee8c3c197d19',
  )
  npm_install(
    name='loose-envify',
    version='1.3.1',
    sha256='fb526ac195ab33e34c3a5fc5a4f68ae865de3310209191c2f5ab56d9631ce088',
  )

  npm_tarball_install(
    name = 'uglifyjs',
    url = 'https://s3.amazonaws.com/js.vistarmedia.com/uglify-js-3.0.24.tgz',
    sha256 = 'afc191cfb99b252d750fdae86bcd0e1e74a764a470d0298ffb6655322ae9a50f',
    ignore_deps = [
      'commander',
      'source-map',
    ]
  )
