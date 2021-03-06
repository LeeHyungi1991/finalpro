package mvc.model;

import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.List;

import javax.servlet.ServletRequest;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import mvc.dao.HotelDao;
import mvc.dao.LocalDao;
import mvc.dao.ReviewDao;
import mvc.service.HotelService;
import mvc.vo.HotelDetailVO;
import mvc.vo.HotelRadioVO;
import mvc.vo.HotelReserve2VO;
import mvc.vo.HotelReviewVO;
import mvc.vo.HotelRoomImgVO;
import mvc.vo.HotelTotalVO;
import mvc.vo.LocalHotelVO;
import mvc.vo.PageVO;

@Controller
public class HotelController {

   @Autowired
   private HotelDao hotelDao;
   @Autowired
   private LocalDao localDao;

   // 호텔예약 메인페이지로 이동
   @RequestMapping(value = "/goHotelMain")
   public String goHotel(Model model) {
      List<HotelTotalVO> list = localDao.localtotalList();
      List<HotelReviewVO> reviewlist = localDao.localreviewList();
      model.addAttribute("list", list);
      model.addAttribute("reviewlist", reviewlist);
      
      return "hotel/hotelMain";
   }
   
   @RequestMapping(value = "/gokakaopay", method = { RequestMethod.GET, RequestMethod.POST })
   public String gokakao(HttpSession session,Model model,int hrnum) {
            
      String id = (String) session.getAttribute("id");
         HotelReserve2VO vo = hotelDao.resList(hrnum);
         vo.setId(id);// 세션에서 받은 아이디값
         vo.setHrnum(hrnum);// hotelIn-->hotel_success(인자값은 "list")-->goHotelSuccess("list"의 hrnum을 가져온다.)         
         SimpleDateFormat formatter = new SimpleDateFormat("MM/dd/yyyy");
         Date beginDate;
          Date endDate;
         
         try {
            beginDate = formatter.parse(vo.getCheckin());
            endDate = formatter.parse(vo.getCheckout());
            long diff = endDate.getTime() - beginDate.getTime();
             long diffDays = diff / (24 * 60 * 60 * 1000);
             String difday = Long.toString(diffDays);
             int day = Integer.parseInt(difday);
             vo.setPay(vo.getPay()*day);
         } catch (ParseException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
         }
         
         System.out.println(vo.getId());
         System.out.println(vo.getImg());
         
         model.addAttribute("list", vo);
      return "member/kakaopay";
   }

   // 호텔예약 예약페이지로 이동
   // num으로 넘어오는 값은 예약하는 hotel테이블의 num컬럼과의 foreign값이다.
   // num으로 넘어오는 값으로 호텔의 방종류와 가격을 구분한다.
   @RequestMapping(value = "/goHotelReserve", method = { RequestMethod.GET, RequestMethod.POST })
   public String goHotelReserve(int num, Model model, String title) {
      model.addAttribute("title", title);
      model.addAttribute("num", num);
      List<HotelRadioVO> list = hotelDao.hotelRadioList(num);
      model.addAttribute("list", list);
      HotelDetailVO vo = hotelDao.dlist(num);
      model.addAttribute("vo", vo);
      
      String[] arr1 = vo.getFoodplace().split(", ");
      List<String> detail = new ArrayList<String>();
      for (String string : arr1) {
         detail.add(string);
      }

      model.addAttribute("detail",detail);
      
      return "hotel/hotel_Reserve";
   }

   // 호텔예약에 성공했을 때 뜨는 페이지에서 상세보기로 이동함
   // 파라미터로 받는 hrnum은 호텔이 예약 되었을 때 생성된 hotel_reserve_seq.nextVal값으로써 각 행의 고유값이다.
   @RequestMapping(value = "/goHotelSuccess", method = { RequestMethod.GET, RequestMethod.POST })
   public String goMypage(HttpSession session,Model model,int hrnum) {
      
      String id = (String) session.getAttribute("id");
      HotelReserve2VO vo = hotelDao.resList(hrnum);
      vo.setId(id);// 세션에서 받은 아이디값
      vo.setHrnum(hrnum);// hotelIn-->hotel_success(인자값은 "list")-->goHotelSuccess("list"의 hrnum을 가져온다.)
      
      SimpleDateFormat formatter = new SimpleDateFormat("MM/dd/yyyy");
      Date beginDate;
       Date endDate;
      
      try {
         beginDate = formatter.parse(vo.getCheckin());
         endDate = formatter.parse(vo.getCheckout());
         long diff = endDate.getTime() - beginDate.getTime();
          long diffDays = diff / (24 * 60 * 60 * 1000);
          String difday = Long.toString(diffDays);
          int day = Integer.parseInt(difday);
          vo.setPay(vo.getPay()*day);
      } catch (ParseException e) {
         // TODO Auto-generated catch block
         e.printStackTrace();
      }
      
      System.out.println(vo.getId());
      System.out.println(vo.getImg());
      
      model.addAttribute("list", vo);
      return "hotel/hotel_successDetail";
   }

   // 호텔의 상세정보 페이지를 띄움
   @RequestMapping(value = "/goHotelDetail" , method = { RequestMethod.GET, RequestMethod.POST })
   public String goHotelDetail(Model model,int num) {
      
      HotelDetailVO vo = hotelDao.dlist(num);

      String[] arr1 = vo.getFoodplace().split(", ");
      List<String> detail = new ArrayList<String>();
      for (String string : arr1) {
         detail.add(string);
      }

      model.addAttribute("detail",detail);
      model.addAttribute("vo", vo);
      List<HotelRadioVO> rlist = hotelDao.hotelRadioList(num);
      model.addAttribute("rlist",rlist);
      //호텔 객실 종류와 사진을 넘기는 역할
      List<HotelRoomImgVO> imglist = hotelDao.imgList(num);
      model.addAttribute("imglist",imglist);
      
      
      return "hotel/hotelDetail";
   }
   
   // 호텔 예약 정보를 인서트함
   @RequestMapping(value = "/hotelIn", method = RequestMethod.POST)
   public String addMember(Model model,HotelReserve2VO vo)  {
      System.out.println(vo.getRoomtype()+"hi");
      hotelDao.addHotel(vo);
      
      
      SimpleDateFormat formatter = new SimpleDateFormat("MM/dd/yyyy");

       

       Date beginDate;
       Date endDate;
       HotelReserve2VO data = hotelDao.resList3();
      try {
         beginDate = formatter.parse(vo.getCheckin());
         endDate = formatter.parse(vo.getCheckout());
         long diff = endDate.getTime() - beginDate.getTime();
          long diffDays = diff / (24 * 60 * 60 * 1000);
          String difday = Long.toString(diffDays);
          int day = Integer.parseInt(difday);
          data.setPay(data.getPay()*day);
      } catch (ParseException e) {
         // TODO Auto-generated catch block
         e.printStackTrace();
      }
        

      model.addAttribute("list", data);
      return "hotel/hotel_successDetail";
   }
}