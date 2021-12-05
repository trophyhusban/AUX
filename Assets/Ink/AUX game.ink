VAR destination = "none"
VAR musicSpeed = "none"
VAR musicSex = "none"
VAR musicVibe = "none"
VAR passenger = "none"

It was late. Isaac wasn't tired; they were used to driving at this hour. 
Tonight, Isaac was going somewhere

* [far.] 
~ destination = "far"
    They hadn't been there before, so they're using Google Maps. They were a confident driver, so they weren't too worried about getting there. #far
* [familiar.] 
~ destination = "familiar"
    This route has been burned into their memory by countless nights on the freeway, all darkness and reflected headlights.

- -> what_are_they_playing

== what_are_they_playing ==
Isaac always put on music when they drove. It's not worth it to get anywhere, they thought, if they can't listen to music on the way. They loved the feeling of plugging the AUX chord into their phone. The satisfying click was almost as important to their experience as the actual music. 
Isaac listened to a lot of stuff. Tonight they were playing something 
* [slow]
~ musicSpeed = "slow"
* [fast]
~ musicSpeed = "fast"
- something {musicSpeed} and

* [gay]
~ musicSex = "gay"
* [straight]
~ musicSex = "straight"
- something {musicSpeed} and {musicSex} and

* [happy.]
~ musicVibe = "happy"
* [sad.]
~ musicVibe = "sad"
- something {musicSpeed} and {musicSex} and {musicVibe}.
-> who_are_they_driving

== who_are_they_driving ==
Isaac spent a lot of time driving. They had a lot of places to be, and they happened to know a lot of people who also had a lot of places to be. 
Tonight, Isaac was

* [driving a friend home.]
~ passenger = "friend"
* [driving an enemy home.]
~ passenger = "enemy"
* [driving a lover home.]
~ passenger = "lover"
- 
{
- passenger == "friend":
    {
    - destination == "far":
        -> friend_far
    - destination == "familiar":
        -> friend_familiar
    }
- passenger == "enemy":
    {
    - destination == "far":
        -> enemy_far
    - destination == "familiar":
        -> enemy_familiar
    }
- passenger == "lover":
    {
    - destination == "far":
        -> lover_far
    - destination == "familiar":
        -> lover_familiar
    }
}

== friend_far ==
Isaac didn't know Mordechai very well, but they supposed that they would call him a friend. The two had sat next to each other in their literature lecture for the last several weeks. Even though they often spoke up in class, it had taken Isaac several days of planned micro interactions to get themself to the point where they could comfortably interact with Mordechai. Talking to Mordechai outside of class was something Isaac had not allowed themself to do yet. Nonetheless, when lecture went late tonight and Mordechai exclaimed that he missed his bus, Isaac was quick to volunteer to drive him home.
{musicSpeed == "fast": Isaac was anxious the whole time, even though they knew it was just a normal human interaction. They couldn't quite put their finger on what was freaking them out about the situation. They chattered endlessly at Mordechai until they arrived at his house, which was further than Isaac anticipated. They said goodbye and left his house as quick as they could. Maybe this sudden advancement of their relationship opened a new path for Isaac later on.}
{musicSpeed == "slow": Isaac savored the time they were spending with Mordechai outside of class. They were much more comfortable here than in class. When they arrived at Mordechai's place, they ended up talking for another hour in the car on the curb before he got out. Isaac eagerly awaited the next day of class so they could see Mordechai again. It was as if a weight was suddenly lifted off their shoulders and they could act normally around their new friend.}

* [THE END] -> play_again

== friend_familiar ==
Mordechai had been Isaac's friend for as long as they could remember. Today, when they were getting dinner together, Mordechai described a specific sexual fantasy of his while looking directly into Isaac's eyes. After a moment, Isaac told him that they often thought of that too, not breaking eye contact. There was a long pause and the night felt like it had shifted in some way.
{musicSex == "gay": The tension in the car was palpable. Isaac dreaded stopping at Mordechai's place and the choice that they would have to make when they arrived. Was this a fleeting moment that could change their relationship forever, or was it marking a new dynamic in their relationship? Half of Isaac wanted to go back. They weren't even really into Mordechai, if they were honest, but they did like the idea that he was attracted to them. As their destination approached, Isaac imagined out different ways it could play out in their head. It was with no certainty that they pulled over in front of Mordechai's house and parked their car.}
{musicSex == "straight": Isaac didn't want anything to change. They didn't look at Mordechai once when they were driving him home. They wanted, if possible, to drop him off as quickly as possible and then leave. They would rather avoid talking about it, but was willing to bring it up if they had to. Logically, they couldn't leave until Mordechai left their car first, so it was up to Mordechai to choose when to actually get out and end their interaction. They turned the dynamics of this little social interaction in their head multiple times, but found no solution. Isaac started panicking as they approached their destination.}
* [THE END] -> play_again

== enemy_far ==
Isaac had promised to drive Mordechai home already, and they didn't want to go back on that. Tonight, they were the bigger person, so they drove him home even though he showed up an hour late, bought the most expensive thing on the menu, and made Isaac ttake the check. On top of that, he totally didn't understand what Isaac meant when they said they were trans, and argued with them for way longer than they anticipated about eating kitniyot on Passover.
    {musicVibe == "happy": Morderchai was not someone they would see again. Right now, they were just happy that he was staying quiet, and they hoped that he would remain quiet until they reached his house. Isaac prefered to hear the music they put on than Morderchai's voice, anyway. Maybe the next hot Jewish boy they find on a dating app will be just a little bit more considerate.}
    {musicVibe == "sad": The night was a total failure. Isaac already had a few bad experiences with dating apps, and was unhappy to add another tally to the list of reasons why they hated them. They were happy that, if nothing else, the night was ending, and that in fourty minutes or so, they would be home alone in their room.}
    
* [THE END] -> play_again

== enemy_familiar ==
Isaac had known Mordechai for basically their entire life, but they were never close. They were family friends, both in a small enough circle of Jewish people in town. Tonight, Isaac's familiy invited Mordechai and his parents to their Passover seder. Isaac had to make weird small talk with Mordechai the whole time. As it turned out, both his parents had too much to drink, so it fell on Isaac to drive them home that night. They would come back in the morning for their car.
    {musicSex == "gay": Mordechai was one of the only other gay Jewish people that Isaac knew. This did not make them like him any more. Still, they were happy to say hear Mordechai say "I love this song" when they put the album on. Mordechai's parents had a habbit of misgendering Isaac, but at least Mordechai knew what was up. Soon, Mordechai walked his stumbling parents into his house, and Isaac realized that they maybe they had a few more things in common than they originally thought. -> END}
    {musicSex == "straight": Isaac didn't look at Mordechai even once until they made it to his place. When they arrived, Mordechai said nothing and Isaac was alone once again. -> END}
    
* [THE END] -> play_again

== lover_far ==
Mordechai had just moved to a new place and needed help getting there. Isaac's car was full to the brim with boxes. Mordechai and Isaac had spent half of the day moving all of his stuff into the car. They still had an hour to go until reaching their destination.
    {musicVibe == "happy": Even though he was going to go so far away, Isaac was happy to see him go. He always said that their small town made him clausterphobic. Tonight, the two sang happy songs songs together, the need for music outweighing the need for conversation. When they got there, Isaac anticipated a heavy conversation about the state of their relationship. They didn't know exactly what to think about the whole situation, but they didn't want to think about it yet. Right now, the only thing that mattered was the way their voice sounded with their boyfriend's.}
    {musicVibe == "sad": Neither of them spoke over the music. Isaac didn't dare look over at Mordechai. A scene of tomorrow afternoon replayed in their mind: Isaac standing in the doorway, keys in hand, Mordechai slowly running out of ways to delay his "goodbye." Uncertainty blotted out Isaac's future, obscuring it from view. Eventually, they imagined, the water must run clear and things would make sense again.}
    
* [THE END] -> play_again

== lover_familiar ==
Mordechai had asked Isaac to move in with him, but they were not able to provide them with an answer yet. A million years of Mordechai stretched out in front of Isaac, well informed by the detailed descriptions Mordechai provided them. They drove through time and witnessed it all.
    {musicSpeed == "slow": It was late, but Isaac wasn't planning on spending the night. They would rather drive home at this hour than hear Mordechai pitch their future to them any more. Isaac imagined Mordechai's manerisms developing into mirages, clouding the reasons they really did love him. If they said no, could they continue dating, or was this a test that they would fail? Isaac glanced at Mordechai, who had said nothing for a very long time, and realized that just how far away they were from him.}
    {musicSpeed == "fast": Warm lighting eveloped their future, which rested on the foundation of their relationship. Isaac hadn't considered it before, but once they gave it enough though, there was no reason they shouldn't move in with him. Isaac began imagining their return to Mordechai's house with all their stuff. They imagined waking up before Mordechai and making him a pot of coffee. They imagined having their parents over for Passover. Isaac and Mordechai lead the ceremony as their families sit crammed together at their kitchen table, drinking, singing, and remembering together.}
    
* [THE END] -> play_again

== play_again ==
<size=48>THE END
Ardent Eliot Reinhard and Carey Wang</size>
-> END