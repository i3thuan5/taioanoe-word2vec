# taioanoe-word2vec
word2vec

###
### 文本大細
- 585250詞
- 12131236句

### 來源
- icorpus臺華平行新聞語料庫
- TGB通訊 
- twsis-trs twsas-語料庫系統 台語文數位典藏資料庫 台語文語料庫蒐集及語料庫為本台語書面語音節詞頻統計-HL 台語文語料庫蒐集及語料庫為本台語書面語音節詞頻統計-POJ 教典例句 教育部臺灣閩南語字詞頻調查工作 白話字文獻館 詞彙分級

### 訓練模型（5分鐘內）
```
$ time docker build . --build-arg BUN=tsuanlo.txt.gz -t word2vec:tsuanlo
```

### `$ docker run --rm word2vec:tsuanlo python tshue.py tsa1-poo1`
```
ta1-poo1	0.7212225794792175
tsa1-poo1-e5	0.7107069492340088
gin2-na2-lang5	0.657036542892456
tsit4-mia5	0.6441531181335449
tsit8-mia5	0.6381524205207825
senn3-tan5	0.6059032082557678
tsoo2-thai3	0.5966249108314514
gin2-a2	0.5950016975402832
tsa1-boo2-gin2-a2	0.5938881039619446
tsa1-boo2	0.5852255821228027
```

### `$ docker run --rm word2vec:tsuanlo python tshue.py ho2`
```
ho2-e5	0.6787269711494446
u7-ho2	0.636854887008667
tsin1-ho2	0.5798394680023193
phainn2	0.5700523853302002
m7-ho2	0.5179966688156128
bai2	0.49584609270095825
tho3-tong3	0.48337528109550476
hap8-gi5	0.4817642569541931
ho2-le2	0.46727320551872253
ho2-lai5	0.46565333008766174
```



## 漢羅對照

### 文本大細
- 115918詞
- 591224句

### 來源
- 教典、詞luī分級、twisas。


### 訓練模型（1分鐘內）
```
time docker build . --build-arg BUN=hanlo.txt.gz -t word2vec:hanlo
```

分詞格式請去[鬥拍字](https://鬥拍字.意傳.台灣/%E8%AC%9B/%E6%9F%A5%E5%9F%94)khóo-pì。

### `$ docker run --rm word2vec:hanlo python tshue.py 查-埔｜tsa1-poo1`
```
批｜phue1	0.9988206624984741
間｜king1	0.9987307786941528
張｜tiunn1	0.9986802935600281
毋-過｜m7-koh4	0.9986783266067505
擺｜pai2	0.9986410737037659
紙｜tsua2	0.9985268712043762
人-客｜lang5-kheh4	0.9984666109085083
車｜tshia1	0.9984121918678284
最-近｜tsue3-kin7	0.9983530044555664
逐｜tak8	0.9983291625976562
```

### `$ docker run --rm word2vec:hanlo python tshue.py 好｜ho2`
```
毋-通｜m7-thang1	0.9994579553604126
食｜tsiah8	0.999347984790802
較｜khah4	0.9991786479949951
煞｜suah4	0.9990503191947937
愛｜ai3	0.9989330172538757
傷｜siunn1	0.9987226724624634
攏｜long2	0.9985952377319336
來｜lai5	0.9985493421554565
足｜tsiok4	0.9985259771347046
著｜tioh8	0.9984019994735718
```
