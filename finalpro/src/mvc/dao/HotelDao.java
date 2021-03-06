package mvc.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import mvc.vo.HotelDetailVO;
import mvc.vo.HotelRadioVO;
import mvc.vo.HotelReserve2VO;
import mvc.vo.HotelRoomImgVO;
import mvc.vo.PageVO;


@Repository
public class HotelDao {
   @Autowired
   private SqlSessionTemplate ss;

   public void addHotel(HotelReserve2VO vo) {
       // 호텔예약 관련 insert임
      ss.insert("hvo.addhotel", vo);
   }

   public HotelReserve2VO resList(int hrnum) {
      // 호텔 메인페이지에서 모든 호텔의 정보를 반환하는 리스트임
      return ss.selectOne("hvo.reslist", hrnum);
   }

   public List<HotelRadioVO> hotelRadioList(int num) {
      //해당 호텔의 방정보와 가격이 담긴 테이블을 꺼내어 라디오버튼에 적용시키기 위한 리스트
      return ss.selectList("hvo.radioList", num);
   }

   public List<HotelReserve2VO> resList2(HotelReserve2VO vo) {
      // 마이페이지 해당 유저의 모든 예약 표시용 리스트임
      return ss.selectList("hvo.reslist2", vo);
   }

   public HotelReserve2VO resList3() {
      // 호텔 예약 직후 상세정보 표시용 리스트임
      return ss.selectOne("hvo.reslist3");
   }
   
   public HotelDetailVO dlist(int num)  {
      // 호텔 상세페이지용 리스트
      return ss.selectOne("hvo.hdetail", num);
   }
   
   public List<HotelRoomImgVO> imgList(int num){
      return ss.selectList("hvo.hrimg",num);
   }
   //호텔 페이징 처리
   public int total(PageVO vo) {
	  return ss.selectOne("hvo.total", vo);
	   }

}