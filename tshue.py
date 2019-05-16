import sys
from gensim.models.word2vec import Word2Vec

def main():    
        model = Word2Vec.load('word2vec.model')
        res = model.wv.most_similar(sys.argv[1])
        for item in res: 
              print(item[0] + '\t' + str(item[1]))

if __name__=='__main__':
        main()
