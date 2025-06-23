public class notebook {
    private String title;
    private String author;
    private int year;

    public notebook(String title, String author, int year) {
        this.title = title;
        this.author = author;
        this.year = year;
    }

    public int getYear() {
        return year;
    }

    public String getTitle() {
        return title;
    }

    @Override

    public String toString() {
        return title + "by " + author + " ( " + year + " ( ";
    }
}
