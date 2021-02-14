/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package veritabanı;

import java.sql.*;
import java.util.Scanner;

/**
 *
 * @author bunyamin
 */
public class Veritabanı {

    /**
     * @param args the command line arguments
     */
    
    public static void main(String[] args) {
        String isim;
        String isim1;
        int secim = 0;    
        String sql;
        String musteriNo;
        String musteriAdi;
        String musteriTelno;
        String musteriAdres;
        String musteriYas;     
        String gir;
            
        
            
            while(secim !=5)
            {
                try
                {  
                    /***** Bağlantı kurulumu *****/
                    Connection conn = DriverManager.getConnection("jdbc:postgresql://localhost:5432/dBase", "postgres", "2720");
                    if (conn != null)
                        System.out.print("");
                    else
                        System.out.println("Bağlantı girişimi başarısız!");
                
                System.out.println("işlem seçiniz\n1-> Müşteri Ara\n2-> Müşteri Adı Güncelle\n3-> Müşteri Sil\n4-> Müşteri Ekle \n5-> Çıkış ");
                Scanner girdi = new Scanner(System.in);
                secim = girdi.nextInt();         
            
                switch (secim)
                {
                    case 1:
                        System.out.println("aranacak müşteri ismini giriniz");
                        Scanner girr = new Scanner(System.in);
                        gir = girr.nextLine();         
                        sql= "SELECT * FROM \"musteri\" WHERE \"musteri_ad\" = \'";
                        sql = sql + gir + "\'";
                        
                        /***** Sorgu çalıştırma *****/
                        Statement stmt = conn.createStatement();
                        ResultSet rs = stmt.executeQuery(sql);
            
                       /***** Bağlantı sonlandırma *****/
                       conn.close();

                       while(rs.next())
                       {
                           /***** Kayda ait alan değerlerini değişkene ata *****/
                           musteriNo  = rs.getString("musteri_Id");
                           musteriAdi = rs.getString("musteri_ad");
                           musteriTelno = rs.getString("musteri_telno");
                           musteriAdres = rs.getString("musteri_adres");
                           musteriYas = rs.getString("musteri_yas");

                           /***** Ekrana yazdır *****/
                           System.out.println("\nMüşteri No:"+ musteriNo);
                           System.out.println("Müşteri Adı:" + musteriAdi);
                           System.out.println("Müşteri telefon no:" + musteriTelno);
                           System.out.println("Müşteri adres:" + musteriAdres);
                           System.out.println("Müşteri yas:" + musteriYas + "\n");
                        }
                        rs.close();
                        stmt.close();
                        break;
                
                    case 2:
                        System.out.println("güncellenecek müşteri isimini giriniz");
                        Scanner giri = new Scanner(System.in);
                        isim = giri.nextLine();         

                        System.out.println("müşterinin yeni isimini giriniz");
                        Scanner girii = new Scanner(System.in);
                        isim1 = girii.nextLine();         

                        sql= "UPDATE \"musteri\" SET \"musteri_ad\" = \'";
                        sql = sql + isim1 + "\' WHERE \"musteri_ad\" = \'" + isim + "\'";

                        /***** Sorgu çalıştırma *****/
                        Statement stmt1 = conn.createStatement();
                        stmt1.executeUpdate(sql);
                        System.out.print("Güncelleme başarılı");

                        /***** Bağlantı sonlandırma *****/
                        conn.close();
                        stmt1.close();
                        break;

                    case 3:
                        System.out.println("silmek istediğiniz müşterinin ismini giriniz");
                        Scanner girri = new Scanner(System.in);
                        isim = girri.nextLine();         
                        sql = "DELETE FROM \"musteri\" WHERE \"musteri_ad\" =\'" + isim + "\'";
                        
                        Statement stmt2 = conn.createStatement();
                        stmt2.executeUpdate(sql);
                        System.out.println("silme başarılı");

                        /***** Bağlantı sonlandırma *****/
                        conn.close();
                        stmt2.close();
                        break;

                    case 4:
                        String id, ad, tel, adres, yas;
                        System.out.print("müşteri id girin: ");
                        Scanner d = new Scanner(System.in);
                        id = d.nextLine();

                        System.out.print("müşteri adı girin: ");
                        Scanner scan = new Scanner(System.in);
                        ad = scan.nextLine();

                        System.out.print("müşteri telefon no girin: ");
                        Scanner t = new Scanner(System.in);
                        tel = t.nextLine();

                        System.out.print("müşteri adresi girin: ");
                        Scanner a = new Scanner(System.in);
                        adres = a.nextLine();

                        System.out.print("müşteri yaşını girin: ");
                        Scanner y = new Scanner(System.in);
                        yas = y.nextLine();

                        sql ="INSERT INTO \"musteri\"\n(\"musteri_Id\", \"musteri_ad\","
                        + " \"musteri_telno\", \"musteri_adres\", \"musteri_yas\")"
                        + "\nVALUES ('" + id + "', '" + ad +"', '" + tel + "', '" + adres + "', '" + yas + "')";

                        Statement stmt3 = conn.createStatement();
                        stmt3.executeUpdate(sql);

                        System.out.println("ekleme başarılı");

                         /***** Bağlantı sonlandırma *****/
                        conn.close();
                        stmt3.close();
                        break;
                }
            }
            catch (Exception e)
            {
                e.printStackTrace();
            }
        }
    }
}
