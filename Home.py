import streamlit as st
from application.functions import get_button_label



#---------- Sidebar ----------


if "chat_history" not in st.session_state:
    st.session_state.chat_history = []

with st.sidebar:
    st.header("Chat History")
    for chat_id, chat in enumerate(st.session_state.chat_history):
        button_label = get_button_label(chat_id, chat["first_message"])
        if st.button(button_label):
            st.session_state.current_chat = chat["messages"]