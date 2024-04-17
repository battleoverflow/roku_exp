''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
' Copyright (c) 2023, battleoverflow (https://github.com/battleoverflow) '
' License: MIT                                                       '
' Authors: battleoverflow (https://github.com/battleoverflow)            '
''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''

' Display information about the app
function RokuExpAppInfo()
    screen = CreateObject("roSGScreen")
    m.port = CreateObject("roMessagePort")
    screen.setMessagePort(m.port)

    ' Load XML scene from components
    scene = screen.CreateScene("Main")
    screen.show()

    while(true)
        msg = wait(0, m.port)
        msgType = type(msg)
        
        if msgType = "roSGScreenEvent"
            ' Set background for the app based on the XML component
            m.background = m.top.findNode("background")
            
            ' Exit loop if screen is closeds
            if msg.isScreenClosed() then exit while
        end if
    end while
end function

' Main function for the app
function Main()
    RokuExpAppInfo()
end function
