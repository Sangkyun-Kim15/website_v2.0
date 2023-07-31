package kr.co.mlec.Board;

import static org.junit.Assert.*;

import org.junit.After;
import org.junit.AfterClass;
import org.junit.Before;
import org.junit.BeforeClass;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.mockito.MockitoAnnotations;
import org.mockito.junit.MockitoJUnitRunner;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.web.servlet.MockMvc;
import org.springframework.test.web.servlet.MvcResult;
import org.springframework.test.web.servlet.request.MockMvcRequestBuilders;
import org.springframework.test.web.servlet.setup.MockMvcBuilders;
import org.springframework.web.servlet.ModelAndView;

import com.fasterxml.jackson.databind.ObjectMapper;

import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.post;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.status;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import static org.mockito.Mockito.when;
import static org.mockito.Mockito.verify;
import static org.mockito.ArgumentMatchers.any;

import kr.co.mlec.VO.BoardVO;
import kr.co.mlec.VO.CriteriaVO;
import kr.co.mlec.VO.PagingVO;

@RunWith(MockitoJUnitRunner.class)
public class BoardTest {

	@Autowired
	private MockMvc mockMvc;

	@InjectMocks
	private BoardController boardController;

	@Mock
	private BoardService service;

	@BeforeClass
	public static void setUpBeforeClass() throws Exception {
		System.out.println("setUpBeforeClass Run");
	}

	@AfterClass
	public static void tearDownAfterClass() throws Exception {
		System.out.println("tearDownAfterClass Run");
	}

	@Before
	public void setUp() throws Exception {
		System.out.println("setUp Run");
		MockitoAnnotations.openMocks(this);
		mockMvc = MockMvcBuilders.standaloneSetup(boardController).build();
	}

	@After
	public void tearDown() throws Exception {
		System.out.println("tearDown Run");
	}

	@Test
	public void testBoardSelect() throws Exception {
	    // Create test data
	    List<BoardVO> list = new ArrayList<>();
	    BoardVO board1 = new BoardVO();
	    board1.setBoardNo(1);
	    board1.setTitle("Test Title 1");
	    board1.setWriter("Test Writer 1");
	    board1.setContent("Test Content 1");

	    BoardVO board2 = new BoardVO();
	    board2.setBoardNo(2);
	    board2.setTitle("Test Title 2");
	    board2.setWriter("Test Writer 2");
	    board2.setContent("Test Content 2");

	    list.add(board1);
	    list.add(board2);

	    // Create CriteriaVO instance
	    CriteriaVO cri = new CriteriaVO(1, 10);
	    cri.setBoardNo(-1); // Set the boardNo to -1

	    // Mock the service methods
	    when(service.boardSelectPaging(any(CriteriaVO.class))).thenReturn(list);
	    when(service.getBoardTotalNum(any(CriteriaVO.class))).thenReturn(list.size());

	    // Perform the request
	    MvcResult result = mockMvc.perform(MockMvcRequestBuilders.get("/board/select.do")
	                            .flashAttr("cri", cri))
	                            .andExpect(status().isOk())
	                            .andReturn();

	    // Verify ModelAndView
	    ModelAndView mav = result.getModelAndView();

	    // Make sure the "list" and "paging" attributes exist
	    assertNotNull(mav.getModel().get("list"));
	    assertNotNull(mav.getModel().get("paging"));

	    // Convert objects to expected types
	    @SuppressWarnings("unchecked")
		List<BoardVO> resultList = (List<BoardVO>) mav.getModel().get("list");
	    PagingVO resultPaging = (PagingVO) mav.getModel().get("paging");

	    // Verify data
	    assertEquals(list.size(), resultList.size());
	    assertEquals(new PagingVO(cri, list.size()), resultPaging);
	}

	/*
	@Test
	public void testBoardSelectByUser() throws Exception {
		fail("Not yet implemented");
	}
	 */

	@Test
	public void testBoardDetail() throws Exception {
		int boardNo = 1;

		BoardVO board = new BoardVO();
		board.setBoardNo(boardNo);
		board.setTitle("Test Title");
		board.setWriter("Test Writer");
		board.setContent("Test Content");

		when(service.boardDetail(boardNo)).thenReturn(board); // Use boardNo directly instead of anyInt()

		MvcResult result = mockMvc.perform(MockMvcRequestBuilders.get("/board/detail.json") // Use
																							// MockMvcRequestBuilders.get()
				.param("boardNo", String.valueOf(boardNo))).andExpect(status().isOk()).andReturn();

		String json = result.getResponse().getContentAsString();
		ObjectMapper mapper = new ObjectMapper();
		BoardVO resultBoard = mapper.readValue(json, BoardVO.class);

		assertEquals(board.getBoardNo(), resultBoard.getBoardNo());
		assertEquals(board.getTitle(), resultBoard.getTitle());
		assertEquals(board.getWriter(), resultBoard.getWriter());
		assertEquals(board.getContent(), resultBoard.getContent());
	}

	/*
	@Test
	public void testBoardDetailAdmin() {
		fail("Not yet implemented");
	}
	*/

	@Test
	public void testBoardInsert() throws Exception {
		BoardVO board = new BoardVO();
		// set your values here
		board.setWriter("Test Writer");
		board.setTitle("Test Title");
		board.setContent("This is a test content");

		mockMvc.perform(post("/board/insert.do").param("title", board.getTitle()).param("writer", board.getWriter())
				.param("content", board.getContent())).andExpect(status().is3xxRedirection());

		verify(service).boardInsert(any(BoardVO.class));
	}
	/*
	@Test
	public void testBoardDelete() throws Exception {
		fail("Not yet implemented");
	}

	@Test
	public void testUpdateForm() {
		fail("Not yet implemented");
	}

	@Test
	public void testBoardUpdate() {
		fail("Not yet implemented");
	}
	*/

}
