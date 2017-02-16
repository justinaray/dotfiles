module.exports = {
    parserOptions: {
        ecmaVersion: 6
    },
    env: {
        browser: true
    },
    extends: 'eslint:recommended',
    rules: {
        indent: [
            'error',
            4
        ],
        'brace-style': ['error', '1tbs'],
        'space-before-blocks': ['error', 'always'],
        'linebreak-style': [
            'error',
            'unix'
        ],
        quotes: [
            'error',
            'single'
        ],
        semi: [
            'error',
            'always'
        ]
    }
}
