package Model;

public class KhachHang {
	private String makh;
	private String tenkh;
	private String diachi;
	private String sodienthoai;
	private String email;
	private String matkhau;
	
	public KhachHang() {
		
	}
	
	public KhachHang(String MaKH,String TenKH,String DiaChi,String SDT,String Email,String matkhau) {
		this(TenKH,DiaChi,SDT,Email,matkhau);
		makh=MaKH;
	}
	
	public KhachHang(String TenKH,String DiaChi,String SDT,String Email,String matkhau) {
		tenkh=TenKH;
		diachi=DiaChi;
		sodienthoai=SDT;
		email=Email;
		this.matkhau=matkhau;
	}
	

	public String getTenkh() {
		return tenkh;
	}
	public void setTenkh(String TenKH) {
		tenkh=TenKH;
	}
	public String getMakh() {
		return makh;
	}
	public void setMakh(String MaKH) {
		makh=MaKH;
	}
	public String getDiachi() {
		return diachi;
	}
	public void setDiachi(String DiaChi) {
		diachi=DiaChi;
	}
	public String getSodienthoai() {
		return sodienthoai;
	}
	public void setSodienthoai(String SDT) {
		sodienthoai=SDT;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String Email) {
		email=Email;
	}

	public String getMatkhau() {
		return matkhau;
	}

	public void setMatkhau(String matkhau) {
		this.matkhau = matkhau;
	}
}
