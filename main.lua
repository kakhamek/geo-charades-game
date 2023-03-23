-----------------------------------------------------------------------------------------
-- Game: GeoCharades
-- Author: kakhaber Mekvabishvili
-- Date: 2018
-- File: main.lua
-----------------------------------------------------------------------------------------

local words = { 
    "ნიკოლა ტესლა", 
    "ტრამპი", 
    "პაგანინი", 
    "სააკაშვილი",
    "შევარდნაძე",
    "ვან გოგი",
    "სტივ ჯობსი",
    "მუხამედ ალი",
    "ბინ ლადენი",
    "ჩაპლინი",
    "ჩეგევარა",
    "ჰიტლერი",
    "აინშტაინი",
    "ბილ გეიცი",
    "სტალინი",
    "შექსპირი",
    "რომეო",
    "ჯულიეტა",
    "პიკასო",
    "ბეტჰოვენი",
    "ჯიმ ქერი",
    "კახი კავსაძე",
    "მეფე არტური",
    "ლანსელოტი",
    "ცეზარი",
    "გრაფი მონტექრისტო",
    "დარტანიანი",
    "დავინჩი",
    "დიკაპრიო",
    "ჯონი დეპი",
    "ჩელენტანო",
    "მერლინ მონრო",
    "ბობ დილანი",
    "მარადონა",
    "ჰამლეტი",
    "ჰარი ჰუდინი",
    "ტარანტინო",
    "ტერმინატორი",
    "ალ კაპონე",
    "როკი ბალბოა",
    "რემბო",
    "ანჯელინა ჯოლი",
    "ბრიუს ლი",
    "რობინზონი",
    "ჯეკი ჩანი",
    "ჯასტინ ბიბერი",
    "რუსთაველი",
    "ჰარი პოტერი",
    "სუპერმენი",
    "სპაიდერმენი",
    "ბეტმენი",
    "ჯეკ ბეღურა",
    "რკინის კაცი",
    "დორეან გრეი",
    "ჯეისონ სტეტჰემი",
    "ესკობარი",
    "ელვისი",
    "ბიონსე",
    "შაკირა",
    "ჰილარი",
    "მესი",
    "განდი",
    "ნიუტონი",
    "ზორო",
    "თუთაშხია",
    "ტომ სოიერი",
    "ბაში-აჩუკი",
    "ჟან ვან ჟან",
    "ფანტომასი",
    "მითხუნ ჩაკრობორტი",
    "კვაზიმოდო",
    "ნაპოლეონი",
    "სპარტაკი",
    "მ. ცუკერბერგი",
    "ტოჩინოშინი",
    "ლელა წურწუმია",
    "მოცარტი",
    "შვარცნეგერი",
    "ჯონ ლენონი",
    "ჯიმი ჰენდრიქსი",
    "პოლ მაკარტნი",
    "ელტონ ჯონი",
    "ვისოცკი",
    "ეის ვენტურა",
    "გრინჩი",
    "სანტა კლაუსი",
    "ბილბო ბეგინსი",
    "ჰალკი",
    "ჩუბაკა",
    "ჰანს სოლო",
    "მორფეუსი",
    "ნეო",
    "ფორესტ გამპი",
    "აპოლო ქრიდი",
    "დედპული",
    "შრეკი",
    "ალადინი",
    "ჯეიმს ბონდი",
    "გოლუმი",
    "გენდალფი",
    "ტონი მონტანა",
    "ფრედი კრუგერი",
    "ოპტიმუს პრაიმ",
    "მისტერ ბინი",
    "გარფილდი",
    "მიკი მაუსი",
    "დონალდ დაკი",
    "მარიო",
    "სიმბა",
    "ტარზანი",
    "მაუგლი",
    "ჰერკულესი",
    "თორი",
    "ნედ სტარკი",
    "რაგნარი",
    "ბარტ სიმპსონი",
    "კონკია",
    "რობერტ დე ნირო",
    "ალ პაჩინო",
    "მადონა",
    "ვისოცკი",
    "ადამი",
    "ევა",
    "იესო ქრისტე",
    "მოსე",
    "ნოე",
    "დედა ტერეზა",
    "ნეისონ მანდელა",
    "დარვინი",
    "დალაილამა",
    "ნილ ამსტრონგი",
    "ფიდელ კასტრო",
    "კოკო შანელი",
    "ჯეკსონი",
    "გორბაჩოვი",
    "კლეოპატრა",
    "მატა ჰარი",
    "ჩინგიზ ხანი",
    "ანნა ფრანკი",
    "კონფუცი",
    "პუშკინი",
    "ჩერჩილი",
    "ლინკოლნი",
    "თუპაკ შაკური",
    "მინიონები",
    "ტონი მონტანა",
    "სარა კონორი",
    "კეტნის ევერდინი",
    "დონ ვიტო კორლეონე",
    "კაიზერ სუზე",
    "ევა ბრაუნი",
    "ლონდრე",
    "რობინ ჰუდი",
    "მაგნიტო",
    "ჩარლზ ქსავიერი",
    "ჯოკერი",
    "ჯანგო",
    "რაგნარი",
    "ხალ დრაგო",
    "ჰალისი",
    "ტირიონ ლანისტერი",
    "ჯონ სნოუ",
    "შაჰ აბასი",
    "ბაში-აჩუკი",
    "ყვარყვარე",
    "ლუარსაბი",
    "ფუფალა",
    "ჭრიჭინა",
    "კუკარაჩა",
    "მურტალო",
    "ხარება ჯიბუტი",
    "ვარლამ არავიძე",
    "ოლღა ბებია",
    "ზურიკელა",
    "შოშია",
    "ტიგრანა",
    "პუტინი",
    "ნოე ჟორდანია",
    "ვაჟა-ფშაველა",
    "მარია მაგდალენა"


}

local n = 0
local secondsLeft  = 60
local beepSound = audio.loadSound("assets/beep.wav")

local function restart()    
    currentword = words[math.random(1,#words)]
    text.size = 100 - math.ceil(currentword:len()/4) * 10 + 65
    text.text = currentword
    n = 0
    secondsLeft = 60
    timer.text = "01:00"
    display.setDefault("background", 0/255, 0/255, 255/255, 1)
    updateTimer()    
end


local function myTouchListener(event)
 
    if (event.phase == "began") then
        restart()
    end
    return true
end


function updateTimer(e)
    n=n+1
    if secondsLeft == 15 then display.setDefault("background", 255/255, 153/255, 0/255, 1) end
    if secondsLeft == 15 then audio.play(beepSound) end
    if secondsLeft == 10 then audio.play(beepSound) end
    if secondsLeft == 5 then audio.play(beepSound) end
    if secondsLeft == 1 then audio.play(beepSound) end
    if secondsLeft == 0 then 
        display.setDefault("background", 255/255, 0/255, 0/255, 1)
    else    
        if n == 60 then n = 1 
            secondsLeft  = secondsLeft  - 1
            local minutes = math.floor(secondsLeft / 60)
            local seconds = secondsLeft  % 60
            local timeDisplay = string.format("%02d:%02d", minutes, seconds)
            timer.text = timeDisplay
        end
    end
end


display.setDefault("background", 0/255, 0/255, 255/255, 1)

-- word
text = display.newText(" ", 0, 0, 0, 0, "fonts/geofont.ttf", fontsize)
text.x = display.contentWidth/2
text.y = display.contentHeight/2
text:setFillColor(1,1,1,1)

-- timer
timer = display.newText("01:00", 0, 0, 0, 0, "fonts/digital.ttf", 40)
timer.x = display.contentWidth/2
timer.y = 60
timer:setFillColor(1,1,1,1)

local button = display.newImage("assets/refresh.png", display.contentWidth/2, 250, 64, 64)
restart()

Runtime:addEventListener("enterFrame", updateTimer) 
button:addEventListener("touch", myTouchListener)
