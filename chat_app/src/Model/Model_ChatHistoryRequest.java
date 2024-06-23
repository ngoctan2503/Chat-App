package Model;

public class Model_ChatHistoryRequest {
    private int fromUserID;
    private int toUserID;

    public Model_ChatHistoryRequest(int fromUserID, int toUserID) {
        this.fromUserID = fromUserID;
        this.toUserID = toUserID;
    }

    public int getFromUserID() {
        return fromUserID;
    }

    public void setFromUserID(int fromUserID) {
        this.fromUserID = fromUserID;
    }

    public int getToUserID() {
        return toUserID;
    }

    public void setToUserID(int toUserID) {
        this.toUserID = toUserID;
    }
}