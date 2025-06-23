import java.util.Comparator;

public class BookYearComparator implements Comparator<notebook> {
    @Override
    public int compare(notebook b1, notebook b2) {
        return b1.getYear() - b2.getYear();
    }


}
