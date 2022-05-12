package creation.builder;

/**
 * packageName : creation.builder
 * fileName : Bulider
 * author : ds
 * date : 2022-05-09
 * description :
 * ===========================================================
 * DATE            AUTHOR             NOTE
 * -----------------------------------------------------------
 * 2022-05-09         ds          최초 생성
 */
public class Builder {

    // Bulider : 아래 대상 객체의 생성자를 대신함
    private Computer computer;

    // 컴퓨터 객체를 생성함
    public Builder() {
        this.computer = new Computer();
    }

    public Computer build(){
        return this.computer;
    }

    public Builder setCpu(Cpu cpu) {
        // 컴퓨터의 setter 호출
        computer.setCpu(cpu);
        // 자기 자신을 return
        return this;
    }

    public Builder setRam(Ram ram) {
        // 컴퓨터의 setter 호출
        computer.setRam(ram);
        // 자기 자신을 return
        return this;
    }

    public Builder setGraphics(Graphics graphics) {
        // 컴퓨터의 setter 호출
        computer.setGraphics(graphics);
        // 자기 자신을 return
        return this;
    }
}
