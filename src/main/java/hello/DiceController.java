package hello;

import java.util.Random;

import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class DiceController {

	int dice1Rand;
	int dice2Rand;
	int dice3Rand;
	
	Dice dice = new Dice();
	
	@CrossOrigin
	@GetMapping("/randomNumber")
	public Dice generateNumber(@RequestParam(name="dice", required=false)String DiceName, Model model) {
		
		DatabaseConnection db = new DatabaseConnection();
		
		model.addAttribute("dice", DiceName);
		Random rand = new Random();
		
		dice1Rand = rand.nextInt(6) + 1;
		dice2Rand = rand.nextInt(6) + 1;
		dice3Rand = rand.nextInt(6) + 1;

		dice.setDice1(dice1Rand);
		dice.setDice2(dice2Rand);
		dice.setDice3(dice3Rand);
		
		db.Connection(dice);
		return dice ;
		
		
		

	}
	

	

}
