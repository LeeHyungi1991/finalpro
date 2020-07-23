<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <!DOCTYPE html>
<html dir="ltr" lang="ko">
 <%@include file="../header.jsp" %>

<body class="stretched">
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=4ebe4b5dd8c56619a4b9036bc01619aa&libraries=services"></script>
    <!-- Document Wrapper
    ============================================= -->
    <div id="wrapper" class="clearfix">

       

        <!-- Page Title
        ============================================= -->
        <section id="page-title" class="page-title-dark">

            <div class="container clearfix">
                <h1>StarTrip�� ��õ�ϴ� Package ����!</h1>
                <span>����! ����! ��Ƽ��Ƽ!</span>
             
            </div>

        </section><!-- #page-title end -->

        <!-- Content
        ============================================= -->
        <section id="content">

            <div class="content-wrap">

                <div id="events" class="single-event header-stick footer-stick clearfix">
<!-- ��Ű�� 1��  -->
                    <div class="event entry-image parallax nobottommargin" style="background-image: url('http://placehold.it/2000x1333'); height:600px" data-stellar-background-ratio="0.3">
                        <div class="entry-overlay-meta">
                            <h2><a href="goHotelDetail?num=2">[���� �Ŷ�ȣ��][����+�ö���+���� �Ŷ�ȣ��]</a></h2>
                            <ul class="iconlist">
                                <li><i class="icon-calendar3"></i> <strong>���� : </strong> 1�� 2��</li>
                                <li><i class="icon-time"></i> <strong>�� �̵� �ð� : </strong> 12:00 ~ 20:00</li>
                                <li><i class="icon-map-marker2"></i> <strong>��ġ : </strong> ���ֵ� ��������</li>
                                <li><i class="icon-dollar"></i> <strong>���� ��� : </strong> 157,850��</li>
                            </ul>
                            <a href="#" class="btn button btn-block button-large">RSVP</a>
                        </div>
                        <div class="entry-overlay">
                            <div id="event-countdown1" class="countdown"></div>
                        </div>
                        <script>
                            jQuery(document).ready( function($){
                                var eventStartDate1 = new Date(2020, 06, 25);
                                $('#event-countdown1').countdown({until: eventStartDate1});
                            });
                            
                        </script>
                    </div>
                    
		  			<div class="section noborder nobottommargin notopmargin">
                    	<div class="container clearfix">
                        	<div class="heading-block center nobottommargin">
                            	<h3>���ֵ� ��Ű�� 1��</h3>
                            	<span>��Ű�� ��¼�� ��¼�� ��������</span>                       
                            </div>
                    	</div>
           	  		</div>                    
					
					<div class="section noborder nobottommargin notopmargin">
                    	<div class="container clearfix">
                        	<div class="heading-block center nobottommargin">
                            	<h3>��ġ ��ƺ���</h3>
                            	<!-- ���� start -->
  								<div id="map" style="width: 760px; height: 400px;"></div>
 
  
    							
  								
 								<!-- ���� end -->                 
                            	     
                            </div>
                    	</div>
           	  		</div>    
           	  		
           	  		<div class="section noborder nobottommargin notopmargin">
                    	<div class="container clearfix">
                        	<div class="heading-block center nobottommargin">
                            	<h3>���� ���</h3>
                            	<span>��Ű�� ��¼�� ��¼�� ���󼣷�</span>                       
                            </div>
                    	</div>
           	  		</div> 
<!-- ��Ű�� 2��  -->           	  		
                     <div class="event entry-image parallax overlay-left nobottommargin" style="background-image: url('http://placehold.it/2000x1333'); height:600px" data-stellar-background-ratio="0.3">
                        <div class="entry-overlay-meta">
                            <h2><a href="#">Coffee &amp; Tea Festival</a></h2>
                            <ul class="iconlist">
                                <li><i class="icon-calendar3"></i> <strong>Date:</strong> 11th July, 2015</li>
                                <li><i class="icon-time"></i> <strong>Timing:</strong> 2pm - 4pm</li>
                                <li><i class="icon-map-marker2"></i> <strong>Location:</strong> New York, NY</li>
                                <li><i class="icon-dollar"></i> <strong>29.00</strong></li>
                            </ul>
                            <a href="#" class="btn button btn-block button-large">RSVP</a>
                        </div>
                        <div class="entry-overlay">
                            <div id="event-countdown2" class="countdown"></div>
                        </div>
                        <script>
                            jQuery(document).ready( function($){
                                var eventStartDate2 = new Date(2020, 06, 25);
                                $('#event-countdown2').countdown({until: eventStartDate2});
                            });
                        </script>
                    </div>
                    
		  			<div class="section noborder nobottommargin notopmargin">
                    	<div class="container clearfix">
                        	<div class="heading-block center nobottommargin">
                            	<h3>���ֵ� ��Ű�� 1��</h3>
                            	<span>��Ű�� ��¼�� ��¼�� ��������</span>                       
                            </div>
                    	</div>
           	  		</div>                    
					
					<div class="section noborder nobottommargin notopmargin">
                    	<div class="container clearfix">
                        	<div class="heading-block center nobottommargin">
                            	<h3>��ġ ��ƺ���</h3>
                            	<!-- ���� start -->
  								<div id="map" style="width: 760px; height: 400px;"></div>
 
  
    							
  								
 								<!-- ���� end -->                 
                            	     
                            </div>
                    	</div>
           	  		</div>    
           	  		
           	  		<div class="section noborder nobottommargin notopmargin">
                    	<div class="container clearfix">
                        	<div class="heading-block center nobottommargin">
                            	<h3>���� ���</h3>
                            	<span>��Ű�� ��¼�� ��¼�� ���󼣷�</span>                       
                            </div>
                    	</div>
           	  		</div>     
<!-- ��Ű�� 3��  -->
                    <div class="event entry-image parallax nobottommargin" style="background-image: url('http://placehold.it/2000x1333'); height:600px" data-stellar-background-ratio="0.3">
                        <div class="entry-overlay-meta">
                            <h2><a href="#">Just Food Conference</a></h2>
                            <ul class="iconlist">
                                <li><i class="icon-calendar3"></i> <strong>Date:</strong> 28th July, 2015</li>
                                <li><i class="icon-time"></i> <strong>Timing:</strong> 2pm - 4pm</li>
                                <li><i class="icon-map-marker2"></i> <strong>Location:</strong> New York, NY</li>
                                <li><i class="icon-dollar"></i> <strong>29.00</strong></li>
                            </ul>
                            <a href="#" class="btn button btn-block button-large">RSVP</a>
                        </div>
                        <div class="entry-overlay">
                            <div id="event-countdown3" class="countdown"></div>
                        </div>
                        <script>
                            jQuery(document).ready( function($){
                                var eventStartDate3 = new Date(2020, 06, 25);
                                $('#event-countdown3').countdown({until: eventStartDate3});
                            });
                        </script>
                    </div>
                    
					<div class="section noborder nobottommargin notopmargin">
                    	<div class="container clearfix">
                        	<div class="heading-block center nobottommargin">
                            	<h3>���ֵ� ��Ű�� 1��</h3>
                            	<span>��Ű�� ��¼�� ��¼�� ��������</span>                       
                            </div>
                    	</div>
           	  		</div>                    
					
					<div class="section noborder nobottommargin notopmargin">
                    	<div class="container clearfix">
                        	<div class="heading-block center nobottommargin">
                            	<h3>��ġ ��ƺ���</h3>
                            	<!-- ���� start -->
  								<div id="map" style="width: 760px; height: 400px;"></div>
 
  
    							
  								
 								<!-- ���� end -->                 
                            	     
                            </div>
                    	</div>
           	  		</div>    
           	  		
           	  		<div class="section noborder nobottommargin notopmargin">
                    	<div class="container clearfix">
                        	<div class="heading-block center nobottommargin">
                            	<h3>���� ���</h3>
                            	<span>��Ű�� ��¼�� ��¼�� ���󼣷�</span>                       
                            </div>
                    	</div>
           	  		</div>                  
<!-- ��Ű�� 4��  -->
                    <div class="event entry-image parallax overlay-left nobottommargin" style="background-image: url('http://placehold.it/2000x1333'); height:600px" data-stellar-background-ratio="0.3">
                        <div class="entry-overlay-meta">
                            <h2><a href="#">Coffee &amp; Tea Festival</a></h2>
                            <ul class="iconlist">
                                <li><i class="icon-calendar3"></i> <strong>Date:</strong> 11th July, 2015</li>
                                <li><i class="icon-time"></i> <strong>Timing:</strong> 2pm - 4pm</li>
                                <li><i class="icon-map-marker2"></i> <strong>Location:</strong> New York, NY</li>
                                <li><i class="icon-dollar"></i> <strong>29.00</strong></li>
                            </ul>
                            <a href="#" class="btn button btn-block button-large">RSVP</a>
                        </div>
                        <div class="entry-overlay">
                            <div id="event-countdown4" class="countdown"></div>
                        </div>
                        <script>
                            jQuery(document).ready( function($){
                                var eventStartDate4 = new Date(2020, 06, 25);
                                $('#event-countdown4').countdown({until: eventStartDate4});
                            });
                        </script>
                    </div>
                    
		  			<div class="section noborder nobottommargin notopmargin">
                    	<div class="container clearfix">
                        	<div class="heading-block center nobottommargin">
                            	<h3>���ֵ� ��Ű�� 1��</h3>
                            	<span>��Ű�� ��¼�� ��¼�� ��������</span>                       
                            </div>
                    	</div>
           	  		</div>                    
					
					<div class="section noborder nobottommargin notopmargin">
                    	<div class="container clearfix">
                        	<div class="heading-block center nobottommargin">
                            	<h3>��ġ ��ƺ���</h3>
                            	<!-- ���� start -->
  								<div id="map" style="width: 760px; height: 400px;"></div>
 
  
    							
  								
 								<!-- ���� end -->                 
                            	     
                            </div>
                    	</div>
           	  		</div>    
           	  		
           	  		<div class="section noborder nobottommargin notopmargin">
                    	<div class="container clearfix">
                        	<div class="heading-block center nobottommargin">
                            	<h3>���� ���</h3>
                            	<span>��Ű�� ��¼�� ��¼�� ���󼣷�</span>                       
                            </div>
                    	</div>
           	  		</div> 
<!-- ��Ű�� 5��  -->          	  		              
						<div class="event entry-image parallax nobottommargin" style="background-image: url('http://placehold.it/2000x1333'); height:600px" data-stellar-background-ratio="0.3">
                        <div class="entry-overlay-meta">
                            <h2><a href="#">Just Food Conference</a></h2>
                            <ul class="iconlist">
                                <li><i class="icon-calendar3"></i> <strong>Date:</strong> 28th July, 2015</li>
                                <li><i class="icon-time"></i> <strong>Timing:</strong> 2pm - 4pm</li>
                                <li><i class="icon-map-marker2"></i> <strong>Location:</strong> New York, NY</li>
                                <li><i class="icon-dollar"></i> <strong>29.00</strong></li>
                            </ul>
                            <a href="#" class="btn button btn-block button-large">RSVP</a>
                        </div>
                        <div class="entry-overlay">
                            <div id="event-countdown5" class="countdown"></div>
                        </div>
                        <script>
                            jQuery(document).ready( function($){
                                var eventStartDate5 = new Date(2020, 06, 25);
                                $('#event-countdown5').countdown({until: eventStartDate5});
                            });
                        </script>
                    </div>
                    
		  			<div class="section noborder nobottommargin notopmargin">
                    	<div class="container clearfix">
                        	<div class="heading-block center nobottommargin">
                            	<h3>���ֵ� ��Ű�� 1��</h3>
                            	<span>��Ű�� ��¼�� ��¼�� ��������</span>                       
                            </div>
                    	</div>
           	  		</div>                    
					
					<div class="section noborder nobottommargin notopmargin">
                    	<div class="container clearfix">
                        	<div class="heading-block center nobottommargin">
                            	<h3>��ġ ��ƺ���</h3>
                            	<!-- ���� start -->
  								<div id="map" style="width: 760px; height: 400px;"></div>
 
  
    							
  								
 								<!-- ���� end -->                 
                            	     
                            </div>
                    	</div>
           	  		</div>    
           	  		
           	  		<div class="section noborder nobottommargin notopmargin">
                    	<div class="container clearfix">
                        	<div class="heading-block center nobottommargin">
                            	<h3>���� ���</h3>
                            	<span>��Ű�� ��¼�� ��¼�� ���󼣷�</span>                       
                            </div>
                    	</div>
           	  		</div>              

                </div>

            </div>

        </section><!-- #content end -->

      

    </div><!-- #wrapper end -->

    <!-- Go To Top
    ============================================= -->
    <div id="gotoTop" class="icon-angle-up"></div>

    <!-- Footer Scripts
    ============================================= -->
    <script type="text/javascript" src="resources/js/functions.js"></script>
	
</body>

</html>
<%@include file="../footer.jsp"%>

