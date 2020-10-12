package com.proj.yollowa.model.service.mypage;

import java.sql.Date;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Service;

import com.proj.yollowa.model.entity.UserVo;
import com.proj.yollowa.model.entity.mypage.ActivityReviewVo;
import com.proj.yollowa.model.entity.mypage.AllReviewViewVo;
import com.proj.yollowa.model.entity.mypage.LodgementReviewVo;
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
	public List<LodgementReviewVo> getLodgementReviewService(String writer) throws SQLException {
		MypageDaoJK mypageDaoJK = sqlSession.getMapper(MypageDaoJK.class);
		
		return mypageDaoJK.getLodgementReview(writer);
	}
	//특정 사용자가 작성한 액티비티 리뷰를 불러온다
	@Override
	public List<ActivityReviewVo> getActivityReviewService(String writer) throws SQLException {
		MypageDaoJK mypageDaoJK = sqlSession.getMapper(MypageDaoJK.class);

		return mypageDaoJK.getActivityReview(writer);
	}
	//특정 사용자가 작성한 리뷰를 모두 불러온다(숙박+액티비티)
	@Override
	public List<AllReviewViewVo> getAllMyReviewService(String reviewWriter) throws SQLException {
		List<AllReviewViewVo> allReviewList = new ArrayList<AllReviewViewVo>();
		List<LodgementReviewVo> lReviewList = getLodgementReviewService(reviewWriter);
		List<ActivityReviewVo> aReviewList = getActivityReviewService(reviewWriter);
		String company;
		String img;
		int userNum;
		int goodsNum;
		int reviewNum;
		int reviewCategoryNum;
		int starNum;
		Date reviewedDate;
		String content;
		String writer;
		for (int i = 0; i < lReviewList.size(); i++) {
			company = lReviewList.get(i).getLodgement_companyName();
			img = lReviewList.get(i).getLodgement_img();
			userNum = lReviewList.get(i).getLodgement_userNumber();
			goodsNum = lReviewList.get(i).getLodgement_number();
			reviewNum = lReviewList.get(i).getReview_reviewNumber();
			reviewCategoryNum = lReviewList.get(i).getReview_articleNumber();
			starNum = lReviewList.get(i).getReview_starPoint();
			reviewedDate = lReviewList.get(i).getReview_writedDate();
			content = lReviewList.get(i).getReview_content();
			writer = lReviewList.get(i).getReview_writer();
			allReviewList.add(new AllReviewViewVo(
					company, img, userNum, goodsNum, reviewNum, 
					reviewCategoryNum, starNum, reviewedDate, content, writer));
		}
		for (int i = 0; i < aReviewList.size(); i++) {
			company = aReviewList.get(i).getActivity_title();
			img = aReviewList.get(i).getActivity_img();
			userNum = aReviewList.get(i).getActivity_userNumber();
			goodsNum = aReviewList.get(i).getActivity_number();
			reviewNum = aReviewList.get(i).getReview_reviewNumber();
			reviewCategoryNum = aReviewList.get(i).getReview_articleNumber();
			starNum = aReviewList.get(i).getReview_starPoint();
			reviewedDate = aReviewList.get(i).getReview_writedDate();
			content = aReviewList.get(i).getReview_content();
			writer = aReviewList.get(i).getReview_writer();
			allReviewList.add(new AllReviewViewVo(
					company, img, userNum, goodsNum, reviewNum, 
					reviewCategoryNum, starNum, reviewedDate, content, writer));
		}
		for (int j = 0; j < allReviewList.size(); j++) {
			System.out.println(allReviewList.get(j).toString());
		}
		
		return allReviewList;
	}
	

	
	
}