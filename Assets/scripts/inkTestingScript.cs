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

    // Start is called before the first frame update
    void Start()
    {
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

        // either "slow" or "fast"
        musicSpeed = story.variablesState["musicSpeed"].ToString();

        // either "straight" or "gay"
        musicSex = story.variablesState["musicSex"].ToString();

        // either "happy" or "sad"
        musicVibe = story.variablesState["musicVibe"].ToString();

        passenger = story.variablesState["passenger"].ToString();
    }
}
