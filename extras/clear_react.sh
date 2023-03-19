#!/usr/bin/env sh

# Cleaning public dir
rm ./public/logo*.png

# Cleaning src dir
rm ./src/App.css \
    ./src/App.test.js \
    ./src/setupTests.js \
    ./src/logo.svg

# Changing App.js boilerplate
cat <<EOF > ./src/App.js
const App = () => {
    return (
        <div className='App'>
            <h1>Hello World!</h1>
        </div>
    );
}

export default App;
EOF

# Commiting the changes
git commit -am "Initial commit"

# Heading inside the src dir
cd ./src

