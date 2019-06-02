package QuanLiBanLaptop.Web;

public class NguoiDung
{
	protected int mand;
	protected String tennd;
	protected String matkhau;
	protected int cap;
	
	public NguoiDung(){}
	
	public NguoiDung(int mand)
	{
		this.mand = mand;
	}
	
	public NguoiDung(String tennd, String matkhau)
	{
		this.tennd = tennd;
		this.matkhau = matkhau;
	}
	
	public NguoiDung(String tennd, String matkhau, int cap)
	{
		this.tennd = tennd;
		this.matkhau = matkhau;
		this.cap = cap;
	}
	
	public NguoiDung(int mand, String tennd, String matkhau, int cap)
	{
		this(tennd, matkhau, cap);
		this.mand = mand;
	}

	public int getMand() {
		return mand;
	}

	public void setMand(int mand) {
		this.mand = mand;
	}

	public String getTennd() {
		return tennd;
	}

	public void setTennd(String tennd) {
		this.tennd = tennd;
	}

	public String getMatkhau() {
		return matkhau;
	}

	public void setMatkhau(String matkhau) {
		this.matkhau = matkhau;
	}

	public int getCap() {
		return cap;
	}

	public void setCap(int cap) {
		this.cap = cap;
	}
}