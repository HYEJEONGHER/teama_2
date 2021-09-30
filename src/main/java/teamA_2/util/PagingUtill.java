package teamA_2.util;

public class PagingUtill {

	private int nowPage;// ���� ������
	private int startPage;// ����������
	private int endPage;// ȭ�� ������ �� ��ȣ
	private int total;//�Խñ� �Ѱ���
	private int perPage; // ȭ��� �۰���
	private int lastPage;//ȭ�� ����ȣ(���� ������)
	private int start;//�������� ����� ȭ��� �� ���۹�ȣ
	private int end; //�������� ����� ȭ��� �������ȣ
	private int cntPage=2;//ȭ�鿡�� ������ ����¡ ����
	
	public PagingUtill() {
		
	}
	public PagingUtill(int total,int nowPage, int perPage) {
		//set now Page(),
		setNowPage(nowPage);
		setPerPage(perPage);
		setTotal(total);
		//��ü��  ���� ������ ��ȣ, ��� last ������ ���
		CalcLastPage(total,perPage);
		
		//�� ȭ�鿡�� ������ ���� �������� ���� ������ ���ϱ�
		calcStartEndpage(nowPage,cntPage);
		
		//�������� ����� �� ���� ��ȣ�� ���� ��ȣ ���ϱ�
		calcStartEnd(nowPage,perPage);
		
		
	}	
	public void calcStartEnd(int nowPage,int cntPage) {
		//�� ȭ���� �Խñ� ���� ��ȣ
		int end = nowPage*perPage;
		int start = end-perPage+1;
		
		setEnd(end);
		setStart(start);
	}
	public void calcStartEndpage(int nowPage,int cntPage) {
		//��ȭ�鿡�� �������� ������ ������ ���
		int endPage=(((int)Math.ceil((double)nowPage/cntPage))*cntPage);
		
		//���� �������� endpage���� ���� ��� endPage�� ������������
		//���� �������� ->23 end�������� 30�ϋ� 23���� endpage�� ����
		if(getLastPage()<endPage) {
			setEndPage(getLastPage());
		}else {
			setEndPage(endPage);
		}
		
		
		//���� ������ ����ϱ�
		int startPage = (endPage-cntPage+1);
		if(startPage<1) {
			startPage=1;
		}
		setStartPage(startPage);
	}
	
	public void CalcLastPage(int total,int perPage) {
		int lastPage = (int)Math.ceil((double)total/perPage);
		setLastPage(lastPage);
	}
	public int getNowPage() {
		return nowPage;
	}
	public void setNowPage(int nowPage) {
		this.nowPage = nowPage;
	}
	public int getStartPage() {
		return startPage;
	}
	public void setStartPage(int startPage) {
		this.startPage = startPage;
	}
	public int getEndPage() {
		return endPage;
	}
	public void setEndPage(int endPage) {
		this.endPage = endPage;
	}
	public int getTotal() {
		return total;
	}
	public void setTotal(int total) {
		this.total = total;
	}
	public int getPerPage() {
		return perPage;
	}
	public void setPerPage(int perPage) {
		this.perPage = perPage;
	}
	public int getLastPage() {
		return lastPage;
	}
	public void setLastPage(int lastPage) {
		this.lastPage = lastPage;
	}
	public int getStart() {
		return start;
	}
	public void setStart(int start) {
		this.start = start;
	}
	public int getEnd() {
		return end;
	}
	public void setEnd(int end) {
		this.end = end;
	}
}
