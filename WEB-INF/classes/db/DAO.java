package db;
import java.sql.*;
import java.lang.*;
public class DAO {
    public static Connection con;
    public DAO() throws Exception {
        if (con == null) {
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql:///pavandb","root","");
        }
    }

    public boolean doRegister(String uname, String email, String phone, String pwd)
            throws Exception {
        PreparedStatement pstmt = con.prepareStatement("insert into register values(?,?,?,?)");
        pstmt.setString(1, uname);
        pstmt.setString(2, email);
        pstmt.setString(3, phone);
        pstmt.setString(4,pwd);
        pstmt.executeUpdate();
        pstmt.close();
        return true;
    }
    public String loginCheck(String email, String pwd) throws Exception {
        String design= null;
        PreparedStatement pstmt = con.prepareStatement("select design from login where email=? and pwd=?");
        pstmt.setString(1, email);
        pstmt.setString(2, pwd);
        ResultSet rs = pstmt.executeQuery();
        if (rs.next()) {
            design = rs.getString("design");
        }
        return design;
    }
    public boolean addCourse(int cid, String cname, float price,String duration, String discount ,String start_date,String ann_date,String end_date) throws Exception {
        PreparedStatement pstmt = con.prepareStatement("insert into courses values(?,?,?,?,?,?,?,?)");
        pstmt.setInt(1, cid);
        pstmt.setString(2, cname);
        pstmt.setFloat(3, price);
        pstmt.setString(4, duration);
        pstmt.setString(5, discount);
        pstmt.setString(6, start_date);
        pstmt.setString(7, ann_date);
        pstmt.setString(8, end_date);
        pstmt.executeUpdate();
        pstmt.close();

        return true;
    }

    // public ArrayList<Product> getProducts() throws Exception {
    // ArrayList<Product> al = new ArrayList<Product>();
    // PreparedStatement pstmt = con.prepareStatement("select * from product order
    // by pid");
    // ResultSet rs = pstmt.executeQuery();
    // while (rs.next()) {
    // int pid = rs.getInt(1);
    // String pname = rs.getString(2);
    // float price = rs.getFloat(3);
    // String discount = rs.getString(4);
    // Product p = new Product(pid, pname, price, discount);
    // // p object state: contais 2nd row i.e 2 "MI-TV" 20000 20%
    // al.add(p);
    // }
    // return al;
    // }

    // public Product getProduct(int pid) throws Exception {
    // Product p = null;
    // PreparedStatement pstmt = con.prepareStatement("select * from product where
    // pid=?");
    // pstmt.setInt(1, pid);
    // ResultSet rs = pstmt.executeQuery();
    // if (rs.next()) {
    // String pname = rs.getString(2);
    // float price = rs.getFloat(3);
    // String discount = rs.getString(4);
    // p = new Product(pid, pname, price, discount);
    // }
    // return p;
    // }
}
