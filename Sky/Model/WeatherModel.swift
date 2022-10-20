

import Foundation
import UIKit
import EventKit


struct WeatherModel {
    
    let conditionId: Int
    let cityName: String
    let temperature: Double
    
    
    
    let hour = Calendar.current.component(.hour, from: Date())
   
 
    var temperatureString: String {
        return String(format: "%.1f", temperature)
        
        
    }
    
    var conditionName: String {
        switch conditionId {
        case 200...232:
            return "cloud.bolt" 
        case 300...500:
            return "cloud.drizzle"
        case 501...531:
            return "cloud.rain"
        case 600...622:
            return "cloud.snow"
        case 701...781:
            return "cloud.fog"
        case 800:
            return "sun.max"
        case 801...804:
            return "cloud"
        default:
            return "cloud"
            
        }
    }
   
    var backgroundName: String {
        switch (conditionId,hour) {
        
     
        case  (200...232,1...18):
            return "DayLightning.jpg"
        case  (200...232,19...24):
            return "NightLightning.jpg"
            
            
        case (300...321,1...18):
            return "LightRain.jpg"
        case (300...321,19...24):
            return "LightRainNight.jpg"
            
       
        case (500,1...18):
            return "LightRain.jpg"
        case (500,19...24):
            return "LightRainNight.jpg"
            
       
        case (501...531,1...18):
            return "RainDay.jpg"
        case (501...531,19...24):
            return "RainNight.jpg"
            
     
        case (600...622, 1...18):
            return "WinterHeavySnow.jpg"
        case (600...622, 19...24):
            return "WinterNightHeavySnow.jpg"
            
     
        case (701...781, 1...18):
            return "DayFog.jpg"
        case (701...781, 19...24):
            return "NightFog.jpg"
            
        
        case (800, 1...18):
            return "BrightSunny.jpg"
        case (800,  19...24):
            return "SummerNightClear.jpg"
            
       
        case (804, 1...18):
            return "OvercastDay.jpg"
        case (804, 19...24):
            return "OvercastNight.jpg"
            
      
        case (801...803, 1...18):
            return "DayClouds.jpg"
        case (801...803, 19...24):
            return "NightClouds.jpg"
            
        default:
            return ""
          
            
            
            
            
        }
        
    }
 

    }

