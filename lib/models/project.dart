import 'package:flutter/cupertino.dart';

class Project {
  final String name;
  final String techStack;
  final String description;
  final String imagePath;
  final List<Widget> detailImagePath;
  final String github;

  const Project({
    required this.name,
    required this.techStack,
    required this.imagePath,
    required this.detailImagePath,
    required this.description,
    required this.github,
  });
}

final projectsMap = {
  "Alumni App": Project(
    name: "Alumni App",
    techStack: "THE ROGUE ASSASSIN",
    imagePath: "assets/projects/alumni.jpg",
    description:
        "Abandoning the Kinkou Order and her title of the Fist of Shadow, Akali now strikes alone, ready to be the deadly weapon her people need. Though she holds onto all she learned from her master Shen, she has pledged to defend Ionia from its enemies, one kill at a time. Akali may strike in silence, but her message will be heard loud and clear: fear the assassin with no master.",
    github: "",
    detailImagePath: List.generate(
      5,
          (index) => ClipRRect(
        borderRadius: const BorderRadius.all(
          Radius.circular(5.0),
        ),
        child: Image.asset(
          "assets/projects/alumni${index + 1}.jpg",
          fit: BoxFit.cover,
        ),
      ),
    ),
  ),
  "Hotel Booking App": Project(
    name: "Hotel Booking App",
    techStack: "THE STEEL SHADOW",
    imagePath: "assets/projects/hotel.jpg",
    description:
        "Weaponized to operate outside the boundaries of the law, Camille is the Principal Intelligencer of Clan Ferros—an elegant and elite agent who ensures the Piltover machine and its Zaunite underbelly runs smoothly. Adaptable and precise, she views sloppy technique as an embarrassment that must be put to order. With a mind as sharp as the blades she bears, Camille's pursuit of superiority through hextech body augmentation has left many to wonder if she is now more machine than woman.",
    github: '',
    detailImagePath: List.generate(
      2,
          (index) => ClipRRect(
        borderRadius: const BorderRadius.all(
          Radius.circular(5.0),
        ),
        child: Image.asset(
          "assets/projects/hotel${index + 1}.jpg",
          fit: BoxFit.cover,
        ),
      ),
    ),
  ),
  "Grocery Ordering App": Project(
      name: "Grocery Ordering App",
      techStack: "THE PRODIGAL EXPLORER",
      imagePath: "assets/projects/grocery.jpg",
      description:
          "A dashing adventurer, unknowingly gifted in the magical arts, Ezreal raids long-lost catacombs, tangles with ancient curses, and overcomes seemingly impossible odds with ease. His courage and bravado knowing no bounds, he prefers to improvise his way out of any situation, relying partially on his wits, but mostly on his mystical Shuriman gauntlet, which he uses to unleash devastating arcane blasts. One thing is for sure—whenever Ezreal is around, trouble isn't too far behind. Or ahead. Probably everywhere.",
      github: '',
      detailImagePath:List.generate(
        2,
            (index) => ClipRRect(
          borderRadius: const BorderRadius.all(
            Radius.circular(5.0),
          ),
          child: Image.asset(
            "assets/projects/grocery${index + 1}.jpg",
            fit: BoxFit.cover,
          ),
        ),
      ),),
  "Bug Tracking Tool": Project(
      name: "Bug Tracking Tool",
      techStack: "THE ASPECT OF TWILIGHT",
      imagePath: "assets/projects/bug.jpg",
      description:
          "As the embodiment of mischief, imagination, and change, Zoe acts as the cosmic messenger of Targon, heralding major events that reshape worlds. Her mere presence warps the arcane mathematics governing realities, sometimes causing cataclysms without conscious effort or malice. This perhaps explains the breezy nonchalance with which Zoe approaches her duties, giving her plenty of time to focus on playing games, tricking mortals, or otherwise amusing herself. An encounter with Zoe can be joyous and life affirming, but it is always more than it appears and often extremely dangerous.",
      github: 'https://github.com/Vishnu-Deepan/bug-management-website',
      detailImagePath: List.generate(
        18,
            (index) => ClipRRect(
          borderRadius: const BorderRadius.all(
            Radius.circular(5.0),
          ),
          child: Image.asset(
            "assets/bug/bug_tracking_tool pages (1)_pages-to-jpg-${index + 1}.jpg",
            fit: BoxFit.cover,
          ),
        ),
      ),),
  "Dark Pattern Detector": Project(
      name: "Dark Pattern Detector",
      techStack: "THE BLADE DANCER",
      imagePath: "assets/projects/darkpattern.jpg",
      description:
          "The Noxian occupation of Ionia produced many heroes, none more unlikely than young Irelia of Navori. Trained in the ancient dances of her province, she adapted her art for war, using the graceful and carefully practised movements to levitate a host of deadly blades. After proving herself as a fighter, she was thrust into the role of resistance leader and figurehead, and to this day remains dedicated to the preservation of her homeland.",
      github: '',
      detailImagePath: List.generate(
        2,
            (index) => ClipRRect(
          borderRadius: const BorderRadius.all(
            Radius.circular(5.0),
          ),
          child: Image.asset(
            "assets/projects/darkpattern${index + 1}.jpg",
            fit: BoxFit.cover,
          ),
        ),
      ),),
};
