<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!-- header 영역 -->
<c:import url="/WEB-INF/views/layout/header.jsp"/>

<section class="site-hero overlay"  id="section-rooms" style="background-image: url('https://lh3.googleusercontent.com/I51SwxvZYmwCYQCiuL8ur-hCfLoXwfcGKAwaLa_4RrlW4-OP1RE-mmexcAAUj7OdyzkJhV-YoRVFmwyGrOGt_9N3JKOFYskfHYeSWrNAT-p67Y3gG73nc8dPSR0A1ytGOoJC7y5RYJVNTDon974IOfSwB7fX-6_Wke8mquC0BrcvqjhbxwCnRCTAHzXK8XQILqZVivcN45ltv3AK8J0y49eGTQaBKJ7pffIuewp5Mh4ummPRuBdvmmDYAudsgkCHSwECV0Ug-JxkesU8AqRv00UZP1btZi4GZTa-5xSRYwf7SumfpL-RFpB9U2wnrjh4-t9TZSacRvnUYdqehSvq64tyV361vqNJbfpZYNUgAmqluV5PUh3fB_Vh0DC45ehIINWmZq10lmzJOzCVVWRhuCPr3pwCx9QbQburcauR-ZQ_pCenSGSGonvN2N14_QZdO1NslNozrE_Fk_CQrT6el86APk_tZNaLs28JZdUBHLTb5xY-7EQQni9p6TEwZJxPH_bq2npiFDlNKC2QoQNo3CPiV3YPWKekrZZ9GuminTKALOpcTtsuJY3MsfdQOzmtxfvyNJ4gIM6fIkU2gubPxnTeLYqgWHkMPiwWdRcn6JACHhMAUB8xCyIYJVI0Q7WoudLTYeUWnH-b04TS6X3G8iaFJK3Ifa72=w1200-h800-no') ">
        <div class="container">
          <div class="row justify-content-center text-center mb-5">
            <div class="col-md-7" id="baseball-team-select">
              <h2 class="heading" data-aos="fade-up"><br>야구보러 가자</h2>
              <p data-aos="fade-up" data-aos-delay="100">응원하는 팀을 선택해봐 :)</p>
            </div>
          </div>
          <div class="row">
            <div class="col-md-6 col-lg-4" data-aos="fade-up">
              <a href="#" class="room">
                <figure class="img-wrap">
                  <img src="../../../logo/semi_KT위즈.png" width="150px" alt="KT위즈" class="img-fluid mb-3">
                </figure>
                <div class="p-3 text-center room-info">
                  <h2 style="color: white">KT위즈</h2>
                </div>
              </a>
            </div>

            <div class="col-md-6 col-lg-4" data-aos="fade-up">
              <a href="#" class="room">
                <figure class="img-wrap">
                  <img src="../../../logo/semi_LG트윈스.png" width="150px" alt="LG트윈스" class="img-fluid mb-3">
                </figure>
                <div class="p-3 text-center room-info">
                  <h2 style="color: white">LG트윈스</h2>
                </div>
              </a>
            </div>

            <div class="col-md-6 col-lg-4" data-aos="fade-up">
              <a href="#" class="room">
                <figure class="img-wrap">
                  <img src="../../../logo/semi_NC다이노스.png" width="150px" alt="NC다이노스" class="img-fluid mb-3">
                </figure>
                <div class="p-3 text-center room-info">
                  <h2 style="color: white">NC다이노스</h2>
                </div>
              </a>
            </div>
            
            <div class="col-md-6 col-lg-4" data-aos="fade-up">
              <a href="#" class="room">
                <figure class="img-wrap">
                  <img src="../../../logo/semi_SK와이번스.png" width="150px" alt="SK와이번스" class="img-fluid mb-3">
                </figure>
                <div class="p-3 text-center room-info">
                  <h2 style="color: white">SK와이번스</h2>
                </div>
              </a>
            </div>
            
            <div class="col-md-6 col-lg-4" data-aos="fade-up">
              <a href="#" class="room">
                <figure class="img-wrap">
                  <img src="../../../logo/semi_수원삼성블루윙즈.png" width="150px" alt="수원삼성블루윙즈" class="img-fluid mb-3">
                </figure>
                <div class="p-3 text-center room-info">
                  <h2 style="color: white">수원삼성</h2>
                </div>
              </a>
            </div>
            
            <div class="col-md-6 col-lg-4" data-aos="fade-up">
              <a href="#" class="room">
                <figure class="img-wrap">
                  <img src="../../../logo/semi_기아타이거즈.png" width="150px" alt="기아타이거즈" class="img-fluid mb-3">
                </figure>
                <div class="p-3 text-center room-info">
                  <h2 style="color: white">기아타이거즈</h2>
                </div>
              </a>
            </div>
            
            <div class="col-md-6 col-lg-4" data-aos="fade-up">
              <a href="#" class="room">
                <figure class="img-wrap">
                  <img src="../../../logo/semi_두산베어스.png" width="150px" alt="두산베어스" class="img-fluid mb-3">
                </figure>
                <div class="p-3 text-center room-info">
                  <h2 style="color: white">두산베어스</h2>
                </div>
              </a>
            </div>
            
            <div class="col-md-6 col-lg-4" data-aos="fade-up">
              <a href="#" class="room">
                <figure class="img-wrap">
                  <img src="../../../logo/semi_롯데자이언츠.png" width="150px" alt="롯데자이언츠" class="img-fluid mb-3">
                </figure>
                <div class="p-3 text-center room-info">
                  <h2 style="color: white">롯데자이언츠</h2>
                </div>
              </a>
            </div>
            
            <div class="col-md-6 col-lg-4" data-aos="fade-up">
              <a href="#" class="room">
                <figure class="img-wrap">
                  <img src="../../../logo/semi_삼성라이온즈.png" width="150px" alt="삼성라이온즈" class="img-fluid mb-3">
                </figure>
                <div class="p-3 text-center room-info">
                  <h2 style="color: white">삼성라이온즈</h2>
                </div>
              </a>
            </div>
            
            <div class="col-md-6 col-lg-4" data-aos="fade-up">
              <a href="#" class="room">
                <figure class="img-wrap">
                  <img src="../../../logo/semi_키움히어로즈.png" width="150px" alt="키움히어로즈" class="img-fluid mb-3">
                </figure>
                <div class="p-3 text-center room-info">
                  <h2 style="color: white">키움히어로즈</h2>
                </div>
              </a>
            </div>
            
            <div class="col-md-6 col-lg-4" data-aos="fade-up">
              <a href="#" class="room">
                <figure class="img-wrap">
                  <img src="../../../logo/semi_한화이글즈.png" width="150px" alt="한화이글즈" class="img-fluid mb-3">
                </figure>
                <div class="p-3 text-center room-info">
                  <h2 style="color: white">한화이글즈</h2>
                </div>
              </a>
            </div>
            


          </div>
        </div>
      </section>
      
      <section class="site-hero overlay" id="section-rooms" style="background-image: url('https://lh3.googleusercontent.com/-F_jpPr72ZzrNNmSYXfuw3A8oJE8coMxl-VrEe1gOiozq01aGHSVBHbWBt231xqQmEZtVgz1wQ1IE7NkZF96TI4dPDsiTBA-9-x_-7osfB6I-quDokSuhjc4GE64ncFntO225x0qi_ol4SbTODJH3CSBgiuMUNiW5vB7EllhDGxduc_Czjv_bHle2WCgmcKhJ2I2nqtNW3AD1CrKCXAFgCU3OMpyYwqTl6rm6Gz9q5OGwnWHmaG_vakGf9FLo7q2XinCw3XI1dz3TTLiw4YD6RXSzXIs45RLcod8THI9zxaOs6PeypROoti_L5mexh3JFkxjcRhTBBr8zjQb3bWrZj034VdOkyTXkHhMzFQyOi-zl_vnrilEy0F8vbohnCSewAGzr6SJhUcHO3OIKM8fhrYguiPy7YNCekrPzu9NHpxHcFVIZDBS14aBnSM-0gY_KuPOn3ZK0lTPyF1fvMqQcQ8IqQf-fJj4Z5lU0Dbq6cLxSVhbM6-vFiNxGeksm4JoRLst-bj1VgXS9BG68Gt85Ws54Gi-VNtzloZtHM2r-N0_JINxU81h06l12sbYZVzcb8XXrQXptsJq3hdMGTMD3OnWJZfbm0fCluqsDndhSuMT-9Fs9KtNXKKmvmlshCMEUVsDkwwPZwwc6sneCQZHa5IyAYgumGZK=w2560-h1600-no')">
        <div class="container">
          <div class="row justify-content-center text-center mb-5">
            <div class="col-md-7" id="football-team-select">
              <h2 class="heading" data-aos="fade-up"><br>축구보러 가자</h2>
              <p data-aos="fade-up" data-aos-delay="100">응원하는 팀을 선택해봐 :)</p>
            </div>
          </div>
          <div class="row">
            <div class="col-md-6 col-lg-4" data-aos="fade-up">
              <a href="#" class="room">
                <figure class="img-wrap">
                  <img src="../../../logo/semi_FC서울.png" width="150px" alt="FC서울" class="img-fluid mb-3">
                </figure>
                <div class="p-3 text-center room-info">
                  <h2 style="color: white">FC서울</h2>
                </div>
              </a>
            </div>

            <div class="col-md-6 col-lg-4" data-aos="fade-up">
              <a href="#" class="room">
                <figure class="img-wrap">
                  <img src="../../../logo/semi_수원삼성블루윙즈.png" width="150px" alt="수원삼성블루윙즈" class="img-fluid mb-3">
                </figure>
                <div class="p-3 text-center room-info">
                  <h2 style="color: white">수원삼성</h2>
                </div>
              </a>
            </div>

            <div class="col-md-6 col-lg-4" data-aos="fade-up">
              <a href="#" class="room">
                <figure class="img-wrap">
                  <img src="../../../logo/semi_경남FC.png" width="150px" alt="경남FC" class="img-fluid mb-3">
                </figure>
                <div class="p-3 text-center room-info">
                  <h2 style="color: white">경남FC</h2>
                </div>
              </a>
            </div>

            <div class="col-md-6 col-lg-4" data-aos="fade-up">
              <a href="#" class="room">
                <figure class="img-wrap">
                  <img src="../../../logo/semi_강원FC.png" width="150px" alt="강원FC" class="img-fluid mb-3">
                </figure>
                <div class="p-3 text-center room-info">
                  <h2 style="color: white">강원FC</h2>
                </div>
              </a>
            </div>

            <div class="col-md-6 col-lg-4" data-aos="fade-up">
              <a href="#" class="room">
                <figure class="img-wrap">
                  <img src="../../../logo/semi_대구FC.png" width="150px" alt="대구FC" class="img-fluid mb-3">
                </figure>
                <div class="p-3 text-center room-info">
                  <h2 style="color: white">대구FC</h2>
                </div>
              </a>
            </div>

            <div class="col-md-6 col-lg-4" data-aos="fade-up">
              <a href="#" class="room">
                <figure class="img-wrap">
                  <img src="../../../logo/semi_성남FC.png" width="150px" alt="성남FC" class="img-fluid mb-3">
                </figure>
                <div class="p-3 text-center room-info">
                  <h2 style="color: white">성남FC</h2>
                </div>
              </a>
            </div>
            
            <div class="col-md-6 col-lg-4" data-aos="fade-up">
              <a href="#" class="room">
                <figure class="img-wrap">
                  <img src="../../../logo/semi_상주FC.png" width="150px" alt="상주상무" class="img-fluid mb-3">
                </figure>
                <div class="p-3 text-center room-info">
                  <h2 style="color: white">상주상무</h2>
                </div>
              </a>
            </div>
            
            <div class="col-md-6 col-lg-4" data-aos="fade-up">
              <a href="#" class="room">
                <figure class="img-wrap">
                  <img src="../../../logo/semi_울산현대.png" width="150px" alt="울산현대" class="img-fluid mb-3">
                </figure>
                <div class="p-3 text-center room-info">
                  <h2 style="color: white">울산현대</h2>
                </div>
              </a>
            </div>
            
            <div class="col-md-6 col-lg-4" data-aos="fade-up">
              <a href="#" class="room">
                <figure class="img-wrap">
                  <img src="../../../logo/semi_인천유나이티드.png" width="150px" alt="인천유나이티드" class="img-fluid mb-3">
                </figure>
                <div class="p-3 text-center room-info">
                  <h2 style="color: white">인천유나이티드</h2>
                </div>
              </a>
            </div>
            
            <div class="col-md-6 col-lg-4" data-aos="fade-up">
              <a href="#" class="room">
                <figure class="img-wrap">
                  <img src="../../../logo/semi_전북현대모터스.png" width="150px" alt="전북현대" class="img-fluid mb-3">
                </figure>
                <div class="p-3 text-center room-info">
                  <h2 style="color: white">전북현대</h2>
                </div>
              </a>
            </div>
            
            <div class="col-md-6 col-lg-4" data-aos="fade-up">
              <a href="#" class="room">
                <figure class="img-wrap">
                  <img src="../../../logo/semi_제주유나이티드.png" width="150px" alt="제주유나이티드" class="img-fluid mb-3">
                </figure>
                <div class="p-3 text-center room-info">
                  <h2 style="color: white">제주유나이티드</h2>
                </div>
              </a>
            </div>
            
            <div class="col-md-6 col-lg-4" data-aos="fade-up">
              <a href="#" class="room">
                <figure class="img-wrap">
                  <img src="../../../logo/semi_포항스틸러스.png" width="150px" alt="포항스틸러스" class="img-fluid mb-3">
                </figure>
                <div class="p-3 text-center room-info">
                  <h2 style="color: white">포항스틸러스</h2>
                </div>
              </a>
            </div>


          </div>
        </div>
      </section>
      
<!-- footer 영역 -->
<c:import url="/WEB-INF/views/layout/footer.jsp"/>