package com.proj.yollowa.model.service.mypage;

import java.sql.Date;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.proj.yollowa.model.entity.SearchVo;
import com.proj.yollowa.model.entity.UserVo;
import com.proj.yollowa.model.entity.lodgement.LodgementVo;
import com.proj.yollowa.model.entity.mypage.ActivityReviewVo;
import com.proj.yollowa.model.entity.mypage.AllReviewViewVo;
import com.proj.yollowa.model.entity.mypage.LodgementReviewVo;
import com.proj.yollowa.model.lodgement.LodgementDao;
import com.proj.yollowa.model.mypage.MypageDaoJK;

@Service
public class MypageServiceImplJK implements MypageServiceJK{

	@Inject
	SqlSession sqlSession;
	//관리자에게 사업자 권한을 요구한다
	@Override
	public void updateToStandByHostService(UserVo userVo) throws SQLException {
		MypageDaoJK mypageDaoJK = sqlSession.getMapper(MypageDaoJK.class);
		
		mypageDaoJK.updateToStandByHost(userVo);
	}
	//특정 사용자가 작성한 숙박 리뷰를 불러온다
	@Override
	public List<LodgementReviewVo> getLodgementReviewService(SearchVo searchVo) throws SQLException {
		MypageDaoJK mypageDaoJK = sqlSession.getMapper(MypageDaoJK.class);
		
		return mypageDaoJK.getLodgementReview(searchVo);
	}
	//특정 사용자가 작성한 액티비티 리뷰를 불러온다
	@Override
	public List<ActivityReviewVo> getActivityReviewService(SearchVo searchVo) throws SQLException {
		MypageDaoJK mypageDaoJK = sqlSession.getMapper(MypageDaoJK.class);

		return mypageDaoJK.getActivityReview(searchVo);
	}
	//특정 사용자가 작성한 리뷰를 모두 불러온다(숙박+액티비티)
	@Override
	public List<AllReviewViewVo> getAllMyReviewService(SearchVo searchVo) throws SQLException {
		List<AllReviewViewVo> allReviewList = new ArrayList<AllReviewViewVo>();
		List<AllReviewViewVo> pageReviewList = new ArrayList<AllReviewViewVo>();
		List<LodgementReviewVo> lReviewList = getLodgementReviewService(searchVo);
		List<ActivityReviewVo> aReviewList = getActivityReviewService(searchVo);
		String company;
		String img;
		int userNum;
		int goodsNum;
		int reviewNum;
		int reviewCategoryNum;
		int starNum;
		Date reviewedDate;
		String title;
		String content;
		String writer;
		System.out.println("리뷰합치기 실행");
		for (int i = 0; i < lReviewList.size(); i++) {
			company = lReviewList.get(i).getLodgement_companyName();
			img = lReviewList.get(i).getLodgement_img();
			img = getFirstImg(img);
			userNum = lReviewList.get(i).getLodgement_userNumber();
			goodsNum = lReviewList.get(i).getLodgement_number();
			reviewNum = lReviewList.get(i).getReview_reviewNumber();
			reviewCategoryNum = lReviewList.get(i).getReview_articleNumber();
			starNum = lReviewList.get(i).getReview_starPoint();
			reviewedDate = lReviewList.get(i).getReview_writedDate();
			title=lReviewList.get(i).getReview_title();
			content = lReviewList.get(i).getReview_content();
			writer = lReviewList.get(i).getReview_writer();
			allReviewList.add(new AllReviewViewVo(
					company, img, userNum, goodsNum, reviewNum, 
					reviewCategoryNum, starNum, reviewedDate, title, content, writer)
					);
		}
		for (int i = 0; i < aReviewList.size(); i++) {
			company = aReviewList.get(i).getActivity_title();
			img = aReviewList.get(i).getActivity_img();
			img = getFirstImg(img);
			userNum = aReviewList.get(i).getActivity_userNumber();
			goodsNum = aReviewList.get(i).getActivity_number();
			reviewNum = aReviewList.get(i).getReview_reviewNumber();
			reviewCategoryNum = aReviewList.get(i).getReview_articleNumber();
			starNum = aReviewList.get(i).getReview_starPoint();
			reviewedDate = aReviewList.get(i).getReview_writedDate();
			title=aReviewList.get(i).getReview_title();
			content = aReviewList.get(i).getReview_content();
			writer = aReviewList.get(i).getReview_writer();
			allReviewList.add(new AllReviewViewVo(
					company, img, userNum, goodsNum, reviewNum, 
					reviewCategoryNum, starNum, reviewedDate, title, content, writer)
					);
		}
		//한페이지에 보여줄 개수
		int perPageNum =searchVo.getPerPageNum();
		int startNum= (searchVo.getPage()-1)*perPageNum;
		System.out.println("#"+startNum);
		int endNum = startNum+perPageNum;
		if(endNum>allReviewList.size()) {
			endNum=allReviewList.size();
		}
			
		System.out.println("PagingNew:"+startNum+"|"+endNum);
		for (int j = startNum; j < endNum; j++) {
			System.out.println("get"+j);
			pageReviewList.add(allReviewList.get(j));
		}
		
		return pageReviewList;
	}
	
	public String getFirstImg(String imgs) {
			String firstImg = "";
			int su = imgs.indexOf("&");
			firstImg = imgs.substring(0, su);
		return firstImg;
	}
	@Override
	public int getReviewCountService(SearchVo searchVo) throws SQLException {
		MypageDaoJK mypageDaoJK = sqlSession.getMapper(MypageDaoJK.class);
		return mypageDaoJK.getReviewCount(searchVo);
	}

	
	
}
