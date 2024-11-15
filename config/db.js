import mongoose from "mongoose";
import dotenv from "dotenv";

dotenv.config();

const connectDB = async () => {
    try {
        await mongoose.connect('mongodb://localhost:27017/MicroCourses', {
        });
        console.log("Database connected");
    } catch (error) {
        console.error("Connect Failed:", error);
        // Exit the process with a status code of 1 to indicate an error occurred
        process.exit(1); 
    }
};

export default connectDB;