import express from "express";
import { authenticateJWT } from "../Middlewares/jwtAuthMiddleware.js";
import {
  deleteUser,
  getUser,
  getUserById,
  signIn,
  signUp,
  updateUser,
} from "../Controllers/userController.js";
import uploadSingle from "../Middlewares/uploadMiddleware.js";

const userRoutes = express.Router();

userRoutes.post("/sign-up", signUp);
userRoutes.post("/sign-in", signIn);
userRoutes.get("/get-user-by-id/:userId", authenticateJWT, getUserById);
userRoutes.get("/get-user", authenticateJWT, getUser);
userRoutes.put("/update-user/:userId", authenticateJWT, updateUser);
userRoutes.delete("/delete-user/:userId", authenticateJWT, deleteUser);

export default userRoutes;
