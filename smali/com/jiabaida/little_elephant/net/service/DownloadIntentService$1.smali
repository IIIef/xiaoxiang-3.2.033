.class Lcom/jiabaida/little_elephant/net/service/DownloadIntentService$1;
.super Ljava/lang/Object;
.source "DownloadIntentService.java"

# interfaces
.implements Lcom/jiabaida/little_elephant/net/DownloadCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiabaida/little_elephant/net/service/DownloadIntentService;->onHandleIntent(Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jiabaida/little_elephant/net/service/DownloadIntentService;

.field final synthetic val$downloadId:I

.field final synthetic val$file:Ljava/io/File;

.field final synthetic val$remoteViews:Landroid/widget/RemoteViews;


# direct methods
.method constructor <init>(Lcom/jiabaida/little_elephant/net/service/DownloadIntentService;Landroid/widget/RemoteViews;ILjava/io/File;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 98
    iput-object p1, p0, Lcom/jiabaida/little_elephant/net/service/DownloadIntentService$1;->this$0:Lcom/jiabaida/little_elephant/net/service/DownloadIntentService;

    iput-object p2, p0, Lcom/jiabaida/little_elephant/net/service/DownloadIntentService$1;->val$remoteViews:Landroid/widget/RemoteViews;

    iput p3, p0, Lcom/jiabaida/little_elephant/net/service/DownloadIntentService$1;->val$downloadId:I

    iput-object p4, p0, Lcom/jiabaida/little_elephant/net/service/DownloadIntentService$1;->val$file:Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 2

    const-string v0, "xiezhixian"

    const-string v1, "\u4e0b\u8f7d\u5b8c\u6210"

    .line 109
    invoke-static {v0, v1}, Lcom/jiabaida/little_elephant/util/IdsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    iget-object v0, p0, Lcom/jiabaida/little_elephant/net/service/DownloadIntentService$1;->this$0:Lcom/jiabaida/little_elephant/net/service/DownloadIntentService;

    invoke-static {v0}, Lcom/jiabaida/little_elephant/net/service/DownloadIntentService;->access$100(Lcom/jiabaida/little_elephant/net/service/DownloadIntentService;)Landroid/app/NotificationManager;

    move-result-object v0

    iget v1, p0, Lcom/jiabaida/little_elephant/net/service/DownloadIntentService$1;->val$downloadId:I

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 111
    iget-object v0, p0, Lcom/jiabaida/little_elephant/net/service/DownloadIntentService$1;->this$0:Lcom/jiabaida/little_elephant/net/service/DownloadIntentService;

    iget-object v1, p0, Lcom/jiabaida/little_elephant/net/service/DownloadIntentService$1;->val$file:Ljava/io/File;

    invoke-static {v0, v1}, Lcom/jiabaida/little_elephant/net/service/DownloadIntentService;->access$200(Lcom/jiabaida/little_elephant/net/service/DownloadIntentService;Ljava/io/File;)V

    return-void
.end method

.method public onError(Ljava/lang/String;)V
    .locals 2

    .line 116
    iget-object v0, p0, Lcom/jiabaida/little_elephant/net/service/DownloadIntentService$1;->this$0:Lcom/jiabaida/little_elephant/net/service/DownloadIntentService;

    invoke-static {v0}, Lcom/jiabaida/little_elephant/net/service/DownloadIntentService;->access$100(Lcom/jiabaida/little_elephant/net/service/DownloadIntentService;)Landroid/app/NotificationManager;

    move-result-object v0

    iget v1, p0, Lcom/jiabaida/little_elephant/net/service/DownloadIntentService$1;->val$downloadId:I

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 117
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u4e0b\u8f7d\u53d1\u751f\u9519\u8bef--"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "xiezhixian"

    invoke-static {v0, p1}, Lcom/jiabaida/little_elephant/util/IdsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onProgress(I)V
    .locals 4

    .line 101
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u4e0b\u8f7d\u8fdb\u5ea6 : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " -- "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "xiezhixian"

    invoke-static {v1, v0}, Lcom/jiabaida/little_elephant/util/IdsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    iget-object v0, p0, Lcom/jiabaida/little_elephant/net/service/DownloadIntentService$1;->val$remoteViews:Landroid/widget/RemoteViews;

    const v1, 0x7f080157

    const/16 v2, 0x64

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, p1, v3}, Landroid/widget/RemoteViews;->setProgressBar(IIIZ)V

    .line 103
    iget-object v0, p0, Lcom/jiabaida/little_elephant/net/service/DownloadIntentService$1;->val$remoteViews:Landroid/widget/RemoteViews;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/jiabaida/little_elephant/net/service/DownloadIntentService$1;->this$0:Lcom/jiabaida/little_elephant/net/service/DownloadIntentService;

    const v3, 0x7f0d0062

    invoke-virtual {v2, v3}, Lcom/jiabaida/little_elephant/net/service/DownloadIntentService;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "%"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const v1, 0x7f08025e

    invoke-virtual {v0, v1, p1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 104
    iget-object p1, p0, Lcom/jiabaida/little_elephant/net/service/DownloadIntentService$1;->this$0:Lcom/jiabaida/little_elephant/net/service/DownloadIntentService;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/net/service/DownloadIntentService;->access$100(Lcom/jiabaida/little_elephant/net/service/DownloadIntentService;)Landroid/app/NotificationManager;

    move-result-object p1

    iget v0, p0, Lcom/jiabaida/little_elephant/net/service/DownloadIntentService$1;->val$downloadId:I

    iget-object v1, p0, Lcom/jiabaida/little_elephant/net/service/DownloadIntentService$1;->this$0:Lcom/jiabaida/little_elephant/net/service/DownloadIntentService;

    invoke-static {v1}, Lcom/jiabaida/little_elephant/net/service/DownloadIntentService;->access$000(Lcom/jiabaida/little_elephant/net/service/DownloadIntentService;)Landroid/app/Notification;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void
.end method
