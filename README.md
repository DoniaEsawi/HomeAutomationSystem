  
# HomeAutomationSystem
<div>

  
 <img src="https://user-images.githubusercontent.com/56982963/148973838-b87b10c7-7a1b-49ec-ba60-50dc6f45b4eb.png" align="left" width="250">
  
  [![Star on GitHub](https://img.shields.io/github/stars/DoniaEsawi/HomeAutomationSystem.svg?style=social)]("https://github.com/DoniaEsawi/HomeAutomationSystem/stargazers")
    [![Fork on GitHub](https://img.shields.io/github/forks/DoniaEsawi/HomeAutomationSystem.svg?style=social)]("https://github.com/DoniaEsawi/HomeAutomationSystem/network/members")
 [![Watch on GitHub](https://img.shields.io/github/watchers/DoniaEsawi/HomeAutomationSystem?style=social)]("https://github.com/DoniaEsawi/HomeAutomationSystem/watchers")
[![Languages on GitHub](https://img.shields.io/github/languages/count/DoniaEsawi/HomeAutomationSystem?style=social)]("")

<h4>A system designed to control the doors, windows, fire alarm and the  temperature. Each process being automated is associated with a sensor: <br/></h4>
<ul><li> When the sensor is LOW (0) then no action is needed, and the next 
  device can be checked.<br/></li>
  <li> When the sensor is HIGH (1) then an action is needed.<br/></li>
</ul>
<br>
<br>
<br>
  
</div>



<br>
<br>



## ⚙ System Specifications

<ol>
  <li>
<b>Front and Rear doors:</b><br/> 
There are 2 doors: a front door and a rear door each has a separate 
sensor. These sensors are always LOW indicating that the doors are 
closed. If any of these sensors turns HIGH (indicating the door is open), 
the door associated with the sensor is closed automatically and an 
output signal goes HIGH indicating this action.</li>
    <li>
      <b>Fire Alarm:</b><br/>
A smoke detector is used, if there is any smoke then the sensor is HIGH 
and, the fire alarm starts.</li>
    <li>
      <b>Window:</b><br/>
There is a sensor indicating the status of the window. The sensor is 
always LOW indicating that the window is closed. If the window is 
open, then the sensor is HIGH, and a system buzzer starts.</li>
    <li>
<b>Temperature:</b><br/>
The range from 50 to 70 degrees F is the normal comfortable 
temperature range. The change in the room’s temperature is measured 
through a sensor. If the temperature is below 50 degrees F, then the 
heater is automatically turned on. If the temperature is above 70 degrees 
F, then the air conditioner is automatically turned on.</li>
  </ol>
  
## 🔄 FSM Design



<img src="https://user-images.githubusercontent.com/56982963/148977954-76eb6eb8-1d97-46b7-baee-9867d55c8f5e.jpg" align ="center"/>


## 🔍 Simulation Results


<img src="https://user-images.githubusercontent.com/56982963/148978118-616e8514-1128-426c-9dd4-95fa1c837710.png" align ="center"/>

## 🔩 Floor Planning & Routing



<img align ="center" src="https://user-images.githubusercontent.com/56982963/148978209-0750b74e-16c0-4143-906d-b7b3970f00bb.png" />


 <h2> <img src="https://raw.githubusercontent.com/seanprashad/slackmoji/master/emoji/blob/blob-high-five.png" width=45px  alt="" align="center"/> Team  
 </h1>

<div align="center">
  <h4>This project is done by this great gang of CMP girls 👩‍💻</h4>
<table>
  <tr>
    <td align="center"><a href="https://github.com/DoniaEsawi"><img src="https://avatars.githubusercontent.com/u/56982963?v=4" width="100px;" alt=""/><br /><sub><b>Donia</b></sub></a><br />
    </td>
    <td align="center"><a href="https://github.com/Passant-Abdelgalil"><img src="https://avatars.githubusercontent.com/u/69261710?v=4" width="100px;" alt=""/><br /><sub><b>Passant</b></sub></a><br />
    </td><td align="center"><a href="https://github.com/mariamashraf00"><img src="https://avatars.githubusercontent.com/u/80390555?v=4" width="100px;" alt=""/><br /><sub><b>Mariam</b></sub></a><br />
    </td><td align="center"><a href="https://github.com/esraagamal23"><img src="https://avatars.githubusercontent.com/u/69439108?v=4" width="100px;" alt=""/><br /><sub><b>Esraa</b></sub></a><br />
    </td> 
    </tr>
  </table>
</div>
