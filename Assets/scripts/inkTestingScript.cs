using Ink.Runtime;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class inkTestingScript : MonoBehaviour
{
    public TextAsset inkJSON;
    private Story story;

    public Text textPrefab;
    public Button buttonPrefab;
    public Font buttonFont;

    public string destination;
    public string musicSpeed;
    public string musicSex;
    public string musicVibe;
    public string passenger;
    private FMOD.Studio.EventInstance farSFX;
    private FMOD.Studio.EventInstance farSFX2;
    private bool farSFXIsPlaying = false;
    private FMOD.Studio.EventInstance slowBeat;
    private FMOD.Studio.EventInstance fastBeat;
    bool beatIsPlaying = false;
    private FMOD.Studio.EventInstance straightBGM;
    private FMOD.Studio.EventInstance gayBGM;
    bool musicSexIsPlaying = false;
    private FMOD.Studio.EventInstance happyMusic;
    private FMOD.Studio.EventInstance sadMusic;
    bool musicVibeIsPlaying = false;

    //private bool farSFX2IsPlaying = false;

    //FMOD.Studio.PLAYBACK_STATE playbackState;


    // Start is called before the first frame update
    void Start()
    {
        farSFX = FMODUnity.RuntimeManager.CreateInstance("event:/carStart");
        farSFX2 = FMODUnity.RuntimeManager.CreateInstance("event:/carStart2");
        slowBeat = FMODUnity.RuntimeManager.CreateInstance("event:/slowBeat");
        fastBeat = FMODUnity.RuntimeManager.CreateInstance("event:/fastBeat");
        straightBGM = FMODUnity.RuntimeManager.CreateInstance("event:/straightStems");
        gayBGM = FMODUnity.RuntimeManager.CreateInstance("event:/gayStems");
        happyMusic = FMODUnity.RuntimeManager.CreateInstance("event:/HappyMusic");
        sadMusic = FMODUnity.RuntimeManager.CreateInstance("event:/SadMusic");


        story = new Story(inkJSON.text);

        refreshUI();

    }

    // Update is called once per frame
    void Update()
    {
        
    }

    void refreshUI()
    {

        eraseUI();

        Text storyText = Instantiate(textPrefab) as Text;
        storyText.text = loadStoryChunk();
        storyText.transform.SetParent(this.transform, false);

        foreach (Choice choice in story.currentChoices)
        {
            Button choiceButton = Instantiate(buttonPrefab) as Button;

            choiceButton.transform.SetParent(this.transform, false);
            Text choiceText = choiceButton.GetComponentInChildren<Text>();
            choiceText.text = choice.text;
            choiceText.fontSize = 24;
            choiceText.font = buttonFont;
            choiceText.color = Color.black;

            choiceButton.onClick.AddListener(delegate { 
                chooseStoryChoice(choice);
                
            });
        }

        updateVariables();
    }

    void eraseUI() 
    {
        for(int i =  0; i <this.transform.childCount; i++) 
        {
            Destroy(this.transform.GetChild(i).gameObject);
        }
    }

    string loadStoryChunk() 
    {
        string text = "";

        while(story.canContinue) 
        {
            text += story.Continue() + "\n";
            if (text == "\n\n")
            {
                text = "";
            }
        }
        
        return text;
    }

    void chooseStoryChoice(Choice choice)
    {
        story.ChooseChoiceIndex(choice.index);
        refreshUI();
    }

    void updateVariables() 
    {
        // each of these varibles start as "none" and become one of two things

        // either "far" or "familiar"
        destination = story.variablesState["destination"].ToString();
        if(destination == "far" && !farSFXIsPlaying)
        {
            farSFX.start();
            farSFXIsPlaying = true;
        }
        else if (destination == "familiar" && !farSFXIsPlaying)
        {
            farSFX2.start();
            farSFXIsPlaying = true;
        }


        // either "slow" or "fast"
        musicSpeed = story.variablesState["musicSpeed"].ToString();
        if (musicSpeed == "slow" && !beatIsPlaying)
        {
            slowBeat.start();
            beatIsPlaying = true;
        } 
        else if (musicSpeed == "fast" && !beatIsPlaying)
        {
            fastBeat.start();
            beatIsPlaying = true;
        }

        // either "straight" or "gay"
        musicSex = story.variablesState["musicSex"].ToString();
        if(musicSex == "straight" && !musicSexIsPlaying)
        {
            straightBGM.start();
            musicSexIsPlaying = true;
        }
        else if (musicSex == "gay" && !musicSexIsPlaying)
        {
            gayBGM.start();
            musicSexIsPlaying = true;
        }

        // either "happy" or "sad"
        musicVibe = story.variablesState["musicVibe"].ToString();
        if(musicVibe == "happy" && !musicVibeIsPlaying)
        {
            happyMusic.start();
            musicVibeIsPlaying = true;
        }
        else if (musicVibe == "sad" && !musicVibeIsPlaying)
        {
            sadMusic.start();
            musicVibeIsPlaying = true;
        }

        passenger = story.variablesState["passenger"].ToString();
    }
}
