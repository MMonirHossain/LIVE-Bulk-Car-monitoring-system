//header section
#include <WiFi.h>
#include <HTTPClient.h>
#include<TinyGPS++.h>
#include <SoftwareSerial.h>

//Global Variable section for wifi and server
const char* ssid = "ERSHAD";
const char* password = "12345677";
const char* serverName = "https://cars.gearlearn.com/config.php";
unsigned long lastTime = 0;
unsigned long timerDelay = 60000;
static const int RXPin = 16, TXPin = 17;
static const uint32_t GPSBaud = 9600;


//Global Variable section for ultrasonic
#define TRIGGER 23
#define ECHO    22
#define BUILTIN_LED 2
TinyGPSPlus gps;
SoftwareSerial ss(RXPin, TXPin);

void setup() {
  //perfect serial for wifi,server,ultrasonic
  Serial.begin(115200);

  //wifi setup and test
  WiFi.begin(ssid, password);
  Serial.println("Connecting");
  while(WiFi.status() != WL_CONNECTED) {
    delay(500);
    Serial.print(".");
  }
  Serial.println("");
  Serial.print("Connected to WiFi network with IP Address: ");
  Serial.println(WiFi.localIP());

  //ultrasonic test
  pinMode(TRIGGER, OUTPUT);
  pinMode(ECHO, INPUT);
  //pinMode(BUILTIN_LED, OUTPUT);

  ss.begin(GPSBaud);

}

void loop() {
  
  if ((millis() - lastTime) > timerDelay) {

    
        if(WiFi.status()== WL_CONNECTED){

          //Ultrasonic part--'distance' is the varuaible
          long duration;
          float distance;
          digitalWrite(TRIGGER, LOW);  
          delayMicroseconds(2);           
          digitalWrite(TRIGGER, HIGH);
          delayMicroseconds(10);          
          digitalWrite(TRIGGER, LOW);
          duration = pulseIn(ECHO, HIGH);
          distance = (duration/2) / 29.1;

          //Gps section 'latiude','longitud'should come from it
          //if( (ss.available() > 0) && gps.encode(ss.read()) ){
            gps.encode(ss.read());
           double latiude = (gps.location.lat()); 
           double longitud = (gps.location.lng()); 
       
            //Server section
            HTTPClient http;    
            http.begin(serverName);
  
            http.addHeader("Content-Type", "application/x-www-form-urlencoded");
  
            //the post string made section
            String httpRequestData = "fual=";
            httpRequestData += distance;
            httpRequestData += "&lat=";
            httpRequestData += latiude;
            httpRequestData += "&lng=";
            httpRequestData += longitud;

            
            Serial.println(httpRequestData);
            //This was worked in the first time
            //String httpRequestData = "fual=9&lat=24.25&lng=49.54";           
            
            int httpResponseCode = http.POST(httpRequestData);
      
            Serial.print("HTTP Response code: ");
            Serial.println(httpResponseCode);
              
      
            http.end();
          //}
        }
        
        else {
          Serial.println("WiFi Disconnected");
        }
        
    lastTime = millis();
    
  }
}
