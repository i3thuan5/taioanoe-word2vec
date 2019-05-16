# -*- coding: utf-8 -*-


from gensim.models.word2vec import LineSentence, Word2Vec


def main():
    sentences = LineSentence("bun.txt")
    model = Word2Vec(sentences, size=250)

    # 保存模型，供日後使用
    model.save("word2vec.model")

    # 模型讀取方式
    # model = word2vec.Word2Vec.load("your_model_name")


if __name__ == "__main__":
    main()
