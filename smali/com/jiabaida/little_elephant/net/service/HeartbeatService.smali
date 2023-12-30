.class public Lcom/jiabaida/little_elephant/net/service/HeartbeatService;
.super Landroid/app/Service;
.source "HeartbeatService.java"


# static fields
.field public static final CHANNEL_ID_STRING:Ljava/lang/String; = "service_Heartbeat"

.field public static final CHANNEL_ID_STRING_ID:I = 0x66


# instance fields
.field private mContext:Landroid/content/Context;

.field private notification:Landroid/app/Notification;

.field private notificationManager:Landroid/app/NotificationManager;

.field timeHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 28
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 57
    new-instance v0, Lcom/jiabaida/little_elephant/net/service/HeartbeatService$1;

    invoke-direct {v0, p0}, Lcom/jiabaida/little_elephant/net/service/HeartbeatService$1;-><init>(Lcom/jiabaida/little_elephant/net/service/HeartbeatService;)V

    iput-object v0, p0, Lcom/jiabaida/little_elephant/net/service/HeartbeatService;->timeHandler:Landroid/os/Handler;

    return-void
.end method

.method private closeNotification()V
    .locals 2

    .line 76
    iget-object v0, p0, Lcom/jiabaida/little_elephant/net/service/HeartbeatService;->notificationManager:Landroid/app/NotificationManager;

    if-eqz v0, :cond_0

    const/16 v1, 0x66

    .line 77
    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    const/4 v0, 0x1

    .line 78
    invoke-virtual {p0, v0}, Lcom/jiabaida/little_elephant/net/service/HeartbeatService;->stopForeground(Z)V

    :cond_0
    return-void
.end method

.method private createNotification()V
    .locals 5

    .line 91
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_2

    .line 92
    iget-object v0, p0, Lcom/jiabaida/little_elephant/net/service/HeartbeatService;->notificationManager:Landroid/app/NotificationManager;

    const v1, 0x7f0d0034

    const-string v2, "service_Heartbeat"

    if-nez v0, :cond_0

    const-string v0, "notification"

    .line 93
    invoke-virtual {p0, v0}, Lcom/jiabaida/little_elephant/net/service/HeartbeatService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/jiabaida/little_elephant/net/service/HeartbeatService;->notificationManager:Landroid/app/NotificationManager;

    .line 94
    new-instance v0, Landroid/app/NotificationChannel;

    invoke-virtual {p0, v1}, Lcom/jiabaida/little_elephant/net/service/HeartbeatService;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    invoke-direct {v0, v2, v3, v4}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 96
    iget-object v3, p0, Lcom/jiabaida/little_elephant/net/service/HeartbeatService;->notificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v3, v0}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 98
    :cond_0
    iget-object v0, p0, Lcom/jiabaida/little_elephant/net/service/HeartbeatService;->notification:Landroid/app/Notification;

    if-nez v0, :cond_1

    .line 99
    new-instance v0, Landroid/app/Notification$Builder;

    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/net/service/HeartbeatService;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3, v2}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 100
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/net/service/HeartbeatService;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " Service"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    const v1, 0x7f0700d2

    .line 101
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 102
    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    iput-object v0, p0, Lcom/jiabaida/little_elephant/net/service/HeartbeatService;->notification:Landroid/app/Notification;

    :cond_1
    const/16 v0, 0x66

    .line 106
    iget-object v1, p0, Lcom/jiabaida/little_elephant/net/service/HeartbeatService;->notification:Landroid/app/Notification;

    invoke-virtual {p0, v0, v1}, Lcom/jiabaida/little_elephant/net/service/HeartbeatService;->startForeground(ILandroid/app/Notification;)V

    :cond_2
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public onCreate()V
    .locals 2

    .line 39
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    const-string v0, "--socket:"

    const-string v1, "===onCreate=\u5fc3\u8df3\u670d\u52a1\u521b\u5efa=="

    .line 40
    invoke-static {v0, v1}, Lcom/jiabaida/little_elephant/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    invoke-direct {p0}, Lcom/jiabaida/little_elephant/net/service/HeartbeatService;->createNotification()V

    .line 43
    iput-object p0, p0, Lcom/jiabaida/little_elephant/net/service/HeartbeatService;->mContext:Landroid/content/Context;

    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 112
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 113
    invoke-direct {p0}, Lcom/jiabaida/little_elephant/net/service/HeartbeatService;->closeNotification()V

    .line 114
    iget-object v0, p0, Lcom/jiabaida/little_elephant/net/service/HeartbeatService;->timeHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 115
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 2

    const-string v0, "--socket:"

    const-string v1, "===onStartCommand=\u5fc3\u8df3\u670d\u52a1\u5f00\u542f=="

    .line 48
    invoke-static {v0, v1}, Lcom/jiabaida/little_elephant/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    invoke-direct {p0}, Lcom/jiabaida/little_elephant/net/service/HeartbeatService;->createNotification()V

    .line 50
    iget-object v0, p0, Lcom/jiabaida/little_elephant/net/service/HeartbeatService;->timeHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    const v1, 0x9c40

    .line 51
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 54
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result p1

    return p1
.end method
