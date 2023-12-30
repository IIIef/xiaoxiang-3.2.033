.class Lcom/jiabaida/little_elephant/util/ResponseAsyncTask;
.super Landroid/os/AsyncTask;
.source "BluetoothUtil.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mEntities:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;",
            ">;"
        }
    .end annotation
.end field

.field private resContents:[B

.field private service:Lcom/jiabaida/little_elephant/util/BluetoothUtil;


# direct methods
.method public constructor <init>([BLjava/util/ArrayList;Lcom/jiabaida/little_elephant/util/BluetoothUtil;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/util/ArrayList<",
            "Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;",
            ">;",
            "Lcom/jiabaida/little_elephant/util/BluetoothUtil;",
            ")V"
        }
    .end annotation

    .line 846
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const-string v0, "ResponseAsyncTask"

    .line 842
    iput-object v0, p0, Lcom/jiabaida/little_elephant/util/ResponseAsyncTask;->TAG:Ljava/lang/String;

    .line 847
    iput-object p3, p0, Lcom/jiabaida/little_elephant/util/ResponseAsyncTask;->service:Lcom/jiabaida/little_elephant/util/BluetoothUtil;

    .line 848
    iput-object p1, p0, Lcom/jiabaida/little_elephant/util/ResponseAsyncTask;->resContents:[B

    .line 849
    iput-object p2, p0, Lcom/jiabaida/little_elephant/util/ResponseAsyncTask;->mEntities:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 841
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/util/ResponseAsyncTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 5

    const/4 p1, 0x0

    .line 855
    :try_start_0
    iget-object v0, p0, Lcom/jiabaida/little_elephant/util/ResponseAsyncTask;->mEntities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;

    .line 858
    invoke-virtual {v1}, Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;->getCMDResponse()Lcom/jiabaida/little_elephant/entity/ICMDResponse;

    move-result-object v2

    .line 859
    iget-object v3, p0, Lcom/jiabaida/little_elephant/util/ResponseAsyncTask;->resContents:[B

    if-eqz v3, :cond_2

    .line 861
    invoke-virtual {v1, v3}, Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;->setResponseSrcDatas([B)V

    .line 862
    invoke-virtual {v1}, Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;->getResponseStatus()I

    move-result v3
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    if-nez v3, :cond_1

    .line 864
    :try_start_1
    invoke-virtual {v1}, Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;->getMode()I

    move-result v3

    const/16 v4, 0xa5

    if-ne v3, v4, :cond_0

    .line 865
    iget-object v3, p0, Lcom/jiabaida/little_elephant/util/ResponseAsyncTask;->resContents:[B

    invoke-virtual {v1, v3}, Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;->formatParams([B)Z

    .line 868
    :cond_0
    invoke-virtual {v1}, Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;->getResponseStatus()I

    move-result v3

    invoke-interface {v2, v1, v3}, Lcom/jiabaida/little_elephant/entity/ICMDResponse;->success(Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    const/4 v3, -0x3

    .line 870
    :try_start_2
    invoke-interface {v2, v1, v3}, Lcom/jiabaida/little_elephant/entity/ICMDResponse;->fail(Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;I)V

    goto :goto_0

    .line 874
    :cond_1
    invoke-virtual {v1}, Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;->getResponseStatus()I

    move-result v3

    invoke-interface {v2, v1, v3}, Lcom/jiabaida/little_elephant/entity/ICMDResponse;->fail(Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;I)V

    goto :goto_0

    :cond_2
    const/4 v3, -0x2

    .line 878
    invoke-virtual {v1, v3}, Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;->setResonseStatus(I)V

    .line 879
    invoke-virtual {v1, p1}, Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;->setResponseSrcDatas([B)V

    if-nez v2, :cond_3

    goto :goto_0

    .line 884
    :cond_3
    invoke-interface {v2, v1, v3}, Lcom/jiabaida/little_elephant/entity/ICMDResponse;->fail(Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;I)V
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    .line 889
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    :cond_4
    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 841
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/util/ResponseAsyncTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 0

    return-void
.end method
