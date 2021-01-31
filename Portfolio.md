# Collin Dunphy - Makers Portfolio
### Software Engineering & 3D Printing
1. Wildcats (iOS App)
	- [Overview](#Wildcats_Overview)
	- [Results](#Wildcats_Results)
 	- [Design Process](#Wildcats_Design_Process)
	- [Challenges](#Wildcats_Challenges)
	- [Lessons Learned](#Wildcats_Lessons_Learned)
	- [Resources](#Wildcats_Resources)
	- [V2.0.0 - Work In Progress](#Wildcats_V2.0.0)
2. DDK - Diadochokinetic Assess (iOS App)
	- [Overview](#DDK_Overview)
	- [Results](#DDK_Results)
 	- [Design Process](#DDK_Design_Process)
	- [Challenges](#DDK_Challenges)
	- [Lessons Learned](#DDK_Lessons_Learned)
	- [Resources](#DDK_Resources)
3. 3D Printing
	- [Overview](#3D-Printing_Overview)
	- [Challenges](#3D-Printing_Challenges)
	- [Lessons Learned](#3D-Printing_Lessons_Learned)
	- [Results](#3D-Printing_Results)

# Wildcats (iOS App)


## <a name= "Wildcats_Overview"></a>Overview


### The Problem I Identified
Students find it difficult to manage the complex school day schedule and calendar at my high school. There was no single online way to track scheduling information.
> The unpredictable schedule is the source of confusion and stress for faculty, students, and especially new freshmen due to its extra rotating period where students spend more time with a different teacher each day but not in a recurring pattern.

### My Solution
The summer before my Junior year, I started building an app called "Wildcats" that was designed to be a centralized hub for students to see all their school calendar information and relevant news. I thought it would be a fun opportunity to learn to build my first app intended for use at scale and solve a real-world problem I knew affected many of my peers. Plus, I just love building things in my spare time.
> I designed the app logos and screenshots myself as inspired by my school's mascot and colors. This can be customized for other schools who adopt the app.

<br>

<img src="Wildcats%20Assets/Wildcats%20App%20Store%20Overview.png">

<br>

## <a name ="Wildcats_Results"></a>Results
I released the app just in time: on the first day of virtual school in spring 2020 due to COVID-19 restrictions. With remote school during the rest of the spring and now for my entire senior year, the app was very popular for helping students to stay organized and connected remotely. I didn’t know COVID-19 was coming when I started this project, but it was really exciting to see how much I was able to help my community through its use.

Here are my results since launch:
 - **225** downloads and **1,300** views on the first day
 - **540+** downloads and **8,400** views to date.
 - Rating **4.7/5** with **83** reviews


v1.0.4 is on the [app store](https://apps.apple.com/us/app/cvhs-wildcats/id1478655832). <br>
v2.0.0 is under construction, please see my beta overview [below](#Wildcats_V2.0.0)!
> My principal is currently working to get the entire Fairfax County Public School (FCPS) system to use my app. I anticipated this in my design and have already built my app to be scalable for different schools: only one string of code needs to be changed to pivot the app from school to school.

<br>

<img src="Wildcats%20Assets/Wildcats%20Reviews.png">

**See Screenshots of Current and Upcoming Version [Below](#Wildcats_V2.0.0)**

<br>

## <a name="Wildcats_Design_Process"></a>Design Process

Key Decisions I made and what I learned

1. Deciding on a platform
	> I decided to teach myself how to make an app optimized for iOS because the large majority of students at my school use Apple devices.

2. Deciding on a language
	> From a language perspective, I chose to use Swift because it is optimal language to match the formatting and style of iOS and macOS. I also used Java skills and programming principles I learned from my sophomore year AP Computer Science AB class.

3. Learning the Platform Specific Customs
	> To create the app for the Apple App Store distribution, I spent 20+ hours reading through Apple’s provided [Human Interface Guidelines](https://developer.apple.com/design/human-interface-guidelines/) online. By investing this time, I learned the entire process to create and sell an app through the Apple App Store.

4. Community Browsing
	> From a design perspective, I started by writing out the necessary features and requirements for the app and drew countless sketches of what the app would look like, carefully considering the placement of each button.  I also browsed through an online design community called [Dribbble](https://dribbble.com) which gave plenty of examples to teach myself best design practices.

5. Second Opinions + Betas
	> I learned the value of beta testing when I ran several different versions of my sketches and subsequent beta versions by twenty friends across robotics, athletics, and class board activities, and incorporated their feedback.

<br>

## <a name="Wildcats_Challenges"></a>Challenges

These are just **some** of the challenges I encountered when developing my app.

| Type | Challenge | Solution |
| ----- |------------|--------------------------------------------------|
| Initial | Language Development: I didn’t initially know what Swift | As I was developing in a pre-GM version of Swift and with a brand-new development framework, `SwiftUI`, the bugs were numerous. With unhelpful and confusing bug reports, patience and problem solving were key in the early days of development. I utilized Paul Hudson’s “[100 Days of Swift](https://www.hackingwithswift.com/100)” course online to teach me the Swift basics over the summer. | 
| Initial | Code compilation: How to turn my source code into a packaged application | I used [Stack Overflow](https://stackoverflow.com), a resource that had been introduced to me at school. I read through the community forums & used the insights there to compile the code myself. |
| Technical | Real time information from the servers (no need to refresh) | I implemented Firebase on Google Cloud Platform (GCP) framework. I learned the best way to store and structure data in Firestore, a product of Firebase, for real time UI updates and seamless data synchronization between devices. I also had to learn how to secure and optimize it to reduce costs. |
| Technical | Google Calendar API Integration - (Calendar Events) | I used data pagination through Firestore (GCP) and Google Calendar API to pull only the necessary pieces of data from the severs. I basically had to create the iOS sdk for handling the Google Cloud API, since there is not a pre-existing updated package to manage this data. |
| Technical |  App Push Notifications (Announcements) | I looked through example code and documentation and from that figured out how to configure the App Push Notification Keys from Apple to the Firebase (GCP) config correctly. I also had to incorporate the code that listens for notifications from GCP into the underlying `Application Delegate`. |
| Marketing | Determining the best way to advertise my app on the Apple App Store. |  I taught myself Photoshop to arrange the screenshots and online presentation. Additionally, I wrote draft descriptions and showed them to potential users for feedback. |
| Marketing | Raising community awareness. | I posted about my app on Instagram (Computer Science Honor Society and sent it to ten friends who also posted it) which demonstrated the value of "word of mouth" referrals. |

<br>

## <a name ="Wildcats_Lessons_Learned"></a>Lessons Learned

Lessons I learned in this project helped for future projects below. 

- **Learned to program in Swift** -- I didn't know how to program in Swift prior to this project
- **Graphic design** -- Importance of effective and intuitive user interface. 
- **Apple Style** -- The value of consistent of user design with the underlying platform mechanics so it is a more intuative user experience
- **Data Structures** -- How to efficiently store data in the Firebase - Firestore environment which differs from traditional SQL and AWS DynamoDB tables
- **Firebase (GCP)** -- How to communicate with backend servers for data synchronization to allow users to stay current with changes
- **The value of reading documentation** -- It saves time and frustration. Just do it!
- **Marketing** -- Creating amazing things to solve a problem is good, but only half the battle. Making users aware of your solution requires just as much effort as creating it. 

<br>

## <a name="Wildcats_Resources"></a> Resources
- [App Store](https://apps.apple.com/us/app/cvhs-wildcats/id1478655832) - See My App Live
	> https://apps.apple.com/us/app/cvhs-wildcats/id1478655832
- [GitHub](https://github.com/cpdunphy/Maker-Portfolio/tree/main/CVHS%20Wildcats) - See My Code 
	>  **PARTIAL code samples available to provide clarity and protect embeded content**<br>https://github.com/cpdunphy/Maker-Portfolio
	
<br>

## <a name="Wildcats_V2.0.0"></a>V2.0.0
<img src="Wildcats%20Assets/Wildcats_V2_Logo_Mask.png" width=150 align=right> 

This version utilizes the SwiftUI 2.0 framework from Apple and introduces groundbreaking features to help communicate information to students throughout the school.

#### New Features
1. [Summary + Calendar](#Wildcats_V2_Summary_Calendar)
2. [Wildcat News](#Wildcats_V2_Wildcat_News)
3. [Profile Customization](#Wildcats_V2_Profile_Customization)

### <a name="Wildcats_V2_Summary_Calendar"></a>Summary + Calendar

<img src="Wildcats%20Assets/V2.0.0%20Screenshots/Calendar.PNG" width=200 align=right>
<img src="Wildcats%20Assets/V2.0.0%20Screenshots/Summary.PNG" width=200 align=right>

- All previous calendar history is searchable and viewable
- Displayed calendar events are expanded to include social and extracurriculars, such as club events and fundraisers
- Students will be able to share links to individual events with other students that deep link back into the app to display its details
- Course names that are customized in the users profile are customized through here as well
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>

-------------------------

### <a name="Wildcats_V2_Wildcat_News"></a>Wildcat News

<img src="Wildcats%20Assets/V2.0.0%20Screenshots/Wildcat_News_Collections.PNG" width=200 align=right>
<img src="Wildcats%20Assets/V2.0.0%20Screenshots/Wildcat_News_Featured.PNG" width=200 align=right>
<img src="Wildcats%20Assets/V2.0.0%20Screenshots/Wildcat_News.PNG" width=200 align=right>

News + Collection Grid with Auto-Adjust

Detailed breakdowns of Announcements and upcoming changes (School, County, State, etc.)

Students will be able to "follow" topics of interest in to recieve notifications when a new article is shared through the app. (WIP)

Articles are tagged with different identifiers corresponding to different Collections. This allows a collection to change its displayed name without updating all articles referencing it. 
<br>
<br>
<br>
<br>
<br>
<br>

-------------------------

### <a name="Wildcats_V2_Profile_Customization"></a>Profile Customization


<img src="Wildcats%20Assets/V2.0.0%20Screenshots/Settings.PNG" width=200 align=right>
<img src="Wildcats%20Assets/V2.0.0%20Screenshots/Profile.PNG" width=200 align=right>
 
Profile Overview & Classes
New Admin Settings allow for remote, system level customization of the app. (Only accessible to select users)
At the admin level you can set “adjustable” periods in which it gives students the option to customize the classes they have in a given day. It does this by associating the period keeping the period as a separate document in the database with a default name. A user can then “create” a class, associating the system level period id with a string in their profile. This allows incoming users to have the default names (1st Period), but then later add their own customization to it.

<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>

-------------------------

<br>

# DDK - Diadochokinetic Assess (iOS App)

## <a name= "DDK_Overview"></a>Overview



### The Problem I Identified
My aunt, who is a speech pathologist, was sharing how she wished she had an automated way to assess her patients' diadochokinetic rate, over dinner last Thanksgiving (2019). Her problem sounded solvable with a custom app. 
> Speech pathologists use repetitions of the words “Puh”, “Tuh”, “Kuh”, and the combined “Puh-Tuh-Kuh” to assess their patients' ability to use their muscles in the correct way to make those sounds. The current evaluation process is manual, requiring the practitioner to watch the clock and count the number of times the patient says it within 10 seconds.

### My Solution
During the winter of my Junior year, I developed an app called DDK, designed for speech pathologists to help them automate the assessment of a patient's diadochokinetic rate.
> I conceptualized, programmed, and designed the app's interface myself.

<br>

<img src="DDK%20Assets/DDK%20App%20Store%20Overview.png">

<br>

## <a name ="DDK_Results"></a>Results
I released the app in January 2020: it was an immediate success. Here are my results since release:
 - **482** downloads and **1,100** views **on the first day**
	 > It was in the **top 162 medical app** available on its first day of release.<br>It has gotten into the top 200 medical apps since inital release (latest 1/5/2021).
	 
 - **1,900+** downloads and **13,763** views to date.
 - Rating **5/5** with **25** reviews

v1.2.0 is on the [app store](https://apps.apple.com/us/app/ddk-diadochokinetic-assess/id1489873060#?platform=iphone). <br>

<br>

<img src="DDK%20Assets/DDK%20Reviews.png">

<br>

## <a name="DDK_Design_Process"></a>Design Process

Key Decisions I made and what I learned

1. Deciding on a platform
	> Given my previous experience in developing Wildcats, I decided to use this as an opportunity to build upon that skill set and build a second iOS app, with the possibility of expanding to Android in the future. 

2. Deciding on a language
	> From a language perspective, I chose to use Swift because it is the optimal language to match the formatting and style of iOS and macOS. I also used Java skills and programming principles I learned from my sophomore year AP Computer Science AB class.


3. Community Browsing
	> Design-wise, I wanted to keep the interface as clean as possible for ease of use during diagnostic sessions with patients. As before, I started by writing out a list of the requirements and features for the app and drew countless sketches of what the app would look like, always carefully considering the placement of each button. 
Additionally, I reviewed "clean timer" ideas through an online design community called [Dribbble](https://dribbble.com) which gave plenty of examples.

4.  Second Opinions + Betas
	> I determined the features by using my Aunt and her peers as beta customers and asking them to try different user interface designs and features.

<br>

## <a name="DDK_Challenges"></a>Challenges

These are just **some** of the challenges I encountered when developing my app.

| Type | Challenge | Solution |
| ----- |------------|--------------------------------------------------|
| Adoption | My user group was concerned about data privacy and compliant with HIPAA laws | <img src="DDK%20Assets/DDK%20App%20Privacy%20Small.png" width=350 align=right> I simply designed the app for offline use and history is logged per session only.  | 
| Design | Maintaining a simplistic uniform geometry for buttons, so that it does not distract while they are assessing a patient | Used online research guidance + beta tester results to simplify the results over time. |
| Design | Handling the quirks of experimental UI frameworks  | Spent several days engineering the semicircular pattern at the top. |
| Marketing | Marketing my application was challenging since the target audience is speech pathologists, which I don’t interact with on a daily basis, I had to find a way to communicate the apps release to them | My aunt, who was my primary customer, posted the app on a Facebook group with tens of thousands of speech pathologists. |
| Design | Ease of user interaction | We determined that the app required buttons with a larger target ‘tap area' so that the doctor may focus on listening instead of the placement of their finger. | 
| Design | Making the app flexible, not just for DDK | Included a timer and count mode. Each time the patient says the word, the doctor taps the screen to log the count. The timer mode allows you to see how many times the patient says the word in a defined timeframe, while the count mode allows the doctor to record the cumulative repetitions of the word in a row until the patient tires. |
| Marketing | I was conflicted on how I could potentially monetize the app | There are various ways to make money from an app, such as initial purchase charge, ads, in app purchases (IAPs), subscriptions, and selling users information. As this was app was to have a use in the medical field, I felt it was unacceptable to put ads or sell any user information. I decided between<br>1. Initial $1 charge when downloading the app<br>2. Taking donations through the use of IAPs + prompt users to donate. |

<br>

## <a name ="DDK_Lessons_Learned"></a>Lessons Learned
- **Data Privacy** -- I learned about putting user privacy first through research about PHI + PII & HIPAA compliance
- **Code Reusability** -- Build and structure your views as pieces so that the end product is just a big puzzle. This makes making separate iPadOS or macOS versions of the same app super easy. 
- **User feedback** -- User feedback strongly supported development of an additional Android version and ideas to make the user interface even more intuitive. I have already incorporated some user feedback in the latest version and intend to release an android version in the future. 
- **Keep it simple** -- A complex problem sometimes just requires a simple solution. 

<br>

## <a name="DDK_Resources"></a> Resources
- [App Store](https://apps.apple.com/us/app/cvhs-wildcats/id1478655832) - See My App Live
	> https://apps.apple.com/us/app/ddk-diadochokinetic-assess/id1489873060#?platform=iphone
- [GitHub](https://github.com/cpdunphy/Maker-Portfolio/tree/main/DDK%20-%20Diadochokinetic%20Assess) - See My Code 
	>  **PARTIAL code samples available to provide clarity and protect embeded content**<br>https://github.com/cpdunphy/Maker-Portfolio
	

<br>

-------------------------

<br>

# 3D Printing

## <a name="3D-Printing_Overview"></a>Overview

<img src="3D%20Printer%20Assets/Ender_Benchy.jpeg" width=200 align=right>

### Problem:
My family and neighbors often needed parts or enhancements for their home, but due to COVID-19 there is a backlog of contractors and available supplies.

### Solution
3D print products for use in home repairs, reducing costs and decreasing repair time.

<br>
<br>
<br>

## <a name="3D-Printing_Challenges"></a>Challenges

| Challenge |  Solution |
| --- | ---- | 
| Being able to design a prototype or replica | I learned to use Autodesk Inventor Professional and Autodesk Fusion 360 which are both premier 3D modeling software. | 
| Being able to take relevant and accurate measurements | I measure everything twice to ensure accuracy and consistency and print up to five iterations of the product | 
| Determining the right material and configuration for specific stiffness and flexibility | I learned which filaments are appropriate for different situations and made decisions to use different ones according to my projects. I also learned how the model is sliced and sent to the printer can impact its rigidity.  | 
| Thinking 3D | Being able to design projects, first in your head, then in the software, takes practice. Some of my printed objects involved fairly complex aesthetic designs, so I traced these by hand to ensure accuracy in replication. | 
| Acceleration of the printer at the wrong time can cause weakness | Fine-tuned the printer to set different acceleration levels for different parts of my object. I decided the acceleration levels by trial and error. | 
 
<br>


## <a name="3D-Printing_Lessons_Learned"></a>Lessons Learned

<img src="3D%20Printer%20Assets/Control_Board.JPG" width=200 align=right>

- **Thinking three dimensionally** -- using your mind's eye to design complex 3D objects is needed more often than measurements of everything
- **Importance of printer optimization and tuning** -- Values such as acceleration, temperatures, and jerk can greatly impact the quality of the overall print
- **Upgraded mechanics can affect output** -- Higher quality machinery produces higher quality output. 
	> To optimize the usage of the printer, I had to learn several electrical and mechanical engineering concepts such as soldering, voltage vs current, using voltage regulators, lights for better remote monitoring via webcam, a BLTouch which is a bed leveling mesh probe, I also added a new control board to speed up printing and increase memory for higher yield, a new printing bed that was glass and straight higher consistency, and more efficient fans.

- **Commercial Applications of 3D Printing** -- Performed extensive research on 3D printing as an additive manufacturing technique in general.

<br>

## <a name="3D-Printing_Results"></a>Results

These are just **some** of the items I've designed and/or printed.

|  Designed and printed a new doorbell cover at less than 10% of an actual replacement cost |
| --- | 
| <img src= "3D%20Printer%20Assets/Door_Bell_Cover_Finished.jpeg" height=225> <img src= "3D%20Printer%20Assets/Door_Bell_Cover_Problem.jpeg" width=300> <img src= "3D%20Printer%20Assets/Door_Bell_Cover_Solved.jpeg" width=300> | 
	 
|  Printed 500 mask ear guards that prevent N95 masks from creating pressure sores on the back of ears and scalp, then I sent them to essential workers at the local school district, healthcare providers, and a hospital in South Carolina. | <img src= "3D%20Printer%20Assets/COVID_EarGuards.jpeg" width=500> | 
| --- | --- |

|  Optimized my school’s 3D printer with a Lulzbot Printer leveling extension of  my own design | <img src= "3D%20Printer%20Assets/Leveling_Bracket_Finished.JPG" height=225> | 
| --- | --- |


|  Designed and printed Water filter covers. No commercial alternative was available. |
| --- |
| <img src= "3D%20Printer%20Assets/HotTub_Cover_Model.png" height=225> <img src= "3D%20Printer%20Assets/HotTub_Cover_Finished.jpeg" height=225> | 


<!--stackedit_data:
eyJkaXNjdXNzaW9ucyI6eyJHZDhWcEd4MVprbGpUMkJZIjp7In
RleHQiOiJTdHVkZW50cyBmaW5kIGl0IGRpZmZpY3VsdCB0byBt
YW5hZ2UgdGhlIGNvbXBsZXggc2Nob29sIGRheSBzY2hlZHVsZS
BhbmQgY2FsZW5k4oCmIiwic3RhcnQiOjgxNSwiZW5kIjo5Nzl9
LCJxcHVZbjJ2RENPS2ltY0JEIjp7InRleHQiOiJJbml0aWFsIi
wic3RhcnQiOjQ5MzAsImVuZCI6NDkzN30sInFsQjhPR21jZDFl
WUJsdE4iOnsidGV4dCI6InwgRGVzaWduIHwgSGFuZGxpbmcgdG
hlIHF1aXJrcyBvZiBleHBlcmltZW50YWwgVUkgZnJhbWV3b3Jr
cyAgfCBTcGVudCBzZXZlcmFsIGTigKYiLCJzdGFydCI6MTM5Mz
csImVuZCI6MTQwNzB9LCJFQmVjdXpMcHdYQ0F3MFVuIjp7InN0
YXJ0Ijo3NDUwLCJlbmQiOjc0NTAsInRleHQiOiJXZWF0aGVyZG
VhbHMifX0sImNvbW1lbnRzIjp7ImFZaXg1bTVwRDJtNmxZdFUi
OnsiZGlzY3Vzc2lvbklkIjoiR2Q4VnBHeDFaa2xqVDJCWSIsIn
N1YiI6ImdoOjUwNTU1MDc3IiwidGV4dCI6IkRlc2NyaWJlIHBs
dXMgY29tcGxleGl0eSIsImNyZWF0ZWQiOjE2MDkyNjk5NzUwND
l9LCJUbXNMa2UwTFc4M3pmcldEIjp7ImRpc2N1c3Npb25JZCI6
InFwdVluMnZEQ09LaW1jQkQiLCJzdWIiOiJnaDo1MDU1NTA3Ny
IsInRleHQiOiJEaWZmZXJlbnQgV29yZCBDaG9pY2UiLCJjcmVh
dGVkIjoxNjA5MjcwNDQwMjAyfSwiUVMwRVRBdDZ6QkZ0Z0gwSC
I6eyJkaXNjdXNzaW9uSWQiOiJxbEI4T0dtY2QxZVlCbHROIiwi
c3ViIjoiZ2g6NTA1NTUwNzciLCJ0ZXh0IjoiRGVsZXRlIHRoaX
Mgb25lPyIsImNyZWF0ZWQiOjE2MDkyNzczNTA5NDZ9LCJYNWFQ
ZTgxOHdOMDFxa0tNIjp7ImRpc2N1c3Npb25JZCI6IkVCZWN1ek
xwd1hDQXcwVW4iLCJzdWIiOiJnaDo1MDU1NTA3NyIsInRleHQi
OiJSZW1vdmUgdGhpcyBpZiBkb250IGRvIFdlYXRoZXJEZWFscy
IsImNyZWF0ZWQiOjE2MDkyODM5NDAwMTN9fSwiaGlzdG9yeSI6
Wy01OTcyMjc4MTQsLTEyOTkxOTU5MzksLTk3MTIwMTM5MSwtMT
c4MjA5MTMxMSwzMzMwODgyMTMsLTMyMTIyOTIwOSwtNzgwNDU0
MDM5LC02NTAwMTQ0MzQsLTc2MTMxMDE0OCw3MjMzOTY3NzQsLT
E5Nzg0NjM3OTMsLTUzMjI0NzcwMCwtMTM5NzQwNzA3MCwtOTc0
MDg3MjgxLDEwMzMwMTcyNzYsMTk3MzQ1NTA3MCwxNjY1MjU3Mz
Q3LDE1MzYzMjQ5ODQsMzYxNjI5MTA0LC0yMDY2MzA0NTI4XX0=

-->

