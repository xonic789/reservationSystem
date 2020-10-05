package com.proj.yollowa.model.host;

import java.sql.SQLException;
import java.util.ArrayList;

import org.apache.ibatis.annotations.Param;

import com.proj.yollowa.model.entity.UserVo;
import com.proj.yollowa.model.entity.host.AddLodgementPageDto;
import com.proj.yollowa.model.entity.host.LodgementUpdatePageDto;
import com.proj.yollowa.model.entity.host.LodgementVo;
import com.proj.yollowa.model.entity.host.RoomInfoVo;

public interface HostDao {
	// host/ start
	public UserVo userDetail(int user_number) throws SQLException;
	
	// 호스트 숙박글 리스트 
	public ArrayList<LodgementVo> selectHostLodgementList(int user_number);
	// 호스트 숙박 글 업데이트
	public void updateHostLodgement(@Param("lodgement_number") int lodgement_number, @Param("lodgement") LodgementUpdatePageDto bean);
	//host/ end
	
	// host/ladd start
	// 숙박 글 기본정보 insert (lodgement_img 제외)
	void insertLodgement(@Param("lodgement_userNumber") int user_number, @Param("lodgement") AddLodgementPageDto bean);

	// 숙박 글 기본정보 등록 후 primary key로 붙은 글 번호를 select (information테이블에 정보를 추가할 때 글번호와 함께 추가와 lodgement_img 업로드 후 글번호와 함께 update)
	int selectLodgementNum(@Param("lodgement_userNumber") int user_number, @Param("lodgement") AddLodgementPageDto bean );
	
	// 숙박 글 information insert
	public void insertLodgeInfo(@Param("information_number") int lodgementNumber, @Param("information") AddLodgementPageDto bean);
	
	// lodgement_img 업데이트 
	public void updateLodgementImg(@Param("lodgeNumber") int lodgementNumber,@Param("lodgement_img") String lodgement_img);
	// host/ladd end

	// host/lodgeRoom -> 숙박업소명 select
	public String selectLodgementName(int lodgement_number);

	// host/lodgeRoom -> 등록된 방 
	public ArrayList<RoomInfoVo> selectLodgementRooms(int lodgement_number);

	// host/addRoom -> 유저넘버를 보내 lodgement table에 해당 유저번호로 등록 된 글이 있으면 lodgement_number return
	public ArrayList<LodgementVo> hostNumberMatch(int user_number);

	// host/lodgeRoom -> 방 삭제 버튼
	public void deleteRoom(@Param("articleNumber") int articleNumber,@Param("roomNumber") int roomNumber);

	// host/addRoom/addAction -> 방 추가등록 (이미지 제외)
	public void insertLodgementRoom(@Param("bean") RoomInfoVo bean);

	// 위에서 insert 되면서 생성된 roomNumber select
	// host/addRoom/addAction ->  숙박 글번호와 방이름으로 매치 
	public int selectRoomInfo_RoomNumber(@Param("articleNumber") int roomInfo_articleNumber, @Param("roomName") String roomInfo_name);

	// host/addRoom/addAction -> 위에서 리턴받은 파싱된 이미지 String update
	public void updateRoomInfoImg(@Param("articleNumber") int roomInfo_articleNumber,@Param("roomNumber") int roomNumber,@Param("roomInfo_img") String setImgName);


	
	
}
