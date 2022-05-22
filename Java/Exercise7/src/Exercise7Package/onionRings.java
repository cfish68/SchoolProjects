package Exercise7Package;

public class onionRings extends HamburgerToppingDecorator{
    public onionRings(Hamburger hamburger)
    {
        super(hamburger);
    }

    @Override
    public String serve() {
        return super.serve() + decorateWithChips();
    }
    private String decorateWithChips(){
        return " wtih onion rings";
    }
}