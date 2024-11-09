import mongoose, { Schema } from "mongoose";

interface ICondition extends Document{
    Name: String,
    Image: String
}

const coditionSchema = new Schema<ICondition>({
    Name: {
        type: String,
        required: true
    },
    Image: {
        type: String,
        required: true
    }
})

const Condition = mongoose.model<ICondition>("Condition", coditionSchema);
export default Condition;