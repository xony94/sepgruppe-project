package kr.or.ddit.works.chat.vo;

import java.io.Serializable;
import java.util.List;
import java.util.UUID;

import kr.or.ddit.works.organization.vo.EmployeeVO;
import lombok.Data;

/**
 * 채팅방 CHAT_ROOM VO
 * @author JYS
 * @since 2025. 3. 14.
 * @see
 *
 * <pre>
 * << 개정이력(Modification Information) >>
 *   
 *   수정일      			수정자           수정내용
 *  -----------   	-------------    ---------------------------
 *  2025. 3. 14.     	JYS	          최초 생성
 *
 * </pre>
 */
@Data
public class ChatRoomVO implements Serializable {
	
	private String roomType;
	private String roomId;
	private String roomName;
	private String createEmpId;
	private String roomCreateDate;
	
	private List<ChatRoomUserVO> chatRoomUser;
	private MessageVO message;
	private EmployeeVO employee;

}
