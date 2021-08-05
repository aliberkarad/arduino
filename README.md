# Arduino Kalman Filter Trial  		 	 	 	 	 	
>Kalman Filtresi, durum uzayı modeli ile gösterilen bir dinamik sistemde, modelin önceki bilgileriyle birlikte giriş ve çıkış bilgilerinden sistemin durumlarını tahmin edilebilen filtredir. Macar asıllı Amerikan matematiksel sistem teoristi Rudolf Kalman tarafından bulunmuştur.

Kalman filtresinin basit bir uygulaması olarak Arduino ve potansiyometre ile deneyi gerçekleştirilecek. Deneyde sistemden alınan sinyal için potansiyometre kullanılmaktadır.

![image](https://user-images.githubusercontent.com/43043692/128352265-a3aeb179-a977-4ec0-b4cd-d0494c091b68.png)

Şekildeki devremiz Arduino Uno kullanılarak kartın A0 analog bacağına bağlı potansiyometre ile anlık değişebilen değerlerin oluşturulması için oluşturuldu.
Oluşturulan [kod](uno-pot-control.ino) sayesinde Arduino, pot ile okunan değerleri seri iletişim portu ( `Serial.print()` ) üzerinden MATLAB uygulamasına gönderecek.

---------------------------------------

MATLAB uygulaması kullanılarak Arduino seri iletişimi dinlenerek gelen değerler, yazılan [MATLAB koduyla](kalman-matlab.m) kalman filtreden geçirilecektir. Daha sonrasında hesaplanan değerler ve nominal değerler kullanılarak anlık olarak grafik çizdirişi gerçekleştirilecektir.
Çizdirme işleminde grafik aralığının belirlenmesinde `for` döngüsü kullanılmıştır. İstenirse `for` içerisindeki `i` değeri değiştirilerek daha fazla örnek alınabilir.

__Programın işlenmesiyle beraber alınan grafik örneği;__

![image](https://user-images.githubusercontent.com/43043692/128352373-09dd34cd-87e0-4c2b-b283-29f6920ed6c7.png)
