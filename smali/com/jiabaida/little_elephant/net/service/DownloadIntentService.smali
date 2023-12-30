.class public Lcom/jiabaida/little_elephant/net/service/DownloadIntentService;
.super Landroid/app/IntentService;
.source "DownloadIntentService.java"


# static fields
.field private static final CHANNEL_ID:Ljava/lang/String; = "little_elephant_download"

.field private static final TAG:Ljava/lang/String; = "xiezhixian"


# instance fields
.field private mDownloadFileName:Ljava/lang/String;

.field private mNotification:Landroid/app/Notification;

.field private mNotifyManager:Landroid/app/NotificationManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "InitializeService"

    .line 37
    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$000(Lcom/jiabaida/little_elephant/net/service/DownloadIntentService;)Landroid/app/Notification;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/jiabaida/little_elephant/net/service/DownloadIntentService;->mNotification:Landroid/app/Notification;

    return-object p0
.end method

.method static synthetic access$100(Lcom/jiabaida/little_elephant/net/service/DownloadIntentService;)Landroid/app/NotificationManager;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/jiabaida/little_elephant/net/service/DownloadIntentService;->mNotifyManager:Landroid/app/NotificationManager;

    return-object p0
.end method

.method static synthetic access$200(Lcom/jiabaida/little_elephant/net/service/DownloadIntentService;Ljava/io/File;)V
    .locals 0

    .line 28
    invoke-direct {p0, p1}, Lcom/jiabaida/little_elephant/net/service/DownloadIntentService;->installApp(Ljava/io/File;)V

    return-void
.end method

.method private installApp(Ljava/io/File;)V
    .locals 4

    .line 123
    invoke-static {}, Lcom/jiabaida/little_elephant/util/ToastUtils;->getInstance()Lcom/jiabaida/little_elephant/util/ToastUtils;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f0d0061

    invoke-virtual {p0, v2}, Lcom/jiabaida/little_elephant/net/service/DownloadIntentService;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, p0, v1, v2}, Lcom/jiabaida/little_elephant/util/ToastUtils;->showDefault(Landroid/content/Context;Ljava/lang/String;I)V

    .line 124
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x10200000

    .line 125
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 126
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x18

    if-lt v1, v3, :cond_0

    .line 127
    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 129
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/jiabaida/little_elephant/util/PathUtil;->getPathUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    const-string v1, "application/vnd.android.package-archive"

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 130
    invoke-virtual {p0, v0}, Lcom/jiabaida/little_elephant/net/service/DownloadIntentService;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 11

    .line 42
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "download_url"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 43
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "download_id"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 44
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string v2, "download_file"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/jiabaida/little_elephant/net/service/DownloadIntentService;->mDownloadFileName:Ljava/lang/String;

    .line 46
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "download_url --"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "xiezhixian"

    invoke-static {v2, p1}, Lcom/jiabaida/little_elephant/util/IdsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "download_file --"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/jiabaida/little_elephant/net/service/DownloadIntentService;->mDownloadFileName:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/jiabaida/little_elephant/util/IdsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    invoke-static {}, Lcom/jiabaida/little_elephant/app/XXApplication;->getInstance()Lcom/jiabaida/little_elephant/app/XXApplication;

    move-result-object p1

    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Lcom/jiabaida/little_elephant/app/XXApplication;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 52
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1

    .line 53
    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    .line 55
    :cond_1
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/"

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/jiabaida/little_elephant/net/service/DownloadIntentService;->mDownloadFileName:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 59
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result p1

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    if-eqz p1, :cond_2

    .line 60
    invoke-static {}, Lcom/jiabaida/little_elephant/util/SPUtils;->getInstance()Lcom/jiabaida/little_elephant/util/SPUtils;

    move-result-object p1

    invoke-virtual {p1, v0, v5, v6}, Lcom/jiabaida/little_elephant/util/SPUtils;->getLong(Ljava/lang/String;J)J

    move-result-wide v5

    const-wide/16 v7, 0x64

    mul-long v7, v7, v5

    .line 61
    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v9

    div-long/2addr v7, v9

    long-to-int p1, v7

    .line 62
    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v7

    cmp-long v9, v5, v7

    if-nez v9, :cond_3

    .line 63
    invoke-direct {p0, v3}, Lcom/jiabaida/little_elephant/net/service/DownloadIntentService;->installApp(Ljava/io/File;)V

    return-void

    :cond_2
    const/4 p1, 0x0

    .line 68
    :cond_3
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "range = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Lcom/jiabaida/little_elephant/util/IdsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    new-instance v2, Landroid/widget/RemoteViews;

    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/net/service/DownloadIntentService;->getPackageName()Ljava/lang/String;

    move-result-object v7

    const v8, 0x7f0a0039

    invoke-direct {v2, v7, v8}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    const v7, 0x7f080157

    const/16 v8, 0x64

    .line 71
    invoke-virtual {v2, v7, v8, p1, v4}, Landroid/widget/RemoteViews;->setProgressBar(IIIZ)V

    const v4, 0x7f08025e

    .line 72
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const v8, 0x7f0d0062

    invoke-virtual {p0, v8}, Lcom/jiabaida/little_elephant/net/service/DownloadIntentService;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "%"

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, v4, p1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    const p1, 0x7f08029e

    const v4, 0x7f0d0034

    .line 73
    invoke-virtual {p0, v4}, Lcom/jiabaida/little_elephant/net/service/DownloadIntentService;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, p1, v4}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    const-string p1, "notification"

    .line 74
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/net/service/DownloadIntentService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/NotificationManager;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/net/service/DownloadIntentService;->mNotifyManager:Landroid/app/NotificationManager;

    .line 76
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1a

    const-string v7, "little_elephant_download"

    if-lt p1, v4, :cond_4

    .line 77
    new-instance p1, Landroid/app/NotificationChannel;

    const/4 v4, 0x4

    invoke-direct {p1, v7, v7, v4}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 79
    iget-object v4, p0, Lcom/jiabaida/little_elephant/net/service/DownloadIntentService;->mNotifyManager:Landroid/app/NotificationManager;

    invoke-virtual {v4, p1}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 81
    :cond_4
    new-instance p1, Landroidx/core/app/NotificationCompat$Builder;

    invoke-direct {p1, p0, v7}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 82
    invoke-virtual {p1, v2}, Landroidx/core/app/NotificationCompat$Builder;->setContent(Landroid/widget/RemoteViews;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p1

    const/4 v4, 0x1

    .line 83
    invoke-virtual {p1, v4}, Landroidx/core/app/NotificationCompat$Builder;->setOngoing(Z)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p1

    const v4, 0x7f0d0063

    .line 84
    invoke-virtual {p0, v4}, Lcom/jiabaida/little_elephant/net/service/DownloadIntentService;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroidx/core/app/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p1

    const v4, 0x7f0700d2

    .line 85
    invoke-virtual {p1, v4}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p1

    .line 86
    invoke-virtual {p1}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object p1

    iput-object p1, p0, Lcom/jiabaida/little_elephant/net/service/DownloadIntentService;->mNotification:Landroid/app/Notification;

    .line 87
    iget-object v4, p0, Lcom/jiabaida/little_elephant/net/service/DownloadIntentService;->mNotifyManager:Landroid/app/NotificationManager;

    invoke-virtual {v4, v1, p1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 98
    iget-object p1, p0, Lcom/jiabaida/little_elephant/net/service/DownloadIntentService;->mDownloadFileName:Ljava/lang/String;

    new-instance v4, Lcom/jiabaida/little_elephant/net/service/DownloadIntentService$1;

    invoke-direct {v4, p0, v2, v1, v3}, Lcom/jiabaida/little_elephant/net/service/DownloadIntentService$1;-><init>(Lcom/jiabaida/little_elephant/net/service/DownloadIntentService;Landroid/widget/RemoteViews;ILjava/io/File;)V

    invoke-static {v5, v6, v0, p1, v4}, Lcom/jiabaida/little_elephant/net/Network;->downloadFile(JLjava/lang/String;Ljava/lang/String;Lcom/jiabaida/little_elephant/net/DownloadCallBack;)V

    return-void
.end method
