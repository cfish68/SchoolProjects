package Exercise7Package;

import Exercise7Package.Files.*;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Paths;
import java.util.HashMap;
import java.util.Map;
import java.util.Scanner;
import java.util.stream.Collectors;

public class Main {

    public static void main(String[] args) throws IOException {
        Scanner scanner = new Scanner(System.in);
        System.out.println("Choose from the following options:\n" +
                "f: FileDetails\n" +
                "h: Hamburgers");
        String choice = scanner.nextLine();
        if (choice.equals("f")){
            fileMenu(scanner);
        }
        try {
            if (choice.equals("h")) {
                hamburgerMenu(scanner);
            }
        }catch(Exception e)
        {
            System.out.println("Something went wrong.");
        }
    }

    public static FileDetails readFileDetails(String path) throws IOException {
        Map<String, FileDetails> files = new HashMap();
        DirectoryDetails root=new DirectoryDetails(null, "root");
        files.put("", root);
        Files.lines(Paths.get(path))
                .map(str -> FileDetailsFactory.getFileDetails(str))
                .peek(f -> files.put(f.getFullName(),f))
                .peek(f -> ((DirectoryDetails)files.get(f.getPath())).addFile(f))
                .collect(Collectors.toList());
        return root;
    }
    public static void fileMenu(Scanner scanner) throws IOException {
        String path="C://Users//csfwn//Desktop//Tashpab A'//advanced//OOPED//Exercise7//src//Exercise7Package//files.txt";
        FileDetails root= readFileDetails(path);
        System.out.println("Choose from the following options:\n" +
                "q: quit\n" +
                "c: countFiles\n" +
                "st: statistics\n" +
                "sh: short\n" +
                "sz: size");
        String myString;
        while (!(myString = scanner.nextLine()).equals("q")){
            switch (myString){
                case "c":
                    FileCountVisitor cVisit = new FileCountVisitor();
                    root.accept(cVisit);
                    System.out.println("Found " + cVisit.count + " files");
                    break;
                case "sz":
                    SizeCalculationBehavior sVisit = new SizeCalculationBehavior();
                    root.accept(sVisit);
                    System.out.println("the total size is " + sVisit.totalSize + " bytes");
                    break;
                case "st":
                    statisticsVisitor st = new statisticsVisitor();
                    root.accept(st);
                    break;
                case "sh":
                    ShortRepresentationVisitor shorVisitor = new ShortRepresentationVisitor();
                    root.accept(shorVisitor);
            }
        }
    }

    public static void hamburgerMenu(Scanner scanner){
        System.out.println("Choose from the following hamburgers:\n" +
                "cl: classic\n" +
                "sp: spicy\n" +
                "la: lamb\n" +
                "hm: homemade");

        String hChoice = scanner.nextLine();
        HamburgerFactory hFactory = new HamburgerFactory();
        Hamburger hamburger = hFactory.createHamburger(hChoice);

        String choice="";
        while (!choice.equals("s")) {
            System.out.println("Choose from the following options:\n" +
                    "a: add topping\n" +
                    "s: serve");
            choice = scanner.nextLine();
            if (choice.equals("a")) {
                hamburger = toppingMenu(scanner, hamburger);
            }
            if (choice.equals("s")) {
                System.out.println(hamburger.serve());

            }
        }
    }

    public static Hamburger toppingMenu(Scanner scanner, Hamburger hamburger){
        System.out.println("Choose from the following toppings:\n" +
                "ch: chips\n" +
                "or: onion rings\n" +
                "sa: salad\n" +
                "fe: friedEgg");

        TopingFactory tFactory = new TopingFactory();
        String tChoice = scanner.nextLine();
        return tFactory.createHamburger(tChoice, hamburger);

    }
}
