'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {"assets/AssetManifest.bin": "512f346c8dce69e3068e92eaf5a292c0",
"assets/AssetManifest.bin.json": "1755f28269dabdc15959ce2bb4809300",
"assets/AssetManifest.json": "9349477748a2682a13db9a2c8b610da8",
"assets/assets/bg.jpg": "f57c010202741833aa334618984422ad",
"assets/assets/bug/bug_tracking_tool%2520pages%2520(1)_pages-to-jpg-1.jpg": "3b6500a048f3ce14bf0321b305e02dda",
"assets/assets/bug/bug_tracking_tool%2520pages%2520(1)_pages-to-jpg-10.jpg": "4cc024c7d6c4e3838dbfd1048208f5af",
"assets/assets/bug/bug_tracking_tool%2520pages%2520(1)_pages-to-jpg-11.jpg": "cc4a0f406ec5ebfb9c7bd7617320b698",
"assets/assets/bug/bug_tracking_tool%2520pages%2520(1)_pages-to-jpg-12.jpg": "e0d11f01a5cfd1bc2f51fb2b89d91824",
"assets/assets/bug/bug_tracking_tool%2520pages%2520(1)_pages-to-jpg-13.jpg": "17b67b7b51b40c5a8cb14f5be299edc5",
"assets/assets/bug/bug_tracking_tool%2520pages%2520(1)_pages-to-jpg-14.jpg": "dce6f85a0979bb51079efe1845125bc1",
"assets/assets/bug/bug_tracking_tool%2520pages%2520(1)_pages-to-jpg-15.jpg": "2a98c3c32b3a572f824772b37e992088",
"assets/assets/bug/bug_tracking_tool%2520pages%2520(1)_pages-to-jpg-16.jpg": "6fdd01dc47bd5a0d04af3713a47b157c",
"assets/assets/bug/bug_tracking_tool%2520pages%2520(1)_pages-to-jpg-17.jpg": "1905050e0a6b5c648d6fe0056a1fedfc",
"assets/assets/bug/bug_tracking_tool%2520pages%2520(1)_pages-to-jpg-18.jpg": "226b1d036f859a22ee1e087e3572beae",
"assets/assets/bug/bug_tracking_tool%2520pages%2520(1)_pages-to-jpg-2.jpg": "cb047119439da55e7c2ed7b87d07ed84",
"assets/assets/bug/bug_tracking_tool%2520pages%2520(1)_pages-to-jpg-3.jpg": "51b857f2ca507d2c7d8dbc888da4cc4f",
"assets/assets/bug/bug_tracking_tool%2520pages%2520(1)_pages-to-jpg-4.jpg": "a0d3e88d7acd5a159aa149744d0a4528",
"assets/assets/bug/bug_tracking_tool%2520pages%2520(1)_pages-to-jpg-5.jpg": "9d0e5c9c6f2a5af47e76e66c4114ae08",
"assets/assets/bug/bug_tracking_tool%2520pages%2520(1)_pages-to-jpg-6.jpg": "f9cc5bd4362074d78fe6e08fe271f71e",
"assets/assets/bug/bug_tracking_tool%2520pages%2520(1)_pages-to-jpg-7.jpg": "27d81ff1d3271d64f1b756c37e213900",
"assets/assets/bug/bug_tracking_tool%2520pages%2520(1)_pages-to-jpg-8.jpg": "9a510457a5f1e1545f9880f39b9763f0",
"assets/assets/bug/bug_tracking_tool%2520pages%2520(1)_pages-to-jpg-9.jpg": "7d483f621e40a525d600eda0582129d4",
"assets/assets/me.png": "966909089a32dda15a63b5cd14209dbd",
"assets/assets/profile.jpg": "c03d80af653cce33aec837ef6b94a4b3",
"assets/assets/profile.png": "35d6c9d3329f7b0674a36521c30cf887",
"assets/assets/projects/alumni.jpg": "ba2aa75408abced9a2c29bc60951e5c2",
"assets/assets/projects/bug.jpg": "02986cb5b1eddfa7614217638ea9a98c",
"assets/assets/projects/darkpattern.jpg": "f19bb259ee8c3894a86f90f58cff4301",
"assets/assets/projects/grocery.jpg": "b664763aa722bc9332532c739463148e",
"assets/assets/projects/hotel.jpg": "4d4983667ddba96a4a8031504365dee6",
"assets/FontManifest.json": "ec8a82ec184cf6cd45fbf68291b1fe6b",
"assets/fonts/MaterialIcons-Regular.otf": "536a88936834e02983c1afbad4604fab",
"assets/NOTICES": "53ceb2bb117627fb84f4ac017d521796",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "e986ebe42ef785b27164c36a9abc7818",
"assets/packages/getwidget/icons/dribble.png": "1e36936e4411f32b0e28fd8335495647",
"assets/packages/getwidget/icons/facebook.png": "293dc099a89c74ae34a028b1ecd2c1f0",
"assets/packages/getwidget/icons/google.png": "596c5544c21e9d6cb02b0768f60f589a",
"assets/packages/getwidget/icons/line.png": "da8d1b531d8189396d68dfcd8cb37a79",
"assets/packages/getwidget/icons/linkedin.png": "822742104a63a720313f6a14d3134f61",
"assets/packages/getwidget/icons/pinterest.png": "d52ccb1e2a8277e4c37b27b234c9f931",
"assets/packages/getwidget/icons/slack.png": "19155b848beeb39c1ffcf743608e2fde",
"assets/packages/getwidget/icons/twitter.png": "caee56343a870ebd76a090642d838139",
"assets/packages/getwidget/icons/wechat.png": "ba10e8b2421bde565e50dfabc202feb7",
"assets/packages/getwidget/icons/whatsapp.png": "30632e569686a4b84cc68169fb9ce2e1",
"assets/packages/getwidget/icons/youtube.png": "1bfda73ab724ad40eb8601f1e7dbc1b9",
"assets/packages/simple_icons/fonts/SimpleIcons.ttf": "36006a2aee699bab11e4562e9bd81963",
"assets/shaders/ink_sparkle.frag": "ecc85a2e95f5e9f53123dcaf8cb9b6ce",
"canvaskit/canvaskit.js": "c86fbd9e7b17accae76e5ad116583dc4",
"canvaskit/canvaskit.js.symbols": "38cba9233b92472a36ff011dc21c2c9f",
"canvaskit/canvaskit.wasm": "3d2a2d663e8c5111ac61a46367f751ac",
"canvaskit/chromium/canvaskit.js": "43787ac5098c648979c27c13c6f804c3",
"canvaskit/chromium/canvaskit.js.symbols": "4525682ef039faeb11f24f37436dca06",
"canvaskit/chromium/canvaskit.wasm": "f5934e694f12929ed56a671617acd254",
"canvaskit/skwasm.js": "445e9e400085faead4493be2224d95aa",
"canvaskit/skwasm.js.symbols": "741d50ffba71f89345996b0aa8426af8",
"canvaskit/skwasm.wasm": "e42815763c5d05bba43f9d0337fa7d84",
"canvaskit/skwasm.worker.js": "bfb704a6c714a75da9ef320991e88b03",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"flutter.js": "c71a09214cb6f5f8996a531350400a9a",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"icons/Icon-maskable-192.png": "c457ef57daa1d16f64b27b786ec2ea3c",
"icons/Icon-maskable-512.png": "301a7604d45b3e739efc881eb04896ea",
"index.html": "0f6998c3ba2c558a6aa0b22569960a0a",
"/": "0f6998c3ba2c558a6aa0b22569960a0a",
"main.dart.js": "d5b7d2dd7f0a38716860c3de3889b253",
"manifest.json": "e74af8957b5899dc6da961caee768ec9",
"version.json": "009c9e65172e010890f7f65fde438006"};
// The application shell files that are downloaded before a service worker can
// start.
const CORE = ["main.dart.js",
"index.html",
"assets/AssetManifest.bin.json",
"assets/FontManifest.json"];

// During install, the TEMP cache is populated with the application shell files.
self.addEventListener("install", (event) => {
  self.skipWaiting();
  return event.waitUntil(
    caches.open(TEMP).then((cache) => {
      return cache.addAll(
        CORE.map((value) => new Request(value, {'cache': 'reload'})));
    })
  );
});
// During activate, the cache is populated with the temp files downloaded in
// install. If this service worker is upgrading from one with a saved
// MANIFEST, then use this to retain unchanged resource files.
self.addEventListener("activate", function(event) {
  return event.waitUntil(async function() {
    try {
      var contentCache = await caches.open(CACHE_NAME);
      var tempCache = await caches.open(TEMP);
      var manifestCache = await caches.open(MANIFEST);
      var manifest = await manifestCache.match('manifest');
      // When there is no prior manifest, clear the entire cache.
      if (!manifest) {
        await caches.delete(CACHE_NAME);
        contentCache = await caches.open(CACHE_NAME);
        for (var request of await tempCache.keys()) {
          var response = await tempCache.match(request);
          await contentCache.put(request, response);
        }
        await caches.delete(TEMP);
        // Save the manifest to make future upgrades efficient.
        await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
        // Claim client to enable caching on first launch
        self.clients.claim();
        return;
      }
      var oldManifest = await manifest.json();
      var origin = self.location.origin;
      for (var request of await contentCache.keys()) {
        var key = request.url.substring(origin.length + 1);
        if (key == "") {
          key = "/";
        }
        // If a resource from the old manifest is not in the new cache, or if
        // the MD5 sum has changed, delete it. Otherwise the resource is left
        // in the cache and can be reused by the new service worker.
        if (!RESOURCES[key] || RESOURCES[key] != oldManifest[key]) {
          await contentCache.delete(request);
        }
      }
      // Populate the cache with the app shell TEMP files, potentially overwriting
      // cache files preserved above.
      for (var request of await tempCache.keys()) {
        var response = await tempCache.match(request);
        await contentCache.put(request, response);
      }
      await caches.delete(TEMP);
      // Save the manifest to make future upgrades efficient.
      await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
      // Claim client to enable caching on first launch
      self.clients.claim();
      return;
    } catch (err) {
      // On an unhandled exception the state of the cache cannot be guaranteed.
      console.error('Failed to upgrade service worker: ' + err);
      await caches.delete(CACHE_NAME);
      await caches.delete(TEMP);
      await caches.delete(MANIFEST);
    }
  }());
});
// The fetch handler redirects requests for RESOURCE files to the service
// worker cache.
self.addEventListener("fetch", (event) => {
  if (event.request.method !== 'GET') {
    return;
  }
  var origin = self.location.origin;
  var key = event.request.url.substring(origin.length + 1);
  // Redirect URLs to the index.html
  if (key.indexOf('?v=') != -1) {
    key = key.split('?v=')[0];
  }
  if (event.request.url == origin || event.request.url.startsWith(origin + '/#') || key == '') {
    key = '/';
  }
  // If the URL is not the RESOURCE list then return to signal that the
  // browser should take over.
  if (!RESOURCES[key]) {
    return;
  }
  // If the URL is the index.html, perform an online-first request.
  if (key == '/') {
    return onlineFirst(event);
  }
  event.respondWith(caches.open(CACHE_NAME)
    .then((cache) =>  {
      return cache.match(event.request).then((response) => {
        // Either respond with the cached resource, or perform a fetch and
        // lazily populate the cache only if the resource was successfully fetched.
        return response || fetch(event.request).then((response) => {
          if (response && Boolean(response.ok)) {
            cache.put(event.request, response.clone());
          }
          return response;
        });
      })
    })
  );
});
self.addEventListener('message', (event) => {
  // SkipWaiting can be used to immediately activate a waiting service worker.
  // This will also require a page refresh triggered by the main worker.
  if (event.data === 'skipWaiting') {
    self.skipWaiting();
    return;
  }
  if (event.data === 'downloadOffline') {
    downloadOffline();
    return;
  }
});
// Download offline will check the RESOURCES for all files not in the cache
// and populate them.
async function downloadOffline() {
  var resources = [];
  var contentCache = await caches.open(CACHE_NAME);
  var currentContent = {};
  for (var request of await contentCache.keys()) {
    var key = request.url.substring(origin.length + 1);
    if (key == "") {
      key = "/";
    }
    currentContent[key] = true;
  }
  for (var resourceKey of Object.keys(RESOURCES)) {
    if (!currentContent[resourceKey]) {
      resources.push(resourceKey);
    }
  }
  return contentCache.addAll(resources);
}
// Attempt to download the resource online before falling back to
// the offline cache.
function onlineFirst(event) {
  return event.respondWith(
    fetch(event.request).then((response) => {
      return caches.open(CACHE_NAME).then((cache) => {
        cache.put(event.request, response.clone());
        return response;
      });
    }).catch((error) => {
      return caches.open(CACHE_NAME).then((cache) => {
        return cache.match(event.request).then((response) => {
          if (response != null) {
            return response;
          }
          throw error;
        });
      });
    })
  );
}
