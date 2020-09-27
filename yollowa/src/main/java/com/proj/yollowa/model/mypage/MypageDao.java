package com.proj.yollowa.model.mypage;

import java.sql.SQLException;

import org.springframework.ui.Model;

import com.proj.yollowa.model.entity.UserVo;

public interface MypageDao {
	public UserVo userDetail(int user_number) throws SQLException;
}

// 컨트롤러에선 service를 주입받고 , service 메서드만 호출함

// 서비스에선 다오를 맵핑해서 리턴받고 다오 참조변수.메서드를 호출한다.

// mapper.xml의 namespace로 인해 해당 다오 객체의 <select,insert,delete....id="dd"> id를 통해 해당 메서드가 어떤 쿼리문을 쓰는지 안다

// 쿼리수행