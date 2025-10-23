module.exports = function(eleventyConfig) {
    eleventyConfig.addPassthroughCopy("src/media", {
        // overwrite: false
    });

    return {
        dir: {
            input: "src",
            output: "public"
        }
    };
};