# Arduino Kalman Filter Trial  		 	 	 	 	 	
Kalman Filtresi, durum uzayı modeli ile gösterilen bir dinamik sistemde, modelin önceki bilgileriyle birlikte giriş ve çıkış bilgilerinden sistemin durumlarını tahmin edilebilen filtredir. Macar asıllı Amerikan matematiksel sistem teoristi Rudolf Kalman tarafından bulunmuştur.

Kalman filtresinin basit bir uygulaması olarak Arduino ve potansiyometre ile deneyi gerçekleştirilecek. Deneyde sistemden alınan sinyal için potansiyometre kullanılmaktadır.

![]()

Şekildeki devremiz Arduino Uno kullanılarak kartın A0 analog bacağına bağlı potansiyometre ile anlık değişebilen değerlerin oluşturulması için oluşturuldu.

Oluşturulan devreyle Arduino pot ile okunan değerleri seri iletişim portu üzerinden MATLAB uygulamasına gönderecek.

---------------------------------------

MATLAB uygulaması kullanılarak Arduino seri iletişimi dinlenerek gelen değerler, yazılan MATLAB koduyla kalman filtreden geçirilecektir. Daha sonrasında hesaplanan değerler ve nominal değerler kullanılarak anlık olarak grafik çizdirişi gerçekleştirilecektir.
Çizdirme işleminde grafik aralığının belirlenmesinde “for” döngüsü kullanılmıştır. İstenirse for içerisindeki “i” değeri değiştirilerek daha fazla örnek alınabilir.

Programın işlenmesiyle beraber alınan grafik örneği;

![]()
