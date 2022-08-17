//
//  ViewController.swift
//  TableViewPractice2
//
//  Created by M. Can Devecioğlu on 5.06.2022.
//
// Life isn't about finding yourself,
// It's all about creating yourself :)

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    var countryNames = [String]()
    var countryDesc = Array<String>() // Alternative
    var countryImages = [UIImage]()
    var choosenCountryName = String()
    var choosenCountryImage = UIImage()
    var choosenCountryDesc = String()
    @IBOutlet weak var myTableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.title = "UITableView Practice"
        
        myTableView.delegate = self
        myTableView.dataSource = self
        
#warning("This is bad method for MVC architecture. I will implement as soon as possible.")
    
        countryNames.append("🇹🇷 Türkiye")
        countryNames.append("🇺🇸 ABD")
        countryNames.append("🇦🇺 Avustralya")
        countryNames.append("🇦🇪 BAE")
        countryNames.append("🇨🇳 Çin")
        countryNames.append("🇫🇷 Fransa")
        countryNames.append("🇮🇳 Hindistan")
        countryNames.append("🇵🇪 Peru")
        countryNames.append("🇷🇺 Rusya")
        
        countryDesc.append("Turkey, officially the Republic of Türkiye, is a transcontinental country located mainly on the Anatolian Peninsula in Western Asia, with a small portion on the Balkan Peninsula in Southeast Europe. It shares borders with the Black Sea to the north; Georgia to the northeast; Armenia, Azerbaijan, and Iran to the east; Iraq to the southeast; Syria and the Mediterranean Sea to the south; the Aegean Sea to the west; and Greece and Bulgaria to the northwest.")
        countryDesc.append("The United States of America (U.S.A. or USA), commonly known as the United States (U.S. or US) or America, is a transcontinental country primarily located in North America. It consists of 50 states, a federal district, five major unincorporated territories, nine minor outlying islands,[i] and 326 Indian reservations with limited sovereignty. It is the third-largest country by both land and total area.[c] The United States shares land borders with Canada to the north and with Mexico to the south as well as maritime borders with the Bahamas, Cuba, and Russia, among others.[j] It has a population of over 331 million,[d] and is the third most populous country in the world.")
        countryDesc.append("Australia, officially the Commonwealth of Australia, is a sovereign country comprising the mainland of the Australian continent, the island of Tasmania, and numerous smaller islands.[13] With an area of 7,617,930 square kilometres (2,941,300 sq mi),[14] Australia is the largest country by area in Oceania and the world's sixth-largest country. Australia is the oldest,[15] flattest,[16] and driest inhabited continent,[17][18] with the least fertile soils.[19][20] It is a megadiverse country, and its size gives it a wide variety of landscapes and climates, with deserts in the centre, tropical rainforests in the north-east, and mountain ranges in the south-east.")
        countryDesc.append("Saudi Arabia,[c] officially the Kingdom of Saudi Arabia (KSA),[d] is a country on the Arabian Peninsula in Western Asia. It has a land area of about 2,150,000 km2 (830,000 sq mi), making it the fifth-largest country in Asia, the second-largest in the Arab world, and the largest in Western Asia. It is bordered by the Red Sea to the west; Jordan, Iraq, and Kuwait to the north; the Persian Gulf, Qatar and the United Arab Emirates to the east; Oman to the southeast; and Yemen to the south. Bahrain is an island country off the east coast. The Gulf of Aqaba in the northwest separates Saudi Arabia from Egypt.")
        countryDesc.append("China (Chinese: 中国; pinyin: Zhōngguó), officially the People's Republic of China (PRC; Chinese: 中华人民共和国; pinyin: Zhōnghuá Rénmín Gònghéguó), is a country in East Asia. It is the world's most populous country, with a population of more than 1.4 billion people. China spans five geographical time zones and borders 14 countries, the second most of any country in the world after Russia. Covering an area of approximately 9.6 million square kilometers (3,700,000 sq mi), it is the world's third or fourth largest country.[i] The country consists of 23 provinces,[j] five autonomous regions, four municipalities, and two Special Administrative Regions (Hong Kong and Macau). The national capital is Beijing, and the most populous city and financial center is Shanghai.")
        countryDesc.append("France (French: [fʁɑ̃s] Listen), officially the French Republic (French: République française),[14] is a transcontinental country predominantly located in Western Europe and spanning overseas regions and territories in the Americas and the Atlantic, Pacific and Indian Oceans.[XII] Its metropolitan area extends from the Rhine to the Atlantic Ocean and from the Mediterranean Sea to the English Channel and the North Sea; overseas territories include French Guiana in South America, Saint Pierre and Miquelon in the North Atlantic, the French West Indies, and many islands in Oceania and the Indian Ocean. Due to its several coastal territories, France has the largest exclusive economic zone in the world.")
        countryDesc.append("India, officially the Republic of India (Hindi: Bhārat Gaṇarājya),[26] is a country in South Asia. It is the seventh-largest country by area, the second-most populous country, and the most populous democracy in the world. Bounded by the Indian Ocean on the south, the Arabian Sea on the southwest, and the Bay of Bengal on the southeast, it shares land borders with Pakistan to the west;[f] China, Nepal, and Bhutan to the north; and Bangladesh and Myanmar to the east. In the Indian Ocean, India is in the vicinity of Sri Lanka and the Maldives; its Andaman and Nicobar Islands share a maritime border with Thailand, Myanmar and Indonesia. India is the fifth largest economy in the world as per World Bank data in 2022.[27]")
        countryDesc.append("Peru (/pəˈruː/ (listen); Spanish: Perú [peˈɾu]; Quechua: Piruw [pɪɾʊw];[8] Aymara: Piruw [pɪɾʊw]), officially the Republic of Peru (Spanish: República del Perú (help·info)), is a country in western South America. It is bordered in the north by Ecuador and Colombia, in the east by Brazil, in the southeast by Bolivia, in the south by Chile, and in the south and west by the Pacific Ocean. Peru is a megadiverse country with habitats ranging from the arid plains of the Pacific coastal region in the west to the peaks of the Andes mountains extending from the north to the southeast of the country to the tropical Amazon basin rainforest in the east with the Amazon River.[9] Peru has a population of 34 million, and its capital and largest city is Lima. At 1.28 million km2 (0.5 million mi2), Peru is the 19th largest country in the world, and the third largest in South America.")
        countryDesc.append("Russia (Russian: Россия, tr. Rossiya, pronounced [rɐˈsʲijə]), or the Russian Federation (RF),[c] is a transcontinental country spanning Eastern Europe and Northern Asia. It is the largest country in the world by area, covering over 17,098,246 square kilometres (6,601,670 sq mi), and encompassing one-eighth of Earth's inhabitable landmass. Russia extends across eleven time zones and borders sixteen sovereign nations, the most of any country in the world.[d] It is the ninth-most populous country in the world and the most populous country in Europe, with a population of 145.5 million. The country's capital and largest city is Moscow, the largest city entirely within Europe. Saint Petersburg is Russia's cultural centre and second-largest city. Other major urban areas include Novosibirsk, Yekaterinburg, Nizhny Novgorod and Kazan.")
        
        countryImages.append(UIImage(named: "turkiye.jpg")!)
        countryImages.append(UIImage(named: "abd.jpeg")!)
        countryImages.append(UIImage(named: "avustralya.jpeg")!)
        countryImages.append(UIImage(named: "bae.jpeg")!)
        countryImages.append(UIImage(named: "cin.jpeg")!)
        countryImages.append(UIImage(named: "fransa.jpeg")!)
        countryImages.append(UIImage(named: "hindistan.jpeg")!)
        countryImages.append(UIImage(named: "peru.jpeg")!)
        countryImages.append(UIImage(named: "rusya.jpeg")!)
        
    }
    
    //MARK: - TableView methods
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
      if editingStyle == .delete {
        self.countryNames.remove(at: indexPath.row)
        self.countryImages.remove(at: indexPath.row)
        self.countryDesc.remove(at: indexPath.row)
        self.myTableView.deleteRows(at: [indexPath], with: .automatic)
      }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = countryNames[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return countryNames.count
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        choosenCountryName = countryNames[indexPath.row]
        choosenCountryImage = countryImages[indexPath.row]
        choosenCountryDesc = countryDesc[indexPath.row]
        performSegue(withIdentifier: "toImageViewController", sender: nil)
    }
    
//MARK: - Navigation section
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toImageViewController" {
            let destinationVC = segue.destination as! imageViewController
            destinationVC.selectedCountryName = choosenCountryName
            destinationVC.selectedCountryImage = choosenCountryImage
            destinationVC.selectedCountryDesc = choosenCountryDesc
            
        }
    }


}

