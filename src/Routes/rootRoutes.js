import express from "express";
import userRoutes from "./userRoutes.js";
import saveImgRoutes from "./saveImgRoutes.js";
import reviewRoutes from "./reviewRoutes.js";
import imgRoutes from "./imgRoutes.js";

const rootRoutes = express.Router();
rootRoutes.use("/user", userRoutes);
rootRoutes.use("/review", reviewRoutes);
rootRoutes.use("/save-image", saveImgRoutes);
rootRoutes.use("/img", imgRoutes);

export default rootRoutes;
