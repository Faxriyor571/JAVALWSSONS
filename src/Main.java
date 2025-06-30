public class Main {
    public static void main(String[] args) {

        mashina m = new mashina();
        m.tezlik = 60;
        m.model = "BMW";
        m.SpeedUp(30);
        m.GetSpeed(30);
        System.out.println("currently speed: "+ m.tezlikk());

        //task 4
        Dokon d = new Dokon("Supermarkt", "qilichboy");
        d.open();
        d.close();
    }
}
