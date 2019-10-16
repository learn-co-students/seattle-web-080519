export default [
  {
    id: generateUniqueId(),
    maker: "RayBan",
    style: "Wayfarer",
    image:
      "https://images-na.ssl-images-amazon.com/images/I/71hnv7EL2BL._UX679_.jpg"
  },
  {
    id: generateUniqueId(),
    maker: "Julbo",
    style: "Vermont",
    image:
      "https://images-na.ssl-images-amazon.com/images/I/61ibto4p-FL._SX679_.jpg"
  },
  {
    id: generateUniqueId(),
    maker: "FN Generation",
    style: "Kanye",
    image:
      "https://images-na.ssl-images-amazon.com/images/I/71%2Bzw%2BdzoyL._UX679_.jpg"
  },
  {
    id: generateUniqueId(),
    maker: "Bella Dior GR",
    style: "Fashion",
    image:
      "https://images-na.ssl-images-amazon.com/images/I/61oR80jSTEL._UX679_.jpg"
  }
];



//*************
//id production function
//*************

function generateUniqueId() {
  return (
    Math.random()
      .toString(36)
      .substring(2, 15) +
    Math.random()
      .toString(36)
      .substring(2, 15)
  );
}
