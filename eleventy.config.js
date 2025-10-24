import { HtmlBasePlugin } from "@11ty/eleventy";
import { eleventyImageTransformPlugin } from "@11ty/eleventy-img";

export default function (eleventyConfig) {
    const config = {
        dir: {
            input: "src",
            output: "public"
        }
    };

    // Better to get this path at runtime, eg from process.env.GITHUB_REPOSITORY ?
    if (process.env['GITHUB_ACTIONS']) {
        config['pathPrefix'] = '11ty-sandbox';
    }

    eleventyConfig.addPassthroughCopy("src/media", {
        // overwrite: false
    });

    eleventyConfig.addPlugin(eleventyImageTransformPlugin);
    eleventyConfig.addPlugin(HtmlBasePlugin);

    return config;
};