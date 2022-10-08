args = {...}

if(#args != 1){
    print("Please provide a single argument containing the name of the script you would like to get.")
    return
}

local scriptname = args[1]

local url = "http://raw.githubusercontent.com/MiikkaVG/main/" .. scriptname

scriptContents = http.get(url)

local fileLocation =  "scripts/".. scriptname

local h = fs.open(fileLocation, "w")

h.write(scriptContents)

h.close();