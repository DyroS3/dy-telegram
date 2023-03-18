Config = {
    vehicleTruckName = "hauler",

    blipId = 524,
    blipColor = 3,

    MinRangePrice = 1000,
    MaxRangePrice = 100000,

    payoutTrucker = 400,
    payoutDeliverer = 350,

    CarClearPos = vector3(599.25036621094, -2795.6406264,  6.0577683448566),
    CarClearPos2 = vector3(541.58203125,  -2728.594726562564,  6.05610990524),
    
    Locations = {
        [1] = {            
            ["pos"] = { --StartJob Marker
                ['x'] =-32.961750030518, ['y'] = -1112.0279541016, ['z'] = 25.422355651855
            },
            ["spawnPointTruck"] = { 
                ['x'] =599.25036621094, ['y'] = -2795.640625, ['z'] = 6.0577683448792,['h'] = 329.05554199219, 
            },
            ["spawnPointTruck2"] = { 
                ['x'] =541.58203125, ['y'] = -2728.5947265625, ['z'] = 6.0561099052429,['h'] = 229.71713256836, 

            },
            ["spawnPointTrailer"] = { 
                ['x'] =671.89978027344, ['y'] = -2735.1965332031, ['z'] = 6.0690155029297,['h'] = 94.724533081055,

            },
            ["pointFillTrailer"] = { 
                ['x'] =1190.0949707031, ['y'] = -3072.1430664062, ['z'] = 5.1843581199646,['h'] = 93.42699432373, 

            },
            ["loadoutVehicles"] = { 
                ['x'] =-53.276287078857, ['y'] = -1113.7222900391, ['z'] = 25.435815811157

            },
            ["spawnCustomersCars"] = { 
                ['x'] =-31.8342, ['y'] = -1090.8381, ['z'] = 26.4223,['h'] = 329.6996, 

            },   
        },
    },

    maxCustomersNumber = 7,
    Customers = {
        [1] = {
            
            ["pos"] = {
                ['x'] =90.575454711914, ['y'] = 485.93768310547, ['z'] = 146.16775512695,
            },    
            
        },
        [2] = {
            
            ["pos"] = {
                ['x'] =-351.10864257812, ['y'] = 474.7275390625, ['z'] = 111.25291442871,
            },    
            
        },
        [3] = {
            
            ["pos"] = {
                ['x'] =-469.07598876953, ['y'] = 541.33123779297, ['z'] = 119.54141235352,
            },    
            
        },
        [4] = {
            
            ["pos"] = {
                ['x'] =-526.89996337891, ['y'] = 529.48724365234, ['z'] = 110.3656463623,
            },    
            
        },
        [5] = {
            
            ["pos"] = {
                ['x'] =-733.7265625, ['y'] = 445.11218261719, ['z'] = 105.38254547119,
            },    
            
        },

        [6] = {
            
            ["pos"] = {
                ['x'] =-1922.3918457031, ['y'] = 284.39440917969, ['z'] = 87.488563537598,
            },    
            
        },
        [7] = {
            
            ["pos"] = {
                ['x'] =-1667.3493652344, ['y'] = 390.99871826172, ['z'] = 87.596252441406,
            },    
            
        },

    },
    maxNameNumber = 8,

    Names = {
        [1] = "玛丽·施密特",
        [2] =  "克洛维斯·奥莱加里奥",
        [3] =  "克尔斯·汀乔索",
        [4] = "莫里斯·阿帕纳",
        [5] =  "安佩留斯·莱利亚",
        [6] =  "泰尔·尤利安娜",
        [7] =  "纳拉扬·亚当",
        [8] =  "维克多·总站",
    },

    maxVehTypeNumber = 5,
    vehType = {
        [1] = "紧凑型",
        [2] = "小轿车",
        [3] = "SUV",
        [4] = "跑车",
        [5] = "超跑",
    },

    compactsVehOne = "asbo",
    compactsVehTwo = "brioso",
    compactsVehThree = "dilettante",
    compactsVehFour = "kanjo",
    compactsVehFive = "weevil",

    coupesVehOne = "cogcabrio",
    coupesVehTwo = "windsor",
    coupesVehThree = "sentinel",
    coupesVehFour = "zion2",
    coupesVehFive = "oracle",

    suvVehOne = "baller4",
    suvVehTwo = "bjxl",
    suvVehThree = "contender",
    suvVehFour = "huntley",
    suvVehFive = "squaddie",

    sportVehOne = "banshee",
    sportVehTwo = "carbonizzare",
    sportVehThree = "coquette4",
    sportVehFour = "drafter",
    sportVehFive = "feltzer2",

    superVehOne = "adder",
    superVehTwo = "entityxf",
    superVehThree = "fmj",
    superVehFour = "krieger",
    superVehFive = "sc1",

}

Keys = {
    ['ESC'] = 322, ['F1'] = 288, ['F2'] = 289, ['F3'] = 170, ['F5'] = 166, ['F6'] = 167, ['F7'] = 168, ['F8'] = 169, ['F9'] = 56, ['F10'] = 57,
    ['~'] = 243, ['1'] = 157, ['2'] = 158, ['3'] = 160, ['4'] = 164, ['5'] = 165, ['6'] = 159, ['7'] = 161, ['8'] = 162, ['9'] = 163, ['-'] = 84, ['='] = 83, ['BACKSPACE'] = 177,
    ['TAB'] = 37, ['Q'] = 44, ['W'] = 32, ['E'] = 38, ['R'] = 45, ['T'] = 245, ['Y'] = 246, ['U'] = 303, ['P'] = 199, ['['] = 39, [']'] = 40, ['ENTER'] = 18,
    ['CAPS'] = 137, ['A'] = 34, ['S'] = 8, ['D'] = 9, ['F'] = 23, ['G'] = 47, ['H'] = 74, ['K'] = 311, ['L'] = 182,
    ['LEFTSHIFT'] = 21, ['Z'] = 20, ['X'] = 73, ['C'] = 26, ['V'] = 0, ['B'] = 29, ['N'] = 249, ['M'] = 244, [','] = 82, ['.'] = 81,
    ['LEFTCTRL'] = 36, ['LEFTALT'] = 19, ['SPACE'] = 22, ['RIGHTCTRL'] = 70,
    ['HOME'] = 213, ['PAGEUP'] = 10, ['PAGEDOWN'] = 11, ['DEL'] = 178,
    ['LEFT'] = 174, ['RIGHT'] = 175, ['TOP'] = 27, ['DOWN'] = 173,
}


