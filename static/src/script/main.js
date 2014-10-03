requirejs.config({
    paths: {
        ls: "lib/ls",
        text: "lib/text",

        livescript: "lib/livescript",
        prelude: "lib/prelude",
        jquery: "lib/zepto",

        mustache: "lib/mustache",
        backbone: "lib/backbone",
　      underscore: "lib/underscore",

        template: "../template/"
    },
    shim: {
        livescript: {
            exports: "LiveScript"
        },
        prelude: {
            deps: ["livescript"],
            exports: "prelude"
        },
        ls: {
            deps: ["livescript"]
        },
        backbone: {
            deps: ["jquery", "underscore"],
            exports: "Backbone"
        },
        mustache: {
            exports: 'Mustache'
        },
        underscore: {
            exports: "_"
        },
        jquery: {
            exports: "$"
        }
    },
    urlArgs: "bust=" +  (new Date()).getTime()
});

// @XXX 这里需要先加载一下 不知道问什么 否则后续 module 不能
// 正确的加载
require(["mustache"], function(Mustache) {

});

require(["prelude"], function () {
    // Install prelude.js to global namespace
    prelude.installPrelude(window);
});

// 这里 livescript 的文件名不能使用 main
requirejs(["ls!portal"], function () {
    // main
});


