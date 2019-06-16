<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!-- header 영역 -->
<c:import url="/WEB-INF/views/layout/header.jsp"/>

<section class="site-hero overlay"  id="section-rooms" style="background-image: url('https://lh3.googleusercontent.com/0foCabBIpX0LvzUQ_VuNFs4V80kNR_v_wNXF-GtPS_TY3uxS2zt3ndaWQ5cE5kIAZRMmImbpobXRAbifz_CeGhit-7ngtD3MX6mrGHuvTv4vh8Qg5kzAJHEJX33X0vvfJ1RjxTDMDysu9OM5WS90KRmGDdRQwlY5rMsyjRNAvFXURQQ-ol1lZ83A6vPZmWBHJfSneoZ7Jn6e1G4K9zEOKmNEA5EoTPDO_jJJdxxyDWl3jsw30IC1P_0B9bLogifdlxF6UFczMvK-C_aScJUwmDycvX-5iz4Q8HqcEZFrlWk26XjKFzBOOF5G39915EtyLBjU4e7TLkoJwuZyLKpO51g1z09nMTGzupL5HWLfbaDC2qBBCjr8ZSNks5hOJu7hIGpVCyMlIDMzNxRUsYLQ0h52WuT_y3gsbW4lgq9e-d2ZzR8f8oesxqKNJmeDsRiqaq_wr_fesGC4Jud2cL8ZBJ8YhENv0x46cs6_WBRQx36jF6yVv2ZhVXd5SUo4Eq3WBg2osoy42dG6BAz188cC-CuzWnJFqcBdS-VktbBVmVg-vESLJgdK5OpWL-KSlDQDilTaMfbnyJpRAUDdr2_9XUFKoqEpXx5v_wJ1gH3vSWFqm00TlYJgimKIq-escFayYz77W8wO15AL2bQlZ8Dg0Qhz2OHLVULw=w1600-h900-no') ">
        <div class="container" align="center">
          	<span class="pick_kbo">
          		<a href="baseball-team-select"><img src="../../../logo/images/kbo_blank.png" width="300px" alt="kbo"></a>
          	</span>
          	&nbsp;&nbsp;:&nbsp;&nbsp;
          	<span class="pick_kleague">
          		<a href="football-team-select"><img src="../../../logo/images/kleague_blank.png" width="300px" alt="kleague"></a>
          	</span> 
          	
          	
            <!-- <div class="col-md-6 col-lg-4" data-aos="fade-up">
              <a href="#pick_baseball" class="room">
                <div class="img-wrap">
                  <img src="../../../logo/semi_KT위즈.png" width="300px" alt="kbo" class="img-fluid mb-3">
                </div>
              </a>
              <a href="#pick_football" class="room">
                <div class="img-wrap">
                  <img src="../../../logo/semi_KT위즈.png" width="300px" alt="kleague" class="img-fluid mb-3">
                </div>
              </a>
            </div> -->

          </div>
 </section>

<section class="site-hero overlay"  id="section-rooms" style="background-image: url('https://lh3.googleusercontent.com/bfspQs_H7oTXj0jtM3sJ_5oOrvaRzLDB4s5muoQm6q_uBqTDlLwpgFjE_AmuGFg0LhfqMjJUFUB_QAdeN_IvinrM3vkoIvK7s7pY5OcFVLgBEO2I6gdxkbZjX_OB25C1RrqrlbsAXzuQYk7ELdzoCPaVsaVDfVMMyD_vBQ9-Q3gc7KIwsVXPkhtHdYq-rry5op0OOB9CDklDdkIChGOU-nhFseOq5FJboirjB9DcxbL6CS9J6rqfpi5xmmEDs2epwfxzDqMrjL2D-YRrkGh7yVqELx7VXVkk4yKfApd0anPO3jOdg6WXpzDbS_ipzrIdtt0TOPcG7DrfPZMpgVUEaIV_BTQE76bRhRhyDpdUnYkZD5pHdcHEC5Cmx_VdVgd2kix1VQ7X7yC-epUSE3qi2MdabdFCKSLeBPdbhm_kM2foqJ73cPE8mJFFJQg8vMS_XhgSXGTblhtflDn7cxDdKj8oK1mebsxBwFNmMcTLVQc_VzlQhzCiwv-QFwWojgtweYMsNzmwF43DUYmJpFLN9b1lGnLLcNMCD25nfzFGgBtDCQpTloFZ0ucbtxj-0ptn3zDbUv2XgUcr1wX-6WSYpnOo1bHUAihm-VK5H6h94GWjvq3m7Z1UoCy7ScJNrnH5SLuSXlgUaVocpyY0dhTYwG2R0KzF2ay0=w1400-h933-no') ">
        <div class="container">
          <div class="row justify-content-center text-center mb-5">
            <div id="baseball-team-select" align="center">
              <br><h1 style="color: white">응원 구단 선택</h1><br>
            </div>
          </div>
          <div class="row">
            <div class="col-md-6 col-lg-4" data-aos="fade-up">
              <a href="#" class="room">
                <figure class="img-wrap">
                  <img src="../../../logo/semi_KT위즈.png" width="125px" alt="KT위즈" class="img-fluid mb-3" align="center">
                </figure>
                <div class="p-3 text-center room-info">
                  <h2 style="color: white">KT위즈</h2>
                </div>
              </a>
            </div>

            <div class="col-md-6 col-lg-4" data-aos="fade-up">
              <a href="#" class="room">
                <figure class="img-wrap">
                  <img src="../../../logo/semi_LG트윈스.png" width="125px" alt="LG트윈스" class="img-fluid mb-3">
                </figure>
                <div class="p-3 text-center room-info">
                  <h2 style="color: white">LG트윈스</h2>
                </div>
              </a>
            </div>

            <div class="col-md-6 col-lg-4" data-aos="fade-up">
              <a href="#" class="room">
                <figure class="img-wrap">
                  <img src="../../../logo/semi_NC다이노스.png" width="125px" alt="NC다이노스" class="img-fluid mb-3">
                </figure>
                <div class="p-3 text-center room-info">
                  <h2 style="color: white">NC다이노스</h2>
                </div>
              </a>
            </div>
            
            <div class="col-md-6 col-lg-4" data-aos="fade-up">
              <a href="#" class="room">
                <figure class="img-wrap">
                  <img src="../../../logo/semi_SK와이번스.png" width="125px" alt="SK와이번스" class="img-fluid mb-3">
                </figure>
                <div class="p-3 text-center room-info">
                  <h2 style="color: white">SK와이번스</h2>
                </div>
              </a>
            </div>
            
            <div class="col-md-6 col-lg-4" data-aos="fade-up">
              <a href="#" class="room">
                <figure class="img-wrap">
                  <img src="../../../logo/semi_기아타이거즈.png" width="125px" alt="기아타이거즈" class="img-fluid mb-3">
                </figure>
                <div class="p-3 text-center room-info">
                  <h2 style="color: white">기아타이거즈</h2>
                </div>
              </a>
            </div>
            
            <div class="col-md-6 col-lg-4" data-aos="fade-up">
              <a href="#" class="room">
                <figure class="img-wrap">
                  <img src="../../../logo/semi_두산베어스.png" width="125px" alt="두산베어스" class="img-fluid mb-3">
                </figure>
                <div class="p-3 text-center room-info">
                  <h2 style="color: white">두산베어스</h2>
                </div>
              </a>
            </div>
            
            <div class="col-md-6 col-lg-4" data-aos="fade-up">
              <a href="#" class="room">
                <figure class="img-wrap">
                  <img src="../../../logo/semi_롯데자이언츠.png" width="125px" alt="롯데자이언츠" class="img-fluid mb-3">
                </figure>
                <div class="p-3 text-center room-info">
                  <h2 style="color: white">롯데자이언츠</h2>
                </div>
              </a>
            </div>
            
            <div class="col-md-6 col-lg-4" data-aos="fade-up">
              <a href="#" class="room">
                <figure class="img-wrap">
                  <img src="../../../logo/semi_삼성라이온즈.png" width="125px" alt="삼성라이온즈" class="img-fluid mb-3">
                </figure>
                <div class="p-3 text-center room-info">
                  <h2 style="color: white">삼성라이온즈</h2>
                </div>
              </a>
            </div>
            
            <div class="col-md-6 col-lg-4" data-aos="fade-up">
              <a href="#" class="room">
                <figure class="img-wrap">
                  <img src="../../../logo/semi_키움히어로즈.png" width="125px" alt="키움히어로즈" class="img-fluid mb-3">
                </figure>
                <div class="p-3 text-center room-info">
                  <h2 style="color: white">키움히어로즈</h2>
                </div>
              </a>
            </div>
            
            <div class="col-md-6 col-lg-4" data-aos="fade-up">
              <a href="#" class="room">
                <figure class="img-wrap">
                  <img src="../../../logo/semi_한화이글스.png" width="125px" alt="한화이글즈" class="img-fluid mb-3">
                </figure>
                <div class="p-3 text-center room-info">
                  <h2 style="color: white">한화이글즈</h2><br>
                </div>
              </a>
            </div>
            


          </div>
        </div>
 </section>
      
      <section class="site-hero overlay" id="section-rooms" style="background-image: url('https://lh3.googleusercontent.com/WFCuaLebgpWmSC71eVa8dor9uA9upXlYqpUYjNx6PzfvTRPHUl0NM8vsna_lhB7Bqu9TNOo1grHz8slrfScQDQG3WNOlhw4yH0smQPu94O8pZFzpHuYQQrTBrzhjFiAETMV2TIdqb0amrMAjtCyVj6c1NoGOM8sS7YzAsZom2NR_8ZXepACJjf_sJpK5LuJ5rlkV5PfnQ8QZ8zOIk5oLhq7h6VURbT2Sv5nn8jniqeEh6UPi2IiT79PaiuIFmaHSdwMiDh4tKwDO8usODDLnLPDlxgdpEgQE8hgXtQGAR-2ivYMe6le8rP1OainZmcVLwcCCZtDP--Tdbsh65VRZyc3Iovj1inGxvh_60_f2eDBbFMp12UEi7I2NPmu_83bRsnDECr0mSX_TjSJxhqrc_Cygal8LUOC1gTE-j_yHYOVioZLeg9VKEUYT0w49B2I6N8X5jhYkaSQkyZFgKKBXz-Gm7wjPTkrLTOfLcDjKPxm71Q-hjVAjfCRdUltKsgcnwkz93HRerjlXkRHKzkDI-ZdUgZ1nISNA1BcF_rth7oUOetspJiEAX2aZik1Yl1kUz52WZ9tRRSrJzT-l-g7IEZp4qUiY42GOs9lyhfvxzfX8w3fRqVsKc-HRkURG0LDMjwWedGypJcXXX-jn2jr2xBqrN9ymf2WQ=w1400-h875-no')">
        <div class="container">
          <div class="row justify-content-center text-center mb-5">
            <div id="football-team-select" align="center">
              <!-- <h2 class="heading" data-aos="fade-up" id="pick_football"><br>축구보러 가자</h2>
              <p data-aos="fade-up" data-aos-delay="100">응원하는 팀을 선택해봐 :)</p> -->
              <br><h1 style="color: white" align="center">응원 구단 선택</h1><br>
            </div>
          </div>
          <div class="row">
            <div class="col-md-6 col-lg-4" data-aos="fade-up">
              <a href="#" class="room">
                <figure class="img-wrap">
                  <img src="../../../logo/semi_FC서울.png" width="125px" alt="FC서울" class="img-fluid mb-3">
                </figure>
                <div class="p-3 text-center room-info">
                  <h2 style="color: white">FC서울</h2>
                </div>
              </a>
            </div>

            <div class="col-md-6 col-lg-4" data-aos="fade-up">
              <a href="#" class="room">
                <figure class="img-wrap">
                  <img src="../../../logo/semi_수원삼성블루윙즈.png" width="125px" alt="수원삼성블루윙즈" class="img-fluid mb-3">
                </figure>
                <div class="p-3 text-center room-info">
                  <h2 style="color: white">수원삼성</h2>
                </div>
              </a>
            </div>

            <div class="col-md-6 col-lg-4" data-aos="fade-up">
              <a href="#" class="room">
                <figure class="img-wrap">
                  <img src="../../../logo/semi_경남FC.png" width="125px" alt="경남FC" class="img-fluid mb-3">
                </figure>
                <div class="p-3 text-center room-info">
                  <h2 style="color: white">경남FC</h2>
                </div>
              </a>
            </div>

            <div class="col-md-6 col-lg-4" data-aos="fade-up">
              <a href="#" class="room">
                <figure class="img-wrap">
                  <img src="../../../logo/semi_강원FC.png" width="125px" alt="강원FC" class="img-fluid mb-3">
                </figure>
                <div class="p-3 text-center room-info">
                  <h2 style="color: white">강원FC</h2>
                </div>
              </a>
            </div>

            <div class="col-md-6 col-lg-4" data-aos="fade-up">
              <a href="#" class="room">
                <figure class="img-wrap">
                  <img src="../../../logo/semi_대구FC.png" width="125px" alt="대구FC" class="img-fluid mb-3">
                </figure>
                <div class="p-3 text-center room-info">
                  <h2 style="color: white">대구FC</h2>
                </div>
              </a>
            </div>

            <div class="col-md-6 col-lg-4" data-aos="fade-up">
              <a href="#" class="room">
                <figure class="img-wrap">
                  <img src="../../../logo/semi_성남FC.png" width="125px" alt="성남FC" class="img-fluid mb-3">
                </figure>
                <div class="p-3 text-center room-info">
                  <h2 style="color: white">성남FC</h2>
                </div>
              </a>
            </div>
            
            <div class="col-md-6 col-lg-4" data-aos="fade-up">
              <a href="#" class="room">
                <figure class="img-wrap">
                  <img src="../../../logo/semi_상주FC.png" width="125px" alt="상주상무" class="img-fluid mb-3">
                </figure>
                <div class="p-3 text-center room-info">
                  <h2 style="color: white">상주상무</h2>
                </div>
              </a>
            </div>
            
            <div class="col-md-6 col-lg-4" data-aos="fade-up">
              <a href="#" class="room">
                <figure class="img-wrap">
                  <img src="../../../logo/semi_울산현대.png" width="125px" alt="울산현대" class="img-fluid mb-3">
                </figure>
                <div class="p-3 text-center room-info">
                  <h2 style="color: white">울산현대</h2>
                </div>
              </a>
            </div>
            
            <div class="col-md-6 col-lg-4" data-aos="fade-up">
              <a href="#" class="room">
                <figure class="img-wrap">
                  <img src="../../../logo/semi_인천유나이티드.png" width="125px" alt="인천유나이티드" class="img-fluid mb-3">
                </figure>
                <div class="p-3 text-center room-info">
                  <h2 style="color: white">인천유나이티드</h2>
                </div>
              </a>
            </div>
            
            <div class="col-md-6 col-lg-4" data-aos="fade-up">
              <a href="#" class="room">
                <figure class="img-wrap">
                  <img src="../../../logo/semi_전북현대모터스.png" width="125px" alt="전북현대" class="img-fluid mb-3">
                </figure>
                <div class="p-3 text-center room-info">
                  <h2 style="color: white">전북현대</h2>
                </div>
              </a>
            </div>
            
            <div class="col-md-6 col-lg-4" data-aos="fade-up">
              <a href="#" class="room">
                <figure class="img-wrap">
                  <img src="../../../logo/semi_제주유나이티드.png" width="125px" alt="제주유나이티드" class="img-fluid mb-3">
                </figure>
                <div class="p-3 text-center room-info">
                  <h2 style="color: white">제주유나이티드</h2>
                </div>
              </a>
            </div>
            
            <div class="col-md-6 col-lg-4" data-aos="fade-up">
              <a href="#" class="room">
                <figure class="img-wrap">
                  <img src="../../../logo/semi_포항스틸러스.png" width="125px" alt="포항스틸러스" class="img-fluid mb-3">
                </figure>
                <div class="p-3 text-center room-info">
                  <h2 style="color: white">포항스틸러스</h2><br>
                </div>
              </a>
            </div>


          </div>
        </div>
      </section>
      
<!-- footer 영역 -->
<c:import url="/WEB-INF/views/layout/footer.jsp"/>