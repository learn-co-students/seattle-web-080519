const initialState = {
  title: "ROCK"
};

const headerReducer = (state = initialState, action) => {
  console.log(state);
  console.log(action);
  switch (action.type) {
    case "UPDATE_TITLE":
      const updatedTitle = state.title === "ROCK" ? "ROLL" : "ROCK";
      return {
        ...state,
        title: updatedTitle
      };
    default:
      return state;
  }
};

export default headerReducer;
