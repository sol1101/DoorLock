package doorlock_pw;

public class DoorLockVO {
	private int doorlockPW; //도어락 비밀번호 변수

	public DoorLockVO() {
	}

	public DoorLockVO(int doorlockPW) {
		this.doorlockPW = doorlockPW;
	}

	public int getDoorlockPW() {
		return doorlockPW;
	}

	public void setMysensor(int doorlockPW) {
		this.doorlockPW = doorlockPW;
	}

	@Override
	public String toString() {
		return "{" + doorlockPW + "}";
	}
}
