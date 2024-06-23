package Controller;

import Model.Model_Receive_Message;
import Model.Model_Send_Message;
import java.util.List;

public interface EventChat {

    public void sendMessage(Model_Send_Message data);

    public void receiveMessage(Model_Receive_Message data);
    void loadChatHistory(List<Model_Receive_Message> chatHistory); // New method
}
