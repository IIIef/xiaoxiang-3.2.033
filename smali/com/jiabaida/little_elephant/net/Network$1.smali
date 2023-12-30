.class Lcom/jiabaida/little_elephant/net/Network$1;
.super Ljava/lang/Object;
.source "Network.java"

# interfaces
.implements Lio/reactivex/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiabaida/little_elephant/net/Network;->downloadFile(JLjava/lang/String;Ljava/lang/String;Lcom/jiabaida/little_elephant/net/DownloadCallBack;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/Observer<",
        "Lokhttp3/ResponseBody;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$downloadCallback:Lcom/jiabaida/little_elephant/net/DownloadCallBack;

.field final synthetic val$file:Ljava/io/File;

.field final synthetic val$fileName:Ljava/lang/String;

.field final synthetic val$range:J

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(JLjava/io/File;Ljava/lang/String;Lcom/jiabaida/little_elephant/net/DownloadCallBack;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 75
    iput-wide p1, p0, Lcom/jiabaida/little_elephant/net/Network$1;->val$range:J

    iput-object p3, p0, Lcom/jiabaida/little_elephant/net/Network$1;->val$file:Ljava/io/File;

    iput-object p4, p0, Lcom/jiabaida/little_elephant/net/Network$1;->val$fileName:Ljava/lang/String;

    iput-object p5, p0, Lcom/jiabaida/little_elephant/net/Network$1;->val$downloadCallback:Lcom/jiabaida/little_elephant/net/DownloadCallBack;

    iput-object p6, p0, Lcom/jiabaida/little_elephant/net/Network$1;->val$url:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 0

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 141
    iget-object v0, p0, Lcom/jiabaida/little_elephant/net/Network$1;->val$downloadCallback:Lcom/jiabaida/little_elephant/net/DownloadCallBack;

    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/jiabaida/little_elephant/net/DownloadCallBack;->onError(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .line 75
    check-cast p1, Lokhttp3/ResponseBody;

    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/net/Network$1;->onNext(Lokhttp3/ResponseBody;)V

    return-void
.end method

.method public onNext(Lokhttp3/ResponseBody;)V
    .locals 11

    .line 85
    iget-wide v0, p0, Lcom/jiabaida/little_elephant/net/Network$1;->val$range:J

    const/16 v2, 0x800

    const/4 v3, 0x0

    :try_start_0
    new-array v2, v2, [B

    .line 90
    invoke-virtual {p1}, Lokhttp3/ResponseBody;->contentLength()J

    move-result-wide v4

    .line 91
    invoke-virtual {p1}, Lokhttp3/ResponseBody;->byteStream()Ljava/io/InputStream;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 92
    :try_start_1
    iget-object v6, p0, Lcom/jiabaida/little_elephant/net/Network$1;->val$file:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v6

    .line 93
    new-instance v7, Ljava/io/File;

    iget-object v8, p0, Lcom/jiabaida/little_elephant/net/Network$1;->val$fileName:Ljava/lang/String;

    invoke-direct {v7, v6, v8}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 95
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_0

    .line 96
    invoke-virtual {v8}, Ljava/io/File;->mkdirs()Z

    .line 98
    :cond_0
    new-instance v6, Ljava/io/RandomAccessFile;

    const-string v8, "rwd"

    invoke-direct {v6, v7, v8}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 99
    :try_start_2
    iget-wide v7, p0, Lcom/jiabaida/little_elephant/net/Network$1;->val$range:J

    const-wide/16 v9, 0x0

    cmp-long v3, v7, v9

    if-nez v3, :cond_1

    .line 100
    invoke-virtual {v6, v4, v5}, Ljava/io/RandomAccessFile;->setLength(J)V

    .line 102
    :cond_1
    iget-wide v3, p0, Lcom/jiabaida/little_elephant/net/Network$1;->val$range:J

    invoke-virtual {v6, v3, v4}, Ljava/io/RandomAccessFile;->seek(J)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 107
    :goto_0
    invoke-virtual {p1, v2}, Ljava/io/InputStream;->read([B)I

    move-result v5

    const/4 v7, -0x1

    if-eq v5, v7, :cond_3

    .line 108
    invoke-virtual {v6, v2, v3, v5}, Ljava/io/RandomAccessFile;->write([BII)V

    int-to-long v7, v5

    add-long/2addr v0, v7

    const-wide/16 v7, 0x64

    mul-long v7, v7, v0

    .line 111
    invoke-virtual {v6}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v9

    div-long/2addr v7, v9

    long-to-int v5, v7

    if-lez v5, :cond_2

    if-eq v5, v4, :cond_2

    .line 113
    iget-object v4, p0, Lcom/jiabaida/little_elephant/net/Network$1;->val$downloadCallback:Lcom/jiabaida/little_elephant/net/DownloadCallBack;

    invoke-interface {v4, v5}, Lcom/jiabaida/little_elephant/net/DownloadCallBack;->onProgress(I)V

    :cond_2
    move v4, v5

    goto :goto_0

    .line 116
    :cond_3
    iget-object v2, p0, Lcom/jiabaida/little_elephant/net/Network$1;->val$downloadCallback:Lcom/jiabaida/little_elephant/net/DownloadCallBack;

    invoke-interface {v2}, Lcom/jiabaida/little_elephant/net/DownloadCallBack;->onCompleted()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 123
    :try_start_3
    invoke-static {}, Lcom/jiabaida/little_elephant/util/SPUtils;->getInstance()Lcom/jiabaida/little_elephant/util/SPUtils;

    move-result-object v2

    iget-object v3, p0, Lcom/jiabaida/little_elephant/net/Network$1;->val$url:Ljava/lang/String;

    invoke-virtual {v2, v3, v0, v1}, Lcom/jiabaida/little_elephant/util/SPUtils;->put(Ljava/lang/String;J)V

    .line 125
    invoke-virtual {v6}, Ljava/io/RandomAccessFile;->close()V

    if-eqz p1, :cond_5

    .line 129
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_2

    :catchall_0
    move-exception v2

    move-object v3, v6

    goto :goto_3

    :catch_0
    move-exception v2

    move-object v3, v6

    goto :goto_1

    :catch_1
    move-exception v2

    goto :goto_1

    :catchall_1
    move-exception v2

    move-object p1, v3

    goto :goto_3

    :catch_2
    move-exception v2

    move-object p1, v3

    :goto_1
    :try_start_4
    const-string v4, "xiezhixian"

    .line 118
    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    iget-object v4, p0, Lcom/jiabaida/little_elephant/net/Network$1;->val$downloadCallback:Lcom/jiabaida/little_elephant/net/DownloadCallBack;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/jiabaida/little_elephant/net/DownloadCallBack;->onError(Ljava/lang/String;)V

    .line 120
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 123
    :try_start_5
    invoke-static {}, Lcom/jiabaida/little_elephant/util/SPUtils;->getInstance()Lcom/jiabaida/little_elephant/util/SPUtils;

    move-result-object v2

    iget-object v4, p0, Lcom/jiabaida/little_elephant/net/Network$1;->val$url:Ljava/lang/String;

    invoke-virtual {v2, v4, v0, v1}, Lcom/jiabaida/little_elephant/util/SPUtils;->put(Ljava/lang/String;J)V

    if-eqz v3, :cond_4

    .line 125
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V

    :cond_4
    if-eqz p1, :cond_5

    .line 129
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_2

    :catch_3
    move-exception p1

    .line 133
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_5
    :goto_2
    return-void

    :catchall_2
    move-exception v2

    .line 123
    :goto_3
    :try_start_6
    invoke-static {}, Lcom/jiabaida/little_elephant/util/SPUtils;->getInstance()Lcom/jiabaida/little_elephant/util/SPUtils;

    move-result-object v4

    iget-object v5, p0, Lcom/jiabaida/little_elephant/net/Network$1;->val$url:Ljava/lang/String;

    invoke-virtual {v4, v5, v0, v1}, Lcom/jiabaida/little_elephant/util/SPUtils;->put(Ljava/lang/String;J)V

    if-eqz v3, :cond_6

    .line 125
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V

    :cond_6
    if-eqz p1, :cond_7

    .line 129
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_4

    :catch_4
    move-exception p1

    .line 133
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 136
    :cond_7
    :goto_4
    throw v2
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .locals 0

    return-void
.end method
