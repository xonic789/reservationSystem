package com.proj.yollowa.model.service.host;

import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import org.springframework.ui.Model;

import com.proj.yollowa.model.entity.UserVo;
import com.proj.yollowa.model.entity.host.AddLodgementPageDto;
import com.proj.yollowa.model.entity.host.LodgementUpdatePageDto;
import com.proj.yollowa.model.entity.host.LodgementVo;
import com.proj.yollowa.model.entity.host.RoomInfoVo;

public interface HostService {
	
	UserVo hostDetail(Model model, int user_number) throws SQLException;
	
	// host/ -> 사업자 글 리스트
	void selectHostLodgementList(Model model,UserVo bean) throws SQLException;
	// host/lodgeUpdate/ -> 사업자 숙박 글 수정
	void updateHostLodgement(int lodgement_number, LodgementUpdatePageDto bean, HttpServletRequest req) throws IllegalStateException, IOException;

	
	
	// host/ladd -> lodgement insert 
	void insertLodgement(int user_number, AddLodgementPageDto bean) throws SQLException;

	// host/ladd -> lodgement_number select
	int selectLodgementNumber(int user_number, AddLodgementPageDto bean) throws SQLException;

	// host/ladd -> lodgement_img upload
	String uploadLodgementImg(AddLodgementPageDto bean, int lodgementNumber, HttpServletRequest req) throws SQLException,IllegalStateException, IOException;
	
	// host/ladd -> lodgement_img update
	void updateLodgementImg(int lodgementNumber, String lodgement_img) throws SQLException;

	void insertLodgeInfo(int lodgementNumber, AddLodgementPageDto bean) throws SQLException;

	// host/lodgeRoom -> 숙박업소명 select
	void selectLodgementName(int lodgement_number, Model model);
	
	// host/addRoom -> 유저넘버를 보내 lodgement table에 해당 유저번호로 등록 된 글이 있으면 true return
	ArrayList<LodgementVo> hostNumberMatch(int user_number);

	// host/lodgeRoom -> 등록된 방 
	void selectLodgementRooms(int lodgement_number, Model model);

	// host/lodgeRoom -> 방 삭제 버튼
	void deleteRoom(int articleNumber, int roomNumber);

	// host/addRoom/addAction -> 방 추가등록(이미지 제외)
	void insertLodgementRoom(RoomInfoVo bean);

	// 위에서 insert 되면서 생성된 roomNumber select
	// 숙박 글번호와 방이름으로 매치 
	int selectRoomInfo_RoomNumber(int roomInfo_articleNumber, String roomInfo_name);

	// host/addRoom/addAction -> 이미지 업로드 및 파싱하여 리턴값 전달하여 roomInfo_img에 set하기 위함
	// 이미지가 업로드 될때 방번호를 가지고 생성되기 때문에 위에서 먼저 방 insert 를한 후에 업로드처리한다.
	String uploadRoomInfoImg(RoomInfoVo bean, int roomNumber, HttpServletRequest req) throws IllegalStateException, IOException ;








}
