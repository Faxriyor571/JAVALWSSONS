public class Book implements Comparable<Book> {
    private String title;
    private String author;
    private int year;
    public Book(String title, String author, int year) {
        this.title = title;
        this.author = author;
        this.year = year;
    }
    // compareTo methodini yili bo'yicha solishtirish
    @Override
    public int compareTo(Book other) {
        return this.year - other.year;
    }

    @Override
    public String toString() {
        return title + " " + author + " (" + year + ")";
    }


    public int getYear() {
        return 0;
    }
}