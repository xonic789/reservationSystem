package com.proj.yollowa.model.mypage;

import java.sql.SQLException;
import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.proj.yollowa.model.entity.ReviewVo;
import com.proj.yollowa.model.entity.UserVo;
import com.proj.yollowa.model.entity.activity.ActivityVo;
import com.proj.yollowa.model.entity.lodgement.LodgementVo;
import com.proj.yollowa.model.entity.mypage.LReservInfoDto;
import com.proj.yollowa.model.entity.mypage.ReviewDto;

public interface MypageDao {
	public UserVo userDetail(int user_number) throws SQLException;
	public List<LReservInfoDto> getLreservationInfo(@Param("USER_NUMBER") int user_number) throws SQLException;
	public List<LReservInfoDto> getLuserCompletedInfo(@Param("USER_NUMBER") int user_number) throws SQLException;
	public List<LReservInfoDto> getLuserCartInfo(@Param("USER_NUMBER") int user_number) throws SQLException;
	public LodgementVo getLarticleInfo(@Param("LRESERVINFO_ACTICLENUMBER") int lReservInfo_acticleNumber) throws SQLException;
	public LodgementVo getLwishList(@Param("lodgement_number") int lodgement_number) throws SQLException;
	public ActivityVo getAwishList(@Param("activity_number") int activity_number) throws SQLException;
	public ReviewDto getReviewInfo(@Param("LODGEMENT_NUMBER") int reservNumber) throws SQLException;
	public void insertReview(@Param("review") ReviewVo reviewVo,@Param("user_Number") int user_Number) throws SQLException;
	public int getReviewCount(@Param("review_articleNumber") int review_articleNumber) throws SQLException;
	public int[] getStarPoint(@Param("review_articleNumber") int review_articleNumber) throws SQLException;
	public int updateReviewInfo(
			@Param("review_articleNumber") int review_articleNumber,
			@Param("reviewGradeRate") double reviewGradeRate,
			@Param("reviewCount") int reviewCount
			) throws SQLException;
}

