module.exports = {
    purge: {
        enabled: process.env.NODE_ENV === "production",
        content: [
            "../lib/**/*.eex",
            "../lib/**/*.leex",
            "../lib/**/*_view.ex"
        ],
        options: {
            whitelist: [/phx/, /nprogress/]
        }
    },
    plugins: [require('@tailwindcss/typography'), require('@tailwindcss/forms')],
    // darkMode: 'media',
}