import mongoose, { Schema } from "mongoose";

interface IUser extends Document {
    Name: string;
    Email: string;
    Password: string;
    gender: string;
    age: number;
}

const userSchema = new Schema <IUser> ({
    Name: {
        type: String,
        required: true
    },
    Email: {
        type: String,
        required: true
    },
    Password: {
        type: String,
        required: true
    },
    gender: {
        type: String,
        required: true
    },
    age: {
        type: Number,
        required: true
    }
})

const User = mongoose.model<IUser>('User', userSchema);
export default User;