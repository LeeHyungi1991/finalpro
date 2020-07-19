package mvc.model;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import mvc.dao.SurveyDao;
import mvc.service.SurveyService;
import mvc.vo.SurveyViewVO;

@Controller
public class SurveyController {

	@Autowired
	private SurveyDao surveyDao;

	@Autowired
	private SurveyService surveyService;

// 설문조사 작성폼으로 이동
	@RequestMapping(value = "/goSurveyWrite")
	public ModelAndView goSurveyWrite() {
		List<List<SurveyViewVO>> viewlist = new ArrayList<List<SurveyViewVO>>();
		for (int i = 2; i < 10; i++) {
			List<SurveyViewVO> list = surveyDao.surveyView(i);
			viewlist.add(list);
		}
		ModelAndView mav = new ModelAndView();
		mav.setViewName("survey/surveyWrite");
		mav.addObject("list", viewlist);
		return mav;
	}

	@RequestMapping(value = "/goSurveyDetail", method = RequestMethod.POST)
	public ModelAndView surveyUpdate(SurveyViewVO vo,HttpSession session) {
		String[] str = { vo.getSubtype1(), vo.getSubtype2(), vo.getSubtype3(), vo.getSubtype4(), vo.getSubtype5(),
				vo.getSubtype6(), vo.getSubtype7(), vo.getSubtype8() };
		System.out.println(vo.getSubtype1());
		for (int i = 2; i < 10; i++) {
			SurveyViewVO v = new SurveyViewVO();
			v.setSubtype(str[i-2]);
			v.setSubcode(i);
			surveyDao.surveyClientUpdatecnt(v);
		}
		ModelAndView mav = new ModelAndView();
		mav.setViewName("survey/surveyDetail");
		String subtype = vo.getSubtype1();
		String loc = null;
		int locnum = 0;
		System.out.println(subtype);
		subtype = subtype.replaceAll("(^\\p{Z}+|\\p{Z}+$)", "");
		switch (subtype) {
		case "A":
			loc = "제주도";
			locnum = 1;
			break;
		case "B":
			loc = "서울";
			locnum = 10;
			break;
		case "C":
			loc = "강원도";
			locnum = 8;
			break;
		case "D":
			loc = "충청도";
			locnum = 12;
			break;
		case "E":
			loc = "경상도";
			locnum = 3;
			break;
		case "F":
			loc = "전라도";
			locnum = 5;
			break;
		}
		System.out.println(locnum);
		System.out.println(loc);
		
		mav.addObject("loc", loc);
		mav.addObject("locnum", locnum);
		return mav;
	}
}