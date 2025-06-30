public class mashina {
    String model;
    int tezlik;

    void SpeedUp(int oshirish) {
        tezlik += oshirish;
    }

    void  GetSpeed(int tushurish) {
        tezlik -= tushurish;
    }

    int tezlikk() {
        return tezlik;
    }
}
