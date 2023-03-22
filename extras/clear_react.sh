#!/usr/bin/env sh

# Installing dependencies
npm i

# Cleaning public dir
rm ./public/vite.svg

# Cleaning src dir
rm ./assets/react.svg App.css

# Changing App.jsx boilerplate
cat <<EOF > ./src/App.jsx
cosnt App = () => {
    return (
        <div className='App'>
            <h1>Hello World</h1>
        </div>
    )
}
EOF

# Changing index.css boilerplate
cat <<EOF > ./src/index.css
@import url('https://fonts.googleapis.com/css2?family=Rubik&display=swap');

*,
*::before,
*::after {
    font-family: 'Rubik', sans-serif;
    box-sizing: border-box;
    margin: 0px;
}

body {
    height: 100vh;
    background-color: black;
    color: white;
}
EOF

# Commiting the changes
git commit -am "Initial commit"

# Heading inside the src dir
cd ./src
