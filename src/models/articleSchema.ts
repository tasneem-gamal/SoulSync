import mongoose, { Schema } from "mongoose";

interface IArticle extends Document {
    Title: string;
    Body: string;
    conditionID: mongoose.Schema.Types.ObjectId;
    Image: string; // Path to the image file
}

const acrticleSchema = new Schema<IArticle>({
    Title: {
        type: String,
        required: true
    },
    Body: {
        type: String,
        required: true
    },
    conditionID: {
        type: mongoose.Schema.Types.ObjectId,
        ref: "Condition",
        required: true
    },
    Image: {
        type: String,
        required: true
    }
});

const Article = mongoose.model<IArticle>('Article', acrticleSchema);
export default Article;