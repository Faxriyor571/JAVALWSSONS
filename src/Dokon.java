public class Dokon {
    String Nomi;
    String address;
           public Dokon(String nomi, String address) {
               this.Nomi = nomi;
               this.address = address;
           }
    void open() {
        System.out.println("Do'kon ochildi");
    }
    void close() {
        System.out.println("Do'kon yopildi");
    }
}
