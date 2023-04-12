#!/usr/bin/env bash

# Installing dependencies
npm i

# Cleaning public dir
rm ./public/vite.svg

# Cleaning src dir
rm ./src/assets/react.svg ./src/App.css
rmdir ./src/assets/

# Changing App.jsx boilerplate
cat <<EOF > ./src/App.tsx
const App: React.FC = () => {
    return (
        <div className='App'>
            <h1>Hello World</h1>
        </div>
    )
}

export default App
EOF

# Changing index.css boilerplate
cat <<EOF > ./src/index.css
@import url('https://fonts.googleapis.com/css2?family=Rubik&display=swap');

*,
*::before,
*::after {
    box-sizing: border-box;
    margin: 0px;
    padding: 0px;
}

:root {
    font-synthesis: none;
    text-rendering: optimizeLegibility;
    -webkit-font-smoothing: antialiased;
    -moz-osx-font-smoothing: grayscale;
    -webkit-text-size-adjust: 100%;
}

body {
    font-family: 'Rubik', sans-serif;
    color: #E5E5E5;
    background-color: #1A1A1A;

    height: 100vh;
    background-color: black;
    color: white;
}
EOF

# Initializing git repo && commiting the changes 
git init
git add .
git commit -m "Initial commit"

# Heading inside the src dir
cd ./src
