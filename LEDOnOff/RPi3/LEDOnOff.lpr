program LEDOnOff;

{$mode objfpc}{$H+}

{ LED On/Off Example                                                     }
{                                                                              }
{ In this example we look at using the GPIO functions to detect a simple switch}
{ being opened or closed and turn on or off an LED in response.                }
{                                                                              }
{ To try this example you'll need the following:                               }
{                                                                              }
{ An LED and a 330 ohm resistor connected between GPIO Pin 16 and Ground       }
{  (Ensure you connect the LED and resistor in series with each other and that }
{   the short leg or the flat side of the LED is connected to Ground)          }
{                                                                              }
{ It's usually best to use a breadboard or breakout board to connect components}
{ to the Pi just to avoid any accidental damage.                               }
{                                                                              }
{ The documentation below shows you where to find each of the pins.            }
{                                                                              }
{ Raspberry Pi Model A and B (26 pin header)                                   }
{   https://www.raspberrypi.org/documentation/usage/gpio/                      }
{                                                                              }
{ Raspberry Pi Models A+/B+/Zero/2B/3B (40 pin header)                         }
{   https://www.raspberrypi.org/documentation/usage/gpio-plus-and-raspi2/      }
{                                                                              }
{                                                                              }
{  To compile the example select Run, Compile (or Run, Build) from the menu.   }
{                                                                              }
{  Once compiled copy the kernel7.img file to an SD card along with the        }
{  firmware files and use it to boot your Raspberry Pi.                        }
{                                                                              }
{  Raspberry Pi 3B version                                                     }
{   What's the difference? See Project, Project Options, Config and Target.    }

{Declare some units used by this example.}
uses
  GlobalConst,
  GlobalTypes,
  Platform,
  Threads,
  Console,
  Framebuffer,
  BCM2837,
  BCM2710,
  SysUtils,
  GPIO;      {Include the GPIO unit to allow access to the functions}

{We'll need a window handle and a couple of other variables.}
var
 WindowHandle:TWindowHandle;

begin
 {Let's create a console window so we can report what is happening}
 WindowHandle:=ConsoleWindowCreate(ConsoleDeviceGetDefault,CONSOLE_POSITION_FULL,True);

 {Display a welcome message}
 ConsoleWindowWriteLn(WindowHandle,'Welcome to LED On/Off Example');

 {We'll use the GPIO functions in the Platform unit for this example, there are
  also GPIO functions in the GPIO unit that allow you to specify some extra parameters
  if you need them.
  
  We need to do some setup of the GPIO pins to tell the GPIO controller what we 
  want to do with them.
    
  All of the GPIO_ constants used below are available in the GlobalConst unit.}
  
 {Now set GPIO pin 16 to Pull None}
 GPIOPullSelect(GPIO_PIN_16,GPIO_PULL_NONE);
 
 {And make GPIO pin 16 an Output so we can turn the LED on or off}
 GPIOFunctionSelect(GPIO_PIN_16,GPIO_FUNCTION_OUT);
 
 {Finally set the value of GPIO pin 16 to Low so the LED will be off}
 GPIOOutputSet(GPIO_PIN_16,GPIO_LEVEL_LOW);

 {Start an endless loop checking the switch}
 while True do
  begin
   {Write to the console}
   ConsoleWindowWriteLn(WindowHandle,'Turning on the LED (GPIO 16)');

   {Turn on the LED}
   GPIOOutputSet(GPIO_PIN_16,GPIO_LEVEL_HIGH);

   {Wait for a while so that things happen at a speed we can see, 500 milliseconds,
    or half a second, should be enough.}
   ThreadSleep(500);

   {Write to the console}
   ConsoleWindowWriteLn(WindowHandle,'Turning off the LED (GPIO 16)');

   {Turn off the LED}
   GPIOOutputSet(GPIO_PIN_16,GPIO_LEVEL_LOW);
   
   {Wait a while before turning the LED back on again.}
   ThreadSleep(500);
  end;
  
 {Halt the main thread if we ever get to here}
 ThreadHalt(0);
end.
