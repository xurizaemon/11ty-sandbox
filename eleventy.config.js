module.exports = function(eleventyConfig) {
    // Pass thru copies.
    eleventyConfig.addPassthroughCopy("src/media", {
        // overwrite: false
    });

    return {
        dir: {
            input: "src",
            output: "public",
            includes: "_includes",
            layouts: "_layouts",
            data: "_data"
        },
        templateFormats: ["md", "njk", "html"],
        markdownTemplateEngine: "njk",
        htmlTemplateEngine: "njk"
    };
};