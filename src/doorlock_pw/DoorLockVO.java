package doorlock_pw;

public class DoorLockVO {
	private int doorlockPW; //����� ��й�ȣ ����

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
