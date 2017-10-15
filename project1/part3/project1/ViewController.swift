//
//  ViewController.swift
//  project1
//
//  Created by Dilara Madinger on 10/4/17.
//  Copyright © 2017 Dilara Madinger. All rights reserved.
//
// Used this site to make the notes persistent: https://grokswift.com/uitextfield/
// Text is taken from Wikipedia pages or written by Karina Madinger.
//
// Due to copyright issues, the youtube videos for this app will work on simulator,
// but not on the physical device. The videos will not have sound.

import UIKit

class ViewController: UIViewController, UITextViewDelegate {
    
    var index:Int = 0
    var arrtxt = [[String]] (arrayLiteral: ["Lord of the Rings\n\nThe Lord of the Rings is an epic high fantasy novel written by English author and scholar J. R. R. Tolkien. The story began as a sequel to Tolkien's 1937 fantasy novel The Hobbit, but eventually developed into a much larger work. Emmerse yourself into the universe of elves, dwarves, and hobbits - read:\n\n The Hobbit\n The Fellowship of the Ring\n The Two Towers\n The Return of the King\n\n These books are fun to read and put amazing images in your head!", "Lord of the Rings Quotes\n\n \"All that is gold does not glitter,\n Not all those who wander are lost;\n The old that is strong does not wither,\n Deep roots are not reached by the frost.\n From the ashes a fire shall be woken,\n A light from the shadows shall spring;\n Renewed shall be blade that was broken,\n The crownless again shall be king.\"\n\n\"I wish it need not have happened in my time,\" said Frodo. \"So do I,\" said Gandalf, \"and so do all who live to see such times. But that is not for them to decide. All we have to decide is what to do with the time that is given us.\"\n\n \"If more of us valued food and cheer and song above hoarded gold, it would be a merrier world.\"\n\n \"There is some good in this world, and it's worth fighting for.\"\n\n \"Little by little, one travels far\"\n\n \"It's a dangerous business, Frodo, going out your door. You step onto the road, and if you don't keep your feet, there's no knowing where you might be swept off to.\"\n\n \"Many that live deserve death. And some that die deserve life. Can you give it to them? Then do not be too eager to deal out death in judgement. For even the very wise cannot see all ends.\"\n\n \"It's the job that's never started as takes longest to finish.\"\n\n \"Courage is found in unlikely places.\"\n\n \"What do you fear, lady?\" - \"A cage. To stay behind bars, until use and old age accept them, and all chance of doing great deeds is gone beyond recall or desire.\""], ["Tom Bombadil\n\n Bombadil is a nature loving person that collects lilies for his wife. He is also a very joyful person.", "Tom Bombadil\n\n Bombadil is a nature loving person that collects lilies for his wife. He is also a very joyful person."], ["Goldberry\n\n Goldberry is Tom Bombadil's wife. She is the daughter of river.", "Goldberry\n\n Goldberry is Tom Bombadil's wife. She is the daughter of river."], ["Gandalf\n\n Gandalf is a wizard that died. In the second book he comes back.", "Ian McKellen\n\n He is an English actor, whose career spans genres ranging from Shakespearean and modern theatre to popular fantasy and science fiction."], ["Frodo\n\n Frodo is a hobbit that is Bilbo's nephiew. He has to destroy the ring.", "Elijah Wood\n\n He is an American actor, voice actor, DJ, and producer. Wood's most dedicated charitable commitment is to The Art of Elysium that therapeutically helps hospitalized children deal with their ailments by concentrating on creating art."], ["Sam\n\n Sam is another hobbit that is a good friend of Frodo. Sam is a helper for Frodo.", "Sean Astin\n\n He is an American actor, voice actor, director and producer. He has a wife and 3 daughters and he is a democrat."], ["Galadriel\n\n She is a super old elf. She wears white a lot.", "Cate Blanchett\n\n She is an Australian actress and theatre director. She speaks for feminism and encourages women to fight for their rights."], ["Arwen\n\n Arwen is an elf princess. She loves Strider.", "Liv Tyler\n\n is an American actress and former model. Tyler is an active supporter of the charitable United Nations Children's Fund (UNICEF). She was appointed as a Goodwill Ambassador for the United States in 2003."], ["Legolas\n\n He is an elf that has good aim with bow and arrow. He goes with Frodo to Rivendale.", "Orlando Bloom\n\n is an English actor. After having his breakthrough as Legolas in The Lord of the Rings trilogy, he rose to fame by further appearing in epic fantasy, historical epic, and fantasy adventure films. During filming in Morocco for Kingdom of Heaven, Bloom rescued and adopted a dog, Sidi. He is also a Buddhist. As part of his environmental involvement, he has renovated his London home to use solar panels, incorporate recycled materials, and utilise energy efficient lightbulbs."], ["Strider\n\n Strider loves Arwen a lot. He is a human.", "Viggo Mortensen\n\n He is a Danish-American actor, producer, author, musician, photographer, poet, and painter. He speaks fluent Danish, English, French, and Spanish; he is also conversational in Italian, and understands Norwegian and Swedish."], ["Thorin\n\n Thorin is a dwarf. He dies at the end of Hobbit.", "Richard Armitage\n\n He is an English film, television, theatre and voice actor. \"I think I'm a concentrating actor. So in order to do my work in the course of a day, particularly with a character like this I have to concentrate.\""])
    var arrPic = [[String]] (arrayLiteral: ["Ring", "Ring", "watch?v=J93fc--VsaI"], ["Bombadil1", "Bombadil2", "watch?v=RRVIVJjuaHE"], ["Goldberry1", "Goldberry2", "watch?v=RRVIVJjuaHE"], ["Gandolf1", "Gandolf2", "watch?v=uyB6yMnh0Ic"], ["Frodo1", "Frodo2", "watch?v=RMInqyumZ3I"], ["Sam1", "Sam2", "watch?v=DV6trOl5VkE"], ["Galadriel1", "Galadriel2", "watch?v=Depf1gKhBno"], ["Arwen1", "Arwen2", "watch?v=616YMt6T5mA"], ["Legolas1", "Legolas2", "watch?v=eU0aaq5pjnQ&index=1&list=PLweUQSLj6l9ETP1BFVG2A4qRKUaNX-X86"], ["Strider1", "Strider2", "watch?v=PU7Hk_D2LG4"], ["Thorin1", "Thorin2", "watch?v=BEm0AjTbsac"])
    var arrVideo = [String] (arrayLiteral: "watch?v=RRVIVJjuaHE")
    let textViewContentsKey = "textViewContents"
    
    @IBOutlet weak var myPics: UIImageView!
    @IBOutlet weak var myScrollView: UIScrollView!
    @IBOutlet weak var mySegmentControl: UISegmentedControl!
    @IBOutlet weak var myText: UITextView!
    @IBOutlet weak var myNotes: UITextView!
    @IBOutlet weak var myWebView: UIWebView!
    
    @IBAction func mySegmentBehavior(_ sender: UISegmentedControl) {
        updateImage()
        updateText()
    }
    
    @IBAction func myBackButton(_ sender: UIButton) {
        mySegmentControl.selectedSegmentIndex = 0
        if(index > 0){
            index = index - 1
            myPics.image = UIImage(named: arrPic[index][0])
            getVideo(videoCode: arrPic[index][2])
            myText.text=arrtxt[index][0]
        }
        
    }
    
    @IBAction func myNextButton(_ sender: UIButton) {
        mySegmentControl.selectedSegmentIndex = 0
        if(index < (arrPic.count - 1)){
            index = index + 1
            myPics.image = UIImage(named: arrPic[index][0])
            getVideo(videoCode: arrPic[index][2])
            myText.text=arrtxt[index][0]
        }
    }
    
    func updateImage(){
        if mySegmentControl.selectedSegmentIndex==0{
            myPics.image=UIImage(named: arrPic[index][0])
        }
        else if mySegmentControl.selectedSegmentIndex==1 {
            myPics.image=UIImage(named: arrPic[index][1])
        }
    }
    
    func updateText(){
        if mySegmentControl.selectedSegmentIndex==0{
            myText.text=arrtxt[index][0]
        }
        else if mySegmentControl.selectedSegmentIndex==1 {
            myText.text=arrtxt[index][1]
        }
    }

    func saveNotes(){
        let defaults = UserDefaults.standard
        defaults.set(myNotes.text, forKey: textViewContentsKey)
    }
    
    func getVideo(videoCode:String){
        let url = URL(string: "https://www.youtube.com/\(videoCode)")
        myWebView.loadRequest(URLRequest(url: url!))
    }
    
    func textViewDidEndEditing(_ textView: UITextView) {
        saveNotes()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        let defaults = UserDefaults.standard
        if let textViewContents = defaults.string(forKey: textViewContentsKey){
            myNotes.text = textViewContents
        } else {
            myNotes.becomeFirstResponder()
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        myPics.image = UIImage(named: arrPic[index][0])
        myText.text=arrtxt[index][0]
        myNotes.delegate = self
        myText.delegate = self
        getVideo(videoCode: arrPic[index][2])
    }
}
