# (W2 Project: *Carousel*)[http://courses.codepath.com/courses/ios_for_designers/unit/2#!assignment]

**Carousel** has been programmatically animated with Swift (iOS).

Purpose of this project: leverage views, view properties, and events to create a high fidelity prototype that is difficult to distinguish from the production app. Use the techniques from this week classes to implement the (Carousel app)[https://en.wikipedia.org/wiki/Dropbox_Carousel] from the signed out state to the basic signed in state.

[Assets](https://www.dropbox.com/s/53llomcr20qicxo/Carousel%20Assets.zip)

Submitted by: [**Sophia Kecir Camper**](http://www.sophiakc.com)

Total time spent: **** cumulated hours

## Required User Stories
* [X] Landing Screen [Time spent: 1:00]
	* [X] Static photo tiles on the initial screen
	* [X] User can scroll to reveal sign in buttons
* [ ] Sign In [Time spent: ]
	* [ ] Tapping on email/password reveals the keyboard and shifts the scroll view and Sign In button up
	* [ ] Upon tapping the Sign In button
		* [ ] If the username or password fields are empty, user sees an error alert
		* [ ] If credentials are incorrect, user sees a loading indicator for 2 seconds followed by an error alert
		* [ ] If the credentials are correct, user sees a loading indicator for 2 seconds followed by a transition to the Sign In screens
* [ ] Tutorial Screens [Time spent: ]
	* [ ] User can page between the screens
* [ ] Image Timeline [Time spent: ]
	* [ ] Display a scrollable view of images
	* [ ] User can tap on the conversations button to see the conversations screen (push)
	* [ ] User can tap on the profile image to see the settings view (modal from below)
* [ ] Conversations [Time spent: ]
	* [ ] User can dismiss the conversations screen
* [ ] Settings [Time spent: ]
	* [ ] User can dismiss the settings screen
	* [ ] User can log out

## Optional User Stories
* [ ] Landing Screen:
	* [ ] Photo tiles move, scale and rotate while user scrolls.
* [ ] Sign In:
	* [ ] User can scroll down to dismiss keyboard.
	* [ ] User sees the form scale up and fade it in as the screen appears.
* [ ] Sign up / Create a Dropbox:
	* [ ] Tapping in the form reveals the keyboard and scrolls the form and button up so they remain visible.
	* [ ] Tapping the "Agree to Terms" checkbox selects the checkbox.
	* [ ] Tapping on "Terms" shows a web view with the terms.
	* [ ] User is taken to the tutorial screens upon tapping the "Create a Dropbox" button.
* [ ] Tutorial Screens:
	* [ ] User can page between the screens with updated dots.
	* [ ] Upon reaching the 4th page, the page indicator dots are hidden and "Take Carousel for a Spin" button is shown.
* [ ] Learn more about Carousel:
	* [ ] Show the "Learn more about Carousel" button in the photo timeline.
	* [ ] Tap the X to dismiss the banner.
	* [ ] Track the 3 events: (1) View a photo full screen, (2) Swipe left and right and (3) Share a photo.
	* [ ] Upon completion of the events, mark them green.
	* [ ] When all events are completed, dismiss the banner.
* [ ] Settings
	* [ ] User is presented with an action sheet with actions to "cancel" or "logout".

## Video Walkthrough

![Carousel](carousel.gif)



## Notes / Challenges encountered while building the app:
[Red]: got stuck [Orange]: takeaways [Green]: wow moment



## License

    Copyright [2016] [Sophiakc.com](http://www.sophiakc.com)

    Licensed under the Apache License, Version 2.0 (the "License");
    you may not use this file except in compliance with the License.
    You may obtain a copy of the License at

        http://www.apache.org/licenses/LICENSE-2.0

    Unless required by applicable law or agreed to in writing, software
    distributed under the License is distributed on an "AS IS" BASIS,
    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
    See the License for the specific language governing permissions and
    limitations under the License.
