package com.proj.yollowa.model.service.activity;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.proj.yollowa.model.activity.ActivityDao;
import com.proj.yollowa.model.entity.activity.AOInfoVo;
import com.proj.yollowa.model.entity.activity.ActivityDetailPageDto;
import com.proj.yollowa.model.entity.activity.ActivityOptionVo;
import com.proj.yollowa.model.entity.activity.ActivityVo;
import com.proj.yollowa.model.entity.activity.ReviewVo;
import com.proj.yollowa.model.entity.lodgement.LodgementRoomInfoVo;
import com.proj.yollowa.model.lodgement.LodgementDao;

@Service
public class ActivityServiceImpl implements ActivityService {
	
	@Inject
	SqlSession sqlSession;
	
	// 액티비티 리스트
		@Override
		public List<ActivityVo> activityListAll(Model model) throws SQLException {
			ActivityDao dao =sqlSession.getMapper(ActivityDao.class);
			List<ActivityVo> alist= dao.activityListAll();
			
			List<ActivityVo> list= dao.activityListAll();
			for(int i=0; i<list.size(); i++) {
				int su = list.get(i).getActivity_img().indexOf("&");
				String imgName = list.get(i).getActivity_img().substring(0, su);
				list.get(i).setActivity_img(imgName);
			}
			model.addAttribute("listAll",list);
			
			return alist;
		}

		// 액티비티 리스트 temp=1인 전체 개수
		@Override
		public int activityListCnt() throws SQLException {
			ActivityDao dao=sqlSession.getMapper(ActivityDao.class);
			int cnt =dao.activityListCnt();
			return cnt;
		}
	
		// ajax select Price (activity list page)
		@Override
		public int priceSelect(int activityNumber) {
			ActivityDao dao = sqlSession.getMapper(ActivityDao.class);
			List<ActivityOptionVo> list = dao.priceSelect(activityNumber);
//			System.out.println("액티비티service return list :: "+list);
			
			int price = list.get(0).getActivityOption_price();
//			System.out.println(activityNumber+"의 방 가격"+price);
			
			return price;
		}
		
		// 액티비티 리스트 검색
		@Override
		public void activitySearch(String search, Model model) {
			ActivityDao dao = sqlSession.getMapper(ActivityDao.class);
			List<ActivityVo> list = dao.activitySearch(search);
			
			for(int i=0; i<list.size(); i++) {
				int su = list.get(i).getActivity_img().indexOf("&");
				String imgName = list.get(i).getActivity_img().substring(0, su);
				list.get(i).setActivity_img(imgName);
			}
			
			model.addAttribute("listAll", list);
		}
		
		// 액티비티 리스트 지역필터
		@Override
		public void activityLocationFilterSelect(String locationFilter, Model model) {
			ActivityDao dao = sqlSession.getMapper(ActivityDao.class);
			
			// '/'로 나눠져있을 수 있기 떄문에 /로 split
			if(locationFilter.contains("/")) {
				String[] filterSplitArr = locationFilter.split("/");
				List<ActivityVo> list = new ArrayList<ActivityVo>();
				
				int cnt =0;
				
				for(int i=0; i<filterSplitArr.length; i++) {
					// 스플릿돼서 나온 배열 length만큼 돌려 list에 담아놓고 위에 만들어 놓은 list 각각의 요소를 다시 add
					List<ActivityVo> tempList = dao.selectLocationFilterOne(filterSplitArr[i]);
					
					// 누적할 검색 건수 누적
					cnt += dao.selectLocationFilterOneCnt(locationFilter);
					
					// 위에서 나온 list의 안의 요소를 위에 만들어놓은 list에 각각 add
					for(int j=0; j<tempList.size(); j++) {

						// list에 각각 add
						list.add(tempList.get(j));
					}	
				}
				model.addAttribute("cnt", cnt);
				
				for(int i=0; i<list.size(); i++) {
					int su = list.get(i).getActivity_img().indexOf("&");
					String imgName = list.get(i).getActivity_img().substring(0, su);
					list.get(i).setActivity_img(imgName);
				}
				
				model.addAttribute("listAll",list);
				
			}else {
				// 전체 선택시 걸러주기
				if(locationFilter.contains("전체")) {
					String splitAll = locationFilter.replaceAll(" 전체", "");
					
					List<ActivityVo> list = dao.selectLocationFilterOne(splitAll);
					
					// 검색 건수를 알려주기 위해 count 요청
					int cnt = dao.selectLocationFilterOneCnt(splitAll);
					model.addAttribute("cnt", cnt);
					
					for(int i=0; i<list.size(); i++) {
						int su = list.get(i).getActivity_img().indexOf("&");
						String imgName = list.get(i).getActivity_img().substring(0, su);
						list.get(i).setActivity_img(imgName);
					}
					
					model.addAttribute("listAll",list);
					
					// 리턴시켜버림
					return;
				}
					
				// '/'로 나눠져있지 않은 것은 바로 보냄
				List<ActivityVo> list = dao.selectLocationFilterOne(locationFilter);
				
				// 검색 건수를 알려주기 위해 count 요청
				int cnt = dao.selectLocationFilterOneCnt(locationFilter);
				model.addAttribute("cnt", cnt);
				
				for(int i=0; i<list.size(); i++) {
					int su = list.get(i).getActivity_img().indexOf("&");
					String imgName = list.get(i).getActivity_img().substring(0, su);
					list.get(i).setActivity_img(imgName);
				}
				
				model.addAttribute("listAll",list);
			}
			
		}
		
		
		// 액티비티 리스트 ↑
	
	@Override
	public void activityDetail(Model model,int number) throws SQLException {
		ActivityDao dao=sqlSession.getMapper(ActivityDao.class);
		List<ActivityVo> detailList =dao.activityDetail(number);
		model.addAttribute("detailList",detailList);
	}
	

	// 액티비티 디테일 페이지 Dto 옵션들
	@Override
	public void activityOption(int articleNumber, Model model) throws SQLException {
		ActivityDao dao=sqlSession.getMapper(ActivityDao.class);
		List<ActivityDetailPageDto> list=dao.activityOption(articleNumber);
		model.addAttribute("option", list);
		
	}

	// 액티비티 디테일 리뷰
	@Override
	public ArrayList<ReviewVo> reviewList(int articleNumber, int category, Model model) throws SQLException {
		ActivityDao dao=sqlSession.getMapper(ActivityDao.class);
		ArrayList<ReviewVo> list =dao.reviewList(articleNumber, category);
		model.addAttribute("reviewList", list);
		
		return list;
	}


	// 리뷰카운트
	@Override
	public int activityReviewCount(int articleNumber, int category) throws SQLException {
		ActivityDao dao=sqlSession.getMapper(ActivityDao.class);
		int cnt=dao.activityReviewCount(articleNumber, category);
		
		return cnt;
	}


	
	
	

}













