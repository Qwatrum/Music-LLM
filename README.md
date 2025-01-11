# Music LLM
---
###### This is an LLM designed to create piano music
---

## [Demo here on Itch.io](https://qwatrum.itch.io/music-llm "Itch.io")

## Get started:
* Clone the project and run it in Godot
* Or view it [here](https://qwatrum.itch.io/music-llm "Itch.io") on itch.io

## How to use:
* Start the LLM and click 'Start'
* Click any piano key or load an existing song
* Green piano keys are recommend that means more data exist for them. Errors can still happen
  
![menu](https://cloud-ov7h3b4ki-hack-club-bot.vercel.app/0musicllm__1_.png)
	
## Creating a song:
* After you clicked a key, the song starts to generate
* See _How does it work_ to see the explanation behind it
* After around 2 seconds the song will start
* Each note will be played and visualised
  
![piano](https://cloud-jd0dx9p2r-hack-club-bot.vercel.app/0musicllm__2_.png)
* At the end you can either save it or create a new song
  
![save](https://cloud-9qmo72otm-hack-club-bot.vercel.app/0musicllm__3_.png)
* During playing you can pause and resume or restart
  
![pause](https://cloud-1wl6db20o-hack-club-bot.vercel.app/0musicllm__5_.png)
* If you want to quit you can always press the X (top right corner)
	
## Loading a song:
* If you saved a song you can simply load it
* You can also delete a saved song by pressing the red X
  
![load](https://cloud-57lfhzzt0-hack-club-bot.vercel.app/0musicllm__6_.png)
	
## How does it work:
* It works pretty simillar to a regular LLM
* Using given data a dictionary is created where the keys are the notes (with length) and the values are notes (with length) that can follow
* If one note follows more often that another it is more represent in the value list
* For the both last notes is calculated which note is most likely to follow and with which length
* Two  notes are used to make the music better (the following note fits better)
* But that can cause an error if the two latest notes are not found in the dictionary, causing "input not found in corpus"
* My algorithm then tries to go back one note and try to find another note to continue
+ Sometimes this won't work and the song ends
* To prevent this, more data is needed
* See _Input your own data_ to learn about it
	
## Input your own data:
* You can input your own data by pressing `alt` in the main menu
* **But** it is extremely important to follow the right pattern!
* The input must look like this:
	* `[ ["C4", 200], ["E4", 200], ["C4", 200], ["B4", 200] ]` (but ofc longer is better)
* The spaces are reduntant. The string will be converted to a list
* Explanation of the pattern:
	* At the beginning and at the end are opening and closing square brackets. Like for a normal python list
	* Each note of your input has two parts:
		1. The note name. For example "C4" or "A#0". Never "Eb4" instead "D#4"!
		2. The note duration in milli seconds. A quarter note is ~ 400ms (140 BPM)
* The algorithm plays the note for x ms and after that the next note. So chords are not possible at the moment but are planned in the future.
* After copy pasting, just press the `Done` button
* You can also reset to standard or delte the whole data (this cannot be undone!) (Todo)
* You can also change the length. Open `llm.gd` in `scenes` and change the length in line 45

## Further plans:
* Add more data
* Chords
	
## Credits:
* Code: Qwatrum
* Design: Qwatrum
* The notes audio are from [here](https://github.com/plemaster01/PythonPiano "GitHub (plemaster01)"). Thank you!
* Font: Rubik (Google Fonts)
	
made with <3 by Qwatrum
