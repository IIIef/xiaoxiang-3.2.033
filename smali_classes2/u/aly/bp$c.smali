.class Lu/aly/bp$c;
.super Lu/aly/dj;
.source "UALogEntry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lu/aly/bp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lu/aly/dj<",
        "Lu/aly/bp;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1187
    invoke-direct {p0}, Lu/aly/dj;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lu/aly/bp$1;)V
    .locals 0

    .line 1187
    invoke-direct {p0}, Lu/aly/bp$c;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lu/aly/cy;Lu/aly/bp;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/cf;
        }
    .end annotation

    .line 1192
    check-cast p1, Lu/aly/de;

    .line 1193
    iget-object v0, p2, Lu/aly/bp;->a:Lu/aly/as;

    invoke-virtual {v0, p1}, Lu/aly/as;->b(Lu/aly/cy;)V

    .line 1194
    iget-object v0, p2, Lu/aly/bp;->b:Lu/aly/ar;

    invoke-virtual {v0, p1}, Lu/aly/ar;->b(Lu/aly/cy;)V

    .line 1195
    iget-object v0, p2, Lu/aly/bp;->c:Lu/aly/au;

    invoke-virtual {v0, p1}, Lu/aly/au;->b(Lu/aly/cy;)V

    .line 1196
    iget-object v0, p2, Lu/aly/bp;->d:Lu/aly/bh;

    invoke-virtual {v0, p1}, Lu/aly/bh;->b(Lu/aly/cy;)V

    .line 1197
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    .line 1198
    invoke-virtual {p2}, Lu/aly/bp;->r()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 1199
    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 1201
    :cond_0
    invoke-virtual {p2}, Lu/aly/bp;->w()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    .line 1202
    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 1204
    :cond_1
    invoke-virtual {p2}, Lu/aly/bp;->B()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x2

    .line 1205
    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 1207
    :cond_2
    invoke-virtual {p2}, Lu/aly/bp;->E()Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x3

    .line 1208
    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 1210
    :cond_3
    invoke-virtual {p2}, Lu/aly/bp;->H()Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v1, 0x4

    .line 1211
    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 1213
    :cond_4
    invoke-virtual {p2}, Lu/aly/bp;->K()Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v1, 0x5

    .line 1214
    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 1216
    :cond_5
    invoke-virtual {p2}, Lu/aly/bp;->N()Z

    move-result v1

    if-eqz v1, :cond_6

    const/4 v1, 0x6

    .line 1217
    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 1219
    :cond_6
    invoke-virtual {p2}, Lu/aly/bp;->R()Z

    move-result v1

    if-eqz v1, :cond_7

    const/4 v1, 0x7

    .line 1220
    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    :cond_7
    const/16 v1, 0x8

    .line 1222
    invoke-virtual {p1, v0, v1}, Lu/aly/de;->a(Ljava/util/BitSet;I)V

    .line 1223
    invoke-virtual {p2}, Lu/aly/bp;->r()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1224
    iget-object v0, p2, Lu/aly/bp;->e:Lu/aly/ap;

    invoke-virtual {v0, p1}, Lu/aly/ap;->b(Lu/aly/cy;)V

    .line 1226
    :cond_8
    invoke-virtual {p2}, Lu/aly/bp;->w()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1228
    iget-object v0, p2, Lu/aly/bp;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Lu/aly/de;->a(I)V

    .line 1229
    iget-object v0, p2, Lu/aly/bp;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lu/aly/be;

    .line 1230
    invoke-virtual {v1, p1}, Lu/aly/be;->b(Lu/aly/cy;)V

    goto :goto_0

    .line 1234
    :cond_9
    invoke-virtual {p2}, Lu/aly/bp;->B()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1236
    iget-object v0, p2, Lu/aly/bp;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Lu/aly/de;->a(I)V

    .line 1237
    iget-object v0, p2, Lu/aly/bp;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lu/aly/bn;

    .line 1238
    invoke-virtual {v1, p1}, Lu/aly/bn;->b(Lu/aly/cy;)V

    goto :goto_1

    .line 1242
    :cond_a
    invoke-virtual {p2}, Lu/aly/bp;->E()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1243
    iget-object v0, p2, Lu/aly/bp;->h:Lu/aly/bc;

    invoke-virtual {v0, p1}, Lu/aly/bc;->b(Lu/aly/cy;)V

    .line 1245
    :cond_b
    invoke-virtual {p2}, Lu/aly/bp;->H()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1246
    iget-object v0, p2, Lu/aly/bp;->i:Lu/aly/bb;

    invoke-virtual {v0, p1}, Lu/aly/bb;->b(Lu/aly/cy;)V

    .line 1248
    :cond_c
    invoke-virtual {p2}, Lu/aly/bp;->K()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1249
    iget-object v0, p2, Lu/aly/bp;->j:Lu/aly/aq;

    invoke-virtual {v0, p1}, Lu/aly/aq;->b(Lu/aly/cy;)V

    .line 1251
    :cond_d
    invoke-virtual {p2}, Lu/aly/bp;->N()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1252
    iget-object v0, p2, Lu/aly/bp;->k:Lu/aly/at;

    invoke-virtual {v0, p1}, Lu/aly/at;->b(Lu/aly/cy;)V

    .line 1254
    :cond_e
    invoke-virtual {p2}, Lu/aly/bp;->R()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 1256
    iget-object v0, p2, Lu/aly/bp;->l:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Lu/aly/de;->a(I)V

    .line 1257
    iget-object p2, p2, Lu/aly/bp;->l:Ljava/util/Map;

    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1258
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Lu/aly/de;->a(Ljava/lang/String;)V

    .line 1259
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Lu/aly/de;->a(I)V

    goto :goto_2

    :cond_f
    return-void
.end method

.method public bridge synthetic a(Lu/aly/cy;Lu/aly/bz;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/cf;
        }
    .end annotation

    .line 1187
    check-cast p2, Lu/aly/bp;

    invoke-virtual {p0, p1, p2}, Lu/aly/bp$c;->a(Lu/aly/cy;Lu/aly/bp;)V

    return-void
.end method

.method public b(Lu/aly/cy;Lu/aly/bp;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/cf;
        }
    .end annotation

    .line 1268
    check-cast p1, Lu/aly/de;

    .line 1269
    new-instance v0, Lu/aly/as;

    invoke-direct {v0}, Lu/aly/as;-><init>()V

    iput-object v0, p2, Lu/aly/bp;->a:Lu/aly/as;

    .line 1270
    iget-object v0, p2, Lu/aly/bp;->a:Lu/aly/as;

    invoke-virtual {v0, p1}, Lu/aly/as;->a(Lu/aly/cy;)V

    const/4 v0, 0x1

    .line 1271
    invoke-virtual {p2, v0}, Lu/aly/bp;->a(Z)V

    .line 1272
    new-instance v1, Lu/aly/ar;

    invoke-direct {v1}, Lu/aly/ar;-><init>()V

    iput-object v1, p2, Lu/aly/bp;->b:Lu/aly/ar;

    .line 1273
    iget-object v1, p2, Lu/aly/bp;->b:Lu/aly/ar;

    invoke-virtual {v1, p1}, Lu/aly/ar;->a(Lu/aly/cy;)V

    .line 1274
    invoke-virtual {p2, v0}, Lu/aly/bp;->b(Z)V

    .line 1275
    new-instance v1, Lu/aly/au;

    invoke-direct {v1}, Lu/aly/au;-><init>()V

    iput-object v1, p2, Lu/aly/bp;->c:Lu/aly/au;

    .line 1276
    iget-object v1, p2, Lu/aly/bp;->c:Lu/aly/au;

    invoke-virtual {v1, p1}, Lu/aly/au;->a(Lu/aly/cy;)V

    .line 1277
    invoke-virtual {p2, v0}, Lu/aly/bp;->c(Z)V

    .line 1278
    new-instance v1, Lu/aly/bh;

    invoke-direct {v1}, Lu/aly/bh;-><init>()V

    iput-object v1, p2, Lu/aly/bp;->d:Lu/aly/bh;

    .line 1279
    iget-object v1, p2, Lu/aly/bp;->d:Lu/aly/bh;

    invoke-virtual {v1, p1}, Lu/aly/bh;->a(Lu/aly/cy;)V

    .line 1280
    invoke-virtual {p2, v0}, Lu/aly/bp;->d(Z)V

    const/16 v1, 0x8

    .line 1281
    invoke-virtual {p1, v1}, Lu/aly/de;->b(I)Ljava/util/BitSet;

    move-result-object v2

    const/4 v3, 0x0

    .line 1282
    invoke-virtual {v2, v3}, Ljava/util/BitSet;->get(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1283
    new-instance v4, Lu/aly/ap;

    invoke-direct {v4}, Lu/aly/ap;-><init>()V

    iput-object v4, p2, Lu/aly/bp;->e:Lu/aly/ap;

    .line 1284
    iget-object v4, p2, Lu/aly/bp;->e:Lu/aly/ap;

    invoke-virtual {v4, p1}, Lu/aly/ap;->a(Lu/aly/cy;)V

    .line 1285
    invoke-virtual {p2, v0}, Lu/aly/bp;->e(Z)V

    .line 1287
    :cond_0
    invoke-virtual {v2, v0}, Ljava/util/BitSet;->get(I)Z

    move-result v4

    const/16 v5, 0xc

    if-eqz v4, :cond_2

    .line 1289
    new-instance v4, Lu/aly/cu;

    .line 1290
    invoke-virtual {p1}, Lu/aly/de;->w()I

    move-result v6

    invoke-direct {v4, v5, v6}, Lu/aly/cu;-><init>(BI)V

    .line 1291
    new-instance v6, Ljava/util/ArrayList;

    iget v7, v4, Lu/aly/cu;->b:I

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v6, p2, Lu/aly/bp;->f:Ljava/util/List;

    const/4 v6, 0x0

    .line 1292
    :goto_0
    iget v7, v4, Lu/aly/cu;->b:I

    if-ge v6, v7, :cond_1

    .line 1294
    new-instance v7, Lu/aly/be;

    invoke-direct {v7}, Lu/aly/be;-><init>()V

    .line 1295
    invoke-virtual {v7, p1}, Lu/aly/be;->a(Lu/aly/cy;)V

    .line 1296
    iget-object v8, p2, Lu/aly/bp;->f:Ljava/util/List;

    invoke-interface {v8, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 1299
    :cond_1
    invoke-virtual {p2, v0}, Lu/aly/bp;->f(Z)V

    :cond_2
    const/4 v4, 0x2

    .line 1301
    invoke-virtual {v2, v4}, Ljava/util/BitSet;->get(I)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1303
    new-instance v6, Lu/aly/cu;

    .line 1304
    invoke-virtual {p1}, Lu/aly/de;->w()I

    move-result v7

    invoke-direct {v6, v5, v7}, Lu/aly/cu;-><init>(BI)V

    .line 1305
    new-instance v5, Ljava/util/ArrayList;

    iget v7, v6, Lu/aly/cu;->b:I

    invoke-direct {v5, v7}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v5, p2, Lu/aly/bp;->g:Ljava/util/List;

    const/4 v5, 0x0

    .line 1306
    :goto_1
    iget v7, v6, Lu/aly/cu;->b:I

    if-ge v5, v7, :cond_3

    .line 1308
    new-instance v7, Lu/aly/bn;

    invoke-direct {v7}, Lu/aly/bn;-><init>()V

    .line 1309
    invoke-virtual {v7, p1}, Lu/aly/bn;->a(Lu/aly/cy;)V

    .line 1310
    iget-object v8, p2, Lu/aly/bp;->g:Ljava/util/List;

    invoke-interface {v8, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 1313
    :cond_3
    invoke-virtual {p2, v0}, Lu/aly/bp;->g(Z)V

    :cond_4
    const/4 v5, 0x3

    .line 1315
    invoke-virtual {v2, v5}, Ljava/util/BitSet;->get(I)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 1316
    new-instance v5, Lu/aly/bc;

    invoke-direct {v5}, Lu/aly/bc;-><init>()V

    iput-object v5, p2, Lu/aly/bp;->h:Lu/aly/bc;

    .line 1317
    iget-object v5, p2, Lu/aly/bp;->h:Lu/aly/bc;

    invoke-virtual {v5, p1}, Lu/aly/bc;->a(Lu/aly/cy;)V

    .line 1318
    invoke-virtual {p2, v0}, Lu/aly/bp;->h(Z)V

    :cond_5
    const/4 v5, 0x4

    .line 1320
    invoke-virtual {v2, v5}, Ljava/util/BitSet;->get(I)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 1321
    new-instance v5, Lu/aly/bb;

    invoke-direct {v5}, Lu/aly/bb;-><init>()V

    iput-object v5, p2, Lu/aly/bp;->i:Lu/aly/bb;

    .line 1322
    iget-object v5, p2, Lu/aly/bp;->i:Lu/aly/bb;

    invoke-virtual {v5, p1}, Lu/aly/bb;->a(Lu/aly/cy;)V

    .line 1323
    invoke-virtual {p2, v0}, Lu/aly/bp;->i(Z)V

    :cond_6
    const/4 v5, 0x5

    .line 1325
    invoke-virtual {v2, v5}, Ljava/util/BitSet;->get(I)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 1326
    new-instance v5, Lu/aly/aq;

    invoke-direct {v5}, Lu/aly/aq;-><init>()V

    iput-object v5, p2, Lu/aly/bp;->j:Lu/aly/aq;

    .line 1327
    iget-object v5, p2, Lu/aly/bp;->j:Lu/aly/aq;

    invoke-virtual {v5, p1}, Lu/aly/aq;->a(Lu/aly/cy;)V

    .line 1328
    invoke-virtual {p2, v0}, Lu/aly/bp;->j(Z)V

    :cond_7
    const/4 v5, 0x6

    .line 1330
    invoke-virtual {v2, v5}, Ljava/util/BitSet;->get(I)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 1331
    new-instance v5, Lu/aly/at;

    invoke-direct {v5}, Lu/aly/at;-><init>()V

    iput-object v5, p2, Lu/aly/bp;->k:Lu/aly/at;

    .line 1332
    iget-object v5, p2, Lu/aly/bp;->k:Lu/aly/at;

    invoke-virtual {v5, p1}, Lu/aly/at;->a(Lu/aly/cy;)V

    .line 1333
    invoke-virtual {p2, v0}, Lu/aly/bp;->k(Z)V

    :cond_8
    const/4 v5, 0x7

    .line 1335
    invoke-virtual {v2, v5}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 1337
    new-instance v2, Lu/aly/cv;

    const/16 v5, 0xb

    .line 1339
    invoke-virtual {p1}, Lu/aly/de;->w()I

    move-result v6

    invoke-direct {v2, v5, v1, v6}, Lu/aly/cv;-><init>(BBI)V

    .line 1340
    new-instance v1, Ljava/util/HashMap;

    iget v5, v2, Lu/aly/cv;->c:I

    mul-int/lit8 v5, v5, 0x2

    invoke-direct {v1, v5}, Ljava/util/HashMap;-><init>(I)V

    iput-object v1, p2, Lu/aly/bp;->l:Ljava/util/Map;

    .line 1341
    :goto_2
    iget v1, v2, Lu/aly/cv;->c:I

    if-ge v3, v1, :cond_9

    .line 1344
    invoke-virtual {p1}, Lu/aly/de;->z()Ljava/lang/String;

    move-result-object v1

    .line 1345
    invoke-virtual {p1}, Lu/aly/de;->w()I

    move-result v4

    .line 1346
    iget-object v5, p2, Lu/aly/bp;->l:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v5, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 1349
    :cond_9
    invoke-virtual {p2, v0}, Lu/aly/bp;->l(Z)V

    :cond_a
    return-void
.end method

.method public bridge synthetic b(Lu/aly/cy;Lu/aly/bz;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/cf;
        }
    .end annotation

    .line 1187
    check-cast p2, Lu/aly/bp;

    invoke-virtual {p0, p1, p2}, Lu/aly/bp$c;->b(Lu/aly/cy;Lu/aly/bp;)V

    return-void
.end method
